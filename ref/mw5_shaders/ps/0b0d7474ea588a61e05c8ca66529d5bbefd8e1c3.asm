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
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyzw
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; ENTITY_IDS               0    yz        13     NONE    uint    yz 
; SV_IsFrontFace           0      w       13    FFACE    uint      w
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 80ec43e20140ff871bde1b1f3f32913f
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
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
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
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = icmp ne i32 %62, 0
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %111 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %112 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %113 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %114 = alloca [12 x float], align 4
  %115 = alloca [12 x float], align 4
  %116 = alloca [4 x float], align 4
  %117 = alloca [4 x float], align 4
  %118 = alloca [4 x float], align 4
  %119 = alloca [4 x float], align 4
  %120 = alloca [3 x float], align 4
  %121 = alloca [3 x float], align 4
  %122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = fmul fast float %125, %110
  %127 = fmul fast float %125, %111
  %128 = select i1 %63, float 1.000000e+00, float -1.000000e+00
  %129 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %130 = bitcast float %129 to i32
  %131 = ashr i32 %130, 1
  %132 = sub nsw i32 1597250115, %131
  %133 = bitcast i32 %132 to float
  %134 = fmul fast float %101, %128
  %135 = fmul fast float %134, %133
  %136 = fmul fast float %102, %128
  %137 = fmul fast float %136, %133
  %138 = fmul fast float %103, %128
  %139 = fmul fast float %138, %133
  %140 = fmul fast float %102, %99
  %141 = fmul fast float %103, %98
  %142 = fsub fast float %140, %141
  %143 = fmul fast float %103, %97
  %144 = fmul fast float %101, %99
  %145 = fsub fast float %143, %144
  %146 = fmul fast float %101, %98
  %147 = fmul fast float %102, %97
  %148 = fsub fast float %146, %147
  %149 = fmul fast float %142, %100
  %150 = fmul fast float %145, %100
  %151 = fmul fast float %148, %100
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = fcmp fast une float %153, 0.000000e+00
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %158 = fmul fast float %126, 2.000000e+00
  %159 = fmul fast float %158, %156
  %160 = fmul fast float %127, 2.000000e+00
  %161 = fmul fast float %160, %157
  %162 = fsub fast float 1.000000e+00, %159
  %163 = fsub fast float 1.000000e+00, %161
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = select i1 %154, float %165, float %169
  %173 = select i1 %154, float %166, float %170
  %174 = select i1 %154, float %167, float %171
  %175 = fmul fast float %172, %162
  %176 = fmul fast float %173, %162
  %177 = fmul fast float %174, %162
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = select i1 %154, float %179, float %183
  %187 = select i1 %154, float %180, float %184
  %188 = select i1 %154, float %181, float %185
  %189 = fmul fast float %186, %163
  %190 = fmul fast float %187, %163
  %191 = fmul fast float %188, %163
  %192 = fadd fast float %189, %175
  %193 = fadd fast float %190, %176
  %194 = fadd fast float %191, %177
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %202 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %203 = select i1 %154, float %196, float %200
  %204 = select i1 %154, float %197, float %201
  %205 = select i1 %154, float %198, float %202
  %206 = fadd fast float %192, %203
  %207 = fadd fast float %193, %204
  %208 = fadd fast float %194, %205
  %209 = fmul fast float %206, %113
  %210 = fmul fast float %207, %113
  %211 = fmul fast float %208, %113
  %212 = shl i32 %65, 5
  %213 = add i32 %212, 4194304
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = extractvalue %dx.types.ResRet.i32 %214, 1
  %217 = extractvalue %dx.types.ResRet.i32 %214, 2
  %218 = extractvalue %dx.types.ResRet.i32 %214, 3
  %219 = add i32 %212, 4194320
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = extractvalue %dx.types.ResRet.i32 %220, 1
  %223 = bitcast i32 %221 to float
  %224 = bitcast i32 %222 to float
  %225 = fmul fast float %126, 5.000000e-01
  %226 = fmul fast float %127, 5.000000e-01
  %227 = fptosi float %225 to i32
  %228 = fptosi float %226 to i32
  %229 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %227, i32 %228, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = lshr i32 %230, 18
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F4C00EBA0000000
  %234 = call float @dx.op.unary.f32(i32 21, float %233)  ; Exp(value)
  %235 = fadd fast float %234, -1.000000e+00
  %236 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %237 = extractvalue %dx.types.Dimensions %236, 0
  %238 = sitofp i32 %237 to float
  %239 = extractvalue %dx.types.Dimensions %236, 1
  %240 = sitofp i32 %239 to float
  %241 = fcmp fast oge float %225, %238
  %242 = fcmp fast oge float %226, %240
  %243 = or i1 %241, %242
  %244 = select i1 %243, float 0x4197782600000000, float %235
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 3
  %248 = fmul fast float %246, %126
  %249 = fmul fast float %247, %127
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 114688
  %253 = icmp ne i32 %252, 0
  %254 = select i1 %253, float %248, float 0.000000e+00
  %255 = select i1 %253, float %249, float 0.000000e+00
  %256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %57, float %254, float %255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fmul fast float %257, 2.550000e+02
  %259 = fptoui float %258 to i32
  %260 = select i1 %253, i32 %259, i32 0
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 3
  %263 = and i32 %262, 3
  %264 = icmp ne i32 %263, 0
  %265 = and i32 %262, 4
  %266 = icmp ne i32 %265, 0
  %267 = and i1 %264, %266
  br i1 %267, label %268, label %277

; <label>:268                                     ; preds = %0
  %269 = fmul fast float %157, %127
  %270 = fmul fast float %156, %126
  %271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %56, float %270, float %269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = fsub fast float 1.000000e+00, %272
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = fcmp fast olt float %273, %275
  br label %280

; <label>:277                                     ; preds = %0
  %278 = icmp eq i32 %265, 0
  %279 = and i1 %264, %278
  br label %280

; <label>:280                                     ; preds = %277, %268
  %281 = phi i1 [ %276, %268 ], [ %279, %277 ]
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %284 = fmul fast float %283, 0x3FE3C6EF40000000
  %285 = frem fast float %126, 2.560000e+02
  %286 = frem fast float %127, 2.560000e+02
  %287 = fptoui float %285 to i32
  %288 = fptoui float %286 to i32
  %289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %287, i32 %288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = fadd fast float %290, %284
  %292 = call float @dx.op.unary.f32(i32 22, float %291)  ; Frc(value)
  %293 = add i32 %64, 156
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = shl i32 %295, 4
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %295, 7
  %300 = and i32 %299, 32752
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %295, 22
  %303 = shl nuw nsw i32 %302, 5
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %64, 216
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %307, 8
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = lshr i32 %307, 16
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = add i32 %64, 36
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %64, 288
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = fmul fast float %330, 0x3F50624DE0000000
  %334 = fmul fast float %332, 0x3F50624DE0000000
  %335 = mul i32 %66, 100
  %336 = add i32 %335, 28
  %337 = add i32 %335, 40
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = add i32 %64, 172
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = shl i32 %342, 4
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %342, 7
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %342, 22
  %350 = shl nuw nsw i32 %349, 5
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %64, 232
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = lshr i32 %354, 8
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = lshr i32 %354, 16
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = add i32 %64, 52
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %64, 304
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %375, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = shl i32 %381, 4
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %381, 7
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %381, 22
  %389 = shl nuw nsw i32 %388, 5
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = and i32 %339, 1
  %392 = icmp ne i32 %391, 0
  %393 = select i1 %392, float %384, float %345
  %394 = select i1 %392, float %387, float %348
  %395 = select i1 %392, float %390, float %351
  %396 = add i32 %335, 44
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = fmul fast float %398, %393
  %400 = fmul fast float %398, %394
  %401 = fmul fast float %398, %395
  %402 = add i32 %335, 48
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %414 = and i32 %339, 8
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %407, float %357
  %417 = select i1 %415, float %410, float %361
  %418 = select i1 %415, float %413, float %365
  %419 = add i32 %335, 52
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %421, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = and i32 %339, 2
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %423, float %370
  %429 = select i1 %427, float %425, float %372
  %430 = add i32 %335, 56
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = and i32 %339, 4
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %434, float %377
  %440 = fmul float %439, 0x3F50624DE0000000
  %441 = select i1 %438, float %436, float %379
  %442 = fmul float %441, 0x3F50624DE0000000
  %443 = add i32 %335, 60
  %444 = add i32 %335, 32
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %64, 188
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = shl i32 %449, 4
  %451 = and i32 %450, 32752
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = lshr i32 %449, 7
  %454 = and i32 %453, 32752
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %449, 22
  %457 = shl nuw nsw i32 %456, 5
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = add i32 %64, 248
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 255
  %463 = uitofp i32 %462 to float
  %464 = fmul fast float %463, 0x3F70101020000000
  %465 = lshr i32 %461, 8
  %466 = and i32 %465, 255
  %467 = uitofp i32 %466 to float
  %468 = fmul fast float %467, 0x3F70101020000000
  %469 = lshr i32 %461, 16
  %470 = and i32 %469, 255
  %471 = uitofp i32 %470 to float
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = add i32 %64, 68
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %475, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = add i32 %64, 320
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 65535
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %482, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = shl i32 %488, 4
  %490 = and i32 %489, 32752
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = lshr i32 %488, 7
  %493 = and i32 %492, 32752
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %488, 22
  %496 = shl nuw nsw i32 %495, 5
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = and i32 %446, 1
  %499 = icmp ne i32 %498, 0
  %500 = select i1 %499, float %491, float %452
  %501 = select i1 %499, float %494, float %455
  %502 = select i1 %499, float %497, float %458
  %503 = add i32 %335, 64
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = fmul fast float %505, %500
  %507 = fmul fast float %505, %501
  %508 = fmul fast float %505, %502
  %509 = add i32 %335, 68
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = shl i32 %511, 4
  %513 = and i32 %512, 32752
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = lshr i32 %511, 7
  %516 = and i32 %515, 32752
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = lshr i32 %511, 22
  %519 = shl nuw nsw i32 %518, 5
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = and i32 %446, 8
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %514, float %464
  %524 = select i1 %522, float %517, float %468
  %525 = select i1 %522, float %520, float %472
  %526 = add i32 %335, 72
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 65535
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %528, 16
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = and i32 %446, 2
  %534 = icmp ne i32 %533, 0
  %535 = select i1 %534, float %530, float %477
  %536 = select i1 %534, float %532, float %479
  %537 = add i32 %335, 76
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 65535
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %539, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = and i32 %446, 4
  %545 = icmp ne i32 %544, 0
  %546 = select i1 %545, float %541, float %484
  %547 = fmul float %546, 0x3F50624DE0000000
  %548 = select i1 %545, float %543, float %486
  %549 = fmul float %548, 0x3F50624DE0000000
  %550 = add i32 %335, 80
  %551 = add i32 %335, 36
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %64, 204
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = shl i32 %556, 4
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %556, 7
  %561 = and i32 %560, 32752
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %556, 22
  %564 = shl nuw nsw i32 %563, 5
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = add i32 %64, 264
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 255
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = lshr i32 %568, 8
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = lshr i32 %568, 16
  %577 = and i32 %576, 255
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = add i32 %64, 84
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %582, 16
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = add i32 %64, 336
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 65535
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %589, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = shl i32 %595, 4
  %597 = and i32 %596, 32752
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %595, 7
  %600 = and i32 %599, 32752
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %595, 22
  %603 = shl nuw nsw i32 %602, 5
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = and i32 %553, 1
  %606 = icmp ne i32 %605, 0
  %607 = select i1 %606, float %598, float %559
  %608 = select i1 %606, float %601, float %562
  %609 = select i1 %606, float %604, float %565
  %610 = add i32 %335, 84
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fmul fast float %612, %607
  %614 = fmul fast float %612, %608
  %615 = fmul fast float %612, %609
  %616 = add i32 %335, 88
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = shl i32 %618, 4
  %620 = and i32 %619, 32752
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = lshr i32 %618, 7
  %623 = and i32 %622, 32752
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %618, 22
  %626 = shl nuw nsw i32 %625, 5
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = and i32 %553, 8
  %629 = icmp ne i32 %628, 0
  %630 = select i1 %629, float %621, float %571
  %631 = select i1 %629, float %624, float %575
  %632 = select i1 %629, float %627, float %579
  %633 = add i32 %335, 92
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 65535
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = lshr i32 %635, 16
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = and i32 %553, 2
  %641 = icmp ne i32 %640, 0
  %642 = select i1 %641, float %637, float %584
  %643 = select i1 %641, float %639, float %586
  %644 = add i32 %335, 96
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %646, 65535
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = lshr i32 %646, 16
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = and i32 %553, 4
  %652 = icmp ne i32 %651, 0
  %653 = select i1 %652, float %648, float %591
  %654 = fmul float %653, 0x3F50624DE0000000
  %655 = select i1 %652, float %650, float %593
  %656 = fmul float %655, 0x3F50624DE0000000
  %657 = add i32 %64, 348
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 32
  %661 = icmp eq i32 %660, 0
  %662 = and i32 %659, 64
  %663 = icmp eq i32 %662, 0
  %664 = and i32 %659, 128
  %665 = icmp eq i32 %664, 0
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 2
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %685, label %670

; <label>:670                                     ; preds = %280
  %671 = add i32 %64, 524
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %675, %dx.types.Handle %123, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = extractvalue %dx.types.ResRet.f32 %676, 1
  %679 = extractvalue %dx.types.ResRet.f32 %676, 2
  %680 = extractvalue %dx.types.ResRet.f32 %676, 3
  %681 = fmul fast float %680, %106
  %682 = fmul fast float %677, %107
  %683 = fmul fast float %678, %108
  %684 = fmul fast float %679, %109
  br label %685

; <label>:685                                     ; preds = %670, %280
  %686 = phi float [ %109, %280 ], [ %684, %670 ]
  %687 = phi float [ %108, %280 ], [ %683, %670 ]
  %688 = phi float [ %107, %280 ], [ %682, %670 ]
  %689 = phi float [ %106, %280 ], [ %681, %670 ]
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 2
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %713, label %694

; <label>:694                                     ; preds = %685
  %695 = add i32 %64, 44
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float %688, float 1.000000e+00
  %701 = add i32 %64, 60
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 1
  %705 = icmp ne i32 %704, 0
  %706 = select i1 %705, float %687, float 1.000000e+00
  %707 = add i32 %64, 76
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 1
  %711 = icmp ne i32 %710, 0
  %712 = select i1 %711, float %686, float 1.000000e+00
  br label %713

; <label>:713                                     ; preds = %694, %685
  %714 = phi float [ %686, %685 ], [ %712, %694 ]
  %715 = phi float [ %687, %685 ], [ %706, %694 ]
  %716 = phi float [ %688, %685 ], [ %700, %694 ]
  %717 = lshr i32 %691, 20
  %718 = and i32 %717, 3
  %719 = add nuw nsw i32 %718, 1
  %720 = add i32 %64, 24
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %64, 28
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = or i32 %725, %722
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %1291, label %728

; <label>:728                                     ; preds = %713
  %729 = and i32 %722, 262144
  %730 = icmp ne i32 %729, 0
  %731 = select i1 %730, float %72, float 1.000000e+00
  %732 = select i1 %730, float %73, float 0.000000e+00
  %733 = select i1 %730, float %74, float 0.000000e+00
  %734 = select i1 %730, float %75, float 1.000000e+00
  %735 = select i1 %730, float %76, float %104
  %736 = select i1 %730, float %77, float %105
  %737 = add i32 %64, 284
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = lshr i32 %739, 16
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = fmul fast float %741, 0x3F50624DE0000000
  %743 = add i32 %64, 88
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = lshr i32 %745, 16
  %747 = and i32 %746, 255
  %748 = lshr i32 %745, 24
  %749 = add i32 %64, 292
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = and i32 %751, 65535
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = lshr i32 %751, 16
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = add i32 %64, 32
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = lshr i32 %758, 22
  %760 = shl nuw nsw i32 %759, 5
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = shl i32 %758, 4
  %763 = and i32 %762, 32752
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = lshr i32 %758, 7
  %766 = and i32 %765, 32752
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %770 = fmul fast float %769, 1.000000e+03
  %771 = fmul fast float %333, %770
  %772 = call float @dx.op.unary.f32(i32 22, float %771)  ; Frc(value)
  %773 = fadd fast float %772, %323
  %774 = fmul fast float %334, %770
  %775 = call float @dx.op.unary.f32(i32 22, float %774)  ; Frc(value)
  %776 = fadd fast float %775, %325
  %777 = fmul fast float %742, %770
  %778 = call float @dx.op.unary.f32(i32 22, float %777)  ; Frc(value)
  %779 = fmul fast float %778, 0x401921FB60000000
  %780 = fadd fast float %779, %761
  %781 = call float @dx.op.unary.f32(i32 13, float %780)  ; Sin(value)
  %782 = call float @dx.op.unary.f32(i32 12, float %780)  ; Cos(value)
  %783 = fsub fast float -0.000000e+00, %781
  %784 = fadd fast float %735, -5.000000e-01
  %785 = fadd fast float %736, -5.000000e-01
  %786 = fmul fast float %753, %784
  %787 = fmul fast float %755, %785
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fmul fast float %764, %788
  %791 = fmul fast float %767, %789
  %792 = fmul fast float %782, %790
  %793 = call float @dx.op.tertiary.f32(i32 46, float %783, float %791, float %792)  ; FMad(a,b,c)
  %794 = fmul fast float %781, %790
  %795 = call float @dx.op.tertiary.f32(i32 46, float %782, float %791, float %794)  ; FMad(a,b,c)
  %796 = fadd fast float %773, %793
  %797 = fadd fast float %776, %795
  %798 = icmp ugt i32 %747, 1
  %799 = icmp ugt i32 %745, 33554431
  %800 = or i1 %799, %798
  br i1 %800, label %801, label %826

; <label>:801                                     ; preds = %728
  %802 = add i32 %64, 228
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = lshr i32 %804, 16
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = fmul fast float %769, %806
  %808 = call float @dx.op.unary.f32(i32 22, float %807)  ; Frc(value)
  %809 = mul nuw nsw i32 %747, %748
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %808, %810
  %812 = call float @dx.op.unary.f32(i32 27, float %811)  ; Round_ni(value)
  %813 = fptoui float %812 to i32
  %814 = urem i32 %813, %747
  %815 = udiv i32 %813, %748
  %816 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %817 = call float @dx.op.unary.f32(i32 22, float %797)  ; Frc(value)
  %818 = uitofp i32 %814 to float
  %819 = uitofp i32 %815 to float
  %820 = fadd fast float %816, %818
  %821 = fadd fast float %817, %819
  %822 = uitofp i32 %747 to float
  %823 = uitofp i32 %748 to float
  %824 = fdiv fast float %820, %822
  %825 = fdiv fast float %821, %823
  br label %826

; <label>:826                                     ; preds = %801, %728
  %827 = phi float [ %824, %801 ], [ %796, %728 ]
  %828 = phi float [ %825, %801 ], [ %797, %728 ]
  %829 = and i32 %722, 256
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %877, label %831

; <label>:831                                     ; preds = %826
  %832 = add i32 %64, 472
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = add i32 %834, 0
  %836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %836, %dx.types.Handle %123, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = add i32 %64, 100
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = shl i32 %841, 4
  %843 = and i32 %842, 32752
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = lshr i32 %841, 7
  %846 = and i32 %845, 32752
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = fsub fast float 1.000000e+00, %689
  %849 = call float @dx.op.binary.f32(i32 35, float %848, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %850 = bitcast float %689 to i32
  %851 = sitofp i32 %850 to float
  %852 = fadd fast float %851, 0xC1CFBF8940000000
  %853 = fmul fast float %847, %852
  %854 = fadd fast float %853, 0x41CFBF8940000000
  %855 = fptosi float %854 to i32
  %856 = bitcast i32 %855 to float
  %857 = bitcast float %849 to i32
  %858 = sitofp i32 %857 to float
  %859 = fadd fast float %858, 0xC1CFBF8940000000
  %860 = fmul fast float %859, %847
  %861 = fadd fast float %860, 0x41CFBF8940000000
  %862 = fptosi float %861 to i32
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %856, %844
  %865 = fmul fast float %863, %844
  %866 = fsub fast float %849, %864
  %867 = fadd fast float %865, %849
  %868 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %869 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %870 = fsub fast float %838, %868
  %871 = fsub fast float %869, %868
  %872 = bitcast float %871 to i32
  %873 = sub nsw i32 2129859010, %872
  %874 = bitcast i32 %873 to float
  %875 = fmul fast float %874, %870
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  br label %877

; <label>:877                                     ; preds = %831, %826
  %878 = phi float [ %876, %831 ], [ %689, %826 ]
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 128
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %899, label %883

; <label>:883                                     ; preds = %877
  %884 = add i32 %64, 456
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = add i32 %886, 0
  %888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %887, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %889 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %888, %dx.types.Handle %123, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 524288
  %894 = icmp ne i32 %893, 0
  %895 = fcmp fast ogt float %890, 0x3FE0101020000000
  %896 = select i1 %895, float 1.000000e+00, float 0.000000e+00
  %897 = select i1 %894, float %896, float %890
  %898 = fmul fast float %897, %878
  br label %899

; <label>:899                                     ; preds = %883, %877
  %900 = phi float [ %898, %883 ], [ %878, %877 ]
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 16
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %1103, label %905

; <label>:905                                     ; preds = %899
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = add i32 %64, 408
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %910, 0
  %912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %912, %dx.types.Handle %122, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = extractvalue %dx.types.ResRet.f32 %913, 1
  %916 = extractvalue %dx.types.ResRet.f32 %913, 2
  %917 = extractvalue %dx.types.ResRet.f32 %913, 3
  %918 = and i32 %907, 255
  %919 = uitofp i32 %918 to float
  %920 = lshr i32 %907, 8
  %921 = and i32 %920, 255
  %922 = uitofp i32 %921 to float
  %923 = fmul fast float %917, %919
  %924 = fadd fast float %923, %922
  %925 = fmul fast float %924, 0x3F70101000000000
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 512
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %938, label %930

; <label>:930                                     ; preds = %905
  %931 = add i32 %64, 492
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %933, 0
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %935, %dx.types.Handle %123, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  br label %938

; <label>:938                                     ; preds = %930, %905
  %939 = phi float [ %937, %930 ], [ 1.000000e+00, %905 ]
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 33554432
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %1050, label %944

; <label>:944                                     ; preds = %938
  %945 = add i32 %64, 224
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %947, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = add i32 %64, 228
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 65535
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 24
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = and i32 %958, 255
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101020000000
  %965 = lshr i32 %958, 8
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = lshr i32 %958, 16
  %970 = and i32 %969, 255
  %971 = uitofp i32 %970 to float
  %972 = fmul fast float %971, 0x3F70101020000000
  %973 = add i32 %64, 220
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = lshr i32 %975, 24
  %977 = uitofp i32 %976 to float
  %978 = fmul fast float %977, 0x3F70101020000000
  %979 = and i32 %975, 255
  %980 = uitofp i32 %979 to float
  %981 = fmul fast float %980, 0x3F70101020000000
  %982 = lshr i32 %975, 8
  %983 = and i32 %982, 255
  %984 = uitofp i32 %983 to float
  %985 = fmul fast float %984, 0x3F70101020000000
  %986 = lshr i32 %975, 16
  %987 = and i32 %986, 255
  %988 = uitofp i32 %987 to float
  %989 = fmul fast float %988, 0x3F70101020000000
  %990 = bitcast float %914 to i32
  %991 = ashr i32 %990, 1
  %992 = sub nsw i32 1597463174, %991
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %914, 5.000000e-01
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %995, %994
  %997 = fsub fast float 1.500000e+00, %996
  %998 = fmul fast float %993, %914
  %999 = fmul fast float %998, %997
  %1000 = bitcast float %915 to i32
  %1001 = ashr i32 %1000, 1
  %1002 = sub nsw i32 1597463174, %1001
  %1003 = bitcast i32 %1002 to float
  %1004 = fmul fast float %915, 5.000000e-01
  %1005 = fmul fast float %1003, %1003
  %1006 = fmul fast float %1005, %1004
  %1007 = fsub fast float 1.500000e+00, %1006
  %1008 = fmul fast float %1003, %915
  %1009 = fmul fast float %1008, %1007
  %1010 = bitcast float %916 to i32
  %1011 = ashr i32 %1010, 1
  %1012 = sub nsw i32 1597463174, %1011
  %1013 = bitcast i32 %1012 to float
  %1014 = fmul fast float %916, 5.000000e-01
  %1015 = fmul fast float %1013, %1013
  %1016 = fmul fast float %1015, %1014
  %1017 = fsub fast float 1.500000e+00, %1016
  %1018 = fmul fast float %1013, %916
  %1019 = fmul fast float %1018, %1017
  %1020 = fsub fast float %999, %981
  %1021 = fsub fast float %1009, %985
  %1022 = fsub fast float %1019, %989
  %1023 = fmul fast float %1020, %949
  %1024 = fmul fast float %1021, %951
  %1025 = fmul fast float %1022, %956
  %1026 = fadd fast float %1023, %964
  %1027 = fadd fast float %1024, %968
  %1028 = fadd fast float %1025, %972
  %1029 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1030 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1031 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1032 = fmul fast float %1029, %1029
  %1033 = fmul fast float %1030, %1030
  %1034 = fmul fast float %1031, %1031
  %1035 = fsub fast float %1032, %914
  %1036 = fsub fast float %1033, %915
  %1037 = fsub fast float %1034, %916
  %1038 = fmul fast float %1035, %939
  %1039 = fmul fast float %1036, %939
  %1040 = fmul fast float %1037, %939
  %1041 = fadd fast float %1038, %914
  %1042 = fadd fast float %1039, %915
  %1043 = fadd fast float %1040, %916
  %1044 = fadd fast float %961, %925
  %1045 = fsub fast float %1044, %978
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = fsub fast float %1046, %925
  %1048 = fmul fast float %1047, %939
  %1049 = fadd fast float %1048, %925
  br label %1103

; <label>:1050                                    ; preds = %938
  %1051 = and i32 %941, 134217728
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1087, label %1053

; <label>:1053                                    ; preds = %1050
  %1054 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1055 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %1056 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %1057 = fadd fast float %1054, -5.000000e-01
  %1058 = fadd fast float %1055, -5.000000e-01
  %1059 = fadd fast float %1056, -5.000000e-01
  %1060 = fmul fast float %1057, %939
  %1061 = fmul fast float %1058, %939
  %1062 = fmul fast float %1059, %939
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = fadd fast float %1061, 5.000000e-01
  %1065 = fadd fast float %1062, 5.000000e-01
  %1066 = call float @dx.op.unary.f32(i32 24, float %914)  ; Sqrt(value)
  %1067 = call float @dx.op.unary.f32(i32 24, float %915)  ; Sqrt(value)
  %1068 = call float @dx.op.unary.f32(i32 24, float %916)  ; Sqrt(value)
  %1069 = fmul fast float %1063, 2.000000e+00
  %1070 = fsub fast float 1.000000e+00, %1069
  %1071 = fmul fast float %1070, %1066
  %1072 = fadd fast float %1071, %1069
  %1073 = fmul fast float %1072, %1066
  %1074 = fmul fast float %1064, 2.000000e+00
  %1075 = fsub fast float 1.000000e+00, %1074
  %1076 = fmul fast float %1075, %1067
  %1077 = fadd fast float %1076, %1074
  %1078 = fmul fast float %1077, %1067
  %1079 = fmul fast float %1065, 2.000000e+00
  %1080 = fsub fast float 1.000000e+00, %1079
  %1081 = fmul fast float %1080, %1068
  %1082 = fadd fast float %1081, %1079
  %1083 = fmul fast float %1082, %1068
  %1084 = fmul fast float %1073, %1073
  %1085 = fmul fast float %1078, %1078
  %1086 = fmul fast float %1083, %1083
  br label %1103

; <label>:1087                                    ; preds = %1050
  %1088 = fmul fast float %310, %310
  %1089 = fmul fast float %314, %314
  %1090 = fmul fast float %318, %318
  %1091 = fadd fast float %1088, -1.000000e+00
  %1092 = fadd fast float %1089, -1.000000e+00
  %1093 = fadd fast float %1090, -1.000000e+00
  %1094 = fmul fast float %939, %1091
  %1095 = fmul fast float %939, %1092
  %1096 = fmul fast float %939, %1093
  %1097 = fadd fast float %1094, 1.000000e+00
  %1098 = fadd fast float %1095, 1.000000e+00
  %1099 = fadd fast float %1096, 1.000000e+00
  %1100 = fmul fast float %1097, %914
  %1101 = fmul fast float %1098, %915
  %1102 = fmul fast float %1099, %916
  br label %1103

; <label>:1103                                    ; preds = %1087, %1053, %944, %899
  %1104 = phi float [ %1049, %944 ], [ %925, %1053 ], [ %925, %1087 ], [ 0x3FA23C0BE0000000, %899 ]
  %1105 = phi float [ %1041, %944 ], [ %1084, %1053 ], [ %1100, %1087 ], [ 1.000000e+00, %899 ]
  %1106 = phi float [ %1042, %944 ], [ %1085, %1053 ], [ %1101, %1087 ], [ 1.000000e+00, %899 ]
  %1107 = phi float [ %1043, %944 ], [ %1086, %1053 ], [ %1102, %1087 ], [ 1.000000e+00, %899 ]
  %1108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.i32 %1108, 1
  %1110 = and i32 %1109, 1
  %1111 = icmp ne i32 %1110, 0
  %1112 = add i32 %64, 356
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 32
  %1116 = icmp ne i32 %1115, 0
  %1117 = and i1 %1111, %1116
  %1118 = select i1 %1117, float 1.000000e+00, float %1105
  %1119 = select i1 %1117, float 0x3FD3333340000000, float %1106
  %1120 = select i1 %1117, float 0x3FD3333340000000, float %1107
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 32
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1197, label %1125

; <label>:1125                                    ; preds = %1103
  %1126 = add i32 %64, 92
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %64, 424
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %122, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1139 = and i32 %1128, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = lshr i32 %1128, 8
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = lshr i32 %1128, 16
  %1145 = and i32 %1144, 255
  %1146 = uitofp i32 %1145 to float
  %1147 = fmul fast float %1146, 0x3F70101000000000
  %1148 = fmul fast float %1135, %1140
  %1149 = fadd fast float %1148, %1143
  %1150 = fmul fast float %1149, 0x3F70101000000000
  %1151 = fadd fast float %1136, -5.000000e-01
  %1152 = fadd fast float %1138, -5.000000e-01
  %1153 = fmul fast float %1151, %1147
  %1154 = fmul fast float %1152, %1147
  %1155 = fadd fast float %1153, 5.000000e-01
  %1156 = fadd fast float %1154, 5.000000e-01
  %1157 = fmul fast float %1155, 2.000000e+00
  %1158 = fadd fast float %1157, -1.000000e+00
  %1159 = fmul fast float %1156, 2.000000e+00
  %1160 = fadd fast float %1159, -1.000000e+00
  %1161 = fadd fast float %1158, %1160
  %1162 = fmul fast float %1161, 5.000000e-01
  %1163 = fsub fast float %1158, %1160
  %1164 = fmul fast float %1163, 5.000000e-01
  %1165 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1166 = fsub fast float 1.000000e+00, %1165
  %1167 = call float @dx.op.unary.f32(i32 6, float %1164)  ; FAbs(value)
  %1168 = fsub fast float %1166, %1167
  %1169 = call float @dx.op.dot3.f32(i32 55, float %1162, float %1164, float %1168, float %1162, float %1164, float %1168)  ; Dot3(ax,ay,az,bx,by,bz)
  %1170 = call float @dx.op.unary.f32(i32 25, float %1169)  ; Rsqrt(value)
  %1171 = fmul fast float %1162, %1170
  %1172 = fmul fast float %1164, %1170
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 67108864
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1193, label %1177

; <label>:1177                                    ; preds = %1125
  %1178 = add i32 %64, 280
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 65535
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = and i32 %1184, 65535
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = lshr i32 %1180, 16
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = fsub fast float %1150, %1188
  %1190 = fmul fast float %1189, %1182
  %1191 = fadd fast float %1190, %1186
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  br label %1193

; <label>:1193                                    ; preds = %1177, %1125
  %1194 = phi float [ %1192, %1177 ], [ %1150, %1125 ]
  %1195 = call float @dx.op.dot2.f32(i32 54, float %1171, float %1172, float %731, float %732)  ; Dot2(ax,ay,bx,by)
  %1196 = call float @dx.op.dot2.f32(i32 54, float %1171, float %1172, float %733, float %734)  ; Dot2(ax,ay,bx,by)
  br label %1197

; <label>:1197                                    ; preds = %1193, %1103
  %1198 = phi float [ %1194, %1193 ], [ 0x3FD6666660000000, %1103 ]
  %1199 = phi float [ %1195, %1193 ], [ 0.000000e+00, %1103 ]
  %1200 = phi float [ %1196, %1193 ], [ 0.000000e+00, %1103 ]
  %1201 = phi float [ %1137, %1193 ], [ 1.000000e+00, %1103 ]
  %1202 = add i32 %64, 160
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = lshr i32 %1204, 22
  %1206 = shl nuw nsw i32 %1205, 5
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 64
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1245, label %1212

; <label>:1212                                    ; preds = %1197
  %1213 = add i32 %64, 440
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %1215, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 131072
  %1221 = icmp eq i32 %1220, 0
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %122, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = fmul fast float %1223, %298
  %1227 = fmul fast float %1224, %301
  %1228 = fmul fast float %1225, %304
  br i1 %1221, label %1235, label %1229

; <label>:1229                                    ; preds = %1212
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = fmul fast float %1231, %1226
  %1233 = fmul fast float %1231, %1227
  %1234 = fmul fast float %1231, %1228
  br label %1235

; <label>:1235                                    ; preds = %1229, %1212
  %1236 = phi float [ %1232, %1229 ], [ %1226, %1212 ]
  %1237 = phi float [ %1233, %1229 ], [ %1227, %1212 ]
  %1238 = phi float [ %1234, %1229 ], [ %1228, %1212 ]
  %1239 = fmul fast float %1236, %1207
  %1240 = select i1 %281, float %1239, float %1236
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1240, float %1237, float %1238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = select i1 %281, float 0.000000e+00, float %1236
  %1243 = select i1 %281, float %1241, float %1237
  %1244 = select i1 %281, float 0.000000e+00, float %1238
  br label %1245

; <label>:1245                                    ; preds = %1235, %1197
  %1246 = phi float [ %1242, %1235 ], [ 0.000000e+00, %1197 ]
  %1247 = phi float [ %1243, %1235 ], [ 0.000000e+00, %1197 ]
  %1248 = phi float [ %1244, %1235 ], [ 0.000000e+00, %1197 ]
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 26624
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1276, label %1253

; <label>:1253                                    ; preds = %1245
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 16384
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1276, label %1258

; <label>:1258                                    ; preds = %1253
  %1259 = and i32 %1255, 1048576
  %1260 = icmp ne i32 %1259, 0
  %1261 = add i32 %64, 508
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %1263, 0
  %1265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1265, %dx.types.Handle %123, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = add i32 %64, 96
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = lshr i32 %1270, 24
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1267, 0x3F70101020000000
  %1274 = select i1 %1260, float 0x3F70101020000000, float %1273
  %1275 = fmul fast float %1274, %1272
  br label %1276

; <label>:1276                                    ; preds = %1258, %1253, %1245
  %1277 = phi float [ %1275, %1258 ], [ 0.000000e+00, %1253 ], [ 0.000000e+00, %1245 ]
  %1278 = add i32 %64, 96
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = lshr i32 %1280, 8
  %1284 = and i32 %1283, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = fmul fast float %1285, %1286
  %1288 = fadd fast float %1287, %1282
  %1289 = fmul fast float %1288, 0x3F70101020000000
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  br label %1291

; <label>:1291                                    ; preds = %1276, %713
  %1292 = phi float [ 0.000000e+00, %713 ], [ %1199, %1276 ]
  %1293 = phi float [ 0.000000e+00, %713 ], [ %1200, %1276 ]
  %1294 = phi float [ 0.000000e+00, %713 ], [ %1118, %1276 ]
  %1295 = phi float [ 0.000000e+00, %713 ], [ %1119, %1276 ]
  %1296 = phi float [ 0.000000e+00, %713 ], [ %1120, %1276 ]
  %1297 = phi float [ 0.000000e+00, %713 ], [ %1246, %1276 ]
  %1298 = phi float [ 0.000000e+00, %713 ], [ %1247, %1276 ]
  %1299 = phi float [ 0.000000e+00, %713 ], [ %1248, %1276 ]
  %1300 = phi float [ 0.000000e+00, %713 ], [ %1104, %1276 ]
  %1301 = phi float [ 0.000000e+00, %713 ], [ %900, %1276 ]
  %1302 = phi float [ 0.000000e+00, %713 ], [ %1198, %1276 ]
  %1303 = phi float [ 0.000000e+00, %713 ], [ %1201, %1276 ]
  %1304 = phi float [ 0.000000e+00, %713 ], [ %1277, %1276 ]
  %1305 = phi float [ 0.000000e+00, %713 ], [ %1290, %1276 ]
  br i1 %661, label %2071, label %1306

; <label>:1306                                    ; preds = %1291
  %1307 = icmp ult i32 %719, 2
  %1308 = add i32 %64, 40
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = add i32 %64, 44
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = or i32 %1313, %1310
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %2071, label %1316

; <label>:1316                                    ; preds = %1306
  %1317 = and i32 %1310, 262144
  %1318 = icmp ne i32 %1317, 0
  %1319 = select i1 %1318, float %72, float 1.000000e+00
  %1320 = select i1 %1318, float %73, float 0.000000e+00
  %1321 = select i1 %1318, float %74, float 0.000000e+00
  %1322 = select i1 %1318, float %75, float 1.000000e+00
  %1323 = select i1 %1318, float %76, float %104
  %1324 = select i1 %1318, float %77, float %105
  %1325 = add i32 %64, 300
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = lshr i32 %1327, 16
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = fmul fast float %1329, 0x3F50624DE0000000
  %1331 = add i32 %64, 104
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = lshr i32 %1333, 16
  %1335 = and i32 %1334, 255
  %1336 = lshr i32 %1333, 24
  %1337 = add i32 %64, 308
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 65535
  %1341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1340)  ; LegacyF16ToF32(value)
  %1342 = lshr i32 %1339, 16
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = add i32 %64, 48
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = lshr i32 %1346, 22
  %1348 = shl nuw nsw i32 %1347, 5
  %1349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1348)  ; LegacyF16ToF32(value)
  %1350 = shl i32 %1346, 4
  %1351 = and i32 %1350, 32752
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = lshr i32 %1346, 7
  %1354 = and i32 %1353, 32752
  %1355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1354)  ; LegacyF16ToF32(value)
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 3
  %1358 = fmul fast float %1357, 1.000000e+03
  %1359 = fmul fast float %1358, %440
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = fadd fast float %1360, %428
  %1362 = fmul fast float %1358, %442
  %1363 = call float @dx.op.unary.f32(i32 22, float %1362)  ; Frc(value)
  %1364 = fadd fast float %1363, %429
  %1365 = fmul fast float %1330, %1358
  %1366 = call float @dx.op.unary.f32(i32 22, float %1365)  ; Frc(value)
  %1367 = fmul fast float %1366, 0x401921FB60000000
  %1368 = fadd fast float %1367, %1349
  %1369 = call float @dx.op.unary.f32(i32 13, float %1368)  ; Sin(value)
  %1370 = call float @dx.op.unary.f32(i32 12, float %1368)  ; Cos(value)
  %1371 = fsub fast float -0.000000e+00, %1369
  %1372 = fadd fast float %1323, -5.000000e-01
  %1373 = fadd fast float %1324, -5.000000e-01
  %1374 = fmul fast float %1341, %1372
  %1375 = fmul fast float %1343, %1373
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = fadd fast float %1375, 5.000000e-01
  %1378 = fmul fast float %1352, %1376
  %1379 = fmul fast float %1355, %1377
  %1380 = fmul fast float %1370, %1378
  %1381 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1379, float %1380)  ; FMad(a,b,c)
  %1382 = fmul fast float %1369, %1378
  %1383 = call float @dx.op.tertiary.f32(i32 46, float %1370, float %1379, float %1382)  ; FMad(a,b,c)
  %1384 = fadd fast float %1361, %1381
  %1385 = fadd fast float %1364, %1383
  %1386 = icmp ugt i32 %1335, 1
  %1387 = icmp ugt i32 %1333, 33554431
  %1388 = or i1 %1387, %1386
  br i1 %1388, label %1389, label %1414

; <label>:1389                                    ; preds = %1316
  %1390 = add i32 %64, 244
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = lshr i32 %1392, 16
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = fmul fast float %1357, %1394
  %1396 = call float @dx.op.unary.f32(i32 22, float %1395)  ; Frc(value)
  %1397 = mul nuw nsw i32 %1335, %1336
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1396, %1398
  %1400 = call float @dx.op.unary.f32(i32 27, float %1399)  ; Round_ni(value)
  %1401 = fptoui float %1400 to i32
  %1402 = urem i32 %1401, %1335
  %1403 = udiv i32 %1401, %1336
  %1404 = call float @dx.op.unary.f32(i32 22, float %1384)  ; Frc(value)
  %1405 = call float @dx.op.unary.f32(i32 22, float %1385)  ; Frc(value)
  %1406 = uitofp i32 %1402 to float
  %1407 = uitofp i32 %1403 to float
  %1408 = fadd fast float %1404, %1406
  %1409 = fadd fast float %1405, %1407
  %1410 = uitofp i32 %1335 to float
  %1411 = uitofp i32 %1336 to float
  %1412 = fdiv fast float %1408, %1410
  %1413 = fdiv fast float %1409, %1411
  br label %1414

; <label>:1414                                    ; preds = %1389, %1316
  %1415 = phi float [ %1412, %1389 ], [ %1384, %1316 ]
  %1416 = phi float [ %1413, %1389 ], [ %1385, %1316 ]
  %1417 = and i32 %1310, 256
  %1418 = icmp eq i32 %1417, 0
  br i1 %1418, label %1465, label %1419

; <label>:1419                                    ; preds = %1414
  %1420 = add i32 %64, 476
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = add i32 %1422, 0
  %1424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1425 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1424, %dx.types.Handle %123, float %1415, float %1416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = add i32 %64, 116
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1427, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = shl i32 %1429, 4
  %1431 = and i32 %1430, 32752
  %1432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1431)  ; LegacyF16ToF32(value)
  %1433 = lshr i32 %1429, 7
  %1434 = and i32 %1433, 32752
  %1435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1434)  ; LegacyF16ToF32(value)
  %1436 = fsub fast float 1.000000e+00, %716
  %1437 = call float @dx.op.binary.f32(i32 35, float %1436, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1438 = bitcast float %716 to i32
  %1439 = sitofp i32 %1438 to float
  %1440 = fadd fast float %1439, 0xC1CFBF8940000000
  %1441 = fmul fast float %1435, %1440
  %1442 = fadd fast float %1441, 0x41CFBF8940000000
  %1443 = fptosi float %1442 to i32
  %1444 = bitcast i32 %1443 to float
  %1445 = bitcast float %1437 to i32
  %1446 = sitofp i32 %1445 to float
  %1447 = fadd fast float %1446, 0xC1CFBF8940000000
  %1448 = fmul fast float %1447, %1435
  %1449 = fadd fast float %1448, 0x41CFBF8940000000
  %1450 = fptosi float %1449 to i32
  %1451 = bitcast i32 %1450 to float
  %1452 = fmul fast float %1444, %1432
  %1453 = fmul fast float %1451, %1432
  %1454 = fsub fast float %1437, %1452
  %1455 = fadd fast float %1453, %1437
  %1456 = call float @dx.op.unary.f32(i32 7, float %1454)  ; Saturate(value)
  %1457 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1458 = fsub fast float %1426, %1456
  %1459 = fsub fast float %1457, %1456
  %1460 = bitcast float %1459 to i32
  %1461 = sub nsw i32 2129859010, %1460
  %1462 = bitcast i32 %1461 to float
  %1463 = fmul fast float %1462, %1458
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  br label %1465

; <label>:1465                                    ; preds = %1419, %1414
  %1466 = phi float [ %1464, %1419 ], [ %716, %1414 ]
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 128
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1487, label %1471

; <label>:1471                                    ; preds = %1465
  %1472 = add i32 %64, 460
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %1474, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1476, %dx.types.Handle %123, float %1415, float %1416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 524288
  %1482 = icmp ne i32 %1481, 0
  %1483 = fcmp fast ogt float %1478, 0x3FE0101020000000
  %1484 = select i1 %1483, float 1.000000e+00, float 0.000000e+00
  %1485 = select i1 %1482, float %1484, float %1478
  %1486 = fmul fast float %1485, %1466
  br label %1487

; <label>:1487                                    ; preds = %1471, %1465
  %1488 = phi float [ %1486, %1471 ], [ %1466, %1465 ]
  %1489 = fcmp fast ult float %1488, 0x3F70101020000000
  br i1 %1489, label %2071, label %1490

; <label>:1490                                    ; preds = %1487
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 16
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1693, label %1495

; <label>:1495                                    ; preds = %1490
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = add i32 %64, 412
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = add i32 %1500, 0
  %1502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1502, %dx.types.Handle %122, float %1415, float %1416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = extractvalue %dx.types.ResRet.f32 %1503, 3
  %1508 = and i32 %1497, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = lshr i32 %1497, 8
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1507, %1509
  %1514 = fadd fast float %1513, %1512
  %1515 = fmul fast float %1514, 0x3F70101000000000
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 512
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1528, label %1520

; <label>:1520                                    ; preds = %1495
  %1521 = add i32 %64, 496
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %1523, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1525, %dx.types.Handle %123, float %1415, float %1416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  br label %1528

; <label>:1528                                    ; preds = %1520, %1495
  %1529 = phi float [ %1527, %1520 ], [ 1.000000e+00, %1495 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 33554432
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1640, label %1534

; <label>:1534                                    ; preds = %1528
  %1535 = add i32 %64, 240
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 65535
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = lshr i32 %1537, 16
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = add i32 %64, 244
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 65535
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = lshr i32 %1548, 24
  %1550 = uitofp i32 %1549 to float
  %1551 = fmul fast float %1550, 0x3F70101020000000
  %1552 = and i32 %1548, 255
  %1553 = uitofp i32 %1552 to float
  %1554 = fmul fast float %1553, 0x3F70101020000000
  %1555 = lshr i32 %1548, 8
  %1556 = and i32 %1555, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = fmul fast float %1557, 0x3F70101020000000
  %1559 = lshr i32 %1548, 16
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = fmul fast float %1561, 0x3F70101020000000
  %1563 = add i32 %64, 236
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = lshr i32 %1565, 24
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = and i32 %1565, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1570, 0x3F70101020000000
  %1572 = lshr i32 %1565, 8
  %1573 = and i32 %1572, 255
  %1574 = uitofp i32 %1573 to float
  %1575 = fmul fast float %1574, 0x3F70101020000000
  %1576 = lshr i32 %1565, 16
  %1577 = and i32 %1576, 255
  %1578 = uitofp i32 %1577 to float
  %1579 = fmul fast float %1578, 0x3F70101020000000
  %1580 = bitcast float %1504 to i32
  %1581 = ashr i32 %1580, 1
  %1582 = sub nsw i32 1597463174, %1581
  %1583 = bitcast i32 %1582 to float
  %1584 = fmul fast float %1504, 5.000000e-01
  %1585 = fmul fast float %1583, %1583
  %1586 = fmul fast float %1585, %1584
  %1587 = fsub fast float 1.500000e+00, %1586
  %1588 = fmul fast float %1583, %1504
  %1589 = fmul fast float %1588, %1587
  %1590 = bitcast float %1505 to i32
  %1591 = ashr i32 %1590, 1
  %1592 = sub nsw i32 1597463174, %1591
  %1593 = bitcast i32 %1592 to float
  %1594 = fmul fast float %1505, 5.000000e-01
  %1595 = fmul fast float %1593, %1593
  %1596 = fmul fast float %1595, %1594
  %1597 = fsub fast float 1.500000e+00, %1596
  %1598 = fmul fast float %1593, %1505
  %1599 = fmul fast float %1598, %1597
  %1600 = bitcast float %1506 to i32
  %1601 = ashr i32 %1600, 1
  %1602 = sub nsw i32 1597463174, %1601
  %1603 = bitcast i32 %1602 to float
  %1604 = fmul fast float %1506, 5.000000e-01
  %1605 = fmul fast float %1603, %1603
  %1606 = fmul fast float %1605, %1604
  %1607 = fsub fast float 1.500000e+00, %1606
  %1608 = fmul fast float %1603, %1506
  %1609 = fmul fast float %1608, %1607
  %1610 = fsub fast float %1589, %1571
  %1611 = fsub fast float %1599, %1575
  %1612 = fsub fast float %1609, %1579
  %1613 = fmul fast float %1610, %1539
  %1614 = fmul fast float %1611, %1541
  %1615 = fmul fast float %1612, %1546
  %1616 = fadd fast float %1613, %1554
  %1617 = fadd fast float %1614, %1558
  %1618 = fadd fast float %1615, %1562
  %1619 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1620 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1621 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1622 = fmul fast float %1619, %1619
  %1623 = fmul fast float %1620, %1620
  %1624 = fmul fast float %1621, %1621
  %1625 = fsub fast float %1622, %1504
  %1626 = fsub fast float %1623, %1505
  %1627 = fsub fast float %1624, %1506
  %1628 = fmul fast float %1625, %1529
  %1629 = fmul fast float %1626, %1529
  %1630 = fmul fast float %1627, %1529
  %1631 = fadd fast float %1628, %1504
  %1632 = fadd fast float %1629, %1505
  %1633 = fadd fast float %1630, %1506
  %1634 = fadd fast float %1551, %1515
  %1635 = fsub fast float %1634, %1568
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = fsub fast float %1636, %1515
  %1638 = fmul fast float %1637, %1529
  %1639 = fadd fast float %1638, %1515
  br label %1693

; <label>:1640                                    ; preds = %1528
  %1641 = and i32 %1531, 134217728
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1677, label %1643

; <label>:1643                                    ; preds = %1640
  %1644 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %1645 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %1646 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %1647 = fadd fast float %1644, -5.000000e-01
  %1648 = fadd fast float %1645, -5.000000e-01
  %1649 = fadd fast float %1646, -5.000000e-01
  %1650 = fmul fast float %1647, %1529
  %1651 = fmul fast float %1648, %1529
  %1652 = fmul fast float %1649, %1529
  %1653 = fadd fast float %1650, 5.000000e-01
  %1654 = fadd fast float %1651, 5.000000e-01
  %1655 = fadd fast float %1652, 5.000000e-01
  %1656 = call float @dx.op.unary.f32(i32 24, float %1504)  ; Sqrt(value)
  %1657 = call float @dx.op.unary.f32(i32 24, float %1505)  ; Sqrt(value)
  %1658 = call float @dx.op.unary.f32(i32 24, float %1506)  ; Sqrt(value)
  %1659 = fmul fast float %1653, 2.000000e+00
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = fmul fast float %1660, %1656
  %1662 = fadd fast float %1661, %1659
  %1663 = fmul fast float %1662, %1656
  %1664 = fmul fast float %1654, 2.000000e+00
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = fmul fast float %1665, %1657
  %1667 = fadd fast float %1666, %1664
  %1668 = fmul fast float %1667, %1657
  %1669 = fmul fast float %1655, 2.000000e+00
  %1670 = fsub fast float 1.000000e+00, %1669
  %1671 = fmul fast float %1670, %1658
  %1672 = fadd fast float %1671, %1669
  %1673 = fmul fast float %1672, %1658
  %1674 = fmul fast float %1663, %1663
  %1675 = fmul fast float %1668, %1668
  %1676 = fmul fast float %1673, %1673
  br label %1693

; <label>:1677                                    ; preds = %1640
  %1678 = fmul fast float %416, %416
  %1679 = fmul fast float %417, %417
  %1680 = fmul fast float %418, %418
  %1681 = fadd fast float %1678, -1.000000e+00
  %1682 = fadd fast float %1679, -1.000000e+00
  %1683 = fadd fast float %1680, -1.000000e+00
  %1684 = fmul fast float %1529, %1681
  %1685 = fmul fast float %1529, %1682
  %1686 = fmul fast float %1529, %1683
  %1687 = fadd fast float %1684, 1.000000e+00
  %1688 = fadd fast float %1685, 1.000000e+00
  %1689 = fadd fast float %1686, 1.000000e+00
  %1690 = fmul fast float %1687, %1504
  %1691 = fmul fast float %1688, %1505
  %1692 = fmul fast float %1689, %1506
  br label %1693

; <label>:1693                                    ; preds = %1677, %1643, %1534, %1490
  %1694 = phi float [ %1639, %1534 ], [ %1515, %1643 ], [ %1515, %1677 ], [ 0x3FA23C0BE0000000, %1490 ]
  %1695 = phi float [ %1631, %1534 ], [ %1674, %1643 ], [ %1690, %1677 ], [ 1.000000e+00, %1490 ]
  %1696 = phi float [ %1632, %1534 ], [ %1675, %1643 ], [ %1691, %1677 ], [ 1.000000e+00, %1490 ]
  %1697 = phi float [ %1633, %1534 ], [ %1676, %1643 ], [ %1692, %1677 ], [ 1.000000e+00, %1490 ]
  %1698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.i32 %1698, 1
  %1700 = and i32 %1699, 1
  %1701 = icmp ne i32 %1700, 0
  %1702 = add i32 %64, 356
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 32
  %1706 = icmp ne i32 %1705, 0
  %1707 = and i1 %1701, %1706
  %1708 = select i1 %1707, float 1.000000e+00, float %1695
  %1709 = select i1 %1707, float 0x3FD3333340000000, float %1696
  %1710 = select i1 %1707, float 0x3FD3333340000000, float %1697
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = and i32 %1712, 32
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1787, label %1715

; <label>:1715                                    ; preds = %1693
  %1716 = add i32 %64, 108
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = add i32 %64, 428
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = add i32 %1721, 0
  %1723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1723, %dx.types.Handle %122, float %1415, float %1416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1725 = extractvalue %dx.types.ResRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.ResRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.ResRet.f32 %1724, 2
  %1728 = extractvalue %dx.types.ResRet.f32 %1724, 3
  %1729 = and i32 %1718, 255
  %1730 = uitofp i32 %1729 to float
  %1731 = lshr i32 %1718, 8
  %1732 = and i32 %1731, 255
  %1733 = uitofp i32 %1732 to float
  %1734 = lshr i32 %1718, 16
  %1735 = and i32 %1734, 255
  %1736 = uitofp i32 %1735 to float
  %1737 = fmul fast float %1736, 0x3F70101000000000
  %1738 = fmul fast float %1725, %1730
  %1739 = fadd fast float %1738, %1733
  %1740 = fmul fast float %1739, 0x3F70101000000000
  %1741 = fadd fast float %1726, -5.000000e-01
  %1742 = fadd fast float %1728, -5.000000e-01
  %1743 = fmul fast float %1741, %1737
  %1744 = fmul fast float %1742, %1737
  %1745 = fadd fast float %1743, 5.000000e-01
  %1746 = fadd fast float %1744, 5.000000e-01
  %1747 = fmul fast float %1745, 2.000000e+00
  %1748 = fadd fast float %1747, -1.000000e+00
  %1749 = fmul fast float %1746, 2.000000e+00
  %1750 = fadd fast float %1749, -1.000000e+00
  %1751 = fadd fast float %1748, %1750
  %1752 = fmul fast float %1751, 5.000000e-01
  %1753 = fsub fast float %1748, %1750
  %1754 = fmul fast float %1753, 5.000000e-01
  %1755 = call float @dx.op.unary.f32(i32 6, float %1752)  ; FAbs(value)
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = call float @dx.op.unary.f32(i32 6, float %1754)  ; FAbs(value)
  %1758 = fsub fast float %1756, %1757
  %1759 = call float @dx.op.dot3.f32(i32 55, float %1752, float %1754, float %1758, float %1752, float %1754, float %1758)  ; Dot3(ax,ay,az,bx,by,bz)
  %1760 = call float @dx.op.unary.f32(i32 25, float %1759)  ; Rsqrt(value)
  %1761 = fmul fast float %1752, %1760
  %1762 = fmul fast float %1754, %1760
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = and i32 %1764, 67108864
  %1766 = icmp eq i32 %1765, 0
  br i1 %1766, label %1783, label %1767

; <label>:1767                                    ; preds = %1715
  %1768 = add i32 %64, 296
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 65535
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = and i32 %1774, 65535
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = lshr i32 %1770, 16
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = fsub fast float %1740, %1778
  %1780 = fmul fast float %1779, %1772
  %1781 = fadd fast float %1780, %1776
  %1782 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  br label %1783

; <label>:1783                                    ; preds = %1767, %1715
  %1784 = phi float [ %1782, %1767 ], [ %1740, %1715 ]
  %1785 = call float @dx.op.dot2.f32(i32 54, float %1761, float %1762, float %1319, float %1320)  ; Dot2(ax,ay,bx,by)
  %1786 = call float @dx.op.dot2.f32(i32 54, float %1761, float %1762, float %1321, float %1322)  ; Dot2(ax,ay,bx,by)
  br label %1787

; <label>:1787                                    ; preds = %1783, %1693
  %1788 = phi float [ %1784, %1783 ], [ 0x3FD6666660000000, %1693 ]
  %1789 = phi float [ %1785, %1783 ], [ 0.000000e+00, %1693 ]
  %1790 = phi float [ %1786, %1783 ], [ 0.000000e+00, %1693 ]
  %1791 = phi float [ %1727, %1783 ], [ 1.000000e+00, %1693 ]
  %1792 = add i32 %64, 176
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = lshr i32 %1794, 22
  %1796 = shl nuw nsw i32 %1795, 5
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = and i32 %1799, 64
  %1801 = icmp eq i32 %1800, 0
  br i1 %1801, label %1835, label %1802

; <label>:1802                                    ; preds = %1787
  %1803 = add i32 %64, 444
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = add i32 %1805, 0
  %1807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1806, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 131072
  %1811 = icmp eq i32 %1810, 0
  %1812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1807, %dx.types.Handle %122, float %1415, float %1416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1815 = extractvalue %dx.types.ResRet.f32 %1812, 2
  %1816 = fmul fast float %399, %1813
  %1817 = fmul fast float %400, %1814
  %1818 = fmul fast float %401, %1815
  br i1 %1811, label %1825, label %1819

; <label>:1819                                    ; preds = %1802
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1822 = fmul fast float %1821, %1816
  %1823 = fmul fast float %1821, %1817
  %1824 = fmul fast float %1821, %1818
  br label %1825

; <label>:1825                                    ; preds = %1819, %1802
  %1826 = phi float [ %1822, %1819 ], [ %1816, %1802 ]
  %1827 = phi float [ %1823, %1819 ], [ %1817, %1802 ]
  %1828 = phi float [ %1824, %1819 ], [ %1818, %1802 ]
  %1829 = fmul fast float %1826, %1797
  %1830 = select i1 %281, float %1829, float %1826
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1827, float %1828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = select i1 %281, float 0.000000e+00, float %1826
  %1833 = select i1 %281, float %1831, float %1827
  %1834 = select i1 %281, float 0.000000e+00, float %1828
  br label %1835

; <label>:1835                                    ; preds = %1825, %1787
  %1836 = phi float [ %1832, %1825 ], [ 0.000000e+00, %1787 ]
  %1837 = phi float [ %1833, %1825 ], [ 0.000000e+00, %1787 ]
  %1838 = phi float [ %1834, %1825 ], [ 0.000000e+00, %1787 ]
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 26624
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1866, label %1843

; <label>:1843                                    ; preds = %1835
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 16384
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1866, label %1848

; <label>:1848                                    ; preds = %1843
  %1849 = and i32 %1845, 1048576
  %1850 = icmp ne i32 %1849, 0
  %1851 = add i32 %64, 512
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = add i32 %1853, 0
  %1855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1855, %dx.types.Handle %123, float %1415, float %1416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1857 = extractvalue %dx.types.ResRet.f32 %1856, 0
  %1858 = add i32 %64, 112
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = lshr i32 %1860, 24
  %1862 = uitofp i32 %1861 to float
  %1863 = fmul fast float %1857, 0x3F70101020000000
  %1864 = select i1 %1850, float 0x3F70101020000000, float %1863
  %1865 = fmul fast float %1864, %1862
  br label %1866

; <label>:1866                                    ; preds = %1848, %1843, %1835
  %1867 = phi float [ %1865, %1848 ], [ 0.000000e+00, %1843 ], [ 0.000000e+00, %1835 ]
  %1868 = add i32 %64, 112
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = and i32 %1870, 255
  %1872 = uitofp i32 %1871 to float
  %1873 = lshr i32 %1870, 8
  %1874 = and i32 %1873, 255
  %1875 = uitofp i32 %1874 to float
  %1876 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1709, float %1710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1877 = fmul fast float %1875, %1876
  %1878 = fadd fast float %1877, %1872
  %1879 = fmul fast float %1878, 0x3F70101020000000
  %1880 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  br i1 %1307, label %1881, label %1889

; <label>:1881                                    ; preds = %1866
  %1882 = fsub fast float 1.000000e+00, %1488
  %1883 = fmul fast float %1882, %1294
  %1884 = fmul fast float %1882, %1295
  %1885 = fmul fast float %1882, %1296
  %1886 = fmul fast float %1882, %1297
  %1887 = fmul fast float %1882, %1298
  %1888 = fmul fast float %1882, %1299
  br label %1889

; <label>:1889                                    ; preds = %1881, %1866
  %1890 = phi float [ %1883, %1881 ], [ %1294, %1866 ]
  %1891 = phi float [ %1884, %1881 ], [ %1295, %1866 ]
  %1892 = phi float [ %1885, %1881 ], [ %1296, %1866 ]
  %1893 = phi float [ %1886, %1881 ], [ %1297, %1866 ]
  %1894 = phi float [ %1887, %1881 ], [ %1298, %1866 ]
  %1895 = phi float [ %1888, %1881 ], [ %1299, %1866 ]
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %1897, 3
  %1899 = icmp eq i32 %1898, 3
  br i1 %1899, label %1978, label %1900

; <label>:1900                                    ; preds = %1889
  %1901 = and i32 %1897, 16
  %1902 = icmp ne i32 %1901, 0
  %1903 = select i1 %1902, float %1488, float 0.000000e+00
  %1904 = icmp eq i32 %1898, 0
  br i1 %1904, label %1905, label %1933

; <label>:1905                                    ; preds = %1900
  %1906 = and i32 %1897, 64
  %1907 = icmp ne i32 %1906, 0
  %1908 = select i1 %1907, float %1488, float 0.000000e+00
  %1909 = fsub fast float %1708, %1890
  %1910 = fsub fast float %1709, %1891
  %1911 = fsub fast float %1710, %1892
  %1912 = fmul fast float %1903, %1909
  %1913 = fmul fast float %1903, %1910
  %1914 = fmul fast float %1903, %1911
  %1915 = fadd fast float %1912, %1890
  %1916 = fadd fast float %1913, %1891
  %1917 = fadd fast float %1914, %1892
  %1918 = fsub fast float %1694, %1300
  %1919 = fmul fast float %1903, %1918
  %1920 = fadd fast float %1919, %1300
  %1921 = fsub fast float %1836, %1893
  %1922 = fsub fast float %1837, %1894
  %1923 = fsub fast float %1838, %1895
  %1924 = fmul fast float %1908, %1921
  %1925 = fmul fast float %1908, %1922
  %1926 = fmul fast float %1908, %1923
  %1927 = fadd fast float %1924, %1893
  %1928 = fadd fast float %1925, %1894
  %1929 = fadd fast float %1926, %1895
  %1930 = fsub fast float %1880, %1305
  %1931 = fmul fast float %1903, %1930
  %1932 = fadd fast float %1931, %1305
  br label %1978

; <label>:1933                                    ; preds = %1900
  %1934 = icmp eq i32 %1898, 1
  br i1 %1934, label %1935, label %1948

; <label>:1935                                    ; preds = %1933
  %1936 = fadd fast float %1708, -1.000000e+00
  %1937 = fadd fast float %1709, -1.000000e+00
  %1938 = fadd fast float %1710, -1.000000e+00
  %1939 = fmul fast float %1903, %1936
  %1940 = fmul fast float %1903, %1937
  %1941 = fmul fast float %1903, %1938
  %1942 = fadd fast float %1939, 1.000000e+00
  %1943 = fadd fast float %1940, 1.000000e+00
  %1944 = fadd fast float %1941, 1.000000e+00
  %1945 = fmul fast float %1942, %1890
  %1946 = fmul fast float %1943, %1891
  %1947 = fmul fast float %1944, %1892
  br label %1978

; <label>:1948                                    ; preds = %1933
  %1949 = icmp eq i32 %1898, 2
  br i1 %1949, label %1950, label %1978

; <label>:1950                                    ; preds = %1948
  %1951 = call float @dx.op.unary.f32(i32 24, float %1708)  ; Sqrt(value)
  %1952 = call float @dx.op.unary.f32(i32 24, float %1709)  ; Sqrt(value)
  %1953 = call float @dx.op.unary.f32(i32 24, float %1710)  ; Sqrt(value)
  %1954 = fadd fast float %1951, -5.000000e-01
  %1955 = fadd fast float %1952, -5.000000e-01
  %1956 = fadd fast float %1953, -5.000000e-01
  %1957 = fmul fast float %1954, %1903
  %1958 = fmul fast float %1955, %1903
  %1959 = fmul fast float %1956, %1903
  %1960 = fadd fast float %1957, 5.000000e-01
  %1961 = fadd fast float %1958, 5.000000e-01
  %1962 = fadd fast float %1959, 5.000000e-01
  %1963 = fmul fast float %1960, 2.000000e+00
  %1964 = fsub fast float 1.000000e+00, %1963
  %1965 = fmul fast float %1964, %1890
  %1966 = fadd fast float %1965, %1963
  %1967 = fmul fast float %1966, %1890
  %1968 = fmul fast float %1961, 2.000000e+00
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = fmul fast float %1969, %1891
  %1971 = fadd fast float %1970, %1968
  %1972 = fmul fast float %1971, %1891
  %1973 = fmul fast float %1962, 2.000000e+00
  %1974 = fsub fast float 1.000000e+00, %1973
  %1975 = fmul fast float %1974, %1892
  %1976 = fadd fast float %1975, %1973
  %1977 = fmul fast float %1976, %1892
  br label %1978

; <label>:1978                                    ; preds = %1950, %1948, %1935, %1905, %1889
  %1979 = phi float [ %1890, %1889 ], [ %1967, %1950 ], [ %1890, %1948 ], [ %1945, %1935 ], [ %1915, %1905 ]
  %1980 = phi float [ %1891, %1889 ], [ %1972, %1950 ], [ %1891, %1948 ], [ %1946, %1935 ], [ %1916, %1905 ]
  %1981 = phi float [ %1892, %1889 ], [ %1977, %1950 ], [ %1892, %1948 ], [ %1947, %1935 ], [ %1917, %1905 ]
  %1982 = phi float [ %1893, %1889 ], [ %1893, %1950 ], [ %1893, %1948 ], [ %1893, %1935 ], [ %1927, %1905 ]
  %1983 = phi float [ %1894, %1889 ], [ %1894, %1950 ], [ %1894, %1948 ], [ %1894, %1935 ], [ %1928, %1905 ]
  %1984 = phi float [ %1895, %1889 ], [ %1895, %1950 ], [ %1895, %1948 ], [ %1895, %1935 ], [ %1929, %1905 ]
  %1985 = phi float [ %1300, %1889 ], [ %1300, %1950 ], [ %1300, %1948 ], [ %1300, %1935 ], [ %1920, %1905 ]
  %1986 = phi float [ %1305, %1889 ], [ %1305, %1950 ], [ %1305, %1948 ], [ %1305, %1935 ], [ %1932, %1905 ]
  %1987 = and i32 %1897, 12
  %1988 = icmp eq i32 %1987, 12
  br i1 %1988, label %2071, label %1989

; <label>:1989                                    ; preds = %1978
  %1990 = and i32 %1897, 2097184
  %1991 = icmp eq i32 %1990, 2097184
  %1992 = select i1 %1991, float %1488, float 0.000000e+00
  %1993 = and i32 %1897, 4194336
  %1994 = icmp eq i32 %1993, 4194336
  %1995 = select i1 %1994, float %1488, float 0.000000e+00
  %1996 = and i32 %1897, 8388640
  %1997 = icmp eq i32 %1996, 8388640
  %1998 = select i1 %1997, float %1488, float 0.000000e+00
  %1999 = and i32 %1897, 16384
  %2000 = icmp ne i32 %1999, 0
  %2001 = select i1 %2000, float %1488, float 0.000000e+00
  %2002 = icmp eq i32 %1987, 0
  br i1 %2002, label %2003, label %2019

; <label>:2003                                    ; preds = %1989
  %2004 = fsub fast float %1789, %1292
  %2005 = fsub fast float %1790, %1293
  %2006 = fmul fast float %1992, %2004
  %2007 = fmul fast float %1992, %2005
  %2008 = fadd fast float %2006, %1292
  %2009 = fadd fast float %2007, %1293
  %2010 = fsub fast float %1791, %1303
  %2011 = fmul fast float %1995, %2010
  %2012 = fadd fast float %2011, %1303
  %2013 = fsub fast float %1788, %1302
  %2014 = fmul fast float %1998, %2013
  %2015 = fadd fast float %2014, %1302
  %2016 = fsub fast float %1867, %1304
  %2017 = fmul fast float %2001, %2016
  %2018 = fadd fast float %2017, %1304
  br label %2071

; <label>:2019                                    ; preds = %1989
  %2020 = icmp eq i32 %1987, 4
  br i1 %2020, label %2021, label %2055

; <label>:2021                                    ; preds = %2019
  %2022 = fmul fast float %1992, %1789
  %2023 = fmul fast float %1992, %1790
  %2024 = fadd fast float %2022, %1292
  %2025 = fadd fast float %2023, %1293
  %2026 = call float @dx.op.binary.f32(i32 36, float %1303, float %1791)  ; FMin(a,b)
  %2027 = fsub fast float %2026, %1303
  %2028 = fmul fast float %2027, %1995
  %2029 = fadd fast float %2028, %1303
  %2030 = fadd fast float %1788, %1302
  %2031 = fmul fast float %2030, 0x3FF337FAE0000000
  %2032 = fmul fast float %1302, %1302
  %2033 = fmul fast float %1788, %1788
  %2034 = fadd fast float %2033, %2032
  %2035 = fmul fast float %2034, 0x3FE5152B00000000
  %2036 = fmul fast float %1302, 0xBFCC1F85E0000000
  %2037 = fmul fast float %2036, %1788
  %2038 = fadd fast float %2037, 0xBFE1363700000000
  %2039 = fadd fast float %2038, %2031
  %2040 = fsub fast float %2039, %2035
  %2041 = fmul fast float %2030, 0x3FBA6F0D00000000
  %2042 = fmul fast float %2034, 0x3FD0432880000000
  %2043 = fmul fast float %1302, 0xBFEF110800000000
  %2044 = fmul fast float %2043, %1788
  %2045 = fadd fast float %2044, 1.000000e+00
  %2046 = fsub fast float %2045, %2041
  %2047 = fadd fast float %2046, %2042
  %2048 = fdiv fast float %2040, %2047
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = fsub fast float %2049, %1302
  %2051 = fmul fast float %2050, %1998
  %2052 = fadd fast float %2051, %1302
  %2053 = fmul fast float %2001, %1867
  %2054 = fadd fast float %2053, %1304
  br label %2071

; <label>:2055                                    ; preds = %2019
  %2056 = icmp eq i32 %1987, 8
  br i1 %2056, label %2057, label %2071

; <label>:2057                                    ; preds = %2055
  %2058 = fmul fast float %1992, %1789
  %2059 = fmul fast float %1992, %1790
  %2060 = fadd fast float %2058, %1292
  %2061 = fadd fast float %2059, %1293
  %2062 = call float @dx.op.binary.f32(i32 36, float %1303, float %1791)  ; FMin(a,b)
  %2063 = fsub fast float %2062, %1303
  %2064 = fmul fast float %2063, %1995
  %2065 = fadd fast float %2064, %1303
  %2066 = fsub fast float %1788, %1302
  %2067 = fmul fast float %1998, %2066
  %2068 = fadd fast float %2067, %1302
  %2069 = fmul fast float %2001, %1867
  %2070 = fadd fast float %2069, %1304
  br label %2071

; <label>:2071                                    ; preds = %2057, %2055, %2021, %2003, %1978, %1487, %1306, %1291
  %2072 = phi float [ %1292, %1978 ], [ %1292, %1487 ], [ %1292, %1291 ], [ %2060, %2057 ], [ %1292, %2055 ], [ %2024, %2021 ], [ %2008, %2003 ], [ %1292, %1306 ]
  %2073 = phi float [ %1293, %1978 ], [ %1293, %1487 ], [ %1293, %1291 ], [ %2061, %2057 ], [ %1293, %2055 ], [ %2025, %2021 ], [ %2009, %2003 ], [ %1293, %1306 ]
  %2074 = phi float [ %1979, %1978 ], [ %1294, %1487 ], [ %1294, %1291 ], [ %1979, %2057 ], [ %1979, %2055 ], [ %1979, %2021 ], [ %1979, %2003 ], [ %1294, %1306 ]
  %2075 = phi float [ %1980, %1978 ], [ %1295, %1487 ], [ %1295, %1291 ], [ %1980, %2057 ], [ %1980, %2055 ], [ %1980, %2021 ], [ %1980, %2003 ], [ %1295, %1306 ]
  %2076 = phi float [ %1981, %1978 ], [ %1296, %1487 ], [ %1296, %1291 ], [ %1981, %2057 ], [ %1981, %2055 ], [ %1981, %2021 ], [ %1981, %2003 ], [ %1296, %1306 ]
  %2077 = phi float [ %1982, %1978 ], [ %1297, %1487 ], [ %1297, %1291 ], [ %1982, %2057 ], [ %1982, %2055 ], [ %1982, %2021 ], [ %1982, %2003 ], [ %1297, %1306 ]
  %2078 = phi float [ %1983, %1978 ], [ %1298, %1487 ], [ %1298, %1291 ], [ %1983, %2057 ], [ %1983, %2055 ], [ %1983, %2021 ], [ %1983, %2003 ], [ %1298, %1306 ]
  %2079 = phi float [ %1984, %1978 ], [ %1299, %1487 ], [ %1299, %1291 ], [ %1984, %2057 ], [ %1984, %2055 ], [ %1984, %2021 ], [ %1984, %2003 ], [ %1299, %1306 ]
  %2080 = phi float [ %1985, %1978 ], [ %1300, %1487 ], [ %1300, %1291 ], [ %1985, %2057 ], [ %1985, %2055 ], [ %1985, %2021 ], [ %1985, %2003 ], [ %1300, %1306 ]
  %2081 = phi float [ %1302, %1978 ], [ %1302, %1487 ], [ %1302, %1291 ], [ %2068, %2057 ], [ %1302, %2055 ], [ %2052, %2021 ], [ %2015, %2003 ], [ %1302, %1306 ]
  %2082 = phi float [ %1303, %1978 ], [ %1303, %1487 ], [ %1303, %1291 ], [ %2065, %2057 ], [ %1303, %2055 ], [ %2029, %2021 ], [ %2012, %2003 ], [ %1303, %1306 ]
  %2083 = phi float [ %1304, %1978 ], [ %1304, %1487 ], [ %1304, %1291 ], [ %2070, %2057 ], [ %1304, %2055 ], [ %2054, %2021 ], [ %2018, %2003 ], [ %1304, %1306 ]
  %2084 = phi float [ %1986, %1978 ], [ %1305, %1487 ], [ %1305, %1291 ], [ %1986, %2057 ], [ %1986, %2055 ], [ %1986, %2021 ], [ %1986, %2003 ], [ %1305, %1306 ]
  br i1 %663, label %2850, label %2085

; <label>:2085                                    ; preds = %2071
  %2086 = icmp ult i32 %719, 3
  %2087 = add i32 %64, 56
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %64, 60
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = or i32 %2092, %2089
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2850, label %2095

; <label>:2095                                    ; preds = %2085
  %2096 = and i32 %2089, 262144
  %2097 = icmp ne i32 %2096, 0
  %2098 = select i1 %2097, float %72, float 1.000000e+00
  %2099 = select i1 %2097, float %73, float 0.000000e+00
  %2100 = select i1 %2097, float %74, float 0.000000e+00
  %2101 = select i1 %2097, float %75, float 1.000000e+00
  %2102 = select i1 %2097, float %76, float %104
  %2103 = select i1 %2097, float %77, float %105
  %2104 = add i32 %64, 316
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = lshr i32 %2106, 16
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = fmul fast float %2108, 0x3F50624DE0000000
  %2110 = add i32 %64, 120
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = lshr i32 %2112, 16
  %2114 = and i32 %2113, 255
  %2115 = lshr i32 %2112, 24
  %2116 = add i32 %64, 324
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = and i32 %2118, 65535
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = lshr i32 %2118, 16
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = add i32 %64, 64
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = lshr i32 %2125, 22
  %2127 = shl nuw nsw i32 %2126, 5
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = shl i32 %2125, 4
  %2130 = and i32 %2129, 32752
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = lshr i32 %2125, 7
  %2133 = and i32 %2132, 32752
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2137 = fmul fast float %2136, 1.000000e+03
  %2138 = fmul fast float %2137, %547
  %2139 = call float @dx.op.unary.f32(i32 22, float %2138)  ; Frc(value)
  %2140 = fadd fast float %2139, %535
  %2141 = fmul fast float %2137, %549
  %2142 = call float @dx.op.unary.f32(i32 22, float %2141)  ; Frc(value)
  %2143 = fadd fast float %2142, %536
  %2144 = fmul fast float %2109, %2137
  %2145 = call float @dx.op.unary.f32(i32 22, float %2144)  ; Frc(value)
  %2146 = fmul fast float %2145, 0x401921FB60000000
  %2147 = fadd fast float %2146, %2128
  %2148 = call float @dx.op.unary.f32(i32 13, float %2147)  ; Sin(value)
  %2149 = call float @dx.op.unary.f32(i32 12, float %2147)  ; Cos(value)
  %2150 = fsub fast float -0.000000e+00, %2148
  %2151 = fadd fast float %2102, -5.000000e-01
  %2152 = fadd fast float %2103, -5.000000e-01
  %2153 = fmul fast float %2120, %2151
  %2154 = fmul fast float %2122, %2152
  %2155 = fadd fast float %2153, 5.000000e-01
  %2156 = fadd fast float %2154, 5.000000e-01
  %2157 = fmul fast float %2131, %2155
  %2158 = fmul fast float %2134, %2156
  %2159 = fmul fast float %2149, %2157
  %2160 = call float @dx.op.tertiary.f32(i32 46, float %2150, float %2158, float %2159)  ; FMad(a,b,c)
  %2161 = fmul fast float %2148, %2157
  %2162 = call float @dx.op.tertiary.f32(i32 46, float %2149, float %2158, float %2161)  ; FMad(a,b,c)
  %2163 = fadd fast float %2140, %2160
  %2164 = fadd fast float %2143, %2162
  %2165 = icmp ugt i32 %2114, 1
  %2166 = icmp ugt i32 %2112, 33554431
  %2167 = or i1 %2166, %2165
  br i1 %2167, label %2168, label %2193

; <label>:2168                                    ; preds = %2095
  %2169 = add i32 %64, 260
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = lshr i32 %2171, 16
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = fmul fast float %2136, %2173
  %2175 = call float @dx.op.unary.f32(i32 22, float %2174)  ; Frc(value)
  %2176 = mul nuw nsw i32 %2114, %2115
  %2177 = uitofp i32 %2176 to float
  %2178 = fmul fast float %2175, %2177
  %2179 = call float @dx.op.unary.f32(i32 27, float %2178)  ; Round_ni(value)
  %2180 = fptoui float %2179 to i32
  %2181 = urem i32 %2180, %2114
  %2182 = udiv i32 %2180, %2115
  %2183 = call float @dx.op.unary.f32(i32 22, float %2163)  ; Frc(value)
  %2184 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2185 = uitofp i32 %2181 to float
  %2186 = uitofp i32 %2182 to float
  %2187 = fadd fast float %2183, %2185
  %2188 = fadd fast float %2184, %2186
  %2189 = uitofp i32 %2114 to float
  %2190 = uitofp i32 %2115 to float
  %2191 = fdiv fast float %2187, %2189
  %2192 = fdiv fast float %2188, %2190
  br label %2193

; <label>:2193                                    ; preds = %2168, %2095
  %2194 = phi float [ %2191, %2168 ], [ %2163, %2095 ]
  %2195 = phi float [ %2192, %2168 ], [ %2164, %2095 ]
  %2196 = and i32 %2089, 256
  %2197 = icmp eq i32 %2196, 0
  br i1 %2197, label %2244, label %2198

; <label>:2198                                    ; preds = %2193
  %2199 = add i32 %64, 480
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = add i32 %2201, 0
  %2203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2203, %dx.types.Handle %123, float %2194, float %2195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  %2206 = add i32 %64, 132
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = shl i32 %2208, 4
  %2210 = and i32 %2209, 32752
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = lshr i32 %2208, 7
  %2213 = and i32 %2212, 32752
  %2214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2213)  ; LegacyF16ToF32(value)
  %2215 = fsub fast float 1.000000e+00, %715
  %2216 = call float @dx.op.binary.f32(i32 35, float %2215, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2217 = bitcast float %715 to i32
  %2218 = sitofp i32 %2217 to float
  %2219 = fadd fast float %2218, 0xC1CFBF8940000000
  %2220 = fmul fast float %2214, %2219
  %2221 = fadd fast float %2220, 0x41CFBF8940000000
  %2222 = fptosi float %2221 to i32
  %2223 = bitcast i32 %2222 to float
  %2224 = bitcast float %2216 to i32
  %2225 = sitofp i32 %2224 to float
  %2226 = fadd fast float %2225, 0xC1CFBF8940000000
  %2227 = fmul fast float %2226, %2214
  %2228 = fadd fast float %2227, 0x41CFBF8940000000
  %2229 = fptosi float %2228 to i32
  %2230 = bitcast i32 %2229 to float
  %2231 = fmul fast float %2223, %2211
  %2232 = fmul fast float %2230, %2211
  %2233 = fsub fast float %2216, %2231
  %2234 = fadd fast float %2232, %2216
  %2235 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2236 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2237 = fsub fast float %2205, %2235
  %2238 = fsub fast float %2236, %2235
  %2239 = bitcast float %2238 to i32
  %2240 = sub nsw i32 2129859010, %2239
  %2241 = bitcast i32 %2240 to float
  %2242 = fmul fast float %2241, %2237
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  br label %2244

; <label>:2244                                    ; preds = %2198, %2193
  %2245 = phi float [ %2243, %2198 ], [ %715, %2193 ]
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 128
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %2266, label %2250

; <label>:2250                                    ; preds = %2244
  %2251 = add i32 %64, 464
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = add i32 %2253, 0
  %2255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2255, %dx.types.Handle %123, float %2194, float %2195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = and i32 %2259, 524288
  %2261 = icmp ne i32 %2260, 0
  %2262 = fcmp fast ogt float %2257, 0x3FE0101020000000
  %2263 = select i1 %2262, float 1.000000e+00, float 0.000000e+00
  %2264 = select i1 %2261, float %2263, float %2257
  %2265 = fmul fast float %2264, %2245
  br label %2266

; <label>:2266                                    ; preds = %2250, %2244
  %2267 = phi float [ %2265, %2250 ], [ %2245, %2244 ]
  %2268 = fcmp fast ult float %2267, 0x3F70101020000000
  br i1 %2268, label %2850, label %2269

; <label>:2269                                    ; preds = %2266
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 16
  %2273 = icmp eq i32 %2272, 0
  br i1 %2273, label %2472, label %2274

; <label>:2274                                    ; preds = %2269
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = add i32 %64, 416
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = add i32 %2279, 0
  %2281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2281, %dx.types.Handle %122, float %2194, float %2195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.ResRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.ResRet.f32 %2282, 2
  %2286 = extractvalue %dx.types.ResRet.f32 %2282, 3
  %2287 = and i32 %2276, 255
  %2288 = uitofp i32 %2287 to float
  %2289 = lshr i32 %2276, 8
  %2290 = and i32 %2289, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2286, %2288
  %2293 = fadd fast float %2292, %2291
  %2294 = fmul fast float %2293, 0x3F70101000000000
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = and i32 %2296, 512
  %2298 = icmp eq i32 %2297, 0
  br i1 %2298, label %2307, label %2299

; <label>:2299                                    ; preds = %2274
  %2300 = add i32 %64, 500
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %2302, 0
  %2304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2304, %dx.types.Handle %123, float %2194, float %2195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2306 = extractvalue %dx.types.ResRet.f32 %2305, 0
  br label %2307

; <label>:2307                                    ; preds = %2299, %2274
  %2308 = phi float [ %2306, %2299 ], [ 1.000000e+00, %2274 ]
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 33554432
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2419, label %2313

; <label>:2313                                    ; preds = %2307
  %2314 = add i32 %64, 256
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 65535
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = lshr i32 %2316, 16
  %2320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2319)  ; LegacyF16ToF32(value)
  %2321 = add i32 %64, 260
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 65535
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = lshr i32 %2327, 24
  %2329 = uitofp i32 %2328 to float
  %2330 = fmul fast float %2329, 0x3F70101020000000
  %2331 = and i32 %2327, 255
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2332, 0x3F70101020000000
  %2334 = lshr i32 %2327, 8
  %2335 = and i32 %2334, 255
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2336, 0x3F70101020000000
  %2338 = lshr i32 %2327, 16
  %2339 = and i32 %2338, 255
  %2340 = uitofp i32 %2339 to float
  %2341 = fmul fast float %2340, 0x3F70101020000000
  %2342 = add i32 %64, 252
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = lshr i32 %2344, 24
  %2346 = uitofp i32 %2345 to float
  %2347 = fmul fast float %2346, 0x3F70101020000000
  %2348 = and i32 %2344, 255
  %2349 = uitofp i32 %2348 to float
  %2350 = fmul fast float %2349, 0x3F70101020000000
  %2351 = lshr i32 %2344, 8
  %2352 = and i32 %2351, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101020000000
  %2355 = lshr i32 %2344, 16
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2357, 0x3F70101020000000
  %2359 = bitcast float %2283 to i32
  %2360 = ashr i32 %2359, 1
  %2361 = sub nsw i32 1597463174, %2360
  %2362 = bitcast i32 %2361 to float
  %2363 = fmul fast float %2283, 5.000000e-01
  %2364 = fmul fast float %2362, %2362
  %2365 = fmul fast float %2364, %2363
  %2366 = fsub fast float 1.500000e+00, %2365
  %2367 = fmul fast float %2362, %2283
  %2368 = fmul fast float %2367, %2366
  %2369 = bitcast float %2284 to i32
  %2370 = ashr i32 %2369, 1
  %2371 = sub nsw i32 1597463174, %2370
  %2372 = bitcast i32 %2371 to float
  %2373 = fmul fast float %2284, 5.000000e-01
  %2374 = fmul fast float %2372, %2372
  %2375 = fmul fast float %2374, %2373
  %2376 = fsub fast float 1.500000e+00, %2375
  %2377 = fmul fast float %2372, %2284
  %2378 = fmul fast float %2377, %2376
  %2379 = bitcast float %2285 to i32
  %2380 = ashr i32 %2379, 1
  %2381 = sub nsw i32 1597463174, %2380
  %2382 = bitcast i32 %2381 to float
  %2383 = fmul fast float %2285, 5.000000e-01
  %2384 = fmul fast float %2382, %2382
  %2385 = fmul fast float %2384, %2383
  %2386 = fsub fast float 1.500000e+00, %2385
  %2387 = fmul fast float %2382, %2285
  %2388 = fmul fast float %2387, %2386
  %2389 = fsub fast float %2368, %2350
  %2390 = fsub fast float %2378, %2354
  %2391 = fsub fast float %2388, %2358
  %2392 = fmul fast float %2389, %2318
  %2393 = fmul fast float %2390, %2320
  %2394 = fmul fast float %2391, %2325
  %2395 = fadd fast float %2392, %2333
  %2396 = fadd fast float %2393, %2337
  %2397 = fadd fast float %2394, %2341
  %2398 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2399 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2400 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2401 = fmul fast float %2398, %2398
  %2402 = fmul fast float %2399, %2399
  %2403 = fmul fast float %2400, %2400
  %2404 = fsub fast float %2401, %2283
  %2405 = fsub fast float %2402, %2284
  %2406 = fsub fast float %2403, %2285
  %2407 = fmul fast float %2404, %2308
  %2408 = fmul fast float %2405, %2308
  %2409 = fmul fast float %2406, %2308
  %2410 = fadd fast float %2407, %2283
  %2411 = fadd fast float %2408, %2284
  %2412 = fadd fast float %2409, %2285
  %2413 = fadd fast float %2330, %2294
  %2414 = fsub fast float %2413, %2347
  %2415 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2416 = fsub fast float %2415, %2294
  %2417 = fmul fast float %2416, %2308
  %2418 = fadd fast float %2417, %2294
  br label %2472

; <label>:2419                                    ; preds = %2307
  %2420 = and i32 %2310, 134217728
  %2421 = icmp eq i32 %2420, 0
  br i1 %2421, label %2456, label %2422

; <label>:2422                                    ; preds = %2419
  %2423 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %2424 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %2425 = call float @dx.op.unary.f32(i32 24, float %525)  ; Sqrt(value)
  %2426 = fadd fast float %2423, -5.000000e-01
  %2427 = fadd fast float %2424, -5.000000e-01
  %2428 = fadd fast float %2425, -5.000000e-01
  %2429 = fmul fast float %2426, %2308
  %2430 = fmul fast float %2427, %2308
  %2431 = fmul fast float %2428, %2308
  %2432 = fadd fast float %2429, 5.000000e-01
  %2433 = fadd fast float %2430, 5.000000e-01
  %2434 = fadd fast float %2431, 5.000000e-01
  %2435 = call float @dx.op.unary.f32(i32 24, float %2283)  ; Sqrt(value)
  %2436 = call float @dx.op.unary.f32(i32 24, float %2284)  ; Sqrt(value)
  %2437 = call float @dx.op.unary.f32(i32 24, float %2285)  ; Sqrt(value)
  %2438 = fmul fast float %2432, 2.000000e+00
  %2439 = fsub fast float 1.000000e+00, %2438
  %2440 = fmul fast float %2439, %2435
  %2441 = fadd fast float %2440, %2438
  %2442 = fmul fast float %2441, %2435
  %2443 = fmul fast float %2433, 2.000000e+00
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = fmul fast float %2444, %2436
  %2446 = fadd fast float %2445, %2443
  %2447 = fmul fast float %2446, %2436
  %2448 = fmul fast float %2434, 2.000000e+00
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = fmul fast float %2449, %2437
  %2451 = fadd fast float %2450, %2448
  %2452 = fmul fast float %2451, %2437
  %2453 = fmul fast float %2442, %2442
  %2454 = fmul fast float %2447, %2447
  %2455 = fmul fast float %2452, %2452
  br label %2472

; <label>:2456                                    ; preds = %2419
  %2457 = fmul fast float %523, %523
  %2458 = fmul fast float %524, %524
  %2459 = fmul fast float %525, %525
  %2460 = fadd fast float %2457, -1.000000e+00
  %2461 = fadd fast float %2458, -1.000000e+00
  %2462 = fadd fast float %2459, -1.000000e+00
  %2463 = fmul fast float %2308, %2460
  %2464 = fmul fast float %2308, %2461
  %2465 = fmul fast float %2308, %2462
  %2466 = fadd fast float %2463, 1.000000e+00
  %2467 = fadd fast float %2464, 1.000000e+00
  %2468 = fadd fast float %2465, 1.000000e+00
  %2469 = fmul fast float %2466, %2283
  %2470 = fmul fast float %2467, %2284
  %2471 = fmul fast float %2468, %2285
  br label %2472

; <label>:2472                                    ; preds = %2456, %2422, %2313, %2269
  %2473 = phi float [ %2418, %2313 ], [ %2294, %2422 ], [ %2294, %2456 ], [ 0x3FA23C0BE0000000, %2269 ]
  %2474 = phi float [ %2410, %2313 ], [ %2453, %2422 ], [ %2469, %2456 ], [ 1.000000e+00, %2269 ]
  %2475 = phi float [ %2411, %2313 ], [ %2454, %2422 ], [ %2470, %2456 ], [ 1.000000e+00, %2269 ]
  %2476 = phi float [ %2412, %2313 ], [ %2455, %2422 ], [ %2471, %2456 ], [ 1.000000e+00, %2269 ]
  %2477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.i32 %2477, 1
  %2479 = and i32 %2478, 1
  %2480 = icmp ne i32 %2479, 0
  %2481 = add i32 %64, 356
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 32
  %2485 = icmp ne i32 %2484, 0
  %2486 = and i1 %2480, %2485
  %2487 = select i1 %2486, float 1.000000e+00, float %2474
  %2488 = select i1 %2486, float 0x3FD3333340000000, float %2475
  %2489 = select i1 %2486, float 0x3FD3333340000000, float %2476
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 32
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %2566, label %2494

; <label>:2494                                    ; preds = %2472
  %2495 = add i32 %64, 124
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = add i32 %64, 432
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = add i32 %2500, 0
  %2502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2502, %dx.types.Handle %122, float %2194, float %2195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.f32 %2503, 1
  %2506 = extractvalue %dx.types.ResRet.f32 %2503, 2
  %2507 = extractvalue %dx.types.ResRet.f32 %2503, 3
  %2508 = and i32 %2497, 255
  %2509 = uitofp i32 %2508 to float
  %2510 = lshr i32 %2497, 8
  %2511 = and i32 %2510, 255
  %2512 = uitofp i32 %2511 to float
  %2513 = lshr i32 %2497, 16
  %2514 = and i32 %2513, 255
  %2515 = uitofp i32 %2514 to float
  %2516 = fmul fast float %2515, 0x3F70101000000000
  %2517 = fmul fast float %2504, %2509
  %2518 = fadd fast float %2517, %2512
  %2519 = fmul fast float %2518, 0x3F70101000000000
  %2520 = fadd fast float %2505, -5.000000e-01
  %2521 = fadd fast float %2507, -5.000000e-01
  %2522 = fmul fast float %2520, %2516
  %2523 = fmul fast float %2521, %2516
  %2524 = fadd fast float %2522, 5.000000e-01
  %2525 = fadd fast float %2523, 5.000000e-01
  %2526 = fmul fast float %2524, 2.000000e+00
  %2527 = fadd fast float %2526, -1.000000e+00
  %2528 = fmul fast float %2525, 2.000000e+00
  %2529 = fadd fast float %2528, -1.000000e+00
  %2530 = fadd fast float %2527, %2529
  %2531 = fmul fast float %2530, 5.000000e-01
  %2532 = fsub fast float %2527, %2529
  %2533 = fmul fast float %2532, 5.000000e-01
  %2534 = call float @dx.op.unary.f32(i32 6, float %2531)  ; FAbs(value)
  %2535 = fsub fast float 1.000000e+00, %2534
  %2536 = call float @dx.op.unary.f32(i32 6, float %2533)  ; FAbs(value)
  %2537 = fsub fast float %2535, %2536
  %2538 = call float @dx.op.dot3.f32(i32 55, float %2531, float %2533, float %2537, float %2531, float %2533, float %2537)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = call float @dx.op.unary.f32(i32 25, float %2538)  ; Rsqrt(value)
  %2540 = fmul fast float %2531, %2539
  %2541 = fmul fast float %2533, %2539
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 67108864
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %2562, label %2546

; <label>:2546                                    ; preds = %2494
  %2547 = add i32 %64, 312
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 65535
  %2551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2550)  ; LegacyF16ToF32(value)
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 65535
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = lshr i32 %2549, 16
  %2557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2556)  ; LegacyF16ToF32(value)
  %2558 = fsub fast float %2519, %2557
  %2559 = fmul fast float %2558, %2551
  %2560 = fadd fast float %2559, %2555
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  br label %2562

; <label>:2562                                    ; preds = %2546, %2494
  %2563 = phi float [ %2561, %2546 ], [ %2519, %2494 ]
  %2564 = call float @dx.op.dot2.f32(i32 54, float %2540, float %2541, float %2098, float %2099)  ; Dot2(ax,ay,bx,by)
  %2565 = call float @dx.op.dot2.f32(i32 54, float %2540, float %2541, float %2100, float %2101)  ; Dot2(ax,ay,bx,by)
  br label %2566

; <label>:2566                                    ; preds = %2562, %2472
  %2567 = phi float [ %2563, %2562 ], [ 0x3FD6666660000000, %2472 ]
  %2568 = phi float [ %2564, %2562 ], [ 0.000000e+00, %2472 ]
  %2569 = phi float [ %2565, %2562 ], [ 0.000000e+00, %2472 ]
  %2570 = phi float [ %2506, %2562 ], [ 1.000000e+00, %2472 ]
  %2571 = add i32 %64, 192
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = lshr i32 %2573, 22
  %2575 = shl nuw nsw i32 %2574, 5
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 64
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2614, label %2581

; <label>:2581                                    ; preds = %2566
  %2582 = add i32 %64, 448
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = add i32 %2584, 0
  %2586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = and i32 %2588, 131072
  %2590 = icmp eq i32 %2589, 0
  %2591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2586, %dx.types.Handle %122, float %2194, float %2195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.ResRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.ResRet.f32 %2591, 2
  %2595 = fmul fast float %506, %2592
  %2596 = fmul fast float %507, %2593
  %2597 = fmul fast float %508, %2594
  br i1 %2590, label %2604, label %2598

; <label>:2598                                    ; preds = %2581
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2601 = fmul fast float %2600, %2595
  %2602 = fmul fast float %2600, %2596
  %2603 = fmul fast float %2600, %2597
  br label %2604

; <label>:2604                                    ; preds = %2598, %2581
  %2605 = phi float [ %2601, %2598 ], [ %2595, %2581 ]
  %2606 = phi float [ %2602, %2598 ], [ %2596, %2581 ]
  %2607 = phi float [ %2603, %2598 ], [ %2597, %2581 ]
  %2608 = fmul fast float %2605, %2576
  %2609 = select i1 %281, float %2608, float %2605
  %2610 = call float @dx.op.dot3.f32(i32 55, float %2609, float %2606, float %2607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2611 = select i1 %281, float 0.000000e+00, float %2605
  %2612 = select i1 %281, float %2610, float %2606
  %2613 = select i1 %281, float 0.000000e+00, float %2607
  br label %2614

; <label>:2614                                    ; preds = %2604, %2566
  %2615 = phi float [ %2611, %2604 ], [ 0.000000e+00, %2566 ]
  %2616 = phi float [ %2612, %2604 ], [ 0.000000e+00, %2566 ]
  %2617 = phi float [ %2613, %2604 ], [ 0.000000e+00, %2566 ]
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 26624
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2645, label %2622

; <label>:2622                                    ; preds = %2614
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 16384
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2645, label %2627

; <label>:2627                                    ; preds = %2622
  %2628 = and i32 %2624, 1048576
  %2629 = icmp ne i32 %2628, 0
  %2630 = add i32 %64, 516
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = add i32 %2632, 0
  %2634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2634, %dx.types.Handle %123, float %2194, float %2195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = add i32 %64, 128
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 24
  %2641 = uitofp i32 %2640 to float
  %2642 = fmul fast float %2636, 0x3F70101020000000
  %2643 = select i1 %2629, float 0x3F70101020000000, float %2642
  %2644 = fmul fast float %2643, %2641
  br label %2645

; <label>:2645                                    ; preds = %2627, %2622, %2614
  %2646 = phi float [ %2644, %2627 ], [ 0.000000e+00, %2622 ], [ 0.000000e+00, %2614 ]
  %2647 = add i32 %64, 128
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = lshr i32 %2649, 8
  %2653 = and i32 %2652, 255
  %2654 = uitofp i32 %2653 to float
  %2655 = call float @dx.op.dot3.f32(i32 55, float %2487, float %2488, float %2489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2656 = fmul fast float %2654, %2655
  %2657 = fadd fast float %2656, %2651
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = call float @dx.op.unary.f32(i32 7, float %2658)  ; Saturate(value)
  br i1 %2086, label %2660, label %2668

; <label>:2660                                    ; preds = %2645
  %2661 = fsub fast float 1.000000e+00, %2267
  %2662 = fmul fast float %2661, %2074
  %2663 = fmul fast float %2661, %2075
  %2664 = fmul fast float %2661, %2076
  %2665 = fmul fast float %2661, %2077
  %2666 = fmul fast float %2661, %2078
  %2667 = fmul fast float %2661, %2079
  br label %2668

; <label>:2668                                    ; preds = %2660, %2645
  %2669 = phi float [ %2662, %2660 ], [ %2074, %2645 ]
  %2670 = phi float [ %2663, %2660 ], [ %2075, %2645 ]
  %2671 = phi float [ %2664, %2660 ], [ %2076, %2645 ]
  %2672 = phi float [ %2665, %2660 ], [ %2077, %2645 ]
  %2673 = phi float [ %2666, %2660 ], [ %2078, %2645 ]
  %2674 = phi float [ %2667, %2660 ], [ %2079, %2645 ]
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, 3
  %2678 = icmp eq i32 %2677, 3
  br i1 %2678, label %2757, label %2679

; <label>:2679                                    ; preds = %2668
  %2680 = and i32 %2676, 16
  %2681 = icmp ne i32 %2680, 0
  %2682 = select i1 %2681, float %2267, float 0.000000e+00
  %2683 = icmp eq i32 %2677, 0
  br i1 %2683, label %2684, label %2712

; <label>:2684                                    ; preds = %2679
  %2685 = and i32 %2676, 64
  %2686 = icmp ne i32 %2685, 0
  %2687 = select i1 %2686, float %2267, float 0.000000e+00
  %2688 = fsub fast float %2487, %2669
  %2689 = fsub fast float %2488, %2670
  %2690 = fsub fast float %2489, %2671
  %2691 = fmul fast float %2682, %2688
  %2692 = fmul fast float %2682, %2689
  %2693 = fmul fast float %2682, %2690
  %2694 = fadd fast float %2691, %2669
  %2695 = fadd fast float %2692, %2670
  %2696 = fadd fast float %2693, %2671
  %2697 = fsub fast float %2473, %2080
  %2698 = fmul fast float %2682, %2697
  %2699 = fadd fast float %2698, %2080
  %2700 = fsub fast float %2615, %2672
  %2701 = fsub fast float %2616, %2673
  %2702 = fsub fast float %2617, %2674
  %2703 = fmul fast float %2687, %2700
  %2704 = fmul fast float %2687, %2701
  %2705 = fmul fast float %2687, %2702
  %2706 = fadd fast float %2703, %2672
  %2707 = fadd fast float %2704, %2673
  %2708 = fadd fast float %2705, %2674
  %2709 = fsub fast float %2659, %2084
  %2710 = fmul fast float %2682, %2709
  %2711 = fadd fast float %2710, %2084
  br label %2757

; <label>:2712                                    ; preds = %2679
  %2713 = icmp eq i32 %2677, 1
  br i1 %2713, label %2714, label %2727

; <label>:2714                                    ; preds = %2712
  %2715 = fadd fast float %2487, -1.000000e+00
  %2716 = fadd fast float %2488, -1.000000e+00
  %2717 = fadd fast float %2489, -1.000000e+00
  %2718 = fmul fast float %2682, %2715
  %2719 = fmul fast float %2682, %2716
  %2720 = fmul fast float %2682, %2717
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fadd fast float %2719, 1.000000e+00
  %2723 = fadd fast float %2720, 1.000000e+00
  %2724 = fmul fast float %2721, %2669
  %2725 = fmul fast float %2722, %2670
  %2726 = fmul fast float %2723, %2671
  br label %2757

; <label>:2727                                    ; preds = %2712
  %2728 = icmp eq i32 %2677, 2
  br i1 %2728, label %2729, label %2757

; <label>:2729                                    ; preds = %2727
  %2730 = call float @dx.op.unary.f32(i32 24, float %2487)  ; Sqrt(value)
  %2731 = call float @dx.op.unary.f32(i32 24, float %2488)  ; Sqrt(value)
  %2732 = call float @dx.op.unary.f32(i32 24, float %2489)  ; Sqrt(value)
  %2733 = fadd fast float %2730, -5.000000e-01
  %2734 = fadd fast float %2731, -5.000000e-01
  %2735 = fadd fast float %2732, -5.000000e-01
  %2736 = fmul fast float %2733, %2682
  %2737 = fmul fast float %2734, %2682
  %2738 = fmul fast float %2735, %2682
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fadd fast float %2737, 5.000000e-01
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fmul fast float %2739, 2.000000e+00
  %2743 = fsub fast float 1.000000e+00, %2742
  %2744 = fmul fast float %2743, %2669
  %2745 = fadd fast float %2744, %2742
  %2746 = fmul fast float %2745, %2669
  %2747 = fmul fast float %2740, 2.000000e+00
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2748, %2670
  %2750 = fadd fast float %2749, %2747
  %2751 = fmul fast float %2750, %2670
  %2752 = fmul fast float %2741, 2.000000e+00
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2753, %2671
  %2755 = fadd fast float %2754, %2752
  %2756 = fmul fast float %2755, %2671
  br label %2757

; <label>:2757                                    ; preds = %2729, %2727, %2714, %2684, %2668
  %2758 = phi float [ %2669, %2668 ], [ %2746, %2729 ], [ %2669, %2727 ], [ %2724, %2714 ], [ %2694, %2684 ]
  %2759 = phi float [ %2670, %2668 ], [ %2751, %2729 ], [ %2670, %2727 ], [ %2725, %2714 ], [ %2695, %2684 ]
  %2760 = phi float [ %2671, %2668 ], [ %2756, %2729 ], [ %2671, %2727 ], [ %2726, %2714 ], [ %2696, %2684 ]
  %2761 = phi float [ %2672, %2668 ], [ %2672, %2729 ], [ %2672, %2727 ], [ %2672, %2714 ], [ %2706, %2684 ]
  %2762 = phi float [ %2673, %2668 ], [ %2673, %2729 ], [ %2673, %2727 ], [ %2673, %2714 ], [ %2707, %2684 ]
  %2763 = phi float [ %2674, %2668 ], [ %2674, %2729 ], [ %2674, %2727 ], [ %2674, %2714 ], [ %2708, %2684 ]
  %2764 = phi float [ %2080, %2668 ], [ %2080, %2729 ], [ %2080, %2727 ], [ %2080, %2714 ], [ %2699, %2684 ]
  %2765 = phi float [ %2084, %2668 ], [ %2084, %2729 ], [ %2084, %2727 ], [ %2084, %2714 ], [ %2711, %2684 ]
  %2766 = and i32 %2676, 12
  %2767 = icmp eq i32 %2766, 12
  br i1 %2767, label %2850, label %2768

; <label>:2768                                    ; preds = %2757
  %2769 = and i32 %2676, 2097184
  %2770 = icmp eq i32 %2769, 2097184
  %2771 = select i1 %2770, float %2267, float 0.000000e+00
  %2772 = and i32 %2676, 4194336
  %2773 = icmp eq i32 %2772, 4194336
  %2774 = select i1 %2773, float %2267, float 0.000000e+00
  %2775 = and i32 %2676, 8388640
  %2776 = icmp eq i32 %2775, 8388640
  %2777 = select i1 %2776, float %2267, float 0.000000e+00
  %2778 = and i32 %2676, 16384
  %2779 = icmp ne i32 %2778, 0
  %2780 = select i1 %2779, float %2267, float 0.000000e+00
  %2781 = icmp eq i32 %2766, 0
  br i1 %2781, label %2782, label %2798

; <label>:2782                                    ; preds = %2768
  %2783 = fsub fast float %2568, %2072
  %2784 = fsub fast float %2569, %2073
  %2785 = fmul fast float %2771, %2783
  %2786 = fmul fast float %2771, %2784
  %2787 = fadd fast float %2785, %2072
  %2788 = fadd fast float %2786, %2073
  %2789 = fsub fast float %2570, %2082
  %2790 = fmul fast float %2774, %2789
  %2791 = fadd fast float %2790, %2082
  %2792 = fsub fast float %2567, %2081
  %2793 = fmul fast float %2777, %2792
  %2794 = fadd fast float %2793, %2081
  %2795 = fsub fast float %2646, %2083
  %2796 = fmul fast float %2780, %2795
  %2797 = fadd fast float %2796, %2083
  br label %2850

; <label>:2798                                    ; preds = %2768
  %2799 = icmp eq i32 %2766, 4
  br i1 %2799, label %2800, label %2834

; <label>:2800                                    ; preds = %2798
  %2801 = fmul fast float %2771, %2568
  %2802 = fmul fast float %2771, %2569
  %2803 = fadd fast float %2801, %2072
  %2804 = fadd fast float %2802, %2073
  %2805 = call float @dx.op.binary.f32(i32 36, float %2082, float %2570)  ; FMin(a,b)
  %2806 = fsub fast float %2805, %2082
  %2807 = fmul fast float %2806, %2774
  %2808 = fadd fast float %2807, %2082
  %2809 = fadd fast float %2567, %2081
  %2810 = fmul fast float %2809, 0x3FF337FAE0000000
  %2811 = fmul fast float %2081, %2081
  %2812 = fmul fast float %2567, %2567
  %2813 = fadd fast float %2812, %2811
  %2814 = fmul fast float %2813, 0x3FE5152B00000000
  %2815 = fmul fast float %2081, 0xBFCC1F85E0000000
  %2816 = fmul fast float %2815, %2567
  %2817 = fadd fast float %2816, 0xBFE1363700000000
  %2818 = fadd fast float %2817, %2810
  %2819 = fsub fast float %2818, %2814
  %2820 = fmul fast float %2809, 0x3FBA6F0D00000000
  %2821 = fmul fast float %2813, 0x3FD0432880000000
  %2822 = fmul fast float %2081, 0xBFEF110800000000
  %2823 = fmul fast float %2822, %2567
  %2824 = fadd fast float %2823, 1.000000e+00
  %2825 = fsub fast float %2824, %2820
  %2826 = fadd fast float %2825, %2821
  %2827 = fdiv fast float %2819, %2826
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = fsub fast float %2828, %2081
  %2830 = fmul fast float %2829, %2777
  %2831 = fadd fast float %2830, %2081
  %2832 = fmul fast float %2780, %2646
  %2833 = fadd fast float %2832, %2083
  br label %2850

; <label>:2834                                    ; preds = %2798
  %2835 = icmp eq i32 %2766, 8
  br i1 %2835, label %2836, label %2850

; <label>:2836                                    ; preds = %2834
  %2837 = fmul fast float %2771, %2568
  %2838 = fmul fast float %2771, %2569
  %2839 = fadd fast float %2837, %2072
  %2840 = fadd fast float %2838, %2073
  %2841 = call float @dx.op.binary.f32(i32 36, float %2082, float %2570)  ; FMin(a,b)
  %2842 = fsub fast float %2841, %2082
  %2843 = fmul fast float %2842, %2774
  %2844 = fadd fast float %2843, %2082
  %2845 = fsub fast float %2567, %2081
  %2846 = fmul fast float %2777, %2845
  %2847 = fadd fast float %2846, %2081
  %2848 = fmul fast float %2780, %2646
  %2849 = fadd fast float %2848, %2083
  br label %2850

; <label>:2850                                    ; preds = %2836, %2834, %2800, %2782, %2757, %2266, %2085, %2071
  %2851 = phi float [ %2072, %2757 ], [ %2072, %2266 ], [ %2072, %2071 ], [ %2839, %2836 ], [ %2072, %2834 ], [ %2803, %2800 ], [ %2787, %2782 ], [ %2072, %2085 ]
  %2852 = phi float [ %2073, %2757 ], [ %2073, %2266 ], [ %2073, %2071 ], [ %2840, %2836 ], [ %2073, %2834 ], [ %2804, %2800 ], [ %2788, %2782 ], [ %2073, %2085 ]
  %2853 = phi float [ %2758, %2757 ], [ %2074, %2266 ], [ %2074, %2071 ], [ %2758, %2836 ], [ %2758, %2834 ], [ %2758, %2800 ], [ %2758, %2782 ], [ %2074, %2085 ]
  %2854 = phi float [ %2759, %2757 ], [ %2075, %2266 ], [ %2075, %2071 ], [ %2759, %2836 ], [ %2759, %2834 ], [ %2759, %2800 ], [ %2759, %2782 ], [ %2075, %2085 ]
  %2855 = phi float [ %2760, %2757 ], [ %2076, %2266 ], [ %2076, %2071 ], [ %2760, %2836 ], [ %2760, %2834 ], [ %2760, %2800 ], [ %2760, %2782 ], [ %2076, %2085 ]
  %2856 = phi float [ %2761, %2757 ], [ %2077, %2266 ], [ %2077, %2071 ], [ %2761, %2836 ], [ %2761, %2834 ], [ %2761, %2800 ], [ %2761, %2782 ], [ %2077, %2085 ]
  %2857 = phi float [ %2762, %2757 ], [ %2078, %2266 ], [ %2078, %2071 ], [ %2762, %2836 ], [ %2762, %2834 ], [ %2762, %2800 ], [ %2762, %2782 ], [ %2078, %2085 ]
  %2858 = phi float [ %2763, %2757 ], [ %2079, %2266 ], [ %2079, %2071 ], [ %2763, %2836 ], [ %2763, %2834 ], [ %2763, %2800 ], [ %2763, %2782 ], [ %2079, %2085 ]
  %2859 = phi float [ %2764, %2757 ], [ %2080, %2266 ], [ %2080, %2071 ], [ %2764, %2836 ], [ %2764, %2834 ], [ %2764, %2800 ], [ %2764, %2782 ], [ %2080, %2085 ]
  %2860 = phi float [ %2081, %2757 ], [ %2081, %2266 ], [ %2081, %2071 ], [ %2847, %2836 ], [ %2081, %2834 ], [ %2831, %2800 ], [ %2794, %2782 ], [ %2081, %2085 ]
  %2861 = phi float [ %2082, %2757 ], [ %2082, %2266 ], [ %2082, %2071 ], [ %2844, %2836 ], [ %2082, %2834 ], [ %2808, %2800 ], [ %2791, %2782 ], [ %2082, %2085 ]
  %2862 = phi float [ %2083, %2757 ], [ %2083, %2266 ], [ %2083, %2071 ], [ %2849, %2836 ], [ %2083, %2834 ], [ %2833, %2800 ], [ %2797, %2782 ], [ %2083, %2085 ]
  %2863 = phi float [ %2765, %2757 ], [ %2084, %2266 ], [ %2084, %2071 ], [ %2765, %2836 ], [ %2765, %2834 ], [ %2765, %2800 ], [ %2765, %2782 ], [ %2084, %2085 ]
  br i1 %665, label %3629, label %2864

; <label>:2864                                    ; preds = %2850
  %2865 = icmp ult i32 %719, 4
  %2866 = add i32 %64, 72
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = add i32 %64, 76
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = or i32 %2871, %2868
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %3629, label %2874

; <label>:2874                                    ; preds = %2864
  %2875 = and i32 %2868, 262144
  %2876 = icmp ne i32 %2875, 0
  %2877 = select i1 %2876, float %72, float 1.000000e+00
  %2878 = select i1 %2876, float %73, float 0.000000e+00
  %2879 = select i1 %2876, float %74, float 0.000000e+00
  %2880 = select i1 %2876, float %75, float 1.000000e+00
  %2881 = select i1 %2876, float %76, float %104
  %2882 = select i1 %2876, float %77, float %105
  %2883 = add i32 %64, 332
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = lshr i32 %2885, 16
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = fmul fast float %2887, 0x3F50624DE0000000
  %2889 = add i32 %64, 136
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = lshr i32 %2891, 16
  %2893 = and i32 %2892, 255
  %2894 = lshr i32 %2891, 24
  %2895 = add i32 %64, 340
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 65535
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = lshr i32 %2897, 16
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = add i32 %64, 80
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = lshr i32 %2904, 22
  %2906 = shl nuw nsw i32 %2905, 5
  %2907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2906)  ; LegacyF16ToF32(value)
  %2908 = shl i32 %2904, 4
  %2909 = and i32 %2908, 32752
  %2910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2909)  ; LegacyF16ToF32(value)
  %2911 = lshr i32 %2904, 7
  %2912 = and i32 %2911, 32752
  %2913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2912)  ; LegacyF16ToF32(value)
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 3
  %2916 = fmul fast float %2915, 1.000000e+03
  %2917 = fmul fast float %2916, %654
  %2918 = call float @dx.op.unary.f32(i32 22, float %2917)  ; Frc(value)
  %2919 = fadd fast float %2918, %642
  %2920 = fmul fast float %2916, %656
  %2921 = call float @dx.op.unary.f32(i32 22, float %2920)  ; Frc(value)
  %2922 = fadd fast float %2921, %643
  %2923 = fmul fast float %2888, %2916
  %2924 = call float @dx.op.unary.f32(i32 22, float %2923)  ; Frc(value)
  %2925 = fmul fast float %2924, 0x401921FB60000000
  %2926 = fadd fast float %2925, %2907
  %2927 = call float @dx.op.unary.f32(i32 13, float %2926)  ; Sin(value)
  %2928 = call float @dx.op.unary.f32(i32 12, float %2926)  ; Cos(value)
  %2929 = fsub fast float -0.000000e+00, %2927
  %2930 = fadd fast float %2881, -5.000000e-01
  %2931 = fadd fast float %2882, -5.000000e-01
  %2932 = fmul fast float %2899, %2930
  %2933 = fmul fast float %2901, %2931
  %2934 = fadd fast float %2932, 5.000000e-01
  %2935 = fadd fast float %2933, 5.000000e-01
  %2936 = fmul fast float %2910, %2934
  %2937 = fmul fast float %2913, %2935
  %2938 = fmul fast float %2928, %2936
  %2939 = call float @dx.op.tertiary.f32(i32 46, float %2929, float %2937, float %2938)  ; FMad(a,b,c)
  %2940 = fmul fast float %2927, %2936
  %2941 = call float @dx.op.tertiary.f32(i32 46, float %2928, float %2937, float %2940)  ; FMad(a,b,c)
  %2942 = fadd fast float %2919, %2939
  %2943 = fadd fast float %2922, %2941
  %2944 = icmp ugt i32 %2893, 1
  %2945 = icmp ugt i32 %2891, 33554431
  %2946 = or i1 %2945, %2944
  br i1 %2946, label %2947, label %2972

; <label>:2947                                    ; preds = %2874
  %2948 = add i32 %64, 276
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 16
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = fmul fast float %2915, %2952
  %2954 = call float @dx.op.unary.f32(i32 22, float %2953)  ; Frc(value)
  %2955 = mul nuw nsw i32 %2893, %2894
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2954, %2956
  %2958 = call float @dx.op.unary.f32(i32 27, float %2957)  ; Round_ni(value)
  %2959 = fptoui float %2958 to i32
  %2960 = urem i32 %2959, %2893
  %2961 = udiv i32 %2959, %2894
  %2962 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2963 = call float @dx.op.unary.f32(i32 22, float %2943)  ; Frc(value)
  %2964 = uitofp i32 %2960 to float
  %2965 = uitofp i32 %2961 to float
  %2966 = fadd fast float %2962, %2964
  %2967 = fadd fast float %2963, %2965
  %2968 = uitofp i32 %2893 to float
  %2969 = uitofp i32 %2894 to float
  %2970 = fdiv fast float %2966, %2968
  %2971 = fdiv fast float %2967, %2969
  br label %2972

; <label>:2972                                    ; preds = %2947, %2874
  %2973 = phi float [ %2970, %2947 ], [ %2942, %2874 ]
  %2974 = phi float [ %2971, %2947 ], [ %2943, %2874 ]
  %2975 = and i32 %2868, 256
  %2976 = icmp eq i32 %2975, 0
  br i1 %2976, label %3023, label %2977

; <label>:2977                                    ; preds = %2972
  %2978 = add i32 %64, 484
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = add i32 %2980, 0
  %2982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2981, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2983 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2982, %dx.types.Handle %123, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  %2985 = add i32 %64, 148
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = shl i32 %2987, 4
  %2989 = and i32 %2988, 32752
  %2990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2989)  ; LegacyF16ToF32(value)
  %2991 = lshr i32 %2987, 7
  %2992 = and i32 %2991, 32752
  %2993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2992)  ; LegacyF16ToF32(value)
  %2994 = fsub fast float 1.000000e+00, %714
  %2995 = call float @dx.op.binary.f32(i32 35, float %2994, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2996 = bitcast float %714 to i32
  %2997 = sitofp i32 %2996 to float
  %2998 = fadd fast float %2997, 0xC1CFBF8940000000
  %2999 = fmul fast float %2993, %2998
  %3000 = fadd fast float %2999, 0x41CFBF8940000000
  %3001 = fptosi float %3000 to i32
  %3002 = bitcast i32 %3001 to float
  %3003 = bitcast float %2995 to i32
  %3004 = sitofp i32 %3003 to float
  %3005 = fadd fast float %3004, 0xC1CFBF8940000000
  %3006 = fmul fast float %3005, %2993
  %3007 = fadd fast float %3006, 0x41CFBF8940000000
  %3008 = fptosi float %3007 to i32
  %3009 = bitcast i32 %3008 to float
  %3010 = fmul fast float %3002, %2990
  %3011 = fmul fast float %3009, %2990
  %3012 = fsub fast float %2995, %3010
  %3013 = fadd fast float %3011, %2995
  %3014 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  %3015 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3016 = fsub fast float %2984, %3014
  %3017 = fsub fast float %3015, %3014
  %3018 = bitcast float %3017 to i32
  %3019 = sub nsw i32 2129859010, %3018
  %3020 = bitcast i32 %3019 to float
  %3021 = fmul fast float %3020, %3016
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  br label %3023

; <label>:3023                                    ; preds = %2977, %2972
  %3024 = phi float [ %3022, %2977 ], [ %714, %2972 ]
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 128
  %3028 = icmp eq i32 %3027, 0
  br i1 %3028, label %3045, label %3029

; <label>:3029                                    ; preds = %3023
  %3030 = add i32 %64, 468
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = add i32 %3032, 0
  %3034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3034, %dx.types.Handle %123, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3036 = extractvalue %dx.types.ResRet.f32 %3035, 0
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 524288
  %3040 = icmp ne i32 %3039, 0
  %3041 = fcmp fast ogt float %3036, 0x3FE0101020000000
  %3042 = select i1 %3041, float 1.000000e+00, float 0.000000e+00
  %3043 = select i1 %3040, float %3042, float %3036
  %3044 = fmul fast float %3043, %3024
  br label %3045

; <label>:3045                                    ; preds = %3029, %3023
  %3046 = phi float [ %3044, %3029 ], [ %3024, %3023 ]
  %3047 = fcmp fast ult float %3046, 0x3F70101020000000
  br i1 %3047, label %3629, label %3048

; <label>:3048                                    ; preds = %3045
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 16
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3251, label %3053

; <label>:3053                                    ; preds = %3048
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %64, 420
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3060, %dx.types.Handle %122, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = extractvalue %dx.types.ResRet.f32 %3061, 3
  %3066 = and i32 %3055, 255
  %3067 = uitofp i32 %3066 to float
  %3068 = lshr i32 %3055, 8
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = fmul fast float %3065, %3067
  %3072 = fadd fast float %3071, %3070
  %3073 = fmul fast float %3072, 0x3F70101000000000
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 512
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3086, label %3078

; <label>:3078                                    ; preds = %3053
  %3079 = add i32 %64, 504
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = add i32 %3081, 0
  %3083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3083, %dx.types.Handle %123, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  br label %3086

; <label>:3086                                    ; preds = %3078, %3053
  %3087 = phi float [ %3085, %3078 ], [ 1.000000e+00, %3053 ]
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 33554432
  %3091 = icmp eq i32 %3090, 0
  br i1 %3091, label %3198, label %3092

; <label>:3092                                    ; preds = %3086
  %3093 = add i32 %64, 272
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = and i32 %3095, 65535
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = lshr i32 %3095, 16
  %3099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3098)  ; LegacyF16ToF32(value)
  %3100 = add i32 %64, 276
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 65535
  %3104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3103)  ; LegacyF16ToF32(value)
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = lshr i32 %3106, 24
  %3108 = uitofp i32 %3107 to float
  %3109 = fmul fast float %3108, 0x3F70101020000000
  %3110 = and i32 %3106, 255
  %3111 = uitofp i32 %3110 to float
  %3112 = fmul fast float %3111, 0x3F70101020000000
  %3113 = lshr i32 %3106, 8
  %3114 = and i32 %3113, 255
  %3115 = uitofp i32 %3114 to float
  %3116 = fmul fast float %3115, 0x3F70101020000000
  %3117 = lshr i32 %3106, 16
  %3118 = and i32 %3117, 255
  %3119 = uitofp i32 %3118 to float
  %3120 = fmul fast float %3119, 0x3F70101020000000
  %3121 = add i32 %64, 268
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = lshr i32 %3123, 24
  %3125 = uitofp i32 %3124 to float
  %3126 = fmul fast float %3125, 0x3F70101020000000
  %3127 = and i32 %3123, 255
  %3128 = uitofp i32 %3127 to float
  %3129 = fmul fast float %3128, 0x3F70101020000000
  %3130 = lshr i32 %3123, 8
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = fmul fast float %3132, 0x3F70101020000000
  %3134 = lshr i32 %3123, 16
  %3135 = and i32 %3134, 255
  %3136 = uitofp i32 %3135 to float
  %3137 = fmul fast float %3136, 0x3F70101020000000
  %3138 = bitcast float %3062 to i32
  %3139 = ashr i32 %3138, 1
  %3140 = sub nsw i32 1597463174, %3139
  %3141 = bitcast i32 %3140 to float
  %3142 = fmul fast float %3062, 5.000000e-01
  %3143 = fmul fast float %3141, %3141
  %3144 = fmul fast float %3143, %3142
  %3145 = fsub fast float 1.500000e+00, %3144
  %3146 = fmul fast float %3141, %3062
  %3147 = fmul fast float %3146, %3145
  %3148 = bitcast float %3063 to i32
  %3149 = ashr i32 %3148, 1
  %3150 = sub nsw i32 1597463174, %3149
  %3151 = bitcast i32 %3150 to float
  %3152 = fmul fast float %3063, 5.000000e-01
  %3153 = fmul fast float %3151, %3151
  %3154 = fmul fast float %3153, %3152
  %3155 = fsub fast float 1.500000e+00, %3154
  %3156 = fmul fast float %3151, %3063
  %3157 = fmul fast float %3156, %3155
  %3158 = bitcast float %3064 to i32
  %3159 = ashr i32 %3158, 1
  %3160 = sub nsw i32 1597463174, %3159
  %3161 = bitcast i32 %3160 to float
  %3162 = fmul fast float %3064, 5.000000e-01
  %3163 = fmul fast float %3161, %3161
  %3164 = fmul fast float %3163, %3162
  %3165 = fsub fast float 1.500000e+00, %3164
  %3166 = fmul fast float %3161, %3064
  %3167 = fmul fast float %3166, %3165
  %3168 = fsub fast float %3147, %3129
  %3169 = fsub fast float %3157, %3133
  %3170 = fsub fast float %3167, %3137
  %3171 = fmul fast float %3168, %3097
  %3172 = fmul fast float %3169, %3099
  %3173 = fmul fast float %3170, %3104
  %3174 = fadd fast float %3171, %3112
  %3175 = fadd fast float %3172, %3116
  %3176 = fadd fast float %3173, %3120
  %3177 = call float @dx.op.unary.f32(i32 7, float %3174)  ; Saturate(value)
  %3178 = call float @dx.op.unary.f32(i32 7, float %3175)  ; Saturate(value)
  %3179 = call float @dx.op.unary.f32(i32 7, float %3176)  ; Saturate(value)
  %3180 = fmul fast float %3177, %3177
  %3181 = fmul fast float %3178, %3178
  %3182 = fmul fast float %3179, %3179
  %3183 = fsub fast float %3180, %3062
  %3184 = fsub fast float %3181, %3063
  %3185 = fsub fast float %3182, %3064
  %3186 = fmul fast float %3183, %3087
  %3187 = fmul fast float %3184, %3087
  %3188 = fmul fast float %3185, %3087
  %3189 = fadd fast float %3186, %3062
  %3190 = fadd fast float %3187, %3063
  %3191 = fadd fast float %3188, %3064
  %3192 = fadd fast float %3109, %3073
  %3193 = fsub fast float %3192, %3126
  %3194 = call float @dx.op.unary.f32(i32 7, float %3193)  ; Saturate(value)
  %3195 = fsub fast float %3194, %3073
  %3196 = fmul fast float %3195, %3087
  %3197 = fadd fast float %3196, %3073
  br label %3251

; <label>:3198                                    ; preds = %3086
  %3199 = and i32 %3089, 134217728
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3235, label %3201

; <label>:3201                                    ; preds = %3198
  %3202 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %3203 = call float @dx.op.unary.f32(i32 24, float %631)  ; Sqrt(value)
  %3204 = call float @dx.op.unary.f32(i32 24, float %632)  ; Sqrt(value)
  %3205 = fadd fast float %3202, -5.000000e-01
  %3206 = fadd fast float %3203, -5.000000e-01
  %3207 = fadd fast float %3204, -5.000000e-01
  %3208 = fmul fast float %3205, %3087
  %3209 = fmul fast float %3206, %3087
  %3210 = fmul fast float %3207, %3087
  %3211 = fadd fast float %3208, 5.000000e-01
  %3212 = fadd fast float %3209, 5.000000e-01
  %3213 = fadd fast float %3210, 5.000000e-01
  %3214 = call float @dx.op.unary.f32(i32 24, float %3062)  ; Sqrt(value)
  %3215 = call float @dx.op.unary.f32(i32 24, float %3063)  ; Sqrt(value)
  %3216 = call float @dx.op.unary.f32(i32 24, float %3064)  ; Sqrt(value)
  %3217 = fmul fast float %3211, 2.000000e+00
  %3218 = fsub fast float 1.000000e+00, %3217
  %3219 = fmul fast float %3218, %3214
  %3220 = fadd fast float %3219, %3217
  %3221 = fmul fast float %3220, %3214
  %3222 = fmul fast float %3212, 2.000000e+00
  %3223 = fsub fast float 1.000000e+00, %3222
  %3224 = fmul fast float %3223, %3215
  %3225 = fadd fast float %3224, %3222
  %3226 = fmul fast float %3225, %3215
  %3227 = fmul fast float %3213, 2.000000e+00
  %3228 = fsub fast float 1.000000e+00, %3227
  %3229 = fmul fast float %3228, %3216
  %3230 = fadd fast float %3229, %3227
  %3231 = fmul fast float %3230, %3216
  %3232 = fmul fast float %3221, %3221
  %3233 = fmul fast float %3226, %3226
  %3234 = fmul fast float %3231, %3231
  br label %3251

; <label>:3235                                    ; preds = %3198
  %3236 = fmul fast float %630, %630
  %3237 = fmul fast float %631, %631
  %3238 = fmul fast float %632, %632
  %3239 = fadd fast float %3236, -1.000000e+00
  %3240 = fadd fast float %3237, -1.000000e+00
  %3241 = fadd fast float %3238, -1.000000e+00
  %3242 = fmul fast float %3087, %3239
  %3243 = fmul fast float %3087, %3240
  %3244 = fmul fast float %3087, %3241
  %3245 = fadd fast float %3242, 1.000000e+00
  %3246 = fadd fast float %3243, 1.000000e+00
  %3247 = fadd fast float %3244, 1.000000e+00
  %3248 = fmul fast float %3245, %3062
  %3249 = fmul fast float %3246, %3063
  %3250 = fmul fast float %3247, %3064
  br label %3251

; <label>:3251                                    ; preds = %3235, %3201, %3092, %3048
  %3252 = phi float [ %3197, %3092 ], [ %3073, %3201 ], [ %3073, %3235 ], [ 0x3FA23C0BE0000000, %3048 ]
  %3253 = phi float [ %3189, %3092 ], [ %3232, %3201 ], [ %3248, %3235 ], [ 1.000000e+00, %3048 ]
  %3254 = phi float [ %3190, %3092 ], [ %3233, %3201 ], [ %3249, %3235 ], [ 1.000000e+00, %3048 ]
  %3255 = phi float [ %3191, %3092 ], [ %3234, %3201 ], [ %3250, %3235 ], [ 1.000000e+00, %3048 ]
  %3256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.i32 %3256, 1
  %3258 = and i32 %3257, 1
  %3259 = icmp ne i32 %3258, 0
  %3260 = add i32 %64, 356
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = and i32 %3262, 32
  %3264 = icmp ne i32 %3263, 0
  %3265 = and i1 %3259, %3264
  %3266 = select i1 %3265, float 1.000000e+00, float %3253
  %3267 = select i1 %3265, float 0x3FD3333340000000, float %3254
  %3268 = select i1 %3265, float 0x3FD3333340000000, float %3255
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 32
  %3272 = icmp eq i32 %3271, 0
  br i1 %3272, label %3345, label %3273

; <label>:3273                                    ; preds = %3251
  %3274 = add i32 %64, 140
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = add i32 %64, 436
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = add i32 %3279, 0
  %3281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3281, %dx.types.Handle %122, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3285 = extractvalue %dx.types.ResRet.f32 %3282, 2
  %3286 = extractvalue %dx.types.ResRet.f32 %3282, 3
  %3287 = and i32 %3276, 255
  %3288 = uitofp i32 %3287 to float
  %3289 = lshr i32 %3276, 8
  %3290 = and i32 %3289, 255
  %3291 = uitofp i32 %3290 to float
  %3292 = lshr i32 %3276, 16
  %3293 = and i32 %3292, 255
  %3294 = uitofp i32 %3293 to float
  %3295 = fmul fast float %3294, 0x3F70101000000000
  %3296 = fmul fast float %3283, %3288
  %3297 = fadd fast float %3296, %3291
  %3298 = fmul fast float %3297, 0x3F70101000000000
  %3299 = fadd fast float %3284, -5.000000e-01
  %3300 = fadd fast float %3286, -5.000000e-01
  %3301 = fmul fast float %3299, %3295
  %3302 = fmul fast float %3300, %3295
  %3303 = fadd fast float %3301, 5.000000e-01
  %3304 = fadd fast float %3302, 5.000000e-01
  %3305 = fmul fast float %3303, 2.000000e+00
  %3306 = fadd fast float %3305, -1.000000e+00
  %3307 = fmul fast float %3304, 2.000000e+00
  %3308 = fadd fast float %3307, -1.000000e+00
  %3309 = fadd fast float %3306, %3308
  %3310 = fmul fast float %3309, 5.000000e-01
  %3311 = fsub fast float %3306, %3308
  %3312 = fmul fast float %3311, 5.000000e-01
  %3313 = call float @dx.op.unary.f32(i32 6, float %3310)  ; FAbs(value)
  %3314 = fsub fast float 1.000000e+00, %3313
  %3315 = call float @dx.op.unary.f32(i32 6, float %3312)  ; FAbs(value)
  %3316 = fsub fast float %3314, %3315
  %3317 = call float @dx.op.dot3.f32(i32 55, float %3310, float %3312, float %3316, float %3310, float %3312, float %3316)  ; Dot3(ax,ay,az,bx,by,bz)
  %3318 = call float @dx.op.unary.f32(i32 25, float %3317)  ; Rsqrt(value)
  %3319 = fmul fast float %3310, %3318
  %3320 = fmul fast float %3312, %3318
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, 67108864
  %3324 = icmp eq i32 %3323, 0
  br i1 %3324, label %3341, label %3325

; <label>:3325                                    ; preds = %3273
  %3326 = add i32 %64, 328
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = and i32 %3328, 65535
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 65535
  %3334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3333)  ; LegacyF16ToF32(value)
  %3335 = lshr i32 %3328, 16
  %3336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3335)  ; LegacyF16ToF32(value)
  %3337 = fsub fast float %3298, %3336
  %3338 = fmul fast float %3337, %3330
  %3339 = fadd fast float %3338, %3334
  %3340 = call float @dx.op.unary.f32(i32 7, float %3339)  ; Saturate(value)
  br label %3341

; <label>:3341                                    ; preds = %3325, %3273
  %3342 = phi float [ %3340, %3325 ], [ %3298, %3273 ]
  %3343 = call float @dx.op.dot2.f32(i32 54, float %3319, float %3320, float %2877, float %2878)  ; Dot2(ax,ay,bx,by)
  %3344 = call float @dx.op.dot2.f32(i32 54, float %3319, float %3320, float %2879, float %2880)  ; Dot2(ax,ay,bx,by)
  br label %3345

; <label>:3345                                    ; preds = %3341, %3251
  %3346 = phi float [ %3342, %3341 ], [ 0x3FD6666660000000, %3251 ]
  %3347 = phi float [ %3343, %3341 ], [ 0.000000e+00, %3251 ]
  %3348 = phi float [ %3344, %3341 ], [ 0.000000e+00, %3251 ]
  %3349 = phi float [ %3285, %3341 ], [ 1.000000e+00, %3251 ]
  %3350 = add i32 %64, 208
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = lshr i32 %3352, 22
  %3354 = shl nuw nsw i32 %3353, 5
  %3355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3354)  ; LegacyF16ToF32(value)
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 64
  %3359 = icmp eq i32 %3358, 0
  br i1 %3359, label %3393, label %3360

; <label>:3360                                    ; preds = %3345
  %3361 = add i32 %64, 452
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = add i32 %3363, 0
  %3365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 131072
  %3369 = icmp eq i32 %3368, 0
  %3370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3365, %dx.types.Handle %122, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = extractvalue %dx.types.ResRet.f32 %3370, 1
  %3373 = extractvalue %dx.types.ResRet.f32 %3370, 2
  %3374 = fmul fast float %613, %3371
  %3375 = fmul fast float %614, %3372
  %3376 = fmul fast float %615, %3373
  br i1 %3369, label %3383, label %3377

; <label>:3377                                    ; preds = %3360
  %3378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3379 = extractvalue %dx.types.CBufRet.f32 %3378, 0
  %3380 = fmul fast float %3379, %3374
  %3381 = fmul fast float %3379, %3375
  %3382 = fmul fast float %3379, %3376
  br label %3383

; <label>:3383                                    ; preds = %3377, %3360
  %3384 = phi float [ %3380, %3377 ], [ %3374, %3360 ]
  %3385 = phi float [ %3381, %3377 ], [ %3375, %3360 ]
  %3386 = phi float [ %3382, %3377 ], [ %3376, %3360 ]
  %3387 = fmul fast float %3384, %3355
  %3388 = select i1 %281, float %3387, float %3384
  %3389 = call float @dx.op.dot3.f32(i32 55, float %3388, float %3385, float %3386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3390 = select i1 %281, float 0.000000e+00, float %3384
  %3391 = select i1 %281, float %3389, float %3385
  %3392 = select i1 %281, float 0.000000e+00, float %3386
  br label %3393

; <label>:3393                                    ; preds = %3383, %3345
  %3394 = phi float [ %3390, %3383 ], [ 0.000000e+00, %3345 ]
  %3395 = phi float [ %3391, %3383 ], [ 0.000000e+00, %3345 ]
  %3396 = phi float [ %3392, %3383 ], [ 0.000000e+00, %3345 ]
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = and i32 %3398, 26624
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3424, label %3401

; <label>:3401                                    ; preds = %3393
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 16384
  %3405 = icmp eq i32 %3404, 0
  br i1 %3405, label %3424, label %3406

; <label>:3406                                    ; preds = %3401
  %3407 = and i32 %3403, 1048576
  %3408 = icmp ne i32 %3407, 0
  %3409 = add i32 %64, 520
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = add i32 %3411, 0
  %3413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3413, %dx.types.Handle %123, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = add i32 %64, 144
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = lshr i32 %3418, 24
  %3420 = uitofp i32 %3419 to float
  %3421 = fmul fast float %3415, 0x3F70101020000000
  %3422 = select i1 %3408, float 0x3F70101020000000, float %3421
  %3423 = fmul fast float %3422, %3420
  br label %3424

; <label>:3424                                    ; preds = %3406, %3401, %3393
  %3425 = phi float [ %3423, %3406 ], [ 0.000000e+00, %3401 ], [ 0.000000e+00, %3393 ]
  %3426 = add i32 %64, 144
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 255
  %3430 = uitofp i32 %3429 to float
  %3431 = lshr i32 %3428, 8
  %3432 = and i32 %3431, 255
  %3433 = uitofp i32 %3432 to float
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3266, float %3267, float %3268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = fmul fast float %3433, %3434
  %3436 = fadd fast float %3435, %3430
  %3437 = fmul fast float %3436, 0x3F70101020000000
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  br i1 %2865, label %3439, label %3447

; <label>:3439                                    ; preds = %3424
  %3440 = fsub fast float 1.000000e+00, %3046
  %3441 = fmul fast float %3440, %2853
  %3442 = fmul fast float %3440, %2854
  %3443 = fmul fast float %3440, %2855
  %3444 = fmul fast float %3440, %2856
  %3445 = fmul fast float %3440, %2857
  %3446 = fmul fast float %3440, %2858
  br label %3447

; <label>:3447                                    ; preds = %3439, %3424
  %3448 = phi float [ %3441, %3439 ], [ %2853, %3424 ]
  %3449 = phi float [ %3442, %3439 ], [ %2854, %3424 ]
  %3450 = phi float [ %3443, %3439 ], [ %2855, %3424 ]
  %3451 = phi float [ %3444, %3439 ], [ %2856, %3424 ]
  %3452 = phi float [ %3445, %3439 ], [ %2857, %3424 ]
  %3453 = phi float [ %3446, %3439 ], [ %2858, %3424 ]
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = and i32 %3455, 3
  %3457 = icmp eq i32 %3456, 3
  br i1 %3457, label %3536, label %3458

; <label>:3458                                    ; preds = %3447
  %3459 = and i32 %3455, 16
  %3460 = icmp ne i32 %3459, 0
  %3461 = select i1 %3460, float %3046, float 0.000000e+00
  %3462 = icmp eq i32 %3456, 0
  br i1 %3462, label %3463, label %3491

; <label>:3463                                    ; preds = %3458
  %3464 = and i32 %3455, 64
  %3465 = icmp ne i32 %3464, 0
  %3466 = select i1 %3465, float %3046, float 0.000000e+00
  %3467 = fsub fast float %3266, %3448
  %3468 = fsub fast float %3267, %3449
  %3469 = fsub fast float %3268, %3450
  %3470 = fmul fast float %3461, %3467
  %3471 = fmul fast float %3461, %3468
  %3472 = fmul fast float %3461, %3469
  %3473 = fadd fast float %3470, %3448
  %3474 = fadd fast float %3471, %3449
  %3475 = fadd fast float %3472, %3450
  %3476 = fsub fast float %3252, %2859
  %3477 = fmul fast float %3461, %3476
  %3478 = fadd fast float %3477, %2859
  %3479 = fsub fast float %3394, %3451
  %3480 = fsub fast float %3395, %3452
  %3481 = fsub fast float %3396, %3453
  %3482 = fmul fast float %3466, %3479
  %3483 = fmul fast float %3466, %3480
  %3484 = fmul fast float %3466, %3481
  %3485 = fadd fast float %3482, %3451
  %3486 = fadd fast float %3483, %3452
  %3487 = fadd fast float %3484, %3453
  %3488 = fsub fast float %3438, %2863
  %3489 = fmul fast float %3461, %3488
  %3490 = fadd fast float %3489, %2863
  br label %3536

; <label>:3491                                    ; preds = %3458
  %3492 = icmp eq i32 %3456, 1
  br i1 %3492, label %3493, label %3506

; <label>:3493                                    ; preds = %3491
  %3494 = fadd fast float %3266, -1.000000e+00
  %3495 = fadd fast float %3267, -1.000000e+00
  %3496 = fadd fast float %3268, -1.000000e+00
  %3497 = fmul fast float %3461, %3494
  %3498 = fmul fast float %3461, %3495
  %3499 = fmul fast float %3461, %3496
  %3500 = fadd fast float %3497, 1.000000e+00
  %3501 = fadd fast float %3498, 1.000000e+00
  %3502 = fadd fast float %3499, 1.000000e+00
  %3503 = fmul fast float %3500, %3448
  %3504 = fmul fast float %3501, %3449
  %3505 = fmul fast float %3502, %3450
  br label %3536

; <label>:3506                                    ; preds = %3491
  %3507 = icmp eq i32 %3456, 2
  br i1 %3507, label %3508, label %3536

; <label>:3508                                    ; preds = %3506
  %3509 = call float @dx.op.unary.f32(i32 24, float %3266)  ; Sqrt(value)
  %3510 = call float @dx.op.unary.f32(i32 24, float %3267)  ; Sqrt(value)
  %3511 = call float @dx.op.unary.f32(i32 24, float %3268)  ; Sqrt(value)
  %3512 = fadd fast float %3509, -5.000000e-01
  %3513 = fadd fast float %3510, -5.000000e-01
  %3514 = fadd fast float %3511, -5.000000e-01
  %3515 = fmul fast float %3512, %3461
  %3516 = fmul fast float %3513, %3461
  %3517 = fmul fast float %3514, %3461
  %3518 = fadd fast float %3515, 5.000000e-01
  %3519 = fadd fast float %3516, 5.000000e-01
  %3520 = fadd fast float %3517, 5.000000e-01
  %3521 = fmul fast float %3518, 2.000000e+00
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = fmul fast float %3522, %3448
  %3524 = fadd fast float %3523, %3521
  %3525 = fmul fast float %3524, %3448
  %3526 = fmul fast float %3519, 2.000000e+00
  %3527 = fsub fast float 1.000000e+00, %3526
  %3528 = fmul fast float %3527, %3449
  %3529 = fadd fast float %3528, %3526
  %3530 = fmul fast float %3529, %3449
  %3531 = fmul fast float %3520, 2.000000e+00
  %3532 = fsub fast float 1.000000e+00, %3531
  %3533 = fmul fast float %3532, %3450
  %3534 = fadd fast float %3533, %3531
  %3535 = fmul fast float %3534, %3450
  br label %3536

; <label>:3536                                    ; preds = %3508, %3506, %3493, %3463, %3447
  %3537 = phi float [ %3448, %3447 ], [ %3525, %3508 ], [ %3448, %3506 ], [ %3503, %3493 ], [ %3473, %3463 ]
  %3538 = phi float [ %3449, %3447 ], [ %3530, %3508 ], [ %3449, %3506 ], [ %3504, %3493 ], [ %3474, %3463 ]
  %3539 = phi float [ %3450, %3447 ], [ %3535, %3508 ], [ %3450, %3506 ], [ %3505, %3493 ], [ %3475, %3463 ]
  %3540 = phi float [ %3451, %3447 ], [ %3451, %3508 ], [ %3451, %3506 ], [ %3451, %3493 ], [ %3485, %3463 ]
  %3541 = phi float [ %3452, %3447 ], [ %3452, %3508 ], [ %3452, %3506 ], [ %3452, %3493 ], [ %3486, %3463 ]
  %3542 = phi float [ %3453, %3447 ], [ %3453, %3508 ], [ %3453, %3506 ], [ %3453, %3493 ], [ %3487, %3463 ]
  %3543 = phi float [ %2859, %3447 ], [ %2859, %3508 ], [ %2859, %3506 ], [ %2859, %3493 ], [ %3478, %3463 ]
  %3544 = phi float [ %2863, %3447 ], [ %2863, %3508 ], [ %2863, %3506 ], [ %2863, %3493 ], [ %3490, %3463 ]
  %3545 = and i32 %3455, 12
  %3546 = icmp eq i32 %3545, 12
  br i1 %3546, label %3629, label %3547

; <label>:3547                                    ; preds = %3536
  %3548 = and i32 %3455, 2097184
  %3549 = icmp eq i32 %3548, 2097184
  %3550 = select i1 %3549, float %3046, float 0.000000e+00
  %3551 = and i32 %3455, 4194336
  %3552 = icmp eq i32 %3551, 4194336
  %3553 = select i1 %3552, float %3046, float 0.000000e+00
  %3554 = and i32 %3455, 8388640
  %3555 = icmp eq i32 %3554, 8388640
  %3556 = select i1 %3555, float %3046, float 0.000000e+00
  %3557 = and i32 %3455, 16384
  %3558 = icmp ne i32 %3557, 0
  %3559 = select i1 %3558, float %3046, float 0.000000e+00
  %3560 = icmp eq i32 %3545, 0
  br i1 %3560, label %3561, label %3577

; <label>:3561                                    ; preds = %3547
  %3562 = fsub fast float %3347, %2851
  %3563 = fsub fast float %3348, %2852
  %3564 = fmul fast float %3550, %3562
  %3565 = fmul fast float %3550, %3563
  %3566 = fadd fast float %3564, %2851
  %3567 = fadd fast float %3565, %2852
  %3568 = fsub fast float %3349, %2861
  %3569 = fmul fast float %3553, %3568
  %3570 = fadd fast float %3569, %2861
  %3571 = fsub fast float %3346, %2860
  %3572 = fmul fast float %3556, %3571
  %3573 = fadd fast float %3572, %2860
  %3574 = fsub fast float %3425, %2862
  %3575 = fmul fast float %3559, %3574
  %3576 = fadd fast float %3575, %2862
  br label %3629

; <label>:3577                                    ; preds = %3547
  %3578 = icmp eq i32 %3545, 4
  br i1 %3578, label %3579, label %3613

; <label>:3579                                    ; preds = %3577
  %3580 = fmul fast float %3550, %3347
  %3581 = fmul fast float %3550, %3348
  %3582 = fadd fast float %3580, %2851
  %3583 = fadd fast float %3581, %2852
  %3584 = call float @dx.op.binary.f32(i32 36, float %2861, float %3349)  ; FMin(a,b)
  %3585 = fsub fast float %3584, %2861
  %3586 = fmul fast float %3585, %3553
  %3587 = fadd fast float %3586, %2861
  %3588 = fadd fast float %3346, %2860
  %3589 = fmul fast float %3588, 0x3FF337FAE0000000
  %3590 = fmul fast float %2860, %2860
  %3591 = fmul fast float %3346, %3346
  %3592 = fadd fast float %3591, %3590
  %3593 = fmul fast float %3592, 0x3FE5152B00000000
  %3594 = fmul fast float %2860, 0xBFCC1F85E0000000
  %3595 = fmul fast float %3594, %3346
  %3596 = fadd fast float %3595, 0xBFE1363700000000
  %3597 = fadd fast float %3596, %3589
  %3598 = fsub fast float %3597, %3593
  %3599 = fmul fast float %3588, 0x3FBA6F0D00000000
  %3600 = fmul fast float %3592, 0x3FD0432880000000
  %3601 = fmul fast float %2860, 0xBFEF110800000000
  %3602 = fmul fast float %3601, %3346
  %3603 = fadd fast float %3602, 1.000000e+00
  %3604 = fsub fast float %3603, %3599
  %3605 = fadd fast float %3604, %3600
  %3606 = fdiv fast float %3598, %3605
  %3607 = call float @dx.op.unary.f32(i32 7, float %3606)  ; Saturate(value)
  %3608 = fsub fast float %3607, %2860
  %3609 = fmul fast float %3608, %3556
  %3610 = fadd fast float %3609, %2860
  %3611 = fmul fast float %3559, %3425
  %3612 = fadd fast float %3611, %2862
  br label %3629

; <label>:3613                                    ; preds = %3577
  %3614 = icmp eq i32 %3545, 8
  br i1 %3614, label %3615, label %3629

; <label>:3615                                    ; preds = %3613
  %3616 = fmul fast float %3550, %3347
  %3617 = fmul fast float %3550, %3348
  %3618 = fadd fast float %3616, %2851
  %3619 = fadd fast float %3617, %2852
  %3620 = call float @dx.op.binary.f32(i32 36, float %2861, float %3349)  ; FMin(a,b)
  %3621 = fsub fast float %3620, %2861
  %3622 = fmul fast float %3621, %3553
  %3623 = fadd fast float %3622, %2861
  %3624 = fsub fast float %3346, %2860
  %3625 = fmul fast float %3556, %3624
  %3626 = fadd fast float %3625, %2860
  %3627 = fmul fast float %3559, %3425
  %3628 = fadd fast float %3627, %2862
  br label %3629

; <label>:3629                                    ; preds = %3615, %3613, %3579, %3561, %3536, %3045, %2864, %2850
  %3630 = phi float [ %2851, %3536 ], [ %2851, %3045 ], [ %2851, %2850 ], [ %2851, %2864 ], [ %3566, %3561 ], [ %3582, %3579 ], [ %2851, %3613 ], [ %3618, %3615 ]
  %3631 = phi float [ %2852, %3536 ], [ %2852, %3045 ], [ %2852, %2850 ], [ %2852, %2864 ], [ %3567, %3561 ], [ %3583, %3579 ], [ %2852, %3613 ], [ %3619, %3615 ]
  %3632 = phi float [ %3537, %3536 ], [ %2853, %3045 ], [ %2853, %2850 ], [ %2853, %2864 ], [ %3537, %3561 ], [ %3537, %3579 ], [ %3537, %3613 ], [ %3537, %3615 ]
  %3633 = phi float [ %3538, %3536 ], [ %2854, %3045 ], [ %2854, %2850 ], [ %2854, %2864 ], [ %3538, %3561 ], [ %3538, %3579 ], [ %3538, %3613 ], [ %3538, %3615 ]
  %3634 = phi float [ %3539, %3536 ], [ %2855, %3045 ], [ %2855, %2850 ], [ %2855, %2864 ], [ %3539, %3561 ], [ %3539, %3579 ], [ %3539, %3613 ], [ %3539, %3615 ]
  %3635 = phi float [ %3540, %3536 ], [ %2856, %3045 ], [ %2856, %2850 ], [ %2856, %2864 ], [ %3540, %3561 ], [ %3540, %3579 ], [ %3540, %3613 ], [ %3540, %3615 ]
  %3636 = phi float [ %3541, %3536 ], [ %2857, %3045 ], [ %2857, %2850 ], [ %2857, %2864 ], [ %3541, %3561 ], [ %3541, %3579 ], [ %3541, %3613 ], [ %3541, %3615 ]
  %3637 = phi float [ %3542, %3536 ], [ %2858, %3045 ], [ %2858, %2850 ], [ %2858, %2864 ], [ %3542, %3561 ], [ %3542, %3579 ], [ %3542, %3613 ], [ %3542, %3615 ]
  %3638 = phi float [ %3543, %3536 ], [ %2859, %3045 ], [ %2859, %2850 ], [ %2859, %2864 ], [ %3543, %3561 ], [ %3543, %3579 ], [ %3543, %3613 ], [ %3543, %3615 ]
  %3639 = phi float [ %2860, %3536 ], [ %2860, %3045 ], [ %2860, %2850 ], [ %2860, %2864 ], [ %3573, %3561 ], [ %3610, %3579 ], [ %2860, %3613 ], [ %3626, %3615 ]
  %3640 = phi float [ %2861, %3536 ], [ %2861, %3045 ], [ %2861, %2850 ], [ %2861, %2864 ], [ %3570, %3561 ], [ %3587, %3579 ], [ %2861, %3613 ], [ %3623, %3615 ]
  %3641 = phi float [ %2862, %3536 ], [ %2862, %3045 ], [ %2862, %2850 ], [ %2862, %2864 ], [ %3576, %3561 ], [ %3612, %3579 ], [ %2862, %3613 ], [ %3628, %3615 ]
  %3642 = phi float [ %3544, %3536 ], [ %2863, %3045 ], [ %2863, %2850 ], [ %2863, %2864 ], [ %3544, %3561 ], [ %3544, %3579 ], [ %3544, %3613 ], [ %3544, %3615 ]
  %3643 = add i32 %64, 360
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.i32 %3644, 1
  %3647 = bitcast i32 %3645 to float
  %3648 = bitcast i32 %3646 to float
  %3649 = fcmp fast oge float %3647, 0.000000e+00
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 0
  %3652 = select i1 %3649, float %3647, float %3651
  %3653 = fadd fast float %3652, %223
  %3654 = fmul fast float %3648, %224
  %3655 = add i32 %64, 488
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = add i32 %3657, 0
  %3659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3659, %dx.types.Handle %123, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = fmul fast float %3654, %3661
  %3663 = fadd fast float %3653, %3662
  %3664 = and i32 %215, 65535
  %3665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3664)  ; LegacyF16ToF32(value)
  %3666 = lshr i32 %215, 16
  %3667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3666)  ; LegacyF16ToF32(value)
  %3668 = and i32 %216, 65535
  %3669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3668)  ; LegacyF16ToF32(value)
  %3670 = fmul fast float %3665, %3632
  %3671 = fmul fast float %3667, %3633
  %3672 = fmul fast float %3669, %3634
  %3673 = shl i32 %217, 4
  %3674 = and i32 %3673, 32752
  %3675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3674)  ; LegacyF16ToF32(value)
  %3676 = lshr i32 %217, 7
  %3677 = and i32 %3676, 32752
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = lshr i32 %217, 22
  %3680 = shl nuw nsw i32 %3679, 5
  %3681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3680)  ; LegacyF16ToF32(value)
  %3682 = and i32 %218, 65535
  %3683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3682)  ; LegacyF16ToF32(value)
  %3684 = fmul fast float %3675, %3635
  %3685 = fmul fast float %3684, %3683
  %3686 = fmul fast float %3678, %3636
  %3687 = fmul fast float %3686, %3683
  %3688 = fmul fast float %3681, %3637
  %3689 = fmul fast float %3688, %3683
  %3690 = call float @dx.op.dot2.f32(i32 54, float %3630, float %3631, float %3630, float %3631)  ; Dot2(ax,ay,bx,by)
  %3691 = fmul fast float %3690, 0x3FE3333340000000
  %3692 = fsub fast float 1.000000e+00, %3691
  %3693 = call float @dx.op.dot3.f32(i32 55, float %3630, float %3631, float %3692, float %3630, float %3631, float %3692)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = call float @dx.op.unary.f32(i32 25, float %3693)  ; Rsqrt(value)
  %3695 = fmul fast float %3694, %3630
  %3696 = fmul fast float %3694, %3631
  %3697 = fmul fast float %3692, %3694
  %3698 = fmul fast float %3697, %135
  %3699 = fmul fast float %3697, %137
  %3700 = fmul fast float %3697, %139
  %3701 = fmul fast float %3695, %97
  %3702 = fmul fast float %3695, %98
  %3703 = fmul fast float %3695, %99
  %3704 = fadd fast float %3698, %3701
  %3705 = fadd fast float %3699, %3702
  %3706 = fadd fast float %3700, %3703
  %3707 = fmul fast float %149, %3696
  %3708 = fmul fast float %150, %3696
  %3709 = fmul fast float %151, %3696
  %3710 = fadd fast float %3704, %3707
  %3711 = fadd fast float %3705, %3708
  %3712 = fadd fast float %3706, %3709
  %3713 = call float @dx.op.dot3.f32(i32 55, float %3710, float %3711, float %3712, float %3710, float %3711, float %3712)  ; Dot3(ax,ay,az,bx,by,bz)
  %3714 = call float @dx.op.unary.f32(i32 25, float %3713)  ; Rsqrt(value)
  %3715 = fmul fast float %3710, %3714
  %3716 = fmul fast float %3711, %3714
  %3717 = fmul fast float %3712, %3714
  %3718 = icmp eq i32 %67, 65535
  br i1 %3718, label %4237, label %3719

; <label>:3719                                    ; preds = %3629
  %3720 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3721 = call float @dx.op.unary.f32(i32 83, float %69)  ; DerivCoarseX(value)
  %3722 = call float @dx.op.unary.f32(i32 83, float %70)  ; DerivCoarseX(value)
  %3723 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3724 = call float @dx.op.unary.f32(i32 84, float %69)  ; DerivCoarseY(value)
  %3725 = call float @dx.op.unary.f32(i32 84, float %70)  ; DerivCoarseY(value)
  %3726 = fadd fast float %3720, %68
  %3727 = fadd fast float %3721, %69
  %3728 = fadd fast float %3722, %70
  %3729 = fadd fast float %3723, %68
  %3730 = fadd fast float %3724, %69
  %3731 = fadd fast float %3725, %70
  %3732 = mul i32 %67, 48
  %3733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.ResRet.f32 %3733, 1
  %3736 = extractvalue %dx.types.ResRet.f32 %3733, 2
  %3737 = add i32 %3732, 16
  %3738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.ResRet.f32 %3738, 2
  %3742 = add i32 %3732, 32
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3743, 2
  %3747 = extractvalue %dx.types.ResRet.f32 %3743, 3
  %3748 = bitcast float %3747 to i32
  %3749 = fmul fast float %3734, %68
  %3750 = fmul fast float %3735, %69
  %3751 = fmul fast float %3736, %70
  %3752 = fsub fast float %3749, %3739
  %3753 = fsub fast float %3750, %3740
  %3754 = fsub fast float %3751, %3741
  %3755 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3756 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3757 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3758 = fmul fast float %3755, %3744
  %3759 = fmul fast float %3756, %3745
  %3760 = fmul fast float %3757, %3746
  %3761 = fadd fast float %3744, -1.000000e+00
  %3762 = fadd fast float %3745, -1.000000e+00
  %3763 = fadd fast float %3746, -1.000000e+00
  %3764 = call float @dx.op.unary.f32(i32 27, float %3758)  ; Round_ni(value)
  %3765 = call float @dx.op.unary.f32(i32 27, float %3759)  ; Round_ni(value)
  %3766 = call float @dx.op.unary.f32(i32 27, float %3760)  ; Round_ni(value)
  %3767 = call float @dx.op.binary.f32(i32 36, float %3764, float %3761)  ; FMin(a,b)
  %3768 = call float @dx.op.binary.f32(i32 36, float %3765, float %3762)  ; FMin(a,b)
  %3769 = call float @dx.op.binary.f32(i32 36, float %3766, float %3763)  ; FMin(a,b)
  %3770 = fmul fast float %3769, %3745
  %3771 = fadd fast float %3770, %3768
  %3772 = fmul fast float %3771, %3744
  %3773 = fadd fast float %3772, %3767
  %3774 = fptosi float %3773 to i32
  %3775 = add nsw i32 %3774, %3748
  %3776 = shl nsw i32 %3775, 2
  %3777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = lshr i32 %3778, 16
  %3780 = icmp eq i32 %3779, 0
  br i1 %3780, label %4205, label %3781

; <label>:3781                                    ; preds = %3719
  br label %3782

; <label>:3782                                    ; preds = %3904, %3781
  %3783 = phi i32 [ %3806, %3904 ], [ %3779, %3781 ]
  %3784 = phi float [ %3905, %3904 ], [ 0.000000e+00, %3781 ]
  %3785 = phi float [ %3906, %3904 ], [ %1301, %3781 ]
  %3786 = phi float [ %3907, %3904 ], [ %3663, %3781 ]
  %3787 = phi float [ %3908, %3904 ], [ %3642, %3781 ]
  %3788 = phi float [ %3909, %3904 ], [ %3641, %3781 ]
  %3789 = phi float [ %3910, %3904 ], [ 0.000000e+00, %3781 ]
  %3790 = phi float [ %3911, %3904 ], [ %3685, %3781 ]
  %3791 = phi float [ %3912, %3904 ], [ %3687, %3781 ]
  %3792 = phi float [ %3913, %3904 ], [ %3689, %3781 ]
  %3793 = phi float [ %3914, %3904 ], [ %3715, %3781 ]
  %3794 = phi float [ %3915, %3904 ], [ %3716, %3781 ]
  %3795 = phi float [ %3916, %3904 ], [ %3717, %3781 ]
  %3796 = phi float [ %3917, %3904 ], [ %3640, %3781 ]
  %3797 = phi float [ %3918, %3904 ], [ %3639, %3781 ]
  %3798 = phi float [ %3919, %3904 ], [ 0.000000e+00, %3781 ]
  %3799 = phi float [ %3920, %3904 ], [ %3638, %3781 ]
  %3800 = phi float [ %3921, %3904 ], [ %3670, %3781 ]
  %3801 = phi float [ %3922, %3904 ], [ %3671, %3781 ]
  %3802 = phi float [ %3923, %3904 ], [ %3672, %3781 ]
  %3803 = shl nuw nsw i32 %3783, 2
  %3804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.i32 %3804, 0
  %3806 = lshr i32 %3805, 16
  %3807 = shl i32 %3805, 8
  %3808 = and i32 %3807, 16776960
  %3809 = or i32 %3808, 48
  %3810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = or i32 %3808, 64
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.i32 %3815, 1
  %3818 = or i32 %3808, 80
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3822 = or i32 %3808, 96
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3828 = or i32 %3808, 112
  %3829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3831 = or i32 %3808, 128
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3837 = or i32 %3808, 144
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3842 = extractvalue %dx.types.ResRet.f32 %3838, 3
  %3843 = or i32 %3808, 160
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = extractvalue %dx.types.ResRet.f32 %3844, 3
  %3849 = or i32 %3808, 192
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = or i32 %3808, 208
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = or i32 %3808, 248
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.ResRet.f32 %3859, 1
  %3862 = extractvalue %dx.types.ResRet.f32 %3859, 2
  %3863 = extractvalue %dx.types.ResRet.f32 %3859, 3
  %3864 = call float @dx.op.dot4.f32(i32 56, float %3860, float %3861, float %3862, float %3863, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3865 = or i32 %3808, 16
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3866, 3
  %3871 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3872 = or i32 %3808, 32
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = call float @dx.op.unary.f32(i32 27, float %3864)  ; Round_ni(value)
  %3880 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3881 = call float @dx.op.unary.f32(i32 27, float %3871)  ; Round_ni(value)
  %3882 = call float @dx.op.unary.f32(i32 6, float %3881)  ; FAbs(value)
  %3883 = call float @dx.op.unary.f32(i32 6, float %3878)  ; FAbs(value)
  %3884 = call float @dx.op.unary.f32(i32 27, float %3883)  ; Round_ni(value)
  %3885 = fadd fast float %3882, %3880
  %3886 = fadd fast float %3885, %3884
  %3887 = fcmp fast oeq float %3886, 0.000000e+00
  %3888 = call float @dx.op.dot4.f32(i32 56, float %3860, float %3861, float %3862, float %3863, float %3726, float %3727, float %3728, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %3726, float %3727, float %3728, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3860, float %3861, float %3862, float %3863, float %3729, float %3730, float %3731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %3729, float %3730, float %3731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = fsub fast float %3888, %3864
  %3893 = fsub fast float %3890, %3864
  %3894 = fsub fast float %3889, %3871
  %3895 = fsub fast float %3891, %3871
  %3896 = call float @dx.op.dot3.f32(i32 55, float %3811, float %3812, float %3813, float %135, float %137, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 2
  %3899 = fadd fast float %3898, %3896
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3902 = fcmp fast ogt float %3900, %3901
  %3903 = and i1 %3887, %3902
  br i1 %3903, label %3925, label %3904

; <label>:3904                                    ; preds = %4191, %4008, %3925, %3782
  %3905 = phi float [ %3784, %3925 ], [ %4011, %4008 ], [ %4011, %4191 ], [ %3784, %3782 ]
  %3906 = phi float [ %3785, %3925 ], [ %3785, %4008 ], [ %4166, %4191 ], [ %3785, %3782 ]
  %3907 = phi float [ %3786, %3925 ], [ %3786, %4008 ], [ %4165, %4191 ], [ %3786, %3782 ]
  %3908 = phi float [ %3787, %3925 ], [ %3787, %4008 ], [ %4163, %4191 ], [ %3787, %3782 ]
  %3909 = phi float [ %3788, %3925 ], [ %3788, %4008 ], [ %4135, %4191 ], [ %3788, %3782 ]
  %3910 = phi float [ %3789, %3925 ], [ %3789, %4008 ], [ %4133, %4191 ], [ %3789, %3782 ]
  %3911 = phi float [ %3790, %3925 ], [ %3790, %4008 ], [ %4201, %4191 ], [ %3790, %3782 ]
  %3912 = phi float [ %3791, %3925 ], [ %3791, %4008 ], [ %4202, %4191 ], [ %3791, %3782 ]
  %3913 = phi float [ %3792, %3925 ], [ %3792, %4008 ], [ %4203, %4191 ], [ %3792, %3782 ]
  %3914 = phi float [ %3793, %3925 ], [ %3793, %4008 ], [ %4114, %4191 ], [ %3793, %3782 ]
  %3915 = phi float [ %3794, %3925 ], [ %3794, %4008 ], [ %4115, %4191 ], [ %3794, %3782 ]
  %3916 = phi float [ %3795, %3925 ], [ %3795, %4008 ], [ %4116, %4191 ], [ %3795, %3782 ]
  %3917 = phi float [ %3796, %3925 ], [ %3796, %4008 ], [ %4143, %4191 ], [ %3796, %3782 ]
  %3918 = phi float [ %3797, %3925 ], [ %3797, %4008 ], [ %4140, %4191 ], [ %3797, %3782 ]
  %3919 = phi float [ %3798, %3925 ], [ %3798, %4008 ], [ %4137, %4191 ], [ %3798, %3782 ]
  %3920 = phi float [ %3799, %3925 ], [ %3799, %4008 ], [ %4131, %4191 ], [ %3799, %3782 ]
  %3921 = phi float [ %3800, %3925 ], [ %3800, %4008 ], [ %4126, %4191 ], [ %3800, %3782 ]
  %3922 = phi float [ %3801, %3925 ], [ %3801, %4008 ], [ %4127, %4191 ], [ %3801, %3782 ]
  %3923 = phi float [ %3802, %3925 ], [ %3802, %4008 ], [ %4128, %4191 ], [ %3802, %3782 ]
  %3924 = icmp eq i32 %3806, 0
  br i1 %3924, label %4204, label %3782

; <label>:3925                                    ; preds = %3782
  %3926 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3927 = extractvalue %dx.types.ResRet.f32 %3829, 3
  %3928 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3932 = extractvalue %dx.types.ResRet.i32 %3815, 3
  %3933 = extractvalue %dx.types.ResRet.i32 %3815, 2
  %3934 = bitcast float %3926 to i32
  %3935 = add i32 %3932, 0
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3935, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3936, %dx.types.Handle %3937, float %3864, float %3871, float undef, float undef, i32 0, i32 0, i32 undef, float %3892, float %3894, float undef, float %3893, float %3895, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = fmul fast float %3939, %3931
  %3941 = fadd fast float %3940, %3930
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = fmul fast float %3864, %3824
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3871, float %3943)  ; FMad(a,b,c)
  %3945 = fadd fast float %3944, %3929
  %3946 = fmul fast float %3864, %3826
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3871, float %3946)  ; FMad(a,b,c)
  %3948 = fadd fast float %3947, %3928
  %3949 = fmul fast float %3892, %3824
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3894, float %3949)  ; FMad(a,b,c)
  %3951 = fmul fast float %3892, %3826
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3894, float %3951)  ; FMad(a,b,c)
  %3953 = fmul fast float %3893, %3824
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3895, float %3953)  ; FMad(a,b,c)
  %3955 = fmul fast float %3893, %3826
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3895, float %3955)  ; FMad(a,b,c)
  %3957 = add i32 %3933, 0
  %3958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3957, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3958, %dx.types.Handle %3937, float %3945, float %3948, float undef, float undef, i32 0, i32 0, i32 undef, float %3950, float %3952, float undef, float %3954, float %3956, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = and i32 %3934, 1024
  %3962 = icmp ne i32 %3961, 0
  %3963 = fcmp fast ogt float %3960, 0x3FE0101020000000
  %3964 = uitofp i1 %3963 to float
  %3965 = select i1 %3962, float %3964, float %3960
  %3966 = and i32 %3934, 8192
  %3967 = icmp ne i32 %3966, 0
  %3968 = select i1 %3967, float %3927, float 1.000000e+00
  %3969 = fmul fast float %3864, 2.000000e+00
  %3970 = fadd fast float %3969, -1.000000e+00
  %3971 = call float @dx.op.unary.f32(i32 6, float %3970)  ; FAbs(value)
  %3972 = fmul fast float %3971, %3857
  %3973 = fsub fast float %3972, %3857
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fmul fast float %3871, 2.000000e+00
  %3976 = fadd fast float %3975, -1.000000e+00
  %3977 = call float @dx.op.unary.f32(i32 6, float %3976)  ; FAbs(value)
  %3978 = fmul fast float %3977, %3858
  %3979 = fsub fast float %3978, %3858
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fmul fast float %3883, %3820
  %3982 = fsub fast float %3981, %3820
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3942, %3968
  %3985 = fmul fast float %3984, %3939
  %3986 = fmul fast float %3985, %3974
  %3987 = fmul fast float %3986, %3965
  %3988 = fmul fast float %3987, %3980
  %3989 = fmul fast float %3988, %3983
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 1
  %3992 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3993 = fsub fast float %3900, %3992
  %3994 = fmul fast float %3993, %3991
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = fmul fast float %3989, %3821
  %3997 = fadd fast float %3989, %3821
  %3998 = fmul fast float %3997, %3830
  %3999 = fsub fast float %3998, %3830
  %4000 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4001 = and i32 %3934, 128
  %4002 = icmp ne i32 %4001, 0
  %4003 = select i1 %4002, float %4000, float %3996
  %4004 = fmul fast float %4003, %3995
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 0
  %4007 = fcmp fast ugt float %4004, %4006
  br i1 %4007, label %4008, label %3904

; <label>:4008                                    ; preds = %3925
  %4009 = select i1 %3967, float %4004, float 0.000000e+00
  %4010 = fadd fast float %4009, %3784
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  br i1 %3967, label %3904, label %4012

; <label>:4012                                    ; preds = %4008
  %4013 = and i32 %3934, 4
  %4014 = and i32 %3934, 8
  %4015 = add i32 %3816, 0
  %4016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4015, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4016, %dx.types.Handle %4017, float %3945, float %3948, float undef, float undef, i32 0, i32 0, i32 undef, float %3950, float %3952, float undef, float %3954, float %3956, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.ResRet.f32 %4018, 1
  %4021 = extractvalue %dx.types.ResRet.f32 %4018, 2
  %4022 = extractvalue %dx.types.ResRet.f32 %4018, 3
  %4023 = bitcast float %3842 to i32
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = lshr i32 %4023, 8
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = fmul fast float %4022, %4025
  %4030 = fadd fast float %4029, %4028
  %4031 = fmul fast float %4030, 0x3F70101000000000
  %4032 = add i32 %3817, 0
  %4033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4034 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4033, %dx.types.Handle %4017, float %3945, float %3948, float undef, float undef, i32 0, i32 0, i32 undef, float %3950, float %3952, float undef, float %3954, float %3956, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %4034, 2
  %4038 = extractvalue %dx.types.ResRet.f32 %4034, 3
  %4039 = bitcast float %3836 to i32
  %4040 = and i32 %4039, 255
  %4041 = uitofp i32 %4040 to float
  %4042 = lshr i32 %4039, 8
  %4043 = and i32 %4042, 255
  %4044 = uitofp i32 %4043 to float
  %4045 = lshr i32 %4039, 16
  %4046 = and i32 %4045, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = fmul fast float %4047, 0x3F70101000000000
  %4049 = fmul fast float %4035, %4041
  %4050 = fadd fast float %4049, %4044
  %4051 = fmul fast float %4050, 0x3F70101000000000
  %4052 = fadd fast float %4036, -5.000000e-01
  %4053 = fadd fast float %4038, -5.000000e-01
  %4054 = fmul fast float %4052, %4048
  %4055 = fmul fast float %4053, %4048
  %4056 = fadd fast float %4054, 5.000000e-01
  %4057 = fadd fast float %4055, 5.000000e-01
  %4058 = fmul fast float %4019, %3845
  %4059 = fmul fast float %4020, %3846
  %4060 = fmul fast float %4021, %3847
  %4061 = fmul fast float %4056, 2.000000e+00
  %4062 = fadd fast float %4061, -1.000000e+00
  %4063 = fmul fast float %4057, 2.000000e+00
  %4064 = fadd fast float %4063, -1.000000e+00
  %4065 = fadd fast float %4062, %4064
  %4066 = fmul fast float %4065, 5.000000e-01
  %4067 = fsub fast float %4062, %4064
  %4068 = fmul fast float %4067, 5.000000e-01
  %4069 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4070 = fsub fast float 1.000000e+00, %4069
  %4071 = call float @dx.op.unary.f32(i32 6, float %4068)  ; FAbs(value)
  %4072 = fsub fast float %4070, %4071
  %4073 = call float @dx.op.dot3.f32(i32 55, float %4066, float %4068, float %4072, float %4066, float %4068, float %4072)  ; Dot3(ax,ay,az,bx,by,bz)
  %4074 = call float @dx.op.unary.f32(i32 25, float %4073)  ; Rsqrt(value)
  %4075 = fmul fast float %4066, %4074
  %4076 = fmul fast float %4068, %4074
  %4077 = fmul fast float %4074, %4072
  %4078 = fmul fast float %4077, %3811
  %4079 = fmul fast float %4077, %3812
  %4080 = fmul fast float %4077, %3813
  %4081 = fmul fast float %4075, %3833
  %4082 = fmul fast float %4075, %3834
  %4083 = fmul fast float %4075, %3835
  %4084 = fadd fast float %4081, %4078
  %4085 = fadd fast float %4082, %4079
  %4086 = fadd fast float %4083, %4080
  %4087 = fmul fast float %4076, %3839
  %4088 = fmul fast float %4076, %3840
  %4089 = fmul fast float %4076, %3841
  %4090 = fadd fast float %4084, %4087
  %4091 = fadd fast float %4085, %4088
  %4092 = fadd fast float %4086, %4089
  %4093 = call float @dx.op.dot3.f32(i32 55, float %4090, float %4091, float %4092, float %4090, float %4091, float %4092)  ; Dot3(ax,ay,az,bx,by,bz)
  %4094 = call float @dx.op.unary.f32(i32 25, float %4093)  ; Rsqrt(value)
  %4095 = fmul fast float %4090, %4094
  %4096 = fmul fast float %4091, %4094
  %4097 = fmul fast float %4092, %4094
  %4098 = icmp ne i32 %4014, 0
  %4099 = select i1 %4098, float 1.000000e+00, float 0.000000e+00
  %4100 = fmul fast float %4004, %4099
  %4101 = and i32 %3934, 1
  %4102 = icmp eq i32 %4101, 0
  br i1 %4102, label %4103, label %4107

; <label>:4103                                    ; preds = %4012
  %4104 = fsub fast float %4095, %3793
  %4105 = fsub fast float %4096, %3794
  %4106 = fsub fast float %4097, %3795
  br label %4107

; <label>:4107                                    ; preds = %4103, %4012
  %4108 = phi float [ %4104, %4103 ], [ %4095, %4012 ]
  %4109 = phi float [ %4105, %4103 ], [ %4096, %4012 ]
  %4110 = phi float [ %4106, %4103 ], [ %4097, %4012 ]
  %4111 = fmul float %4110, %4100
  %4112 = fmul float %4109, %4100
  %4113 = fmul float %4108, %4100
  %4114 = fadd fast float %4113, %3793
  %4115 = fadd fast float %4112, %3794
  %4116 = fadd fast float %4111, %3795
  %4117 = icmp ne i32 %4013, 0
  %4118 = select i1 %4117, float 1.000000e+00, float 0.000000e+00
  %4119 = fmul fast float %4004, %4118
  %4120 = fsub fast float %4058, %3800
  %4121 = fsub fast float %4059, %3801
  %4122 = fsub fast float %4060, %3802
  %4123 = fmul fast float %4120, %4119
  %4124 = fmul fast float %4121, %4119
  %4125 = fmul fast float %4122, %4119
  %4126 = fadd fast float %4123, %3800
  %4127 = fadd fast float %4124, %3801
  %4128 = fadd fast float %4125, %3802
  %4129 = fsub fast float %4031, %3799
  %4130 = fmul fast float %4129, %4119
  %4131 = fadd fast float %4130, %3799
  %4132 = fmul fast float %4119, %3789
  %4133 = fsub fast float %3789, %4132
  %4134 = fmul fast float %4119, %3788
  %4135 = fsub fast float %3788, %4134
  %4136 = fadd fast float %4004, %3798
  %4137 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4138 = fsub fast float %4051, %3797
  %4139 = fmul fast float %4138, %4100
  %4140 = fadd fast float %4139, %3797
  %4141 = fsub fast float %4037, %3796
  %4142 = fmul fast float %4141, %4100
  %4143 = fadd fast float %4142, %3796
  %4144 = call float @dx.op.dot3.f32(i32 55, float %4058, float %4059, float %4060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4148 = fmul fast float %4147, %4144
  %4149 = fadd fast float %4148, %4146
  %4150 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4151 = bitcast float %3848 to i32
  %4152 = and i32 %4151, 65535
  %4153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4152)  ; LegacyF16ToF32(value)
  %4154 = lshr i32 %4151, 16
  %4155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4154)  ; LegacyF16ToF32(value)
  %4156 = fcmp fast oge float %4153, 0.000000e+00
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = select i1 %4156, float %4153, float %4158
  %4160 = fadd fast float %4159, %4155
  %4161 = fsub fast float %4150, %3787
  %4162 = fmul fast float %4161, %4004
  %4163 = fadd fast float %4162, %3787
  %4164 = fmul fast float %4160, %4004
  %4165 = call float @dx.op.binary.f32(i32 35, float %3786, float %4164)  ; FMax(a,b)
  %4166 = call float @dx.op.binary.f32(i32 35, float %3785, float %4004)  ; FMax(a,b)
  %4167 = and i32 %3934, 16
  %4168 = icmp eq i32 %4167, 0
  br i1 %4168, label %4191, label %4169

; <label>:4169                                    ; preds = %4107
  %4170 = bitcast float %3854 to i32
  %4171 = add i32 %3851, 0
  %4172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4171, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4172, %dx.types.Handle %4017, float %3945, float %3948, float undef, float undef, i32 0, i32 0, i32 undef, float %3950, float %3952, float undef, float %3954, float %3956, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = and i32 %4170, 65535
  %4178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4177)  ; LegacyF16ToF32(value)
  %4179 = fmul fast float %4174, %3845
  %4180 = fmul fast float %4175, %3846
  %4181 = fmul fast float %4176, %3847
  %4182 = and i32 %3934, 16384
  %4183 = icmp ne i32 %4182, 0
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = select i1 %4183, float %4185, float 1.000000e+00
  %4187 = fmul fast float %4186, %4178
  %4188 = fmul fast float %4179, %4187
  %4189 = fmul fast float %4180, %4187
  %4190 = fmul fast float %4181, %4187
  br label %4191

; <label>:4191                                    ; preds = %4169, %4107
  %4192 = phi float [ %4188, %4169 ], [ 0.000000e+00, %4107 ]
  %4193 = phi float [ %4189, %4169 ], [ 0.000000e+00, %4107 ]
  %4194 = phi float [ %4190, %4169 ], [ 0.000000e+00, %4107 ]
  %4195 = fsub fast float %4192, %3790
  %4196 = fsub fast float %4193, %3791
  %4197 = fsub fast float %4194, %3792
  %4198 = fmul fast float %4195, %4004
  %4199 = fmul fast float %4196, %4004
  %4200 = fmul fast float %4197, %4004
  %4201 = fadd fast float %4198, %3790
  %4202 = fadd fast float %4199, %3791
  %4203 = fadd fast float %4200, %3792
  br label %3904

; <label>:4204                                    ; preds = %3904
  br label %4205

; <label>:4205                                    ; preds = %4204, %3719
  %4206 = phi float [ 0.000000e+00, %3719 ], [ %3905, %4204 ]
  %4207 = phi float [ %1301, %3719 ], [ %3906, %4204 ]
  %4208 = phi float [ %3663, %3719 ], [ %3907, %4204 ]
  %4209 = phi float [ %3642, %3719 ], [ %3908, %4204 ]
  %4210 = phi float [ %3641, %3719 ], [ %3909, %4204 ]
  %4211 = phi float [ 0.000000e+00, %3719 ], [ %3910, %4204 ]
  %4212 = phi float [ %3685, %3719 ], [ %3911, %4204 ]
  %4213 = phi float [ %3687, %3719 ], [ %3912, %4204 ]
  %4214 = phi float [ %3689, %3719 ], [ %3913, %4204 ]
  %4215 = phi float [ %3715, %3719 ], [ %3914, %4204 ]
  %4216 = phi float [ %3716, %3719 ], [ %3915, %4204 ]
  %4217 = phi float [ %3717, %3719 ], [ %3916, %4204 ]
  %4218 = phi float [ %3640, %3719 ], [ %3917, %4204 ]
  %4219 = phi float [ %3639, %3719 ], [ %3918, %4204 ]
  %4220 = phi float [ 0.000000e+00, %3719 ], [ %3919, %4204 ]
  %4221 = phi float [ %3638, %3719 ], [ %3920, %4204 ]
  %4222 = phi float [ %3670, %3719 ], [ %3921, %4204 ]
  %4223 = phi float [ %3671, %3719 ], [ %3922, %4204 ]
  %4224 = phi float [ %3672, %3719 ], [ %3923, %4204 ]
  %4225 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4217, float %4215, float %4216, float %4217)  ; Dot3(ax,ay,az,bx,by,bz)
  %4226 = call float @dx.op.unary.f32(i32 25, float %4225)  ; Rsqrt(value)
  %4227 = fmul fast float %4226, %4215
  %4228 = fmul fast float %4226, %4216
  %4229 = fmul fast float %4226, %4217
  %4230 = fadd fast float %4220, %1301
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = call float @dx.op.dot3.f32(i32 55, float %4227, float %4228, float %4229, float %4227, float %4228, float %4229)  ; Dot3(ax,ay,az,bx,by,bz)
  %4233 = call float @dx.op.unary.f32(i32 25, float %4232)  ; Rsqrt(value)
  %4234 = fmul fast float %4233, %4227
  %4235 = fmul fast float %4233, %4228
  %4236 = fmul fast float %4233, %4229
  br label %4237

; <label>:4237                                    ; preds = %4205, %3629
  %4238 = phi float [ %4234, %4205 ], [ %3715, %3629 ]
  %4239 = phi float [ %4235, %4205 ], [ %3716, %3629 ]
  %4240 = phi float [ %4236, %4205 ], [ %3717, %3629 ]
  %4241 = phi float [ %4222, %4205 ], [ %3670, %3629 ]
  %4242 = phi float [ %4223, %4205 ], [ %3671, %3629 ]
  %4243 = phi float [ %4224, %4205 ], [ %3672, %3629 ]
  %4244 = phi float [ %4212, %4205 ], [ %3685, %3629 ]
  %4245 = phi float [ %4213, %4205 ], [ %3687, %3629 ]
  %4246 = phi float [ %4214, %4205 ], [ %3689, %3629 ]
  %4247 = phi float [ %4221, %4205 ], [ %3638, %3629 ]
  %4248 = phi float [ %4231, %4205 ], [ %1301, %3629 ]
  %4249 = phi float [ %4219, %4205 ], [ %3639, %3629 ]
  %4250 = phi float [ %4218, %4205 ], [ %3640, %3629 ]
  %4251 = phi float [ %4211, %4205 ], [ 0.000000e+00, %3629 ]
  %4252 = phi float [ %4210, %4205 ], [ %3641, %3629 ]
  %4253 = phi float [ %4206, %4205 ], [ 0.000000e+00, %3629 ]
  %4254 = phi float [ %4208, %4205 ], [ %3663, %3629 ]
  %4255 = phi float [ %4207, %4205 ], [ %1301, %3629 ]
  %4256 = phi float [ %4209, %4205 ], [ %3642, %3629 ]
  %4257 = fadd fast float %4247, 0xBFB99999A0000000
  %4258 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4259 = fmul fast float %4258, 0x3FF1C71C80000000
  %4260 = call float @dx.op.binary.f32(i32 36, float %4247, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4261 = fsub fast float 1.000000e+00, %4259
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = fmul fast float %4262, %4241
  %4264 = fmul fast float %4262, %4242
  %4265 = fmul fast float %4262, %4243
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4269 = fmul fast float %4259, %4241
  %4270 = fmul fast float %4259, %4242
  %4271 = fmul fast float %4259, %4243
  %4272 = fadd fast float %4269, %4260
  %4273 = fadd fast float %4270, %4260
  %4274 = fadd fast float %4271, %4260
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4277 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4278 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.i32 %4279, 3
  %4281 = and i32 %4280, 8
  %4282 = icmp ne i32 %4281, 0
  %4283 = call float @dx.op.binary.f32(i32 35, float %4266, float %4241)  ; FMax(a,b)
  %4284 = call float @dx.op.binary.f32(i32 35, float %4267, float %4241)  ; FMax(a,b)
  %4285 = call float @dx.op.binary.f32(i32 35, float %4268, float %4241)  ; FMax(a,b)
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4266, float %4267, float %4268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = select i1 %281, float %4241, float %4266
  %4288 = select i1 %281, float %4286, float %4267
  %4289 = select i1 %281, float 1.000000e+00, float %4268
  %4290 = select i1 %4282, float %4283, float %4287
  %4291 = select i1 %4282, float %4284, float %4288
  %4292 = select i1 %4282, float %4285, float %4289
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.CBufRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.CBufRet.f32 %4293, 2
  %4297 = fadd fast float %4294, %209
  %4298 = fadd fast float %4295, %210
  %4299 = fadd fast float %4296, %211
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4303 = fsub fast float %4297, %4301
  %4304 = fsub fast float %4298, %4302
  %4305 = fmul fast float %4303, %4303
  %4306 = fmul fast float %4304, %4304
  %4307 = fadd fast float %4305, %4306
  %4308 = call float @dx.op.unary.f32(i32 24, float %4307)  ; Sqrt(value)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4300, 2
  %4310 = fcmp fast olt float %4308, %4309
  br i1 %4310, label %4311, label %4378

; <label>:4311                                    ; preds = %4237
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4318 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4320 = extractvalue %dx.types.CBufRet.f32 %4316, 1
  %4321 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4322 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4323 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4324 = fadd fast float %4321, %4297
  %4325 = fadd fast float %4322, %4298
  %4326 = fadd fast float %4323, %4299
  %4327 = fmul fast float %4324, %4313
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4315, float %4327)  ; FMad(a,b,c)
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4326, float %4317, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4324, %4318
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4319, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4326, float %4320, float %4331)  ; FMad(a,b,c)
  %4333 = fsub fast float %4329, %4321
  %4334 = fsub fast float %4332, %4322
  %4335 = fsub fast float %4333, %4301
  %4336 = fadd fast float %4335, %4309
  %4337 = fsub fast float %4334, %4302
  %4338 = fadd fast float %4337, %4309
  %4339 = extractvalue %dx.types.CBufRet.f32 %4300, 3
  %4340 = fmul fast float %4336, %4339
  %4341 = fmul fast float %4338, %4339
  %4342 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4344 = fsub fast float 1.000000e+00, %4342
  %4345 = fsub fast float 1.000000e+00, %4343
  %4346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %4344, float %4345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = fcmp fast ugt float %4347, 0.000000e+00
  br i1 %4348, label %4349, label %4652

; <label>:4349                                    ; preds = %4311
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 2
  %4352 = fmul fast float %4351, %4347
  %4353 = extractvalue %dx.types.CBufRet.f32 %4350, 3
  %4354 = fadd fast float %4353, %4352
  %4355 = extractvalue %dx.types.CBufRet.f32 %4316, 2
  %4356 = fadd fast float %4354, %4323
  %4357 = fmul fast float %4329, %4317
  %4358 = call float @dx.op.tertiary.f32(i32 46, float %4332, float %4320, float %4357)  ; FMad(a,b,c)
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4356, float %4355, float %4358)  ; FMad(a,b,c)
  %4360 = fsub fast float %4359, %4323
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 2
  %4363 = fsub fast float %4360, %4362
  %4364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %4344, float %4345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.ResRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.ResRet.f32 %4364, 2
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %4344, float %4345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = fadd fast float %4369, %4365
  %4373 = fmul fast float %4372, 0x3F847AE140000000
  %4374 = fadd fast float %4370, %4366
  %4375 = fmul fast float %4374, 0x3F847AE140000000
  %4376 = fadd fast float %4371, %4367
  %4377 = fmul fast float %4376, 0x3F847AE140000000
  br label %4652

; <label>:4378                                    ; preds = %4237
  %4379 = and i32 %260, 1
  %4380 = icmp eq i32 %4379, 0
  br i1 %4380, label %4652, label %4381

; <label>:4381                                    ; preds = %4378
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4389 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4390 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4391 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4392 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4393 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4394 = fadd fast float %4391, %4297
  %4395 = fadd fast float %4392, %4298
  %4396 = fadd fast float %4393, %4299
  %4397 = fmul fast float %4394, %4383
  %4398 = call float @dx.op.tertiary.f32(i32 46, float %4395, float %4385, float %4397)  ; FMad(a,b,c)
  %4399 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4387, float %4398)  ; FMad(a,b,c)
  %4400 = fmul fast float %4394, %4388
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4395, float %4389, float %4400)  ; FMad(a,b,c)
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4390, float %4401)  ; FMad(a,b,c)
  %4403 = fsub fast float %4399, %4391
  %4404 = fsub fast float %4402, %4392
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.CBufRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.CBufRet.f32 %4405, 2
  %4409 = extractvalue %dx.types.CBufRet.f32 %4405, 3
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.i32 %4412, 0
  %4414 = extractvalue %dx.types.CBufRet.i32 %4412, 1
  %4415 = udiv i32 %4414, %4413
  %4416 = fsub fast float %4403, %4406
  %4417 = fsub fast float %4404, %4407
  %4418 = call float @dx.op.binary.f32(i32 35, float %4416, float 0.000000e+00)  ; FMax(a,b)
  %4419 = call float @dx.op.binary.f32(i32 35, float %4417, float 0.000000e+00)  ; FMax(a,b)
  %4420 = call float @dx.op.binary.f32(i32 36, float %4418, float %4408)  ; FMin(a,b)
  %4421 = call float @dx.op.binary.f32(i32 36, float %4419, float %4409)  ; FMin(a,b)
  %4422 = add i32 %4413, -1
  %4423 = add i32 %4415, -1
  %4424 = fmul fast float %4420, %4411
  %4425 = fmul fast float %4421, %4411
  %4426 = fptoui float %4424 to i32
  %4427 = fptoui float %4425 to i32
  %4428 = call i32 @dx.op.binary.i32(i32 40, i32 %4426, i32 %4422)  ; UMin(a,b)
  %4429 = call i32 @dx.op.binary.i32(i32 40, i32 %4427, i32 %4423)  ; UMin(a,b)
  %4430 = mul i32 %4429, %4413
  %4431 = add i32 %4430, %4428
  %4432 = shl i32 %4431, 2
  %4433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.i32 %4433, 0
  %4435 = icmp eq i32 %4434, -1
  br i1 %4435, label %4652, label %4436

; <label>:4436                                    ; preds = %4381
  %4437 = mul i32 %4434, 148
  %4438 = add i32 %4437, 4
  %4439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = add i32 %4437, 8
  %4442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = add i32 %4437, 36
  %4445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = add i32 %4437, 60
  %4448 = add i32 %4437, 92
  %4449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4450 = extractvalue %dx.types.ResRet.i32 %4449, 0
  %4451 = add i32 %4437, 116
  %4452 = fsub fast float %4403, %4440
  %4453 = fsub fast float %4404, %4443
  %4454 = fmul fast float %4411, %4452
  %4455 = fmul fast float %4411, %4453
  %4456 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4458 = fsub fast float 1.000000e+00, %4457
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4461 = call float @dx.op.unary.f32(i32 83, float %4456)  ; DerivCoarseX(value)
  %4462 = call float @dx.op.unary.f32(i32 83, float %4458)  ; DerivCoarseX(value)
  %4463 = call float @dx.op.unary.f32(i32 84, float %4456)  ; DerivCoarseY(value)
  %4464 = call float @dx.op.unary.f32(i32 84, float %4458)  ; DerivCoarseY(value)
  %4465 = fmul fast float %4461, %4460
  %4466 = fmul fast float %4462, %4460
  %4467 = fmul fast float %4463, %4460
  %4468 = fmul fast float %4464, %4460
  %4469 = call float @dx.op.dot2.f32(i32 54, float %4467, float %4468, float %4467, float %4468)  ; Dot2(ax,ay,bx,by)
  %4470 = call float @dx.op.dot2.f32(i32 54, float %4465, float %4466, float %4465, float %4466)  ; Dot2(ax,ay,bx,by)
  %4471 = call float @dx.op.binary.f32(i32 35, float %4470, float %4469)  ; FMax(a,b)
  %4472 = call float @dx.op.unary.f32(i32 23, float %4471)  ; Log(value)
  %4473 = fmul fast float %4472, 5.000000e-01
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4476 = fadd fast float %4475, %4473
  %4477 = call float @dx.op.binary.f32(i32 35, float %4476, float 0.000000e+00)  ; FMax(a,b)
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4480 = fadd fast float %4479, %4477
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4483 = fadd fast float %4480, %4482
  %4484 = add i32 %4450, 0
  %4485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4484, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4486 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4485, i32 0)  ; GetDimensions(handle,mipLevel)
  %4487 = extractvalue %dx.types.Dimensions %4486, 0
  %4488 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4487)  ; FirstbitLo(value)
  %4489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.i32 %4489, 1
  %4491 = sub nsw i32 %4490, %4488
  %4492 = sitofp i32 %4491 to float
  %4493 = fsub fast float %4483, %4492
  %4494 = call float @dx.op.binary.f32(i32 35, float %4493, float 0.000000e+00)  ; FMax(a,b)
  %4495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4485, %dx.types.Handle %54, float %4456, float %4458, float %4446, float undef, i32 0, i32 0, i32 undef, float %4494)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = fcmp ule float %4496, 0x3FE0101020000000
  %4498 = extractvalue %dx.types.CBufRet.i32 %4489, 0
  %4499 = and i32 %4498, 128
  %4500 = icmp ne i32 %4499, 0
  %4501 = and i1 %4497, %4500
  br i1 %4501, label %4652, label %4502

; <label>:4502                                    ; preds = %4436
  %4503 = add i32 %4437, 20
  %4504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = add i32 %4437, 24
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = add i32 %4437, 40
  %4510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = add i32 %4437, 96
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4517 = fmul fast float %4516, %4456
  %4518 = fmul fast float %4516, %4458
  %4519 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4520 = fadd fast float %4517, %4519
  %4521 = fadd fast float %4518, %4519
  %4522 = add i32 %4514, 0
  %4523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4522, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4524 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4523, i32 0)  ; GetDimensions(handle,mipLevel)
  %4525 = extractvalue %dx.types.Dimensions %4524, 0
  %4526 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4525)  ; FirstbitLo(value)
  %4527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.i32 %4527, 1
  %4529 = sub nsw i32 %4528, %4526
  %4530 = sitofp i32 %4529 to float
  %4531 = fsub fast float %4480, %4530
  %4532 = call float @dx.op.binary.f32(i32 35, float %4531, float 0.000000e+00)  ; FMax(a,b)
  %4533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4523, %dx.types.Handle %54, float %4520, float %4521, float %4511, float undef, i32 0, i32 0, i32 undef, float %4532)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = fmul fast float %4534, %4505
  %4536 = fadd fast float %4535, %4508
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.CBufRet.f32 %4537, 2
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4545 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4546 = fadd fast float %4542, %4403
  %4547 = fadd fast float %4544, %4404
  %4548 = fadd fast float %4536, %4545
  %4549 = fmul fast float %4546, %4538
  %4550 = call float @dx.op.tertiary.f32(i32 46, float %4547, float %4539, float %4549)  ; FMad(a,b,c)
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4540, float %4550)  ; FMad(a,b,c)
  %4552 = fsub fast float %4551, %4545
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 2
  %4555 = fsub fast float %4552, %4554
  %4556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.i32 %4556, 0
  %4558 = call i32 @dx.op.binary.i32(i32 40, i32 %4434, i32 %4557)  ; UMin(a,b)
  %4559 = mul i32 %4558, 36
  %4560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.i32 %4560, 0
  %4562 = add i32 %4559, 4
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = fmul fast float %4564, %4456
  %4566 = fmul fast float %4564, %4458
  %4567 = extractvalue %dx.types.CBufRet.f32 %4563, 1
  %4568 = fadd fast float %4565, %4567
  %4569 = fadd fast float %4566, %4567
  %4570 = icmp eq i32 %4561, 0
  br i1 %4570, label %4639, label %4571

; <label>:4571                                    ; preds = %4502
  br label %4572

; <label>:4572                                    ; preds = %4629, %4571
  %4573 = phi float [ %4630, %4629 ], [ 0.000000e+00, %4571 ]
  %4574 = phi float [ %4631, %4629 ], [ 0.000000e+00, %4571 ]
  %4575 = phi float [ %4632, %4629 ], [ 0.000000e+00, %4571 ]
  %4576 = phi float [ %4633, %4629 ], [ 0.000000e+00, %4571 ]
  %4577 = phi float [ %4634, %4629 ], [ 0.000000e+00, %4571 ]
  %4578 = phi float [ %4635, %4629 ], [ 0.000000e+00, %4571 ]
  %4579 = phi i32 [ %4636, %4629 ], [ 0, %4571 ]
  %4580 = shl i32 %4579, 2
  %4581 = add i32 %4447, %4580
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = add i32 %4451, %4580
  %4585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.i32 %4585, 0
  %4587 = add i32 %4586, 0
  %4588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4587, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4589 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4588, i32 0)  ; GetDimensions(handle,mipLevel)
  %4590 = extractvalue %dx.types.Dimensions %4589, 0
  %4591 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4590)  ; FirstbitLo(value)
  %4592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.i32 %4592, 1
  %4594 = sub nsw i32 %4593, %4591
  %4595 = sitofp i32 %4594 to float
  %4596 = fsub fast float %4480, %4595
  %4597 = call float @dx.op.binary.f32(i32 35, float %4596, float 0.000000e+00)  ; FMax(a,b)
  %4598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4588, %dx.types.Handle %54, float %4568, float %4569, float %4583, float undef, i32 0, i32 0, i32 undef, float %4597)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = fcmp fast ogt float %4599, 0.000000e+00
  br i1 %4600, label %4601, label %4629

; <label>:4601                                    ; preds = %4572
  %4602 = add i32 %4562, %4580
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = and i32 %4604, 32767
  %4606 = mul nuw nsw i32 %4605, 928
  %4607 = add nuw nsw i32 %4606, 48
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = add nuw nsw i32 %4606, 60
  %4613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4612, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.ResRet.f32 %4613, 1
  %4616 = extractvalue %dx.types.ResRet.f32 %4613, 2
  %4617 = fmul fast float %4609, %4599
  %4618 = fmul fast float %4610, %4599
  %4619 = fmul fast float %4611, %4599
  %4620 = fadd fast float %4617, %4573
  %4621 = fadd fast float %4618, %4574
  %4622 = fadd fast float %4619, %4575
  %4623 = fmul fast float %4614, %4599
  %4624 = fmul fast float %4615, %4599
  %4625 = fmul fast float %4616, %4599
  %4626 = fadd fast float %4623, %4576
  %4627 = fadd fast float %4624, %4577
  %4628 = fadd fast float %4625, %4578
  br label %4629

; <label>:4629                                    ; preds = %4601, %4572
  %4630 = phi float [ %4620, %4601 ], [ %4573, %4572 ]
  %4631 = phi float [ %4621, %4601 ], [ %4574, %4572 ]
  %4632 = phi float [ %4622, %4601 ], [ %4575, %4572 ]
  %4633 = phi float [ %4626, %4601 ], [ %4576, %4572 ]
  %4634 = phi float [ %4627, %4601 ], [ %4577, %4572 ]
  %4635 = phi float [ %4628, %4601 ], [ %4578, %4572 ]
  %4636 = add nuw i32 %4579, 1
  %4637 = icmp eq i32 %4636, %4561
  br i1 %4637, label %4638, label %4572

; <label>:4638                                    ; preds = %4629
  br label %4639

; <label>:4639                                    ; preds = %4638, %4502
  %4640 = phi float [ 0.000000e+00, %4502 ], [ %4630, %4638 ]
  %4641 = phi float [ 0.000000e+00, %4502 ], [ %4631, %4638 ]
  %4642 = phi float [ 0.000000e+00, %4502 ], [ %4632, %4638 ]
  %4643 = phi float [ 0.000000e+00, %4502 ], [ %4633, %4638 ]
  %4644 = phi float [ 0.000000e+00, %4502 ], [ %4634, %4638 ]
  %4645 = phi float [ 0.000000e+00, %4502 ], [ %4635, %4638 ]
  %4646 = fadd fast float %4643, %4640
  %4647 = fmul fast float %4646, 0x3F847AE140000000
  %4648 = fadd fast float %4644, %4641
  %4649 = fmul fast float %4648, 0x3F847AE140000000
  %4650 = fadd fast float %4645, %4642
  %4651 = fmul fast float %4650, 0x3F847AE140000000
  br label %4652

; <label>:4652                                    ; preds = %4639, %4436, %4381, %4378, %4349, %4311
  %4653 = phi float [ %4373, %4349 ], [ 0.000000e+00, %4311 ], [ %4647, %4639 ], [ 0.000000e+00, %4381 ], [ 0.000000e+00, %4436 ], [ 0.000000e+00, %4378 ]
  %4654 = phi float [ %4375, %4349 ], [ 0.000000e+00, %4311 ], [ %4649, %4639 ], [ 0.000000e+00, %4381 ], [ 0.000000e+00, %4436 ], [ 0.000000e+00, %4378 ]
  %4655 = phi float [ %4377, %4349 ], [ 0.000000e+00, %4311 ], [ %4651, %4639 ], [ 0.000000e+00, %4381 ], [ 0.000000e+00, %4436 ], [ 0.000000e+00, %4378 ]
  %4656 = phi float [ %4363, %4349 ], [ -1.310720e+05, %4311 ], [ %4555, %4639 ], [ -1.310720e+05, %4381 ], [ -1.310720e+05, %4436 ], [ -1.310720e+05, %4378 ]
  %4657 = phi i1 [ true, %4349 ], [ false, %4311 ], [ true, %4639 ], [ false, %4381 ], [ false, %4436 ], [ false, %4378 ]
  %4658 = and i32 %260, 3
  %4659 = icmp eq i32 %4658, 1
  %4660 = select i1 %4659, float 1.000000e+00, float 0.000000e+00
  %4661 = fsub fast float %4656, %211
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = select i1 %4657, float %4662, float 1.000000e+00
  %4664 = fmul fast float %4663, %4660
  %4665 = icmp eq i32 %4658, 3
  %4666 = select i1 %4665, float 1.000000e+00, float %4664
  %4667 = call float @dx.op.binary.f32(i32 35, float %4253, float %4666)  ; FMax(a,b)
  %4668 = fcmp fast olt float %4666, 1.000000e+00
  %4669 = fcmp uge float %82, 0.000000e+00
  %4670 = and i1 %4669, %4668
  br i1 %4670, label %4671, label %4681

; <label>:4671                                    ; preds = %4652
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %82, float %83, float %84, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = fadd fast float %4673, %4667
  %4677 = fcmp ule float %81, 0.000000e+00
  %4678 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = select i1 %4677, float %4678, float 1.000000e+00
  %4680 = fmul fast float %4679, %4675
  br label %4681

; <label>:4681                                    ; preds = %4671, %4652
  %4682 = phi float [ %4676, %4671 ], [ %4667, %4652 ]
  %4683 = phi float [ %4674, %4671 ], [ 0.000000e+00, %4652 ]
  %4684 = phi float [ %4680, %4671 ], [ 0.000000e+00, %4652 ]
  %4685 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4688 = fcmp fast une float %4686, 0.000000e+00
  %4689 = fcmp fast une float %4687, 0.000000e+00
  %4690 = or i1 %4688, %4689
  br i1 %4690, label %4691, label %5250

; <label>:4691                                    ; preds = %4681
  br i1 %4688, label %4692, label %4965

; <label>:4692                                    ; preds = %4691
  %4693 = call float @dx.op.unary.f32(i32 23, float %4250)  ; Log(value)
  %4694 = fmul fast float %4693, 4.000000e+00
  %4695 = call float @dx.op.unary.f32(i32 21, float %4694)  ; Exp(value)
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = fmul fast float %4697, %68
  %4699 = fmul fast float %4697, %69
  %4700 = fmul fast float %4697, %70
  %4701 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4702 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %4703 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %4704 = call float @dx.op.unary.f32(i32 23, float %4701)  ; Log(value)
  %4705 = call float @dx.op.unary.f32(i32 23, float %4702)  ; Log(value)
  %4706 = call float @dx.op.unary.f32(i32 23, float %4703)  ; Log(value)
  %4707 = fmul fast float %4704, 4.000000e+00
  %4708 = fmul fast float %4705, 4.000000e+00
  %4709 = fmul fast float %4706, 4.000000e+00
  %4710 = call float @dx.op.unary.f32(i32 21, float %4707)  ; Exp(value)
  %4711 = call float @dx.op.unary.f32(i32 21, float %4708)  ; Exp(value)
  %4712 = call float @dx.op.unary.f32(i32 21, float %4709)  ; Exp(value)
  %4713 = fadd fast float %4711, %4710
  %4714 = fadd fast float %4713, %4712
  %4715 = fdiv fast float 1.000000e+00, %4714
  %4716 = fmul fast float %4715, %4710
  %4717 = fcmp fast ogt float %78, 0.000000e+00
  %4718 = fcmp fast ogt float %79, 0.000000e+00
  %4719 = fcmp fast ogt float %80, 0.000000e+00
  %4720 = fcmp fast olt float %78, 0.000000e+00
  %4721 = fcmp fast olt float %79, 0.000000e+00
  %4722 = fcmp fast olt float %80, 0.000000e+00
  %4723 = zext i1 %4717 to i32
  %4724 = zext i1 %4718 to i32
  %4725 = zext i1 %4719 to i32
  %4726 = zext i1 %4720 to i32
  %4727 = zext i1 %4721 to i32
  %4728 = zext i1 %4722 to i32
  %4729 = sub nsw i32 %4723, %4726
  %4730 = sub nsw i32 %4724, %4727
  %4731 = sub nsw i32 %4725, %4728
  %4732 = call float @dx.op.unary.f32(i32 83, float %4698)  ; DerivCoarseX(value)
  %4733 = call float @dx.op.unary.f32(i32 83, float %4699)  ; DerivCoarseX(value)
  %4734 = call float @dx.op.unary.f32(i32 83, float %4700)  ; DerivCoarseX(value)
  %4735 = call float @dx.op.unary.f32(i32 84, float %4698)  ; DerivCoarseY(value)
  %4736 = call float @dx.op.unary.f32(i32 84, float %4699)  ; DerivCoarseY(value)
  %4737 = call float @dx.op.unary.f32(i32 84, float %4700)  ; DerivCoarseY(value)
  %4738 = fcmp fast ole float %292, %4716
  %4739 = fmul fast float %4715, %4713
  %4740 = fcmp fast ole float %292, %4739
  %4741 = select i1 %4740, float %4700, float %4698
  %4742 = select i1 %4740, float %4698, float %4699
  %4743 = select i1 %4738, float %4699, float %4741
  %4744 = select i1 %4738, float %4700, float %4742
  %4745 = select i1 %4740, float %4734, float %4732
  %4746 = select i1 %4740, float %4732, float %4733
  %4747 = select i1 %4738, float %4733, float %4745
  %4748 = select i1 %4738, float %4734, float %4746
  %4749 = select i1 %4740, float %4737, float %4735
  %4750 = select i1 %4740, float %4735, float %4736
  %4751 = select i1 %4738, float %4736, float %4749
  %4752 = select i1 %4738, float %4737, float %4750
  %4753 = call float @dx.op.unary.f32(i32 27, float %4743)  ; Round_ni(value)
  %4754 = call float @dx.op.unary.f32(i32 27, float %4744)  ; Round_ni(value)
  %4755 = fptosi float %4753 to i32
  %4756 = fptosi float %4754 to i32
  %4757 = xor i32 %4756, %4755
  %4758 = sitofp i32 %4757 to float
  %4759 = fptosi float %4758 to i32
  %4760 = sitofp i32 %4759 to float
  %4761 = fmul fast float %4760, 0x3FE3C6EF40000000
  %4762 = frem fast float %4753, 2.560000e+02
  %4763 = frem fast float %4754, 2.560000e+02
  %4764 = fptoui float %4762 to i32
  %4765 = fptoui float %4763 to i32
  %4766 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4764, i32 %4765, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4767 = extractvalue %dx.types.ResRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.ResRet.f32 %4766, 1
  %4769 = extractvalue %dx.types.ResRet.f32 %4766, 2
  %4770 = fadd fast float %4767, %4761
  %4771 = fadd fast float %4768, %4761
  %4772 = fadd fast float %4769, %4761
  %4773 = call float @dx.op.unary.f32(i32 22, float %4770)  ; Frc(value)
  %4774 = call float @dx.op.unary.f32(i32 22, float %4771)  ; Frc(value)
  %4775 = call float @dx.op.unary.f32(i32 22, float %4772)  ; Frc(value)
  %4776 = fmul fast float %4775, 0x401921FB60000000
  %4777 = call float @dx.op.unary.f32(i32 13, float %4776)  ; Sin(value)
  %4778 = call float @dx.op.unary.f32(i32 12, float %4776)  ; Cos(value)
  %4779 = fsub fast float -0.000000e+00, %4778
  %4780 = fmul fast float %4778, %4743
  %4781 = call float @dx.op.tertiary.f32(i32 46, float %4777, float %4744, float %4780)  ; FMad(a,b,c)
  %4782 = fmul fast float %4777, %4743
  %4783 = call float @dx.op.tertiary.f32(i32 46, float %4779, float %4744, float %4782)  ; FMad(a,b,c)
  %4784 = fadd fast float %4781, %4773
  %4785 = fadd fast float %4783, %4774
  %4786 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4787 = bitcast float %4786 to i32
  %4788 = icmp eq i32 %4787, 0
  br i1 %4788, label %4827, label %4789

; <label>:4789                                    ; preds = %4692
  %4790 = add i32 %4787, 0
  %4791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4792 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4791, %dx.types.Handle %123, float %4784, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float %4747, float %4748, float undef, float %4751, float %4752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4797 = fsub fast float 1.000000e+00, %4686
  %4798 = call float @dx.op.binary.f32(i32 35, float %4797, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4799 = bitcast float %4686 to i32
  %4800 = sitofp i32 %4799 to float
  %4801 = fadd fast float %4800, 0xC1CFBF8940000000
  %4802 = fmul fast float %4796, %4801
  %4803 = fadd fast float %4802, 0x41CFBF8940000000
  %4804 = fptosi float %4803 to i32
  %4805 = bitcast i32 %4804 to float
  %4806 = bitcast float %4798 to i32
  %4807 = sitofp i32 %4806 to float
  %4808 = fadd fast float %4807, 0xC1CFBF8940000000
  %4809 = fmul fast float %4808, %4796
  %4810 = fadd fast float %4809, 0x41CFBF8940000000
  %4811 = fptosi float %4810 to i32
  %4812 = bitcast i32 %4811 to float
  %4813 = fmul fast float %4805, %4795
  %4814 = fmul fast float %4812, %4795
  %4815 = fsub fast float %4798, %4813
  %4816 = fadd fast float %4814, %4798
  %4817 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4819 = fsub fast float %4793, %4817
  %4820 = fsub fast float %4818, %4817
  %4821 = bitcast float %4820 to i32
  %4822 = sub nsw i32 2129859010, %4821
  %4823 = bitcast i32 %4822 to float
  %4824 = fmul fast float %4823, %4819
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = fcmp fast olt float %4825, 0x3F70101020000000
  br i1 %4826, label %4965, label %4827

; <label>:4827                                    ; preds = %4789, %4692
  %4828 = phi float [ %4825, %4789 ], [ %4686, %4692 ]
  %4829 = fmul fast float %4828, %4695
  %4830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.i32 %4830, 1
  %4832 = extractvalue %dx.types.CBufRet.i32 %4830, 0
  %4833 = add i32 %4832, 0
  %4834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4835 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4834, %dx.types.Handle %122, float %4784, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float %4747, float %4748, float undef, float %4751, float %4752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.ResRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.ResRet.f32 %4835, 2
  %4839 = extractvalue %dx.types.ResRet.f32 %4835, 3
  %4840 = and i32 %4831, 255
  %4841 = uitofp i32 %4840 to float
  %4842 = lshr i32 %4831, 8
  %4843 = and i32 %4842, 255
  %4844 = uitofp i32 %4843 to float
  %4845 = fmul fast float %4839, %4841
  %4846 = fadd fast float %4845, %4844
  %4847 = fmul fast float %4846, 0x3F70101000000000
  %4848 = fadd fast float %4847, 0xBFB99999A0000000
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4849, 0x3FF1C71C80000000
  %4851 = call float @dx.op.binary.f32(i32 36, float %4847, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4852 = fsub fast float 1.000000e+00, %4850
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4853, %4836
  %4855 = fmul fast float %4853, %4837
  %4856 = fmul fast float %4853, %4838
  %4857 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4858 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = fmul fast float %4850, %4836
  %4861 = fmul fast float %4850, %4837
  %4862 = fmul fast float %4850, %4838
  %4863 = fadd fast float %4860, %4851
  %4864 = fadd fast float %4861, %4851
  %4865 = fadd fast float %4862, %4851
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.i32 %4869, 3
  %4871 = extractvalue %dx.types.CBufRet.i32 %4869, 2
  %4872 = add i32 %4871, 0
  %4873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4874 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4873, %dx.types.Handle %122, float %4784, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float %4747, float %4748, float undef, float %4751, float %4752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4875 = extractvalue %dx.types.ResRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.ResRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.ResRet.f32 %4874, 2
  %4878 = extractvalue %dx.types.ResRet.f32 %4874, 3
  %4879 = and i32 %4870, 255
  %4880 = uitofp i32 %4879 to float
  %4881 = lshr i32 %4870, 8
  %4882 = and i32 %4881, 255
  %4883 = uitofp i32 %4882 to float
  %4884 = lshr i32 %4870, 16
  %4885 = and i32 %4884, 255
  %4886 = uitofp i32 %4885 to float
  %4887 = fmul fast float %4886, 0x3F70101000000000
  %4888 = fmul fast float %4875, %4880
  %4889 = fadd fast float %4888, %4883
  %4890 = fmul fast float %4889, 0x3F70101000000000
  %4891 = fadd fast float %4876, -5.000000e-01
  %4892 = fadd fast float %4878, -5.000000e-01
  %4893 = fmul fast float %4891, %4887
  %4894 = fmul fast float %4892, %4887
  %4895 = fadd fast float %4893, 5.000000e-01
  %4896 = fadd fast float %4894, 5.000000e-01
  %4897 = fmul fast float %4895, 2.000000e+00
  %4898 = fadd fast float %4897, -1.000000e+00
  %4899 = fmul fast float %4896, 2.000000e+00
  %4900 = fadd fast float %4899, -1.000000e+00
  %4901 = fadd fast float %4898, %4900
  %4902 = fmul fast float %4901, 5.000000e-01
  %4903 = fsub fast float %4898, %4900
  %4904 = fmul fast float %4903, 5.000000e-01
  %4905 = call float @dx.op.unary.f32(i32 6, float %4902)  ; FAbs(value)
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = call float @dx.op.unary.f32(i32 6, float %4904)  ; FAbs(value)
  %4908 = fsub fast float %4906, %4907
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4904, float %4908, float %4902, float %4904, float %4908)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = call float @dx.op.unary.f32(i32 25, float %4909)  ; Rsqrt(value)
  %4911 = fmul fast float %4902, %4910
  %4912 = fmul fast float %4904, %4910
  %4913 = select i1 %4740, i32 %4730, i32 %4731
  %4914 = select i1 %4738, i32 %4729, i32 %4913
  %4915 = sitofp i32 %4914 to float
  %4916 = fmul fast float %4908, %4915
  %4917 = fmul fast float %4916, %4910
  %4918 = select i1 %4740, float %4917, float %4912
  %4919 = select i1 %4740, float %4912, float %4917
  %4920 = select i1 %4738, float %4917, float %4911
  %4921 = select i1 %4738, float %4912, float %4918
  %4922 = select i1 %4738, float %4911, float %4919
  %4923 = fsub fast float %4857, %4290
  %4924 = fsub fast float %4858, %4291
  %4925 = fsub fast float %4859, %4292
  %4926 = fmul fast float %4923, %4829
  %4927 = fmul fast float %4924, %4829
  %4928 = fmul fast float %4925, %4829
  %4929 = fadd fast float %4926, %4290
  %4930 = fadd fast float %4927, %4291
  %4931 = fadd fast float %4928, %4292
  %4932 = fsub fast float %4866, %4275
  %4933 = fsub fast float %4867, %4276
  %4934 = fsub fast float %4868, %4277
  %4935 = fmul fast float %4932, %4829
  %4936 = fmul fast float %4933, %4829
  %4937 = fmul fast float %4934, %4829
  %4938 = fadd fast float %4935, %4275
  %4939 = fadd fast float %4936, %4276
  %4940 = fadd fast float %4937, %4277
  %4941 = fadd fast float %4920, %4238
  %4942 = fadd fast float %4921, %4239
  %4943 = fadd fast float %4922, %4240
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4941, float %4942, float %4943, float %4941, float %4942, float %4943)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.unary.f32(i32 25, float %4944)  ; Rsqrt(value)
  %4946 = fmul fast float %4941, %4945
  %4947 = fmul fast float %4942, %4945
  %4948 = fmul fast float %4943, %4945
  %4949 = fsub fast float %4946, %4238
  %4950 = fsub fast float %4947, %4239
  %4951 = fsub fast float %4948, %4240
  %4952 = fmul fast float %4949, %4829
  %4953 = fmul fast float %4950, %4829
  %4954 = fmul fast float %4951, %4829
  %4955 = fadd fast float %4952, %4238
  %4956 = fadd fast float %4953, %4239
  %4957 = fadd fast float %4954, %4240
  %4958 = call float @dx.op.binary.f32(i32 36, float %4250, float %4877)  ; FMin(a,b)
  %4959 = fsub fast float %4958, %4250
  %4960 = fmul fast float %4959, %4829
  %4961 = fadd fast float %4960, %4250
  %4962 = fsub fast float %4890, %4278
  %4963 = fmul fast float %4962, %4829
  %4964 = fadd fast float %4963, %4278
  br label %4965

; <label>:4965                                    ; preds = %4827, %4789, %4691
  %4966 = phi float [ %4938, %4827 ], [ %4275, %4789 ], [ %4275, %4691 ]
  %4967 = phi float [ %4939, %4827 ], [ %4276, %4789 ], [ %4276, %4691 ]
  %4968 = phi float [ %4940, %4827 ], [ %4277, %4789 ], [ %4277, %4691 ]
  %4969 = phi float [ %4955, %4827 ], [ %4238, %4789 ], [ %4238, %4691 ]
  %4970 = phi float [ %4956, %4827 ], [ %4239, %4789 ], [ %4239, %4691 ]
  %4971 = phi float [ %4957, %4827 ], [ %4240, %4789 ], [ %4240, %4691 ]
  %4972 = phi float [ %4929, %4827 ], [ %4290, %4789 ], [ %4290, %4691 ]
  %4973 = phi float [ %4930, %4827 ], [ %4291, %4789 ], [ %4291, %4691 ]
  %4974 = phi float [ %4931, %4827 ], [ %4292, %4789 ], [ %4292, %4691 ]
  %4975 = phi float [ %4964, %4827 ], [ %4278, %4789 ], [ %4278, %4691 ]
  %4976 = phi float [ %4961, %4827 ], [ %4250, %4789 ], [ %4250, %4691 ]
  br i1 %4689, label %4977, label %5250

; <label>:4977                                    ; preds = %4965
  %4978 = call float @dx.op.unary.f32(i32 23, float %4976)  ; Log(value)
  %4979 = fmul fast float %4978, 4.000000e+00
  %4980 = call float @dx.op.unary.f32(i32 21, float %4979)  ; Exp(value)
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = fmul fast float %4982, %68
  %4984 = fmul fast float %4982, %69
  %4985 = fmul fast float %4982, %70
  %4986 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4987 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %4988 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %4989 = call float @dx.op.unary.f32(i32 23, float %4986)  ; Log(value)
  %4990 = call float @dx.op.unary.f32(i32 23, float %4987)  ; Log(value)
  %4991 = call float @dx.op.unary.f32(i32 23, float %4988)  ; Log(value)
  %4992 = fmul fast float %4989, 4.000000e+00
  %4993 = fmul fast float %4990, 4.000000e+00
  %4994 = fmul fast float %4991, 4.000000e+00
  %4995 = call float @dx.op.unary.f32(i32 21, float %4992)  ; Exp(value)
  %4996 = call float @dx.op.unary.f32(i32 21, float %4993)  ; Exp(value)
  %4997 = call float @dx.op.unary.f32(i32 21, float %4994)  ; Exp(value)
  %4998 = fadd fast float %4996, %4995
  %4999 = fadd fast float %4998, %4997
  %5000 = fdiv fast float 1.000000e+00, %4999
  %5001 = fmul fast float %5000, %4995
  %5002 = fcmp fast ogt float %78, 0.000000e+00
  %5003 = fcmp fast ogt float %79, 0.000000e+00
  %5004 = fcmp fast ogt float %80, 0.000000e+00
  %5005 = fcmp fast olt float %78, 0.000000e+00
  %5006 = fcmp fast olt float %79, 0.000000e+00
  %5007 = fcmp fast olt float %80, 0.000000e+00
  %5008 = zext i1 %5002 to i32
  %5009 = zext i1 %5003 to i32
  %5010 = zext i1 %5004 to i32
  %5011 = zext i1 %5005 to i32
  %5012 = zext i1 %5006 to i32
  %5013 = zext i1 %5007 to i32
  %5014 = sub nsw i32 %5008, %5011
  %5015 = sub nsw i32 %5009, %5012
  %5016 = sub nsw i32 %5010, %5013
  %5017 = call float @dx.op.unary.f32(i32 83, float %4983)  ; DerivCoarseX(value)
  %5018 = call float @dx.op.unary.f32(i32 83, float %4984)  ; DerivCoarseX(value)
  %5019 = call float @dx.op.unary.f32(i32 83, float %4985)  ; DerivCoarseX(value)
  %5020 = call float @dx.op.unary.f32(i32 84, float %4983)  ; DerivCoarseY(value)
  %5021 = call float @dx.op.unary.f32(i32 84, float %4984)  ; DerivCoarseY(value)
  %5022 = call float @dx.op.unary.f32(i32 84, float %4985)  ; DerivCoarseY(value)
  %5023 = fcmp fast ole float %292, %5001
  %5024 = fmul fast float %5000, %4998
  %5025 = fcmp fast ole float %292, %5024
  %5026 = select i1 %5025, float %4985, float %4983
  %5027 = select i1 %5025, float %4983, float %4984
  %5028 = select i1 %5023, float %4984, float %5026
  %5029 = select i1 %5023, float %4985, float %5027
  %5030 = select i1 %5025, float %5019, float %5017
  %5031 = select i1 %5025, float %5017, float %5018
  %5032 = select i1 %5023, float %5018, float %5030
  %5033 = select i1 %5023, float %5019, float %5031
  %5034 = select i1 %5025, float %5022, float %5020
  %5035 = select i1 %5025, float %5020, float %5021
  %5036 = select i1 %5023, float %5021, float %5034
  %5037 = select i1 %5023, float %5022, float %5035
  %5038 = call float @dx.op.unary.f32(i32 27, float %5028)  ; Round_ni(value)
  %5039 = call float @dx.op.unary.f32(i32 27, float %5029)  ; Round_ni(value)
  %5040 = fptosi float %5038 to i32
  %5041 = fptosi float %5039 to i32
  %5042 = xor i32 %5041, %5040
  %5043 = sitofp i32 %5042 to float
  %5044 = fptosi float %5043 to i32
  %5045 = sitofp i32 %5044 to float
  %5046 = fmul fast float %5045, 0x3FE3C6EF40000000
  %5047 = frem fast float %5038, 2.560000e+02
  %5048 = frem fast float %5039, 2.560000e+02
  %5049 = fptoui float %5047 to i32
  %5050 = fptoui float %5048 to i32
  %5051 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5049, i32 %5050, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5052 = extractvalue %dx.types.ResRet.f32 %5051, 0
  %5053 = extractvalue %dx.types.ResRet.f32 %5051, 1
  %5054 = extractvalue %dx.types.ResRet.f32 %5051, 2
  %5055 = fadd fast float %5052, %5046
  %5056 = fadd fast float %5053, %5046
  %5057 = fadd fast float %5054, %5046
  %5058 = call float @dx.op.unary.f32(i32 22, float %5055)  ; Frc(value)
  %5059 = call float @dx.op.unary.f32(i32 22, float %5056)  ; Frc(value)
  %5060 = call float @dx.op.unary.f32(i32 22, float %5057)  ; Frc(value)
  %5061 = fmul fast float %5060, 0x401921FB60000000
  %5062 = call float @dx.op.unary.f32(i32 13, float %5061)  ; Sin(value)
  %5063 = call float @dx.op.unary.f32(i32 12, float %5061)  ; Cos(value)
  %5064 = fsub fast float -0.000000e+00, %5063
  %5065 = fmul fast float %5063, %5028
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %5062, float %5029, float %5065)  ; FMad(a,b,c)
  %5067 = fmul fast float %5062, %5028
  %5068 = call float @dx.op.tertiary.f32(i32 46, float %5064, float %5029, float %5067)  ; FMad(a,b,c)
  %5069 = fadd fast float %5066, %5058
  %5070 = fadd fast float %5068, %5059
  %5071 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %5072 = bitcast float %5071 to i32
  %5073 = icmp eq i32 %5072, 0
  br i1 %5073, label %5112, label %5074

; <label>:5074                                    ; preds = %4977
  %5075 = add i32 %5072, 0
  %5076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5077 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5076, %dx.types.Handle %123, float %5069, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float %5032, float %5033, float undef, float %5036, float %5037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.f32 %5079, 1
  %5081 = extractvalue %dx.types.CBufRet.f32 %5079, 2
  %5082 = fsub fast float 1.000000e+00, %4687
  %5083 = call float @dx.op.binary.f32(i32 35, float %5082, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5084 = bitcast float %4687 to i32
  %5085 = sitofp i32 %5084 to float
  %5086 = fadd fast float %5085, 0xC1CFBF8940000000
  %5087 = fmul fast float %5081, %5086
  %5088 = fadd fast float %5087, 0x41CFBF8940000000
  %5089 = fptosi float %5088 to i32
  %5090 = bitcast i32 %5089 to float
  %5091 = bitcast float %5083 to i32
  %5092 = sitofp i32 %5091 to float
  %5093 = fadd fast float %5092, 0xC1CFBF8940000000
  %5094 = fmul fast float %5093, %5081
  %5095 = fadd fast float %5094, 0x41CFBF8940000000
  %5096 = fptosi float %5095 to i32
  %5097 = bitcast i32 %5096 to float
  %5098 = fmul fast float %5090, %5080
  %5099 = fmul fast float %5097, %5080
  %5100 = fsub fast float %5083, %5098
  %5101 = fadd fast float %5099, %5083
  %5102 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5104 = fsub fast float %5078, %5102
  %5105 = fsub fast float %5103, %5102
  %5106 = bitcast float %5105 to i32
  %5107 = sub nsw i32 2129859010, %5106
  %5108 = bitcast i32 %5107 to float
  %5109 = fmul fast float %5108, %5104
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fcmp fast olt float %5110, 0x3F70101020000000
  br i1 %5111, label %5250, label %5112

; <label>:5112                                    ; preds = %5074, %4977
  %5113 = phi float [ %5110, %5074 ], [ %4687, %4977 ]
  %5114 = fmul fast float %5113, %4980
  %5115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.i32 %5115, 1
  %5117 = extractvalue %dx.types.CBufRet.i32 %5115, 0
  %5118 = add i32 %5117, 0
  %5119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5119, %dx.types.Handle %122, float %5069, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float %5032, float %5033, float undef, float %5036, float %5037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5121 = extractvalue %dx.types.ResRet.f32 %5120, 0
  %5122 = extractvalue %dx.types.ResRet.f32 %5120, 1
  %5123 = extractvalue %dx.types.ResRet.f32 %5120, 2
  %5124 = extractvalue %dx.types.ResRet.f32 %5120, 3
  %5125 = and i32 %5116, 255
  %5126 = uitofp i32 %5125 to float
  %5127 = lshr i32 %5116, 8
  %5128 = and i32 %5127, 255
  %5129 = uitofp i32 %5128 to float
  %5130 = fmul fast float %5124, %5126
  %5131 = fadd fast float %5130, %5129
  %5132 = fmul fast float %5131, 0x3F70101000000000
  %5133 = fadd fast float %5132, 0xBFB99999A0000000
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = fmul fast float %5134, 0x3FF1C71C80000000
  %5136 = call float @dx.op.binary.f32(i32 36, float %5132, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5137 = fsub fast float 1.000000e+00, %5135
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %5138, %5121
  %5140 = fmul fast float %5138, %5122
  %5141 = fmul fast float %5138, %5123
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5145 = fmul fast float %5135, %5121
  %5146 = fmul fast float %5135, %5122
  %5147 = fmul fast float %5135, %5123
  %5148 = fadd fast float %5145, %5136
  %5149 = fadd fast float %5146, %5136
  %5150 = fadd fast float %5147, %5136
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.i32 %5154, 3
  %5156 = extractvalue %dx.types.CBufRet.i32 %5154, 2
  %5157 = add i32 %5156, 0
  %5158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5159 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5158, %dx.types.Handle %122, float %5069, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float %5032, float %5033, float undef, float %5036, float %5037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.ResRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.ResRet.f32 %5159, 2
  %5163 = extractvalue %dx.types.ResRet.f32 %5159, 3
  %5164 = and i32 %5155, 255
  %5165 = uitofp i32 %5164 to float
  %5166 = lshr i32 %5155, 8
  %5167 = and i32 %5166, 255
  %5168 = uitofp i32 %5167 to float
  %5169 = lshr i32 %5155, 16
  %5170 = and i32 %5169, 255
  %5171 = uitofp i32 %5170 to float
  %5172 = fmul fast float %5171, 0x3F70101000000000
  %5173 = fmul fast float %5160, %5165
  %5174 = fadd fast float %5173, %5168
  %5175 = fmul fast float %5174, 0x3F70101000000000
  %5176 = fadd fast float %5161, -5.000000e-01
  %5177 = fadd fast float %5163, -5.000000e-01
  %5178 = fmul fast float %5176, %5172
  %5179 = fmul fast float %5177, %5172
  %5180 = fadd fast float %5178, 5.000000e-01
  %5181 = fadd fast float %5179, 5.000000e-01
  %5182 = fmul fast float %5180, 2.000000e+00
  %5183 = fadd fast float %5182, -1.000000e+00
  %5184 = fmul fast float %5181, 2.000000e+00
  %5185 = fadd fast float %5184, -1.000000e+00
  %5186 = fadd fast float %5183, %5185
  %5187 = fmul fast float %5186, 5.000000e-01
  %5188 = fsub fast float %5183, %5185
  %5189 = fmul fast float %5188, 5.000000e-01
  %5190 = call float @dx.op.unary.f32(i32 6, float %5187)  ; FAbs(value)
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = call float @dx.op.unary.f32(i32 6, float %5189)  ; FAbs(value)
  %5193 = fsub fast float %5191, %5192
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5189, float %5193, float %5187, float %5189, float %5193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = call float @dx.op.unary.f32(i32 25, float %5194)  ; Rsqrt(value)
  %5196 = fmul fast float %5187, %5195
  %5197 = fmul fast float %5189, %5195
  %5198 = select i1 %5025, i32 %5015, i32 %5016
  %5199 = select i1 %5023, i32 %5014, i32 %5198
  %5200 = sitofp i32 %5199 to float
  %5201 = fmul fast float %5193, %5200
  %5202 = fmul fast float %5201, %5195
  %5203 = select i1 %5025, float %5202, float %5197
  %5204 = select i1 %5025, float %5197, float %5202
  %5205 = select i1 %5023, float %5202, float %5196
  %5206 = select i1 %5023, float %5197, float %5203
  %5207 = select i1 %5023, float %5196, float %5204
  %5208 = fsub fast float %5142, %4972
  %5209 = fsub fast float %5143, %4973
  %5210 = fsub fast float %5144, %4974
  %5211 = fmul fast float %5208, %5114
  %5212 = fmul fast float %5209, %5114
  %5213 = fmul fast float %5210, %5114
  %5214 = fadd fast float %5211, %4972
  %5215 = fadd fast float %5212, %4973
  %5216 = fadd fast float %5213, %4974
  %5217 = fsub fast float %5151, %4966
  %5218 = fsub fast float %5152, %4967
  %5219 = fsub fast float %5153, %4968
  %5220 = fmul fast float %5217, %5114
  %5221 = fmul fast float %5218, %5114
  %5222 = fmul fast float %5219, %5114
  %5223 = fadd fast float %5220, %4966
  %5224 = fadd fast float %5221, %4967
  %5225 = fadd fast float %5222, %4968
  %5226 = fadd fast float %5205, %4969
  %5227 = fadd fast float %5206, %4970
  %5228 = fadd fast float %5207, %4971
  %5229 = call float @dx.op.dot3.f32(i32 55, float %5226, float %5227, float %5228, float %5226, float %5227, float %5228)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = call float @dx.op.unary.f32(i32 25, float %5229)  ; Rsqrt(value)
  %5231 = fmul fast float %5226, %5230
  %5232 = fmul fast float %5227, %5230
  %5233 = fmul fast float %5228, %5230
  %5234 = fsub fast float %5231, %4969
  %5235 = fsub fast float %5232, %4970
  %5236 = fsub fast float %5233, %4971
  %5237 = fmul fast float %5234, %5114
  %5238 = fmul fast float %5235, %5114
  %5239 = fmul fast float %5236, %5114
  %5240 = fadd fast float %5237, %4969
  %5241 = fadd fast float %5238, %4970
  %5242 = fadd fast float %5239, %4971
  %5243 = call float @dx.op.binary.f32(i32 36, float %4976, float %5162)  ; FMin(a,b)
  %5244 = fsub fast float %5243, %4976
  %5245 = fmul fast float %5244, %5114
  %5246 = fadd fast float %5245, %4976
  %5247 = fsub fast float %5175, %4975
  %5248 = fmul fast float %5247, %5114
  %5249 = fadd fast float %5248, %4975
  br label %5250

; <label>:5250                                    ; preds = %5112, %5074, %4965, %4681
  %5251 = phi float [ %5223, %5112 ], [ %4966, %5074 ], [ %4966, %4965 ], [ %4275, %4681 ]
  %5252 = phi float [ %5224, %5112 ], [ %4967, %5074 ], [ %4967, %4965 ], [ %4276, %4681 ]
  %5253 = phi float [ %5225, %5112 ], [ %4968, %5074 ], [ %4968, %4965 ], [ %4277, %4681 ]
  %5254 = phi float [ %5240, %5112 ], [ %4969, %5074 ], [ %4969, %4965 ], [ %4238, %4681 ]
  %5255 = phi float [ %5241, %5112 ], [ %4970, %5074 ], [ %4970, %4965 ], [ %4239, %4681 ]
  %5256 = phi float [ %5242, %5112 ], [ %4971, %5074 ], [ %4971, %4965 ], [ %4240, %4681 ]
  %5257 = phi float [ %5214, %5112 ], [ %4972, %5074 ], [ %4972, %4965 ], [ %4290, %4681 ]
  %5258 = phi float [ %5215, %5112 ], [ %4973, %5074 ], [ %4973, %4965 ], [ %4291, %4681 ]
  %5259 = phi float [ %5216, %5112 ], [ %4974, %5074 ], [ %4974, %4965 ], [ %4292, %4681 ]
  %5260 = phi float [ %5249, %5112 ], [ %4975, %5074 ], [ %4975, %4965 ], [ %4278, %4681 ]
  %5261 = phi float [ %5246, %5112 ], [ %4976, %5074 ], [ %4976, %4965 ], [ %4250, %4681 ]
  %5262 = fcmp fast une float %4685, 0.000000e+00
  br i1 %5262, label %5263, label %5432

; <label>:5263                                    ; preds = %5250
  %5264 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float %209, float %210, float %211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.unary.f32(i32 25, float %5264)  ; Rsqrt(value)
  %5266 = fmul fast float %209, %5265
  %5267 = fsub fast float -0.000000e+00, %5266
  %5268 = fmul fast float %210, %5265
  %5269 = fsub fast float -0.000000e+00, %5268
  %5270 = fmul fast float %211, %5265
  %5271 = fsub fast float -0.000000e+00, %5270
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5269, float %5271, float %135, float %137, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = fmul fast float %4685, 2.500000e+00
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = fmul fast float %4685, 0x4013FFFFE0000000
  %5276 = fadd fast float %5275, 0xBFFFFFFFE0000000
  %5277 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5278 = fmul fast float %4685, 0x4004000020000000
  %5279 = fadd fast float %5278, 0xBFF8000040000000
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %4257, 1.000000e+01
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fmul fast float %5282, 2.000000e+00
  %5284 = fsub fast float 3.000000e+00, %5283
  %5285 = fmul fast float %5282, %5282
  %5286 = fmul fast float %5285, %5284
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = fsub fast float 0x3FE3333340000000, %5260
  %5289 = fmul fast float %5288, 0x400AAAAAA0000000
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = fmul fast float %5287, %5290
  %5292 = fmul fast float %5257, 0x3FEA2B8620000000
  %5293 = fmul fast float %5258, 0x3FEA2B8620000000
  %5294 = fmul fast float %5259, 0x3FEA2B8620000000
  %5295 = fadd fast float %5292, 0x3FC81DFBA0000000
  %5296 = fmul fast float %5295, %5257
  %5297 = fadd fast float %5296, 0x3F910E6020000000
  %5298 = fadd fast float %5293, 0x3FC81DFBA0000000
  %5299 = fmul fast float %5298, %5258
  %5300 = fadd fast float %5299, 0x3F910E6020000000
  %5301 = fadd fast float %5294, 0x3FC81DFBA0000000
  %5302 = fmul fast float %5301, %5259
  %5303 = fadd fast float %5302, 0x3F910E6020000000
  %5304 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5305 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5306 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5307 = fsub fast float %5304, %5257
  %5308 = fsub fast float %5305, %5258
  %5309 = fsub fast float %5306, %5259
  %5310 = fmul fast float %5307, %5274
  %5311 = fmul fast float %5310, %5291
  %5312 = fmul fast float %5308, %5274
  %5313 = fmul fast float %5312, %5291
  %5314 = fmul fast float %5309, %5274
  %5315 = fmul fast float %5314, %5291
  %5316 = fadd fast float %5311, %5257
  %5317 = fadd fast float %5313, %5258
  %5318 = fadd fast float %5315, %5259
  %5319 = fmul fast float %5261, %5261
  %5320 = fmul fast float %5319, %5319
  %5321 = fadd fast float %5277, 1.000000e+00
  %5322 = fsub fast float %5321, %5291
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = call float @dx.op.dot3.f32(i32 55, float %135, float %137, float %139, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = fsub fast float 1.000000e+00, %5320
  %5327 = call float @dx.op.binary.f32(i32 36, float %5323, float %5326)  ; FMin(a,b)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5329 = call float @dx.op.binary.f32(i32 35, float %5327, float %5328)  ; FMax(a,b)
  %5330 = fadd fast float %5325, 0xBFE4CCCCC0000000
  %5331 = fmul fast float %5330, 0x4006DB6DA0000000
  %5332 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5333 = fmul fast float %5332, 2.000000e+00
  %5334 = fsub fast float 3.000000e+00, %5333
  %5335 = bitcast float %5251 to i32
  %5336 = ashr i32 %5335, 1
  %5337 = add nsw i32 %5336, 532487669
  %5338 = bitcast i32 %5337 to float
  %5339 = fsub fast float 1.000000e+00, %5338
  %5340 = bitcast float %5339 to i32
  %5341 = sub nsw i32 2129859010, %5340
  %5342 = bitcast i32 %5341 to float
  %5343 = fmul fast float %5342, 2.000000e+00
  %5344 = bitcast float %5252 to i32
  %5345 = ashr i32 %5344, 1
  %5346 = add nsw i32 %5345, 532487669
  %5347 = bitcast i32 %5346 to float
  %5348 = fsub fast float 1.000000e+00, %5347
  %5349 = bitcast float %5348 to i32
  %5350 = sub nsw i32 2129859010, %5349
  %5351 = bitcast i32 %5350 to float
  %5352 = fmul fast float %5351, 2.000000e+00
  %5353 = bitcast float %5253 to i32
  %5354 = ashr i32 %5353, 1
  %5355 = add nsw i32 %5354, 532487669
  %5356 = bitcast i32 %5355 to float
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = fmul fast float %5360, 2.000000e+00
  %5362 = fsub fast float 0x4002A9FBE0000000, %5343
  %5363 = fadd fast float %5343, 0x3FD54FDF00000000
  %5364 = bitcast float %5363 to i32
  %5365 = sub nsw i32 2129859010, %5364
  %5366 = bitcast i32 %5365 to float
  %5367 = fmul fast float %5366, %5362
  %5368 = fmul fast float %5367, %5367
  %5369 = fsub fast float 0x4002A9FBE0000000, %5352
  %5370 = fadd fast float %5352, 0x3FD54FDF00000000
  %5371 = bitcast float %5370 to i32
  %5372 = sub nsw i32 2129859010, %5371
  %5373 = bitcast i32 %5372 to float
  %5374 = fmul fast float %5373, %5369
  %5375 = fmul fast float %5374, %5374
  %5376 = fsub fast float 0x4002A9FBE0000000, %5361
  %5377 = fadd fast float %5361, 0x3FD54FDF00000000
  %5378 = bitcast float %5377 to i32
  %5379 = sub nsw i32 2129859010, %5378
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5380, %5376
  %5382 = fmul fast float %5381, %5381
  %5383 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5368)  ; FMax(a,b)
  %5384 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5375)  ; FMax(a,b)
  %5385 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5382)  ; FMax(a,b)
  %5386 = fsub fast float 1.000000e+00, %5272
  %5387 = fadd fast float %5386, %5287
  %5388 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5389 = fsub fast float 1.000000e+00, %4666
  %5390 = fmul fast float %5329, %5389
  %5391 = fmul fast float %5332, %5332
  %5392 = fmul fast float %5391, %5390
  %5393 = fmul fast float %5392, %5334
  %5394 = fmul fast float %5389, 0xBFE99999A0000000
  %5395 = fmul fast float %5394, %5274
  %5396 = fmul fast float %5395, %5291
  %5397 = fadd fast float %5396, 1.000000e+00
  %5398 = fadd fast float %5260, -1.000000e+00
  %5399 = fmul fast float %5397, %5398
  %5400 = fadd fast float %5399, 1.000000e+00
  %5401 = fsub fast float %5383, %5251
  %5402 = fsub fast float %5384, %5252
  %5403 = fsub fast float %5385, %5253
  %5404 = fmul fast float %5393, %5401
  %5405 = fmul fast float %5393, %5402
  %5406 = fmul fast float %5393, %5403
  %5407 = fadd fast float %5404, %5251
  %5408 = fadd fast float %5405, %5252
  %5409 = fadd fast float %5406, %5253
  %5410 = fsub fast float %135, %5254
  %5411 = fsub fast float %137, %5255
  %5412 = fsub fast float %139, %5256
  %5413 = fmul fast float %5393, %5410
  %5414 = fmul fast float %5393, %5411
  %5415 = fmul fast float %5393, %5412
  %5416 = fadd fast float %5413, %5254
  %5417 = fadd fast float %5414, %5255
  %5418 = fadd fast float %5415, %5256
  %5419 = fmul fast float %5393, %5388
  %5420 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5421 = fsub fast float 1.000000e+00, %5420
  %5422 = fmul fast float %5419, %5421
  %5423 = fadd fast float %5422, %5420
  %5424 = fsub fast float 1.000000e+00, %5261
  %5425 = fmul fast float %5393, %5424
  %5426 = fadd fast float %5425, %5261
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = call float @dx.op.unary.f32(i32 25, float %5427)  ; Rsqrt(value)
  %5429 = fmul fast float %5416, %5428
  %5430 = fmul fast float %5417, %5428
  %5431 = fmul fast float %5418, %5428
  br label %5432

; <label>:5432                                    ; preds = %5263, %5250
  %5433 = phi float [ %5407, %5263 ], [ %5251, %5250 ]
  %5434 = phi float [ %5408, %5263 ], [ %5252, %5250 ]
  %5435 = phi float [ %5409, %5263 ], [ %5253, %5250 ]
  %5436 = phi float [ %5429, %5263 ], [ %5254, %5250 ]
  %5437 = phi float [ %5430, %5263 ], [ %5255, %5250 ]
  %5438 = phi float [ %5431, %5263 ], [ %5256, %5250 ]
  %5439 = phi float [ %5316, %5263 ], [ %5257, %5250 ]
  %5440 = phi float [ %5317, %5263 ], [ %5258, %5250 ]
  %5441 = phi float [ %5318, %5263 ], [ %5259, %5250 ]
  %5442 = phi float [ %5423, %5263 ], [ %5260, %5250 ]
  %5443 = phi float [ %5426, %5263 ], [ %5261, %5250 ]
  %5444 = icmp eq i32 %66, 0
  br i1 %5444, label %5475, label %5445

; <label>:5445                                    ; preds = %5432
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5448 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5449 = fmul fast float %5447, %126
  %5450 = fmul fast float %5448, %127
  %5451 = fmul fast float %5449, 1.024000e+03
  %5452 = fmul fast float %5450, 1.024000e+03
  %5453 = fadd fast float %5451, -5.120000e+02
  %5454 = fadd fast float %5452, -5.120000e+02
  %5455 = fmul fast float %5449, 0x4081BEDF00000000
  %5456 = fadd fast float %5455, 0xC071BEDF00000000
  %5457 = call float @dx.op.unary.f32(i32 22, float %5456)  ; Frc(value)
  %5458 = fmul fast float %5453, %5457
  %5459 = fadd fast float %5458, %5454
  %5460 = fmul fast float %5450, 0x4073BEBE20000000
  %5461 = fadd fast float %5460, 0xC063BEBE20000000
  %5462 = call float @dx.op.unary.f32(i32 22, float %5461)  ; Frc(value)
  %5463 = fmul fast float %5454, %5462
  %5464 = fadd fast float %5463, %5453
  %5465 = fmul fast float %5459, %5464
  %5466 = call float @dx.op.unary.f32(i32 22, float %5465)  ; Frc(value)
  %5467 = add i32 %335, 12
  %5468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5467, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.i32 %5468, 0
  %5470 = and i32 %5469, 255
  %5471 = uitofp i32 %5470 to float
  %5472 = fmul fast float %5471, 0x3F70101020000000
  %5473 = fcmp fast olt float %5466, %5472
  br i1 %5473, label %5474, label %5475

; <label>:5474                                    ; preds = %5445
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5475

; <label>:5475                                    ; preds = %5474, %5445, %5432
  %5476 = fsub fast float -0.000000e+00, %211
  %5477 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float %209, float %210, float %211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = call float @dx.op.unary.f32(i32 25, float %5477)  ; Rsqrt(value)
  %5479 = fmul fast float %5478, %209
  %5480 = fmul fast float %5478, %210
  %5481 = fmul fast float %5478, %211
  %5482 = fsub fast float -0.000000e+00, %5479
  %5483 = fsub fast float -0.000000e+00, %5480
  %5484 = fsub fast float -0.000000e+00, %5481
  %5485 = select i1 %281, float 0.000000e+00, float %5435
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5482, float %5483, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5480, float %5481, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fmul fast float %5488, 2.000000e+00
  %5490 = fmul fast float %5489, %5436
  %5491 = fmul fast float %5489, %5437
  %5492 = fmul fast float %5489, %5438
  %5493 = fsub fast float %5479, %5490
  %5494 = fsub fast float %5480, %5491
  %5495 = fsub fast float %5481, %5492
  %5496 = call float @dx.op.binary.f32(i32 36, float %5443, float 1.000000e+00)  ; FMin(a,b)
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = bitcast float %5497 to i32
  %5499 = ashr i32 %5498, 1
  %5500 = add nsw i32 %5499, 532487669
  %5501 = bitcast i32 %5500 to float
  %5502 = fsub fast float 1.000000e+00, %5442
  %5503 = call float @dx.op.binary.f32(i32 35, float %5502, float 0x3F847AE140000000)  ; FMax(a,b)
  %5504 = fmul fast float %5503, %5503
  %5505 = fmul fast float %5504, %5504
  %5506 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5501, float %5505, float %5506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = fsub fast float 1.000000e+00, %5443
  %5510 = bitcast float %5509 to i32
  %5511 = sub nsw i32 2129859010, %5510
  %5512 = call float @dx.op.dot3.f32(i32 55, float %93, float %89, float %85, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5513 = fmul fast float %5512, 0x3FD20DD760000000
  %5514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %93)  ; FMax(a,b)
  %5515 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fcmp fast oeq float %5515, 0.000000e+00
  %5517 = fcmp fast oeq float %5514, 0.000000e+00
  %5518 = or i1 %5517, %5516
  br i1 %5518, label %5548, label %5519

; <label>:5519                                    ; preds = %5475
  %5520 = fsub fast float -0.000000e+00, %96
  %5521 = fsub fast float -0.000000e+00, %94
  %5522 = call float @dx.op.unary.f32(i32 24, float %5515)  ; Sqrt(value)
  %5523 = fdiv fast float %5522, %5514
  %5524 = fcmp fast ogt float %5523, 0x3FFB6F8900000000
  %5525 = select i1 %5524, float 0x3FFB6F8900000000, float %5523
  %5526 = fmul fast float %5525, 0x3FE8A23460000000
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = call float @dx.op.binary.f32(i32 35, float %5525, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5529 = fmul fast float %5527, %5514
  %5530 = fmul fast float %5528, 0x3FF279A740000000
  %5531 = fadd fast float %5530, -1.000000e+00
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5520, float %5521, float %95, float %5520, float %5521, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.unary.f32(i32 25, float %5532)  ; Rsqrt(value)
  %5534 = fmul fast float %5533, %5520
  %5535 = fmul fast float %5533, %5521
  %5536 = fmul fast float %5533, %95
  %5537 = fmul fast float %5531, %5531
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = fmul fast float %5528, 0x40005F8BE0000000
  %5540 = fsub fast float 0x400C5BF8A0000000, %5539
  %5541 = fdiv fast float %5529, %5540
  %5542 = fmul fast float %5541, 0x3FEE31C3C0000000
  %5543 = fmul fast float %5542, %5538
  %5544 = fmul fast float %5528, 0x3FDACB7480000000
  %5545 = fadd fast float %5544, 0xBFD7347680000000
  %5546 = fmul fast float %5545, %5541
  %5547 = fmul fast float %5546, %5538
  br label %5548

; <label>:5548                                    ; preds = %5519, %5475
  %5549 = phi float [ %5534, %5519 ], [ 0.000000e+00, %5475 ]
  %5550 = phi float [ %5535, %5519 ], [ 0.000000e+00, %5475 ]
  %5551 = phi float [ %5536, %5519 ], [ 0.000000e+00, %5475 ]
  %5552 = phi float [ %5543, %5519 ], [ 0.000000e+00, %5475 ]
  %5553 = phi float [ %5547, %5519 ], [ 0.000000e+00, %5475 ]
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5550, float %5551, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = fmul fast float %5554, %5554
  %5556 = fmul fast float %5555, 0x3FEE471020000000
  %5557 = fadd fast float %5556, 0xBFD42F6020000000
  %5558 = fmul fast float %5514, 0x3FD20DD760000000
  %5559 = fmul fast float %5557, %5553
  %5560 = fmul fast float %5552, 0x3FDF454380000000
  %5561 = fmul fast float %5560, %5554
  %5562 = fadd fast float %5561, %5558
  %5563 = fadd fast float %5562, %5559
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5550, float %5551, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = fmul fast float %5564, 0x3FDF454380000000
  %5566 = fmul fast float %5564, %5564
  %5567 = fmul fast float %5566, 0x3FEE471020000000
  %5568 = fadd fast float %5567, 0xBFD42F6020000000
  %5569 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5552, float %5553, float 0x3FD20DD760000000, float %5565, float %5568)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %89)  ; FMax(a,b)
  %5571 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = fcmp fast oeq float %5571, 0.000000e+00
  %5573 = fcmp fast oeq float %5570, 0.000000e+00
  %5574 = or i1 %5573, %5572
  br i1 %5574, label %5604, label %5575

; <label>:5575                                    ; preds = %5548
  %5576 = fsub fast float -0.000000e+00, %92
  %5577 = fsub fast float -0.000000e+00, %90
  %5578 = call float @dx.op.unary.f32(i32 24, float %5571)  ; Sqrt(value)
  %5579 = fdiv fast float %5578, %5570
  %5580 = fcmp fast ogt float %5579, 0x3FFB6F8900000000
  %5581 = select i1 %5580, float 0x3FFB6F8900000000, float %5579
  %5582 = fmul fast float %5581, 0x3FE8A23460000000
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = call float @dx.op.binary.f32(i32 35, float %5581, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5585 = fmul fast float %5583, %5570
  %5586 = fmul fast float %5584, 0x3FF279A740000000
  %5587 = fadd fast float %5586, -1.000000e+00
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %91, float %5576, float %5577, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.unary.f32(i32 25, float %5588)  ; Rsqrt(value)
  %5590 = fmul fast float %5589, %5576
  %5591 = fmul fast float %5589, %5577
  %5592 = fmul fast float %5589, %91
  %5593 = fmul fast float %5587, %5587
  %5594 = fsub fast float 1.000000e+00, %5593
  %5595 = fmul fast float %5584, 0x40005F8BE0000000
  %5596 = fsub fast float 0x400C5BF8A0000000, %5595
  %5597 = fdiv fast float %5585, %5596
  %5598 = fmul fast float %5597, 0x3FEE31C3C0000000
  %5599 = fmul fast float %5598, %5594
  %5600 = fmul fast float %5584, 0x3FDACB7480000000
  %5601 = fadd fast float %5600, 0xBFD7347680000000
  %5602 = fmul fast float %5601, %5597
  %5603 = fmul fast float %5602, %5594
  br label %5604

; <label>:5604                                    ; preds = %5575, %5548
  %5605 = phi float [ %5590, %5575 ], [ 0.000000e+00, %5548 ]
  %5606 = phi float [ %5591, %5575 ], [ 0.000000e+00, %5548 ]
  %5607 = phi float [ %5592, %5575 ], [ 0.000000e+00, %5548 ]
  %5608 = phi float [ %5599, %5575 ], [ 0.000000e+00, %5548 ]
  %5609 = phi float [ %5603, %5575 ], [ 0.000000e+00, %5548 ]
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5606, float %5607, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = fmul fast float %5610, %5610
  %5612 = fmul fast float %5611, 0x3FEE471020000000
  %5613 = fadd fast float %5612, 0xBFD42F6020000000
  %5614 = fmul fast float %5570, 0x3FD20DD760000000
  %5615 = fmul fast float %5613, %5609
  %5616 = fmul fast float %5608, 0x3FDF454380000000
  %5617 = fmul fast float %5616, %5610
  %5618 = fadd fast float %5617, %5614
  %5619 = fadd fast float %5618, %5615
  %5620 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5606, float %5607, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = fmul fast float %5620, 0x3FDF454380000000
  %5622 = fmul fast float %5620, %5620
  %5623 = fmul fast float %5622, 0x3FEE471020000000
  %5624 = fadd fast float %5623, 0xBFD42F6020000000
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5570, float %5608, float %5609, float 0x3FD20DD760000000, float %5621, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %85)  ; FMax(a,b)
  %5627 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = fcmp fast oeq float %5627, 0.000000e+00
  %5629 = fcmp fast oeq float %5626, 0.000000e+00
  %5630 = or i1 %5629, %5628
  br i1 %5630, label %5660, label %5631

; <label>:5631                                    ; preds = %5604
  %5632 = fsub fast float -0.000000e+00, %88
  %5633 = fsub fast float -0.000000e+00, %86
  %5634 = call float @dx.op.unary.f32(i32 24, float %5627)  ; Sqrt(value)
  %5635 = fdiv fast float %5634, %5626
  %5636 = fcmp fast ogt float %5635, 0x3FFB6F8900000000
  %5637 = select i1 %5636, float 0x3FFB6F8900000000, float %5635
  %5638 = fmul fast float %5637, 0x3FE8A23460000000
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = call float @dx.op.binary.f32(i32 35, float %5637, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5641 = fmul fast float %5639, %5626
  %5642 = fmul fast float %5640, 0x3FF279A740000000
  %5643 = fadd fast float %5642, -1.000000e+00
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %87, float %5632, float %5633, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = call float @dx.op.unary.f32(i32 25, float %5644)  ; Rsqrt(value)
  %5646 = fmul fast float %5645, %5632
  %5647 = fmul fast float %5645, %5633
  %5648 = fmul fast float %5645, %87
  %5649 = fmul fast float %5643, %5643
  %5650 = fsub fast float 1.000000e+00, %5649
  %5651 = fmul fast float %5640, 0x40005F8BE0000000
  %5652 = fsub fast float 0x400C5BF8A0000000, %5651
  %5653 = fdiv fast float %5641, %5652
  %5654 = fmul fast float %5653, 0x3FEE31C3C0000000
  %5655 = fmul fast float %5654, %5650
  %5656 = fmul fast float %5640, 0x3FDACB7480000000
  %5657 = fadd fast float %5656, 0xBFD7347680000000
  %5658 = fmul fast float %5657, %5653
  %5659 = fmul fast float %5658, %5650
  br label %5660

; <label>:5660                                    ; preds = %5631, %5604
  %5661 = phi float [ %5646, %5631 ], [ 0.000000e+00, %5604 ]
  %5662 = phi float [ %5647, %5631 ], [ 0.000000e+00, %5604 ]
  %5663 = phi float [ %5648, %5631 ], [ 0.000000e+00, %5604 ]
  %5664 = phi float [ %5655, %5631 ], [ 0.000000e+00, %5604 ]
  %5665 = phi float [ %5659, %5631 ], [ 0.000000e+00, %5604 ]
  %5666 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5662, float %5663, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = fmul fast float %5666, %5666
  %5668 = fmul fast float %5667, 0x3FEE471020000000
  %5669 = fadd fast float %5668, 0xBFD42F6020000000
  %5670 = fmul fast float %5626, 0x3FD20DD760000000
  %5671 = fmul fast float %5669, %5665
  %5672 = fmul fast float %5664, 0x3FDF454380000000
  %5673 = fmul fast float %5672, %5666
  %5674 = fadd fast float %5673, %5670
  %5675 = fadd fast float %5674, %5671
  %5676 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5662, float %5663, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = fmul fast float %5676, 0x3FDF454380000000
  %5678 = fmul fast float %5676, %5676
  %5679 = fmul fast float %5678, 0x3FEE471020000000
  %5680 = fadd fast float %5679, 0xBFD42F6020000000
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5664, float %5665, float 0x3FD20DD760000000, float %5677, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = call float @dx.op.binary.f32(i32 35, float %5563, float 0.000000e+00)  ; FMax(a,b)
  %5683 = call float @dx.op.binary.f32(i32 35, float %5619, float 0.000000e+00)  ; FMax(a,b)
  %5684 = call float @dx.op.binary.f32(i32 35, float %5675, float 0.000000e+00)  ; FMax(a,b)
  %5685 = call float @dx.op.binary.f32(i32 35, float %5569, float 0.000000e+00)  ; FMax(a,b)
  %5686 = call float @dx.op.binary.f32(i32 35, float %5625, float 0.000000e+00)  ; FMax(a,b)
  %5687 = call float @dx.op.binary.f32(i32 35, float %5681, float 0.000000e+00)  ; FMax(a,b)
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 0
  %5690 = call float @dx.op.binary.f32(i32 36, float %5439, float %5689)  ; FMin(a,b)
  %5691 = fmul fast float %5690, %5497
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = call float @dx.op.binary.f32(i32 36, float %5440, float %5689)  ; FMin(a,b)
  %5697 = fmul fast float %5696, %5497
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = bitcast float %5698 to i32
  %5700 = sub nsw i32 2129859010, %5699
  %5701 = bitcast i32 %5700 to float
  %5702 = call float @dx.op.binary.f32(i32 36, float %5441, float %5689)  ; FMin(a,b)
  %5703 = fmul fast float %5702, %5497
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = bitcast float %5704 to i32
  %5706 = sub nsw i32 2129859010, %5705
  %5707 = bitcast i32 %5706 to float
  %5708 = fmul fast float %5682, %5496
  %5709 = fmul fast float %5708, %5695
  %5710 = fmul fast float %5683, %5496
  %5711 = fmul fast float %5710, %5701
  %5712 = fmul fast float %5684, %5496
  %5713 = fmul fast float %5712, %5707
  %5714 = call float @dx.op.binary.f32(i32 36, float %5433, float %5689)  ; FMin(a,b)
  %5715 = fmul fast float %5714, %5497
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = bitcast float %5716 to i32
  %5718 = sub nsw i32 2129859010, %5717
  %5719 = bitcast i32 %5718 to float
  %5720 = call float @dx.op.binary.f32(i32 36, float %5434, float %5689)  ; FMin(a,b)
  %5721 = fmul fast float %5720, %5497
  %5722 = fsub fast float 1.000000e+00, %5721
  %5723 = bitcast float %5722 to i32
  %5724 = sub nsw i32 2129859010, %5723
  %5725 = bitcast i32 %5724 to float
  %5726 = call float @dx.op.binary.f32(i32 36, float %5485, float %5689)  ; FMin(a,b)
  %5727 = fmul fast float %5726, %5497
  %5728 = fsub fast float 1.000000e+00, %5727
  %5729 = bitcast float %5728 to i32
  %5730 = sub nsw i32 2129859010, %5729
  %5731 = bitcast i32 %5730 to float
  %5732 = fmul fast float %5685, %5496
  %5733 = fmul fast float %5732, %5719
  %5734 = fmul fast float %5686, %5496
  %5735 = fmul fast float %5734, %5725
  %5736 = fmul fast float %5687, %5496
  %5737 = fmul fast float %5736, %5731
  %5738 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5711, float %5713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = select i1 %281, float 0.000000e+00, float %5709
  %5740 = select i1 %281, float %5738, float %5711
  %5741 = select i1 %281, float 0.000000e+00, float %5713
  %5742 = call float @dx.op.dot3.f32(i32 55, float %5733, float %5735, float %5737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = select i1 %281, float 0.000000e+00, float %5733
  %5744 = select i1 %281, float %5742, float %5735
  %5745 = select i1 %281, float 0.000000e+00, float %5737
  %5746 = fmul fast float %5512, 0x4071A18460000000
  %5747 = fadd fast float %5746, 0x3F0FFB4800000000
  %5748 = call float @dx.op.unary.f32(i32 23, float %5747)  ; Log(value)
  %5749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.i32 %5749, 0
  %5751 = and i32 %5750, 8388608
  %5752 = icmp eq i32 %5751, 0
  br i1 %5752, label %5753, label %5793

; <label>:5753                                    ; preds = %5660
  %5754 = fadd fast float %5748, 0x4006B851E0000000
  %5755 = add i32 %335, 12
  %5756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5755, i32 undef)  ; BufferLoad(srv,index,wot)
  %5757 = extractvalue %dx.types.ResRet.i32 %5756, 0
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5760 = lshr i32 %5757, 16
  %5761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5760)  ; LegacyF16ToF32(value)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 1
  %5765 = fsub fast float %113, %5764
  %5766 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5767 = fmul fast float %5765, %5766
  %5768 = call float @dx.op.unary.f32(i32 7, float %5767)  ; Saturate(value)
  %5769 = fsub fast float %5762, %5754
  %5770 = fcmp fast ogt float %5769, 0.000000e+00
  %5771 = fcmp fast olt float %5769, 0.000000e+00
  %5772 = zext i1 %5770 to i32
  %5773 = zext i1 %5771 to i32
  %5774 = sub nsw i32 %5772, %5773
  %5775 = sitofp i32 %5774 to float
  %5776 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5777 = fsub fast float -0.000000e+00, %5761
  %5778 = fsub fast float %5777, %5759
  %5779 = fadd fast float %5778, %5776
  %5780 = call float @dx.op.binary.f32(i32 35, float %5779, float 0.000000e+00)  ; FMax(a,b)
  %5781 = fmul fast float %5775, %5780
  %5782 = fadd fast float %5748, %5781
  %5783 = call float @dx.op.unary.f32(i32 21, float %5782)  ; Exp(value)
  %5784 = fmul fast float %5783, 0x3F50624DE0000000
  %5785 = fcmp fast oeq float %5513, 0.000000e+00
  %5786 = fdiv fast float 0x400C5BF880000000, %5512
  %5787 = fmul fast float %5784, %5786
  %5788 = select i1 %5785, float 1.000000e+00, float %5787
  %5789 = call float @dx.op.binary.f32(i32 35, float %5788, float 1.000000e+00)  ; FMax(a,b)
  %5790 = fadd fast float %5789, -1.000000e+00
  %5791 = fmul fast float %5790, %5768
  %5792 = fadd fast float %5791, 1.000000e+00
  br label %5793

; <label>:5793                                    ; preds = %5753, %5660
  %5794 = phi float [ %5792, %5753 ], [ 1.000000e+00, %5660 ]
  %5795 = call float @dx.op.unary.f32(i32 6, float %5794)  ; FAbs(value)
  %5796 = fmul fast float %5795, %5739
  %5797 = fmul fast float %5795, %5740
  %5798 = fmul fast float %5795, %5741
  %5799 = fmul fast float %5487, 9.843750e-01
  %5800 = fmul fast float %5442, 9.843750e-01
  %5801 = fadd fast float %5799, 7.812500e-03
  %5802 = fadd fast float %5800, 7.812500e-03
  %5803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %5801, float %5802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5804 = extractvalue %dx.types.ResRet.f32 %5803, 2
  %5805 = extractvalue %dx.types.ResRet.f32 %5803, 3
  %5806 = fmul fast float %5804, %5433
  %5807 = fmul fast float %5804, %5434
  %5808 = fmul fast float %5804, %5485
  %5809 = fadd fast float %5806, %5805
  %5810 = fadd fast float %5807, %5805
  %5811 = fadd fast float %5808, %5805
  %5812 = fcmp fast ogt float %4251, 0.000000e+00
  br i1 %5812, label %5813, label %5839

; <label>:5813                                    ; preds = %5793
  %5814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4251, float %5487, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.ResRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.ResRet.f32 %5814, 2
  %5818 = fadd fast float %5815, -5.000000e-01
  %5819 = fadd fast float %5816, -5.000000e-01
  %5820 = fadd fast float %5817, -5.000000e-01
  %5821 = fsub fast float 1.000000e+00, %5433
  %5822 = fsub fast float 1.000000e+00, %5434
  %5823 = fsub fast float 1.000000e+00, %5485
  %5824 = fmul fast float %5433, 4.000000e+00
  %5825 = fmul fast float %5824, %5821
  %5826 = fmul fast float %5825, %5818
  %5827 = fmul fast float %5434, 4.000000e+00
  %5828 = fmul fast float %5827, %5822
  %5829 = fmul fast float %5828, %5819
  %5830 = fmul fast float %5485, 4.000000e+00
  %5831 = fmul fast float %5830, %5823
  %5832 = fmul fast float %5831, %5820
  %5833 = fadd fast float %5826, %5809
  %5834 = fadd fast float %5829, %5810
  %5835 = fadd fast float %5832, %5811
  %5836 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5837 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5838 = call float @dx.op.unary.f32(i32 7, float %5835)  ; Saturate(value)
  br label %5839

; <label>:5839                                    ; preds = %5813, %5793
  %5840 = phi float [ %5836, %5813 ], [ %5809, %5793 ]
  %5841 = phi float [ %5837, %5813 ], [ %5810, %5793 ]
  %5842 = phi float [ %5838, %5813 ], [ %5811, %5793 ]
  %5843 = call float @dx.op.binary.f32(i32 35, float %5841, float %5842)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 35, float %5840, float %5843)  ; FMax(a,b)
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fmul fast float %5844, %5442
  %5847 = fadd fast float %5846, %5442
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 2
  %5850 = extractvalue %dx.types.CBufRet.f32 %5848, 3
  %5851 = fmul fast float %5847, %5849
  %5852 = fadd fast float %5851, %5850
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = fsub fast float 1.000000e+00, %5508
  %5855 = fadd fast float %5854, %5853
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = fcmp fast olt float %5856, 1.000000e+00
  br i1 %5857, label %5858, label %6334

; <label>:5858                                    ; preds = %5839
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5862 = fmul fast float %5860, %126
  %5863 = fmul fast float %5861, %127
  %5864 = fptoui float %5862 to i32
  %5865 = fptoui float %5863 to i32
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5870 = fadd fast float %113, -4.000000e+00
  %5871 = call float @dx.op.binary.f32(i32 35, float %5870, float 0.000000e+00)  ; FMax(a,b)
  %5872 = fadd fast float %5871, %5867
  %5873 = fmul fast float %5872, %5868
  %5874 = call float @dx.op.unary.f32(i32 23, float %5873)  ; Log(value)
  %5875 = fmul fast float %5874, %5869
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5878 = fmul fast float %5875, %5877
  %5879 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  %5880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.i32 %5880, 1
  %5882 = add i32 %5881, -1
  %5883 = uitofp i32 %5881 to float
  %5884 = fmul fast float %5883, %5879
  %5885 = fptoui float %5884 to i32
  %5886 = call i32 @dx.op.binary.i32(i32 40, i32 %5885, i32 %5882)  ; UMin(a,b)
  %5887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.i32 %5887, 2
  %5889 = extractvalue %dx.types.CBufRet.i32 %5887, 3
  %5890 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5865, i32 %5888, i32 %5864)  ; UMad(a,b,c)
  %5891 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5886, i32 %5889, i32 %5890)  ; UMad(a,b,c)
  %5892 = call float @dx.op.binary.f32(i32 35, float %113, float 0.000000e+00)  ; FMax(a,b)
  %5893 = fptoui float %5892 to i32
  %5894 = lshr i32 %5893, 5
  %5895 = call i32 @dx.op.binary.i32(i32 40, i32 %5894, i32 8191)  ; UMin(a,b)
  %5896 = fsub fast float %4656, %211
  %5897 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  %5898 = fcmp fast ogt float %5897, 0.000000e+00
  %5899 = fcmp fast ogt float %5495, 0.000000e+00
  %5900 = and i1 %5899, %5898
  br i1 %5900, label %5901, label %5930

; <label>:5901                                    ; preds = %5858
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5902, float -1.000000e+00)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 36, float %5903, float 1.000000e+00)  ; FMin(a,b)
  %5905 = fmul fast float %5904, %5904
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5906, 0x3FFC6E2300000000
  %5908 = fsub fast float 1.000000e+00, %5907
  %5909 = fcmp fast ogt float %5908, 0.000000e+00
  %5910 = call float @dx.op.unary.f32(i32 24, float %5908)  ; Sqrt(value)
  %5911 = fsub fast float 1.000000e+00, %5910
  %5912 = call float @dx.op.unary.f32(i32 23, float %5911)  ; Log(value)
  %5913 = fmul fast float %5912, 5.000000e+00
  %5914 = call float @dx.op.unary.f32(i32 21, float %5913)  ; Exp(value)
  %5915 = fmul fast float %5914, 0x3FEF591A60000000
  %5916 = fadd fast float %5915, 0x3F94DCB540000000
  %5917 = select i1 %5909, float %5916, float 1.000000e+00
  %5918 = fcmp fast oge float %5917, 1.000000e+00
  %5919 = fmul fast float %5902, 2.000000e+00
  %5920 = fadd fast float %5919, %5495
  %5921 = select i1 %5918, float %5920, float %5495
  %5922 = fsub fast float %5921, %5495
  %5923 = fmul fast float %5922, %5897
  %5924 = fadd fast float %5923, %5495
  %5925 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5924, float %5493, float %5494, float %5924)  ; Dot3(ax,ay,az,bx,by,bz)
  %5926 = call float @dx.op.unary.f32(i32 25, float %5925)  ; Rsqrt(value)
  %5927 = fmul fast float %5926, %5493
  %5928 = fmul fast float %5926, %5494
  %5929 = fmul fast float %5924, %5926
  br label %5930

; <label>:5930                                    ; preds = %5901, %5858
  %5931 = phi float [ %5927, %5901 ], [ %5493, %5858 ]
  %5932 = phi float [ %5928, %5901 ], [ %5494, %5858 ]
  %5933 = phi float [ %5929, %5901 ], [ %5495, %5858 ]
  %5934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.i32 %5934, 2
  %5936 = add nsw i32 %5935, -1
  %5937 = call i32 @dx.op.binary.i32(i32 37, i32 %5936, i32 0)  ; IMax(a,b)
  %5938 = shl i32 %5895, 2
  %5939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5938, i32 undef)  ; BufferLoad(srv,index,wot)
  %5940 = extractvalue %dx.types.ResRet.i32 %5939, 0
  %5941 = lshr i32 %5940, 16
  %5942 = and i32 %5940, 65535
  %5943 = lshr i32 %5940, 21
  %5944 = lshr i32 %5942, 5
  %5945 = call i32 @dx.op.binary.i32(i32 40, i32 %5944, i32 %5937)  ; UMin(a,b)
  %5946 = icmp ugt i32 %5943, %5945
  br i1 %5946, label %6310, label %5947

; <label>:5947                                    ; preds = %5930
  br label %5948

; <label>:5948                                    ; preds = %6302, %5947
  %5949 = phi float [ %6303, %6302 ], [ 0.000000e+00, %5947 ]
  %5950 = phi float [ %6304, %6302 ], [ 0.000000e+00, %5947 ]
  %5951 = phi float [ %6305, %6302 ], [ 0.000000e+00, %5947 ]
  %5952 = phi float [ %6306, %6302 ], [ 1.000000e+00, %5947 ]
  %5953 = phi i32 [ %6307, %6302 ], [ %5943, %5947 ]
  %5954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.i32 %5954, 2
  %5956 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5891, i32 %5955, i32 %5953)  ; UMad(a,b,c)
  %5957 = shl i32 %5956, 2
  %5958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.i32 %5958, 0
  %5960 = shl i32 %5953, 5
  %5961 = sub nsw i32 %5941, %5960
  %5962 = call i32 @dx.op.binary.i32(i32 37, i32 %5961, i32 0)  ; IMax(a,b)
  %5963 = call i32 @dx.op.binary.i32(i32 38, i32 %5962, i32 31)  ; IMin(a,b)
  %5964 = sub nsw i32 1, %5941
  %5965 = add nsw i32 %5964, %5942
  %5966 = call i32 @dx.op.binary.i32(i32 37, i32 %5965, i32 0)  ; IMax(a,b)
  %5967 = call i32 @dx.op.binary.i32(i32 38, i32 %5966, i32 32)  ; IMin(a,b)
  %5968 = and i32 %5967, 31
  %5969 = shl i32 -1, %5968
  %5970 = xor i32 %5969, -1
  %5971 = and i32 %5963, 31
  %5972 = shl i32 %5970, %5971
  %5973 = icmp eq i32 %5967, 32
  %5974 = select i1 %5973, i32 -1, i32 %5972
  %5975 = and i32 %5974, %5959
  %5976 = icmp eq i32 %5975, 0
  br i1 %5976, label %6302, label %5977

; <label>:5977                                    ; preds = %5948
  br label %5978

; <label>:5978                                    ; preds = %6085, %5977
  %5979 = phi float [ %6086, %6085 ], [ %5949, %5977 ]
  %5980 = phi float [ %6087, %6085 ], [ %5950, %5977 ]
  %5981 = phi float [ %6088, %6085 ], [ %5951, %5977 ]
  %5982 = phi float [ %6089, %6085 ], [ %5952, %5977 ]
  %5983 = phi i32 [ %5988, %6085 ], [ %5975, %5977 ]
  %5984 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5983)  ; FirstbitLo(value)
  %5985 = add i32 %5984, %5960
  %5986 = and i32 %5984, 31
  %5987 = shl i32 1, %5986
  %5988 = xor i32 %5987, %5983
  %5989 = mul i32 %5985, 72
  %5990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5989, i32 undef)  ; BufferLoad(srv,index,wot)
  %5991 = extractvalue %dx.types.ResRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.ResRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.ResRet.f32 %5990, 2
  %5994 = add i32 %5989, 12
  %5995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5994, i32 undef)  ; BufferLoad(srv,index,wot)
  %5996 = extractvalue %dx.types.ResRet.i32 %5995, 0
  %5997 = add i32 %5989, 16
  %5998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5997, i32 undef)  ; BufferLoad(srv,index,wot)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.ResRet.f32 %5998, 2
  %6002 = add i32 %5989, 28
  %6003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6002, i32 undef)  ; BufferLoad(srv,index,wot)
  %6004 = extractvalue %dx.types.ResRet.f32 %6003, 0
  %6005 = add i32 %5989, 32
  %6006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6005, i32 undef)  ; BufferLoad(srv,index,wot)
  %6007 = extractvalue %dx.types.ResRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.ResRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.ResRet.f32 %6006, 2
  %6010 = extractvalue %dx.types.ResRet.f32 %6006, 3
  %6011 = add i32 %5989, 48
  %6012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6011, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.ResRet.f32 %6012, 1
  %6015 = add i32 %5989, 56
  %6016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6015, i32 undef)  ; BufferLoad(srv,index,wot)
  %6017 = extractvalue %dx.types.ResRet.f32 %6016, 0
  %6018 = extractvalue %dx.types.ResRet.f32 %6016, 1
  %6019 = add i32 %5989, 64
  %6020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6019, i32 undef)  ; BufferLoad(srv,index,wot)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6023 = mul i32 %5985, 60
  %6024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6023, i32 undef)  ; BufferLoad(srv,index,wot)
  %6025 = extractvalue %dx.types.ResRet.f32 %6024, 0
  %6026 = extractvalue %dx.types.ResRet.f32 %6024, 1
  %6027 = extractvalue %dx.types.ResRet.f32 %6024, 2
  %6028 = add i32 %6023, 12
  %6029 = add i32 %6023, 48
  %6030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6029, i32 undef)  ; BufferLoad(srv,index,wot)
  %6031 = extractvalue %dx.types.ResRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.ResRet.f32 %6030, 1
  %6033 = extractvalue %dx.types.ResRet.f32 %6030, 2
  %6034 = and i32 %5996, 32767
  %6035 = bitcast float %5991 to i32
  %6036 = icmp eq i32 %6035, -1
  %6037 = bitcast float %5992 to i32
  %6038 = and i32 %5996, 32768
  %6039 = icmp ne i32 %6038, 0
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.CBufRet.f32 %6040, 2
  %6044 = fsub fast float %6025, %6041
  %6045 = fsub fast float %6026, %6042
  %6046 = fsub fast float %6027, %6043
  %6047 = fsub fast float %209, %6044
  %6048 = fsub fast float %210, %6045
  %6049 = fsub fast float %211, %6046
  %6050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6028, i32 undef)  ; BufferLoad(srv,index,wot)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.ResRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.ResRet.f32 %6050, 2
  %6054 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float %6051, float %6052, float %6053)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = add i32 %6023, 24
  %6056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6055, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float %6057, float %6058, float %6059)  ; Dot3(ax,ay,az,bx,by,bz)
  %6061 = add i32 %6023, 36
  %6062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6061, i32 undef)  ; BufferLoad(srv,index,wot)
  %6063 = extractvalue %dx.types.ResRet.f32 %6062, 0
  %6064 = extractvalue %dx.types.ResRet.f32 %6062, 1
  %6065 = extractvalue %dx.types.ResRet.f32 %6062, 2
  %6066 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float %6063, float %6064, float %6065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = call float @dx.op.unary.f32(i32 6, float %6054)  ; FAbs(value)
  %6068 = call float @dx.op.unary.f32(i32 6, float %6060)  ; FAbs(value)
  %6069 = call float @dx.op.unary.f32(i32 6, float %6066)  ; FAbs(value)
  %6070 = fsub fast float %6031, %6067
  %6071 = fsub fast float %6032, %6068
  %6072 = fsub fast float %6033, %6069
  %6073 = fmul fast float %6070, %5999
  %6074 = fmul fast float %6071, %6000
  %6075 = fmul fast float %6072, %6001
  %6076 = call float @dx.op.binary.f32(i32 36, float %6074, float %6075)  ; FMin(a,b)
  %6077 = call float @dx.op.binary.f32(i32 36, float %6073, float %6076)  ; FMin(a,b)
  %6078 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6079 = call float @dx.op.binary.f32(i32 36, float %5982, float %6078)  ; FMin(a,b)
  %6080 = uitofp i1 %6039 to float
  %6081 = fadd fast float %5897, 1.000000e+00
  %6082 = fsub fast float %6081, %6080
  %6083 = fmul fast float %6079, %6082
  %6084 = fcmp fast ogt float %6083, 0.000000e+00
  br i1 %6084, label %6091, label %6085

; <label>:6085                                    ; preds = %6233, %5978
  %6086 = phi float [ %6297, %6233 ], [ %5979, %5978 ]
  %6087 = phi float [ %6298, %6233 ], [ %5980, %5978 ]
  %6088 = phi float [ %6299, %6233 ], [ %5981, %5978 ]
  %6089 = phi float [ %6300, %6233 ], [ %5982, %5978 ]
  %6090 = icmp eq i32 %5983, %5987
  br i1 %6090, label %6301, label %5978

; <label>:6091                                    ; preds = %5978
  br i1 %6036, label %6149, label %6092

; <label>:6092                                    ; preds = %6091
  %6093 = fsub fast float -0.000000e+00, %6051
  %6094 = fsub fast float -0.000000e+00, %6052
  %6095 = fsub fast float -0.000000e+00, %6053
  %6096 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %6093, float %6094, float %6095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = fsub fast float -0.000000e+00, %6096
  %6098 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float %6093, float %6094, float %6095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6099 = fadd fast float %6098, %6014
  %6100 = fadd fast float %6013, %6098
  %6101 = fsub fast float -0.000000e+00, %6100
  %6102 = fcmp ogt float %6096, -0.000000e+00
  %6103 = select i1 %6102, float %6101, float %6099
  %6104 = call float @dx.op.unary.f32(i32 6, float %6097)  ; FAbs(value)
  %6105 = fdiv fast float 1.000000e+00, %6104
  %6106 = fmul fast float %6103, %6105
  %6107 = call float @dx.op.binary.f32(i32 35, float %6106, float 0.000000e+00)  ; FMax(a,b)
  %6108 = fsub fast float -0.000000e+00, %6057
  %6109 = fsub fast float -0.000000e+00, %6058
  %6110 = fsub fast float -0.000000e+00, %6059
  %6111 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %6108, float %6109, float %6110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = fsub fast float -0.000000e+00, %6111
  %6113 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float %6108, float %6109, float %6110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = fadd fast float %6113, %6018
  %6115 = fadd fast float %6017, %6113
  %6116 = fsub fast float -0.000000e+00, %6115
  %6117 = fcmp ogt float %6111, -0.000000e+00
  %6118 = select i1 %6117, float %6116, float %6114
  %6119 = call float @dx.op.unary.f32(i32 6, float %6112)  ; FAbs(value)
  %6120 = fdiv fast float 1.000000e+00, %6119
  %6121 = fmul fast float %6118, %6120
  %6122 = call float @dx.op.binary.f32(i32 35, float %6121, float 0.000000e+00)  ; FMax(a,b)
  %6123 = fsub fast float -0.000000e+00, %6063
  %6124 = fsub fast float -0.000000e+00, %6064
  %6125 = fsub fast float -0.000000e+00, %6065
  %6126 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %6123, float %6124, float %6125)  ; Dot3(ax,ay,az,bx,by,bz)
  %6127 = fsub fast float -0.000000e+00, %6126
  %6128 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float %6123, float %6124, float %6125)  ; Dot3(ax,ay,az,bx,by,bz)
  %6129 = fadd fast float %6128, %6022
  %6130 = fadd fast float %6021, %6128
  %6131 = fsub fast float -0.000000e+00, %6130
  %6132 = fcmp ogt float %6126, -0.000000e+00
  %6133 = select i1 %6132, float %6131, float %6129
  %6134 = call float @dx.op.unary.f32(i32 6, float %6127)  ; FAbs(value)
  %6135 = fdiv fast float 1.000000e+00, %6134
  %6136 = fmul fast float %6133, %6135
  %6137 = call float @dx.op.binary.f32(i32 35, float %6136, float 0.000000e+00)  ; FMax(a,b)
  %6138 = call float @dx.op.binary.f32(i32 36, float %6122, float %6137)  ; FMin(a,b)
  %6139 = call float @dx.op.binary.f32(i32 36, float %6107, float %6138)  ; FMin(a,b)
  %6140 = fmul fast float %6139, %5931
  %6141 = fmul fast float %6139, %5932
  %6142 = fmul fast float %6139, %5933
  %6143 = fadd fast float %6140, %209
  %6144 = fadd fast float %6141, %210
  %6145 = fadd fast float %6142, %211
  %6146 = fsub fast float %6143, %5991
  %6147 = fsub fast float %6144, %5992
  %6148 = fsub fast float %6145, %5993
  br label %6156

; <label>:6149                                    ; preds = %6091
  %6150 = fmul fast float %5931, 8.096000e+03
  %6151 = fmul fast float %5932, 8.096000e+03
  %6152 = fmul fast float %5933, 8.096000e+03
  %6153 = fadd fast float %6150, %209
  %6154 = fadd fast float %6151, %210
  %6155 = fadd fast float %6152, %211
  br label %6156

; <label>:6156                                    ; preds = %6149, %6092
  %6157 = phi float [ %5931, %6149 ], [ %6146, %6092 ]
  %6158 = phi float [ %5932, %6149 ], [ %6147, %6092 ]
  %6159 = phi float [ %5933, %6149 ], [ %6148, %6092 ]
  %6160 = phi float [ %6153, %6149 ], [ %6143, %6092 ]
  %6161 = phi float [ %6154, %6149 ], [ %6144, %6092 ]
  %6162 = phi float [ %6155, %6149 ], [ %6145, %6092 ]
  %6163 = fcmp fast olt float %6010, 1.000000e+00
  br i1 %6163, label %6164, label %6195, !dx.controlflow.hints !105

; <label>:6164                                    ; preds = %6156
  %6165 = fmul fast float %6159, %6008
  %6166 = fmul fast float %6158, %6009
  %6167 = fsub fast float %6165, %6166
  %6168 = fmul fast float %6157, %6009
  %6169 = fmul fast float %6159, %6007
  %6170 = fsub fast float %6168, %6169
  %6171 = fmul fast float %6158, %6007
  %6172 = fmul fast float %6157, %6008
  %6173 = fsub fast float %6171, %6172
  %6174 = fmul fast float %6167, 2.000000e+00
  %6175 = fmul fast float %6170, 2.000000e+00
  %6176 = fmul fast float %6173, 2.000000e+00
  %6177 = fmul fast float %6174, %6010
  %6178 = fmul fast float %6175, %6010
  %6179 = fmul fast float %6176, %6010
  %6180 = fmul fast float %6176, %6008
  %6181 = fmul fast float %6175, %6009
  %6182 = fmul fast float %6174, %6009
  %6183 = fmul fast float %6176, %6007
  %6184 = fmul fast float %6175, %6007
  %6185 = fmul fast float %6174, %6008
  %6186 = fadd fast float %6180, %6157
  %6187 = fadd fast float %6186, %6177
  %6188 = fsub fast float %6187, %6181
  %6189 = fsub fast float %6158, %6183
  %6190 = fadd fast float %6189, %6178
  %6191 = fadd fast float %6190, %6182
  %6192 = fadd fast float %6179, %6159
  %6193 = fsub fast float %6192, %6185
  %6194 = fadd fast float %6193, %6184
  br label %6195

; <label>:6195                                    ; preds = %6164, %6156
  %6196 = phi float [ %6188, %6164 ], [ %6157, %6156 ]
  %6197 = phi float [ %6191, %6164 ], [ %6158, %6156 ]
  %6198 = phi float [ %6194, %6164 ], [ %6159, %6156 ]
  br i1 %6036, label %6230, label %6199

; <label>:6199                                    ; preds = %6195
  %6200 = fmul fast float %5442, 0x400187C840000000
  %6201 = fadd fast float %6200, 0xC00EFC2120000000
  %6202 = fmul fast float %6201, %5442
  %6203 = fadd fast float %6202, 0x3FE5D16340000000
  %6204 = fmul fast float %6203, %5442
  %6205 = fadd fast float %6204, 1.000000e+00
  %6206 = call float @dx.op.unary.f32(i32 7, float %6205)  ; Saturate(value)
  %6207 = fsub fast float %6160, %209
  %6208 = fsub fast float %6161, %210
  %6209 = fsub fast float %6162, %211
  %6210 = fsub fast float %6160, %5991
  %6211 = fsub fast float %6161, %5992
  %6212 = fsub fast float %6162, %5993
  %6213 = call float @dx.op.dot3.f32(i32 55, float %6207, float %6208, float %6209, float %6207, float %6208, float %6209)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6210, float %6211, float %6212, float %6210, float %6211, float %6212)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = fadd fast float %6214, 0x3EE4F8B580000000
  %6216 = fdiv fast float %6213, %6215
  %6217 = bitcast float %6216 to i32
  %6218 = ashr i32 %6217, 1
  %6219 = add nsw i32 %6218, 532487669
  %6220 = bitcast i32 %6219 to float
  %6221 = fmul fast float %6220, %6206
  %6222 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6223 = fmul fast float %6222, 0x4009981AE0000000
  %6224 = fsub fast float 0x40111BBD80000000, %6223
  %6225 = fmul fast float %6224, %6222
  %6226 = fadd fast float %6225, 0xC0009F6020000000
  %6227 = fmul fast float %6226, %6222
  %6228 = fadd fast float %6227, 1.000000e+00
  %6229 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  br label %6233

; <label>:6230                                    ; preds = %6195
  %6231 = icmp ne i32 %6037, -1
  %6232 = zext i1 %6231 to i32
  br label %6233

; <label>:6233                                    ; preds = %6230, %6199
  %6234 = phi float [ %5442, %6230 ], [ %6229, %6199 ]
  %6235 = phi i32 [ %6232, %6230 ], [ 0, %6199 ]
  %6236 = fmul float %6234, 5.000000e+00
  %6237 = fsub float 5.000000e+00, %6236
  %6238 = icmp ne i32 %6235, 0
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 3
  %6241 = fadd fast float %6240, %6237
  %6242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6241)  ; FMax(a,b)
  %6243 = call float @dx.op.unary.f32(i32 6, float %6196)  ; FAbs(value)
  %6244 = call float @dx.op.unary.f32(i32 6, float %6197)  ; FAbs(value)
  %6245 = fadd fast float %6244, %6243
  %6246 = call float @dx.op.unary.f32(i32 6, float %6198)  ; FAbs(value)
  %6247 = fadd fast float %6245, %6246
  %6248 = fcmp fast oeq float %6247, 0.000000e+00
  %6249 = fdiv fast float 1.000000e+00, %6247
  %6250 = select i1 %6248, float 1.000000e+00, float %6249
  %6251 = fmul fast float %6250, %6196
  %6252 = fmul fast float %6250, %6197
  %6253 = call float @dx.op.unary.f32(i32 6, float %6252)  ; FAbs(value)
  %6254 = call float @dx.op.unary.f32(i32 6, float %6251)  ; FAbs(value)
  %6255 = fsub fast float 1.000000e+00, %6253
  %6256 = fsub fast float 1.000000e+00, %6254
  %6257 = fcmp fast oge float %6251, 0.000000e+00
  %6258 = fcmp fast oge float %6252, 0.000000e+00
  %6259 = select i1 %6257, float 1.000000e+00, float -1.000000e+00
  %6260 = select i1 %6258, float 1.000000e+00, float -1.000000e+00
  %6261 = fcmp fast ole float %6198, 0.000000e+00
  %6262 = fmul fast float %6259, %6255
  %6263 = fmul fast float %6260, %6256
  %6264 = select i1 %6261, float %6262, float %6251
  %6265 = select i1 %6261, float %6263, float %6252
  %6266 = fmul fast float %6264, 5.000000e-01
  %6267 = fmul fast float %6265, 5.000000e-01
  %6268 = fadd fast float %6266, 5.000000e-01
  %6269 = fadd fast float %6267, 5.000000e-01
  %6270 = uitofp i32 %6034 to float
  %6271 = call float @dx.op.binary.f32(i32 36, float %6242, float 3.000000e+00)  ; FMin(a,b)
  %6272 = fadd fast float %6271, 2.000000e+00
  %6273 = call float @dx.op.unary.f32(i32 21, float %6272)  ; Exp(value)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6275 = fmul fast float %6274, %6273
  %6276 = fmul fast float %6275, 2.000000e+00
  %6277 = fsub fast float 1.000000e+00, %6276
  %6278 = fmul fast float %6268, %6277
  %6279 = fmul fast float %6269, %6277
  %6280 = fadd fast float %6278, %6275
  %6281 = fadd fast float %6279, %6275
  %6282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %54, float %6280, float %6281, float %6270, float undef, i32 0, i32 0, i32 undef, float %6242)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6283 = extractvalue %dx.types.ResRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.ResRet.f32 %6282, 1
  %6285 = extractvalue %dx.types.ResRet.f32 %6282, 2
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 3
  %6288 = fmul fast float %6287, %6004
  %6289 = call float @dx.op.binary.f32(i32 36, float %5513, float %6288)  ; FMin(a,b)
  %6290 = select i1 %6238, float %6289, float %6288
  %6291 = fmul fast float %6283, %6083
  %6292 = fmul fast float %6291, %6290
  %6293 = fmul fast float %6284, %6083
  %6294 = fmul fast float %6293, %6290
  %6295 = fmul fast float %6285, %6083
  %6296 = fmul fast float %6295, %6290
  %6297 = fadd fast float %6292, %5979
  %6298 = fadd fast float %6294, %5980
  %6299 = fadd fast float %6296, %5981
  %6300 = fsub fast float %5982, %6083
  br label %6085

; <label>:6301                                    ; preds = %6085
  br label %6302

; <label>:6302                                    ; preds = %6301, %5948
  %6303 = phi float [ %5949, %5948 ], [ %6086, %6301 ]
  %6304 = phi float [ %5950, %5948 ], [ %6087, %6301 ]
  %6305 = phi float [ %5951, %5948 ], [ %6088, %6301 ]
  %6306 = phi float [ %5952, %5948 ], [ %6089, %6301 ]
  %6307 = add i32 %5953, 1
  %6308 = icmp ugt i32 %6307, %5945
  br i1 %6308, label %6309, label %5948, !llvm.loop !106

; <label>:6309                                    ; preds = %6302
  br label %6310

; <label>:6310                                    ; preds = %6309, %5930
  %6311 = phi float [ 0.000000e+00, %5930 ], [ %6303, %6309 ]
  %6312 = phi float [ 0.000000e+00, %5930 ], [ %6304, %6309 ]
  %6313 = phi float [ 0.000000e+00, %5930 ], [ %6305, %6309 ]
  %6314 = call float @dx.op.dot3.f32(i32 55, float %6311, float %6312, float %6313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = select i1 %281, float 0.000000e+00, float %6311
  %6316 = select i1 %281, float %6314, float %6312
  %6317 = select i1 %281, float 0.000000e+00, float %6313
  %6318 = fcmp fast olt float %5856, 0.000000e+00
  %6319 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %6320 = fmul fast float %6319, %5743
  %6321 = fmul fast float %6319, %5744
  %6322 = fmul fast float %6319, %5745
  %6323 = select i1 %6318, float %5743, float %6320
  %6324 = select i1 %6318, float %5744, float %6321
  %6325 = select i1 %6318, float %5745, float %6322
  %6326 = fsub fast float 1.000000e+00, %6319
  %6327 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6328 = fmul fast float %6327, %6315
  %6329 = fmul fast float %6327, %6316
  %6330 = fmul fast float %6327, %6317
  %6331 = fadd fast float %6323, %6328
  %6332 = fadd fast float %6324, %6329
  %6333 = fadd fast float %6325, %6330
  br label %6334

; <label>:6334                                    ; preds = %6310, %5839
  %6335 = phi float [ %6331, %6310 ], [ %5743, %5839 ]
  %6336 = phi float [ %6332, %6310 ], [ %5744, %5839 ]
  %6337 = phi float [ %6333, %6310 ], [ %5745, %5839 ]
  %6338 = fmul fast float %209, %209
  %6339 = fmul fast float %210, %210
  %6340 = fadd fast float %6339, %6338
  %6341 = fmul fast float %211, %211
  %6342 = fadd fast float %6340, %6341
  %6343 = call float @dx.op.unary.f32(i32 24, float %6342)  ; Sqrt(value)
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6346 = fsub fast float %6343, %6345
  %6347 = extractvalue %dx.types.CBufRet.f32 %6344, 2
  %6348 = fmul fast float %6346, %6347
  %6349 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6351 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6352 = and i32 %5750, 4194304
  %6353 = icmp ne i32 %6352, 0
  %6354 = icmp ne i32 %5751, 0
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6363 = extractvalue %dx.types.CBufRet.f32 %6360, 2
  %6364 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6365 = select i1 %6353, float %6356, float %6361
  %6366 = select i1 %6353, float %6357, float %6362
  %6367 = select i1 %6353, float %6358, float %6363
  %6368 = select i1 %6353, float %6359, float %6364
  %6369 = select i1 %6354, float 0.000000e+00, float %6368
  %6370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6370, 0
  %6372 = extractvalue %dx.types.CBufRet.f32 %6370, 1
  %6373 = select i1 %6353, float %6371, float %6372
  %6374 = select i1 %6354, float 0.000000e+00, float %6373
  %6375 = extractvalue %dx.types.CBufRet.f32 %6370, 2
  %6376 = extractvalue %dx.types.CBufRet.f32 %6370, 3
  %6377 = select i1 %6353, float %6375, float %6376
  %6378 = select i1 %6354, float 0.000000e+00, float %6377
  %6379 = fmul fast float %6349, %71
  %6380 = fmul fast float %6379, %6350
  %6381 = fmul fast float %6380, %6374
  %6382 = fmul fast float %6379, %6351
  %6383 = fmul fast float %6382, %6378
  %6384 = fadd fast float %6383, 1.000000e+00
  %6385 = fmul fast float %5845, %5796
  %6386 = fmul fast float %6385, %6384
  %6387 = fmul fast float %5845, %5797
  %6388 = fmul fast float %6387, %6384
  %6389 = fmul fast float %5845, %5798
  %6390 = fmul fast float %6389, %6384
  %6391 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6392 = fcmp fast ogt float %6391, 0x3E7FF19E20000000
  %6393 = fdiv fast float 1.000000e+00, %6391
  %6394 = select i1 %6392, float %6393, float 0.000000e+00
  %6395 = fmul fast float %6394, %5439
  %6396 = fmul fast float %6394, %5440
  %6397 = fmul fast float %6394, %5441
  %6398 = fadd fast float %6395, -1.000000e+00
  %6399 = fadd fast float %6396, -1.000000e+00
  %6400 = fadd fast float %6397, -1.000000e+00
  %6401 = fmul fast float %6398, 5.000000e-01
  %6402 = fmul fast float %6399, 5.000000e-01
  %6403 = fmul fast float %6400, 5.000000e-01
  %6404 = fadd fast float %6401, 1.000000e+00
  %6405 = fadd fast float %6402, 1.000000e+00
  %6406 = fadd fast float %6403, 1.000000e+00
  %6407 = fadd fast float %6381, %4252
  %6408 = fsub fast float %6365, %6404
  %6409 = fsub fast float %6366, %6405
  %6410 = fsub fast float %6367, %6406
  %6411 = fmul fast float %6408, %6369
  %6412 = fmul fast float %6409, %6369
  %6413 = fmul fast float %6410, %6369
  %6414 = fadd fast float %6411, %6404
  %6415 = fadd fast float %6412, %6405
  %6416 = fadd fast float %6413, %6406
  %6417 = fmul fast float %6335, %5840
  %6418 = fmul fast float %6336, %5841
  %6419 = fmul fast float %6337, %5842
  %6420 = fsub fast float 1.000000e+00, %5487
  %6421 = bitcast float %6420 to i32
  %6422 = sitofp i32 %6421 to float
  %6423 = fmul fast float %6422, 5.000000e+00
  %6424 = fadd fast float %6423, 0xC1EFBF8940000000
  %6425 = fptosi float %6424 to i32
  %6426 = bitcast i32 %6425 to float
  %6427 = fmul fast float %6407, %6426
  %6428 = fmul fast float %6385, %6427
  %6429 = fmul fast float %6428, %6414
  %6430 = fmul fast float %6387, %6427
  %6431 = fmul fast float %6430, %6415
  %6432 = fmul fast float %6389, %6427
  %6433 = fmul fast float %6432, %6416
  %6434 = fmul fast float %6386, %4248
  %6435 = fmul fast float %6388, %4248
  %6436 = fmul fast float %6390, %4248
  %6437 = fadd fast float %6417, %4244
  %6438 = fadd fast float %6437, %6429
  %6439 = fmul fast float %6438, %4248
  %6440 = fadd fast float %6418, %4245
  %6441 = fadd fast float %6440, %6431
  %6442 = fmul fast float %6441, %4248
  %6443 = fadd fast float %6419, %4246
  %6444 = fadd fast float %6443, %6433
  %6445 = fmul fast float %6444, %4248
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 3
  %6448 = fcmp fast oeq float %6447, 0.000000e+00
  br i1 %6448, label %8153, label %6449

; <label>:6449                                    ; preds = %6334
  %6450 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6452 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6460 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6461 = select i1 %281, float %6458, float %6454
  %6462 = select i1 %281, float %6460, float %6455
  %6463 = select i1 %281, float %6459, float %6456
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 2
  %6466 = fmul fast float %6465, %135
  %6467 = fmul fast float %6465, %137
  %6468 = fmul fast float %6465, %139
  %6469 = fadd fast float %6466, %209
  %6470 = fadd fast float %6467, %210
  %6471 = fadd fast float %6468, %211
  %6472 = fcmp fast olt float %6447, 0.000000e+00
  br i1 %6472, label %7730, label %6473

; <label>:6473                                    ; preds = %6449
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.CBufRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.CBufRet.f32 %6474, 2
  %6478 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6489 = fmul fast float %6475, %6469
  %6490 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6476, float %6489)  ; FMad(a,b,c)
  %6491 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6477, float %6490)  ; FMad(a,b,c)
  %6492 = fadd fast float %6491, %6478
  %6493 = fmul fast float %6480, %6469
  %6494 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6481, float %6493)  ; FMad(a,b,c)
  %6495 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6482, float %6494)  ; FMad(a,b,c)
  %6496 = fadd fast float %6495, %6483
  %6497 = fmul fast float %6485, %6469
  %6498 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6486, float %6497)  ; FMad(a,b,c)
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6487, float %6498)  ; FMad(a,b,c)
  %6500 = fadd fast float %6499, %6488
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 0
  %6503 = fcmp fast une float %6502, 0.000000e+00
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.CBufRet.f32 %6504, 3
  %6508 = fmul fast float %6507, %6492
  %6509 = fmul fast float %6507, %6496
  %6510 = fadd fast float %6508, %6505
  %6511 = fadd fast float %6509, %6506
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.CBufRet.f32 %6512, 3
  %6516 = fmul fast float %6515, %6492
  %6517 = fmul fast float %6515, %6496
  %6518 = fadd fast float %6516, %6513
  %6519 = fadd fast float %6517, %6514
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6522 = fsub fast float %6521, %6500
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = fmul fast float %6522, %6523
  %6525 = fsub fast float 1.000000e+00, %6524
  %6526 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  br i1 %6503, label %6587, label %6527

; <label>:6527                                    ; preds = %6473
  %6528 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6529, 2
  %6531 = fadd fast float %6530, %6528
  %6532 = fcmp fast ogt float %6531, 0.000000e+00
  br i1 %6532, label %6533, label %6557

; <label>:6533                                    ; preds = %6527
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6537 = fsub fast float %6518, %6535
  %6538 = fsub fast float %6519, %6536
  %6539 = fcmp fast olt float %6537, 0.000000e+00
  %6540 = fcmp fast olt float %6538, 0.000000e+00
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6552 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6553 = call float @dx.op.binary.f32(i32 35, float %6550, float %6551)  ; FMax(a,b)
  %6554 = fsub fast float %6552, %6553
  %6555 = call float @dx.op.unary.f32(i32 7, float %6554)  ; Saturate(value)
  %6556 = fmul fast float %6555, %6526
  br label %6557

; <label>:6557                                    ; preds = %6533, %6527
  %6558 = phi float [ %6556, %6533 ], [ 0.000000e+00, %6527 ]
  %6559 = extractvalue %dx.types.CBufRet.f32 %6504, 2
  %6560 = extractvalue %dx.types.CBufRet.f32 %6529, 1
  %6561 = fadd fast float %6560, %6559
  %6562 = fcmp fast ogt float %6561, 0.000000e+00
  br i1 %6562, label %6563, label %6587

; <label>:6563                                    ; preds = %6557
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 1
  %6567 = fsub fast float %6510, %6565
  %6568 = fsub fast float %6511, %6566
  %6569 = fcmp fast olt float %6567, 0.000000e+00
  %6570 = fcmp fast olt float %6568, 0.000000e+00
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6574 = extractvalue %dx.types.CBufRet.f32 %6571, 2
  %6575 = extractvalue %dx.types.CBufRet.f32 %6571, 3
  %6576 = select i1 %6569, float %6572, float %6574
  %6577 = select i1 %6570, float %6573, float %6575
  %6578 = fmul fast float %6576, %6567
  %6579 = fmul fast float %6577, %6568
  %6580 = call float @dx.op.unary.f32(i32 6, float %6578)  ; FAbs(value)
  %6581 = call float @dx.op.unary.f32(i32 6, float %6579)  ; FAbs(value)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6583 = call float @dx.op.binary.f32(i32 35, float %6580, float %6581)  ; FMax(a,b)
  %6584 = fsub fast float %6582, %6583
  %6585 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6586 = fmul fast float %6585, %6526
  br label %6587

; <label>:6587                                    ; preds = %6563, %6557, %6473
  %6588 = phi float [ 0.000000e+00, %6473 ], [ %6586, %6563 ], [ 0.000000e+00, %6557 ]
  %6589 = phi float [ 0.000000e+00, %6473 ], [ %6558, %6563 ], [ %6558, %6557 ]
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 1
  %6592 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6596 = fsub fast float %6492, %6594
  %6597 = fsub fast float %6496, %6595
  %6598 = fcmp fast olt float %6596, 0.000000e+00
  %6599 = fcmp fast olt float %6597, 0.000000e+00
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6605 = select i1 %6598, float %6601, float %6603
  %6606 = select i1 %6599, float %6602, float %6604
  %6607 = fmul fast float %6605, %6596
  %6608 = fmul fast float %6606, %6597
  %6609 = call float @dx.op.unary.f32(i32 6, float %6607)  ; FAbs(value)
  %6610 = call float @dx.op.unary.f32(i32 6, float %6608)  ; FAbs(value)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6612 = call float @dx.op.binary.f32(i32 35, float %6609, float %6610)  ; FMax(a,b)
  %6613 = fsub fast float %6611, %6612
  %6614 = call float @dx.op.unary.f32(i32 7, float %6613)  ; Saturate(value)
  %6615 = call float @dx.op.binary.f32(i32 36, float %6614, float %6592)  ; FMin(a,b)
  %6616 = fmul fast float %6615, %6526
  %6617 = fsub fast float %6588, %6616
  %6618 = fsub fast float %6589, %6588
  %6619 = fsub fast float %6618, %6616
  %6620 = call float @dx.op.binary.f32(i32 35, float %6588, float %6589)  ; FMax(a,b)
  %6621 = call float @dx.op.binary.f32(i32 35, float %6616, float %6620)  ; FMax(a,b)
  %6622 = fcmp fast olt float %6621, 1.000000e+00
  br i1 %6622, label %6623, label %7021, !dx.controlflow.hints !108

; <label>:6623                                    ; preds = %6587
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = fcmp fast une float %6625, 0.000000e+00
  br i1 %6626, label %6627, label %7021, !dx.controlflow.hints !109

; <label>:6627                                    ; preds = %6623
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6633, 3
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 0
  %6640 = extractvalue %dx.types.CBufRet.f32 %6638, 1
  %6641 = extractvalue %dx.types.CBufRet.f32 %6638, 2
  %6642 = extractvalue %dx.types.CBufRet.f32 %6638, 3
  %6643 = fmul fast float %6629, %6469
  %6644 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6630, float %6643)  ; FMad(a,b,c)
  %6645 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6631, float %6644)  ; FMad(a,b,c)
  %6646 = fadd fast float %6645, %6632
  %6647 = fmul fast float %6634, %6469
  %6648 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6635, float %6647)  ; FMad(a,b,c)
  %6649 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6636, float %6648)  ; FMad(a,b,c)
  %6650 = fadd fast float %6649, %6637
  %6651 = fmul fast float %6639, %6469
  %6652 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6640, float %6651)  ; FMad(a,b,c)
  %6653 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6641, float %6652)  ; FMad(a,b,c)
  %6654 = fadd fast float %6653, %6642
  %6655 = fcmp fast oge float %6646, 1.000000e+00
  %6656 = fcmp fast oge float %6650, 1.000000e+00
  %6657 = or i1 %6655, %6656
  %6658 = fcmp fast olt float %6646, 0.000000e+00
  %6659 = fcmp fast olt float %6650, 0.000000e+00
  %6660 = or i1 %6658, %6659
  %6661 = or i1 %6657, %6660
  br i1 %6661, label %7021, label %6662, !dx.controlflow.hints !110

; <label>:6662                                    ; preds = %6627
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.i32 %6667, 2
  %6669 = uitofp i32 %6668 to float
  %6670 = extractvalue %dx.types.CBufRet.i32 %6667, 3
  %6671 = uitofp i32 %6670 to float
  %6672 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6673 = fmul fast float %6672, 2.000000e+00
  %6674 = fsub fast float %6646, %6664
  %6675 = fsub fast float %6650, %6665
  %6676 = fmul fast float %6673, %6674
  %6677 = fmul fast float %6673, %6675
  %6678 = fdiv fast float 1.000000e+00, %6452
  %6679 = fmul fast float %6677, %6678
  %6680 = call float @dx.op.unary.f32(i32 6, float %6679)  ; FAbs(value)
  %6681 = fmul fast float %6666, %6471
  %6682 = fmul fast float %6681, %6673
  %6683 = call float @dx.op.unary.f32(i32 6, float %6682)  ; FAbs(value)
  %6684 = call float @dx.op.unary.f32(i32 6, float %6676)  ; FAbs(value)
  %6685 = call float @dx.op.binary.f32(i32 35, float %6683, float %6680)  ; FMax(a,b)
  %6686 = call float @dx.op.binary.f32(i32 35, float %6684, float %6685)  ; FMax(a,b)
  %6687 = fmul fast float %6686, 2.000000e+00
  %6688 = call float @dx.op.unary.f32(i32 23, float %6687)  ; Log(value)
  %6689 = call float @dx.op.binary.f32(i32 35, float %6688, float %6669)  ; FMax(a,b)
  %6690 = call float @dx.op.unary.f32(i32 22, float %6689)  ; Frc(value)
  %6691 = fadd fast float %6690, 0xBFEA666660000000
  %6692 = fmul fast float %6691, 8.000000e+00
  %6693 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6694 = call float @dx.op.unary.f32(i32 27, float %6689)  ; Round_ni(value)
  %6695 = fadd fast float %6694, %6693
  %6696 = call float @dx.op.binary.f32(i32 36, float %6695, float %6671)  ; FMin(a,b)
  %6697 = call float @dx.op.unary.f32(i32 27, float %6696)  ; Round_ni(value)
  %6698 = fsub fast float -0.000000e+00, %6697
  %6699 = call float @dx.op.unary.f32(i32 21, float %6698)  ; Exp(value)
  %6700 = fmul fast float %6699, %6673
  %6701 = fmul fast float %6700, %6646
  %6702 = fmul fast float %6700, %6650
  %6703 = fmul fast float %6701, 2.500000e-01
  %6704 = fmul fast float %6702, 2.500000e-01
  %6705 = fadd fast float %6703, 5.000000e-01
  %6706 = fadd fast float %6704, 5.000000e-01
  %6707 = fsub fast float %6671, %6669
  %6708 = fptoui float %6707 to i32
  %6709 = add i32 %6708, 320
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6709)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = fcmp fast une float %6696, %6671
  %6714 = fsub fast float %6646, %6711
  %6715 = fsub fast float %6650, %6712
  %6716 = call float @dx.op.unary.f32(i32 6, float %6714)  ; FAbs(value)
  %6717 = call float @dx.op.unary.f32(i32 6, float %6715)  ; FAbs(value)
  %6718 = fmul fast float %6716, %6700
  %6719 = fmul fast float %6717, %6700
  %6720 = fcmp fast olt float %6718, 1.000000e+00
  %6721 = fcmp fast olt float %6719, 1.000000e+00
  %6722 = and i1 %6720, %6721
  %6723 = or i1 %6713, %6722
  br i1 %6723, label %6724, label %7021, !dx.controlflow.hints !111

; <label>:6724                                    ; preds = %6662
  %6725 = fmul fast float %6702, 5.000000e-01
  %6726 = fmul fast float %6701, 5.000000e-01
  %6727 = fadd fast float %6725, 5.000000e-01
  %6728 = fadd fast float %6726, 5.000000e-01
  %6729 = sitofp i32 %6668 to float
  %6730 = fsub fast float %6696, %6729
  %6731 = call float @dx.op.unary.f32(i32 27, float %6730)  ; Round_ni(value)
  %6732 = call float @dx.op.unary.f32(i32 22, float %6696)  ; Frc(value)
  %6733 = call float @dx.op.unary.f32(i32 22, float %6728)  ; Frc(value)
  %6734 = call float @dx.op.unary.f32(i32 22, float %6727)  ; Frc(value)
  %6735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6733, float %6734, float %6731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6736 = extractvalue %dx.types.ResRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.ResRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.ResRet.f32 %6735, 2
  %6739 = extractvalue %dx.types.ResRet.f32 %6735, 3
  %6740 = fcmp fast ogt float %6732, 0.000000e+00
  br i1 %6740, label %6741, label %6762, !dx.controlflow.hints !112

; <label>:6741                                    ; preds = %6724
  %6742 = fadd fast float %6731, 1.000000e+00
  %6743 = call float @dx.op.unary.f32(i32 22, float %6705)  ; Frc(value)
  %6744 = call float @dx.op.unary.f32(i32 22, float %6706)  ; Frc(value)
  %6745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6743, float %6744, float %6742, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6746 = extractvalue %dx.types.ResRet.f32 %6745, 0
  %6747 = extractvalue %dx.types.ResRet.f32 %6745, 1
  %6748 = extractvalue %dx.types.ResRet.f32 %6745, 2
  %6749 = extractvalue %dx.types.ResRet.f32 %6745, 3
  %6750 = fsub fast float %6746, %6736
  %6751 = fsub fast float %6747, %6737
  %6752 = fsub fast float %6748, %6738
  %6753 = fsub fast float %6749, %6739
  %6754 = fmul fast float %6750, %6732
  %6755 = fmul fast float %6751, %6732
  %6756 = fmul fast float %6752, %6732
  %6757 = fmul fast float %6753, %6732
  %6758 = fadd fast float %6754, %6736
  %6759 = fadd fast float %6755, %6737
  %6760 = fadd fast float %6756, %6738
  %6761 = fadd fast float %6757, %6739
  br label %6762

; <label>:6762                                    ; preds = %6741, %6724
  %6763 = phi float [ %6758, %6741 ], [ %6736, %6724 ]
  %6764 = phi float [ %6759, %6741 ], [ %6737, %6724 ]
  %6765 = phi float [ %6760, %6741 ], [ %6738, %6724 ]
  %6766 = phi float [ %6761, %6741 ], [ %6739, %6724 ]
  %6767 = fadd fast float %6763, -5.000000e-01
  %6768 = fadd fast float %6765, -5.000000e-01
  %6769 = fmul fast float %6767, 0xBFD5555560000000
  %6770 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6768, float %6769)  ; FMad(a,b,c)
  %6771 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6764, float 0.000000e+00)  ; FMad(a,b,c)
  %6772 = fadd fast float %6771, %6766
  %6773 = fmul fast float %6767, -7.500000e-01
  %6774 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6768, float %6773)  ; FMad(a,b,c)
  %6775 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6764, float 0.000000e+00)  ; FMad(a,b,c)
  %6776 = fadd fast float %6775, %6766
  %6777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6777, 0
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.CBufRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.CBufRet.f32 %6779, 2
  %6783 = extractvalue %dx.types.CBufRet.f32 %6779, 3
  %6784 = fsub fast float %6780, %6770
  %6785 = fsub fast float %6781, %6772
  %6786 = fsub fast float %6782, %6774
  %6787 = fsub fast float %6783, %6776
  %6788 = fmul fast float %6784, %6778
  %6789 = fmul fast float %6785, %6778
  %6790 = fmul fast float %6786, %6778
  %6791 = fmul fast float %6787, %6778
  %6792 = fadd fast float %6788, %6770
  %6793 = fadd fast float %6789, %6772
  %6794 = fadd fast float %6790, %6774
  %6795 = fadd fast float %6791, %6776
  %6796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6797 = extractvalue %dx.types.ResRet.i32 %6796, 0
  %6798 = and i32 %6797, 536870911
  %6799 = uitofp i32 %6798 to float
  %6800 = fmul fast float %6799, %6646
  %6801 = fmul fast float %6799, %6650
  %6802 = fptoui float %6800 to i32
  %6803 = fptoui float %6801 to i32
  %6804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6805 = extractvalue %dx.types.ResRet.i32 %6804, 0
  %6806 = and i32 %6805, 31
  %6807 = lshr i32 %6802, %6806
  %6808 = lshr i32 %6803, %6806
  %6809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6810 = extractvalue %dx.types.ResRet.i32 %6809, 0
  %6811 = and i32 %6810, 31
  %6812 = shl i32 1, %6811
  %6813 = call i32 @dx.op.binary.i32(i32 40, i32 %6812, i32 4)  ; UMin(a,b)
  %6814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6815 = extractvalue %dx.types.ResRet.i32 %6814, 0
  %6816 = extractvalue %dx.types.ResRet.i32 %6814, 1
  %6817 = icmp eq i32 %6813, 0
  br i1 %6817, label %6859, label %6818

; <label>:6818                                    ; preds = %6762
  br label %6819

; <label>:6819                                    ; preds = %6847, %6818
  %6820 = phi i32 [ %6850, %6847 ], [ 0, %6818 ]
  %6821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6822 = extractvalue %dx.types.ResRet.i32 %6821, 0
  %6823 = lshr i32 %6822, 16
  %6824 = and i32 %6823, 31
  %6825 = shl i32 %6808, %6824
  %6826 = add i32 %6825, %6807
  %6827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6828 = extractvalue %dx.types.ResRet.i32 %6827, 0
  %6829 = and i32 %6828, 31
  %6830 = shl i32 %6826, %6829
  %6831 = add i32 %6830, %6820
  %6832 = shl i32 %6831, 2
  %6833 = add i32 %6832, 32
  %6834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6833, i32 undef)  ; BufferLoad(srv,index,wot)
  %6835 = extractvalue %dx.types.ResRet.i32 %6834, 0
  %6836 = icmp slt i32 %6835, 0
  %6837 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6820
  %6838 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 %6820
  %6839 = bitcast float* %6837 to i32*
  %6840 = bitcast float* %6838 to i32*
  br i1 %6836, label %6841, label %6847

; <label>:6841                                    ; preds = %6819
  %6842 = and i32 %6835, 1073741823
  %6843 = add nuw nsw i32 %6842, 20
  %6844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6843, i32 undef)  ; BufferLoad(srv,index,wot)
  %6845 = extractvalue %dx.types.ResRet.i32 %6844, 0
  %6846 = extractvalue %dx.types.ResRet.i32 %6844, 1
  br label %6847

; <label>:6847                                    ; preds = %6841, %6819
  %6848 = phi i32 [ %6845, %6841 ], [ %6815, %6819 ]
  %6849 = phi i32 [ %6846, %6841 ], [ %6816, %6819 ]
  store i32 %6848, i32* %6839, align 4
  store i32 %6849, i32* %6840, align 4
  %6850 = add nuw i32 %6820, 1
  %6851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.i32 %6851, 2
  %6853 = icmp eq i32 %6852, 0
  %6854 = icmp ugt i32 %6835, -1073741825
  %6855 = and i1 %6854, %6853
  %6856 = icmp ult i32 %6850, %6813
  %6857 = and i1 %6855, %6856
  br i1 %6857, label %6819, label %6858

; <label>:6858                                    ; preds = %6847
  br label %6859

; <label>:6859                                    ; preds = %6858, %6762
  %6860 = phi i32 [ 0, %6762 ], [ %6850, %6858 ]
  %6861 = extractvalue %dx.types.CBufRet.f32 %6624, 2
  %6862 = fptoui float %6861 to i32
  %6863 = icmp eq i32 %6862, 0
  br i1 %6863, label %6915, label %6864

; <label>:6864                                    ; preds = %6859
  br label %6865

; <label>:6865                                    ; preds = %6910, %6864
  %6866 = phi i32 [ %6911, %6910 ], [ %6860, %6864 ]
  %6867 = phi i32 [ %6912, %6910 ], [ 0, %6864 ]
  %6868 = lshr i32 %6867, 2
  %6869 = and i32 %6867, 3
  %6870 = add nuw nsw i32 %6868, 83
  %6871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %6870)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.i32 %6871, 0
  %6873 = extractvalue %dx.types.CBufRet.i32 %6871, 1
  %6874 = extractvalue %dx.types.CBufRet.i32 %6871, 2
  %6875 = extractvalue %dx.types.CBufRet.i32 %6871, 3
  %6876 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %6872, i32* %6876, align 4
  %6877 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %6873, i32* %6877, align 4
  %6878 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %6874, i32* %6878, align 4
  %6879 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %6875, i32* %6879, align 4
  %6880 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %6869
  %6881 = load i32, i32* %6880, align 4, !tbaa !113, !noalias !117
  %6882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6883 = extractvalue %dx.types.ResRet.i32 %6882, 0
  %6884 = lshr i32 %6883, 16
  %6885 = and i32 %6884, 31
  %6886 = shl i32 %6808, %6885
  %6887 = add i32 %6886, %6807
  %6888 = shl i32 %6887, 2
  %6889 = add i32 %6888, %6881
  %6890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6889, i32 undef)  ; BufferLoad(srv,index,wot)
  %6891 = extractvalue %dx.types.ResRet.i32 %6890, 0
  %6892 = icmp eq i32 %6891, 0
  br i1 %6892, label %6910, label %6893

; <label>:6893                                    ; preds = %6865
  %6894 = icmp slt i32 %6891, 0
  %6895 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6866
  %6896 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 %6866
  %6897 = bitcast float* %6895 to i32*
  %6898 = bitcast float* %6896 to i32*
  br i1 %6894, label %6899, label %6906

; <label>:6899                                    ; preds = %6893
  %6900 = and i32 %6891, 1073741823
  %6901 = add i32 %6881, 20
  %6902 = add i32 %6901, %6900
  %6903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6902, i32 undef)  ; BufferLoad(srv,index,wot)
  %6904 = extractvalue %dx.types.ResRet.i32 %6903, 0
  %6905 = extractvalue %dx.types.ResRet.i32 %6903, 1
  br label %6906

; <label>:6906                                    ; preds = %6899, %6893
  %6907 = phi i32 [ %6904, %6899 ], [ %6815, %6893 ]
  %6908 = phi i32 [ %6905, %6899 ], [ %6816, %6893 ]
  store i32 %6907, i32* %6897, align 4
  store i32 %6908, i32* %6898, align 4
  %6909 = add i32 %6866, 1
  br label %6910

; <label>:6910                                    ; preds = %6906, %6865
  %6911 = phi i32 [ %6866, %6865 ], [ %6909, %6906 ]
  %6912 = add nuw i32 %6867, 1
  %6913 = icmp eq i32 %6912, %6862
  br i1 %6913, label %6914, label %6865

; <label>:6914                                    ; preds = %6910
  br label %6915

; <label>:6915                                    ; preds = %6914, %6859
  %6916 = phi i32 [ %6860, %6859 ], [ %6911, %6914 ]
  %6917 = icmp eq i32 %6916, 1
  %6918 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 0
  %6919 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 0
  br i1 %6917, label %6920, label %6923

; <label>:6920                                    ; preds = %6915
  %6921 = load float, float* %6918, align 4
  %6922 = load float, float* %6919, align 4
  br label %6950

; <label>:6923                                    ; preds = %6915
  %6924 = load float, float* %6918, align 4
  %6925 = load float, float* %6919, align 4
  %6926 = fdiv fast float 1.000000e+00, %6925
  %6927 = fsub fast float %6924, %6926
  %6928 = icmp ugt i32 %6916, 1
  br i1 %6928, label %6929, label %6945

; <label>:6929                                    ; preds = %6923
  br label %6930

; <label>:6930                                    ; preds = %6930, %6929
  %6931 = phi float [ %6940, %6930 ], [ %6927, %6929 ]
  %6932 = phi float [ %6941, %6930 ], [ %6924, %6929 ]
  %6933 = phi i32 [ %6942, %6930 ], [ 1, %6929 ]
  %6934 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6933
  %6935 = load float, float* %6934, align 4
  %6936 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 %6933
  %6937 = load float, float* %6936, align 4
  %6938 = fdiv fast float 1.000000e+00, %6937
  %6939 = fsub fast float %6935, %6938
  %6940 = call float @dx.op.binary.f32(i32 36, float %6931, float %6939)  ; FMin(a,b)
  %6941 = call float @dx.op.binary.f32(i32 35, float %6932, float %6935)  ; FMax(a,b)
  %6942 = add nuw i32 %6933, 1
  %6943 = icmp eq i32 %6942, %6916
  br i1 %6943, label %6944, label %6930

; <label>:6944                                    ; preds = %6930
  br label %6945

; <label>:6945                                    ; preds = %6944, %6923
  %6946 = phi float [ %6927, %6923 ], [ %6940, %6944 ]
  %6947 = phi float [ %6924, %6923 ], [ %6941, %6944 ]
  %6948 = fsub fast float %6947, %6946
  %6949 = fdiv fast float 1.000000e+00, %6948
  br label %6950

; <label>:6950                                    ; preds = %6945, %6920
  %6951 = phi float [ %6921, %6920 ], [ %6947, %6945 ]
  %6952 = phi float [ %6922, %6920 ], [ %6949, %6945 ]
  %6953 = fadd fast float %6654, %6951
  %6954 = fmul fast float %6953, %6952
  %6955 = call float @dx.op.unary.f32(i32 7, float %6954)  ; Saturate(value)
  %6956 = fmul fast float %6955, 2.000000e+00
  %6957 = fsub fast float 1.000000e+00, %6956
  %6958 = fmul fast float %6792, %6792
  %6959 = fsub fast float %6793, %6958
  %6960 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6959)  ; FMax(a,b)
  %6961 = fdiv fast float 1.000000e+00, %6960
  %6962 = fmul fast float %6793, %6792
  %6963 = fsub fast float %6794, %6962
  %6964 = fsub fast float %6957, %6792
  %6965 = fmul fast float %6957, %6957
  %6966 = fsub fast float %6965, %6793
  %6967 = fmul fast float %6961, %6963
  %6968 = fmul fast float %6967, %6964
  %6969 = fsub fast float %6966, %6968
  %6970 = fmul fast float %6793, %6793
  %6971 = fsub fast float %6795, %6970
  %6972 = fmul fast float %6963, %6963
  %6973 = fmul fast float %6972, %6961
  %6974 = fsub fast float %6971, %6973
  %6975 = fdiv fast float %6969, %6974
  %6976 = fmul fast float %6975, %6963
  %6977 = fsub fast float %6964, %6976
  %6978 = fmul fast float %6977, %6961
  %6979 = fmul fast float %6978, %6792
  %6980 = fsub fast float 1.000000e+00, %6979
  %6981 = fmul fast float %6975, %6793
  %6982 = fsub fast float %6980, %6981
  %6983 = fmul fast float %6978, %6978
  %6984 = fmul fast float %6975, 4.000000e+00
  %6985 = fmul fast float %6984, %6982
  %6986 = fsub fast float %6983, %6985
  %6987 = call float @dx.op.unary.f32(i32 24, float %6986)  ; Sqrt(value)
  %6988 = fcmp fast oge float %6978, 0.000000e+00
  %6989 = fsub fast float -0.000000e+00, %6987
  %6990 = select i1 %6988, float %6989, float %6987
  %6991 = fsub fast float %6990, %6978
  %6992 = fdiv fast float %6991, %6975
  %6993 = fdiv fast float %6982, %6991
  %6994 = fmul fast float %6992, 5.000000e-01
  %6995 = fmul fast float %6993, 2.000000e+00
  %6996 = select i1 %6988, float %6994, float %6995
  %6997 = select i1 %6988, float %6995, float %6994
  %6998 = call float @dx.op.binary.f32(i32 35, float %6996, float %6997)  ; FMax(a,b)
  %6999 = call float @dx.op.binary.f32(i32 36, float %6996, float %6997)  ; FMin(a,b)
  %7000 = fcmp fast ogt float %6957, %6998
  %7001 = fsub fast float %6957, %6999
  %7002 = fsub fast float %6957, %6998
  %7003 = fsub fast float %6998, %6999
  %7004 = select i1 %7000, float %7002, float %7003
  %7005 = fmul float %7001, %7004
  %7006 = select i1 %7000, float %6999, float %6957
  %7007 = fcmp fast ogt float %6957, %6999
  %7008 = fmul fast float %7006, %6998
  %7009 = fadd fast float %7006, %6998
  %7010 = fmul fast float %7009, %6792
  %7011 = fadd fast float %7008, %6793
  %7012 = fsub fast float %7011, %7010
  %7013 = fdiv fast float %7012, %7005
  %7014 = select i1 %7007, float %7013, float 0.000000e+00
  %7015 = fsub fast float 1.000000e+00, %7014
  %7016 = select i1 %7000, float %7015, float %7014
  %7017 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  %7018 = extractvalue %dx.types.CBufRet.f32 %6777, 3
  %7019 = fmul fast float %7018, %7017
  %7020 = fsub fast float 1.000000e+00, %7019
  br label %7021

; <label>:7021                                    ; preds = %6950, %6662, %6627, %6623, %6587
  %7022 = phi float [ 1.000000e+00, %6587 ], [ %7020, %6950 ], [ 1.000000e+00, %6627 ], [ 1.000000e+00, %6662 ], [ 1.000000e+00, %6623 ]
  %7023 = fcmp fast ogt float %6619, 0.000000e+00
  br i1 %7023, label %7024, label %7188, !dx.controlflow.hints !126

; <label>:7024                                    ; preds = %7021
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 2
  %7027 = fadd fast float %7026, %6500
  %7028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.f32 %7028, 2
  %7030 = extractvalue %dx.types.CBufRet.f32 %7028, 3
  %7031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.f32 %7031, 2
  %7033 = call float @dx.op.binary.f32(i32 35, float %7027, float 0.000000e+00)  ; FMax(a,b)
  %7034 = fadd fast float %7033, 0x3F10000000000000
  %7035 = fcmp fast oeq float %7032, 0.000000e+00
  br i1 %7035, label %7036, label %7103

; <label>:7036                                    ; preds = %7024
  %7037 = extractvalue %dx.types.CBufRet.f32 %7028, 1
  %7038 = extractvalue %dx.types.CBufRet.f32 %7028, 0
  %7039 = fmul fast float %7038, %6518
  %7040 = fmul fast float %7037, %6519
  %7041 = fadd fast float %7039, 5.000000e-01
  %7042 = call float @dx.op.unary.f32(i32 27, float %7041)  ; Round_ni(value)
  %7043 = fadd fast float %7040, 5.000000e-01
  %7044 = call float @dx.op.unary.f32(i32 27, float %7043)  ; Round_ni(value)
  %7045 = fsub fast float %7041, %7042
  %7046 = fsub fast float %7043, %7044
  %7047 = fadd fast float %7042, -5.000000e-01
  %7048 = fadd fast float %7044, -5.000000e-01
  %7049 = fmul fast float %7045, 2.000000e+00
  %7050 = fsub fast float 3.000000e+00, %7049
  %7051 = fadd fast float %7049, 1.000000e+00
  %7052 = fsub fast float 2.000000e+00, %7045
  %7053 = bitcast float %7050 to i32
  %7054 = sub nsw i32 2129859010, %7053
  %7055 = bitcast i32 %7054 to float
  %7056 = fmul fast float %7055, %7052
  %7057 = fadd fast float %7056, -1.000000e+00
  %7058 = bitcast float %7051 to i32
  %7059 = sub nsw i32 2129859010, %7058
  %7060 = bitcast i32 %7059 to float
  %7061 = fmul fast float %7060, %7045
  %7062 = fadd fast float %7061, 1.000000e+00
  %7063 = fmul fast float %7046, 2.000000e+00
  %7064 = fsub fast float 3.000000e+00, %7063
  %7065 = fadd fast float %7063, 1.000000e+00
  %7066 = fsub fast float 2.000000e+00, %7046
  %7067 = bitcast float %7064 to i32
  %7068 = sub nsw i32 2129859010, %7067
  %7069 = bitcast i32 %7068 to float
  %7070 = fmul fast float %7069, %7066
  %7071 = fadd fast float %7070, -1.000000e+00
  %7072 = bitcast float %7065 to i32
  %7073 = sub nsw i32 2129859010, %7072
  %7074 = bitcast i32 %7073 to float
  %7075 = fmul fast float %7074, %7046
  %7076 = fadd fast float %7075, 1.000000e+00
  %7077 = fadd fast float %7057, %7047
  %7078 = fmul fast float %7077, %7029
  %7079 = fadd fast float %7071, %7048
  %7080 = fmul fast float %7079, %7030
  %7081 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7078, float %7080, float undef, float undef, i32 0, i32 0, i32 undef, float %7034)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7082 = extractvalue %dx.types.ResRet.f32 %7081, 0
  %7083 = fmul fast float %7082, %7050
  %7084 = fadd fast float %7062, %7047
  %7085 = fmul fast float %7084, %7029
  %7086 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7085, float %7080, float undef, float undef, i32 0, i32 0, i32 undef, float %7034)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = fmul fast float %7087, %7051
  %7089 = fadd fast float %7076, %7048
  %7090 = fmul fast float %7089, %7030
  %7091 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7078, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float %7034)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7092 = extractvalue %dx.types.ResRet.f32 %7091, 0
  %7093 = fmul fast float %7092, %7050
  %7094 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7085, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float %7034)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7095 = extractvalue %dx.types.ResRet.f32 %7094, 0
  %7096 = fmul fast float %7095, %7051
  %7097 = fadd fast float %7096, %7093
  %7098 = fmul fast float %7097, %7065
  %7099 = fadd fast float %7088, %7083
  %7100 = fmul fast float %7099, %7064
  %7101 = fadd fast float %7100, %7098
  %7102 = fmul fast float %7101, 6.250000e-02
  br label %7188

; <label>:7103                                    ; preds = %7024
  %7104 = fmul fast float %292, 0x401921FB60000000
  %7105 = call float @dx.op.unary.f32(i32 13, float %7104)  ; Sin(value)
  %7106 = call float @dx.op.unary.f32(i32 12, float %7104)  ; Cos(value)
  %7107 = fsub fast float -0.000000e+00, %7105
  br label %7108

; <label>:7108                                    ; preds = %7157, %7103
  %7109 = phi float [ 0.000000e+00, %7103 ], [ %7152, %7157 ]
  %7110 = phi float [ 0.000000e+00, %7103 ], [ %7154, %7157 ]
  %7111 = phi i32 [ 0, %7103 ], [ %7158, %7157 ]
  %7112 = mul i32 %7111, 2
  %7113 = add i32 0, %7112
  %7114 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7113
  %7115 = load float, float* %7114, align 4
  %7116 = mul i32 %7111, 2
  %7117 = add i32 1, %7116
  %7118 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7117
  %7119 = load float, float* %7118, align 4
  %7120 = fmul fast float %7115, %7106
  %7121 = call float @dx.op.tertiary.f32(i32 46, float %7119, float %7107, float %7120)  ; FMad(a,b,c)
  %7122 = fmul fast float %7115, %7105
  %7123 = call float @dx.op.tertiary.f32(i32 46, float %7119, float %7106, float %7122)  ; FMad(a,b,c)
  %7124 = fmul fast float %7121, %7032
  %7125 = fmul fast float %7123, %7032
  %7126 = fadd fast float %7124, %6518
  %7127 = fadd fast float %7125, %6519
  %7128 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %7126, float %7127, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7129 = extractvalue %dx.types.ResRet.f32 %7128, 0
  %7130 = extractvalue %dx.types.ResRet.f32 %7128, 1
  %7131 = extractvalue %dx.types.ResRet.f32 %7128, 2
  %7132 = extractvalue %dx.types.ResRet.f32 %7128, 3
  %7133 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 0
  store float %7129, float* %7133, align 4
  %7134 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 1
  store float %7130, float* %7134, align 4
  %7135 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 2
  store float %7131, float* %7135, align 4
  %7136 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 3
  store float %7132, float* %7136, align 4
  %7137 = fsub fast float %7129, %7034
  %7138 = fcmp fast olt float %7137, 0.000000e+00
  %7139 = select i1 %7138, float 0.000000e+00, float 1.000000e+00
  %7140 = fadd fast float %7139, %7109
  %7141 = fmul fast float %7139, %7137
  %7142 = fadd fast float %7141, %7110
  br label %7143

; <label>:7143                                    ; preds = %7143, %7108
  %7144 = phi i32 [ 1, %7108 ], [ %7155, %7143 ]
  %7145 = phi float [ %7142, %7108 ], [ %7154, %7143 ]
  %7146 = phi float [ %7140, %7108 ], [ %7152, %7143 ]
  %7147 = getelementptr [4 x float], [4 x float]* %119, i32 0, i32 %7144
  %7148 = load float, float* %7147, align 4, !tbaa !127, !noalias !117
  %7149 = fsub fast float %7148, %7034
  %7150 = fcmp fast olt float %7149, 0.000000e+00
  %7151 = select i1 %7150, float 0.000000e+00, float 1.000000e+00
  %7152 = fadd fast float %7151, %7146
  %7153 = fmul fast float %7151, %7149
  %7154 = fadd fast float %7153, %7145
  %7155 = add nuw nsw i32 %7144, 1
  %7156 = icmp eq i32 %7155, 4
  br i1 %7156, label %7157, label %7143, !llvm.loop !129

; <label>:7157                                    ; preds = %7143
  %7158 = add nuw nsw i32 %7111, 1
  %7159 = icmp eq i32 %7158, 8
  br i1 %7159, label %7160, label %7108, !llvm.loop !130

; <label>:7160                                    ; preds = %7157
  %7161 = fdiv fast float 1.000000e+00, %7152
  %7162 = fmul fast float %7161, %7154
  %7163 = fdiv fast float 1.000000e+00, %7034
  %7164 = fmul fast float %7162, %7163
  %7165 = call float @dx.op.unary.f32(i32 7, float %7164)  ; Saturate(value)
  %7166 = call float @dx.op.binary.f32(i32 35, float %7165, float 0.000000e+00)  ; FMax(a,b)
  %7167 = fmul fast float %7152, 3.125000e-02
  %7168 = call float @dx.op.unary.f32(i32 7, float %7167)  ; Saturate(value)
  %7169 = fmul fast float %7168, 2.000000e+00
  %7170 = fadd fast float %7169, -1.000000e+00
  %7171 = fcmp fast ogt float %7170, 0.000000e+00
  %7172 = fcmp fast olt float %7170, 0.000000e+00
  %7173 = zext i1 %7171 to i32
  %7174 = zext i1 %7172 to i32
  %7175 = sub nsw i32 %7173, %7174
  %7176 = sitofp i32 %7175 to float
  %7177 = fmul fast float %7176, %7170
  %7178 = fsub fast float 1.000000e+00, %7177
  %7179 = fmul fast float %7178, %7178
  %7180 = fmul fast float %7179, %7178
  %7181 = fsub fast float %7178, %7180
  %7182 = fmul fast float %7181, %7166
  %7183 = fsub fast float 1.000000e+00, %7180
  %7184 = fsub fast float %7183, %7182
  %7185 = fmul fast float %7176, 5.000000e-01
  %7186 = fmul fast float %7185, %7184
  %7187 = fsub fast float 5.000000e-01, %7186
  br label %7188

; <label>:7188                                    ; preds = %7160, %7036, %7021
  %7189 = phi float [ 1.000000e+00, %7021 ], [ %7102, %7036 ], [ %7187, %7160 ]
  %7190 = fcmp fast ogt float %6617, 0.000000e+00
  br i1 %7190, label %7191, label %7355, !dx.controlflow.hints !131

; <label>:7191                                    ; preds = %7188
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 1
  %7194 = fadd fast float %7193, %6500
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 2
  %7197 = extractvalue %dx.types.CBufRet.f32 %7195, 3
  %7198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7199 = extractvalue %dx.types.CBufRet.f32 %7198, 1
  %7200 = call float @dx.op.binary.f32(i32 35, float %7194, float 0.000000e+00)  ; FMax(a,b)
  %7201 = fadd fast float %7200, 0x3F10000000000000
  %7202 = fcmp fast oeq float %7199, 0.000000e+00
  br i1 %7202, label %7203, label %7270

; <label>:7203                                    ; preds = %7191
  %7204 = extractvalue %dx.types.CBufRet.f32 %7195, 1
  %7205 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7206 = fmul fast float %7205, %6510
  %7207 = fmul fast float %7204, %6511
  %7208 = fadd fast float %7206, 5.000000e-01
  %7209 = call float @dx.op.unary.f32(i32 27, float %7208)  ; Round_ni(value)
  %7210 = fadd fast float %7207, 5.000000e-01
  %7211 = call float @dx.op.unary.f32(i32 27, float %7210)  ; Round_ni(value)
  %7212 = fsub fast float %7208, %7209
  %7213 = fsub fast float %7210, %7211
  %7214 = fadd fast float %7209, -5.000000e-01
  %7215 = fadd fast float %7211, -5.000000e-01
  %7216 = fmul fast float %7212, 2.000000e+00
  %7217 = fsub fast float 3.000000e+00, %7216
  %7218 = fadd fast float %7216, 1.000000e+00
  %7219 = fsub fast float 2.000000e+00, %7212
  %7220 = bitcast float %7217 to i32
  %7221 = sub nsw i32 2129859010, %7220
  %7222 = bitcast i32 %7221 to float
  %7223 = fmul fast float %7222, %7219
  %7224 = fadd fast float %7223, -1.000000e+00
  %7225 = bitcast float %7218 to i32
  %7226 = sub nsw i32 2129859010, %7225
  %7227 = bitcast i32 %7226 to float
  %7228 = fmul fast float %7227, %7212
  %7229 = fadd fast float %7228, 1.000000e+00
  %7230 = fmul fast float %7213, 2.000000e+00
  %7231 = fsub fast float 3.000000e+00, %7230
  %7232 = fadd fast float %7230, 1.000000e+00
  %7233 = fsub fast float 2.000000e+00, %7213
  %7234 = bitcast float %7231 to i32
  %7235 = sub nsw i32 2129859010, %7234
  %7236 = bitcast i32 %7235 to float
  %7237 = fmul fast float %7236, %7233
  %7238 = fadd fast float %7237, -1.000000e+00
  %7239 = bitcast float %7232 to i32
  %7240 = sub nsw i32 2129859010, %7239
  %7241 = bitcast i32 %7240 to float
  %7242 = fmul fast float %7241, %7213
  %7243 = fadd fast float %7242, 1.000000e+00
  %7244 = fadd fast float %7224, %7214
  %7245 = fmul fast float %7244, %7196
  %7246 = fadd fast float %7238, %7215
  %7247 = fmul fast float %7246, %7197
  %7248 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7245, float %7247, float undef, float undef, i32 0, i32 0, i32 undef, float %7201)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7249 = extractvalue %dx.types.ResRet.f32 %7248, 0
  %7250 = fmul fast float %7249, %7217
  %7251 = fadd fast float %7229, %7214
  %7252 = fmul fast float %7251, %7196
  %7253 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7252, float %7247, float undef, float undef, i32 0, i32 0, i32 undef, float %7201)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7254 = extractvalue %dx.types.ResRet.f32 %7253, 0
  %7255 = fmul fast float %7254, %7218
  %7256 = fadd fast float %7243, %7215
  %7257 = fmul fast float %7256, %7197
  %7258 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7245, float %7257, float undef, float undef, i32 0, i32 0, i32 undef, float %7201)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7259 = extractvalue %dx.types.ResRet.f32 %7258, 0
  %7260 = fmul fast float %7259, %7217
  %7261 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7252, float %7257, float undef, float undef, i32 0, i32 0, i32 undef, float %7201)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = fmul fast float %7262, %7218
  %7264 = fadd fast float %7263, %7260
  %7265 = fmul fast float %7264, %7232
  %7266 = fadd fast float %7255, %7250
  %7267 = fmul fast float %7266, %7231
  %7268 = fadd fast float %7267, %7265
  %7269 = fmul fast float %7268, 6.250000e-02
  br label %7355

; <label>:7270                                    ; preds = %7191
  %7271 = fmul fast float %292, 0x401921FB60000000
  %7272 = call float @dx.op.unary.f32(i32 13, float %7271)  ; Sin(value)
  %7273 = call float @dx.op.unary.f32(i32 12, float %7271)  ; Cos(value)
  %7274 = fsub fast float -0.000000e+00, %7272
  br label %7275

; <label>:7275                                    ; preds = %7324, %7270
  %7276 = phi float [ 0.000000e+00, %7270 ], [ %7319, %7324 ]
  %7277 = phi float [ 0.000000e+00, %7270 ], [ %7321, %7324 ]
  %7278 = phi i32 [ 0, %7270 ], [ %7325, %7324 ]
  %7279 = mul i32 %7278, 2
  %7280 = add i32 0, %7279
  %7281 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7280
  %7282 = load float, float* %7281, align 4
  %7283 = mul i32 %7278, 2
  %7284 = add i32 1, %7283
  %7285 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7284
  %7286 = load float, float* %7285, align 4
  %7287 = fmul fast float %7282, %7273
  %7288 = call float @dx.op.tertiary.f32(i32 46, float %7286, float %7274, float %7287)  ; FMad(a,b,c)
  %7289 = fmul fast float %7282, %7272
  %7290 = call float @dx.op.tertiary.f32(i32 46, float %7286, float %7273, float %7289)  ; FMad(a,b,c)
  %7291 = fmul fast float %7288, %7199
  %7292 = fmul fast float %7290, %7199
  %7293 = fadd fast float %7291, %6510
  %7294 = fadd fast float %7292, %6511
  %7295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7293, float %7294, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7296 = extractvalue %dx.types.ResRet.f32 %7295, 0
  %7297 = extractvalue %dx.types.ResRet.f32 %7295, 1
  %7298 = extractvalue %dx.types.ResRet.f32 %7295, 2
  %7299 = extractvalue %dx.types.ResRet.f32 %7295, 3
  %7300 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 0
  store float %7296, float* %7300, align 4
  %7301 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 1
  store float %7297, float* %7301, align 4
  %7302 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 2
  store float %7298, float* %7302, align 4
  %7303 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 3
  store float %7299, float* %7303, align 4
  %7304 = fsub fast float %7296, %7201
  %7305 = fcmp fast olt float %7304, 0.000000e+00
  %7306 = select i1 %7305, float 0.000000e+00, float 1.000000e+00
  %7307 = fadd fast float %7306, %7276
  %7308 = fmul fast float %7306, %7304
  %7309 = fadd fast float %7308, %7277
  br label %7310

; <label>:7310                                    ; preds = %7310, %7275
  %7311 = phi i32 [ 1, %7275 ], [ %7322, %7310 ]
  %7312 = phi float [ %7309, %7275 ], [ %7321, %7310 ]
  %7313 = phi float [ %7307, %7275 ], [ %7319, %7310 ]
  %7314 = getelementptr [4 x float], [4 x float]* %118, i32 0, i32 %7311
  %7315 = load float, float* %7314, align 4, !tbaa !127, !noalias !117
  %7316 = fsub fast float %7315, %7201
  %7317 = fcmp fast olt float %7316, 0.000000e+00
  %7318 = select i1 %7317, float 0.000000e+00, float 1.000000e+00
  %7319 = fadd fast float %7318, %7313
  %7320 = fmul fast float %7318, %7316
  %7321 = fadd fast float %7320, %7312
  %7322 = add nuw nsw i32 %7311, 1
  %7323 = icmp eq i32 %7322, 4
  br i1 %7323, label %7324, label %7310, !llvm.loop !129

; <label>:7324                                    ; preds = %7310
  %7325 = add nuw nsw i32 %7278, 1
  %7326 = icmp eq i32 %7325, 8
  br i1 %7326, label %7327, label %7275, !llvm.loop !130

; <label>:7327                                    ; preds = %7324
  %7328 = fdiv fast float 1.000000e+00, %7319
  %7329 = fmul fast float %7328, %7321
  %7330 = fdiv fast float 1.000000e+00, %7201
  %7331 = fmul fast float %7329, %7330
  %7332 = call float @dx.op.unary.f32(i32 7, float %7331)  ; Saturate(value)
  %7333 = call float @dx.op.binary.f32(i32 35, float %7332, float 0.000000e+00)  ; FMax(a,b)
  %7334 = fmul fast float %7319, 3.125000e-02
  %7335 = call float @dx.op.unary.f32(i32 7, float %7334)  ; Saturate(value)
  %7336 = fmul fast float %7335, 2.000000e+00
  %7337 = fadd fast float %7336, -1.000000e+00
  %7338 = fcmp fast ogt float %7337, 0.000000e+00
  %7339 = fcmp fast olt float %7337, 0.000000e+00
  %7340 = zext i1 %7338 to i32
  %7341 = zext i1 %7339 to i32
  %7342 = sub nsw i32 %7340, %7341
  %7343 = sitofp i32 %7342 to float
  %7344 = fmul fast float %7343, %7337
  %7345 = fsub fast float 1.000000e+00, %7344
  %7346 = fmul fast float %7345, %7345
  %7347 = fmul fast float %7346, %7345
  %7348 = fsub fast float %7345, %7347
  %7349 = fmul fast float %7348, %7333
  %7350 = fsub fast float 1.000000e+00, %7347
  %7351 = fsub fast float %7350, %7349
  %7352 = fmul fast float %7343, 5.000000e-01
  %7353 = fmul fast float %7352, %7351
  %7354 = fsub fast float 5.000000e-01, %7353
  br label %7355

; <label>:7355                                    ; preds = %7327, %7203, %7188
  %7356 = phi float [ 1.000000e+00, %7188 ], [ %7269, %7203 ], [ %7354, %7327 ]
  %7357 = fcmp fast ogt float %6616, 0.000000e+00
  br i1 %7357, label %7358, label %7676, !dx.controlflow.hints !132

; <label>:7358                                    ; preds = %7355
  %7359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7360 = extractvalue %dx.types.CBufRet.f32 %7359, 0
  %7361 = fadd fast float %7360, %6500
  %7362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7362, 2
  %7364 = extractvalue %dx.types.CBufRet.f32 %7362, 3
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 0
  %7367 = call float @dx.op.binary.f32(i32 35, float %7361, float 0.000000e+00)  ; FMax(a,b)
  %7368 = fadd fast float %7367, 0x3F10000000000000
  %7369 = fcmp fast oeq float %7366, 0.000000e+00
  br i1 %6503, label %7370, label %7523, !dx.controlflow.hints !133

; <label>:7370                                    ; preds = %7358
  br i1 %7369, label %7371, label %7438

; <label>:7371                                    ; preds = %7370
  %7372 = extractvalue %dx.types.CBufRet.f32 %7362, 1
  %7373 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7374 = fmul fast float %7373, %6492
  %7375 = fmul fast float %7372, %6496
  %7376 = fadd fast float %7374, 5.000000e-01
  %7377 = call float @dx.op.unary.f32(i32 27, float %7376)  ; Round_ni(value)
  %7378 = fadd fast float %7375, 5.000000e-01
  %7379 = call float @dx.op.unary.f32(i32 27, float %7378)  ; Round_ni(value)
  %7380 = fsub fast float %7376, %7377
  %7381 = fsub fast float %7378, %7379
  %7382 = fadd fast float %7377, -5.000000e-01
  %7383 = fadd fast float %7379, -5.000000e-01
  %7384 = fmul fast float %7380, 2.000000e+00
  %7385 = fsub fast float 3.000000e+00, %7384
  %7386 = fadd fast float %7384, 1.000000e+00
  %7387 = fsub fast float 2.000000e+00, %7380
  %7388 = bitcast float %7385 to i32
  %7389 = sub nsw i32 2129859010, %7388
  %7390 = bitcast i32 %7389 to float
  %7391 = fmul fast float %7390, %7387
  %7392 = fadd fast float %7391, -1.000000e+00
  %7393 = bitcast float %7386 to i32
  %7394 = sub nsw i32 2129859010, %7393
  %7395 = bitcast i32 %7394 to float
  %7396 = fmul fast float %7395, %7380
  %7397 = fadd fast float %7396, 1.000000e+00
  %7398 = fmul fast float %7381, 2.000000e+00
  %7399 = fsub fast float 3.000000e+00, %7398
  %7400 = fadd fast float %7398, 1.000000e+00
  %7401 = fsub fast float 2.000000e+00, %7381
  %7402 = bitcast float %7399 to i32
  %7403 = sub nsw i32 2129859010, %7402
  %7404 = bitcast i32 %7403 to float
  %7405 = fmul fast float %7404, %7401
  %7406 = fadd fast float %7405, -1.000000e+00
  %7407 = bitcast float %7400 to i32
  %7408 = sub nsw i32 2129859010, %7407
  %7409 = bitcast i32 %7408 to float
  %7410 = fmul fast float %7409, %7381
  %7411 = fadd fast float %7410, 1.000000e+00
  %7412 = fadd fast float %7392, %7382
  %7413 = fmul fast float %7412, %7363
  %7414 = fadd fast float %7406, %7383
  %7415 = fmul fast float %7414, %7364
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7413, float %7415, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = fmul fast float %7417, %7385
  %7419 = fadd fast float %7397, %7382
  %7420 = fmul fast float %7419, %7363
  %7421 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7420, float %7415, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = fmul fast float %7422, %7386
  %7424 = fadd fast float %7411, %7383
  %7425 = fmul fast float %7424, %7364
  %7426 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7413, float %7425, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = fmul fast float %7427, %7385
  %7429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7420, float %7425, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = fmul fast float %7430, %7386
  %7432 = fadd fast float %7431, %7428
  %7433 = fmul fast float %7432, %7400
  %7434 = fadd fast float %7423, %7418
  %7435 = fmul fast float %7434, %7399
  %7436 = fadd fast float %7435, %7433
  %7437 = fmul fast float %7436, 6.250000e-02
  br label %7676

; <label>:7438                                    ; preds = %7370
  %7439 = fmul fast float %292, 0x401921FB60000000
  %7440 = call float @dx.op.unary.f32(i32 13, float %7439)  ; Sin(value)
  %7441 = call float @dx.op.unary.f32(i32 12, float %7439)  ; Cos(value)
  %7442 = fsub fast float -0.000000e+00, %7440
  br label %7443

; <label>:7443                                    ; preds = %7492, %7438
  %7444 = phi float [ 0.000000e+00, %7438 ], [ %7487, %7492 ]
  %7445 = phi float [ 0.000000e+00, %7438 ], [ %7489, %7492 ]
  %7446 = phi i32 [ 0, %7438 ], [ %7493, %7492 ]
  %7447 = mul i32 %7446, 2
  %7448 = add i32 0, %7447
  %7449 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7448
  %7450 = load float, float* %7449, align 4
  %7451 = mul i32 %7446, 2
  %7452 = add i32 1, %7451
  %7453 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7452
  %7454 = load float, float* %7453, align 4
  %7455 = fmul fast float %7450, %7441
  %7456 = call float @dx.op.tertiary.f32(i32 46, float %7454, float %7442, float %7455)  ; FMad(a,b,c)
  %7457 = fmul fast float %7450, %7440
  %7458 = call float @dx.op.tertiary.f32(i32 46, float %7454, float %7441, float %7457)  ; FMad(a,b,c)
  %7459 = fmul fast float %7456, %7366
  %7460 = fmul fast float %7458, %7366
  %7461 = fadd fast float %7459, %6492
  %7462 = fadd fast float %7460, %6496
  %7463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7461, float %7462, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.ResRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.ResRet.f32 %7463, 2
  %7467 = extractvalue %dx.types.ResRet.f32 %7463, 3
  %7468 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 0
  store float %7464, float* %7468, align 4
  %7469 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 1
  store float %7465, float* %7469, align 4
  %7470 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 2
  store float %7466, float* %7470, align 4
  %7471 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 3
  store float %7467, float* %7471, align 4
  %7472 = fsub fast float %7464, %7368
  %7473 = fcmp fast olt float %7472, 0.000000e+00
  %7474 = select i1 %7473, float 0.000000e+00, float 1.000000e+00
  %7475 = fadd fast float %7474, %7444
  %7476 = fmul fast float %7474, %7472
  %7477 = fadd fast float %7476, %7445
  br label %7478

; <label>:7478                                    ; preds = %7478, %7443
  %7479 = phi i32 [ 1, %7443 ], [ %7490, %7478 ]
  %7480 = phi float [ %7477, %7443 ], [ %7489, %7478 ]
  %7481 = phi float [ %7475, %7443 ], [ %7487, %7478 ]
  %7482 = getelementptr [4 x float], [4 x float]* %117, i32 0, i32 %7479
  %7483 = load float, float* %7482, align 4, !tbaa !127, !noalias !117
  %7484 = fsub fast float %7483, %7368
  %7485 = fcmp fast olt float %7484, 0.000000e+00
  %7486 = select i1 %7485, float 0.000000e+00, float 1.000000e+00
  %7487 = fadd fast float %7486, %7481
  %7488 = fmul fast float %7486, %7484
  %7489 = fadd fast float %7488, %7480
  %7490 = add nuw nsw i32 %7479, 1
  %7491 = icmp eq i32 %7490, 4
  br i1 %7491, label %7492, label %7478, !llvm.loop !129

; <label>:7492                                    ; preds = %7478
  %7493 = add nuw nsw i32 %7446, 1
  %7494 = icmp eq i32 %7493, 8
  br i1 %7494, label %7495, label %7443, !llvm.loop !130

; <label>:7495                                    ; preds = %7492
  %7496 = fdiv fast float 1.000000e+00, %7487
  %7497 = fmul fast float %7496, %7489
  %7498 = fdiv fast float 1.000000e+00, %7368
  %7499 = fmul fast float %7497, %7498
  %7500 = call float @dx.op.unary.f32(i32 7, float %7499)  ; Saturate(value)
  %7501 = call float @dx.op.binary.f32(i32 35, float %7500, float 0.000000e+00)  ; FMax(a,b)
  %7502 = fmul fast float %7487, 3.125000e-02
  %7503 = call float @dx.op.unary.f32(i32 7, float %7502)  ; Saturate(value)
  %7504 = fmul fast float %7503, 2.000000e+00
  %7505 = fadd fast float %7504, -1.000000e+00
  %7506 = fcmp fast ogt float %7505, 0.000000e+00
  %7507 = fcmp fast olt float %7505, 0.000000e+00
  %7508 = zext i1 %7506 to i32
  %7509 = zext i1 %7507 to i32
  %7510 = sub nsw i32 %7508, %7509
  %7511 = sitofp i32 %7510 to float
  %7512 = fmul fast float %7511, %7505
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = fmul fast float %7513, %7513
  %7515 = fmul fast float %7514, %7513
  %7516 = fsub fast float %7513, %7515
  %7517 = fmul fast float %7516, %7501
  %7518 = fsub fast float 1.000000e+00, %7515
  %7519 = fsub fast float %7518, %7517
  %7520 = fmul fast float %7511, 5.000000e-01
  %7521 = fmul fast float %7520, %7519
  %7522 = fsub fast float 5.000000e-01, %7521
  br label %7676

; <label>:7523                                    ; preds = %7358
  br i1 %7369, label %7524, label %7591

; <label>:7524                                    ; preds = %7523
  %7525 = extractvalue %dx.types.CBufRet.f32 %7362, 1
  %7526 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7527 = fmul fast float %7526, %6492
  %7528 = fmul fast float %7525, %6496
  %7529 = fadd fast float %7527, 5.000000e-01
  %7530 = call float @dx.op.unary.f32(i32 27, float %7529)  ; Round_ni(value)
  %7531 = fadd fast float %7528, 5.000000e-01
  %7532 = call float @dx.op.unary.f32(i32 27, float %7531)  ; Round_ni(value)
  %7533 = fsub fast float %7529, %7530
  %7534 = fsub fast float %7531, %7532
  %7535 = fadd fast float %7530, -5.000000e-01
  %7536 = fadd fast float %7532, -5.000000e-01
  %7537 = fmul fast float %7533, 2.000000e+00
  %7538 = fsub fast float 3.000000e+00, %7537
  %7539 = fadd fast float %7537, 1.000000e+00
  %7540 = fsub fast float 2.000000e+00, %7533
  %7541 = bitcast float %7538 to i32
  %7542 = sub nsw i32 2129859010, %7541
  %7543 = bitcast i32 %7542 to float
  %7544 = fmul fast float %7543, %7540
  %7545 = fadd fast float %7544, -1.000000e+00
  %7546 = bitcast float %7539 to i32
  %7547 = sub nsw i32 2129859010, %7546
  %7548 = bitcast i32 %7547 to float
  %7549 = fmul fast float %7548, %7533
  %7550 = fadd fast float %7549, 1.000000e+00
  %7551 = fmul fast float %7534, 2.000000e+00
  %7552 = fsub fast float 3.000000e+00, %7551
  %7553 = fadd fast float %7551, 1.000000e+00
  %7554 = fsub fast float 2.000000e+00, %7534
  %7555 = bitcast float %7552 to i32
  %7556 = sub nsw i32 2129859010, %7555
  %7557 = bitcast i32 %7556 to float
  %7558 = fmul fast float %7557, %7554
  %7559 = fadd fast float %7558, -1.000000e+00
  %7560 = bitcast float %7553 to i32
  %7561 = sub nsw i32 2129859010, %7560
  %7562 = bitcast i32 %7561 to float
  %7563 = fmul fast float %7562, %7534
  %7564 = fadd fast float %7563, 1.000000e+00
  %7565 = fadd fast float %7545, %7535
  %7566 = fmul fast float %7565, %7363
  %7567 = fadd fast float %7559, %7536
  %7568 = fmul fast float %7567, %7364
  %7569 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7566, float %7568, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 0
  %7571 = fmul fast float %7570, %7538
  %7572 = fadd fast float %7550, %7535
  %7573 = fmul fast float %7572, %7363
  %7574 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7573, float %7568, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7575 = extractvalue %dx.types.ResRet.f32 %7574, 0
  %7576 = fmul fast float %7575, %7539
  %7577 = fadd fast float %7564, %7536
  %7578 = fmul fast float %7577, %7364
  %7579 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7566, float %7578, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7580 = extractvalue %dx.types.ResRet.f32 %7579, 0
  %7581 = fmul fast float %7580, %7538
  %7582 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7573, float %7578, float undef, float undef, i32 0, i32 0, i32 undef, float %7368)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = fmul fast float %7583, %7539
  %7585 = fadd fast float %7584, %7581
  %7586 = fmul fast float %7585, %7553
  %7587 = fadd fast float %7576, %7571
  %7588 = fmul fast float %7587, %7552
  %7589 = fadd fast float %7588, %7586
  %7590 = fmul fast float %7589, 6.250000e-02
  br label %7676

; <label>:7591                                    ; preds = %7523
  %7592 = fmul fast float %292, 0x401921FB60000000
  %7593 = call float @dx.op.unary.f32(i32 13, float %7592)  ; Sin(value)
  %7594 = call float @dx.op.unary.f32(i32 12, float %7592)  ; Cos(value)
  %7595 = fsub fast float -0.000000e+00, %7593
  br label %7596

; <label>:7596                                    ; preds = %7645, %7591
  %7597 = phi float [ 0.000000e+00, %7591 ], [ %7640, %7645 ]
  %7598 = phi float [ 0.000000e+00, %7591 ], [ %7642, %7645 ]
  %7599 = phi i32 [ 0, %7591 ], [ %7646, %7645 ]
  %7600 = mul i32 %7599, 2
  %7601 = add i32 0, %7600
  %7602 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7601
  %7603 = load float, float* %7602, align 4
  %7604 = mul i32 %7599, 2
  %7605 = add i32 1, %7604
  %7606 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7605
  %7607 = load float, float* %7606, align 4
  %7608 = fmul fast float %7603, %7594
  %7609 = call float @dx.op.tertiary.f32(i32 46, float %7607, float %7595, float %7608)  ; FMad(a,b,c)
  %7610 = fmul fast float %7603, %7593
  %7611 = call float @dx.op.tertiary.f32(i32 46, float %7607, float %7594, float %7610)  ; FMad(a,b,c)
  %7612 = fmul fast float %7609, %7366
  %7613 = fmul fast float %7611, %7366
  %7614 = fadd fast float %7612, %6492
  %7615 = fadd fast float %7613, %6496
  %7616 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7614, float %7615, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 0
  %7618 = extractvalue %dx.types.ResRet.f32 %7616, 1
  %7619 = extractvalue %dx.types.ResRet.f32 %7616, 2
  %7620 = extractvalue %dx.types.ResRet.f32 %7616, 3
  %7621 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 0
  store float %7617, float* %7621, align 4
  %7622 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 1
  store float %7618, float* %7622, align 4
  %7623 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 2
  store float %7619, float* %7623, align 4
  %7624 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 3
  store float %7620, float* %7624, align 4
  %7625 = fsub fast float %7617, %7368
  %7626 = fcmp fast olt float %7625, 0.000000e+00
  %7627 = select i1 %7626, float 0.000000e+00, float 1.000000e+00
  %7628 = fadd fast float %7627, %7597
  %7629 = fmul fast float %7627, %7625
  %7630 = fadd fast float %7629, %7598
  br label %7631

; <label>:7631                                    ; preds = %7631, %7596
  %7632 = phi i32 [ 1, %7596 ], [ %7643, %7631 ]
  %7633 = phi float [ %7630, %7596 ], [ %7642, %7631 ]
  %7634 = phi float [ %7628, %7596 ], [ %7640, %7631 ]
  %7635 = getelementptr [4 x float], [4 x float]* %116, i32 0, i32 %7632
  %7636 = load float, float* %7635, align 4, !tbaa !127, !noalias !117
  %7637 = fsub fast float %7636, %7368
  %7638 = fcmp fast olt float %7637, 0.000000e+00
  %7639 = select i1 %7638, float 0.000000e+00, float 1.000000e+00
  %7640 = fadd fast float %7639, %7634
  %7641 = fmul fast float %7639, %7637
  %7642 = fadd fast float %7641, %7633
  %7643 = add nuw nsw i32 %7632, 1
  %7644 = icmp eq i32 %7643, 4
  br i1 %7644, label %7645, label %7631, !llvm.loop !129

; <label>:7645                                    ; preds = %7631
  %7646 = add nuw nsw i32 %7599, 1
  %7647 = icmp eq i32 %7646, 8
  br i1 %7647, label %7648, label %7596, !llvm.loop !130

; <label>:7648                                    ; preds = %7645
  %7649 = fdiv fast float 1.000000e+00, %7640
  %7650 = fmul fast float %7649, %7642
  %7651 = fdiv fast float 1.000000e+00, %7368
  %7652 = fmul fast float %7650, %7651
  %7653 = call float @dx.op.unary.f32(i32 7, float %7652)  ; Saturate(value)
  %7654 = call float @dx.op.binary.f32(i32 35, float %7653, float 0.000000e+00)  ; FMax(a,b)
  %7655 = fmul fast float %7640, 3.125000e-02
  %7656 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7657 = fmul fast float %7656, 2.000000e+00
  %7658 = fadd fast float %7657, -1.000000e+00
  %7659 = fcmp fast ogt float %7658, 0.000000e+00
  %7660 = fcmp fast olt float %7658, 0.000000e+00
  %7661 = zext i1 %7659 to i32
  %7662 = zext i1 %7660 to i32
  %7663 = sub nsw i32 %7661, %7662
  %7664 = sitofp i32 %7663 to float
  %7665 = fmul fast float %7664, %7658
  %7666 = fsub fast float 1.000000e+00, %7665
  %7667 = fmul fast float %7666, %7666
  %7668 = fmul fast float %7667, %7666
  %7669 = fsub fast float %7666, %7668
  %7670 = fmul fast float %7669, %7654
  %7671 = fsub fast float 1.000000e+00, %7668
  %7672 = fsub fast float %7671, %7670
  %7673 = fmul fast float %7664, 5.000000e-01
  %7674 = fmul fast float %7673, %7672
  %7675 = fsub fast float 5.000000e-01, %7674
  br label %7676

; <label>:7676                                    ; preds = %7648, %7524, %7495, %7371, %7355
  %7677 = phi float [ 1.000000e+00, %7355 ], [ %7437, %7371 ], [ %7522, %7495 ], [ %7590, %7524 ], [ %7675, %7648 ]
  %7678 = fsub fast float %7189, %7022
  %7679 = fmul fast float %7678, %6589
  %7680 = fadd fast float %7679, %7022
  %7681 = fsub fast float %7356, %7680
  %7682 = fmul fast float %7681, %6588
  %7683 = fadd fast float %7682, %7680
  %7684 = fsub fast float %7677, %7683
  %7685 = fmul fast float %7684, %6616
  %7686 = fadd fast float %7685, %7683
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7689 = fcmp fast ogt float %7688, 0.000000e+00
  br i1 %7689, label %7690, label %7730, !dx.controlflow.hints !134

; <label>:7690                                    ; preds = %7676
  %7691 = fcmp fast ugt float %7688, 0.000000e+00
  br i1 %7691, label %7692, label %7727

; <label>:7692                                    ; preds = %7690
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.CBufRet.f32 %7693, 3
  %7698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7699 = extractvalue %dx.types.CBufRet.f32 %7698, 0
  %7700 = extractvalue %dx.types.CBufRet.f32 %7698, 1
  %7701 = extractvalue %dx.types.CBufRet.f32 %7698, 2
  %7702 = extractvalue %dx.types.CBufRet.f32 %7698, 3
  %7703 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7704 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 0
  %7707 = extractvalue %dx.types.CBufRet.f32 %7705, 1
  %7708 = extractvalue %dx.types.CBufRet.f32 %7705, 2
  %7709 = fadd fast float %7706, %6469
  %7710 = fadd fast float %7707, %6470
  %7711 = fadd fast float %7708, %6471
  %7712 = fmul fast float %7709, %7694
  %7713 = call float @dx.op.tertiary.f32(i32 46, float %7695, float %7710, float %7712)  ; FMad(a,b,c)
  %7714 = call float @dx.op.tertiary.f32(i32 46, float %7696, float %7711, float %7713)  ; FMad(a,b,c)
  %7715 = fadd fast float %7714, %7697
  %7716 = fmul fast float %7709, %7699
  %7717 = call float @dx.op.tertiary.f32(i32 46, float %7700, float %7710, float %7716)  ; FMad(a,b,c)
  %7718 = call float @dx.op.tertiary.f32(i32 46, float %7701, float %7711, float %7717)  ; FMad(a,b,c)
  %7719 = fadd fast float %7718, %7702
  %7720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7715, float %7719, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7721 = extractvalue %dx.types.ResRet.f32 %7720, 0
  %7722 = fmul fast float %7721, %7704
  %7723 = fadd fast float %7722, %7703
  %7724 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7725 = fmul fast float %7724, %7688
  %7726 = fsub fast float 1.000000e+00, %7725
  br label %7727

; <label>:7727                                    ; preds = %7692, %7690
  %7728 = phi float [ %7726, %7692 ], [ 1.000000e+00, %7690 ]
  %7729 = fmul fast float %7728, %7686
  br label %7730

; <label>:7730                                    ; preds = %7727, %7676, %6449
  %7731 = phi float [ 1.000000e+00, %6449 ], [ %7729, %7727 ], [ %7686, %7676 ]
  %7732 = call float @dx.op.binary.f32(i32 36, float %7731, float %7731)  ; FMin(a,b)
  %7733 = call float @dx.op.binary.f32(i32 36, float %7731, float %7732)  ; FMin(a,b)
  %7734 = fcmp fast ogt float %7733, 0.000000e+00
  br i1 %7734, label %7735, label %7900, !dx.controlflow.hints !135

; <label>:7735                                    ; preds = %7730
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 0
  %7738 = extractvalue %dx.types.CBufRet.f32 %7736, 1
  %7739 = extractvalue %dx.types.CBufRet.f32 %7736, 2
  %7740 = extractvalue %dx.types.CBufRet.f32 %7736, 3
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.CBufRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.CBufRet.f32 %7741, 2
  %7745 = extractvalue %dx.types.CBufRet.f32 %7741, 3
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 0
  %7748 = extractvalue %dx.types.CBufRet.f32 %7746, 1
  %7749 = extractvalue %dx.types.CBufRet.f32 %7746, 2
  %7750 = extractvalue %dx.types.CBufRet.f32 %7746, 3
  %7751 = fmul fast float %7737, %6469
  %7752 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %7738, float %7751)  ; FMad(a,b,c)
  %7753 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %7739, float %7752)  ; FMad(a,b,c)
  %7754 = fadd fast float %7753, %7740
  %7755 = fmul fast float %7742, %6469
  %7756 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %7743, float %7755)  ; FMad(a,b,c)
  %7757 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %7744, float %7756)  ; FMad(a,b,c)
  %7758 = fadd fast float %7757, %7745
  %7759 = fmul fast float %7747, %6469
  %7760 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %7748, float %7759)  ; FMad(a,b,c)
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %7749, float %7760)  ; FMad(a,b,c)
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.CBufRet.f32 %7762, 3
  %7766 = fmul fast float %7765, %7754
  %7767 = fmul fast float %7765, %7758
  %7768 = fadd fast float %7766, %7763
  %7769 = fadd fast float %7767, %7764
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = fsub fast float %7768, %7771
  %7774 = fsub fast float %7769, %7772
  %7775 = fcmp fast olt float %7773, 0.000000e+00
  %7776 = fcmp fast olt float %7774, 0.000000e+00
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %7781 = extractvalue %dx.types.CBufRet.f32 %7777, 3
  %7782 = select i1 %7775, float %7778, float %7780
  %7783 = select i1 %7776, float %7779, float %7781
  %7784 = fmul fast float %7782, %7773
  %7785 = fmul fast float %7783, %7774
  %7786 = call float @dx.op.unary.f32(i32 6, float %7784)  ; FAbs(value)
  %7787 = call float @dx.op.unary.f32(i32 6, float %7785)  ; FAbs(value)
  %7788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7788, 0
  %7790 = call float @dx.op.binary.f32(i32 35, float %7786, float %7787)  ; FMax(a,b)
  %7791 = fsub fast float %7789, %7790
  %7792 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7793 = fcmp fast ogt float %7792, 0.000000e+00
  br i1 %7793, label %7794, label %7835, !dx.controlflow.hints !136

; <label>:7794                                    ; preds = %7735
  %7795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7768, float %7769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7796 = extractvalue %dx.types.ResRet.f32 %7795, 1
  %7797 = fcmp fast ogt float %7796, 0.000000e+00
  br i1 %7797, label %7798, label %7830

; <label>:7798                                    ; preds = %7794
  %7799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7768, float %7769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.ResRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.ResRet.f32 %7799, 2
  %7803 = extractvalue %dx.types.ResRet.f32 %7799, 3
  %7804 = fsub fast float 1.000000e+00, %7750
  %7805 = fsub fast float %7804, %7761
  %7806 = fmul fast float %7805, 0x400921FB60000000
  %7807 = fadd fast float %7806, 0x3FF921FB60000000
  %7808 = call float @dx.op.unary.f32(i32 13, float %7807)  ; Sin(value)
  %7809 = fadd fast float %7808, -1.000000e+00
  %7810 = fmul fast float %7809, 0x3FD45F3060000000
  %7811 = fmul fast float %7805, 0x401921FB60000000
  %7812 = fadd fast float %7811, 0x400921FB60000000
  %7813 = call float @dx.op.unary.f32(i32 13, float %7812)  ; Sin(value)
  %7814 = fadd fast float %7813, 0x3E7777A5C0000000
  %7815 = fmul fast float %7814, 0x3FC45F3060000000
  %7816 = fmul fast float %7805, 0x4022D97C80000000
  %7817 = fadd fast float %7816, 0x4012D97C80000000
  %7818 = call float @dx.op.unary.f32(i32 13, float %7817)  ; Sin(value)
  %7819 = fadd fast float %7818, 1.000000e+00
  %7820 = fmul fast float %7819, 0x3FBB2995E0000000
  %7821 = fmul fast float %7805, 0x402921FB60000000
  %7822 = fadd fast float %7821, 0x401921FB60000000
  %7823 = call float @dx.op.unary.f32(i32 13, float %7822)  ; Sin(value)
  %7824 = fadd fast float %7823, 0xBE8777A5C0000000
  %7825 = fmul fast float %7824, 0x3FB45F3060000000
  %7826 = call float @dx.op.dot4.f32(i32 56, float %7800, float %7801, float %7802, float %7803, float %7810, float %7815, float %7820, float %7825)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7827 = fmul fast float %7826, 0xBFF7154760000000
  %7828 = call float @dx.op.unary.f32(i32 21, float %7827)  ; Exp(value)
  %7829 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  br label %7830

; <label>:7830                                    ; preds = %7798, %7794
  %7831 = phi float [ %7829, %7798 ], [ 1.000000e+00, %7794 ]
  %7832 = fadd fast float %7831, -1.000000e+00
  %7833 = fmul fast float %7832, %7792
  %7834 = fadd fast float %7833, 1.000000e+00
  br label %7835

; <label>:7835                                    ; preds = %7830, %7735
  %7836 = phi float [ %7834, %7830 ], [ 1.000000e+00, %7735 ]
  %7837 = fmul fast float %7836, %7731
  %7838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7839 = extractvalue %dx.types.CBufRet.f32 %7838, 0
  %7840 = extractvalue %dx.types.CBufRet.f32 %7838, 1
  %7841 = extractvalue %dx.types.CBufRet.f32 %7838, 2
  %7842 = fadd fast float %7839, %209
  %7843 = fadd fast float %7840, %210
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 1
  %7846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7846, 0
  %7848 = extractvalue %dx.types.CBufRet.f32 %7846, 1
  %7849 = extractvalue %dx.types.CBufRet.f32 %7846, 2
  %7850 = fsub fast float -0.000000e+00, %7842
  %7851 = fsub fast float -0.000000e+00, %7843
  %7852 = fsub fast float %5476, %7841
  %7853 = fadd fast float %7852, %7845
  %7854 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7850, float %7851, float %7853)  ; Dot3(ax,ay,az,bx,by,bz)
  %7855 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7847, float %7848, float %7849)  ; Dot3(ax,ay,az,bx,by,bz)
  %7856 = fdiv fast float 1.000000e+00, %7855
  %7857 = fmul fast float %7856, %7854
  %7858 = fmul fast float %7847, %7857
  %7859 = fmul fast float %7848, %7857
  %7860 = fadd fast float %7858, %7842
  %7861 = fadd fast float %7859, %7843
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 0
  %7864 = extractvalue %dx.types.CBufRet.f32 %7862, 1
  %7865 = fsub fast float %7860, %7863
  %7866 = fsub fast float %7861, %7864
  %7867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7867, 2
  %7869 = extractvalue %dx.types.CBufRet.f32 %7867, 3
  %7870 = fmul fast float %7865, %7868
  %7871 = fmul fast float %7866, %7869
  %7872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.i32 %7872, 3
  %7874 = icmp eq i32 %7873, 0
  br i1 %7874, label %7880, label %7875

; <label>:7875                                    ; preds = %7835
  %7876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7870, float %7871, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = extractvalue %dx.types.ResRet.f32 %7876, 1
  %7879 = extractvalue %dx.types.ResRet.f32 %7876, 2
  br label %7885

; <label>:7880                                    ; preds = %7835
  %7881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %7870, float %7871, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7882 = extractvalue %dx.types.ResRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.ResRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.ResRet.f32 %7881, 2
  br label %7885

; <label>:7885                                    ; preds = %7880, %7875
  %7886 = phi float [ %7877, %7875 ], [ %7882, %7880 ]
  %7887 = phi float [ %7878, %7875 ], [ %7883, %7880 ]
  %7888 = phi float [ %7879, %7875 ], [ %7884, %7880 ]
  %7889 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7890 = fmul fast float %7889, %7886
  %7891 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7892 = fsub fast float %7857, %7891
  %7893 = fsub fast float %7892, %7890
  %7894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7893)  ; FMax(a,b)
  %7895 = fmul fast float %7894, %7887
  %7896 = call float @dx.op.binary.f32(i32 36, float %7888, float %7895)  ; FMin(a,b)
  %7897 = fmul fast float %7896, 0xBFF7154760000000
  %7898 = call float @dx.op.unary.f32(i32 21, float %7897)  ; Exp(value)
  %7899 = fmul fast float %7837, %7898
  br label %7900

; <label>:7900                                    ; preds = %7885, %7730
  %7901 = phi float [ %7899, %7885 ], [ %7731, %7730 ]
  %7902 = call float @dx.op.binary.f32(i32 36, float %7901, float %7901)  ; FMin(a,b)
  %7903 = call float @dx.op.binary.f32(i32 36, float %7901, float %7902)  ; FMin(a,b)
  %7904 = fcmp fast ogt float %7903, 0.000000e+00
  br i1 %7904, label %7905, label %8153, !dx.controlflow.hints !137

; <label>:7905                                    ; preds = %7900
  %7906 = fmul fast float %7901, %6461
  %7907 = fmul fast float %7901, %6462
  %7908 = fmul fast float %7901, %6463
  %7909 = fsub fast float %211, %4656
  %7910 = fcmp fast ogt float %7909, 0.000000e+00
  %7911 = fmul fast float %6450, 5.120000e+02
  %7912 = fmul fast float %6451, 5.120000e+02
  %7913 = fmul fast float %6452, 5.120000e+02
  %7914 = fadd fast float %7913, %211
  %7915 = fsub fast float %4656, %7914
  %7916 = fmul fast float %7915, 2.000000e+00
  %7917 = fadd fast float %7916, %7914
  %7918 = select i1 %7910, float %7917, float %7914
  %7919 = fsub fast float %7918, %211
  %7920 = call float @dx.op.dot3.f32(i32 55, float %7911, float %7912, float %7919, float %7911, float %7912, float %7919)  ; Dot3(ax,ay,az,bx,by,bz)
  %7921 = call float @dx.op.unary.f32(i32 25, float %7920)  ; Rsqrt(value)
  %7922 = fmul fast float %7921, %7911
  %7923 = fmul fast float %7921, %7912
  %7924 = fmul fast float %7921, %7919
  %7925 = fsub fast float %4656, %211
  %7926 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7925)  ; Dot3(ax,ay,az,bx,by,bz)
  %7927 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7922, float %7923, float %7924)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = fdiv fast float 1.000000e+00, %7927
  %7929 = fmul fast float %7928, %7926
  %7930 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7909, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7931 = fcmp fast ogt float %7930, 0.000000e+00
  %7932 = fcmp fast olt float %7930, 0.000000e+00
  %7933 = zext i1 %7931 to i32
  %7934 = zext i1 %7932 to i32
  %7935 = sub nsw i32 %7933, %7934
  %7936 = sitofp i32 %7935 to float
  %7937 = fsub fast float %7918, %4656
  %7938 = call float @dx.op.dot3.f32(i32 55, float %7911, float %7912, float %7937, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7939 = fcmp fast ogt float %7938, 0.000000e+00
  %7940 = fcmp fast olt float %7938, 0.000000e+00
  %7941 = zext i1 %7939 to i32
  %7942 = zext i1 %7940 to i32
  %7943 = sub nsw i32 %7941, %7942
  %7944 = sitofp i32 %7943 to float
  %7945 = fcmp fast une float %7936, %7944
  br i1 %7945, label %7946, label %7956

; <label>:7946                                    ; preds = %7905
  %7947 = fmul fast float %7929, %7924
  %7948 = fmul fast float %7929, %7923
  %7949 = fmul fast float %7929, %7922
  %7950 = fmul fast float %7949, %7949
  %7951 = fmul fast float %7948, %7948
  %7952 = fadd fast float %7950, %7951
  %7953 = fmul fast float %7947, %7947
  %7954 = fadd fast float %7952, %7953
  %7955 = call float @dx.op.unary.f32(i32 24, float %7954)  ; Sqrt(value)
  br label %7966

; <label>:7956                                    ; preds = %7905
  %7957 = icmp slt i32 %7935, 0
  br i1 %7957, label %7958, label %7966

; <label>:7958                                    ; preds = %7956
  %7959 = fsub fast float %211, %7918
  %7960 = fmul fast float %7911, %7911
  %7961 = fmul fast float %7912, %7912
  %7962 = fadd fast float %7960, %7961
  %7963 = fmul fast float %7959, %7959
  %7964 = fadd fast float %7962, %7963
  %7965 = call float @dx.op.unary.f32(i32 24, float %7964)  ; Sqrt(value)
  br label %7966

; <label>:7966                                    ; preds = %7958, %7956, %7946
  %7967 = phi float [ %7955, %7946 ], [ %7965, %7958 ], [ 0.000000e+00, %7956 ]
  %7968 = fsub fast float -0.000000e+00, %7967
  %7969 = select i1 %7910, float -0.000000e+00, float %7968
  %7970 = fmul fast float %4653, 0x3FF7154760000000
  %7971 = fmul fast float %7970, %7969
  %7972 = fmul fast float %4654, 0x3FF7154760000000
  %7973 = fmul fast float %7972, %7969
  %7974 = fmul fast float %4655, 0x3FF7154760000000
  %7975 = fmul fast float %7974, %7969
  %7976 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7977 = call float @dx.op.unary.f32(i32 21, float %7973)  ; Exp(value)
  %7978 = call float @dx.op.unary.f32(i32 21, float %7975)  ; Exp(value)
  %7979 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7980 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7981 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7982 = fmul fast float %7906, %7979
  %7983 = fmul fast float %7907, %7980
  %7984 = fmul fast float %7908, %7981
  %7985 = fsub fast float %6450, %5479
  %7986 = fsub fast float %6451, %5480
  %7987 = fsub fast float %6452, %5481
  %7988 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7986, float %7987, float %7985, float %7986, float %7987)  ; Dot3(ax,ay,az,bx,by,bz)
  %7989 = call float @dx.op.unary.f32(i32 25, float %7988)  ; Rsqrt(value)
  %7990 = fmul fast float %7989, %7985
  %7991 = fmul fast float %7989, %7986
  %7992 = fmul fast float %7989, %7987
  %7993 = call float @dx.op.dot3.f32(i32 55, float %6450, float %6451, float %6452, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %5484, float %7990, float %7991, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7996 = bitcast i32 %5511 to float
  %7997 = fmul fast float %7995, %7995
  %7998 = fmul fast float %7997, %7996
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = fmul fast float %7999, %7995
  %8001 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %7990, float %7991, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %8002 = fmul fast float %8001, %8001
  %8003 = call float @dx.op.unary.f32(i32 6, float %7993)  ; FAbs(value)
  %8004 = fsub fast float 1.000000e+00, %5505
  %8005 = fmul fast float %5487, %5487
  %8006 = fmul fast float %8005, %8004
  %8007 = fadd fast float %8006, %5505
  %8008 = bitcast float %8007 to i32
  %8009 = ashr i32 %8008, 1
  %8010 = add nsw i32 %8009, 532487669
  %8011 = bitcast i32 %8010 to float
  %8012 = fadd fast float %8011, %5487
  %8013 = fmul fast float %5505, %8002
  %8014 = fsub fast float 1.000000e+00, %8002
  %8015 = fadd fast float %8014, %8013
  %8016 = fmul fast float %8003, %8003
  %8017 = fmul fast float %8016, %8004
  %8018 = fadd fast float %8017, %5505
  %8019 = bitcast float %8018 to i32
  %8020 = ashr i32 %8019, 1
  %8021 = add nsw i32 %8020, 532487669
  %8022 = bitcast i32 %8021 to float
  %8023 = fadd fast float %8022, %8003
  %8024 = fmul fast float %8015, %8015
  %8025 = fmul fast float %8024, %8012
  %8026 = fmul fast float %8025, %8023
  %8027 = fdiv fast float 0x3FF0A00000000000, %8026
  %8028 = fmul fast float %8027, %5505
  %8029 = call float @dx.op.unary.f32(i32 6, float %7994)  ; FAbs(value)
  %8030 = fsub fast float 1.000000e+00, %8029
  %8031 = bitcast float %8030 to i32
  %8032 = sitofp i32 %8031 to float
  %8033 = fmul fast float %8032, 5.000000e+00
  %8034 = fadd fast float %8033, 0xC1EFBF8940000000
  %8035 = fptosi float %8034 to i32
  %8036 = bitcast i32 %8035 to float
  %8037 = fsub fast float 1.000000e+00, %5433
  %8038 = fsub fast float 1.000000e+00, %5434
  %8039 = fsub fast float 1.000000e+00, %5485
  %8040 = fmul fast float %8036, %8037
  %8041 = fmul fast float %8036, %8038
  %8042 = fmul fast float %8036, %8039
  %8043 = fadd fast float %8040, %5433
  %8044 = fadd fast float %8041, %5434
  %8045 = fadd fast float %8042, %5485
  br i1 %5812, label %8046, label %8069

; <label>:8046                                    ; preds = %7966
  %8047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4251, float %8029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8048 = extractvalue %dx.types.ResRet.f32 %8047, 0
  %8049 = extractvalue %dx.types.ResRet.f32 %8047, 1
  %8050 = extractvalue %dx.types.ResRet.f32 %8047, 2
  %8051 = fadd fast float %8048, -5.000000e-01
  %8052 = fadd fast float %8049, -5.000000e-01
  %8053 = fadd fast float %8050, -5.000000e-01
  %8054 = fmul fast float %5433, 4.000000e+00
  %8055 = fmul fast float %8054, %8037
  %8056 = fmul fast float %8055, %8051
  %8057 = fmul fast float %5434, 4.000000e+00
  %8058 = fmul fast float %8057, %8038
  %8059 = fmul fast float %8058, %8052
  %8060 = fmul fast float %5485, 4.000000e+00
  %8061 = fmul fast float %8060, %8039
  %8062 = fmul fast float %8061, %8053
  %8063 = fadd fast float %8056, %8043
  %8064 = fadd fast float %8059, %8044
  %8065 = fadd fast float %8062, %8045
  %8066 = call float @dx.op.unary.f32(i32 7, float %8063)  ; Saturate(value)
  %8067 = call float @dx.op.unary.f32(i32 7, float %8064)  ; Saturate(value)
  %8068 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  br label %8069

; <label>:8069                                    ; preds = %8046, %7966
  %8070 = phi float [ %8066, %8046 ], [ %8043, %7966 ]
  %8071 = phi float [ %8067, %8046 ], [ %8044, %7966 ]
  %8072 = phi float [ %8068, %8046 ], [ %8045, %7966 ]
  %8073 = fmul fast float %7993, 9.843750e-01
  %8074 = fadd fast float %8073, 7.812500e-03
  %8075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8074, float %5802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8076 = extractvalue %dx.types.ResRet.f32 %8075, 2
  %8077 = extractvalue %dx.types.ResRet.f32 %8075, 3
  %8078 = fmul fast float %8076, %5433
  %8079 = fmul fast float %8076, %5434
  %8080 = fmul fast float %8076, %5485
  %8081 = fadd fast float %8078, %8077
  %8082 = fadd fast float %8079, %8077
  %8083 = fadd fast float %8080, %8077
  br i1 %5812, label %8084, label %8107

; <label>:8084                                    ; preds = %8069
  %8085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4251, float %7993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.ResRet.f32 %8085, 1
  %8088 = extractvalue %dx.types.ResRet.f32 %8085, 2
  %8089 = fadd fast float %8086, -5.000000e-01
  %8090 = fadd fast float %8087, -5.000000e-01
  %8091 = fadd fast float %8088, -5.000000e-01
  %8092 = fmul fast float %5433, 4.000000e+00
  %8093 = fmul fast float %8092, %8037
  %8094 = fmul fast float %8093, %8089
  %8095 = fmul fast float %5434, 4.000000e+00
  %8096 = fmul fast float %8095, %8038
  %8097 = fmul fast float %8096, %8090
  %8098 = fmul fast float %5485, 4.000000e+00
  %8099 = fmul fast float %8098, %8039
  %8100 = fmul fast float %8099, %8091
  %8101 = fadd fast float %8094, %8081
  %8102 = fadd fast float %8097, %8082
  %8103 = fadd fast float %8100, %8083
  %8104 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8105 = call float @dx.op.unary.f32(i32 7, float %8102)  ; Saturate(value)
  %8106 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  br label %8107

; <label>:8107                                    ; preds = %8084, %8069
  %8108 = phi float [ %8104, %8084 ], [ %8081, %8069 ]
  %8109 = phi float [ %8105, %8084 ], [ %8082, %8069 ]
  %8110 = phi float [ %8106, %8084 ], [ %8083, %8069 ]
  %8111 = call float @dx.op.binary.f32(i32 35, float %8109, float %8110)  ; FMax(a,b)
  %8112 = call float @dx.op.binary.f32(i32 35, float %8108, float %8111)  ; FMax(a,b)
  %8113 = fsub fast float 1.000000e+00, %8112
  %8114 = fmul fast float %8070, %8028
  %8115 = fmul fast float %8071, %8028
  %8116 = fmul fast float %8072, %8028
  %8117 = fsub fast float 1.000000e+00, %7994
  %8118 = bitcast float %8117 to i32
  %8119 = sitofp i32 %8118 to float
  %8120 = fmul fast float %8119, 5.000000e+00
  %8121 = fadd fast float %8120, 0xC1EFBF8940000000
  %8122 = fptosi float %8121 to i32
  %8123 = bitcast i32 %8122 to float
  %8124 = fmul fast float %8123, %4252
  %8125 = fmul fast float %8113, %8124
  %8126 = fmul fast float %8125, %6404
  %8127 = fmul fast float %8125, %6405
  %8128 = fmul fast float %8125, %6406
  %8129 = fadd fast float %8126, %8114
  %8130 = fadd fast float %8127, %8115
  %8131 = fadd fast float %8128, %8116
  %8132 = fmul fast float %8000, %7982
  %8133 = fmul fast float %8132, %8113
  %8134 = fmul fast float %8000, %7983
  %8135 = fmul fast float %8134, %8113
  %8136 = fmul fast float %8000, %7984
  %8137 = fmul fast float %8136, %8113
  %8138 = fmul fast float %8132, %8129
  %8139 = fmul fast float %8134, %8130
  %8140 = fmul fast float %8136, %8131
  %8141 = fadd fast float %8133, %6386
  %8142 = fmul fast float %8141, %4248
  %8143 = fadd fast float %8135, %6388
  %8144 = fmul fast float %8143, %4248
  %8145 = fadd fast float %8137, %6390
  %8146 = fmul fast float %8145, %4248
  %8147 = fadd fast float %8138, %6438
  %8148 = fmul fast float %8147, %4248
  %8149 = fadd fast float %8139, %6441
  %8150 = fmul fast float %8149, %4248
  %8151 = fadd fast float %8140, %6444
  %8152 = fmul fast float %8151, %4248
  br label %8153

; <label>:8153                                    ; preds = %8107, %7900, %6334
  %8154 = phi float [ %6439, %6334 ], [ %6439, %7900 ], [ %8148, %8107 ]
  %8155 = phi float [ %6442, %6334 ], [ %6442, %7900 ], [ %8150, %8107 ]
  %8156 = phi float [ %6445, %6334 ], [ %6445, %7900 ], [ %8152, %8107 ]
  %8157 = phi float [ %6434, %6334 ], [ %6434, %7900 ], [ %8142, %8107 ]
  %8158 = phi float [ %6435, %6334 ], [ %6435, %7900 ], [ %8144, %8107 ]
  %8159 = phi float [ %6436, %6334 ], [ %6436, %7900 ], [ %8146, %8107 ]
  %8160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.i32 %8160, 0
  %8162 = icmp eq i32 %8161, 0
  br i1 %8162, label %8826, label %8163

; <label>:8163                                    ; preds = %8153
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 2
  %8166 = extractvalue %dx.types.CBufRet.f32 %8164, 3
  %8167 = fmul fast float %8165, %126
  %8168 = fmul fast float %8166, %127
  %8169 = fptoui float %8167 to i32
  %8170 = fptoui float %8168 to i32
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 0
  %8173 = extractvalue %dx.types.CBufRet.f32 %8171, 2
  %8174 = extractvalue %dx.types.CBufRet.f32 %8171, 3
  %8175 = fadd fast float %113, -4.000000e+00
  %8176 = call float @dx.op.binary.f32(i32 35, float %8175, float 0.000000e+00)  ; FMax(a,b)
  %8177 = fadd fast float %8176, %8172
  %8178 = fmul fast float %8177, %8173
  %8179 = call float @dx.op.unary.f32(i32 23, float %8178)  ; Log(value)
  %8180 = fmul fast float %8179, %8174
  %8181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8181, 2
  %8183 = fmul fast float %8180, %8182
  %8184 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.i32 %8185, 1
  %8187 = add i32 %8186, -1
  %8188 = uitofp i32 %8186 to float
  %8189 = fmul fast float %8188, %8184
  %8190 = fptoui float %8189 to i32
  %8191 = call i32 @dx.op.binary.i32(i32 40, i32 %8190, i32 %8187)  ; UMin(a,b)
  %8192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.i32 %8192, 2
  %8194 = extractvalue %dx.types.CBufRet.i32 %8192, 3
  %8195 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8170, i32 %8193, i32 %8169)  ; UMad(a,b,c)
  %8196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8191, i32 %8194, i32 %8195)  ; UMad(a,b,c)
  %8197 = add nsw i32 %8161, -1
  %8198 = call i32 @dx.op.binary.i32(i32 37, i32 %8197, i32 0)  ; IMax(a,b)
  %8199 = call float @dx.op.binary.f32(i32 35, float %113, float 0.000000e+00)  ; FMax(a,b)
  %8200 = fptoui float %8199 to i32
  %8201 = lshr i32 %8200, 5
  %8202 = call i32 @dx.op.binary.i32(i32 40, i32 %8201, i32 8191)  ; UMin(a,b)
  %8203 = shl i32 %8202, 2
  %8204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8203, i32 undef)  ; BufferLoad(srv,index,wot)
  %8205 = extractvalue %dx.types.ResRet.i32 %8204, 0
  %8206 = lshr i32 %8205, 16
  %8207 = and i32 %8205, 65535
  %8208 = lshr i32 %8205, 21
  %8209 = lshr i32 %8207, 5
  %8210 = call i32 @dx.op.binary.i32(i32 40, i32 %8209, i32 %8198)  ; UMin(a,b)
  %8211 = icmp ugt i32 %8208, %8210
  br i1 %8211, label %8826, label %8212

; <label>:8212                                    ; preds = %8163
  br label %8213

; <label>:8213                                    ; preds = %8816, %8212
  %8214 = phi i32 [ %8823, %8816 ], [ %8208, %8212 ]
  %8215 = phi float [ %8817, %8816 ], [ %8154, %8212 ]
  %8216 = phi float [ %8818, %8816 ], [ %8155, %8212 ]
  %8217 = phi float [ %8819, %8816 ], [ %8156, %8212 ]
  %8218 = phi float [ %8820, %8816 ], [ %8157, %8212 ]
  %8219 = phi float [ %8821, %8816 ], [ %8158, %8212 ]
  %8220 = phi float [ %8822, %8816 ], [ %8159, %8212 ]
  %8221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.i32 %8221, 0
  %8223 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8196, i32 %8222, i32 %8214)  ; UMad(a,b,c)
  %8224 = shl i32 %8223, 2
  %8225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8224, i32 undef)  ; BufferLoad(srv,index,wot)
  %8226 = extractvalue %dx.types.ResRet.i32 %8225, 0
  %8227 = shl i32 %8214, 5
  %8228 = sub nsw i32 %8206, %8227
  %8229 = call i32 @dx.op.binary.i32(i32 37, i32 %8228, i32 0)  ; IMax(a,b)
  %8230 = call i32 @dx.op.binary.i32(i32 38, i32 %8229, i32 31)  ; IMin(a,b)
  %8231 = sub nsw i32 1, %8206
  %8232 = add nsw i32 %8231, %8207
  %8233 = call i32 @dx.op.binary.i32(i32 37, i32 %8232, i32 0)  ; IMax(a,b)
  %8234 = call i32 @dx.op.binary.i32(i32 38, i32 %8233, i32 32)  ; IMin(a,b)
  %8235 = and i32 %8234, 31
  %8236 = shl i32 -1, %8235
  %8237 = xor i32 %8236, -1
  %8238 = and i32 %8230, 31
  %8239 = shl i32 %8237, %8238
  %8240 = icmp eq i32 %8234, 32
  %8241 = select i1 %8240, i32 -1, i32 %8239
  %8242 = and i32 %8241, %8226
  %8243 = icmp eq i32 %8242, 0
  br i1 %8243, label %8816, label %8244

; <label>:8244                                    ; preds = %8213
  br label %8245

; <label>:8245                                    ; preds = %8379, %8244
  %8246 = phi i32 [ %8257, %8379 ], [ %8242, %8244 ]
  %8247 = phi float [ %8380, %8379 ], [ %8215, %8244 ]
  %8248 = phi float [ %8381, %8379 ], [ %8216, %8244 ]
  %8249 = phi float [ %8382, %8379 ], [ %8217, %8244 ]
  %8250 = phi float [ %8383, %8379 ], [ %8218, %8244 ]
  %8251 = phi float [ %8384, %8379 ], [ %8219, %8244 ]
  %8252 = phi float [ %8385, %8379 ], [ %8220, %8244 ]
  %8253 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8246)  ; FirstbitLo(value)
  %8254 = add i32 %8253, %8227
  %8255 = and i32 %8253, 31
  %8256 = shl i32 1, %8255
  %8257 = xor i32 %8256, %8246
  %8258 = mul i32 %8254, 112
  %8259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8258, i32 undef)  ; BufferLoad(srv,index,wot)
  %8260 = extractvalue %dx.types.ResRet.f32 %8259, 0
  %8261 = extractvalue %dx.types.ResRet.f32 %8259, 1
  %8262 = extractvalue %dx.types.ResRet.f32 %8259, 2
  %8263 = or i32 %8258, 12
  %8264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8263, i32 undef)  ; BufferLoad(srv,index,wot)
  %8265 = extractvalue %dx.types.ResRet.f32 %8264, 0
  %8266 = add i32 %8258, 16
  %8267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8266, i32 undef)  ; BufferLoad(srv,index,wot)
  %8268 = extractvalue %dx.types.ResRet.f32 %8267, 0
  %8269 = extractvalue %dx.types.ResRet.f32 %8267, 1
  %8270 = extractvalue %dx.types.ResRet.f32 %8267, 2
  %8271 = add i32 %8258, 28
  %8272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8271, i32 undef)  ; BufferLoad(srv,index,wot)
  %8273 = extractvalue %dx.types.ResRet.i32 %8272, 0
  %8274 = add i32 %8258, 44
  %8275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8274, i32 undef)  ; BufferLoad(srv,index,wot)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 0
  %8277 = add i32 %8258, 48
  %8278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8277, i32 undef)  ; BufferLoad(srv,index,wot)
  %8279 = extractvalue %dx.types.ResRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.ResRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.ResRet.f32 %8278, 2
  %8282 = extractvalue %dx.types.ResRet.f32 %8278, 3
  %8283 = add i32 %8258, 64
  %8284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8283, i32 undef)  ; BufferLoad(srv,index,wot)
  %8285 = extractvalue %dx.types.ResRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.ResRet.f32 %8284, 1
  %8287 = extractvalue %dx.types.ResRet.f32 %8284, 2
  %8288 = extractvalue %dx.types.ResRet.f32 %8284, 3
  %8289 = add i32 %8258, 80
  %8290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8289, i32 undef)  ; BufferLoad(srv,index,wot)
  %8291 = extractvalue %dx.types.ResRet.f32 %8290, 1
  %8292 = extractvalue %dx.types.ResRet.f32 %8290, 2
  %8293 = add i32 %8258, 92
  %8294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8293, i32 undef)  ; BufferLoad(srv,index,wot)
  %8295 = extractvalue %dx.types.ResRet.i32 %8294, 0
  %8296 = call float @dx.op.dot3.f32(i32 55, float %8260, float %8261, float %8262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8297 = select i1 %281, float %8291, float %8260
  %8298 = select i1 %281, float %8296, float %8261
  %8299 = select i1 %281, float %8292, float %8262
  %8300 = and i32 %8295, 65535
  %8301 = uitofp i32 %8300 to float
  %8302 = lshr i32 %8295, 16
  %8303 = uitofp i32 %8302 to float
  %8304 = and i32 %8273, 65535
  %8305 = and i32 %8273, 50331648
  %8306 = icmp eq i32 %8305, 33554432
  %8307 = fsub fast float %8279, %209
  %8308 = fsub fast float %8280, %210
  %8309 = fsub fast float %8281, %211
  %8310 = call float @dx.op.dot3.f32(i32 55, float %8307, float %8308, float %8309, float %8307, float %8308, float %8309)  ; Dot3(ax,ay,az,bx,by,bz)
  %8311 = call float @dx.op.unary.f32(i32 24, float %8310)  ; Sqrt(value)
  %8312 = fdiv fast float 1.000000e+00, %8311
  %8313 = fmul fast float %8312, %8307
  %8314 = fmul fast float %8312, %8308
  %8315 = fmul fast float %8312, %8309
  %8316 = fadd fast float %8311, %8265
  %8317 = fdiv fast float 1.000000e+00, %8316
  %8318 = fmul float %8276, %8317
  %8319 = fmul float %8318, %8318
  %8320 = call float @dx.op.unary.f32(i32 7, float %8319)  ; Saturate(value)
  br i1 %8306, label %8321, label %8342

; <label>:8321                                    ; preds = %8245
  %8322 = fmul fast float %8287, %8268
  %8323 = fmul fast float %8287, %8269
  %8324 = fmul fast float %8287, %8270
  %8325 = fadd fast float %8307, %8322
  %8326 = fadd fast float %8308, %8323
  %8327 = fadd fast float %8309, %8324
  %8328 = call float @dx.op.dot3.f32(i32 55, float %8325, float %8326, float %8327, float %8325, float %8326, float %8327)  ; Dot3(ax,ay,az,bx,by,bz)
  %8329 = call float @dx.op.unary.f32(i32 25, float %8328)  ; Rsqrt(value)
  %8330 = fmul fast float %8329, %8325
  %8331 = fmul fast float %8329, %8326
  %8332 = fmul fast float %8329, %8327
  %8333 = fsub fast float %209, %8279
  %8334 = fsub fast float %210, %8280
  %8335 = fsub fast float %211, %8281
  %8336 = fsub fast float -0.000000e+00, %8333
  %8337 = fsub fast float -0.000000e+00, %8334
  %8338 = fsub fast float -0.000000e+00, %8335
  %8339 = call float @dx.op.dot3.f32(i32 55, float %8336, float %8337, float %8338, float %8268, float %8269, float %8270)  ; Dot3(ax,ay,az,bx,by,bz)
  %8340 = fcmp fast ogt float %8339, 0.000000e+00
  %8341 = uitofp i1 %8340 to float
  br label %8342

; <label>:8342                                    ; preds = %8321, %8245
  %8343 = phi float [ %8341, %8321 ], [ 1.000000e+00, %8245 ]
  %8344 = phi float [ %8330, %8321 ], [ %8313, %8245 ]
  %8345 = phi float [ %8331, %8321 ], [ %8314, %8245 ]
  %8346 = phi float [ %8332, %8321 ], [ %8315, %8245 ]
  %8347 = call float @dx.op.dot3.f32(i32 55, float %8268, float %8269, float %8270, float %8344, float %8345, float %8346)  ; Dot3(ax,ay,az,bx,by,bz)
  %8348 = fmul fast float %8347, %8347
  %8349 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8350 = fsub fast float 1.000000e+00, %8349
  %8351 = fmul fast float %8350, 5.000000e-01
  %8352 = fcmp fast ogt float %8347, 0.000000e+00
  %8353 = fsub fast float 1.000000e+00, %8351
  %8354 = select i1 %8352, float %8351, float %8353
  %8355 = fmul fast float %8354, %8303
  %8356 = fadd fast float %8355, %8301
  %8357 = fmul fast float %8356, 0x3EF0001000000000
  %8358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %8357, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8359 = extractvalue %dx.types.ResRet.f32 %8358, 0
  %8360 = fmul fast float %8347, %8285
  %8361 = fadd fast float %8360, %8286
  %8362 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8363 = select i1 %8306, float 1.000000e+00, float %8362
  %8364 = select i1 %8306, float %8362, float 1.000000e+00
  %8365 = fmul fast float %8311, %8282
  %8366 = fsub fast float 1.000000e+00, %8365
  %8367 = fmul fast float %8366, %8288
  %8368 = call float @dx.op.unary.f32(i32 7, float %8367)  ; Saturate(value)
  %8369 = fmul fast float %8368, %8364
  %8370 = fmul fast float %8369, 2.000000e+00
  %8371 = fsub fast float 3.000000e+00, %8370
  %8372 = fmul fast float %8359, %8343
  %8373 = fmul fast float %8369, %8369
  %8374 = fmul fast float %8373, %8372
  %8375 = fmul fast float %8374, %8371
  %8376 = call float @dx.op.binary.f32(i32 36, float %8375, float %8375)  ; FMin(a,b)
  %8377 = call float @dx.op.binary.f32(i32 36, float %8375, float %8376)  ; FMin(a,b)
  %8378 = fcmp fast ogt float %8377, 0.000000e+00
  br i1 %8378, label %8387, label %8379, !dx.controlflow.hints !138

; <label>:8379                                    ; preds = %8772, %8533, %8342
  %8380 = phi float [ %8247, %8533 ], [ %8247, %8342 ], [ %8812, %8772 ]
  %8381 = phi float [ %8248, %8533 ], [ %8248, %8342 ], [ %8813, %8772 ]
  %8382 = phi float [ %8249, %8533 ], [ %8249, %8342 ], [ %8814, %8772 ]
  %8383 = phi float [ %8250, %8533 ], [ %8250, %8342 ], [ %8806, %8772 ]
  %8384 = phi float [ %8251, %8533 ], [ %8251, %8342 ], [ %8807, %8772 ]
  %8385 = phi float [ %8252, %8533 ], [ %8252, %8342 ], [ %8808, %8772 ]
  %8386 = icmp eq i32 %8246, %8256
  br i1 %8386, label %8815, label %8245

; <label>:8387                                    ; preds = %8342
  %8388 = icmp eq i32 %8304, 255
  br i1 %8388, label %8533, label %8389, !dx.controlflow.hints !139

; <label>:8389                                    ; preds = %8387
  %8390 = mul nuw nsw i32 %8304, 176
  %8391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8390, i32 undef)  ; BufferLoad(srv,index,wot)
  %8392 = extractvalue %dx.types.ResRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.ResRet.f32 %8391, 1
  %8394 = extractvalue %dx.types.ResRet.f32 %8391, 2
  %8395 = extractvalue %dx.types.ResRet.f32 %8391, 3
  %8396 = add nuw nsw i32 %8390, 16
  %8397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8396, i32 undef)  ; BufferLoad(srv,index,wot)
  %8398 = extractvalue %dx.types.ResRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.ResRet.f32 %8397, 1
  %8400 = add nuw nsw i32 %8390, 32
  %8401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8400, i32 undef)  ; BufferLoad(srv,index,wot)
  %8402 = extractvalue %dx.types.ResRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.ResRet.f32 %8401, 1
  %8404 = extractvalue %dx.types.ResRet.f32 %8401, 2
  %8405 = add nuw nsw i32 %8390, 48
  %8406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8405, i32 undef)  ; BufferLoad(srv,index,wot)
  %8407 = extractvalue %dx.types.ResRet.f32 %8406, 0
  %8408 = extractvalue %dx.types.ResRet.f32 %8406, 1
  %8409 = extractvalue %dx.types.ResRet.f32 %8406, 2
  %8410 = extractvalue %dx.types.ResRet.f32 %8406, 3
  %8411 = add nuw nsw i32 %8390, 64
  %8412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8411, i32 undef)  ; BufferLoad(srv,index,wot)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.ResRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.ResRet.f32 %8412, 2
  %8416 = extractvalue %dx.types.ResRet.f32 %8412, 3
  %8417 = add nuw nsw i32 %8390, 80
  %8418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8417, i32 undef)  ; BufferLoad(srv,index,wot)
  %8419 = extractvalue %dx.types.ResRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.ResRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.ResRet.f32 %8418, 2
  %8422 = extractvalue %dx.types.ResRet.f32 %8418, 3
  %8423 = add nuw nsw i32 %8390, 96
  %8424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8423, i32 undef)  ; BufferLoad(srv,index,wot)
  %8425 = extractvalue %dx.types.ResRet.f32 %8424, 0
  %8426 = extractvalue %dx.types.ResRet.f32 %8424, 1
  %8427 = extractvalue %dx.types.ResRet.f32 %8424, 2
  %8428 = extractvalue %dx.types.ResRet.f32 %8424, 3
  %8429 = bitcast float %8399 to i32
  %8430 = fmul fast float %8404, %135
  %8431 = fmul fast float %8404, %137
  %8432 = fmul fast float %8404, %139
  %8433 = fadd fast float %8430, %209
  %8434 = fadd fast float %8431, %210
  %8435 = fadd fast float %8432, %211
  %8436 = fmul fast float %8433, %8407
  %8437 = call float @dx.op.tertiary.f32(i32 46, float %8434, float %8413, float %8436)  ; FMad(a,b,c)
  %8438 = call float @dx.op.tertiary.f32(i32 46, float %8435, float %8419, float %8437)  ; FMad(a,b,c)
  %8439 = fadd fast float %8438, %8425
  %8440 = fmul fast float %8433, %8408
  %8441 = call float @dx.op.tertiary.f32(i32 46, float %8434, float %8414, float %8440)  ; FMad(a,b,c)
  %8442 = call float @dx.op.tertiary.f32(i32 46, float %8435, float %8420, float %8441)  ; FMad(a,b,c)
  %8443 = fadd fast float %8442, %8426
  %8444 = fmul fast float %8433, %8409
  %8445 = call float @dx.op.tertiary.f32(i32 46, float %8434, float %8415, float %8444)  ; FMad(a,b,c)
  %8446 = call float @dx.op.tertiary.f32(i32 46, float %8435, float %8421, float %8445)  ; FMad(a,b,c)
  %8447 = fadd fast float %8446, %8427
  %8448 = fmul fast float %8433, %8410
  %8449 = call float @dx.op.tertiary.f32(i32 46, float %8434, float %8416, float %8448)  ; FMad(a,b,c)
  %8450 = call float @dx.op.tertiary.f32(i32 46, float %8435, float %8422, float %8449)  ; FMad(a,b,c)
  %8451 = fadd fast float %8450, %8428
  %8452 = fdiv fast float %8439, %8451
  %8453 = fdiv fast float %8443, %8451
  %8454 = fdiv fast float %8447, %8451
  %8455 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8454)  ; FMax(a,b)
  %8456 = fmul fast float %292, 0x401921FB60000000
  %8457 = call float @dx.op.unary.f32(i32 13, float %8456)  ; Sin(value)
  %8458 = call float @dx.op.unary.f32(i32 12, float %8456)  ; Cos(value)
  %8459 = fmul fast float %8458, %8403
  %8460 = call float @dx.op.tertiary.f32(i32 46, float %8457, float %8403, float 0.000000e+00)  ; FMad(a,b,c)
  %8461 = fmul fast float %8403, %8457
  %8462 = fsub fast float -0.000000e+00, %8461
  %8463 = call float @dx.op.tertiary.f32(i32 46, float %8458, float %8403, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8464

; <label>:8464                                    ; preds = %8464, %8389
  %8465 = phi float [ 0.000000e+00, %8389 ], [ %8497, %8464 ]
  %8466 = phi float [ 0.000000e+00, %8389 ], [ %8499, %8464 ]
  %8467 = phi i32 [ 0, %8389 ], [ %8500, %8464 ]
  %8468 = mul i32 %8467, 2
  %8469 = add i32 0, %8468
  %8470 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8469
  %8471 = load float, float* %8470, align 4
  %8472 = mul i32 %8467, 2
  %8473 = add i32 1, %8472
  %8474 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8473
  %8475 = load float, float* %8474, align 4
  %8476 = fmul fast float %8459, %8471
  %8477 = call float @dx.op.tertiary.f32(i32 46, float %8475, float %8462, float %8476)  ; FMad(a,b,c)
  %8478 = fmul fast float %8471, %8460
  %8479 = call float @dx.op.tertiary.f32(i32 46, float %8475, float %8463, float %8478)  ; FMad(a,b,c)
  %8480 = fadd fast float %8477, %8452
  %8481 = fadd fast float %8479, %8453
  %8482 = fmul fast float %8480, %8398
  %8483 = fmul fast float %8481, %8398
  %8484 = call float @dx.op.binary.f32(i32 35, float %8482, float %8394)  ; FMax(a,b)
  %8485 = call float @dx.op.binary.f32(i32 35, float %8483, float %8394)  ; FMax(a,b)
  %8486 = call float @dx.op.binary.f32(i32 36, float %8484, float %8395)  ; FMin(a,b)
  %8487 = call float @dx.op.binary.f32(i32 36, float %8485, float %8395)  ; FMin(a,b)
  %8488 = fadd fast float %8486, %8392
  %8489 = fadd fast float %8487, %8393
  %8490 = uitofp i32 %8429 to float
  %8491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %57, float %8488, float %8489, float %8490, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8492 = extractvalue %dx.types.ResRet.f32 %8491, 0
  %8493 = fsub fast float %8492, %8455
  %8494 = fsub fast float %8493, %8402
  %8495 = fcmp fast ogt float %8494, 0.000000e+00
  %8496 = select i1 %8495, float 1.000000e+00, float 0.000000e+00
  %8497 = fadd fast float %8496, %8465
  %8498 = select i1 %8495, float %8494, float 0.000000e+00
  %8499 = fadd fast float %8498, %8466
  %8500 = add nuw nsw i32 %8467, 1
  %8501 = icmp eq i32 %8500, 8
  br i1 %8501, label %8502, label %8464

; <label>:8502                                    ; preds = %8464
  %8503 = fdiv fast float 1.000000e+00, %8497
  %8504 = fmul fast float %8503, %8499
  %8505 = fdiv fast float 1.000000e+00, %8455
  %8506 = fmul fast float %8504, %8505
  %8507 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8508 = call float @dx.op.binary.f32(i32 35, float %8507, float 0.000000e+00)  ; FMax(a,b)
  %8509 = fmul fast float %8497, 1.250000e-01
  %8510 = call float @dx.op.unary.f32(i32 7, float %8509)  ; Saturate(value)
  %8511 = fmul fast float %8510, 2.000000e+00
  %8512 = fadd fast float %8511, -1.000000e+00
  %8513 = fcmp fast ogt float %8512, 0.000000e+00
  %8514 = fcmp fast olt float %8512, 0.000000e+00
  %8515 = zext i1 %8513 to i32
  %8516 = zext i1 %8514 to i32
  %8517 = sub nsw i32 %8515, %8516
  %8518 = sitofp i32 %8517 to float
  %8519 = fmul fast float %8518, %8512
  %8520 = fsub fast float 1.000000e+00, %8519
  %8521 = fmul fast float %8520, %8520
  %8522 = fmul fast float %8521, %8520
  %8523 = fsub fast float %8520, %8522
  %8524 = fmul fast float %8523, %8508
  %8525 = fsub fast float 1.000000e+00, %8522
  %8526 = fsub fast float %8525, %8524
  %8527 = fmul fast float %8518, 5.000000e-01
  %8528 = fmul fast float %8527, %8526
  %8529 = fsub fast float -5.000000e-01, %8528
  %8530 = fmul fast float %8529, %8363
  %8531 = fadd fast float %8530, 1.000000e+00
  %8532 = fmul fast float %8531, %8375
  br label %8533

; <label>:8533                                    ; preds = %8502, %8387
  %8534 = phi float [ %8532, %8502 ], [ %8375, %8387 ]
  %8535 = call float @dx.op.binary.f32(i32 36, float %8534, float %8534)  ; FMin(a,b)
  %8536 = call float @dx.op.binary.f32(i32 36, float %8534, float %8535)  ; FMin(a,b)
  %8537 = fcmp fast ogt float %8536, 0.000000e+00
  br i1 %8537, label %8538, label %8379, !dx.controlflow.hints !140

; <label>:8538                                    ; preds = %8533
  %8539 = fmul fast float %8534, %8297
  %8540 = fmul fast float %8534, %8298
  %8541 = fmul fast float %8534, %8299
  %8542 = fsub fast float %8281, %4656
  %8543 = fcmp fast ogt float %8542, 0.000000e+00
  %8544 = fsub fast float %211, %4656
  %8545 = fcmp fast ogt float %8544, 0.000000e+00
  %8546 = xor i1 %8545, %8543
  %8547 = fsub fast float %4656, %8281
  %8548 = fmul fast float %8547, 2.000000e+00
  %8549 = fadd fast float %8548, %8281
  %8550 = select i1 %8546, float %8281, float %8549
  %8551 = fsub fast float %8550, %211
  %8552 = call float @dx.op.dot3.f32(i32 55, float %8307, float %8308, float %8551, float %8307, float %8308, float %8551)  ; Dot3(ax,ay,az,bx,by,bz)
  %8553 = call float @dx.op.unary.f32(i32 25, float %8552)  ; Rsqrt(value)
  %8554 = fmul fast float %8553, %8307
  %8555 = fmul fast float %8553, %8308
  %8556 = fmul fast float %8553, %8551
  %8557 = fsub fast float %4656, %211
  %8558 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8557)  ; Dot3(ax,ay,az,bx,by,bz)
  %8559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8554, float %8555, float %8556)  ; Dot3(ax,ay,az,bx,by,bz)
  %8560 = fdiv fast float 1.000000e+00, %8559
  %8561 = fmul fast float %8560, %8558
  %8562 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8544, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8563 = fcmp fast ogt float %8562, 0.000000e+00
  %8564 = fcmp fast olt float %8562, 0.000000e+00
  %8565 = zext i1 %8563 to i32
  %8566 = zext i1 %8564 to i32
  %8567 = sub nsw i32 %8565, %8566
  %8568 = sitofp i32 %8567 to float
  %8569 = fsub fast float %8550, %4656
  %8570 = call float @dx.op.dot3.f32(i32 55, float %8307, float %8308, float %8569, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8571 = fcmp fast ogt float %8570, 0.000000e+00
  %8572 = fcmp fast olt float %8570, 0.000000e+00
  %8573 = zext i1 %8571 to i32
  %8574 = zext i1 %8572 to i32
  %8575 = sub nsw i32 %8573, %8574
  %8576 = sitofp i32 %8575 to float
  %8577 = fcmp fast une float %8568, %8576
  br i1 %8577, label %8578, label %8588

; <label>:8578                                    ; preds = %8538
  %8579 = fmul fast float %8561, %8556
  %8580 = fmul fast float %8561, %8555
  %8581 = fmul fast float %8561, %8554
  %8582 = fmul fast float %8581, %8581
  %8583 = fmul fast float %8580, %8580
  %8584 = fadd fast float %8582, %8583
  %8585 = fmul fast float %8579, %8579
  %8586 = fadd fast float %8584, %8585
  %8587 = call float @dx.op.unary.f32(i32 24, float %8586)  ; Sqrt(value)
  br label %8600

; <label>:8588                                    ; preds = %8538
  %8589 = icmp slt i32 %8567, 0
  br i1 %8589, label %8590, label %8600

; <label>:8590                                    ; preds = %8588
  %8591 = fsub fast float %209, %8279
  %8592 = fsub fast float %210, %8280
  %8593 = fsub fast float %211, %8550
  %8594 = fmul fast float %8591, %8591
  %8595 = fmul fast float %8592, %8592
  %8596 = fadd fast float %8594, %8595
  %8597 = fmul fast float %8593, %8593
  %8598 = fadd fast float %8596, %8597
  %8599 = call float @dx.op.unary.f32(i32 24, float %8598)  ; Sqrt(value)
  br label %8600

; <label>:8600                                    ; preds = %8590, %8588, %8578
  %8601 = phi float [ %8587, %8578 ], [ %8599, %8590 ], [ 0.000000e+00, %8588 ]
  %8602 = and i1 %8545, %8543
  %8603 = fsub fast float -0.000000e+00, %8601
  %8604 = select i1 %8602, float -0.000000e+00, float %8603
  %8605 = fmul fast float %4653, 0x3FF7154760000000
  %8606 = fmul fast float %8605, %8604
  %8607 = fmul fast float %4654, 0x3FF7154760000000
  %8608 = fmul fast float %8607, %8604
  %8609 = fmul fast float %4655, 0x3FF7154760000000
  %8610 = fmul fast float %8609, %8604
  %8611 = call float @dx.op.unary.f32(i32 21, float %8606)  ; Exp(value)
  %8612 = call float @dx.op.unary.f32(i32 21, float %8608)  ; Exp(value)
  %8613 = call float @dx.op.unary.f32(i32 21, float %8610)  ; Exp(value)
  %8614 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  %8615 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8616 = call float @dx.op.unary.f32(i32 7, float %8613)  ; Saturate(value)
  %8617 = fmul fast float %8539, %8614
  %8618 = fmul fast float %8540, %8615
  %8619 = fmul fast float %8541, %8616
  %8620 = fsub fast float %8313, %5479
  %8621 = fsub fast float %8314, %5480
  %8622 = fsub fast float %8315, %5481
  %8623 = call float @dx.op.dot3.f32(i32 55, float %8620, float %8621, float %8622, float %8620, float %8621, float %8622)  ; Dot3(ax,ay,az,bx,by,bz)
  %8624 = call float @dx.op.unary.f32(i32 25, float %8623)  ; Rsqrt(value)
  %8625 = fmul fast float %8624, %8620
  %8626 = fmul fast float %8624, %8621
  %8627 = fmul fast float %8624, %8622
  %8628 = call float @dx.op.dot3.f32(i32 55, float %8313, float %8314, float %8315, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %8629 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %5484, float %8625, float %8626, float %8627)  ; Dot3(ax,ay,az,bx,by,bz)
  %8630 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8631 = fmul fast float %8630, %8320
  %8632 = bitcast i32 %5511 to float
  %8633 = fmul fast float %8630, %8630
  %8634 = fmul fast float %8633, %8632
  %8635 = call float @dx.op.unary.f32(i32 7, float %8634)  ; Saturate(value)
  %8636 = fmul fast float %8631, %8635
  %8637 = bitcast float %8310 to i32
  %8638 = ashr i32 %8637, 1
  %8639 = sub nsw i32 1597463007, %8638
  %8640 = bitcast i32 %8639 to float
  %8641 = fmul fast float %8640, %8307
  %8642 = fmul fast float %8640, %8308
  %8643 = fmul fast float %8640, %8309
  %8644 = fsub fast float %8641, %5479
  %8645 = fsub fast float %8642, %5480
  %8646 = fsub fast float %8643, %5481
  %8647 = call float @dx.op.dot3.f32(i32 55, float %8644, float %8645, float %8646, float %8644, float %8645, float %8646)  ; Dot3(ax,ay,az,bx,by,bz)
  %8648 = call float @dx.op.unary.f32(i32 25, float %8647)  ; Rsqrt(value)
  %8649 = fmul fast float %8644, %8648
  %8650 = fmul fast float %8645, %8648
  %8651 = fmul fast float %8646, %8648
  %8652 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %8649, float %8650, float %8651)  ; Dot3(ax,ay,az,bx,by,bz)
  %8653 = fmul fast float %8652, %8652
  %8654 = call float @dx.op.unary.f32(i32 6, float %8628)  ; FAbs(value)
  %8655 = fsub fast float 1.000000e+00, %5505
  %8656 = fmul fast float %5487, %5487
  %8657 = fmul fast float %8656, %8655
  %8658 = fadd fast float %8657, %5505
  %8659 = bitcast float %8658 to i32
  %8660 = ashr i32 %8659, 1
  %8661 = add nsw i32 %8660, 532487669
  %8662 = bitcast i32 %8661 to float
  %8663 = fadd fast float %8662, %5487
  %8664 = fmul fast float %5505, %8653
  %8665 = fsub fast float 1.000000e+00, %8653
  %8666 = fadd fast float %8665, %8664
  %8667 = fmul fast float %8654, %8654
  %8668 = fmul fast float %8667, %8655
  %8669 = fadd fast float %8668, %5505
  %8670 = bitcast float %8669 to i32
  %8671 = ashr i32 %8670, 1
  %8672 = add nsw i32 %8671, 532487669
  %8673 = bitcast i32 %8672 to float
  %8674 = fadd fast float %8673, %8654
  %8675 = fmul fast float %8666, %8666
  %8676 = fmul fast float %8675, %8663
  %8677 = fmul fast float %8676, %8674
  %8678 = fdiv fast float 1.000000e+00, %8677
  %8679 = bitcast float %5505 to i32
  %8680 = sitofp i32 %8679 to float
  %8681 = fmul fast float %8680, 0x3FE7F73180000000
  %8682 = fadd fast float %8681, 0x41AFE27C40000000
  %8683 = fptosi float %8682 to i32
  %8684 = bitcast i32 %8683 to float
  %8685 = fmul fast float %8276, 0x3FD80E9D60000000
  %8686 = fmul fast float %8685, %8640
  %8687 = fadd fast float %8684, %8686
  %8688 = bitcast float %8687 to i32
  %8689 = sub nsw i32 2129859010, %8688
  %8690 = bitcast i32 %8689 to float
  %8691 = fmul fast float %5505, %8678
  %8692 = fmul fast float %8691, %8684
  %8693 = fmul fast float %8692, %8690
  %8694 = call float @dx.op.unary.f32(i32 6, float %8629)  ; FAbs(value)
  %8695 = fsub fast float 1.000000e+00, %8694
  %8696 = bitcast float %8695 to i32
  %8697 = sitofp i32 %8696 to float
  %8698 = fmul fast float %8697, 5.000000e+00
  %8699 = fadd fast float %8698, 0xC1EFBF8940000000
  %8700 = fptosi float %8699 to i32
  %8701 = bitcast i32 %8700 to float
  %8702 = fsub fast float 1.000000e+00, %5433
  %8703 = fsub fast float 1.000000e+00, %5434
  %8704 = fsub fast float 1.000000e+00, %5485
  %8705 = fmul fast float %8701, %8702
  %8706 = fmul fast float %8701, %8703
  %8707 = fmul fast float %8701, %8704
  %8708 = fadd fast float %8705, %5433
  %8709 = fadd fast float %8706, %5434
  %8710 = fadd fast float %8707, %5485
  br i1 %5812, label %8711, label %8734

; <label>:8711                                    ; preds = %8600
  %8712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4251, float %8694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8713 = extractvalue %dx.types.ResRet.f32 %8712, 0
  %8714 = extractvalue %dx.types.ResRet.f32 %8712, 1
  %8715 = extractvalue %dx.types.ResRet.f32 %8712, 2
  %8716 = fadd fast float %8713, -5.000000e-01
  %8717 = fadd fast float %8714, -5.000000e-01
  %8718 = fadd fast float %8715, -5.000000e-01
  %8719 = fmul fast float %5433, 4.000000e+00
  %8720 = fmul fast float %8719, %8702
  %8721 = fmul fast float %8720, %8716
  %8722 = fmul fast float %5434, 4.000000e+00
  %8723 = fmul fast float %8722, %8703
  %8724 = fmul fast float %8723, %8717
  %8725 = fmul fast float %5485, 4.000000e+00
  %8726 = fmul fast float %8725, %8704
  %8727 = fmul fast float %8726, %8718
  %8728 = fadd fast float %8721, %8708
  %8729 = fadd fast float %8724, %8709
  %8730 = fadd fast float %8727, %8710
  %8731 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8732 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8733 = call float @dx.op.unary.f32(i32 7, float %8730)  ; Saturate(value)
  br label %8734

; <label>:8734                                    ; preds = %8711, %8600
  %8735 = phi float [ %8731, %8711 ], [ %8708, %8600 ]
  %8736 = phi float [ %8732, %8711 ], [ %8709, %8600 ]
  %8737 = phi float [ %8733, %8711 ], [ %8710, %8600 ]
  %8738 = fmul fast float %8628, 9.843750e-01
  %8739 = fadd fast float %8738, 7.812500e-03
  %8740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8739, float %5802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8741 = extractvalue %dx.types.ResRet.f32 %8740, 2
  %8742 = extractvalue %dx.types.ResRet.f32 %8740, 3
  %8743 = fmul fast float %8741, %5433
  %8744 = fmul fast float %8741, %5434
  %8745 = fmul fast float %8741, %5485
  %8746 = fadd fast float %8743, %8742
  %8747 = fadd fast float %8744, %8742
  %8748 = fadd fast float %8745, %8742
  br i1 %5812, label %8749, label %8772

; <label>:8749                                    ; preds = %8734
  %8750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4251, float %8628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8751 = extractvalue %dx.types.ResRet.f32 %8750, 0
  %8752 = extractvalue %dx.types.ResRet.f32 %8750, 1
  %8753 = extractvalue %dx.types.ResRet.f32 %8750, 2
  %8754 = fadd fast float %8751, -5.000000e-01
  %8755 = fadd fast float %8752, -5.000000e-01
  %8756 = fadd fast float %8753, -5.000000e-01
  %8757 = fmul fast float %5433, 4.000000e+00
  %8758 = fmul fast float %8757, %8702
  %8759 = fmul fast float %8758, %8754
  %8760 = fmul fast float %5434, 4.000000e+00
  %8761 = fmul fast float %8760, %8703
  %8762 = fmul fast float %8761, %8755
  %8763 = fmul fast float %5485, 4.000000e+00
  %8764 = fmul fast float %8763, %8704
  %8765 = fmul fast float %8764, %8756
  %8766 = fadd fast float %8759, %8746
  %8767 = fadd fast float %8762, %8747
  %8768 = fadd fast float %8765, %8748
  %8769 = call float @dx.op.unary.f32(i32 7, float %8766)  ; Saturate(value)
  %8770 = call float @dx.op.unary.f32(i32 7, float %8767)  ; Saturate(value)
  %8771 = call float @dx.op.unary.f32(i32 7, float %8768)  ; Saturate(value)
  br label %8772

; <label>:8772                                    ; preds = %8749, %8734
  %8773 = phi float [ %8769, %8749 ], [ %8746, %8734 ]
  %8774 = phi float [ %8770, %8749 ], [ %8747, %8734 ]
  %8775 = phi float [ %8771, %8749 ], [ %8748, %8734 ]
  %8776 = call float @dx.op.binary.f32(i32 35, float %8774, float %8775)  ; FMax(a,b)
  %8777 = call float @dx.op.binary.f32(i32 35, float %8773, float %8776)  ; FMax(a,b)
  %8778 = fsub fast float 1.000000e+00, %8777
  %8779 = fmul fast float %8735, %8693
  %8780 = fmul fast float %8736, %8693
  %8781 = fmul fast float %8737, %8693
  %8782 = fsub fast float 1.000000e+00, %8629
  %8783 = bitcast float %8782 to i32
  %8784 = sitofp i32 %8783 to float
  %8785 = fmul fast float %8784, 5.000000e+00
  %8786 = fadd fast float %8785, 0xC1EFBF8940000000
  %8787 = fptosi float %8786 to i32
  %8788 = bitcast i32 %8787 to float
  %8789 = fmul fast float %8788, %4252
  %8790 = fmul fast float %8778, %8789
  %8791 = fmul fast float %8790, %6404
  %8792 = fmul fast float %8790, %6405
  %8793 = fmul fast float %8790, %6406
  %8794 = fadd fast float %8791, %8779
  %8795 = fadd fast float %8792, %8780
  %8796 = fadd fast float %8793, %8781
  %8797 = fmul fast float %8617, %4248
  %8798 = fmul fast float %8797, %8636
  %8799 = fmul fast float %8798, %8778
  %8800 = fmul fast float %8618, %4248
  %8801 = fmul fast float %8800, %8636
  %8802 = fmul fast float %8801, %8778
  %8803 = fmul fast float %8619, %4248
  %8804 = fmul fast float %8803, %8636
  %8805 = fmul fast float %8804, %8778
  %8806 = fadd fast float %8799, %8250
  %8807 = fadd fast float %8802, %8251
  %8808 = fadd fast float %8805, %8252
  %8809 = fmul fast float %8798, %8794
  %8810 = fmul fast float %8801, %8795
  %8811 = fmul fast float %8804, %8796
  %8812 = fadd fast float %8809, %8247
  %8813 = fadd fast float %8810, %8248
  %8814 = fadd fast float %8811, %8249
  br label %8379

; <label>:8815                                    ; preds = %8379
  br label %8816

; <label>:8816                                    ; preds = %8815, %8213
  %8817 = phi float [ %8215, %8213 ], [ %8380, %8815 ]
  %8818 = phi float [ %8216, %8213 ], [ %8381, %8815 ]
  %8819 = phi float [ %8217, %8213 ], [ %8382, %8815 ]
  %8820 = phi float [ %8218, %8213 ], [ %8383, %8815 ]
  %8821 = phi float [ %8219, %8213 ], [ %8384, %8815 ]
  %8822 = phi float [ %8220, %8213 ], [ %8385, %8815 ]
  %8823 = add i32 %8214, 1
  %8824 = icmp ugt i32 %8823, %8210
  br i1 %8824, label %8825, label %8213

; <label>:8825                                    ; preds = %8816
  br label %8826

; <label>:8826                                    ; preds = %8825, %8163, %8153
  %8827 = phi float [ %8154, %8153 ], [ %8154, %8163 ], [ %8817, %8825 ]
  %8828 = phi float [ %8155, %8153 ], [ %8155, %8163 ], [ %8818, %8825 ]
  %8829 = phi float [ %8156, %8153 ], [ %8156, %8163 ], [ %8819, %8825 ]
  %8830 = phi float [ %8157, %8153 ], [ %8157, %8163 ], [ %8820, %8825 ]
  %8831 = phi float [ %8158, %8153 ], [ %8158, %8163 ], [ %8821, %8825 ]
  %8832 = phi float [ %8159, %8153 ], [ %8159, %8163 ], [ %8822, %8825 ]
  %8833 = fmul fast float %4248, %4248
  %8834 = fsub fast float 1.000000e+00, %8833
  %8835 = call float @dx.op.dot3.f32(i32 55, float %8834, float %8834, float %8834, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8836 = fsub fast float 1.000000e+00, %8835
  %8837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8838 = extractvalue %dx.types.CBufRet.f32 %8837, 0
  %8839 = fmul fast float %8838, %6420
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 3
  %8842 = fsub fast float 1.000000e+00, %4256
  %8843 = call float @dx.op.unary.f32(i32 7, float %8842)  ; Saturate(value)
  %8844 = fadd fast float %8832, %4254
  %8845 = fmul fast float %8844, %4256
  %8846 = fmul fast float %8843, %8841
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 3
  %8849 = fmul fast float %8830, %5439
  %8850 = fmul fast float %8831, %5440
  %8851 = fmul fast float %8832, %5441
  %8852 = fcmp fast ogt float %113, %244
  %8853 = and i1 %8852, %4659
  %8854 = or i1 %4665, %8853
  %8855 = icmp eq i32 %4658, 2
  %8856 = fcmp fast ole float %113, %244
  %8857 = and i1 %8856, %8855
  %8858 = or i1 %8857, %8854
  br i1 %8853, label %8859, label %9116

; <label>:8859                                    ; preds = %8826
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 2
  %8862 = extractvalue %dx.types.CBufRet.f32 %8860, 3
  %8863 = fmul fast float %8861, %126
  %8864 = fmul fast float %8862, %127
  %8865 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8866 = call float @dx.op.unary.f32(i32 7, float %8864)  ; Saturate(value)
  %8867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8865, float %8866, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8868 = extractvalue %dx.types.ResRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.ResRet.f32 %8867, 1
  %8870 = extractvalue %dx.types.ResRet.f32 %8867, 2
  %8871 = extractvalue %dx.types.ResRet.f32 %8867, 3
  %8872 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8865, float %8866, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8873 = extractvalue %dx.types.ResRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.ResRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.ResRet.f32 %8872, 2
  %8876 = extractvalue %dx.types.ResRet.f32 %8872, 3
  %8877 = call float @dx.op.binary.f32(i32 35, float %8869, float %8870)  ; FMax(a,b)
  %8878 = call float @dx.op.binary.f32(i32 35, float %8868, float %8877)  ; FMax(a,b)
  %8879 = call float @dx.op.binary.f32(i32 35, float %8878, float %8871)  ; FMax(a,b)
  %8880 = call float @dx.op.binary.f32(i32 36, float %8874, float %8875)  ; FMin(a,b)
  %8881 = call float @dx.op.binary.f32(i32 36, float %8873, float %8880)  ; FMin(a,b)
  %8882 = call float @dx.op.binary.f32(i32 36, float %8881, float %8876)  ; FMin(a,b)
  %8883 = fmul fast float %8879, 2.550000e+02
  %8884 = fadd fast float %8883, 0x3F70101020000000
  %8885 = fptoui float %8884 to i32
  %8886 = fmul fast float %8882, 2.550000e+02
  %8887 = fadd fast float %8886, 0x3F70101020000000
  %8888 = fptoui float %8887 to i32
  %8889 = icmp ult i32 %8885, %8888
  br i1 %8889, label %8890, label %9058

; <label>:8890                                    ; preds = %8859
  %8891 = fcmp fast ogt float %112, 9.843750e-01
  %8892 = fadd fast float %113, -4.000000e+00
  %8893 = select i1 %8891, float -4.000000e+00, float %8892
  %8894 = call float @dx.op.binary.f32(i32 35, float %8893, float 0.000000e+00)  ; FMax(a,b)
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = fadd fast float %8896, %8894
  %8898 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8899 = fmul fast float %8897, %8898
  %8900 = call float @dx.op.unary.f32(i32 23, float %8899)  ; Log(value)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8895, 3
  %8902 = fmul fast float %8901, %8900
  %8903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8904 = extractvalue %dx.types.CBufRet.f32 %8903, 2
  %8905 = fmul fast float %8902, %8904
  %8906 = call float @dx.op.unary.f32(i32 7, float %8905)  ; Saturate(value)
  %8907 = uitofp i32 %8885 to float
  %8908 = uitofp i32 %8888 to float
  %8909 = fadd fast float %8907, 5.000000e-01
  %8910 = fadd fast float %8908, 5.000000e-01
  %8911 = fmul fast float %8904, %8909
  %8912 = fmul fast float %8904, %8910
  %8913 = fadd fast float %8911, 0x3F0FFB4800000000
  %8914 = fadd fast float %8912, 0xBF0FFB4800000000
  %8915 = call float @dx.op.binary.f32(i32 35, float %8906, float %8913)  ; FMax(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8915, float %8914)  ; FMin(a,b)
  %8917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8918 = extractvalue %dx.types.CBufRet.f32 %8917, 1
  %8919 = extractvalue %dx.types.CBufRet.f32 %8917, 2
  %8920 = extractvalue %dx.types.CBufRet.f32 %8917, 0
  %8921 = fmul fast float %8918, %8916
  %8922 = fadd fast float %8920, %8921
  %8923 = fadd fast float %8920, %8919
  %8924 = fsub fast float %8918, %8919
  %8925 = fadd fast float %8924, %8920
  %8926 = call float @dx.op.binary.f32(i32 35, float %8922, float %8923)  ; FMax(a,b)
  %8927 = call float @dx.op.binary.f32(i32 36, float %8926, float %8925)  ; FMin(a,b)
  %8928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %8865, float %8866, float %8927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8929 = extractvalue %dx.types.ResRet.f32 %8928, 0
  %8930 = extractvalue %dx.types.ResRet.f32 %8928, 1
  %8931 = extractvalue %dx.types.ResRet.f32 %8928, 2
  %8932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8933 = extractvalue %dx.types.CBufRet.i32 %8932, 0
  %8934 = extractvalue %dx.types.CBufRet.i32 %8932, 1
  %8935 = uitofp i32 %8933 to float
  %8936 = uitofp i32 %8934 to float
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 0
  %8939 = extractvalue %dx.types.CBufRet.f32 %8937, 1
  %8940 = fmul fast float %8935, %8865
  %8941 = fmul fast float %8936, %8866
  %8942 = fadd fast float %8940, -5.000000e-01
  %8943 = fadd fast float %8941, -5.000000e-01
  %8944 = call float @dx.op.unary.f32(i32 22, float %8942)  ; Frc(value)
  %8945 = call float @dx.op.unary.f32(i32 22, float %8943)  ; Frc(value)
  %8946 = fmul fast float %8944, %8944
  %8947 = fmul fast float %8946, %8944
  %8948 = fsub fast float 3.000000e+00, %8944
  %8949 = fmul fast float %8946, %8948
  %8950 = fmul fast float %8944, 3.000000e+00
  %8951 = fmul fast float %8947, 3.000000e+00
  %8952 = fmul fast float %8946, 6.000000e+00
  %8953 = fsub fast float %8951, %8952
  %8954 = fadd fast float %8953, 4.000000e+00
  %8955 = fmul fast float %8954, 0x3FC5555560000000
  %8956 = fmul fast float %8947, -3.000000e+00
  %8957 = fadd fast float %8946, %8944
  %8958 = fmul fast float %8957, 3.000000e+00
  %8959 = fadd fast float %8956, 1.000000e+00
  %8960 = fadd fast float %8959, %8958
  %8961 = fmul fast float %8947, 0x3FC5555560000000
  %8962 = fmul fast float %8945, %8945
  %8963 = fmul fast float %8962, %8945
  %8964 = fsub fast float 3.000000e+00, %8945
  %8965 = fmul fast float %8962, %8964
  %8966 = fmul fast float %8945, 3.000000e+00
  %8967 = fmul fast float %8963, 3.000000e+00
  %8968 = fmul fast float %8962, 6.000000e+00
  %8969 = fsub fast float %8967, %8968
  %8970 = fadd fast float %8969, 4.000000e+00
  %8971 = fmul fast float %8970, 0x3FC5555560000000
  %8972 = fmul fast float %8963, -3.000000e+00
  %8973 = fadd fast float %8962, %8945
  %8974 = fmul fast float %8973, 3.000000e+00
  %8975 = fadd fast float %8972, 1.000000e+00
  %8976 = fadd fast float %8975, %8974
  %8977 = fmul fast float %8963, 0x3FC5555560000000
  %8978 = fadd fast float %8944, 1.000000e+00
  %8979 = fsub fast float 1.000000e+00, %8950
  %8980 = fadd fast float %8979, %8949
  %8981 = fadd fast float %8980, %8954
  %8982 = fmul fast float %8981, 0x3FC5555560000000
  %8983 = fdiv fast float %8955, %8982
  %8984 = fsub fast float %8978, %8983
  %8985 = fsub fast float 1.000000e+00, %8944
  %8986 = fadd fast float %8960, %8947
  %8987 = fmul fast float %8986, 0x3FC5555560000000
  %8988 = fdiv fast float %8961, %8987
  %8989 = fadd fast float %8985, %8988
  %8990 = fadd fast float %8945, 1.000000e+00
  %8991 = fsub fast float 1.000000e+00, %8966
  %8992 = fadd fast float %8991, %8965
  %8993 = fadd fast float %8992, %8970
  %8994 = fmul fast float %8993, 0x3FC5555560000000
  %8995 = fdiv fast float %8971, %8994
  %8996 = fsub fast float %8990, %8995
  %8997 = fsub fast float 1.000000e+00, %8945
  %8998 = fadd fast float %8976, %8963
  %8999 = fmul fast float %8998, 0x3FC5555560000000
  %9000 = fdiv fast float %8977, %8999
  %9001 = fadd fast float %9000, %8997
  %9002 = fmul fast float %8984, %8938
  %9003 = fsub fast float %8865, %9002
  %9004 = fmul fast float %8989, %8938
  %9005 = fadd fast float %9004, %8865
  %9006 = fmul fast float %9001, %8939
  %9007 = fadd fast float %9006, %8866
  %9008 = fmul fast float %8996, %8939
  %9009 = fsub fast float %8866, %9008
  %9010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9003, float %9009, float %8927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9011 = extractvalue %dx.types.ResRet.f32 %9010, 0
  %9012 = extractvalue %dx.types.ResRet.f32 %9010, 1
  %9013 = extractvalue %dx.types.ResRet.f32 %9010, 2
  %9014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9005, float %9009, float %8927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9015 = extractvalue %dx.types.ResRet.f32 %9014, 0
  %9016 = extractvalue %dx.types.ResRet.f32 %9014, 1
  %9017 = extractvalue %dx.types.ResRet.f32 %9014, 2
  %9018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9003, float %9007, float %8927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9019 = extractvalue %dx.types.ResRet.f32 %9018, 0
  %9020 = extractvalue %dx.types.ResRet.f32 %9018, 1
  %9021 = extractvalue %dx.types.ResRet.f32 %9018, 2
  %9022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9005, float %9007, float %8927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9023 = extractvalue %dx.types.ResRet.f32 %9022, 0
  %9024 = extractvalue %dx.types.ResRet.f32 %9022, 1
  %9025 = extractvalue %dx.types.ResRet.f32 %9022, 2
  %9026 = fsub fast float %9019, %9011
  %9027 = fsub fast float %9020, %9012
  %9028 = fsub fast float %9021, %9013
  %9029 = fmul fast float %9026, %8999
  %9030 = fmul fast float %9027, %8999
  %9031 = fmul fast float %9028, %8999
  %9032 = fadd fast float %9029, %9011
  %9033 = fadd fast float %9030, %9012
  %9034 = fadd fast float %9031, %9013
  %9035 = fsub fast float %9023, %9015
  %9036 = fsub fast float %9024, %9016
  %9037 = fsub fast float %9025, %9017
  %9038 = fmul fast float %9035, %8999
  %9039 = fmul fast float %9036, %8999
  %9040 = fmul fast float %9037, %8999
  %9041 = fsub fast float %9015, %9032
  %9042 = fadd fast float %9041, %9038
  %9043 = fsub fast float %9016, %9033
  %9044 = fadd fast float %9043, %9039
  %9045 = fsub fast float %9017, %9034
  %9046 = fadd fast float %9045, %9040
  %9047 = fmul fast float %9042, %8987
  %9048 = fmul fast float %9044, %8987
  %9049 = fmul fast float %9046, %8987
  %9050 = fadd fast float %9047, %9032
  %9051 = fadd fast float %9048, %9033
  %9052 = fadd fast float %9049, %9034
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 1
  %9055 = fmul fast float %9050, %9054
  %9056 = fmul fast float %9051, %9054
  %9057 = fmul fast float %9052, %9054
  br label %9058

; <label>:9058                                    ; preds = %8890, %8859
  %9059 = phi float [ %8929, %8890 ], [ 1.000000e+00, %8859 ]
  %9060 = phi float [ %8930, %8890 ], [ 1.000000e+00, %8859 ]
  %9061 = phi float [ %8931, %8890 ], [ 1.000000e+00, %8859 ]
  %9062 = phi float [ %9055, %8890 ], [ 0.000000e+00, %8859 ]
  %9063 = phi float [ %9056, %8890 ], [ 0.000000e+00, %8859 ]
  %9064 = phi float [ %9057, %8890 ], [ 0.000000e+00, %8859 ]
  %9065 = fmul fast float %9062, %8836
  %9066 = fmul fast float %9063, %8836
  %9067 = fmul fast float %9064, %8836
  %9068 = call float @dx.op.dot3.f32(i32 55, float %9059, float %9060, float %9061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9069 = call float @dx.op.dot3.f32(i32 55, float %9065, float %9066, float %9067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9070 = select i1 %281, float %9068, float %9059
  %9071 = select i1 %281, float %9068, float %9060
  %9072 = select i1 %281, float 1.000000e+00, float %9061
  %9073 = select i1 %281, float %9069, float %9065
  %9074 = select i1 %281, float 0.000000e+00, float %9066
  %9075 = select i1 %281, float 0.000000e+00, float %9067
  %9076 = fmul fast float %9070, %8849
  %9077 = fmul fast float %9071, %8850
  %9078 = fmul fast float %9072, %8851
  %9079 = fadd fast float %9076, %9073
  %9080 = fadd fast float %9077, %9074
  %9081 = fadd fast float %9075, %9078
  %9082 = fmul fast float %9070, %8827
  %9083 = fmul fast float %9071, %8828
  %9084 = fmul fast float %9072, %8829
  %9085 = fmul fast float %158, %8861
  %9086 = fmul fast float %160, %8862
  %9087 = fsub fast float 1.000000e+00, %9085
  %9088 = fsub fast float 1.000000e+00, %9086
  %9089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9090 = extractvalue %dx.types.CBufRet.f32 %9089, 0
  %9091 = extractvalue %dx.types.CBufRet.f32 %9089, 1
  %9092 = extractvalue %dx.types.CBufRet.f32 %9089, 2
  %9093 = fmul fast float %9087, %9090
  %9094 = fmul fast float %9087, %9091
  %9095 = fmul fast float %9087, %9092
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9098 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9099 = extractvalue %dx.types.CBufRet.f32 %9096, 2
  %9100 = fmul fast float %9088, %9097
  %9101 = fmul fast float %9088, %9098
  %9102 = fmul fast float %9088, %9099
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 0
  %9105 = extractvalue %dx.types.CBufRet.f32 %9103, 1
  %9106 = extractvalue %dx.types.CBufRet.f32 %9103, 2
  %9107 = fadd fast float %9100, %9104
  %9108 = fadd fast float %9107, %9093
  %9109 = fadd fast float %9101, %9105
  %9110 = fadd fast float %9109, %9094
  %9111 = fadd fast float %9102, %9106
  %9112 = fadd fast float %9111, %9095
  %9113 = fmul fast float %9108, %244
  %9114 = fmul fast float %9110, %244
  %9115 = fmul fast float %9112, %244
  br label %9116

; <label>:9116                                    ; preds = %9058, %8826
  %9117 = phi float [ %9113, %9058 ], [ %209, %8826 ]
  %9118 = phi float [ %9114, %9058 ], [ %210, %8826 ]
  %9119 = phi float [ %9115, %9058 ], [ %211, %8826 ]
  %9120 = phi float [ %244, %9058 ], [ %113, %8826 ]
  %9121 = phi float [ %9079, %9058 ], [ %8849, %8826 ]
  %9122 = phi float [ %9080, %9058 ], [ %8850, %8826 ]
  %9123 = phi float [ %9081, %9058 ], [ %8851, %8826 ]
  %9124 = phi float [ %9082, %9058 ], [ %8827, %8826 ]
  %9125 = phi float [ %9083, %9058 ], [ %8828, %8826 ]
  %9126 = phi float [ %9084, %9058 ], [ %8829, %8826 ]
  %9127 = phi float [ %9059, %9058 ], [ 1.000000e+00, %8826 ]
  br i1 %8858, label %10282, label %9128

; <label>:9128                                    ; preds = %9116
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 0
  %9131 = extractvalue %dx.types.CBufRet.f32 %9129, 1
  %9132 = extractvalue %dx.types.CBufRet.f32 %9129, 2
  %9133 = extractvalue %dx.types.CBufRet.f32 %9129, 3
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 0
  %9136 = extractvalue %dx.types.CBufRet.f32 %9134, 1
  %9137 = extractvalue %dx.types.CBufRet.f32 %9134, 2
  %9138 = extractvalue %dx.types.CBufRet.f32 %9134, 3
  %9139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9140 = extractvalue %dx.types.CBufRet.f32 %9139, 0
  %9141 = extractvalue %dx.types.CBufRet.f32 %9139, 1
  %9142 = extractvalue %dx.types.CBufRet.f32 %9139, 2
  %9143 = extractvalue %dx.types.CBufRet.f32 %9139, 3
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 0
  %9146 = extractvalue %dx.types.CBufRet.f32 %9144, 1
  %9147 = extractvalue %dx.types.CBufRet.f32 %9144, 2
  %9148 = extractvalue %dx.types.CBufRet.f32 %9144, 3
  %9149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9150 = extractvalue %dx.types.CBufRet.f32 %9149, 3
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 3
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9154 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9155 = extractvalue %dx.types.CBufRet.f32 %9151, 2
  %9156 = fcmp fast olt float %9155, -5.000000e-01
  %9157 = call float @dx.op.dot3.f32(i32 55, float %9117, float %9118, float %9119, float %9117, float %9118, float %9119)  ; Dot3(ax,ay,az,bx,by,bz)
  %9158 = call float @dx.op.unary.f32(i32 25, float %9157)  ; Rsqrt(value)
  %9159 = fmul fast float %9158, %9157
  %9160 = fmul fast float %9158, %9117
  %9161 = fmul fast float %9158, %9118
  %9162 = fmul fast float %9158, %9119
  %9163 = fadd fast float %9159, %9133
  %9164 = call float @dx.op.dot3.f32(i32 55, float %9160, float %9161, float %9162, float %9130, float %9131, float %9132)  ; Dot3(ax,ay,az,bx,by,bz)
  %9165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9166 = extractvalue %dx.types.CBufRet.i32 %9165, 1
  %9167 = and i32 %9166, 1
  %9168 = icmp ne i32 %9167, 0
  %9169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.f32 %9169, 2
  %9171 = fcmp fast ogt float %9170, 0.000000e+00
  %9172 = and i1 %9168, %9171
  br i1 %9172, label %9173, label %9579, !dx.controlflow.hints !141

; <label>:9173                                    ; preds = %9128
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 3
  %9176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9176, 2
  %9178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.f32 %9178, 2
  %9180 = fsub fast float %9177, %9179
  %9181 = and i32 %9166, 2
  %9182 = extractvalue %dx.types.CBufRet.i32 %9165, 0
  %9183 = call i32 @dx.op.binary.i32(i32 40, i32 %9182, i32 3)  ; UMin(a,b)
  %9184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9185 = extractvalue %dx.types.CBufRet.f32 %9184, 0
  %9186 = extractvalue %dx.types.CBufRet.f32 %9184, 1
  %9187 = extractvalue %dx.types.CBufRet.f32 %9178, 0
  %9188 = extractvalue %dx.types.CBufRet.f32 %9178, 1
  %9189 = fsub fast float %9185, %9187
  %9190 = fsub fast float %9186, %9188
  %9191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9192 = extractvalue %dx.types.CBufRet.f32 %9191, 0
  %9193 = fcmp fast ogt float %9192, 0.000000e+00
  %9194 = fsub fast float -0.000000e+00, %9189
  %9195 = fsub fast float -0.000000e+00, %9190
  %9196 = call float @dx.op.dot2.f32(i32 54, float %9160, float %9161, float %9160, float %9161)  ; Dot2(ax,ay,bx,by)
  %9197 = call float @dx.op.dot2.f32(i32 54, float %9160, float %9161, float %9194, float %9195)  ; Dot2(ax,ay,bx,by)
  %9198 = fmul fast float %9197, 2.000000e+00
  %9199 = call float @dx.op.dot2.f32(i32 54, float %9194, float %9195, float %9194, float %9195)  ; Dot2(ax,ay,bx,by)
  %9200 = fmul fast float %9192, %9192
  %9201 = fsub fast float %9199, %9200
  %9202 = fmul fast float %9198, %9198
  %9203 = fmul fast float %9196, 4.000000e+00
  %9204 = fmul fast float %9203, %9201
  %9205 = fsub fast float %9202, %9204
  %9206 = fcmp fast ogt float %9205, 0.000000e+00
  br i1 %9206, label %9207, label %9222

; <label>:9207                                    ; preds = %9173
  %9208 = fcmp fast ogt float %9198, 0.000000e+00
  %9209 = call float @dx.op.unary.f32(i32 24, float %9205)  ; Sqrt(value)
  %9210 = fsub fast float -0.000000e+00, %9209
  %9211 = select i1 %9208, float %9209, float %9210
  %9212 = fadd fast float %9211, %9198
  %9213 = fmul float %9212, -5.000000e-01
  %9214 = fdiv fast float %9213, %9196
  %9215 = call float @dx.op.binary.f32(i32 35, float %9214, float 0.000000e+00)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9159, float %9215)  ; FMin(a,b)
  %9217 = fdiv fast float %9201, %9213
  %9218 = call float @dx.op.binary.f32(i32 35, float %9217, float 0.000000e+00)  ; FMax(a,b)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9159, float %9218)  ; FMin(a,b)
  %9220 = call float @dx.op.binary.f32(i32 36, float %9216, float %9219)  ; FMin(a,b)
  %9221 = call float @dx.op.binary.f32(i32 35, float %9216, float %9219)  ; FMax(a,b)
  br label %9222

; <label>:9222                                    ; preds = %9207, %9173
  %9223 = phi float [ %9221, %9207 ], [ -1.000000e+00, %9173 ]
  %9224 = phi float [ %9220, %9207 ], [ -1.000000e+00, %9173 ]
  %9225 = phi i1 [ true, %9207 ], [ false, %9173 ]
  %9226 = and i1 %9193, %9225
  br i1 %9226, label %9227, label %9229

; <label>:9227                                    ; preds = %9222
  %9228 = fcmp fast oeq float %9224, %9223
  br i1 %9228, label %9532, label %9230

; <label>:9229                                    ; preds = %9222
  br i1 %9193, label %9532, label %9230

; <label>:9230                                    ; preds = %9229, %9227
  %9231 = phi float [ %9159, %9229 ], [ %9223, %9227 ]
  %9232 = phi float [ 0.000000e+00, %9229 ], [ %9224, %9227 ]
  %9233 = icmp ne i32 %9181, 0
  %9234 = fmul fast float %9231, %9162
  %9235 = fadd fast float %9234, %9175
  %9236 = fmul fast float %9235, %9231
  %9237 = select i1 %9233, float 0.000000e+00, float %9236
  %9238 = fcmp fast oeq float %9162, 0.000000e+00
  %9239 = fdiv fast float %9180, %9162
  %9240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9239)  ; FMax(a,b)
  %9241 = select i1 %9238, float %9231, float %9240
  %9242 = call float @dx.op.binary.f32(i32 36, float %9231, float %9241)  ; FMin(a,b)
  %9243 = fcmp fast ogt float %9162, 0.000000e+00
  %9244 = fcmp fast olt float %9180, 0.000000e+00
  br i1 %9243, label %9245, label %9302

; <label>:9245                                    ; preds = %9230
  %9246 = icmp eq i32 %9181, 0
  br i1 %9244, label %9247, label %9291

; <label>:9247                                    ; preds = %9245
  %9248 = select i1 %9246, float %9231, float 0.000000e+00
  %9249 = fsub fast float -0.000000e+00, %9248
  %9250 = call float @dx.op.unary.f32(i32 6, float %9249)  ; FAbs(value)
  %9251 = fmul fast float %9248, %9162
  %9252 = fadd fast float %9251, %9175
  %9253 = fmul fast float %9250, %9252
  %9254 = fsub fast float %9237, %9253
  %9255 = fsub fast float %9231, %9250
  %9256 = select i1 %9246, float %9255, float 0.000000e+00
  %9257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9257, 0
  %9259 = extractvalue %dx.types.CBufRet.f32 %9257, 1
  %9260 = extractvalue %dx.types.CBufRet.f32 %9257, 2
  %9261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9262 = extractvalue %dx.types.CBufRet.f32 %9261, 0
  %9263 = extractvalue %dx.types.CBufRet.f32 %9261, 1
  %9264 = extractvalue %dx.types.CBufRet.f32 %9261, 2
  %9265 = extractvalue %dx.types.CBufRet.f32 %9261, 3
  %9266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9266, 3
  %9268 = call float @dx.op.binary.f32(i32 36, float %9254, float %9267)  ; FMin(a,b)
  %9269 = fmul fast float %9265, %9256
  %9270 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9271 = fsub fast float %9262, %9258
  %9272 = fsub fast float %9263, %9259
  %9273 = fsub fast float %9264, %9260
  %9274 = fmul fast float %9270, %9271
  %9275 = fmul fast float %9270, %9272
  %9276 = fmul fast float %9270, %9273
  %9277 = fadd fast float %9274, %9258
  %9278 = fadd fast float %9275, %9259
  %9279 = fadd fast float %9276, %9260
  %9280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9281 = extractvalue %dx.types.CBufRet.f32 %9280, 0
  %9282 = extractvalue %dx.types.CBufRet.f32 %9280, 1
  %9283 = fadd fast float %9282, %9281
  %9284 = call float @dx.op.unary.f32(i32 7, float %9283)  ; Saturate(value)
  %9285 = extractvalue %dx.types.CBufRet.f32 %9280, 2
  %9286 = extractvalue %dx.types.CBufRet.f32 %9280, 3
  %9287 = fadd fast float %9286, %9285
  %9288 = call float @dx.op.unary.f32(i32 7, float %9287)  ; Saturate(value)
  %9289 = fmul fast float %9284, %9268
  %9290 = fmul fast float %9289, %9288
  br label %9532

; <label>:9291                                    ; preds = %9245
  br i1 %9246, label %9292, label %9313

; <label>:9292                                    ; preds = %9291
  %9293 = call float @dx.op.binary.f32(i32 36, float %9242, float %9232)  ; FMin(a,b)
  %9294 = fsub fast float %9242, %9293
  %9295 = fsub fast float %9294, %9231
  %9296 = call float @dx.op.unary.f32(i32 6, float %9295)  ; FAbs(value)
  %9297 = fadd fast float %9294, %9231
  %9298 = fmul fast float %9297, %9162
  %9299 = fadd fast float %9298, %9175
  %9300 = fmul fast float %9299, %9296
  %9301 = fsub fast float %9237, %9300
  br label %9313

; <label>:9302                                    ; preds = %9230
  br i1 %9244, label %9303, label %9313

; <label>:9303                                    ; preds = %9302
  %9304 = call float @dx.op.binary.f32(i32 35, float %9232, float %9242)  ; FMax(a,b)
  %9305 = icmp eq i32 %9181, 0
  %9306 = select i1 %9305, float %9242, float 0.000000e+00
  %9307 = fsub fast float -0.000000e+00, %9306
  %9308 = call float @dx.op.unary.f32(i32 6, float %9307)  ; FAbs(value)
  %9309 = fmul fast float %9306, %9162
  %9310 = fadd fast float %9309, %9175
  %9311 = fmul fast float %9308, %9310
  %9312 = fsub fast float %9237, %9311
  br label %9313

; <label>:9313                                    ; preds = %9303, %9302, %9292, %9291
  %9314 = phi float [ %9232, %9291 ], [ %9232, %9292 ], [ %9304, %9303 ], [ %9232, %9302 ]
  %9315 = phi float [ 0.000000e+00, %9291 ], [ %9296, %9292 ], [ %9308, %9303 ], [ 0.000000e+00, %9302 ]
  %9316 = phi float [ %9237, %9291 ], [ %9301, %9292 ], [ %9312, %9303 ], [ %9237, %9302 ]
  %9317 = phi float [ %9242, %9291 ], [ %9242, %9292 ], [ %9231, %9303 ], [ %9231, %9302 ]
  %9318 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 0
  store float -1.000000e+00, float* %9318, align 4, !tbaa !127, !noalias !142
  %9319 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 1
  store float -1.000000e+00, float* %9319, align 4, !tbaa !127, !noalias !142
  %9320 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 2
  store float -1.000000e+00, float* %9320, align 4, !tbaa !127, !noalias !142
  %9321 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 0
  store float -1.000000e+00, float* %9321, align 4, !tbaa !127, !noalias !142
  %9322 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 1
  store float -1.000000e+00, float* %9322, align 4, !tbaa !127, !noalias !142
  %9323 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 2
  store float -1.000000e+00, float* %9323, align 4, !tbaa !127, !noalias !142
  %9324 = icmp sgt i32 %9183, 0
  br i1 %9324, label %9325, label %9386

; <label>:9325                                    ; preds = %9313
  br label %9326

; <label>:9326                                    ; preds = %9375, %9325
  %9327 = phi i32 [ %9376, %9375 ], [ 0, %9325 ]
  %9328 = phi i32 [ %9377, %9375 ], [ 0, %9325 ]
  %9329 = add nuw i32 %9328, 171
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9329)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 0
  %9332 = extractvalue %dx.types.CBufRet.f32 %9330, 1
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 0
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9336 = fsub fast float %9331, %9334
  %9337 = fsub fast float %9332, %9335
  %9338 = extractvalue %dx.types.CBufRet.f32 %9330, 2
  %9339 = fsub fast float -0.000000e+00, %9336
  %9340 = fsub fast float -0.000000e+00, %9337
  %9341 = call float @dx.op.dot2.f32(i32 54, float %9160, float %9161, float %9339, float %9340)  ; Dot2(ax,ay,bx,by)
  %9342 = fmul fast float %9341, 2.000000e+00
  %9343 = call float @dx.op.dot2.f32(i32 54, float %9339, float %9340, float %9339, float %9340)  ; Dot2(ax,ay,bx,by)
  %9344 = fmul fast float %9338, %9338
  %9345 = fsub fast float %9343, %9344
  %9346 = fmul fast float %9342, %9342
  %9347 = fmul fast float %9203, %9345
  %9348 = fsub fast float %9346, %9347
  %9349 = fcmp fast ogt float %9348, 0.000000e+00
  br i1 %9349, label %9350, label %9365

; <label>:9350                                    ; preds = %9326
  %9351 = fcmp fast ogt float %9342, 0.000000e+00
  %9352 = call float @dx.op.unary.f32(i32 24, float %9348)  ; Sqrt(value)
  %9353 = fsub fast float -0.000000e+00, %9352
  %9354 = select i1 %9351, float %9352, float %9353
  %9355 = fadd fast float %9354, %9342
  %9356 = fmul float %9355, -5.000000e-01
  %9357 = fdiv fast float %9356, %9196
  %9358 = call float @dx.op.binary.f32(i32 35, float %9357, float 0.000000e+00)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9231, float %9358)  ; FMin(a,b)
  %9360 = fdiv fast float %9345, %9356
  %9361 = call float @dx.op.binary.f32(i32 35, float %9360, float 0.000000e+00)  ; FMax(a,b)
  %9362 = call float @dx.op.binary.f32(i32 36, float %9231, float %9361)  ; FMin(a,b)
  %9363 = call float @dx.op.binary.f32(i32 36, float %9359, float %9362)  ; FMin(a,b)
  %9364 = call float @dx.op.binary.f32(i32 35, float %9359, float %9362)  ; FMax(a,b)
  br label %9365

; <label>:9365                                    ; preds = %9350, %9326
  %9366 = phi float [ %9364, %9350 ], [ -1.000000e+00, %9326 ]
  %9367 = phi float [ %9363, %9350 ], [ -1.000000e+00, %9326 ]
  %9368 = phi i1 [ true, %9350 ], [ false, %9326 ]
  br i1 %9368, label %9369, label %9375

; <label>:9369                                    ; preds = %9365
  %9370 = call float @dx.op.binary.f32(i32 35, float %9314, float %9367)  ; FMax(a,b)
  %9371 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9328
  store float %9370, float* %9371, align 4, !tbaa !127, !noalias !142
  %9372 = call float @dx.op.binary.f32(i32 35, float %9314, float %9366)  ; FMax(a,b)
  %9373 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 %9328
  store float %9372, float* %9373, align 4, !tbaa !127, !noalias !142
  %9374 = add nsw i32 %9327, 1
  br label %9375

; <label>:9375                                    ; preds = %9369, %9365
  %9376 = phi i32 [ %9374, %9369 ], [ %9327, %9365 ]
  %9377 = add nuw nsw i32 %9328, 1
  %9378 = icmp eq i32 %9377, %9183
  br i1 %9378, label %9379, label %9326

; <label>:9379                                    ; preds = %9375
  %9380 = load float, float* %9320, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %9381 = load float, float* %9319, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  %9382 = load float, float* %9318, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  %9383 = load float, float* %9323, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %9384 = load float, float* %9322, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  %9385 = load float, float* %9321, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  br label %9386

; <label>:9386                                    ; preds = %9379, %9313
  %9387 = phi float [ -1.000000e+00, %9313 ], [ %9385, %9379 ]
  %9388 = phi float [ -1.000000e+00, %9313 ], [ %9384, %9379 ]
  %9389 = phi float [ -1.000000e+00, %9313 ], [ %9383, %9379 ]
  %9390 = phi float [ -1.000000e+00, %9313 ], [ %9382, %9379 ]
  %9391 = phi float [ -1.000000e+00, %9313 ], [ %9381, %9379 ]
  %9392 = phi float [ -1.000000e+00, %9313 ], [ %9380, %9379 ]
  %9393 = phi i32 [ 0, %9313 ], [ %9376, %9379 ]
  %9394 = call float @dx.op.binary.f32(i32 36, float %9391, float %9392)  ; FMin(a,b)
  %9395 = call float @dx.op.binary.f32(i32 36, float %9390, float %9394)  ; FMin(a,b)
  %9396 = call float @dx.op.binary.f32(i32 35, float %9390, float %9391)  ; FMax(a,b)
  %9397 = call float @dx.op.binary.f32(i32 36, float %9396, float %9392)  ; FMin(a,b)
  %9398 = call float @dx.op.binary.f32(i32 36, float %9390, float %9391)  ; FMin(a,b)
  %9399 = call float @dx.op.binary.f32(i32 35, float %9398, float %9397)  ; FMax(a,b)
  %9400 = call float @dx.op.binary.f32(i32 35, float %9391, float %9392)  ; FMax(a,b)
  %9401 = call float @dx.op.binary.f32(i32 35, float %9390, float %9400)  ; FMax(a,b)
  store float %9395, float* %9318, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  store float %9399, float* %9319, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  store float %9401, float* %9320, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %9402 = call float @dx.op.binary.f32(i32 36, float %9388, float %9389)  ; FMin(a,b)
  %9403 = call float @dx.op.binary.f32(i32 36, float %9387, float %9402)  ; FMin(a,b)
  %9404 = call float @dx.op.binary.f32(i32 35, float %9387, float %9388)  ; FMax(a,b)
  %9405 = call float @dx.op.binary.f32(i32 36, float %9404, float %9389)  ; FMin(a,b)
  %9406 = call float @dx.op.binary.f32(i32 36, float %9387, float %9388)  ; FMin(a,b)
  %9407 = call float @dx.op.binary.f32(i32 35, float %9406, float %9405)  ; FMax(a,b)
  %9408 = call float @dx.op.binary.f32(i32 35, float %9388, float %9389)  ; FMax(a,b)
  %9409 = call float @dx.op.binary.f32(i32 35, float %9387, float %9408)  ; FMax(a,b)
  store float %9403, float* %9321, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  store float %9407, float* %9322, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  store float %9409, float* %9323, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %9410 = sub nsw i32 3, %9393
  %9411 = icmp sgt i32 %9410, 2
  br i1 %9411, label %9412, label %9450

; <label>:9412                                    ; preds = %9386
  %9413 = icmp eq i32 %9181, 0
  %9414 = fsub fast float %9231, %9315
  %9415 = select i1 %9413, float %9414, float %9315
  %9416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.f32 %9416, 0
  %9418 = extractvalue %dx.types.CBufRet.f32 %9416, 1
  %9419 = extractvalue %dx.types.CBufRet.f32 %9416, 2
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 0
  %9422 = extractvalue %dx.types.CBufRet.f32 %9420, 1
  %9423 = extractvalue %dx.types.CBufRet.f32 %9420, 2
  %9424 = extractvalue %dx.types.CBufRet.f32 %9420, 3
  %9425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.f32 %9425, 3
  %9427 = call float @dx.op.binary.f32(i32 36, float %9316, float %9426)  ; FMin(a,b)
  %9428 = fmul fast float %9424, %9415
  %9429 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9430 = fsub fast float %9421, %9417
  %9431 = fsub fast float %9422, %9418
  %9432 = fsub fast float %9423, %9419
  %9433 = fmul fast float %9429, %9430
  %9434 = fmul fast float %9429, %9431
  %9435 = fmul fast float %9429, %9432
  %9436 = fadd fast float %9433, %9417
  %9437 = fadd fast float %9434, %9418
  %9438 = fadd fast float %9435, %9419
  %9439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9440 = extractvalue %dx.types.CBufRet.f32 %9439, 0
  %9441 = extractvalue %dx.types.CBufRet.f32 %9439, 1
  %9442 = fadd fast float %9441, %9440
  %9443 = call float @dx.op.unary.f32(i32 7, float %9442)  ; Saturate(value)
  %9444 = extractvalue %dx.types.CBufRet.f32 %9439, 2
  %9445 = extractvalue %dx.types.CBufRet.f32 %9439, 3
  %9446 = fadd fast float %9445, %9444
  %9447 = call float @dx.op.unary.f32(i32 7, float %9446)  ; Saturate(value)
  %9448 = fmul fast float %9443, %9427
  %9449 = fmul fast float %9448, %9447
  br label %9532

; <label>:9450                                    ; preds = %9386
  %9451 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9410
  %9452 = load float, float* %9451, align 4, !tbaa !127, !noalias !142
  %9453 = fcmp fast olt float %9452, %9317
  %9454 = icmp sgt i32 %9393, 0
  %9455 = and i1 %9454, %9453
  br i1 %9455, label %9456, label %9493

; <label>:9456                                    ; preds = %9450
  br label %9457

; <label>:9457                                    ; preds = %9486, %9456
  %9458 = phi float [ %9487, %9486 ], [ %9315, %9456 ]
  %9459 = phi float [ %9488, %9486 ], [ %9316, %9456 ]
  %9460 = phi float [ %9468, %9486 ], [ %9452, %9456 ]
  %9461 = phi i32 [ %9465, %9486 ], [ %9410, %9456 ]
  %9462 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 %9461
  %9463 = load float, float* %9462, align 4, !tbaa !127, !noalias !142
  %9464 = icmp slt i32 %9461, 2
  %9465 = add nsw i32 %9461, 1
  %9466 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9465
  %9467 = load float, float* %9466, align 4, !tbaa !127, !noalias !142
  %9468 = select i1 %9464, float %9467, float %9231
  %9469 = call float @dx.op.binary.f32(i32 36, float %9468, float %9463)  ; FMin(a,b)
  %9470 = call float @dx.op.binary.f32(i32 36, float %9317, float %9469)  ; FMin(a,b)
  %9471 = icmp eq i32 %9181, 0
  %9472 = fadd fast float %9470, %9460
  %9473 = fmul fast float %9472, %9162
  %9474 = fadd fast float %9473, %9175
  br i1 %9471, label %9480, label %9475

; <label>:9475                                    ; preds = %9457
  %9476 = fsub fast float %9470, %9460
  %9477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9476)  ; FMax(a,b)
  %9478 = fmul fast float %9477, %9474
  %9479 = fadd fast float %9478, %9459
  br label %9486

; <label>:9480                                    ; preds = %9457
  %9481 = fsub fast float %9460, %9470
  %9482 = call float @dx.op.unary.f32(i32 6, float %9481)  ; FAbs(value)
  %9483 = fadd fast float %9482, %9458
  %9484 = fmul fast float %9482, %9474
  %9485 = fsub fast float %9459, %9484
  br label %9486

; <label>:9486                                    ; preds = %9480, %9475
  %9487 = phi float [ %9477, %9475 ], [ %9483, %9480 ]
  %9488 = phi float [ %9479, %9475 ], [ %9485, %9480 ]
  %9489 = fcmp fast olt float %9468, %9317
  %9490 = icmp slt i32 %9465, 3
  %9491 = and i1 %9490, %9489
  br i1 %9491, label %9457, label %9492

; <label>:9492                                    ; preds = %9486
  br label %9493

; <label>:9493                                    ; preds = %9492, %9450
  %9494 = phi float [ %9315, %9450 ], [ %9487, %9492 ]
  %9495 = phi float [ %9316, %9450 ], [ %9488, %9492 ]
  %9496 = fsub fast float %9231, %9494
  %9497 = select i1 %9233, float %9494, float %9496
  %9498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.f32 %9498, 0
  %9500 = extractvalue %dx.types.CBufRet.f32 %9498, 1
  %9501 = extractvalue %dx.types.CBufRet.f32 %9498, 2
  %9502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.f32 %9502, 0
  %9504 = extractvalue %dx.types.CBufRet.f32 %9502, 1
  %9505 = extractvalue %dx.types.CBufRet.f32 %9502, 2
  %9506 = extractvalue %dx.types.CBufRet.f32 %9502, 3
  %9507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9508 = extractvalue %dx.types.CBufRet.f32 %9507, 3
  %9509 = call float @dx.op.binary.f32(i32 36, float %9495, float %9508)  ; FMin(a,b)
  %9510 = fmul fast float %9506, %9497
  %9511 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9512 = fsub fast float %9503, %9499
  %9513 = fsub fast float %9504, %9500
  %9514 = fsub fast float %9505, %9501
  %9515 = fmul fast float %9511, %9512
  %9516 = fmul fast float %9511, %9513
  %9517 = fmul fast float %9511, %9514
  %9518 = fadd fast float %9515, %9499
  %9519 = fadd fast float %9516, %9500
  %9520 = fadd fast float %9517, %9501
  %9521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9522 = extractvalue %dx.types.CBufRet.f32 %9521, 0
  %9523 = extractvalue %dx.types.CBufRet.f32 %9521, 1
  %9524 = fadd fast float %9523, %9522
  %9525 = call float @dx.op.unary.f32(i32 7, float %9524)  ; Saturate(value)
  %9526 = extractvalue %dx.types.CBufRet.f32 %9521, 2
  %9527 = extractvalue %dx.types.CBufRet.f32 %9521, 3
  %9528 = fadd fast float %9527, %9526
  %9529 = call float @dx.op.unary.f32(i32 7, float %9528)  ; Saturate(value)
  %9530 = fmul fast float %9525, %9509
  %9531 = fmul fast float %9530, %9529
  br label %9532

; <label>:9532                                    ; preds = %9493, %9412, %9247, %9229, %9227
  %9533 = phi float [ %9256, %9247 ], [ %9415, %9412 ], [ %9497, %9493 ], [ 0.000000e+00, %9227 ], [ 0.000000e+00, %9229 ]
  %9534 = phi float [ %9290, %9247 ], [ %9449, %9412 ], [ %9531, %9493 ], [ 0.000000e+00, %9227 ], [ 0.000000e+00, %9229 ]
  %9535 = phi float [ %9277, %9247 ], [ %9436, %9412 ], [ %9518, %9493 ], [ 0.000000e+00, %9227 ], [ 0.000000e+00, %9229 ]
  %9536 = phi float [ %9278, %9247 ], [ %9437, %9412 ], [ %9519, %9493 ], [ 0.000000e+00, %9227 ], [ 0.000000e+00, %9229 ]
  %9537 = phi float [ %9279, %9247 ], [ %9438, %9412 ], [ %9520, %9493 ], [ 0.000000e+00, %9227 ], [ 0.000000e+00, %9229 ]
  %9538 = fmul fast float %9170, %9534
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 2
  %9541 = fsub fast float %9177, %9540
  %9542 = fcmp fast olt float %9538, -2.000000e+01
  %9543 = call float @dx.op.unary.f32(i32 21, float %9538)  ; Exp(value)
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 2
  %9546 = extractvalue %dx.types.CBufRet.f32 %9544, 3
  %9547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9548 = extractvalue %dx.types.CBufRet.f32 %9547, 2
  %9549 = fmul fast float %9546, %9541
  %9550 = call float @dx.op.unary.f32(i32 7, float %9549)  ; Saturate(value)
  %9551 = fsub fast float 1.000000e+00, %9550
  %9552 = fmul fast float %9162, 5.000000e-01
  %9553 = fadd fast float %9552, 5.000000e-01
  %9554 = call float @dx.op.unary.f32(i32 7, float %9553)  ; Saturate(value)
  %9555 = fsub fast float 1.000000e+00, %9554
  %9556 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9551)  ; FMax(a,b)
  %9557 = fdiv fast float %9555, %9556
  %9558 = fsub fast float %9541, %9119
  %9559 = call float @dx.op.unary.f32(i32 6, float %9558)  ; FAbs(value)
  %9560 = fmul fast float %9559, %9545
  %9561 = call float @dx.op.unary.f32(i32 7, float %9557)  ; Saturate(value)
  %9562 = fsub fast float 1.000000e+00, %9560
  %9563 = fmul fast float %9562, %9561
  %9564 = fadd fast float %9563, %9560
  %9565 = fmul fast float %9548, %9541
  %9566 = call float @dx.op.unary.f32(i32 7, float %9565)  ; Saturate(value)
  %9567 = fsub fast float 1.000000e+00, %9564
  %9568 = fmul fast float %9567, %9566
  %9569 = fadd fast float %9568, %9564
  %9570 = call float @dx.op.unary.f32(i32 7, float %9569)  ; Saturate(value)
  %9571 = fadd fast float %9543, -1.000000e+00
  %9572 = select i1 %9542, float -1.000000e+00, float %9571
  %9573 = fmul fast float %9570, %9572
  %9574 = fadd fast float %9573, 1.000000e+00
  %9575 = fsub fast float -0.000000e+00, %9573
  %9576 = fmul fast float %9535, %9575
  %9577 = fmul fast float %9536, %9575
  %9578 = fmul fast float %9537, %9575
  br label %9579

; <label>:9579                                    ; preds = %9532, %9128
  %9580 = phi float [ %9533, %9532 ], [ 0.000000e+00, %9128 ]
  %9581 = phi float [ %9574, %9532 ], [ 1.000000e+00, %9128 ]
  %9582 = phi float [ %9576, %9532 ], [ 0.000000e+00, %9128 ]
  %9583 = phi float [ %9577, %9532 ], [ 0.000000e+00, %9128 ]
  %9584 = phi float [ %9578, %9532 ], [ 0.000000e+00, %9128 ]
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 1
  %9587 = fsub fast float 1.000000e+00, %9581
  %9588 = fmul fast float %9587, %9163
  %9589 = fmul fast float %9588, %9586
  %9590 = fsub fast float %9163, %9589
  br i1 %9156, label %9591, label %9620, !dx.controlflow.hints !178

; <label>:9591                                    ; preds = %9579
  %9592 = fmul fast float %9164, %9153
  %9593 = fadd fast float %9592, %9154
  %9594 = call float @dx.op.unary.f32(i32 7, float %9593)  ; Saturate(value)
  %9595 = fmul fast float %9135, %9590
  %9596 = fsub fast float -0.000000e+00, %9595
  %9597 = fmul fast float %9136, %9590
  %9598 = fsub fast float -0.000000e+00, %9597
  %9599 = call float @dx.op.unary.f32(i32 21, float %9596)  ; Exp(value)
  %9600 = call float @dx.op.unary.f32(i32 21, float %9598)  ; Exp(value)
  %9601 = call float @dx.op.binary.f32(i32 35, float %9143, float %9599)  ; FMax(a,b)
  %9602 = call float @dx.op.binary.f32(i32 35, float %9143, float %9600)  ; FMax(a,b)
  %9603 = fsub fast float %9602, %9601
  %9604 = fmul fast float %9603, %9594
  %9605 = fadd fast float %9604, %9601
  %9606 = call float @dx.op.unary.f32(i32 7, float %9605)  ; Saturate(value)
  %9607 = fsub fast float %9140, %9145
  %9608 = fsub fast float %9141, %9146
  %9609 = fsub fast float %9142, %9147
  %9610 = fmul fast float %9594, %9607
  %9611 = fmul fast float %9594, %9608
  %9612 = fmul fast float %9594, %9609
  %9613 = fadd fast float %9610, %9145
  %9614 = fadd fast float %9611, %9146
  %9615 = fadd fast float %9612, %9147
  %9616 = fsub fast float 1.000000e+00, %9606
  %9617 = fmul fast float %9616, %9613
  %9618 = fmul fast float %9616, %9614
  %9619 = fmul fast float %9616, %9615
  br label %9679

; <label>:9620                                    ; preds = %9579
  %9621 = fmul fast float %9590, %9152
  %9622 = call float @dx.op.unary.f32(i32 7, float %9621)  ; Saturate(value)
  %9623 = fsub fast float 2.000000e+00, %9622
  %9624 = fmul fast float %9622, 9.921875e-01
  %9625 = fmul fast float %9624, %9623
  %9626 = fadd fast float %9625, 3.906250e-03
  %9627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %9626, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9628 = extractvalue %dx.types.ResRet.f32 %9627, 0
  %9629 = fsub fast float %9622, %9628
  %9630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9629)  ; FMax(a,b)
  %9631 = fmul fast float %9138, %9119
  %9632 = call float @dx.op.unary.f32(i32 6, float %9631)  ; FAbs(value)
  %9633 = fcmp fast ogt float %9632, 0x3EB0C6F7A0000000
  br i1 %9633, label %9634, label %9640, !dx.controlflow.hints !179

; <label>:9634                                    ; preds = %9620
  %9635 = fmul fast float %9631, 0xBFF7154760000000
  %9636 = call float @dx.op.unary.f32(i32 21, float %9635)  ; Exp(value)
  %9637 = fsub fast float 1.000000e+00, %9636
  %9638 = fdiv fast float %9637, %9631
  %9639 = fmul fast float %9638, %9148
  br label %9640

; <label>:9640                                    ; preds = %9634, %9620
  %9641 = phi float [ %9639, %9634 ], [ %9148, %9620 ]
  %9642 = fadd fast float %9641, %9150
  %9643 = fmul fast float %9642, %9630
  %9644 = fmul fast float %9135, %9643
  %9645 = fsub fast float -0.000000e+00, %9644
  %9646 = fmul fast float %9136, %9643
  %9647 = fsub fast float -0.000000e+00, %9646
  %9648 = fmul fast float %9137, %9643
  %9649 = fsub fast float -0.000000e+00, %9648
  %9650 = call float @dx.op.unary.f32(i32 21, float %9645)  ; Exp(value)
  %9651 = call float @dx.op.unary.f32(i32 21, float %9647)  ; Exp(value)
  %9652 = call float @dx.op.unary.f32(i32 21, float %9649)  ; Exp(value)
  %9653 = fmul fast float %9164, %9164
  %9654 = fadd fast float %9653, 1.000000e+00
  %9655 = fmul fast float %9654, 0x3FAE8EC8A0000000
  %9656 = fmul fast float %9655, %9145
  %9657 = fmul fast float %9655, %9146
  %9658 = fmul fast float %9655, %9147
  %9659 = fmul fast float %9164, %9143
  %9660 = fsub fast float 1.000000e+00, %9659
  %9661 = fmul fast float %9143, %9143
  %9662 = fsub fast float 1.000000e+00, %9661
  %9663 = fmul fast float %9662, 0x3FB45F3060000000
  %9664 = fmul fast float %9660, %9660
  %9665 = fdiv fast float 1.000000e+00, %9664
  %9666 = fmul fast float %9663, %9665
  %9667 = fmul fast float %9666, %9140
  %9668 = fmul fast float %9666, %9141
  %9669 = fmul fast float %9666, %9142
  %9670 = fadd fast float %9667, %9656
  %9671 = fadd fast float %9668, %9657
  %9672 = fadd fast float %9669, %9658
  %9673 = fsub fast float 1.000000e+00, %9650
  %9674 = fsub fast float 1.000000e+00, %9651
  %9675 = fsub fast float 1.000000e+00, %9652
  %9676 = fmul fast float %9670, %9673
  %9677 = fmul fast float %9671, %9674
  %9678 = fmul fast float %9672, %9675
  br label %9679

; <label>:9679                                    ; preds = %9640, %9591
  %9680 = phi float [ %9617, %9591 ], [ %9676, %9640 ]
  %9681 = phi float [ %9618, %9591 ], [ %9677, %9640 ]
  %9682 = phi float [ %9619, %9591 ], [ %9678, %9640 ]
  %9683 = phi float [ %9606, %9591 ], [ %9650, %9640 ]
  %9684 = phi float [ %9606, %9591 ], [ %9651, %9640 ]
  %9685 = phi float [ %9606, %9591 ], [ %9652, %9640 ]
  br i1 %9172, label %9686, label %9884, !dx.controlflow.hints !180

; <label>:9686                                    ; preds = %9679
  %9687 = extractvalue %dx.types.CBufRet.f32 %9585, 0
  %9688 = fmul fast float %9687, %9587
  %9689 = fsub fast float %9582, %9680
  %9690 = fsub fast float %9583, %9681
  %9691 = fsub fast float %9584, %9682
  %9692 = fmul fast float %9688, %9689
  %9693 = fmul fast float %9688, %9690
  %9694 = fmul fast float %9688, %9691
  %9695 = fadd fast float %9692, %9680
  %9696 = fadd fast float %9693, %9681
  %9697 = fadd fast float %9694, %9682
  %9698 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9683)  ; FMax(a,b)
  %9699 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9684)  ; FMax(a,b)
  %9700 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9685)  ; FMax(a,b)
  %9701 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9581)  ; FMax(a,b)
  %9702 = call float @dx.op.binary.f32(i32 35, float %9580, float %9590)  ; FMax(a,b)
  %9703 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9702)  ; FMax(a,b)
  %9704 = fdiv fast float %9580, %9703
  %9705 = call float @dx.op.unary.f32(i32 7, float %9704)  ; Saturate(value)
  %9706 = fdiv fast float %9590, %9703
  %9707 = call float @dx.op.unary.f32(i32 7, float %9706)  ; Saturate(value)
  %9708 = fcmp fast une float %9701, 1.000000e+00
  br i1 %9708, label %9709, label %9722, !dx.controlflow.hints !181

; <label>:9709                                    ; preds = %9686
  %9710 = call float @dx.op.unary.f32(i32 23, float %9701)  ; Log(value)
  %9711 = fmul fast float %9710, 0x3FE62E4300000000
  %9712 = fmul fast float %9582, %9711
  %9713 = fsub fast float -0.000000e+00, %9712
  %9714 = fmul fast float %9583, %9711
  %9715 = fsub fast float -0.000000e+00, %9714
  %9716 = fmul fast float %9584, %9711
  %9717 = fsub fast float -0.000000e+00, %9716
  %9718 = fsub fast float 1.000000e+00, %9701
  %9719 = fdiv fast float %9713, %9718
  %9720 = fdiv fast float %9715, %9718
  %9721 = fdiv fast float %9717, %9718
  br label %9722

; <label>:9722                                    ; preds = %9709, %9686
  %9723 = phi float [ %9719, %9709 ], [ %9582, %9686 ]
  %9724 = phi float [ %9720, %9709 ], [ %9583, %9686 ]
  %9725 = phi float [ %9721, %9709 ], [ %9584, %9686 ]
  %9726 = phi float [ %9711, %9709 ], [ 0.000000e+00, %9686 ]
  %9727 = fcmp fast une float %9698, 1.000000e+00
  br i1 %9727, label %9728, label %9735, !dx.controlflow.hints !182

; <label>:9728                                    ; preds = %9722
  %9729 = call float @dx.op.unary.f32(i32 23, float %9698)  ; Log(value)
  %9730 = fmul fast float %9729, 0x3FE62E4300000000
  %9731 = fmul fast float %9695, %9730
  %9732 = fsub fast float -0.000000e+00, %9731
  %9733 = fsub fast float 1.000000e+00, %9698
  %9734 = fdiv fast float %9732, %9733
  br label %9735

; <label>:9735                                    ; preds = %9728, %9722
  %9736 = phi float [ %9734, %9728 ], [ %9695, %9722 ]
  %9737 = phi float [ %9730, %9728 ], [ 0.000000e+00, %9722 ]
  %9738 = fcmp fast une float %9699, 1.000000e+00
  br i1 %9738, label %9739, label %9746, !dx.controlflow.hints !182

; <label>:9739                                    ; preds = %9735
  %9740 = call float @dx.op.unary.f32(i32 23, float %9699)  ; Log(value)
  %9741 = fmul fast float %9740, 0x3FE62E4300000000
  %9742 = fmul fast float %9696, %9741
  %9743 = fsub fast float -0.000000e+00, %9742
  %9744 = fsub fast float 1.000000e+00, %9699
  %9745 = fdiv fast float %9743, %9744
  br label %9746

; <label>:9746                                    ; preds = %9739, %9735
  %9747 = phi float [ %9745, %9739 ], [ %9696, %9735 ]
  %9748 = phi float [ %9741, %9739 ], [ 0.000000e+00, %9735 ]
  %9749 = fcmp fast une float %9700, 1.000000e+00
  br i1 %9749, label %9750, label %9757, !dx.controlflow.hints !182

; <label>:9750                                    ; preds = %9746
  %9751 = call float @dx.op.unary.f32(i32 23, float %9700)  ; Log(value)
  %9752 = fmul fast float %9751, 0x3FE62E4300000000
  %9753 = fmul fast float %9697, %9752
  %9754 = fsub fast float -0.000000e+00, %9753
  %9755 = fsub fast float 1.000000e+00, %9700
  %9756 = fdiv fast float %9754, %9755
  br label %9757

; <label>:9757                                    ; preds = %9750, %9746
  %9758 = phi float [ %9756, %9750 ], [ %9697, %9746 ]
  %9759 = phi float [ %9752, %9750 ], [ 0.000000e+00, %9746 ]
  %9760 = fmul fast float %9723, %9707
  %9761 = fmul fast float %9724, %9707
  %9762 = fmul fast float %9725, %9707
  %9763 = fmul fast float %9726, %9707
  %9764 = fmul fast float %9736, %9705
  %9765 = fmul fast float %9747, %9705
  %9766 = fmul fast float %9758, %9705
  %9767 = fmul fast float %9737, %9705
  %9768 = fmul fast float %9748, %9705
  %9769 = fmul fast float %9759, %9705
  %9770 = fadd fast float %9764, %9760
  %9771 = fadd fast float %9765, %9761
  %9772 = fadd fast float %9766, %9762
  %9773 = fadd fast float %9767, %9763
  %9774 = fadd fast float %9768, %9763
  %9775 = fadd fast float %9769, %9763
  %9776 = fcmp fast une float %9773, 0.000000e+00
  br i1 %9776, label %9777, label %9784, !dx.controlflow.hints !183

; <label>:9777                                    ; preds = %9757
  %9778 = fmul fast float %9773, 0x3FF7154760000000
  %9779 = call float @dx.op.unary.f32(i32 21, float %9778)  ; Exp(value)
  %9780 = fsub fast float 1.000000e+00, %9779
  %9781 = fmul fast float %9770, %9780
  %9782 = fsub fast float -0.000000e+00, %9781
  %9783 = fdiv fast float %9782, %9773
  br label %9784

; <label>:9784                                    ; preds = %9777, %9757
  %9785 = phi float [ %9779, %9777 ], [ 1.000000e+00, %9757 ]
  %9786 = phi float [ %9783, %9777 ], [ %9770, %9757 ]
  %9787 = fcmp fast une float %9774, 0.000000e+00
  br i1 %9787, label %9788, label %9795, !dx.controlflow.hints !183

; <label>:9788                                    ; preds = %9784
  %9789 = fmul fast float %9774, 0x3FF7154760000000
  %9790 = call float @dx.op.unary.f32(i32 21, float %9789)  ; Exp(value)
  %9791 = fsub fast float 1.000000e+00, %9790
  %9792 = fmul fast float %9771, %9791
  %9793 = fsub fast float -0.000000e+00, %9792
  %9794 = fdiv fast float %9793, %9774
  br label %9795

; <label>:9795                                    ; preds = %9788, %9784
  %9796 = phi float [ %9790, %9788 ], [ 1.000000e+00, %9784 ]
  %9797 = phi float [ %9794, %9788 ], [ %9771, %9784 ]
  %9798 = fcmp fast une float %9775, 0.000000e+00
  br i1 %9798, label %9799, label %9806, !dx.controlflow.hints !183

; <label>:9799                                    ; preds = %9795
  %9800 = fmul fast float %9775, 0x3FF7154760000000
  %9801 = call float @dx.op.unary.f32(i32 21, float %9800)  ; Exp(value)
  %9802 = fsub fast float 1.000000e+00, %9801
  %9803 = fmul fast float %9772, %9802
  %9804 = fsub fast float -0.000000e+00, %9803
  %9805 = fdiv fast float %9804, %9775
  br label %9806

; <label>:9806                                    ; preds = %9799, %9795
  %9807 = phi float [ %9801, %9799 ], [ 1.000000e+00, %9795 ]
  %9808 = phi float [ %9805, %9799 ], [ %9772, %9795 ]
  %9809 = fcmp fast ogt float %9705, %9707
  br i1 %9809, label %9810, label %9830

; <label>:9810                                    ; preds = %9806
  %9811 = fsub fast float 1.000000e+00, %9707
  %9812 = fmul fast float %9723, %9811
  %9813 = fmul fast float %9724, %9811
  %9814 = fmul fast float %9725, %9811
  %9815 = fmul fast float %9726, %9811
  %9816 = fcmp fast une float %9815, 0.000000e+00
  br i1 %9816, label %9817, label %9868, !dx.controlflow.hints !184

; <label>:9817                                    ; preds = %9810
  %9818 = fmul fast float %9815, 0x3FF7154760000000
  %9819 = call float @dx.op.unary.f32(i32 21, float %9818)  ; Exp(value)
  %9820 = fsub fast float 1.000000e+00, %9819
  %9821 = fmul fast float %9812, %9820
  %9822 = fsub fast float -0.000000e+00, %9821
  %9823 = fmul fast float %9813, %9820
  %9824 = fsub fast float -0.000000e+00, %9823
  %9825 = fmul fast float %9814, %9820
  %9826 = fsub fast float -0.000000e+00, %9825
  %9827 = fdiv fast float %9822, %9815
  %9828 = fdiv fast float %9824, %9815
  %9829 = fdiv fast float %9826, %9815
  br label %9868

; <label>:9830                                    ; preds = %9806
  %9831 = fsub fast float 1.000000e+00, %9705
  %9832 = fmul fast float %9736, %9831
  %9833 = fmul fast float %9747, %9831
  %9834 = fmul fast float %9758, %9831
  %9835 = fmul fast float %9737, %9831
  %9836 = fmul fast float %9748, %9831
  %9837 = fmul fast float %9759, %9831
  %9838 = fcmp fast une float %9835, 0.000000e+00
  br i1 %9838, label %9839, label %9846, !dx.controlflow.hints !183

; <label>:9839                                    ; preds = %9830
  %9840 = fmul fast float %9835, 0x3FF7154760000000
  %9841 = call float @dx.op.unary.f32(i32 21, float %9840)  ; Exp(value)
  %9842 = fsub fast float 1.000000e+00, %9841
  %9843 = fmul fast float %9832, %9842
  %9844 = fsub fast float -0.000000e+00, %9843
  %9845 = fdiv fast float %9844, %9835
  br label %9846

; <label>:9846                                    ; preds = %9839, %9830
  %9847 = phi float [ %9845, %9839 ], [ %9832, %9830 ]
  %9848 = phi float [ %9841, %9839 ], [ 1.000000e+00, %9830 ]
  %9849 = fcmp fast une float %9836, 0.000000e+00
  br i1 %9849, label %9850, label %9857, !dx.controlflow.hints !183

; <label>:9850                                    ; preds = %9846
  %9851 = fmul fast float %9836, 0x3FF7154760000000
  %9852 = call float @dx.op.unary.f32(i32 21, float %9851)  ; Exp(value)
  %9853 = fsub fast float 1.000000e+00, %9852
  %9854 = fmul fast float %9833, %9853
  %9855 = fsub fast float -0.000000e+00, %9854
  %9856 = fdiv fast float %9855, %9836
  br label %9857

; <label>:9857                                    ; preds = %9850, %9846
  %9858 = phi float [ %9856, %9850 ], [ %9833, %9846 ]
  %9859 = phi float [ %9852, %9850 ], [ 1.000000e+00, %9846 ]
  %9860 = fcmp fast une float %9837, 0.000000e+00
  br i1 %9860, label %9861, label %9868, !dx.controlflow.hints !183

; <label>:9861                                    ; preds = %9857
  %9862 = fmul fast float %9837, 0x3FF7154760000000
  %9863 = call float @dx.op.unary.f32(i32 21, float %9862)  ; Exp(value)
  %9864 = fsub fast float 1.000000e+00, %9863
  %9865 = fmul fast float %9834, %9864
  %9866 = fsub fast float -0.000000e+00, %9865
  %9867 = fdiv fast float %9866, %9837
  br label %9868

; <label>:9868                                    ; preds = %9861, %9857, %9817, %9810
  %9869 = phi float [ %9867, %9861 ], [ %9829, %9817 ], [ %9814, %9810 ], [ %9834, %9857 ]
  %9870 = phi float [ %9858, %9861 ], [ %9828, %9817 ], [ %9813, %9810 ], [ %9858, %9857 ]
  %9871 = phi float [ %9847, %9861 ], [ %9827, %9817 ], [ %9812, %9810 ], [ %9847, %9857 ]
  %9872 = phi float [ %9863, %9861 ], [ %9819, %9817 ], [ 1.000000e+00, %9810 ], [ 1.000000e+00, %9857 ]
  %9873 = phi float [ %9859, %9861 ], [ %9819, %9817 ], [ 1.000000e+00, %9810 ], [ %9859, %9857 ]
  %9874 = phi float [ %9848, %9861 ], [ %9819, %9817 ], [ 1.000000e+00, %9810 ], [ %9848, %9857 ]
  %9875 = fmul fast float %9874, %9786
  %9876 = fmul fast float %9873, %9797
  %9877 = fmul fast float %9872, %9808
  %9878 = fadd fast float %9875, %9871
  %9879 = fadd fast float %9876, %9870
  %9880 = fadd fast float %9877, %9869
  %9881 = fmul fast float %9874, %9785
  %9882 = fmul fast float %9873, %9796
  %9883 = fmul fast float %9872, %9807
  br label %9884

; <label>:9884                                    ; preds = %9868, %9679
  %9885 = phi float [ %9883, %9868 ], [ %9685, %9679 ]
  %9886 = phi float [ %9882, %9868 ], [ %9684, %9679 ]
  %9887 = phi float [ %9881, %9868 ], [ %9683, %9679 ]
  %9888 = phi float [ %9880, %9868 ], [ %9682, %9679 ]
  %9889 = phi float [ %9879, %9868 ], [ %9681, %9679 ]
  %9890 = phi float [ %9878, %9868 ], [ %9680, %9679 ]
  %9891 = fmul fast float %9890, %8836
  %9892 = fmul fast float %9889, %8836
  %9893 = fmul fast float %9888, %8836
  %9894 = fmul fast float %9887, %9127
  %9895 = call float @dx.op.dot3.f32(i32 55, float %9887, float %9886, float %9885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9896 = call float @dx.op.dot3.f32(i32 55, float %9891, float %9892, float %9893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9897 = select i1 %281, float %9895, float %9887
  %9898 = select i1 %281, float %9895, float %9886
  %9899 = select i1 %281, float 1.000000e+00, float %9885
  %9900 = select i1 %281, float %9896, float %9891
  %9901 = select i1 %281, float 0.000000e+00, float %9892
  %9902 = select i1 %281, float 0.000000e+00, float %9893
  %9903 = fmul fast float %9897, %9121
  %9904 = fmul fast float %9898, %9122
  %9905 = fmul fast float %9899, %9123
  %9906 = fadd fast float %9903, %9900
  %9907 = fadd fast float %9904, %9901
  %9908 = fadd fast float %9902, %9905
  %9909 = fmul fast float %9897, %9124
  %9910 = fmul fast float %9898, %9125
  %9911 = fmul fast float %9899, %9126
  %9912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9913 = extractvalue %dx.types.CBufRet.i32 %9912, 0
  %9914 = icmp eq i32 %9913, 0
  br i1 %9914, label %10282, label %9915, !dx.controlflow.hints !185

; <label>:9915                                    ; preds = %9884
  %9916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9917 = extractvalue %dx.types.CBufRet.f32 %9916, 2
  %9918 = extractvalue %dx.types.CBufRet.f32 %9916, 3
  %9919 = fmul fast float %9917, %126
  %9920 = fmul fast float %9918, %127
  %9921 = fmul fast float %9919, 2.000000e+00
  %9922 = fmul fast float %9920, 2.000000e+00
  %9923 = fsub fast float 1.000000e+00, %9921
  %9924 = fsub fast float 1.000000e+00, %9922
  %9925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9926 = extractvalue %dx.types.CBufRet.f32 %9925, 0
  %9927 = extractvalue %dx.types.CBufRet.f32 %9925, 1
  %9928 = extractvalue %dx.types.CBufRet.f32 %9925, 2
  %9929 = fmul fast float %9923, %9926
  %9930 = fmul fast float %9923, %9927
  %9931 = fmul fast float %9923, %9928
  %9932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9933 = extractvalue %dx.types.CBufRet.f32 %9932, 0
  %9934 = extractvalue %dx.types.CBufRet.f32 %9932, 1
  %9935 = extractvalue %dx.types.CBufRet.f32 %9932, 2
  %9936 = fmul fast float %9924, %9933
  %9937 = fmul fast float %9924, %9934
  %9938 = fmul fast float %9924, %9935
  %9939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9940 = extractvalue %dx.types.CBufRet.f32 %9939, 0
  %9941 = extractvalue %dx.types.CBufRet.f32 %9939, 1
  %9942 = extractvalue %dx.types.CBufRet.f32 %9939, 2
  %9943 = fadd fast float %9936, %9940
  %9944 = fadd fast float %9943, %9929
  %9945 = fadd fast float %9937, %9941
  %9946 = fadd fast float %9945, %9930
  %9947 = fadd fast float %9938, %9942
  %9948 = fadd fast float %9947, %9931
  %9949 = fmul fast float %9944, %9120
  %9950 = fmul fast float %9946, %9120
  %9951 = fmul fast float %9948, %9120
  %9952 = fmul fast float %9949, %9949
  %9953 = fmul fast float %9950, %9950
  %9954 = fadd fast float %9952, %9953
  %9955 = fmul fast float %9951, %9951
  %9956 = fadd fast float %9954, %9955
  %9957 = call float @dx.op.unary.f32(i32 24, float %9956)  ; Sqrt(value)
  %9958 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %9959 = fsub fast float %9957, %9958
  %9960 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %9961 = fmul fast float %9959, %9960
  %9962 = call float @dx.op.unary.f32(i32 7, float %9961)  ; Saturate(value)
  %9963 = fadd fast float %9962, -5.000000e-01
  %9964 = fmul fast float %9963, 2.000000e+00
  %9965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9966 = extractvalue %dx.types.CBufRet.f32 %9965, 2
  %9967 = call float @dx.op.binary.f32(i32 36, float %9966, float %9964)  ; FMin(a,b)
  %9968 = fsub fast float -0.000000e+00, %9966
  %9969 = fcmp fast ogt float %9967, %9968
  br i1 %9969, label %9970, label %10282, !dx.controlflow.hints !186

; <label>:9970                                    ; preds = %9915
  %9971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9972 = extractvalue %dx.types.CBufRet.f32 %9971, 3
  %9973 = fcmp fast ogt float %9972, 0.000000e+00
  br i1 %9973, label %9974, label %10049, !dx.controlflow.hints !187

; <label>:9974                                    ; preds = %9970
  %9975 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9976 = extractvalue %dx.types.Dimensions %9975, 0
  %9977 = sitofp i32 %9976 to float
  %9978 = extractvalue %dx.types.Dimensions %9975, 1
  %9979 = sitofp i32 %9978 to float
  %9980 = fmul fast float %9919, %9977
  %9981 = fmul fast float %9920, %9979
  %9982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9983 = extractvalue %dx.types.CBufRet.f32 %9982, 1
  %9984 = fsub fast float -0.000000e+00, %9983
  %9985 = fptoui float %9984 to i32
  %9986 = fptoui float %9980 to i32
  %9987 = fptoui float %9981 to i32
  %9988 = and i32 %9985, 31
  %9989 = lshr i32 %9986, %9988
  %9990 = lshr i32 %9987, %9988
  %9991 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9985, i32 %9989, i32 %9990, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9992 = extractvalue %dx.types.ResRet.f32 %9991, 0
  %9993 = fcmp fast olt float %9992, -1.000000e+00
  %9994 = fcmp fast ogt float %9992, -1.000000e+00
  %9995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9996 = extractvalue %dx.types.CBufRet.f32 %9995, 1
  %9997 = select i1 %9994, float %9996, float 1.000000e+00
  %9998 = fadd fast float %9992, 1.000000e+00
  %9999 = fmul fast float %9997, %9998
  %10000 = call float @dx.op.unary.f32(i32 6, float %9999)  ; FAbs(value)
  %10001 = extractvalue %dx.types.CBufRet.f32 %9995, 3
  %10002 = fcmp fast oge float %10000, %10001
  %10003 = select i1 %10002, float 0x4197782600000000, float %10000
  %10004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10005 = extractvalue %dx.types.CBufRet.f32 %10004, 0
  %10006 = extractvalue %dx.types.CBufRet.f32 %10004, 1
  %10007 = extractvalue %dx.types.CBufRet.f32 %10004, 2
  %10008 = select i1 %9993, float %10005, float %9926
  %10009 = select i1 %9993, float %10006, float %9927
  %10010 = select i1 %9993, float %10007, float %9928
  %10011 = fmul fast float %10008, %9923
  %10012 = fmul fast float %10009, %9923
  %10013 = fmul fast float %10010, %9923
  %10014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10015 = extractvalue %dx.types.CBufRet.f32 %10014, 0
  %10016 = extractvalue %dx.types.CBufRet.f32 %10014, 1
  %10017 = extractvalue %dx.types.CBufRet.f32 %10014, 2
  %10018 = select i1 %9993, float %10015, float %9933
  %10019 = select i1 %9993, float %10016, float %9934
  %10020 = select i1 %9993, float %10017, float %9935
  %10021 = fmul fast float %10018, %9924
  %10022 = fmul fast float %10019, %9924
  %10023 = fmul fast float %10020, %9924
  %10024 = fadd fast float %10021, %10011
  %10025 = fadd fast float %10022, %10012
  %10026 = fadd fast float %10023, %10013
  %10027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10028 = extractvalue %dx.types.CBufRet.f32 %10027, 0
  %10029 = extractvalue %dx.types.CBufRet.f32 %10027, 1
  %10030 = extractvalue %dx.types.CBufRet.f32 %10027, 2
  %10031 = select i1 %9993, float %10028, float %9940
  %10032 = select i1 %9993, float %10029, float %9941
  %10033 = select i1 %9993, float %10030, float %9942
  %10034 = fadd fast float %10024, %10031
  %10035 = fadd fast float %10025, %10032
  %10036 = fadd fast float %10026, %10033
  %10037 = fmul fast float %10034, %10003
  %10038 = fmul fast float %10035, %10003
  %10039 = fmul fast float %10036, %10003
  %10040 = fmul fast float %10037, %10037
  %10041 = fmul fast float %10038, %10038
  %10042 = fadd fast float %10040, %10041
  %10043 = fmul fast float %10039, %10039
  %10044 = fadd fast float %10042, %10043
  %10045 = call float @dx.op.unary.f32(i32 24, float %10044)  ; Sqrt(value)
  %10046 = fsub fast float %10045, %9958
  %10047 = fmul fast float %10046, %9960
  %10048 = call float @dx.op.unary.f32(i32 7, float %10047)  ; Saturate(value)
  br label %10049

; <label>:10049                                   ; preds = %9974, %9970
  %10050 = phi float [ %10048, %9974 ], [ 1.000000e+00, %9970 ]
  %10051 = fmul fast float %9967, 5.000000e-01
  %10052 = fadd fast float %10051, 5.000000e-01
  %10053 = call float @dx.op.unary.f32(i32 22, float %10052)  ; Frc(value)
  %10054 = call float @dx.op.unary.f32(i32 27, float %10053)  ; Round_ni(value)
  %10055 = call float @dx.op.unary.f32(i32 22, float %10053)  ; Frc(value)
  %10056 = fmul fast float %10055, 2.000000e+00
  %10057 = fadd fast float %10056, -1.000000e+00
  %10058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %9919, float %9920, float %10054, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10059 = extractvalue %dx.types.ResRet.f32 %10058, 0
  %10060 = extractvalue %dx.types.ResRet.f32 %10058, 1
  %10061 = extractvalue %dx.types.ResRet.f32 %10058, 2
  %10062 = extractvalue %dx.types.ResRet.f32 %10058, 3
  %10063 = fadd fast float %10059, -5.000000e-01
  %10064 = fadd fast float %10061, -5.000000e-01
  %10065 = fmul fast float %10063, 0xBFD5555560000000
  %10066 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10064, float %10065)  ; FMad(a,b,c)
  %10067 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10060, float 0.000000e+00)  ; FMad(a,b,c)
  %10068 = fadd fast float %10067, %10062
  %10069 = fmul fast float %10063, -7.500000e-01
  %10070 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10064, float %10069)  ; FMad(a,b,c)
  %10071 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10060, float 0.000000e+00)  ; FMad(a,b,c)
  %10072 = fadd fast float %10071, %10062
  %10073 = call float @dx.op.binary.f32(i32 35, float %10066, float -1.000000e+00)  ; FMax(a,b)
  %10074 = call float @dx.op.binary.f32(i32 35, float %10068, float -1.000000e+00)  ; FMax(a,b)
  %10075 = call float @dx.op.binary.f32(i32 35, float %10070, float -1.000000e+00)  ; FMax(a,b)
  %10076 = call float @dx.op.binary.f32(i32 35, float %10072, float -1.000000e+00)  ; FMax(a,b)
  %10077 = call float @dx.op.binary.f32(i32 36, float %10073, float 1.000000e+00)  ; FMin(a,b)
  %10078 = call float @dx.op.binary.f32(i32 36, float %10074, float 1.000000e+00)  ; FMin(a,b)
  %10079 = call float @dx.op.binary.f32(i32 36, float %10075, float 1.000000e+00)  ; FMin(a,b)
  %10080 = call float @dx.op.binary.f32(i32 36, float %10076, float 1.000000e+00)  ; FMin(a,b)
  %10081 = fcmp fast olt float %10077, 0x3FEFFF8020000000
  br i1 %10081, label %10082, label %10197, !dx.controlflow.hints !188

; <label>:10082                                   ; preds = %10049
  %10083 = extractvalue %dx.types.CBufRet.f32 %9965, 3
  %10084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10085 = extractvalue %dx.types.CBufRet.f32 %10084, 0
  %10086 = extractvalue %dx.types.CBufRet.f32 %10084, 1
  %10087 = extractvalue %dx.types.CBufRet.f32 %10084, 2
  %10088 = extractvalue %dx.types.CBufRet.f32 %10084, 3
  %10089 = fsub fast float %10085, %10077
  %10090 = fsub fast float %10086, %10078
  %10091 = fsub fast float %10087, %10079
  %10092 = fsub fast float %10088, %10080
  %10093 = fmul fast float %10089, %10083
  %10094 = fmul fast float %10090, %10083
  %10095 = fmul fast float %10091, %10083
  %10096 = fmul fast float %10092, %10083
  %10097 = fadd fast float %10093, %10077
  %10098 = fadd fast float %10094, %10078
  %10099 = fsub fast float -0.000000e+00, %10098
  %10100 = fadd fast float %10095, %10079
  %10101 = fadd fast float %10096, %10080
  %10102 = fmul fast float %10097, %10097
  %10103 = fsub fast float %10098, %10102
  %10104 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10103)  ; FMax(a,b)
  %10105 = fdiv fast float 1.000000e+00, %10104
  %10106 = fmul fast float %10098, %10097
  %10107 = fsub fast float %10100, %10106
  %10108 = fsub fast float %10057, %10097
  %10109 = fmul fast float %10057, %10057
  %10110 = fsub fast float %10109, %10098
  %10111 = fmul fast float %10108, %10105
  %10112 = fmul fast float %10111, %10107
  %10113 = fsub fast float %10110, %10112
  %10114 = fmul fast float %10098, %10098
  %10115 = fsub fast float %10101, %10114
  %10116 = fmul fast float %10107, %10107
  %10117 = fmul fast float %10116, %10105
  %10118 = fsub fast float %10115, %10117
  %10119 = fdiv fast float %10113, %10118
  %10120 = fmul fast float %10107, %10119
  %10121 = fsub fast float %10108, %10120
  %10122 = fmul fast float %10121, %10105
  %10123 = fmul fast float %10122, %10097
  %10124 = fsub fast float 1.000000e+00, %10123
  %10125 = fmul fast float %10098, %10119
  %10126 = fsub fast float %10124, %10125
  %10127 = fmul fast float %10122, %10122
  %10128 = fmul fast float %10119, 4.000000e+00
  %10129 = fmul fast float %10128, %10126
  %10130 = fsub fast float %10127, %10129
  %10131 = call float @dx.op.unary.f32(i32 24, float %10130)  ; Sqrt(value)
  %10132 = fcmp fast oge float %10122, 0.000000e+00
  %10133 = fsub fast float -0.000000e+00, %10131
  %10134 = select i1 %10132, float %10133, float %10131
  %10135 = fsub fast float %10134, %10122
  %10136 = fdiv fast float %10135, %10119
  %10137 = fdiv fast float %10126, %10135
  %10138 = fmul fast float %10136, 5.000000e-01
  %10139 = fmul fast float %10137, 2.000000e+00
  %10140 = select i1 %10132, float %10138, float %10139
  %10141 = select i1 %10132, float %10139, float %10138
  %10142 = call float @dx.op.binary.f32(i32 35, float %10140, float %10141)  ; FMax(a,b)
  %10143 = call float @dx.op.binary.f32(i32 36, float %10140, float %10141)  ; FMin(a,b)
  %10144 = fcmp fast ogt float %10057, %10143
  br i1 %10144, label %10145, label %10155

; <label>:10145                                   ; preds = %10082
  %10146 = fsub fast float %10057, %10143
  %10147 = fsub fast float %10142, %10143
  %10148 = fmul fast float %10146, %10147
  %10149 = fmul fast float %10142, %10057
  %10150 = fadd fast float %10142, %10057
  %10151 = fmul fast float %10150, %10097
  %10152 = fadd fast float %10149, %10098
  %10153 = fsub fast float %10152, %10151
  %10154 = fdiv fast float %10153, %10148
  br label %10155

; <label>:10155                                   ; preds = %10145, %10082
  %10156 = phi float [ %10154, %10145 ], [ 0.000000e+00, %10082 ]
  %10157 = fcmp fast ogt float %10057, %10142
  %10158 = fsub fast float %10057, %10142
  br i1 %10157, label %10159, label %10169

; <label>:10159                                   ; preds = %10155
  %10160 = fsub fast float %10142, %10143
  %10161 = fmul fast float %10160, %10158
  %10162 = fmul fast float %10143, %10057
  %10163 = fadd fast float %10143, %10057
  %10164 = fmul fast float %10163, %10097
  %10165 = fsub fast float %10099, %10162
  %10166 = fadd fast float %10165, %10164
  %10167 = fdiv fast float %10166, %10161
  %10168 = fadd fast float %10167, %10156
  br label %10169

; <label>:10169                                   ; preds = %10159, %10155
  %10170 = phi float [ %10168, %10159 ], [ %10156, %10155 ]
  %10171 = fsub fast float %10057, %10143
  %10172 = fmul fast float %10171, %10158
  %10173 = fmul fast float %10143, %10142
  %10174 = fadd fast float %10143, %10142
  %10175 = fmul fast float %10174, %10097
  %10176 = fadd fast float %10173, %10098
  %10177 = fsub fast float %10176, %10175
  %10178 = fdiv fast float %10177, %10172
  %10179 = call float @dx.op.unary.f32(i32 7, float %10170)  ; Saturate(value)
  %10180 = fcmp fast oeq float %8848, 0.000000e+00
  %10181 = extractvalue %dx.types.CBufRet.f32 %9965, 0
  %10182 = fcmp fast oeq float %10181, 0.000000e+00
  %10183 = or i1 %10180, %10182
  %10184 = fmul fast float %10181, 2.000000e+00
  %10185 = fadd fast float %9966, %9967
  %10186 = fdiv fast float %10185, %10184
  %10187 = call float @dx.op.unary.f32(i32 7, float %10186)  ; Saturate(value)
  %10188 = fmul fast float %10187, 2.000000e+00
  %10189 = fsub fast float 3.000000e+00, %10188
  %10190 = fmul fast float %10187, %10187
  %10191 = fmul fast float %10190, %10189
  %10192 = select i1 %10183, float 1.000000e+00, float %10191
  %10193 = fmul fast float %10178, %8848
  %10194 = fadd fast float %10179, %10193
  %10195 = call float @dx.op.unary.f32(i32 7, float %10194)  ; Saturate(value)
  %10196 = fmul fast float %10192, %10195
  br label %10197

; <label>:10197                                   ; preds = %10169, %10049
  %10198 = phi float [ %10196, %10169 ], [ 0.000000e+00, %10049 ]
  %10199 = fsub fast float 1.000000e+00, %10198
  %10200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %9919, float %9920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10201 = extractvalue %dx.types.ResRet.f32 %10200, 0
  %10202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10203 = extractvalue %dx.types.CBufRet.i32 %10202, 2
  %10204 = icmp eq i32 %10203, 0
  br i1 %10204, label %10210, label %10205

; <label>:10205                                   ; preds = %10197
  %10206 = call float @dx.op.unary.f32(i32 7, float %10198)  ; Saturate(value)
  %10207 = fadd fast float %10201, -1.000000e+00
  %10208 = fmul fast float %10206, %10207
  %10209 = fadd fast float %10208, 1.000000e+00
  br label %10210

; <label>:10210                                   ; preds = %10205, %10197
  %10211 = phi float [ %10209, %10205 ], [ %10199, %10197 ]
  br i1 %9973, label %10212, label %10230

; <label>:10212                                   ; preds = %10210
  %10213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10214 = extractvalue %dx.types.CBufRet.f32 %10213, 1
  %10215 = fsub fast float %10050, %10214
  %10216 = call float @dx.op.unary.f32(i32 7, float %10215)  ; Saturate(value)
  %10217 = fsub fast float %10050, %9972
  %10218 = call float @dx.op.unary.f32(i32 7, float %10217)  ; Saturate(value)
  %10219 = fsub fast float %10216, %10218
  %10220 = fsub fast float %10052, %10218
  %10221 = fdiv fast float %10220, %10219
  %10222 = call float @dx.op.unary.f32(i32 7, float %10221)  ; Saturate(value)
  %10223 = fmul fast float %10222, 2.000000e+00
  %10224 = fsub fast float 3.000000e+00, %10223
  %10225 = fsub fast float %10201, %10211
  %10226 = fmul fast float %10222, %10222
  %10227 = fmul fast float %10226, %10225
  %10228 = fmul fast float %10227, %10224
  %10229 = fadd fast float %10228, %10211
  br label %10230

; <label>:10230                                   ; preds = %10212, %10210
  %10231 = phi float [ %10229, %10212 ], [ %10211, %10210 ]
  %10232 = call float @dx.op.binary.f32(i32 35, float %10201, float %10231)  ; FMax(a,b)
  %10233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10234 = extractvalue %dx.types.CBufRet.i32 %10233, 2
  %10235 = and i32 %10234, 1
  %10236 = icmp eq i32 %10235, 0
  %10237 = fcmp fast une float %10232, 1.000000e+00
  %10238 = and i1 %10237, %10236
  br i1 %10238, label %10239, label %10258

; <label>:10239                                   ; preds = %10230
  %10240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %9919, float %9920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10241 = extractvalue %dx.types.ResRet.f32 %10240, 0
  %10242 = extractvalue %dx.types.ResRet.f32 %10240, 1
  %10243 = extractvalue %dx.types.ResRet.f32 %10240, 2
  %10244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10245 = extractvalue %dx.types.CBufRet.f32 %10244, 1
  %10246 = fmul fast float %10245, %10241
  %10247 = fmul fast float %10245, %10242
  %10248 = fmul fast float %10245, %10243
  %10249 = fcmp fast ogt float %10201, 0x3FEFFF2E40000000
  %10250 = fsub fast float 1.000000e+00, %10232
  %10251 = fsub fast float 1.000000e+00, %10201
  %10252 = fdiv fast float %10250, %10251
  %10253 = call float @dx.op.unary.f32(i32 7, float %10252)  ; Saturate(value)
  %10254 = select i1 %10249, float 0.000000e+00, float %10253
  %10255 = fmul fast float %10246, %10254
  %10256 = fmul fast float %10247, %10254
  %10257 = fmul fast float %10248, %10254
  br label %10258

; <label>:10258                                   ; preds = %10239, %10230
  %10259 = phi float [ 0.000000e+00, %10230 ], [ %10255, %10239 ]
  %10260 = phi float [ 0.000000e+00, %10230 ], [ %10256, %10239 ]
  %10261 = phi float [ 0.000000e+00, %10230 ], [ %10257, %10239 ]
  %10262 = fmul fast float %10259, %8836
  %10263 = fmul fast float %10260, %8836
  %10264 = fmul fast float %10261, %8836
  %10265 = fmul fast float %10232, %9894
  %10266 = call float @dx.op.dot3.f32(i32 55, float %10232, float %10232, float %10232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10267 = call float @dx.op.dot3.f32(i32 55, float %10262, float %10263, float %10264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10268 = select i1 %281, float %10266, float %10232
  %10269 = select i1 %281, float 1.000000e+00, float %10232
  %10270 = select i1 %281, float %10267, float %10262
  %10271 = select i1 %281, float 0.000000e+00, float %10263
  %10272 = select i1 %281, float 0.000000e+00, float %10264
  %10273 = fmul fast float %10268, %9906
  %10274 = fmul fast float %10268, %9907
  %10275 = fmul fast float %10269, %9908
  %10276 = fadd fast float %10273, %10270
  %10277 = fadd fast float %10274, %10271
  %10278 = fadd fast float %10272, %10275
  %10279 = fmul fast float %10268, %9909
  %10280 = fmul fast float %10268, %9910
  %10281 = fmul fast float %10269, %9911
  br label %10282

; <label>:10282                                   ; preds = %10258, %9915, %9884, %9116
  %10283 = phi float [ %9121, %9116 ], [ %9906, %9884 ], [ %10276, %10258 ], [ %9906, %9915 ]
  %10284 = phi float [ %9122, %9116 ], [ %9907, %9884 ], [ %10277, %10258 ], [ %9907, %9915 ]
  %10285 = phi float [ %9123, %9116 ], [ %9908, %9884 ], [ %10278, %10258 ], [ %9908, %9915 ]
  %10286 = phi float [ %9124, %9116 ], [ %9909, %9884 ], [ %10279, %10258 ], [ %9909, %9915 ]
  %10287 = phi float [ %9125, %9116 ], [ %9910, %9884 ], [ %10280, %10258 ], [ %9910, %9915 ]
  %10288 = phi float [ %9126, %9116 ], [ %9911, %9884 ], [ %10281, %10258 ], [ %9911, %9915 ]
  %10289 = phi float [ %9127, %9116 ], [ %9894, %9884 ], [ %10265, %10258 ], [ %9894, %9915 ]
  %10290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10291 = extractvalue %dx.types.CBufRet.f32 %10290, 2
  %10292 = extractvalue %dx.types.CBufRet.f32 %10290, 3
  %10293 = fmul fast float %10291, %126
  %10294 = fmul fast float %10292, %127
  %10295 = call float @dx.op.unary.f32(i32 7, float %10293)  ; Saturate(value)
  %10296 = call float @dx.op.unary.f32(i32 7, float %10294)  ; Saturate(value)
  %10297 = select i1 %8858, i32 2, i32 0
  %10298 = or i32 %10297, 1
  %10299 = uitofp i32 %10298 to float
  %10300 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10295, float %10296, float %10299, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10301 = extractvalue %dx.types.ResRet.f32 %10300, 0
  %10302 = extractvalue %dx.types.ResRet.f32 %10300, 1
  %10303 = extractvalue %dx.types.ResRet.f32 %10300, 2
  %10304 = extractvalue %dx.types.ResRet.f32 %10300, 3
  %10305 = add nuw nsw i32 %10297, 2
  %10306 = uitofp i32 %10305 to float
  %10307 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10295, float %10296, float %10306, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10308 = extractvalue %dx.types.ResRet.f32 %10307, 0
  %10309 = extractvalue %dx.types.ResRet.f32 %10307, 1
  %10310 = extractvalue %dx.types.ResRet.f32 %10307, 2
  %10311 = extractvalue %dx.types.ResRet.f32 %10307, 3
  %10312 = call float @dx.op.binary.f32(i32 35, float %10302, float %10303)  ; FMax(a,b)
  %10313 = call float @dx.op.binary.f32(i32 35, float %10301, float %10312)  ; FMax(a,b)
  %10314 = call float @dx.op.binary.f32(i32 35, float %10313, float %10304)  ; FMax(a,b)
  %10315 = call float @dx.op.binary.f32(i32 36, float %10309, float %10310)  ; FMin(a,b)
  %10316 = call float @dx.op.binary.f32(i32 36, float %10308, float %10315)  ; FMin(a,b)
  %10317 = call float @dx.op.binary.f32(i32 36, float %10316, float %10311)  ; FMin(a,b)
  %10318 = fmul fast float %10314, 2.550000e+02
  %10319 = fadd fast float %10318, 0x3F70101020000000
  %10320 = fptoui float %10319 to i32
  %10321 = fmul fast float %10317, 2.550000e+02
  %10322 = fadd fast float %10321, 0x3F70101020000000
  %10323 = fptoui float %10322 to i32
  %10324 = icmp ult i32 %10320, %10323
  br i1 %10324, label %10325, label %10494

; <label>:10325                                   ; preds = %10282
  %10326 = fcmp fast ogt float %112, 9.843750e-01
  %10327 = fadd fast float %9120, -4.000000e+00
  %10328 = select i1 %10326, float -4.000000e+00, float %10327
  %10329 = call float @dx.op.binary.f32(i32 35, float %10328, float 0.000000e+00)  ; FMax(a,b)
  %10330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10331 = extractvalue %dx.types.CBufRet.f32 %10330, 0
  %10332 = fadd fast float %10331, %10329
  %10333 = extractvalue %dx.types.CBufRet.f32 %10330, 2
  %10334 = fmul fast float %10332, %10333
  %10335 = call float @dx.op.unary.f32(i32 23, float %10334)  ; Log(value)
  %10336 = extractvalue %dx.types.CBufRet.f32 %10330, 3
  %10337 = fmul fast float %10336, %10335
  %10338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10339 = extractvalue %dx.types.CBufRet.f32 %10338, 2
  %10340 = fmul fast float %10337, %10339
  %10341 = call float @dx.op.unary.f32(i32 7, float %10340)  ; Saturate(value)
  %10342 = uitofp i32 %10320 to float
  %10343 = uitofp i32 %10323 to float
  %10344 = fadd fast float %10342, 5.000000e-01
  %10345 = fadd fast float %10343, 5.000000e-01
  %10346 = fmul fast float %10339, %10344
  %10347 = fmul fast float %10339, %10345
  %10348 = fadd fast float %10346, 0x3F0FFB4800000000
  %10349 = fadd fast float %10347, 0xBF0FFB4800000000
  %10350 = call float @dx.op.binary.f32(i32 35, float %10341, float %10348)  ; FMax(a,b)
  %10351 = call float @dx.op.binary.f32(i32 36, float %10350, float %10349)  ; FMin(a,b)
  %10352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10353 = extractvalue %dx.types.CBufRet.f32 %10352, 1
  %10354 = extractvalue %dx.types.CBufRet.f32 %10352, 2
  %10355 = extractvalue %dx.types.CBufRet.f32 %10352, 0
  %10356 = select i1 %8858, float %10355, float 0.000000e+00
  %10357 = fmul fast float %10353, %10351
  %10358 = fadd fast float %10356, %10357
  %10359 = fadd fast float %10356, %10354
  %10360 = fsub fast float %10353, %10354
  %10361 = fadd fast float %10360, %10356
  %10362 = call float @dx.op.binary.f32(i32 35, float %10358, float %10359)  ; FMax(a,b)
  %10363 = call float @dx.op.binary.f32(i32 36, float %10362, float %10361)  ; FMin(a,b)
  %10364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10295, float %10296, float %10363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10365 = extractvalue %dx.types.ResRet.f32 %10364, 0
  %10366 = extractvalue %dx.types.ResRet.f32 %10364, 1
  %10367 = extractvalue %dx.types.ResRet.f32 %10364, 2
  %10368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10369 = extractvalue %dx.types.CBufRet.i32 %10368, 0
  %10370 = extractvalue %dx.types.CBufRet.i32 %10368, 1
  %10371 = uitofp i32 %10369 to float
  %10372 = uitofp i32 %10370 to float
  %10373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10374 = extractvalue %dx.types.CBufRet.f32 %10373, 0
  %10375 = extractvalue %dx.types.CBufRet.f32 %10373, 1
  %10376 = fmul fast float %10371, %10295
  %10377 = fmul fast float %10372, %10296
  %10378 = fadd fast float %10376, -5.000000e-01
  %10379 = fadd fast float %10377, -5.000000e-01
  %10380 = call float @dx.op.unary.f32(i32 22, float %10378)  ; Frc(value)
  %10381 = call float @dx.op.unary.f32(i32 22, float %10379)  ; Frc(value)
  %10382 = fmul fast float %10380, %10380
  %10383 = fmul fast float %10382, %10380
  %10384 = fsub fast float 3.000000e+00, %10380
  %10385 = fmul fast float %10382, %10384
  %10386 = fmul fast float %10380, 3.000000e+00
  %10387 = fmul fast float %10383, 3.000000e+00
  %10388 = fmul fast float %10382, 6.000000e+00
  %10389 = fsub fast float %10387, %10388
  %10390 = fadd fast float %10389, 4.000000e+00
  %10391 = fmul fast float %10390, 0x3FC5555560000000
  %10392 = fmul fast float %10383, -3.000000e+00
  %10393 = fadd fast float %10382, %10380
  %10394 = fmul fast float %10393, 3.000000e+00
  %10395 = fadd fast float %10392, 1.000000e+00
  %10396 = fadd fast float %10395, %10394
  %10397 = fmul fast float %10383, 0x3FC5555560000000
  %10398 = fmul fast float %10381, %10381
  %10399 = fmul fast float %10398, %10381
  %10400 = fsub fast float 3.000000e+00, %10381
  %10401 = fmul fast float %10398, %10400
  %10402 = fmul fast float %10381, 3.000000e+00
  %10403 = fmul fast float %10399, 3.000000e+00
  %10404 = fmul fast float %10398, 6.000000e+00
  %10405 = fsub fast float %10403, %10404
  %10406 = fadd fast float %10405, 4.000000e+00
  %10407 = fmul fast float %10406, 0x3FC5555560000000
  %10408 = fmul fast float %10399, -3.000000e+00
  %10409 = fadd fast float %10398, %10381
  %10410 = fmul fast float %10409, 3.000000e+00
  %10411 = fadd fast float %10408, 1.000000e+00
  %10412 = fadd fast float %10411, %10410
  %10413 = fmul fast float %10399, 0x3FC5555560000000
  %10414 = fadd fast float %10380, 1.000000e+00
  %10415 = fsub fast float 1.000000e+00, %10386
  %10416 = fadd fast float %10415, %10385
  %10417 = fadd fast float %10416, %10390
  %10418 = fmul fast float %10417, 0x3FC5555560000000
  %10419 = fdiv fast float %10391, %10418
  %10420 = fsub fast float %10414, %10419
  %10421 = fsub fast float 1.000000e+00, %10380
  %10422 = fadd fast float %10396, %10383
  %10423 = fmul fast float %10422, 0x3FC5555560000000
  %10424 = fdiv fast float %10397, %10423
  %10425 = fadd fast float %10421, %10424
  %10426 = fadd fast float %10381, 1.000000e+00
  %10427 = fsub fast float 1.000000e+00, %10402
  %10428 = fadd fast float %10427, %10401
  %10429 = fadd fast float %10428, %10406
  %10430 = fmul fast float %10429, 0x3FC5555560000000
  %10431 = fdiv fast float %10407, %10430
  %10432 = fsub fast float %10426, %10431
  %10433 = fsub fast float 1.000000e+00, %10381
  %10434 = fadd fast float %10412, %10399
  %10435 = fmul fast float %10434, 0x3FC5555560000000
  %10436 = fdiv fast float %10413, %10435
  %10437 = fadd fast float %10436, %10433
  %10438 = fmul fast float %10420, %10374
  %10439 = fsub fast float %10295, %10438
  %10440 = fmul fast float %10425, %10374
  %10441 = fadd fast float %10440, %10295
  %10442 = fmul fast float %10437, %10375
  %10443 = fadd fast float %10442, %10296
  %10444 = fmul fast float %10432, %10375
  %10445 = fsub fast float %10296, %10444
  %10446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10439, float %10445, float %10363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10447 = extractvalue %dx.types.ResRet.f32 %10446, 0
  %10448 = extractvalue %dx.types.ResRet.f32 %10446, 1
  %10449 = extractvalue %dx.types.ResRet.f32 %10446, 2
  %10450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10441, float %10445, float %10363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10451 = extractvalue %dx.types.ResRet.f32 %10450, 0
  %10452 = extractvalue %dx.types.ResRet.f32 %10450, 1
  %10453 = extractvalue %dx.types.ResRet.f32 %10450, 2
  %10454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10439, float %10443, float %10363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10455 = extractvalue %dx.types.ResRet.f32 %10454, 0
  %10456 = extractvalue %dx.types.ResRet.f32 %10454, 1
  %10457 = extractvalue %dx.types.ResRet.f32 %10454, 2
  %10458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10441, float %10443, float %10363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10459 = extractvalue %dx.types.ResRet.f32 %10458, 0
  %10460 = extractvalue %dx.types.ResRet.f32 %10458, 1
  %10461 = extractvalue %dx.types.ResRet.f32 %10458, 2
  %10462 = fsub fast float %10455, %10447
  %10463 = fsub fast float %10456, %10448
  %10464 = fsub fast float %10457, %10449
  %10465 = fmul fast float %10462, %10435
  %10466 = fmul fast float %10463, %10435
  %10467 = fmul fast float %10464, %10435
  %10468 = fadd fast float %10465, %10447
  %10469 = fadd fast float %10466, %10448
  %10470 = fadd fast float %10467, %10449
  %10471 = fsub fast float %10459, %10451
  %10472 = fsub fast float %10460, %10452
  %10473 = fsub fast float %10461, %10453
  %10474 = fmul fast float %10471, %10435
  %10475 = fmul fast float %10472, %10435
  %10476 = fmul fast float %10473, %10435
  %10477 = fsub fast float %10451, %10468
  %10478 = fadd fast float %10477, %10474
  %10479 = fsub fast float %10452, %10469
  %10480 = fadd fast float %10479, %10475
  %10481 = fsub fast float %10453, %10470
  %10482 = fadd fast float %10481, %10476
  %10483 = fmul fast float %10478, %10423
  %10484 = fmul fast float %10480, %10423
  %10485 = fmul fast float %10482, %10423
  %10486 = fadd fast float %10483, %10468
  %10487 = fadd fast float %10484, %10469
  %10488 = fadd fast float %10485, %10470
  %10489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10490 = extractvalue %dx.types.CBufRet.f32 %10489, 1
  %10491 = fmul fast float %10486, %10490
  %10492 = fmul fast float %10487, %10490
  %10493 = fmul fast float %10488, %10490
  br label %10494

; <label>:10494                                   ; preds = %10325, %10282
  %10495 = phi float [ %10365, %10325 ], [ 1.000000e+00, %10282 ]
  %10496 = phi float [ %10366, %10325 ], [ 1.000000e+00, %10282 ]
  %10497 = phi float [ %10367, %10325 ], [ 1.000000e+00, %10282 ]
  %10498 = phi float [ %10491, %10325 ], [ 0.000000e+00, %10282 ]
  %10499 = phi float [ %10492, %10325 ], [ 0.000000e+00, %10282 ]
  %10500 = phi float [ %10493, %10325 ], [ 0.000000e+00, %10282 ]
  %10501 = fmul fast float %10498, %8836
  %10502 = fmul fast float %10499, %8836
  %10503 = fmul fast float %10500, %8836
  %10504 = fmul fast float %10495, %10289
  %10505 = call float @dx.op.dot3.f32(i32 55, float %10495, float %10496, float %10497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10506 = call float @dx.op.dot3.f32(i32 55, float %10501, float %10502, float %10503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10507 = select i1 %281, float %10505, float %10495
  %10508 = select i1 %281, float %10505, float %10496
  %10509 = select i1 %281, float 1.000000e+00, float %10497
  %10510 = select i1 %281, float %10506, float %10501
  %10511 = select i1 %281, float 0.000000e+00, float %10502
  %10512 = select i1 %281, float 0.000000e+00, float %10503
  %10513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10514 = extractvalue %dx.types.CBufRet.i32 %10513, 3
  %10515 = and i32 %10514, 3
  %10516 = icmp ne i32 %10515, 0
  %10517 = and i32 %10514, 4
  %10518 = icmp ne i32 %10517, 0
  %10519 = and i1 %10516, %10518
  %10520 = and i1 %281, %10519
  br i1 %10520, label %10521, label %10527

; <label>:10521                                   ; preds = %10494
  %10522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10523 = extractvalue %dx.types.CBufRet.f32 %10522, 1
  %10524 = fadd fast float %10504, -1.000000e+00
  %10525 = fmul fast float %10523, %10524
  %10526 = fadd fast float %10525, 1.000000e+00
  br label %10527

; <label>:10527                                   ; preds = %10521, %10494
  %10528 = phi float [ %10526, %10521 ], [ %10504, %10494 ]
  %10529 = fadd fast float %10286, %10283
  %10530 = fmul fast float %10507, %10529
  %10531 = fadd fast float %10530, %10510
  %10532 = fadd fast float %10287, %10284
  %10533 = fmul fast float %10508, %10532
  %10534 = fadd fast float %10533, %10511
  %10535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10536 = extractvalue %dx.types.CBufRet.f32 %10535, 0
  br i1 %281, label %10537, label %10561

; <label>:10537                                   ; preds = %10527
  %10538 = fadd fast float %10531, %10534
  %10539 = fmul fast float %10536, %10538
  %10540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10541 = extractvalue %dx.types.CBufRet.f32 %10540, 3
  %10542 = extractvalue %dx.types.CBufRet.f32 %8840, 1
  %10543 = fsub fast float %8845, %8839
  %10544 = fadd fast float %10543, %8846
  %10545 = fsub fast float %10544, %10542
  %10546 = extractvalue %dx.types.CBufRet.f32 %8840, 2
  %10547 = fmul fast float %10545, %10546
  %10548 = call float @dx.op.unary.f32(i32 7, float %10547)  ; Saturate(value)
  %10549 = fsub fast float %10548, %10541
  %10550 = fmul fast float %10549, %10528
  %10551 = fadd fast float %10550, %10541
  %10552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10553 = extractvalue %dx.types.CBufRet.f32 %10552, 0
  %10554 = fsub fast float %10551, %10553
  %10555 = fmul fast float %10554, 1.000000e+01
  %10556 = call float @dx.op.unary.f32(i32 7, float %10555)  ; Saturate(value)
  %10557 = fsub fast float %4255, %8836
  %10558 = fmul fast float %10556, %10557
  %10559 = fadd fast float %10558, %8836
  %10560 = fmul fast float %10559, %10551
  br label %10585

; <label>:10561                                   ; preds = %10527
  %10562 = fadd fast float %10288, %10285
  %10563 = fmul fast float %10509, %10562
  %10564 = fadd fast float %10563, %10512
  %10565 = fmul fast float %10536, %10531
  %10566 = fmul fast float %10536, %10534
  %10567 = fmul fast float %10536, %10564
  %10568 = call float @dx.op.binary.f32(i32 35, float %10566, float %10567)  ; FMax(a,b)
  %10569 = call float @dx.op.binary.f32(i32 35, float %10565, float %10568)  ; FMax(a,b)
  %10570 = call float @dx.op.binary.f32(i32 35, float %10569, float %8836)  ; FMax(a,b)
  %10571 = fcmp fast ugt float %10570, 0x3F10000000000000
  br i1 %10571, label %10573, label %10572

; <label>:10572                                   ; preds = %10561
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10573

; <label>:10573                                   ; preds = %10572, %10561
  %10574 = add i32 %64, 356
  %10575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10574, i32 undef)  ; BufferLoad(srv,index,wot)
  %10576 = extractvalue %dx.types.ResRet.i32 %10575, 0
  %10577 = and i32 %10576, 32
  %10578 = icmp eq i32 %10577, 0
  br i1 %10578, label %10585, label %10579

; <label>:10579                                   ; preds = %10573
  %10580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10581 = extractvalue %dx.types.CBufRet.f32 %10580, 0
  %10582 = fmul fast float %10581, 0x3FE99999A0000000
  %10583 = fadd fast float %10581, %10565
  %10584 = fadd fast float %10582, %10567
  br label %10585

; <label>:10585                                   ; preds = %10579, %10573, %10537
  %10586 = phi float [ %10539, %10537 ], [ %10583, %10579 ], [ %10565, %10573 ]
  %10587 = phi float [ %10560, %10537 ], [ %10566, %10579 ], [ %10566, %10573 ]
  %10588 = phi float [ %10559, %10537 ], [ %10584, %10579 ], [ %10567, %10573 ]
  %10589 = phi float [ %10559, %10537 ], [ %8836, %10579 ], [ %8836, %10573 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10590 = call float @dx.op.binary.f32(i32 36, float %10586, float 3.225500e+04)  ; FMin(a,b)
  %10591 = call float @dx.op.binary.f32(i32 36, float %10587, float 3.225500e+04)  ; FMin(a,b)
  %10592 = call float @dx.op.binary.f32(i32 36, float %10588, float 3.225500e+04)  ; FMin(a,b)
  %10593 = call float @dx.op.binary.f32(i32 36, float %10589, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10592)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!75 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !104}
!77 = !{!78, !102, null}
!78 = !{!79, !82, !83, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101}
!79 = !{i32 0, !"SV_Position", i8 9, i8 3, !80, i8 4, i32 1, i8 4, i32 0, i8 0, !81}
!80 = !{i32 0}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 1, i8 0, !81}
!83 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 2, i8 0, !84}
!84 = !{i32 3, i32 3}
!85 = !{i32 3, !"NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 3, i8 0, !86}
!86 = !{i32 3, i32 7}
!87 = !{i32 4, !"TANGENT", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 4, i8 0, !81}
!88 = !{i32 5, !"SH_RED", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 5, i8 0, !81}
!89 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 6, i8 0, !81}
!90 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 7, i8 0, !81}
!91 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 8, i8 0, !86}
!92 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 9, i8 0, !81}
!93 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 2, i32 10, i8 0, !84}
!94 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 11, i8 0, !81}
!95 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 12, i8 0, !81}
!96 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !80, i8 1, i32 1, i8 1, i32 13, i8 0, !97}
!97 = !{i32 3, i32 1}
!98 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !80, i8 1, i32 1, i8 2, i32 13, i8 1, !84}
!99 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !80, i8 1, i32 1, i8 4, i32 14, i8 0, !97}
!100 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !80, i8 1, i32 1, i8 1, i32 13, i8 3, !97}
!101 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!102 = !{!103}
!103 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!104 = !{i32 0, i64 16}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"int", !115, i64 0}
!115 = !{!"omnipotent char", !116, i64 0}
!116 = !{!"Simple C/C++ TBAA"}
!117 = !{!118, !120, !122, !124}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!121 = distinct !{!121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!124 = distinct !{!124, !125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!125 = distinct !{!125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = !{!128, !128, i64 0}
!128 = !{!"float", !115, i64 0}
!129 = distinct !{!129, !107}
!130 = distinct !{!130, !107}
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
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = !{!143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!143 = distinct !{!143, !144, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!144 = distinct !{!144, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!145 = distinct !{!145, !146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!146 = distinct !{!146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!147 = distinct !{!147, !146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!153 = distinct !{!153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!154 = distinct !{!154, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!155 = distinct !{!155, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!156 = distinct !{!156, !157, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!157 = distinct !{!157, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"\01?sort@@YAXAIAM00@Z: %c"}
!160 = distinct !{!160, !"\01?sort@@YAXAIAM00@Z"}
!161 = !{!162, !163, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!162 = distinct !{!162, !160, !"\01?sort@@YAXAIAM00@Z: %a"}
!163 = distinct !{!163, !160, !"\01?sort@@YAXAIAM00@Z: %b"}
!164 = !{!163}
!165 = !{!162, !159, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!166 = !{!162}
!167 = !{!163, !159, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!168 = !{!169}
!169 = distinct !{!169, !170, !"\01?sort@@YAXAIAM00@Z: %c"}
!170 = distinct !{!170, !"\01?sort@@YAXAIAM00@Z"}
!171 = !{!172, !173, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!172 = distinct !{!172, !170, !"\01?sort@@YAXAIAM00@Z: %a"}
!173 = distinct !{!173, !170, !"\01?sort@@YAXAIAM00@Z: %b"}
!174 = !{!173}
!175 = !{!172, !169, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!176 = !{!172}
!177 = !{!173, !169, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 2}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}

