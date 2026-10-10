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
; shader hash: ec0b493cfbaea6a3090f198f9cef6fd3
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
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
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %111 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %112 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %113 = alloca [12 x float], align 4
  %114 = alloca [12 x float], align 4
  %115 = alloca [4 x float], align 4
  %116 = alloca [4 x float], align 4
  %117 = alloca [4 x float], align 4
  %118 = alloca [4 x float], align 4
  %119 = alloca [3 x float], align 4
  %120 = alloca [3 x float], align 4
  %121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = fmul fast float %124, %109
  %126 = fmul fast float %124, %110
  %127 = select i1 %63, float 1.000000e+00, float -1.000000e+00
  %128 = call float @dx.op.dot3.f32(i32 55, float %100, float %101, float %102, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = bitcast float %128 to i32
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 1597250115, %130
  %132 = bitcast i32 %131 to float
  %133 = fmul fast float %100, %127
  %134 = fmul fast float %133, %132
  %135 = fmul fast float %101, %127
  %136 = fmul fast float %135, %132
  %137 = fmul fast float %102, %127
  %138 = fmul fast float %137, %132
  %139 = fmul fast float %101, %98
  %140 = fmul fast float %102, %97
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %102, %96
  %143 = fmul fast float %100, %98
  %144 = fsub fast float %142, %143
  %145 = fmul fast float %100, %97
  %146 = fmul fast float %101, %96
  %147 = fsub fast float %145, %146
  %148 = fmul fast float %141, %99
  %149 = fmul fast float %144, %99
  %150 = fmul fast float %147, %99
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = fcmp fast une float %152, 0.000000e+00
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %157 = fmul fast float %125, 2.000000e+00
  %158 = fmul fast float %157, %155
  %159 = fmul fast float %126, 2.000000e+00
  %160 = fmul fast float %159, %156
  %161 = fsub fast float 1.000000e+00, %158
  %162 = fsub fast float 1.000000e+00, %160
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = select i1 %153, float %164, float %168
  %172 = select i1 %153, float %165, float %169
  %173 = select i1 %153, float %166, float %170
  %174 = fmul fast float %171, %161
  %175 = fmul fast float %172, %161
  %176 = fmul fast float %173, %161
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = select i1 %153, float %178, float %182
  %186 = select i1 %153, float %179, float %183
  %187 = select i1 %153, float %180, float %184
  %188 = fmul fast float %185, %162
  %189 = fmul fast float %186, %162
  %190 = fmul fast float %187, %162
  %191 = fadd fast float %188, %174
  %192 = fadd fast float %189, %175
  %193 = fadd fast float %190, %176
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %201 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %202 = select i1 %153, float %195, float %199
  %203 = select i1 %153, float %196, float %200
  %204 = select i1 %153, float %197, float %201
  %205 = fadd fast float %191, %202
  %206 = fadd fast float %192, %203
  %207 = fadd fast float %193, %204
  %208 = fmul fast float %205, %112
  %209 = fmul fast float %206, %112
  %210 = fmul fast float %207, %112
  %211 = shl i32 %65, 5
  %212 = add i32 %211, 4194304
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = extractvalue %dx.types.ResRet.i32 %213, 1
  %216 = extractvalue %dx.types.ResRet.i32 %213, 2
  %217 = extractvalue %dx.types.ResRet.i32 %213, 3
  %218 = add i32 %211, 4194320
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = extractvalue %dx.types.ResRet.i32 %219, 1
  %222 = bitcast i32 %220 to float
  %223 = bitcast i32 %221 to float
  %224 = fmul fast float %125, 5.000000e-01
  %225 = fmul fast float %126, 5.000000e-01
  %226 = fptosi float %224 to i32
  %227 = fptosi float %225 to i32
  %228 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = lshr i32 %229, 18
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F4C00EBA0000000
  %233 = call float @dx.op.unary.f32(i32 21, float %232)  ; Exp(value)
  %234 = fadd fast float %233, -1.000000e+00
  %235 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %236 = extractvalue %dx.types.Dimensions %235, 0
  %237 = sitofp i32 %236 to float
  %238 = extractvalue %dx.types.Dimensions %235, 1
  %239 = sitofp i32 %238 to float
  %240 = fcmp fast oge float %224, %237
  %241 = fcmp fast oge float %225, %239
  %242 = or i1 %240, %241
  %243 = select i1 %242, float 0x4197782600000000, float %234
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %247 = fmul fast float %245, %125
  %248 = fmul fast float %246, %126
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 114688
  %252 = icmp ne i32 %251, 0
  %253 = select i1 %252, float %247, float 0.000000e+00
  %254 = select i1 %252, float %248, float 0.000000e+00
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %57, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fmul fast float %256, 2.550000e+02
  %258 = fptoui float %257 to i32
  %259 = select i1 %252, i32 %258, i32 0
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 3
  %262 = and i32 %261, 3
  %263 = icmp ne i32 %262, 0
  %264 = and i32 %261, 4
  %265 = icmp ne i32 %264, 0
  %266 = and i1 %263, %265
  br i1 %266, label %267, label %276

; <label>:267                                     ; preds = %0
  %268 = fmul fast float %156, %126
  %269 = fmul fast float %155, %125
  %270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %56, float %269, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fsub fast float 1.000000e+00, %271
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = fcmp fast olt float %272, %274
  br label %279

; <label>:276                                     ; preds = %0
  %277 = icmp eq i32 %264, 0
  %278 = and i1 %263, %277
  br label %279

; <label>:279                                     ; preds = %276, %267
  %280 = phi i1 [ %275, %267 ], [ %278, %276 ]
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = fmul fast float %282, 0x3FE3C6EF40000000
  %284 = frem fast float %125, 2.560000e+02
  %285 = frem fast float %126, 2.560000e+02
  %286 = fptoui float %284 to i32
  %287 = fptoui float %285 to i32
  %288 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %286, i32 %287, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = fadd fast float %289, %283
  %291 = call float @dx.op.unary.f32(i32 22, float %290)  ; Frc(value)
  %292 = add i32 %64, 156
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = shl i32 %294, 4
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %294, 7
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %294, 22
  %302 = shl nuw nsw i32 %301, 5
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %64, 216
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = lshr i32 %306, 8
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = lshr i32 %306, 16
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = add i32 %64, 36
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %64, 288
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = fmul fast float %329, 0x3F50624DE0000000
  %333 = fmul fast float %331, 0x3F50624DE0000000
  %334 = mul i32 %66, 100
  %335 = add i32 %334, 28
  %336 = add i32 %334, 40
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = add i32 %64, 172
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = shl i32 %341, 4
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %341, 7
  %346 = and i32 %345, 32752
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %341, 22
  %349 = shl nuw nsw i32 %348, 5
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %64, 232
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3F70101020000000
  %357 = lshr i32 %353, 8
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = lshr i32 %353, 16
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = add i32 %64, 52
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = add i32 %64, 304
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = shl i32 %380, 4
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %380, 7
  %385 = and i32 %384, 32752
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %380, 22
  %388 = shl nuw nsw i32 %387, 5
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = and i32 %338, 1
  %391 = icmp ne i32 %390, 0
  %392 = select i1 %391, float %383, float %344
  %393 = select i1 %391, float %386, float %347
  %394 = select i1 %391, float %389, float %350
  %395 = add i32 %334, 44
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = fmul fast float %397, %392
  %399 = fmul fast float %397, %393
  %400 = fmul fast float %397, %394
  %401 = add i32 %334, 48
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = shl i32 %403, 4
  %405 = and i32 %404, 32752
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %403, 7
  %408 = and i32 %407, 32752
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = lshr i32 %403, 22
  %411 = shl nuw nsw i32 %410, 5
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = and i32 %338, 8
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %406, float %356
  %416 = select i1 %414, float %409, float %360
  %417 = select i1 %414, float %412, float %364
  %418 = add i32 %334, 52
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = and i32 %338, 2
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %422, float %369
  %428 = select i1 %426, float %424, float %371
  %429 = add i32 %334, 56
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = and i32 %338, 4
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %433, float %376
  %439 = fmul float %438, 0x3F50624DE0000000
  %440 = select i1 %437, float %435, float %378
  %441 = fmul float %440, 0x3F50624DE0000000
  %442 = add i32 %334, 60
  %443 = add i32 %334, 32
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %64, 188
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = shl i32 %448, 4
  %450 = and i32 %449, 32752
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = lshr i32 %448, 7
  %453 = and i32 %452, 32752
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = lshr i32 %448, 22
  %456 = shl nuw nsw i32 %455, 5
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = add i32 %64, 248
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 255
  %462 = uitofp i32 %461 to float
  %463 = fmul fast float %462, 0x3F70101020000000
  %464 = lshr i32 %460, 8
  %465 = and i32 %464, 255
  %466 = uitofp i32 %465 to float
  %467 = fmul fast float %466, 0x3F70101020000000
  %468 = lshr i32 %460, 16
  %469 = and i32 %468, 255
  %470 = uitofp i32 %469 to float
  %471 = fmul fast float %470, 0x3F70101020000000
  %472 = add i32 %64, 68
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 65535
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %474, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = add i32 %64, 320
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 65535
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %481, 16
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = shl i32 %487, 4
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %487, 7
  %492 = and i32 %491, 32752
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %487, 22
  %495 = shl nuw nsw i32 %494, 5
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = and i32 %445, 1
  %498 = icmp ne i32 %497, 0
  %499 = select i1 %498, float %490, float %451
  %500 = select i1 %498, float %493, float %454
  %501 = select i1 %498, float %496, float %457
  %502 = add i32 %334, 64
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = fmul fast float %504, %499
  %506 = fmul fast float %504, %500
  %507 = fmul fast float %504, %501
  %508 = add i32 %334, 68
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = shl i32 %510, 4
  %512 = and i32 %511, 32752
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %510, 7
  %515 = and i32 %514, 32752
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = lshr i32 %510, 22
  %518 = shl nuw nsw i32 %517, 5
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = and i32 %445, 8
  %521 = icmp ne i32 %520, 0
  %522 = select i1 %521, float %513, float %463
  %523 = select i1 %521, float %516, float %467
  %524 = select i1 %521, float %519, float %471
  %525 = add i32 %334, 72
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 65535
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %527, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = and i32 %445, 2
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %529, float %476
  %535 = select i1 %533, float %531, float %478
  %536 = add i32 %334, 76
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 65535
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %538, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = and i32 %445, 4
  %544 = icmp ne i32 %543, 0
  %545 = select i1 %544, float %540, float %483
  %546 = fmul float %545, 0x3F50624DE0000000
  %547 = select i1 %544, float %542, float %485
  %548 = fmul float %547, 0x3F50624DE0000000
  %549 = add i32 %334, 80
  %550 = add i32 %334, 36
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = add i32 %64, 204
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = shl i32 %555, 4
  %557 = and i32 %556, 32752
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %555, 7
  %560 = and i32 %559, 32752
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = lshr i32 %555, 22
  %563 = shl nuw nsw i32 %562, 5
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = add i32 %64, 264
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 255
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = lshr i32 %567, 8
  %572 = and i32 %571, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %567, 16
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = add i32 %64, 84
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %581, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = add i32 %64, 336
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %588, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = shl i32 %594, 4
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = lshr i32 %594, 7
  %599 = and i32 %598, 32752
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %594, 22
  %602 = shl nuw nsw i32 %601, 5
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = and i32 %552, 1
  %605 = icmp ne i32 %604, 0
  %606 = select i1 %605, float %597, float %558
  %607 = select i1 %605, float %600, float %561
  %608 = select i1 %605, float %603, float %564
  %609 = add i32 %334, 84
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = fmul fast float %611, %606
  %613 = fmul fast float %611, %607
  %614 = fmul fast float %611, %608
  %615 = add i32 %334, 88
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = shl i32 %617, 4
  %619 = and i32 %618, 32752
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = lshr i32 %617, 7
  %622 = and i32 %621, 32752
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = lshr i32 %617, 22
  %625 = shl nuw nsw i32 %624, 5
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = and i32 %552, 8
  %628 = icmp ne i32 %627, 0
  %629 = select i1 %628, float %620, float %570
  %630 = select i1 %628, float %623, float %574
  %631 = select i1 %628, float %626, float %578
  %632 = add i32 %334, 92
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %634, 16
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = and i32 %552, 2
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %636, float %583
  %642 = select i1 %640, float %638, float %585
  %643 = add i32 %334, 96
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 65535
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = lshr i32 %645, 16
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = and i32 %552, 4
  %651 = icmp ne i32 %650, 0
  %652 = select i1 %651, float %647, float %590
  %653 = fmul float %652, 0x3F50624DE0000000
  %654 = select i1 %651, float %649, float %592
  %655 = fmul float %654, 0x3F50624DE0000000
  %656 = add i32 %64, 348
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = and i32 %658, 32
  %660 = icmp eq i32 %659, 0
  %661 = and i32 %658, 64
  %662 = icmp eq i32 %661, 0
  %663 = and i32 %658, 128
  %664 = icmp eq i32 %663, 0
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 2
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %684, label %669

; <label>:669                                     ; preds = %279
  %670 = add i32 %64, 492
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add i32 %672, 0
  %674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %674, %dx.types.Handle %122, float %103, float %104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = extractvalue %dx.types.ResRet.f32 %675, 1
  %678 = extractvalue %dx.types.ResRet.f32 %675, 2
  %679 = extractvalue %dx.types.ResRet.f32 %675, 3
  %680 = fmul fast float %679, %105
  %681 = fmul fast float %676, %106
  %682 = fmul fast float %677, %107
  %683 = fmul fast float %678, %108
  br label %684

; <label>:684                                     ; preds = %669, %279
  %685 = phi float [ %108, %279 ], [ %683, %669 ]
  %686 = phi float [ %107, %279 ], [ %682, %669 ]
  %687 = phi float [ %106, %279 ], [ %681, %669 ]
  %688 = phi float [ %105, %279 ], [ %680, %669 ]
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 2
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %712, label %693

; <label>:693                                     ; preds = %684
  %694 = add i32 %64, 44
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 1
  %698 = icmp ne i32 %697, 0
  %699 = select i1 %698, float %687, float 1.000000e+00
  %700 = add i32 %64, 60
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 1
  %704 = icmp ne i32 %703, 0
  %705 = select i1 %704, float %686, float 1.000000e+00
  %706 = add i32 %64, 76
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = and i32 %708, 1
  %710 = icmp ne i32 %709, 0
  %711 = select i1 %710, float %685, float 1.000000e+00
  br label %712

; <label>:712                                     ; preds = %693, %684
  %713 = phi float [ %685, %684 ], [ %711, %693 ]
  %714 = phi float [ %686, %684 ], [ %705, %693 ]
  %715 = phi float [ %687, %684 ], [ %699, %693 ]
  %716 = lshr i32 %690, 20
  %717 = and i32 %716, 3
  %718 = add nuw nsw i32 %717, 1
  %719 = add i32 %64, 24
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %64, 28
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = or i32 %724, %721
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %1261, label %727

; <label>:727                                     ; preds = %712
  %728 = and i32 %721, 262144
  %729 = icmp ne i32 %728, 0
  %730 = select i1 %729, float %71, float 1.000000e+00
  %731 = select i1 %729, float %72, float 0.000000e+00
  %732 = select i1 %729, float %73, float 0.000000e+00
  %733 = select i1 %729, float %74, float 1.000000e+00
  %734 = select i1 %729, float %75, float %103
  %735 = select i1 %729, float %76, float %104
  %736 = add i32 %64, 284
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = lshr i32 %738, 16
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = fmul fast float %740, 0x3F50624DE0000000
  %742 = add i32 %64, 88
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = lshr i32 %744, 16
  %746 = and i32 %745, 255
  %747 = lshr i32 %744, 24
  %748 = add i32 %64, 292
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 65535
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %750, 16
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = add i32 %64, 32
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = lshr i32 %757, 22
  %759 = shl nuw nsw i32 %758, 5
  %760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %759)  ; LegacyF16ToF32(value)
  %761 = shl i32 %757, 4
  %762 = and i32 %761, 32752
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = lshr i32 %757, 7
  %765 = and i32 %764, 32752
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 3
  %769 = fmul fast float %768, 1.000000e+03
  %770 = fmul fast float %332, %769
  %771 = call float @dx.op.unary.f32(i32 22, float %770)  ; Frc(value)
  %772 = fadd fast float %771, %322
  %773 = fmul fast float %333, %769
  %774 = call float @dx.op.unary.f32(i32 22, float %773)  ; Frc(value)
  %775 = fadd fast float %774, %324
  %776 = fmul fast float %741, %769
  %777 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %778 = fmul fast float %777, 0x401921FB60000000
  %779 = fadd fast float %778, %760
  %780 = call float @dx.op.unary.f32(i32 13, float %779)  ; Sin(value)
  %781 = call float @dx.op.unary.f32(i32 12, float %779)  ; Cos(value)
  %782 = fsub fast float -0.000000e+00, %780
  %783 = fadd fast float %734, -5.000000e-01
  %784 = fadd fast float %735, -5.000000e-01
  %785 = fmul fast float %752, %783
  %786 = fmul fast float %754, %784
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fmul fast float %763, %787
  %790 = fmul fast float %766, %788
  %791 = fmul fast float %781, %789
  %792 = call float @dx.op.tertiary.f32(i32 46, float %782, float %790, float %791)  ; FMad(a,b,c)
  %793 = fmul fast float %780, %789
  %794 = call float @dx.op.tertiary.f32(i32 46, float %781, float %790, float %793)  ; FMad(a,b,c)
  %795 = fadd fast float %772, %792
  %796 = fadd fast float %775, %794
  %797 = icmp ugt i32 %746, 1
  %798 = icmp ugt i32 %744, 33554431
  %799 = or i1 %798, %797
  br i1 %799, label %800, label %825

; <label>:800                                     ; preds = %727
  %801 = add i32 %64, 228
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = lshr i32 %803, 16
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = fmul fast float %768, %805
  %807 = call float @dx.op.unary.f32(i32 22, float %806)  ; Frc(value)
  %808 = mul nuw nsw i32 %746, %747
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %807, %809
  %811 = call float @dx.op.unary.f32(i32 27, float %810)  ; Round_ni(value)
  %812 = fptoui float %811 to i32
  %813 = urem i32 %812, %746
  %814 = udiv i32 %812, %747
  %815 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %816 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %817 = uitofp i32 %813 to float
  %818 = uitofp i32 %814 to float
  %819 = fadd fast float %815, %817
  %820 = fadd fast float %816, %818
  %821 = uitofp i32 %746 to float
  %822 = uitofp i32 %747 to float
  %823 = fdiv fast float %819, %821
  %824 = fdiv fast float %820, %822
  br label %825

; <label>:825                                     ; preds = %800, %727
  %826 = phi float [ %823, %800 ], [ %795, %727 ]
  %827 = phi float [ %824, %800 ], [ %796, %727 ]
  %828 = and i32 %721, 256
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %876, label %830

; <label>:830                                     ; preds = %825
  %831 = add i32 %64, 440
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = add i32 %833, 0
  %835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %835, %dx.types.Handle %122, float %826, float %827, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = add i32 %64, 100
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = shl i32 %840, 4
  %842 = and i32 %841, 32752
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = lshr i32 %840, 7
  %845 = and i32 %844, 32752
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = fsub fast float 1.000000e+00, %688
  %848 = call float @dx.op.binary.f32(i32 35, float %847, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %849 = bitcast float %688 to i32
  %850 = sitofp i32 %849 to float
  %851 = fadd fast float %850, 0xC1CFBF8940000000
  %852 = fmul fast float %846, %851
  %853 = fadd fast float %852, 0x41CFBF8940000000
  %854 = fptosi float %853 to i32
  %855 = bitcast i32 %854 to float
  %856 = bitcast float %848 to i32
  %857 = sitofp i32 %856 to float
  %858 = fadd fast float %857, 0xC1CFBF8940000000
  %859 = fmul fast float %858, %846
  %860 = fadd fast float %859, 0x41CFBF8940000000
  %861 = fptosi float %860 to i32
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %855, %843
  %864 = fmul fast float %862, %843
  %865 = fsub fast float %848, %863
  %866 = fadd fast float %864, %848
  %867 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %868 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %869 = fsub fast float %837, %867
  %870 = fsub fast float %868, %867
  %871 = bitcast float %870 to i32
  %872 = sub nsw i32 2129859010, %871
  %873 = bitcast i32 %872 to float
  %874 = fmul fast float %873, %869
  %875 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  br label %876

; <label>:876                                     ; preds = %830, %825
  %877 = phi float [ %875, %830 ], [ %688, %825 ]
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %879, 128
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %898, label %882

; <label>:882                                     ; preds = %876
  %883 = add i32 %64, 424
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = add i32 %885, 0
  %887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %886, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %888 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %887, %dx.types.Handle %122, float %826, float %827, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = and i32 %891, 524288
  %893 = icmp ne i32 %892, 0
  %894 = fcmp fast ogt float %889, 0x3FE0101020000000
  %895 = select i1 %894, float 1.000000e+00, float 0.000000e+00
  %896 = select i1 %893, float %895, float %889
  %897 = fmul fast float %896, %877
  br label %898

; <label>:898                                     ; preds = %882, %876
  %899 = phi float [ %897, %882 ], [ %877, %876 ]
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 16
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %1102, label %904

; <label>:904                                     ; preds = %898
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %64, 376
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = add i32 %909, 0
  %911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %911, %dx.types.Handle %121, float %826, float %827, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = extractvalue %dx.types.ResRet.f32 %912, 1
  %915 = extractvalue %dx.types.ResRet.f32 %912, 2
  %916 = extractvalue %dx.types.ResRet.f32 %912, 3
  %917 = and i32 %906, 255
  %918 = uitofp i32 %917 to float
  %919 = lshr i32 %906, 8
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %916, %918
  %923 = fadd fast float %922, %921
  %924 = fmul fast float %923, 0x3F70101000000000
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 512
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %937, label %929

; <label>:929                                     ; preds = %904
  %930 = add i32 %64, 460
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = add i32 %932, 0
  %934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %934, %dx.types.Handle %122, float %826, float %827, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  br label %937

; <label>:937                                     ; preds = %929, %904
  %938 = phi float [ %936, %929 ], [ 1.000000e+00, %904 ]
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 33554432
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1049, label %943

; <label>:943                                     ; preds = %937
  %944 = add i32 %64, 224
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 65535
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = lshr i32 %946, 16
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = add i32 %64, 228
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 65535
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 24
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = and i32 %957, 255
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %962, 0x3F70101020000000
  %964 = lshr i32 %957, 8
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = lshr i32 %957, 16
  %969 = and i32 %968, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = add i32 %64, 220
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = lshr i32 %974, 24
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101020000000
  %978 = and i32 %974, 255
  %979 = uitofp i32 %978 to float
  %980 = fmul fast float %979, 0x3F70101020000000
  %981 = lshr i32 %974, 8
  %982 = and i32 %981, 255
  %983 = uitofp i32 %982 to float
  %984 = fmul fast float %983, 0x3F70101020000000
  %985 = lshr i32 %974, 16
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = fmul fast float %987, 0x3F70101020000000
  %989 = bitcast float %913 to i32
  %990 = ashr i32 %989, 1
  %991 = sub nsw i32 1597463174, %990
  %992 = bitcast i32 %991 to float
  %993 = fmul fast float %913, 5.000000e-01
  %994 = fmul fast float %992, %992
  %995 = fmul fast float %994, %993
  %996 = fsub fast float 1.500000e+00, %995
  %997 = fmul fast float %992, %913
  %998 = fmul fast float %997, %996
  %999 = bitcast float %914 to i32
  %1000 = ashr i32 %999, 1
  %1001 = sub nsw i32 1597463174, %1000
  %1002 = bitcast i32 %1001 to float
  %1003 = fmul fast float %914, 5.000000e-01
  %1004 = fmul fast float %1002, %1002
  %1005 = fmul fast float %1004, %1003
  %1006 = fsub fast float 1.500000e+00, %1005
  %1007 = fmul fast float %1002, %914
  %1008 = fmul fast float %1007, %1006
  %1009 = bitcast float %915 to i32
  %1010 = ashr i32 %1009, 1
  %1011 = sub nsw i32 1597463174, %1010
  %1012 = bitcast i32 %1011 to float
  %1013 = fmul fast float %915, 5.000000e-01
  %1014 = fmul fast float %1012, %1012
  %1015 = fmul fast float %1014, %1013
  %1016 = fsub fast float 1.500000e+00, %1015
  %1017 = fmul fast float %1012, %915
  %1018 = fmul fast float %1017, %1016
  %1019 = fsub fast float %998, %980
  %1020 = fsub fast float %1008, %984
  %1021 = fsub fast float %1018, %988
  %1022 = fmul fast float %1019, %948
  %1023 = fmul fast float %1020, %950
  %1024 = fmul fast float %1021, %955
  %1025 = fadd fast float %1022, %963
  %1026 = fadd fast float %1023, %967
  %1027 = fadd fast float %1024, %971
  %1028 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1029 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1030 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1031 = fmul fast float %1028, %1028
  %1032 = fmul fast float %1029, %1029
  %1033 = fmul fast float %1030, %1030
  %1034 = fsub fast float %1031, %913
  %1035 = fsub fast float %1032, %914
  %1036 = fsub fast float %1033, %915
  %1037 = fmul fast float %1034, %938
  %1038 = fmul fast float %1035, %938
  %1039 = fmul fast float %1036, %938
  %1040 = fadd fast float %1037, %913
  %1041 = fadd fast float %1038, %914
  %1042 = fadd fast float %1039, %915
  %1043 = fadd fast float %960, %924
  %1044 = fsub fast float %1043, %977
  %1045 = call float @dx.op.unary.f32(i32 7, float %1044)  ; Saturate(value)
  %1046 = fsub fast float %1045, %924
  %1047 = fmul fast float %1046, %938
  %1048 = fadd fast float %1047, %924
  br label %1102

; <label>:1049                                    ; preds = %937
  %1050 = and i32 %940, 134217728
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1086, label %1052

; <label>:1052                                    ; preds = %1049
  %1053 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %1054 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %1055 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %1056 = fadd fast float %1053, -5.000000e-01
  %1057 = fadd fast float %1054, -5.000000e-01
  %1058 = fadd fast float %1055, -5.000000e-01
  %1059 = fmul fast float %1056, %938
  %1060 = fmul fast float %1057, %938
  %1061 = fmul fast float %1058, %938
  %1062 = fadd fast float %1059, 5.000000e-01
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = fadd fast float %1061, 5.000000e-01
  %1065 = call float @dx.op.unary.f32(i32 24, float %913)  ; Sqrt(value)
  %1066 = call float @dx.op.unary.f32(i32 24, float %914)  ; Sqrt(value)
  %1067 = call float @dx.op.unary.f32(i32 24, float %915)  ; Sqrt(value)
  %1068 = fmul fast float %1062, 2.000000e+00
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1069, %1065
  %1071 = fadd fast float %1070, %1068
  %1072 = fmul fast float %1071, %1065
  %1073 = fmul fast float %1063, 2.000000e+00
  %1074 = fsub fast float 1.000000e+00, %1073
  %1075 = fmul fast float %1074, %1066
  %1076 = fadd fast float %1075, %1073
  %1077 = fmul fast float %1076, %1066
  %1078 = fmul fast float %1064, 2.000000e+00
  %1079 = fsub fast float 1.000000e+00, %1078
  %1080 = fmul fast float %1079, %1067
  %1081 = fadd fast float %1080, %1078
  %1082 = fmul fast float %1081, %1067
  %1083 = fmul fast float %1072, %1072
  %1084 = fmul fast float %1077, %1077
  %1085 = fmul fast float %1082, %1082
  br label %1102

; <label>:1086                                    ; preds = %1049
  %1087 = fmul fast float %309, %309
  %1088 = fmul fast float %313, %313
  %1089 = fmul fast float %317, %317
  %1090 = fadd fast float %1087, -1.000000e+00
  %1091 = fadd fast float %1088, -1.000000e+00
  %1092 = fadd fast float %1089, -1.000000e+00
  %1093 = fmul fast float %938, %1090
  %1094 = fmul fast float %938, %1091
  %1095 = fmul fast float %938, %1092
  %1096 = fadd fast float %1093, 1.000000e+00
  %1097 = fadd fast float %1094, 1.000000e+00
  %1098 = fadd fast float %1095, 1.000000e+00
  %1099 = fmul fast float %1096, %913
  %1100 = fmul fast float %1097, %914
  %1101 = fmul fast float %1098, %915
  br label %1102

; <label>:1102                                    ; preds = %1086, %1052, %943, %898
  %1103 = phi float [ %1048, %943 ], [ %924, %1052 ], [ %924, %1086 ], [ 0x3FA23C0BE0000000, %898 ]
  %1104 = phi float [ %1040, %943 ], [ %1083, %1052 ], [ %1099, %1086 ], [ 1.000000e+00, %898 ]
  %1105 = phi float [ %1041, %943 ], [ %1084, %1052 ], [ %1100, %1086 ], [ 1.000000e+00, %898 ]
  %1106 = phi float [ %1042, %943 ], [ %1085, %1052 ], [ %1101, %1086 ], [ 1.000000e+00, %898 ]
  %1107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.i32 %1107, 1
  %1109 = and i32 %1108, 1
  %1110 = icmp ne i32 %1109, 0
  %1111 = add i32 %64, 356
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 32
  %1115 = icmp ne i32 %1114, 0
  %1116 = and i1 %1110, %1115
  %1117 = select i1 %1116, float 1.000000e+00, float %1104
  %1118 = select i1 %1116, float 0x3FD3333340000000, float %1105
  %1119 = select i1 %1116, float 0x3FD3333340000000, float %1106
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 32
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1196, label %1124

; <label>:1124                                    ; preds = %1102
  %1125 = add i32 %64, 92
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = add i32 %64, 392
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = add i32 %1130, 0
  %1132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1133 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1132, %dx.types.Handle %121, float %826, float %827, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.ResRet.f32 %1133, 3
  %1138 = and i32 %1127, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = lshr i32 %1127, 8
  %1141 = and i32 %1140, 255
  %1142 = uitofp i32 %1141 to float
  %1143 = lshr i32 %1127, 16
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F70101000000000
  %1147 = fmul fast float %1134, %1139
  %1148 = fadd fast float %1147, %1142
  %1149 = fmul fast float %1148, 0x3F70101000000000
  %1150 = fadd fast float %1135, -5.000000e-01
  %1151 = fadd fast float %1137, -5.000000e-01
  %1152 = fmul fast float %1150, %1146
  %1153 = fmul fast float %1151, %1146
  %1154 = fadd fast float %1152, 5.000000e-01
  %1155 = fadd fast float %1153, 5.000000e-01
  %1156 = fmul fast float %1154, 2.000000e+00
  %1157 = fadd fast float %1156, -1.000000e+00
  %1158 = fmul fast float %1155, 2.000000e+00
  %1159 = fadd fast float %1158, -1.000000e+00
  %1160 = fadd fast float %1157, %1159
  %1161 = fmul fast float %1160, 5.000000e-01
  %1162 = fsub fast float %1157, %1159
  %1163 = fmul fast float %1162, 5.000000e-01
  %1164 = call float @dx.op.unary.f32(i32 6, float %1161)  ; FAbs(value)
  %1165 = fsub fast float 1.000000e+00, %1164
  %1166 = call float @dx.op.unary.f32(i32 6, float %1163)  ; FAbs(value)
  %1167 = fsub fast float %1165, %1166
  %1168 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1163, float %1167, float %1161, float %1163, float %1167)  ; Dot3(ax,ay,az,bx,by,bz)
  %1169 = call float @dx.op.unary.f32(i32 25, float %1168)  ; Rsqrt(value)
  %1170 = fmul fast float %1161, %1169
  %1171 = fmul fast float %1163, %1169
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 67108864
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1192, label %1176

; <label>:1176                                    ; preds = %1124
  %1177 = add i32 %64, 280
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 65535
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 65535
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1179, 16
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = fsub fast float %1149, %1187
  %1189 = fmul fast float %1188, %1181
  %1190 = fadd fast float %1189, %1185
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  br label %1192

; <label>:1192                                    ; preds = %1176, %1124
  %1193 = phi float [ %1191, %1176 ], [ %1149, %1124 ]
  %1194 = call float @dx.op.dot2.f32(i32 54, float %1170, float %1171, float %730, float %731)  ; Dot2(ax,ay,bx,by)
  %1195 = call float @dx.op.dot2.f32(i32 54, float %1170, float %1171, float %732, float %733)  ; Dot2(ax,ay,bx,by)
  br label %1196

; <label>:1196                                    ; preds = %1192, %1102
  %1197 = phi float [ %1193, %1192 ], [ 0x3FD6666660000000, %1102 ]
  %1198 = phi float [ %1194, %1192 ], [ 0.000000e+00, %1102 ]
  %1199 = phi float [ %1195, %1192 ], [ 0.000000e+00, %1102 ]
  %1200 = phi float [ %1136, %1192 ], [ 1.000000e+00, %1102 ]
  %1201 = add i32 %64, 160
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = lshr i32 %1203, 22
  %1205 = shl nuw nsw i32 %1204, 5
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 64
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1244, label %1211

; <label>:1211                                    ; preds = %1196
  %1212 = add i32 %64, 408
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %1214, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 131072
  %1220 = icmp eq i32 %1219, 0
  %1221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1216, %dx.types.Handle %121, float %826, float %827, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = fmul fast float %1222, %297
  %1226 = fmul fast float %1223, %300
  %1227 = fmul fast float %1224, %303
  br i1 %1220, label %1234, label %1228

; <label>:1228                                    ; preds = %1211
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = fmul fast float %1230, %1225
  %1232 = fmul fast float %1230, %1226
  %1233 = fmul fast float %1230, %1227
  br label %1234

; <label>:1234                                    ; preds = %1228, %1211
  %1235 = phi float [ %1231, %1228 ], [ %1225, %1211 ]
  %1236 = phi float [ %1232, %1228 ], [ %1226, %1211 ]
  %1237 = phi float [ %1233, %1228 ], [ %1227, %1211 ]
  %1238 = fmul fast float %1235, %1206
  %1239 = select i1 %280, float %1238, float %1235
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1239, float %1236, float %1237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = select i1 %280, float 0.000000e+00, float %1235
  %1242 = select i1 %280, float %1240, float %1236
  %1243 = select i1 %280, float 0.000000e+00, float %1237
  br label %1244

; <label>:1244                                    ; preds = %1234, %1196
  %1245 = phi float [ %1241, %1234 ], [ 0.000000e+00, %1196 ]
  %1246 = phi float [ %1242, %1234 ], [ 0.000000e+00, %1196 ]
  %1247 = phi float [ %1243, %1234 ], [ 0.000000e+00, %1196 ]
  %1248 = add i32 %64, 96
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = lshr i32 %1250, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = call float @dx.op.dot3.f32(i32 55, float %1117, float %1118, float %1119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1257 = fmul fast float %1255, %1256
  %1258 = fadd fast float %1257, %1252
  %1259 = fmul fast float %1258, 0x3F70101020000000
  %1260 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  br label %1261

; <label>:1261                                    ; preds = %1244, %712
  %1262 = phi float [ 0.000000e+00, %712 ], [ %1198, %1244 ]
  %1263 = phi float [ 0.000000e+00, %712 ], [ %1199, %1244 ]
  %1264 = phi float [ 0.000000e+00, %712 ], [ %1117, %1244 ]
  %1265 = phi float [ 0.000000e+00, %712 ], [ %1118, %1244 ]
  %1266 = phi float [ 0.000000e+00, %712 ], [ %1119, %1244 ]
  %1267 = phi float [ 0.000000e+00, %712 ], [ %1245, %1244 ]
  %1268 = phi float [ 0.000000e+00, %712 ], [ %1246, %1244 ]
  %1269 = phi float [ 0.000000e+00, %712 ], [ %1247, %1244 ]
  %1270 = phi float [ 0.000000e+00, %712 ], [ %1103, %1244 ]
  %1271 = phi float [ 0.000000e+00, %712 ], [ %899, %1244 ]
  %1272 = phi float [ 0.000000e+00, %712 ], [ %1197, %1244 ]
  %1273 = phi float [ 0.000000e+00, %712 ], [ %1200, %1244 ]
  %1274 = phi float [ 0.000000e+00, %712 ], [ %1260, %1244 ]
  br i1 %660, label %2001, label %1275

; <label>:1275                                    ; preds = %1261
  %1276 = icmp ult i32 %718, 2
  %1277 = add i32 %64, 40
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = add i32 %64, 44
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = or i32 %1282, %1279
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %2001, label %1285

; <label>:1285                                    ; preds = %1275
  %1286 = and i32 %1279, 262144
  %1287 = icmp ne i32 %1286, 0
  %1288 = select i1 %1287, float %71, float 1.000000e+00
  %1289 = select i1 %1287, float %72, float 0.000000e+00
  %1290 = select i1 %1287, float %73, float 0.000000e+00
  %1291 = select i1 %1287, float %74, float 1.000000e+00
  %1292 = select i1 %1287, float %75, float %103
  %1293 = select i1 %1287, float %76, float %104
  %1294 = add i32 %64, 300
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = lshr i32 %1296, 16
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = fmul fast float %1298, 0x3F50624DE0000000
  %1300 = add i32 %64, 104
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = lshr i32 %1302, 16
  %1304 = and i32 %1303, 255
  %1305 = lshr i32 %1302, 24
  %1306 = add i32 %64, 308
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = and i32 %1308, 65535
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = lshr i32 %1308, 16
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = add i32 %64, 48
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = lshr i32 %1315, 22
  %1317 = shl nuw nsw i32 %1316, 5
  %1318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1317)  ; LegacyF16ToF32(value)
  %1319 = shl i32 %1315, 4
  %1320 = and i32 %1319, 32752
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = lshr i32 %1315, 7
  %1323 = and i32 %1322, 32752
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 3
  %1327 = fmul fast float %1326, 1.000000e+03
  %1328 = fmul fast float %1327, %439
  %1329 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1330 = fadd fast float %1329, %427
  %1331 = fmul fast float %1327, %441
  %1332 = call float @dx.op.unary.f32(i32 22, float %1331)  ; Frc(value)
  %1333 = fadd fast float %1332, %428
  %1334 = fmul fast float %1299, %1327
  %1335 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1336 = fmul fast float %1335, 0x401921FB60000000
  %1337 = fadd fast float %1336, %1318
  %1338 = call float @dx.op.unary.f32(i32 13, float %1337)  ; Sin(value)
  %1339 = call float @dx.op.unary.f32(i32 12, float %1337)  ; Cos(value)
  %1340 = fsub fast float -0.000000e+00, %1338
  %1341 = fadd fast float %1292, -5.000000e-01
  %1342 = fadd fast float %1293, -5.000000e-01
  %1343 = fmul fast float %1310, %1341
  %1344 = fmul fast float %1312, %1342
  %1345 = fadd fast float %1343, 5.000000e-01
  %1346 = fadd fast float %1344, 5.000000e-01
  %1347 = fmul fast float %1321, %1345
  %1348 = fmul fast float %1324, %1346
  %1349 = fmul fast float %1339, %1347
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1340, float %1348, float %1349)  ; FMad(a,b,c)
  %1351 = fmul fast float %1338, %1347
  %1352 = call float @dx.op.tertiary.f32(i32 46, float %1339, float %1348, float %1351)  ; FMad(a,b,c)
  %1353 = fadd fast float %1330, %1350
  %1354 = fadd fast float %1333, %1352
  %1355 = icmp ugt i32 %1304, 1
  %1356 = icmp ugt i32 %1302, 33554431
  %1357 = or i1 %1356, %1355
  br i1 %1357, label %1358, label %1383

; <label>:1358                                    ; preds = %1285
  %1359 = add i32 %64, 244
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = lshr i32 %1361, 16
  %1363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1362)  ; LegacyF16ToF32(value)
  %1364 = fmul fast float %1326, %1363
  %1365 = call float @dx.op.unary.f32(i32 22, float %1364)  ; Frc(value)
  %1366 = mul nuw nsw i32 %1304, %1305
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1365, %1367
  %1369 = call float @dx.op.unary.f32(i32 27, float %1368)  ; Round_ni(value)
  %1370 = fptoui float %1369 to i32
  %1371 = urem i32 %1370, %1304
  %1372 = udiv i32 %1370, %1305
  %1373 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1374 = call float @dx.op.unary.f32(i32 22, float %1354)  ; Frc(value)
  %1375 = uitofp i32 %1371 to float
  %1376 = uitofp i32 %1372 to float
  %1377 = fadd fast float %1373, %1375
  %1378 = fadd fast float %1374, %1376
  %1379 = uitofp i32 %1304 to float
  %1380 = uitofp i32 %1305 to float
  %1381 = fdiv fast float %1377, %1379
  %1382 = fdiv fast float %1378, %1380
  br label %1383

; <label>:1383                                    ; preds = %1358, %1285
  %1384 = phi float [ %1381, %1358 ], [ %1353, %1285 ]
  %1385 = phi float [ %1382, %1358 ], [ %1354, %1285 ]
  %1386 = and i32 %1279, 256
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1434, label %1388

; <label>:1388                                    ; preds = %1383
  %1389 = add i32 %64, 444
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = add i32 %1391, 0
  %1393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1392, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1393, %dx.types.Handle %122, float %1384, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = add i32 %64, 116
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = shl i32 %1398, 4
  %1400 = and i32 %1399, 32752
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = lshr i32 %1398, 7
  %1403 = and i32 %1402, 32752
  %1404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1403)  ; LegacyF16ToF32(value)
  %1405 = fsub fast float 1.000000e+00, %715
  %1406 = call float @dx.op.binary.f32(i32 35, float %1405, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1407 = bitcast float %715 to i32
  %1408 = sitofp i32 %1407 to float
  %1409 = fadd fast float %1408, 0xC1CFBF8940000000
  %1410 = fmul fast float %1404, %1409
  %1411 = fadd fast float %1410, 0x41CFBF8940000000
  %1412 = fptosi float %1411 to i32
  %1413 = bitcast i32 %1412 to float
  %1414 = bitcast float %1406 to i32
  %1415 = sitofp i32 %1414 to float
  %1416 = fadd fast float %1415, 0xC1CFBF8940000000
  %1417 = fmul fast float %1416, %1404
  %1418 = fadd fast float %1417, 0x41CFBF8940000000
  %1419 = fptosi float %1418 to i32
  %1420 = bitcast i32 %1419 to float
  %1421 = fmul fast float %1413, %1401
  %1422 = fmul fast float %1420, %1401
  %1423 = fsub fast float %1406, %1421
  %1424 = fadd fast float %1422, %1406
  %1425 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1426 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1427 = fsub fast float %1395, %1425
  %1428 = fsub fast float %1426, %1425
  %1429 = bitcast float %1428 to i32
  %1430 = sub nsw i32 2129859010, %1429
  %1431 = bitcast i32 %1430 to float
  %1432 = fmul fast float %1431, %1427
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  br label %1434

; <label>:1434                                    ; preds = %1388, %1383
  %1435 = phi float [ %1433, %1388 ], [ %715, %1383 ]
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 128
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1456, label %1440

; <label>:1440                                    ; preds = %1434
  %1441 = add i32 %64, 428
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = add i32 %1443, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %122, float %1384, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 524288
  %1451 = icmp ne i32 %1450, 0
  %1452 = fcmp fast ogt float %1447, 0x3FE0101020000000
  %1453 = select i1 %1452, float 1.000000e+00, float 0.000000e+00
  %1454 = select i1 %1451, float %1453, float %1447
  %1455 = fmul fast float %1454, %1435
  br label %1456

; <label>:1456                                    ; preds = %1440, %1434
  %1457 = phi float [ %1455, %1440 ], [ %1435, %1434 ]
  %1458 = fcmp fast ult float %1457, 0x3F70101020000000
  br i1 %1458, label %2001, label %1459

; <label>:1459                                    ; preds = %1456
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 16
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1662, label %1464

; <label>:1464                                    ; preds = %1459
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %64, 380
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1471, %dx.types.Handle %121, float %1384, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.ResRet.f32 %1472, 3
  %1477 = and i32 %1466, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1466, 8
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1476, %1478
  %1483 = fadd fast float %1482, %1481
  %1484 = fmul fast float %1483, 0x3F70101000000000
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 512
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1497, label %1489

; <label>:1489                                    ; preds = %1464
  %1490 = add i32 %64, 464
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %1492, 0
  %1494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1494, %dx.types.Handle %122, float %1384, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  br label %1497

; <label>:1497                                    ; preds = %1489, %1464
  %1498 = phi float [ %1496, %1489 ], [ 1.000000e+00, %1464 ]
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 33554432
  %1502 = icmp eq i32 %1501, 0
  br i1 %1502, label %1609, label %1503

; <label>:1503                                    ; preds = %1497
  %1504 = add i32 %64, 240
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 65535
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = lshr i32 %1506, 16
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = add i32 %64, 244
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 65535
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = lshr i32 %1517, 24
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = and i32 %1517, 255
  %1522 = uitofp i32 %1521 to float
  %1523 = fmul fast float %1522, 0x3F70101020000000
  %1524 = lshr i32 %1517, 8
  %1525 = and i32 %1524, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101020000000
  %1528 = lshr i32 %1517, 16
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = add i32 %64, 236
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = lshr i32 %1534, 24
  %1536 = uitofp i32 %1535 to float
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = and i32 %1534, 255
  %1539 = uitofp i32 %1538 to float
  %1540 = fmul fast float %1539, 0x3F70101020000000
  %1541 = lshr i32 %1534, 8
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = lshr i32 %1534, 16
  %1546 = and i32 %1545, 255
  %1547 = uitofp i32 %1546 to float
  %1548 = fmul fast float %1547, 0x3F70101020000000
  %1549 = bitcast float %1473 to i32
  %1550 = ashr i32 %1549, 1
  %1551 = sub nsw i32 1597463174, %1550
  %1552 = bitcast i32 %1551 to float
  %1553 = fmul fast float %1473, 5.000000e-01
  %1554 = fmul fast float %1552, %1552
  %1555 = fmul fast float %1554, %1553
  %1556 = fsub fast float 1.500000e+00, %1555
  %1557 = fmul fast float %1552, %1473
  %1558 = fmul fast float %1557, %1556
  %1559 = bitcast float %1474 to i32
  %1560 = ashr i32 %1559, 1
  %1561 = sub nsw i32 1597463174, %1560
  %1562 = bitcast i32 %1561 to float
  %1563 = fmul fast float %1474, 5.000000e-01
  %1564 = fmul fast float %1562, %1562
  %1565 = fmul fast float %1564, %1563
  %1566 = fsub fast float 1.500000e+00, %1565
  %1567 = fmul fast float %1562, %1474
  %1568 = fmul fast float %1567, %1566
  %1569 = bitcast float %1475 to i32
  %1570 = ashr i32 %1569, 1
  %1571 = sub nsw i32 1597463174, %1570
  %1572 = bitcast i32 %1571 to float
  %1573 = fmul fast float %1475, 5.000000e-01
  %1574 = fmul fast float %1572, %1572
  %1575 = fmul fast float %1574, %1573
  %1576 = fsub fast float 1.500000e+00, %1575
  %1577 = fmul fast float %1572, %1475
  %1578 = fmul fast float %1577, %1576
  %1579 = fsub fast float %1558, %1540
  %1580 = fsub fast float %1568, %1544
  %1581 = fsub fast float %1578, %1548
  %1582 = fmul fast float %1579, %1508
  %1583 = fmul fast float %1580, %1510
  %1584 = fmul fast float %1581, %1515
  %1585 = fadd fast float %1582, %1523
  %1586 = fadd fast float %1583, %1527
  %1587 = fadd fast float %1584, %1531
  %1588 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1589 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1590 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1591 = fmul fast float %1588, %1588
  %1592 = fmul fast float %1589, %1589
  %1593 = fmul fast float %1590, %1590
  %1594 = fsub fast float %1591, %1473
  %1595 = fsub fast float %1592, %1474
  %1596 = fsub fast float %1593, %1475
  %1597 = fmul fast float %1594, %1498
  %1598 = fmul fast float %1595, %1498
  %1599 = fmul fast float %1596, %1498
  %1600 = fadd fast float %1597, %1473
  %1601 = fadd fast float %1598, %1474
  %1602 = fadd fast float %1599, %1475
  %1603 = fadd fast float %1520, %1484
  %1604 = fsub fast float %1603, %1537
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fsub fast float %1605, %1484
  %1607 = fmul fast float %1606, %1498
  %1608 = fadd fast float %1607, %1484
  br label %1662

; <label>:1609                                    ; preds = %1497
  %1610 = and i32 %1500, 134217728
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1646, label %1612

; <label>:1612                                    ; preds = %1609
  %1613 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %1615 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fadd fast float %1615, -5.000000e-01
  %1619 = fmul fast float %1616, %1498
  %1620 = fmul fast float %1617, %1498
  %1621 = fmul fast float %1618, %1498
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fadd fast float %1621, 5.000000e-01
  %1625 = call float @dx.op.unary.f32(i32 24, float %1473)  ; Sqrt(value)
  %1626 = call float @dx.op.unary.f32(i32 24, float %1474)  ; Sqrt(value)
  %1627 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1628 = fmul fast float %1622, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1625
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1625
  %1633 = fmul fast float %1623, 2.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1634, %1626
  %1636 = fadd fast float %1635, %1633
  %1637 = fmul fast float %1636, %1626
  %1638 = fmul fast float %1624, 2.000000e+00
  %1639 = fsub fast float 1.000000e+00, %1638
  %1640 = fmul fast float %1639, %1627
  %1641 = fadd fast float %1640, %1638
  %1642 = fmul fast float %1641, %1627
  %1643 = fmul fast float %1632, %1632
  %1644 = fmul fast float %1637, %1637
  %1645 = fmul fast float %1642, %1642
  br label %1662

; <label>:1646                                    ; preds = %1609
  %1647 = fmul fast float %415, %415
  %1648 = fmul fast float %416, %416
  %1649 = fmul fast float %417, %417
  %1650 = fadd fast float %1647, -1.000000e+00
  %1651 = fadd fast float %1648, -1.000000e+00
  %1652 = fadd fast float %1649, -1.000000e+00
  %1653 = fmul fast float %1498, %1650
  %1654 = fmul fast float %1498, %1651
  %1655 = fmul fast float %1498, %1652
  %1656 = fadd fast float %1653, 1.000000e+00
  %1657 = fadd fast float %1654, 1.000000e+00
  %1658 = fadd fast float %1655, 1.000000e+00
  %1659 = fmul fast float %1656, %1473
  %1660 = fmul fast float %1657, %1474
  %1661 = fmul fast float %1658, %1475
  br label %1662

; <label>:1662                                    ; preds = %1646, %1612, %1503, %1459
  %1663 = phi float [ %1608, %1503 ], [ %1484, %1612 ], [ %1484, %1646 ], [ 0x3FA23C0BE0000000, %1459 ]
  %1664 = phi float [ %1600, %1503 ], [ %1643, %1612 ], [ %1659, %1646 ], [ 1.000000e+00, %1459 ]
  %1665 = phi float [ %1601, %1503 ], [ %1644, %1612 ], [ %1660, %1646 ], [ 1.000000e+00, %1459 ]
  %1666 = phi float [ %1602, %1503 ], [ %1645, %1612 ], [ %1661, %1646 ], [ 1.000000e+00, %1459 ]
  %1667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.i32 %1667, 1
  %1669 = and i32 %1668, 1
  %1670 = icmp ne i32 %1669, 0
  %1671 = add i32 %64, 356
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 32
  %1675 = icmp ne i32 %1674, 0
  %1676 = and i1 %1670, %1675
  %1677 = select i1 %1676, float 1.000000e+00, float %1664
  %1678 = select i1 %1676, float 0x3FD3333340000000, float %1665
  %1679 = select i1 %1676, float 0x3FD3333340000000, float %1666
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 32
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1756, label %1684

; <label>:1684                                    ; preds = %1662
  %1685 = add i32 %64, 108
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = add i32 %64, 396
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = add i32 %1690, 0
  %1692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1692, %dx.types.Handle %121, float %1384, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1697 = extractvalue %dx.types.ResRet.f32 %1693, 3
  %1698 = and i32 %1687, 255
  %1699 = uitofp i32 %1698 to float
  %1700 = lshr i32 %1687, 8
  %1701 = and i32 %1700, 255
  %1702 = uitofp i32 %1701 to float
  %1703 = lshr i32 %1687, 16
  %1704 = and i32 %1703, 255
  %1705 = uitofp i32 %1704 to float
  %1706 = fmul fast float %1705, 0x3F70101000000000
  %1707 = fmul fast float %1694, %1699
  %1708 = fadd fast float %1707, %1702
  %1709 = fmul fast float %1708, 0x3F70101000000000
  %1710 = fadd fast float %1695, -5.000000e-01
  %1711 = fadd fast float %1697, -5.000000e-01
  %1712 = fmul fast float %1710, %1706
  %1713 = fmul fast float %1711, %1706
  %1714 = fadd fast float %1712, 5.000000e-01
  %1715 = fadd fast float %1713, 5.000000e-01
  %1716 = fmul fast float %1714, 2.000000e+00
  %1717 = fadd fast float %1716, -1.000000e+00
  %1718 = fmul fast float %1715, 2.000000e+00
  %1719 = fadd fast float %1718, -1.000000e+00
  %1720 = fadd fast float %1717, %1719
  %1721 = fmul fast float %1720, 5.000000e-01
  %1722 = fsub fast float %1717, %1719
  %1723 = fmul fast float %1722, 5.000000e-01
  %1724 = call float @dx.op.unary.f32(i32 6, float %1721)  ; FAbs(value)
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = call float @dx.op.unary.f32(i32 6, float %1723)  ; FAbs(value)
  %1727 = fsub fast float %1725, %1726
  %1728 = call float @dx.op.dot3.f32(i32 55, float %1721, float %1723, float %1727, float %1721, float %1723, float %1727)  ; Dot3(ax,ay,az,bx,by,bz)
  %1729 = call float @dx.op.unary.f32(i32 25, float %1728)  ; Rsqrt(value)
  %1730 = fmul fast float %1721, %1729
  %1731 = fmul fast float %1723, %1729
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 67108864
  %1735 = icmp eq i32 %1734, 0
  br i1 %1735, label %1752, label %1736

; <label>:1736                                    ; preds = %1684
  %1737 = add i32 %64, 296
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 65535
  %1741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1740)  ; LegacyF16ToF32(value)
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = and i32 %1743, 65535
  %1745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1744)  ; LegacyF16ToF32(value)
  %1746 = lshr i32 %1739, 16
  %1747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1746)  ; LegacyF16ToF32(value)
  %1748 = fsub fast float %1709, %1747
  %1749 = fmul fast float %1748, %1741
  %1750 = fadd fast float %1749, %1745
  %1751 = call float @dx.op.unary.f32(i32 7, float %1750)  ; Saturate(value)
  br label %1752

; <label>:1752                                    ; preds = %1736, %1684
  %1753 = phi float [ %1751, %1736 ], [ %1709, %1684 ]
  %1754 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1288, float %1289)  ; Dot2(ax,ay,bx,by)
  %1755 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1290, float %1291)  ; Dot2(ax,ay,bx,by)
  br label %1756

; <label>:1756                                    ; preds = %1752, %1662
  %1757 = phi float [ %1753, %1752 ], [ 0x3FD6666660000000, %1662 ]
  %1758 = phi float [ %1754, %1752 ], [ 0.000000e+00, %1662 ]
  %1759 = phi float [ %1755, %1752 ], [ 0.000000e+00, %1662 ]
  %1760 = phi float [ %1696, %1752 ], [ 1.000000e+00, %1662 ]
  %1761 = add i32 %64, 176
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = lshr i32 %1763, 22
  %1765 = shl nuw nsw i32 %1764, 5
  %1766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1765)  ; LegacyF16ToF32(value)
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 64
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %1804, label %1771

; <label>:1771                                    ; preds = %1756
  %1772 = add i32 %64, 412
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = add i32 %1774, 0
  %1776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 131072
  %1780 = icmp eq i32 %1779, 0
  %1781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1776, %dx.types.Handle %121, float %1384, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.ResRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.ResRet.f32 %1781, 2
  %1785 = fmul fast float %398, %1782
  %1786 = fmul fast float %399, %1783
  %1787 = fmul fast float %400, %1784
  br i1 %1780, label %1794, label %1788

; <label>:1788                                    ; preds = %1771
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = fmul fast float %1790, %1785
  %1792 = fmul fast float %1790, %1786
  %1793 = fmul fast float %1790, %1787
  br label %1794

; <label>:1794                                    ; preds = %1788, %1771
  %1795 = phi float [ %1791, %1788 ], [ %1785, %1771 ]
  %1796 = phi float [ %1792, %1788 ], [ %1786, %1771 ]
  %1797 = phi float [ %1793, %1788 ], [ %1787, %1771 ]
  %1798 = fmul fast float %1795, %1766
  %1799 = select i1 %280, float %1798, float %1795
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1799, float %1796, float %1797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = select i1 %280, float 0.000000e+00, float %1795
  %1802 = select i1 %280, float %1800, float %1796
  %1803 = select i1 %280, float 0.000000e+00, float %1797
  br label %1804

; <label>:1804                                    ; preds = %1794, %1756
  %1805 = phi float [ %1801, %1794 ], [ 0.000000e+00, %1756 ]
  %1806 = phi float [ %1802, %1794 ], [ 0.000000e+00, %1756 ]
  %1807 = phi float [ %1803, %1794 ], [ 0.000000e+00, %1756 ]
  %1808 = add i32 %64, 112
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = lshr i32 %1810, 8
  %1814 = and i32 %1813, 255
  %1815 = uitofp i32 %1814 to float
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1677, float %1678, float %1679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = fmul fast float %1815, %1816
  %1818 = fadd fast float %1817, %1812
  %1819 = fmul fast float %1818, 0x3F70101020000000
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  br i1 %1276, label %1821, label %1829

; <label>:1821                                    ; preds = %1804
  %1822 = fsub fast float 1.000000e+00, %1457
  %1823 = fmul fast float %1822, %1264
  %1824 = fmul fast float %1822, %1265
  %1825 = fmul fast float %1822, %1266
  %1826 = fmul fast float %1822, %1267
  %1827 = fmul fast float %1822, %1268
  %1828 = fmul fast float %1822, %1269
  br label %1829

; <label>:1829                                    ; preds = %1821, %1804
  %1830 = phi float [ %1823, %1821 ], [ %1264, %1804 ]
  %1831 = phi float [ %1824, %1821 ], [ %1265, %1804 ]
  %1832 = phi float [ %1825, %1821 ], [ %1266, %1804 ]
  %1833 = phi float [ %1826, %1821 ], [ %1267, %1804 ]
  %1834 = phi float [ %1827, %1821 ], [ %1268, %1804 ]
  %1835 = phi float [ %1828, %1821 ], [ %1269, %1804 ]
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 3
  %1839 = icmp eq i32 %1838, 3
  br i1 %1839, label %1918, label %1840

; <label>:1840                                    ; preds = %1829
  %1841 = and i32 %1837, 16
  %1842 = icmp ne i32 %1841, 0
  %1843 = select i1 %1842, float %1457, float 0.000000e+00
  %1844 = icmp eq i32 %1838, 0
  br i1 %1844, label %1845, label %1873

; <label>:1845                                    ; preds = %1840
  %1846 = and i32 %1837, 64
  %1847 = icmp ne i32 %1846, 0
  %1848 = select i1 %1847, float %1457, float 0.000000e+00
  %1849 = fsub fast float %1677, %1830
  %1850 = fsub fast float %1678, %1831
  %1851 = fsub fast float %1679, %1832
  %1852 = fmul fast float %1843, %1849
  %1853 = fmul fast float %1843, %1850
  %1854 = fmul fast float %1843, %1851
  %1855 = fadd fast float %1852, %1830
  %1856 = fadd fast float %1853, %1831
  %1857 = fadd fast float %1854, %1832
  %1858 = fsub fast float %1663, %1270
  %1859 = fmul fast float %1843, %1858
  %1860 = fadd fast float %1859, %1270
  %1861 = fsub fast float %1805, %1833
  %1862 = fsub fast float %1806, %1834
  %1863 = fsub fast float %1807, %1835
  %1864 = fmul fast float %1848, %1861
  %1865 = fmul fast float %1848, %1862
  %1866 = fmul fast float %1848, %1863
  %1867 = fadd fast float %1864, %1833
  %1868 = fadd fast float %1865, %1834
  %1869 = fadd fast float %1866, %1835
  %1870 = fsub fast float %1820, %1274
  %1871 = fmul fast float %1843, %1870
  %1872 = fadd fast float %1871, %1274
  br label %1918

; <label>:1873                                    ; preds = %1840
  %1874 = icmp eq i32 %1838, 1
  br i1 %1874, label %1875, label %1888

; <label>:1875                                    ; preds = %1873
  %1876 = fadd fast float %1677, -1.000000e+00
  %1877 = fadd fast float %1678, -1.000000e+00
  %1878 = fadd fast float %1679, -1.000000e+00
  %1879 = fmul fast float %1843, %1876
  %1880 = fmul fast float %1843, %1877
  %1881 = fmul fast float %1843, %1878
  %1882 = fadd fast float %1879, 1.000000e+00
  %1883 = fadd fast float %1880, 1.000000e+00
  %1884 = fadd fast float %1881, 1.000000e+00
  %1885 = fmul fast float %1882, %1830
  %1886 = fmul fast float %1883, %1831
  %1887 = fmul fast float %1884, %1832
  br label %1918

; <label>:1888                                    ; preds = %1873
  %1889 = icmp eq i32 %1838, 2
  br i1 %1889, label %1890, label %1918

; <label>:1890                                    ; preds = %1888
  %1891 = call float @dx.op.unary.f32(i32 24, float %1677)  ; Sqrt(value)
  %1892 = call float @dx.op.unary.f32(i32 24, float %1678)  ; Sqrt(value)
  %1893 = call float @dx.op.unary.f32(i32 24, float %1679)  ; Sqrt(value)
  %1894 = fadd fast float %1891, -5.000000e-01
  %1895 = fadd fast float %1892, -5.000000e-01
  %1896 = fadd fast float %1893, -5.000000e-01
  %1897 = fmul fast float %1894, %1843
  %1898 = fmul fast float %1895, %1843
  %1899 = fmul fast float %1896, %1843
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fadd fast float %1898, 5.000000e-01
  %1902 = fadd fast float %1899, 5.000000e-01
  %1903 = fmul fast float %1900, 2.000000e+00
  %1904 = fsub fast float 1.000000e+00, %1903
  %1905 = fmul fast float %1904, %1830
  %1906 = fadd fast float %1905, %1903
  %1907 = fmul fast float %1906, %1830
  %1908 = fmul fast float %1901, 2.000000e+00
  %1909 = fsub fast float 1.000000e+00, %1908
  %1910 = fmul fast float %1909, %1831
  %1911 = fadd fast float %1910, %1908
  %1912 = fmul fast float %1911, %1831
  %1913 = fmul fast float %1902, 2.000000e+00
  %1914 = fsub fast float 1.000000e+00, %1913
  %1915 = fmul fast float %1914, %1832
  %1916 = fadd fast float %1915, %1913
  %1917 = fmul fast float %1916, %1832
  br label %1918

; <label>:1918                                    ; preds = %1890, %1888, %1875, %1845, %1829
  %1919 = phi float [ %1830, %1829 ], [ %1907, %1890 ], [ %1830, %1888 ], [ %1885, %1875 ], [ %1855, %1845 ]
  %1920 = phi float [ %1831, %1829 ], [ %1912, %1890 ], [ %1831, %1888 ], [ %1886, %1875 ], [ %1856, %1845 ]
  %1921 = phi float [ %1832, %1829 ], [ %1917, %1890 ], [ %1832, %1888 ], [ %1887, %1875 ], [ %1857, %1845 ]
  %1922 = phi float [ %1833, %1829 ], [ %1833, %1890 ], [ %1833, %1888 ], [ %1833, %1875 ], [ %1867, %1845 ]
  %1923 = phi float [ %1834, %1829 ], [ %1834, %1890 ], [ %1834, %1888 ], [ %1834, %1875 ], [ %1868, %1845 ]
  %1924 = phi float [ %1835, %1829 ], [ %1835, %1890 ], [ %1835, %1888 ], [ %1835, %1875 ], [ %1869, %1845 ]
  %1925 = phi float [ %1270, %1829 ], [ %1270, %1890 ], [ %1270, %1888 ], [ %1270, %1875 ], [ %1860, %1845 ]
  %1926 = phi float [ %1274, %1829 ], [ %1274, %1890 ], [ %1274, %1888 ], [ %1274, %1875 ], [ %1872, %1845 ]
  %1927 = and i32 %1837, 12
  %1928 = icmp eq i32 %1927, 12
  br i1 %1928, label %2001, label %1929

; <label>:1929                                    ; preds = %1918
  %1930 = and i32 %1837, 2097184
  %1931 = icmp eq i32 %1930, 2097184
  %1932 = select i1 %1931, float %1457, float 0.000000e+00
  %1933 = and i32 %1837, 4194336
  %1934 = icmp eq i32 %1933, 4194336
  %1935 = select i1 %1934, float %1457, float 0.000000e+00
  %1936 = and i32 %1837, 8388640
  %1937 = icmp eq i32 %1936, 8388640
  %1938 = select i1 %1937, float %1457, float 0.000000e+00
  %1939 = icmp eq i32 %1927, 0
  br i1 %1939, label %1940, label %1953

; <label>:1940                                    ; preds = %1929
  %1941 = fsub fast float %1758, %1262
  %1942 = fsub fast float %1759, %1263
  %1943 = fmul fast float %1932, %1941
  %1944 = fmul fast float %1932, %1942
  %1945 = fadd fast float %1943, %1262
  %1946 = fadd fast float %1944, %1263
  %1947 = fsub fast float %1760, %1273
  %1948 = fmul fast float %1935, %1947
  %1949 = fadd fast float %1948, %1273
  %1950 = fsub fast float %1757, %1272
  %1951 = fmul fast float %1938, %1950
  %1952 = fadd fast float %1951, %1272
  br label %2001

; <label>:1953                                    ; preds = %1929
  %1954 = icmp eq i32 %1927, 4
  br i1 %1954, label %1955, label %1987

; <label>:1955                                    ; preds = %1953
  %1956 = fmul fast float %1932, %1758
  %1957 = fmul fast float %1932, %1759
  %1958 = fadd fast float %1956, %1262
  %1959 = fadd fast float %1957, %1263
  %1960 = call float @dx.op.binary.f32(i32 36, float %1273, float %1760)  ; FMin(a,b)
  %1961 = fsub fast float %1960, %1273
  %1962 = fmul fast float %1961, %1935
  %1963 = fadd fast float %1962, %1273
  %1964 = fadd fast float %1757, %1272
  %1965 = fmul fast float %1964, 0x3FF337FAE0000000
  %1966 = fmul fast float %1272, %1272
  %1967 = fmul fast float %1757, %1757
  %1968 = fadd fast float %1967, %1966
  %1969 = fmul fast float %1968, 0x3FE5152B00000000
  %1970 = fmul fast float %1272, 0xBFCC1F85E0000000
  %1971 = fmul fast float %1970, %1757
  %1972 = fadd fast float %1971, 0xBFE1363700000000
  %1973 = fadd fast float %1972, %1965
  %1974 = fsub fast float %1973, %1969
  %1975 = fmul fast float %1964, 0x3FBA6F0D00000000
  %1976 = fmul fast float %1968, 0x3FD0432880000000
  %1977 = fmul fast float %1272, 0xBFEF110800000000
  %1978 = fmul fast float %1977, %1757
  %1979 = fadd fast float %1978, 1.000000e+00
  %1980 = fsub fast float %1979, %1975
  %1981 = fadd fast float %1980, %1976
  %1982 = fdiv fast float %1974, %1981
  %1983 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1984 = fsub fast float %1983, %1272
  %1985 = fmul fast float %1984, %1938
  %1986 = fadd fast float %1985, %1272
  br label %2001

; <label>:1987                                    ; preds = %1953
  %1988 = icmp eq i32 %1927, 8
  br i1 %1988, label %1989, label %2001

; <label>:1989                                    ; preds = %1987
  %1990 = fmul fast float %1932, %1758
  %1991 = fmul fast float %1932, %1759
  %1992 = fadd fast float %1990, %1262
  %1993 = fadd fast float %1991, %1263
  %1994 = call float @dx.op.binary.f32(i32 36, float %1273, float %1760)  ; FMin(a,b)
  %1995 = fsub fast float %1994, %1273
  %1996 = fmul fast float %1995, %1935
  %1997 = fadd fast float %1996, %1273
  %1998 = fsub fast float %1757, %1272
  %1999 = fmul fast float %1938, %1998
  %2000 = fadd fast float %1999, %1272
  br label %2001

; <label>:2001                                    ; preds = %1989, %1987, %1955, %1940, %1918, %1456, %1275, %1261
  %2002 = phi float [ %1262, %1918 ], [ %1262, %1456 ], [ %1262, %1261 ], [ %1992, %1989 ], [ %1262, %1987 ], [ %1958, %1955 ], [ %1945, %1940 ], [ %1262, %1275 ]
  %2003 = phi float [ %1263, %1918 ], [ %1263, %1456 ], [ %1263, %1261 ], [ %1993, %1989 ], [ %1263, %1987 ], [ %1959, %1955 ], [ %1946, %1940 ], [ %1263, %1275 ]
  %2004 = phi float [ %1919, %1918 ], [ %1264, %1456 ], [ %1264, %1261 ], [ %1919, %1989 ], [ %1919, %1987 ], [ %1919, %1955 ], [ %1919, %1940 ], [ %1264, %1275 ]
  %2005 = phi float [ %1920, %1918 ], [ %1265, %1456 ], [ %1265, %1261 ], [ %1920, %1989 ], [ %1920, %1987 ], [ %1920, %1955 ], [ %1920, %1940 ], [ %1265, %1275 ]
  %2006 = phi float [ %1921, %1918 ], [ %1266, %1456 ], [ %1266, %1261 ], [ %1921, %1989 ], [ %1921, %1987 ], [ %1921, %1955 ], [ %1921, %1940 ], [ %1266, %1275 ]
  %2007 = phi float [ %1922, %1918 ], [ %1267, %1456 ], [ %1267, %1261 ], [ %1922, %1989 ], [ %1922, %1987 ], [ %1922, %1955 ], [ %1922, %1940 ], [ %1267, %1275 ]
  %2008 = phi float [ %1923, %1918 ], [ %1268, %1456 ], [ %1268, %1261 ], [ %1923, %1989 ], [ %1923, %1987 ], [ %1923, %1955 ], [ %1923, %1940 ], [ %1268, %1275 ]
  %2009 = phi float [ %1924, %1918 ], [ %1269, %1456 ], [ %1269, %1261 ], [ %1924, %1989 ], [ %1924, %1987 ], [ %1924, %1955 ], [ %1924, %1940 ], [ %1269, %1275 ]
  %2010 = phi float [ %1925, %1918 ], [ %1270, %1456 ], [ %1270, %1261 ], [ %1925, %1989 ], [ %1925, %1987 ], [ %1925, %1955 ], [ %1925, %1940 ], [ %1270, %1275 ]
  %2011 = phi float [ %1272, %1918 ], [ %1272, %1456 ], [ %1272, %1261 ], [ %2000, %1989 ], [ %1272, %1987 ], [ %1986, %1955 ], [ %1952, %1940 ], [ %1272, %1275 ]
  %2012 = phi float [ %1273, %1918 ], [ %1273, %1456 ], [ %1273, %1261 ], [ %1997, %1989 ], [ %1273, %1987 ], [ %1963, %1955 ], [ %1949, %1940 ], [ %1273, %1275 ]
  %2013 = phi float [ %1926, %1918 ], [ %1274, %1456 ], [ %1274, %1261 ], [ %1926, %1989 ], [ %1926, %1987 ], [ %1926, %1955 ], [ %1926, %1940 ], [ %1274, %1275 ]
  br i1 %662, label %2740, label %2014

; <label>:2014                                    ; preds = %2001
  %2015 = icmp ult i32 %718, 3
  %2016 = add i32 %64, 56
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = add i32 %64, 60
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = or i32 %2021, %2018
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2740, label %2024

; <label>:2024                                    ; preds = %2014
  %2025 = and i32 %2018, 262144
  %2026 = icmp ne i32 %2025, 0
  %2027 = select i1 %2026, float %71, float 1.000000e+00
  %2028 = select i1 %2026, float %72, float 0.000000e+00
  %2029 = select i1 %2026, float %73, float 0.000000e+00
  %2030 = select i1 %2026, float %74, float 1.000000e+00
  %2031 = select i1 %2026, float %75, float %103
  %2032 = select i1 %2026, float %76, float %104
  %2033 = add i32 %64, 316
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = lshr i32 %2035, 16
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = fmul fast float %2037, 0x3F50624DE0000000
  %2039 = add i32 %64, 120
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = lshr i32 %2041, 16
  %2043 = and i32 %2042, 255
  %2044 = lshr i32 %2041, 24
  %2045 = add i32 %64, 324
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 65535
  %2049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2048)  ; LegacyF16ToF32(value)
  %2050 = lshr i32 %2047, 16
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = add i32 %64, 64
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = lshr i32 %2054, 22
  %2056 = shl nuw nsw i32 %2055, 5
  %2057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2056)  ; LegacyF16ToF32(value)
  %2058 = shl i32 %2054, 4
  %2059 = and i32 %2058, 32752
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = lshr i32 %2054, 7
  %2062 = and i32 %2061, 32752
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 3
  %2066 = fmul fast float %2065, 1.000000e+03
  %2067 = fmul fast float %2066, %546
  %2068 = call float @dx.op.unary.f32(i32 22, float %2067)  ; Frc(value)
  %2069 = fadd fast float %2068, %534
  %2070 = fmul fast float %2066, %548
  %2071 = call float @dx.op.unary.f32(i32 22, float %2070)  ; Frc(value)
  %2072 = fadd fast float %2071, %535
  %2073 = fmul fast float %2038, %2066
  %2074 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2075 = fmul fast float %2074, 0x401921FB60000000
  %2076 = fadd fast float %2075, %2057
  %2077 = call float @dx.op.unary.f32(i32 13, float %2076)  ; Sin(value)
  %2078 = call float @dx.op.unary.f32(i32 12, float %2076)  ; Cos(value)
  %2079 = fsub fast float -0.000000e+00, %2077
  %2080 = fadd fast float %2031, -5.000000e-01
  %2081 = fadd fast float %2032, -5.000000e-01
  %2082 = fmul fast float %2049, %2080
  %2083 = fmul fast float %2051, %2081
  %2084 = fadd fast float %2082, 5.000000e-01
  %2085 = fadd fast float %2083, 5.000000e-01
  %2086 = fmul fast float %2060, %2084
  %2087 = fmul fast float %2063, %2085
  %2088 = fmul fast float %2078, %2086
  %2089 = call float @dx.op.tertiary.f32(i32 46, float %2079, float %2087, float %2088)  ; FMad(a,b,c)
  %2090 = fmul fast float %2077, %2086
  %2091 = call float @dx.op.tertiary.f32(i32 46, float %2078, float %2087, float %2090)  ; FMad(a,b,c)
  %2092 = fadd fast float %2069, %2089
  %2093 = fadd fast float %2072, %2091
  %2094 = icmp ugt i32 %2043, 1
  %2095 = icmp ugt i32 %2041, 33554431
  %2096 = or i1 %2095, %2094
  br i1 %2096, label %2097, label %2122

; <label>:2097                                    ; preds = %2024
  %2098 = add i32 %64, 260
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = lshr i32 %2100, 16
  %2102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2101)  ; LegacyF16ToF32(value)
  %2103 = fmul fast float %2065, %2102
  %2104 = call float @dx.op.unary.f32(i32 22, float %2103)  ; Frc(value)
  %2105 = mul nuw nsw i32 %2043, %2044
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2104, %2106
  %2108 = call float @dx.op.unary.f32(i32 27, float %2107)  ; Round_ni(value)
  %2109 = fptoui float %2108 to i32
  %2110 = urem i32 %2109, %2043
  %2111 = udiv i32 %2109, %2044
  %2112 = call float @dx.op.unary.f32(i32 22, float %2092)  ; Frc(value)
  %2113 = call float @dx.op.unary.f32(i32 22, float %2093)  ; Frc(value)
  %2114 = uitofp i32 %2110 to float
  %2115 = uitofp i32 %2111 to float
  %2116 = fadd fast float %2112, %2114
  %2117 = fadd fast float %2113, %2115
  %2118 = uitofp i32 %2043 to float
  %2119 = uitofp i32 %2044 to float
  %2120 = fdiv fast float %2116, %2118
  %2121 = fdiv fast float %2117, %2119
  br label %2122

; <label>:2122                                    ; preds = %2097, %2024
  %2123 = phi float [ %2120, %2097 ], [ %2092, %2024 ]
  %2124 = phi float [ %2121, %2097 ], [ %2093, %2024 ]
  %2125 = and i32 %2018, 256
  %2126 = icmp eq i32 %2125, 0
  br i1 %2126, label %2173, label %2127

; <label>:2127                                    ; preds = %2122
  %2128 = add i32 %64, 448
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = add i32 %2130, 0
  %2132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2133 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2132, %dx.types.Handle %122, float %2123, float %2124, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2134 = extractvalue %dx.types.ResRet.f32 %2133, 0
  %2135 = add i32 %64, 132
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = shl i32 %2137, 4
  %2139 = and i32 %2138, 32752
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = lshr i32 %2137, 7
  %2142 = and i32 %2141, 32752
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = fsub fast float 1.000000e+00, %714
  %2145 = call float @dx.op.binary.f32(i32 35, float %2144, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2146 = bitcast float %714 to i32
  %2147 = sitofp i32 %2146 to float
  %2148 = fadd fast float %2147, 0xC1CFBF8940000000
  %2149 = fmul fast float %2143, %2148
  %2150 = fadd fast float %2149, 0x41CFBF8940000000
  %2151 = fptosi float %2150 to i32
  %2152 = bitcast i32 %2151 to float
  %2153 = bitcast float %2145 to i32
  %2154 = sitofp i32 %2153 to float
  %2155 = fadd fast float %2154, 0xC1CFBF8940000000
  %2156 = fmul fast float %2155, %2143
  %2157 = fadd fast float %2156, 0x41CFBF8940000000
  %2158 = fptosi float %2157 to i32
  %2159 = bitcast i32 %2158 to float
  %2160 = fmul fast float %2152, %2140
  %2161 = fmul fast float %2159, %2140
  %2162 = fsub fast float %2145, %2160
  %2163 = fadd fast float %2161, %2145
  %2164 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2166 = fsub fast float %2134, %2164
  %2167 = fsub fast float %2165, %2164
  %2168 = bitcast float %2167 to i32
  %2169 = sub nsw i32 2129859010, %2168
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2170, %2166
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  br label %2173

; <label>:2173                                    ; preds = %2127, %2122
  %2174 = phi float [ %2172, %2127 ], [ %714, %2122 ]
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 128
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2195, label %2179

; <label>:2179                                    ; preds = %2173
  %2180 = add i32 %64, 432
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = add i32 %2182, 0
  %2184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2184, %dx.types.Handle %122, float %2123, float %2124, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 524288
  %2190 = icmp ne i32 %2189, 0
  %2191 = fcmp fast ogt float %2186, 0x3FE0101020000000
  %2192 = select i1 %2191, float 1.000000e+00, float 0.000000e+00
  %2193 = select i1 %2190, float %2192, float %2186
  %2194 = fmul fast float %2193, %2174
  br label %2195

; <label>:2195                                    ; preds = %2179, %2173
  %2196 = phi float [ %2194, %2179 ], [ %2174, %2173 ]
  %2197 = fcmp fast ult float %2196, 0x3F70101020000000
  br i1 %2197, label %2740, label %2198

; <label>:2198                                    ; preds = %2195
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, 16
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2401, label %2203

; <label>:2203                                    ; preds = %2198
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = add i32 %64, 384
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = add i32 %2208, 0
  %2210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2210, %dx.types.Handle %121, float %2123, float %2124, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  %2213 = extractvalue %dx.types.ResRet.f32 %2211, 1
  %2214 = extractvalue %dx.types.ResRet.f32 %2211, 2
  %2215 = extractvalue %dx.types.ResRet.f32 %2211, 3
  %2216 = and i32 %2205, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = lshr i32 %2205, 8
  %2219 = and i32 %2218, 255
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2215, %2217
  %2222 = fadd fast float %2221, %2220
  %2223 = fmul fast float %2222, 0x3F70101000000000
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = and i32 %2225, 512
  %2227 = icmp eq i32 %2226, 0
  br i1 %2227, label %2236, label %2228

; <label>:2228                                    ; preds = %2203
  %2229 = add i32 %64, 468
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = add i32 %2231, 0
  %2233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2233, %dx.types.Handle %122, float %2123, float %2124, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  br label %2236

; <label>:2236                                    ; preds = %2228, %2203
  %2237 = phi float [ %2235, %2228 ], [ 1.000000e+00, %2203 ]
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 33554432
  %2241 = icmp eq i32 %2240, 0
  br i1 %2241, label %2348, label %2242

; <label>:2242                                    ; preds = %2236
  %2243 = add i32 %64, 256
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 65535
  %2247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2246)  ; LegacyF16ToF32(value)
  %2248 = lshr i32 %2245, 16
  %2249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2248)  ; LegacyF16ToF32(value)
  %2250 = add i32 %64, 260
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 65535
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = lshr i32 %2256, 24
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = and i32 %2256, 255
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2261, 0x3F70101020000000
  %2263 = lshr i32 %2256, 8
  %2264 = and i32 %2263, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = lshr i32 %2256, 16
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = add i32 %64, 252
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = lshr i32 %2273, 24
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101020000000
  %2277 = and i32 %2273, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = fmul fast float %2278, 0x3F70101020000000
  %2280 = lshr i32 %2273, 8
  %2281 = and i32 %2280, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101020000000
  %2284 = lshr i32 %2273, 16
  %2285 = and i32 %2284, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = bitcast float %2212 to i32
  %2289 = ashr i32 %2288, 1
  %2290 = sub nsw i32 1597463174, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2212, 5.000000e-01
  %2293 = fmul fast float %2291, %2291
  %2294 = fmul fast float %2293, %2292
  %2295 = fsub fast float 1.500000e+00, %2294
  %2296 = fmul fast float %2291, %2212
  %2297 = fmul fast float %2296, %2295
  %2298 = bitcast float %2213 to i32
  %2299 = ashr i32 %2298, 1
  %2300 = sub nsw i32 1597463174, %2299
  %2301 = bitcast i32 %2300 to float
  %2302 = fmul fast float %2213, 5.000000e-01
  %2303 = fmul fast float %2301, %2301
  %2304 = fmul fast float %2303, %2302
  %2305 = fsub fast float 1.500000e+00, %2304
  %2306 = fmul fast float %2301, %2213
  %2307 = fmul fast float %2306, %2305
  %2308 = bitcast float %2214 to i32
  %2309 = ashr i32 %2308, 1
  %2310 = sub nsw i32 1597463174, %2309
  %2311 = bitcast i32 %2310 to float
  %2312 = fmul fast float %2214, 5.000000e-01
  %2313 = fmul fast float %2311, %2311
  %2314 = fmul fast float %2313, %2312
  %2315 = fsub fast float 1.500000e+00, %2314
  %2316 = fmul fast float %2311, %2214
  %2317 = fmul fast float %2316, %2315
  %2318 = fsub fast float %2297, %2279
  %2319 = fsub fast float %2307, %2283
  %2320 = fsub fast float %2317, %2287
  %2321 = fmul fast float %2318, %2247
  %2322 = fmul fast float %2319, %2249
  %2323 = fmul fast float %2320, %2254
  %2324 = fadd fast float %2321, %2262
  %2325 = fadd fast float %2322, %2266
  %2326 = fadd fast float %2323, %2270
  %2327 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2328 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2329 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2330 = fmul fast float %2327, %2327
  %2331 = fmul fast float %2328, %2328
  %2332 = fmul fast float %2329, %2329
  %2333 = fsub fast float %2330, %2212
  %2334 = fsub fast float %2331, %2213
  %2335 = fsub fast float %2332, %2214
  %2336 = fmul fast float %2333, %2237
  %2337 = fmul fast float %2334, %2237
  %2338 = fmul fast float %2335, %2237
  %2339 = fadd fast float %2336, %2212
  %2340 = fadd fast float %2337, %2213
  %2341 = fadd fast float %2338, %2214
  %2342 = fadd fast float %2259, %2223
  %2343 = fsub fast float %2342, %2276
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = fsub fast float %2344, %2223
  %2346 = fmul fast float %2345, %2237
  %2347 = fadd fast float %2346, %2223
  br label %2401

; <label>:2348                                    ; preds = %2236
  %2349 = and i32 %2239, 134217728
  %2350 = icmp eq i32 %2349, 0
  br i1 %2350, label %2385, label %2351

; <label>:2351                                    ; preds = %2348
  %2352 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %2353 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %2354 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %2355 = fadd fast float %2352, -5.000000e-01
  %2356 = fadd fast float %2353, -5.000000e-01
  %2357 = fadd fast float %2354, -5.000000e-01
  %2358 = fmul fast float %2355, %2237
  %2359 = fmul fast float %2356, %2237
  %2360 = fmul fast float %2357, %2237
  %2361 = fadd fast float %2358, 5.000000e-01
  %2362 = fadd fast float %2359, 5.000000e-01
  %2363 = fadd fast float %2360, 5.000000e-01
  %2364 = call float @dx.op.unary.f32(i32 24, float %2212)  ; Sqrt(value)
  %2365 = call float @dx.op.unary.f32(i32 24, float %2213)  ; Sqrt(value)
  %2366 = call float @dx.op.unary.f32(i32 24, float %2214)  ; Sqrt(value)
  %2367 = fmul fast float %2361, 2.000000e+00
  %2368 = fsub fast float 1.000000e+00, %2367
  %2369 = fmul fast float %2368, %2364
  %2370 = fadd fast float %2369, %2367
  %2371 = fmul fast float %2370, %2364
  %2372 = fmul fast float %2362, 2.000000e+00
  %2373 = fsub fast float 1.000000e+00, %2372
  %2374 = fmul fast float %2373, %2365
  %2375 = fadd fast float %2374, %2372
  %2376 = fmul fast float %2375, %2365
  %2377 = fmul fast float %2363, 2.000000e+00
  %2378 = fsub fast float 1.000000e+00, %2377
  %2379 = fmul fast float %2378, %2366
  %2380 = fadd fast float %2379, %2377
  %2381 = fmul fast float %2380, %2366
  %2382 = fmul fast float %2371, %2371
  %2383 = fmul fast float %2376, %2376
  %2384 = fmul fast float %2381, %2381
  br label %2401

; <label>:2385                                    ; preds = %2348
  %2386 = fmul fast float %522, %522
  %2387 = fmul fast float %523, %523
  %2388 = fmul fast float %524, %524
  %2389 = fadd fast float %2386, -1.000000e+00
  %2390 = fadd fast float %2387, -1.000000e+00
  %2391 = fadd fast float %2388, -1.000000e+00
  %2392 = fmul fast float %2237, %2389
  %2393 = fmul fast float %2237, %2390
  %2394 = fmul fast float %2237, %2391
  %2395 = fadd fast float %2392, 1.000000e+00
  %2396 = fadd fast float %2393, 1.000000e+00
  %2397 = fadd fast float %2394, 1.000000e+00
  %2398 = fmul fast float %2395, %2212
  %2399 = fmul fast float %2396, %2213
  %2400 = fmul fast float %2397, %2214
  br label %2401

; <label>:2401                                    ; preds = %2385, %2351, %2242, %2198
  %2402 = phi float [ %2347, %2242 ], [ %2223, %2351 ], [ %2223, %2385 ], [ 0x3FA23C0BE0000000, %2198 ]
  %2403 = phi float [ %2339, %2242 ], [ %2382, %2351 ], [ %2398, %2385 ], [ 1.000000e+00, %2198 ]
  %2404 = phi float [ %2340, %2242 ], [ %2383, %2351 ], [ %2399, %2385 ], [ 1.000000e+00, %2198 ]
  %2405 = phi float [ %2341, %2242 ], [ %2384, %2351 ], [ %2400, %2385 ], [ 1.000000e+00, %2198 ]
  %2406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.i32 %2406, 1
  %2408 = and i32 %2407, 1
  %2409 = icmp ne i32 %2408, 0
  %2410 = add i32 %64, 356
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 32
  %2414 = icmp ne i32 %2413, 0
  %2415 = and i1 %2409, %2414
  %2416 = select i1 %2415, float 1.000000e+00, float %2403
  %2417 = select i1 %2415, float 0x3FD3333340000000, float %2404
  %2418 = select i1 %2415, float 0x3FD3333340000000, float %2405
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = and i32 %2420, 32
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %2495, label %2423

; <label>:2423                                    ; preds = %2401
  %2424 = add i32 %64, 124
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = add i32 %64, 400
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = add i32 %2429, 0
  %2431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2431, %dx.types.Handle %121, float %2123, float %2124, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.ResRet.f32 %2432, 1
  %2435 = extractvalue %dx.types.ResRet.f32 %2432, 2
  %2436 = extractvalue %dx.types.ResRet.f32 %2432, 3
  %2437 = and i32 %2426, 255
  %2438 = uitofp i32 %2437 to float
  %2439 = lshr i32 %2426, 8
  %2440 = and i32 %2439, 255
  %2441 = uitofp i32 %2440 to float
  %2442 = lshr i32 %2426, 16
  %2443 = and i32 %2442, 255
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2444, 0x3F70101000000000
  %2446 = fmul fast float %2433, %2438
  %2447 = fadd fast float %2446, %2441
  %2448 = fmul fast float %2447, 0x3F70101000000000
  %2449 = fadd fast float %2434, -5.000000e-01
  %2450 = fadd fast float %2436, -5.000000e-01
  %2451 = fmul fast float %2449, %2445
  %2452 = fmul fast float %2450, %2445
  %2453 = fadd fast float %2451, 5.000000e-01
  %2454 = fadd fast float %2452, 5.000000e-01
  %2455 = fmul fast float %2453, 2.000000e+00
  %2456 = fadd fast float %2455, -1.000000e+00
  %2457 = fmul fast float %2454, 2.000000e+00
  %2458 = fadd fast float %2457, -1.000000e+00
  %2459 = fadd fast float %2456, %2458
  %2460 = fmul fast float %2459, 5.000000e-01
  %2461 = fsub fast float %2456, %2458
  %2462 = fmul fast float %2461, 5.000000e-01
  %2463 = call float @dx.op.unary.f32(i32 6, float %2460)  ; FAbs(value)
  %2464 = fsub fast float 1.000000e+00, %2463
  %2465 = call float @dx.op.unary.f32(i32 6, float %2462)  ; FAbs(value)
  %2466 = fsub fast float %2464, %2465
  %2467 = call float @dx.op.dot3.f32(i32 55, float %2460, float %2462, float %2466, float %2460, float %2462, float %2466)  ; Dot3(ax,ay,az,bx,by,bz)
  %2468 = call float @dx.op.unary.f32(i32 25, float %2467)  ; Rsqrt(value)
  %2469 = fmul fast float %2460, %2468
  %2470 = fmul fast float %2462, %2468
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 67108864
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2491, label %2475

; <label>:2475                                    ; preds = %2423
  %2476 = add i32 %64, 312
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 65535
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 65535
  %2484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2483)  ; LegacyF16ToF32(value)
  %2485 = lshr i32 %2478, 16
  %2486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2485)  ; LegacyF16ToF32(value)
  %2487 = fsub fast float %2448, %2486
  %2488 = fmul fast float %2487, %2480
  %2489 = fadd fast float %2488, %2484
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  br label %2491

; <label>:2491                                    ; preds = %2475, %2423
  %2492 = phi float [ %2490, %2475 ], [ %2448, %2423 ]
  %2493 = call float @dx.op.dot2.f32(i32 54, float %2469, float %2470, float %2027, float %2028)  ; Dot2(ax,ay,bx,by)
  %2494 = call float @dx.op.dot2.f32(i32 54, float %2469, float %2470, float %2029, float %2030)  ; Dot2(ax,ay,bx,by)
  br label %2495

; <label>:2495                                    ; preds = %2491, %2401
  %2496 = phi float [ %2492, %2491 ], [ 0x3FD6666660000000, %2401 ]
  %2497 = phi float [ %2493, %2491 ], [ 0.000000e+00, %2401 ]
  %2498 = phi float [ %2494, %2491 ], [ 0.000000e+00, %2401 ]
  %2499 = phi float [ %2435, %2491 ], [ 1.000000e+00, %2401 ]
  %2500 = add i32 %64, 192
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = lshr i32 %2502, 22
  %2504 = shl nuw nsw i32 %2503, 5
  %2505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2504)  ; LegacyF16ToF32(value)
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = and i32 %2507, 64
  %2509 = icmp eq i32 %2508, 0
  br i1 %2509, label %2543, label %2510

; <label>:2510                                    ; preds = %2495
  %2511 = add i32 %64, 416
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = add i32 %2513, 0
  %2515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 131072
  %2519 = icmp eq i32 %2518, 0
  %2520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2515, %dx.types.Handle %121, float %2123, float %2124, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.ResRet.f32 %2520, 1
  %2523 = extractvalue %dx.types.ResRet.f32 %2520, 2
  %2524 = fmul fast float %505, %2521
  %2525 = fmul fast float %506, %2522
  %2526 = fmul fast float %507, %2523
  br i1 %2519, label %2533, label %2527

; <label>:2527                                    ; preds = %2510
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = fmul fast float %2529, %2524
  %2531 = fmul fast float %2529, %2525
  %2532 = fmul fast float %2529, %2526
  br label %2533

; <label>:2533                                    ; preds = %2527, %2510
  %2534 = phi float [ %2530, %2527 ], [ %2524, %2510 ]
  %2535 = phi float [ %2531, %2527 ], [ %2525, %2510 ]
  %2536 = phi float [ %2532, %2527 ], [ %2526, %2510 ]
  %2537 = fmul fast float %2534, %2505
  %2538 = select i1 %280, float %2537, float %2534
  %2539 = call float @dx.op.dot3.f32(i32 55, float %2538, float %2535, float %2536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2540 = select i1 %280, float 0.000000e+00, float %2534
  %2541 = select i1 %280, float %2539, float %2535
  %2542 = select i1 %280, float 0.000000e+00, float %2536
  br label %2543

; <label>:2543                                    ; preds = %2533, %2495
  %2544 = phi float [ %2540, %2533 ], [ 0.000000e+00, %2495 ]
  %2545 = phi float [ %2541, %2533 ], [ 0.000000e+00, %2495 ]
  %2546 = phi float [ %2542, %2533 ], [ 0.000000e+00, %2495 ]
  %2547 = add i32 %64, 128
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = lshr i32 %2549, 8
  %2553 = and i32 %2552, 255
  %2554 = uitofp i32 %2553 to float
  %2555 = call float @dx.op.dot3.f32(i32 55, float %2416, float %2417, float %2418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2556 = fmul fast float %2554, %2555
  %2557 = fadd fast float %2556, %2551
  %2558 = fmul fast float %2557, 0x3F70101020000000
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  br i1 %2015, label %2560, label %2568

; <label>:2560                                    ; preds = %2543
  %2561 = fsub fast float 1.000000e+00, %2196
  %2562 = fmul fast float %2561, %2004
  %2563 = fmul fast float %2561, %2005
  %2564 = fmul fast float %2561, %2006
  %2565 = fmul fast float %2561, %2007
  %2566 = fmul fast float %2561, %2008
  %2567 = fmul fast float %2561, %2009
  br label %2568

; <label>:2568                                    ; preds = %2560, %2543
  %2569 = phi float [ %2562, %2560 ], [ %2004, %2543 ]
  %2570 = phi float [ %2563, %2560 ], [ %2005, %2543 ]
  %2571 = phi float [ %2564, %2560 ], [ %2006, %2543 ]
  %2572 = phi float [ %2565, %2560 ], [ %2007, %2543 ]
  %2573 = phi float [ %2566, %2560 ], [ %2008, %2543 ]
  %2574 = phi float [ %2567, %2560 ], [ %2009, %2543 ]
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 3
  %2578 = icmp eq i32 %2577, 3
  br i1 %2578, label %2657, label %2579

; <label>:2579                                    ; preds = %2568
  %2580 = and i32 %2576, 16
  %2581 = icmp ne i32 %2580, 0
  %2582 = select i1 %2581, float %2196, float 0.000000e+00
  %2583 = icmp eq i32 %2577, 0
  br i1 %2583, label %2584, label %2612

; <label>:2584                                    ; preds = %2579
  %2585 = and i32 %2576, 64
  %2586 = icmp ne i32 %2585, 0
  %2587 = select i1 %2586, float %2196, float 0.000000e+00
  %2588 = fsub fast float %2416, %2569
  %2589 = fsub fast float %2417, %2570
  %2590 = fsub fast float %2418, %2571
  %2591 = fmul fast float %2582, %2588
  %2592 = fmul fast float %2582, %2589
  %2593 = fmul fast float %2582, %2590
  %2594 = fadd fast float %2591, %2569
  %2595 = fadd fast float %2592, %2570
  %2596 = fadd fast float %2593, %2571
  %2597 = fsub fast float %2402, %2010
  %2598 = fmul fast float %2582, %2597
  %2599 = fadd fast float %2598, %2010
  %2600 = fsub fast float %2544, %2572
  %2601 = fsub fast float %2545, %2573
  %2602 = fsub fast float %2546, %2574
  %2603 = fmul fast float %2587, %2600
  %2604 = fmul fast float %2587, %2601
  %2605 = fmul fast float %2587, %2602
  %2606 = fadd fast float %2603, %2572
  %2607 = fadd fast float %2604, %2573
  %2608 = fadd fast float %2605, %2574
  %2609 = fsub fast float %2559, %2013
  %2610 = fmul fast float %2582, %2609
  %2611 = fadd fast float %2610, %2013
  br label %2657

; <label>:2612                                    ; preds = %2579
  %2613 = icmp eq i32 %2577, 1
  br i1 %2613, label %2614, label %2627

; <label>:2614                                    ; preds = %2612
  %2615 = fadd fast float %2416, -1.000000e+00
  %2616 = fadd fast float %2417, -1.000000e+00
  %2617 = fadd fast float %2418, -1.000000e+00
  %2618 = fmul fast float %2582, %2615
  %2619 = fmul fast float %2582, %2616
  %2620 = fmul fast float %2582, %2617
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fadd fast float %2620, 1.000000e+00
  %2624 = fmul fast float %2621, %2569
  %2625 = fmul fast float %2622, %2570
  %2626 = fmul fast float %2623, %2571
  br label %2657

; <label>:2627                                    ; preds = %2612
  %2628 = icmp eq i32 %2577, 2
  br i1 %2628, label %2629, label %2657

; <label>:2629                                    ; preds = %2627
  %2630 = call float @dx.op.unary.f32(i32 24, float %2416)  ; Sqrt(value)
  %2631 = call float @dx.op.unary.f32(i32 24, float %2417)  ; Sqrt(value)
  %2632 = call float @dx.op.unary.f32(i32 24, float %2418)  ; Sqrt(value)
  %2633 = fadd fast float %2630, -5.000000e-01
  %2634 = fadd fast float %2631, -5.000000e-01
  %2635 = fadd fast float %2632, -5.000000e-01
  %2636 = fmul fast float %2633, %2582
  %2637 = fmul fast float %2634, %2582
  %2638 = fmul fast float %2635, %2582
  %2639 = fadd fast float %2636, 5.000000e-01
  %2640 = fadd fast float %2637, 5.000000e-01
  %2641 = fadd fast float %2638, 5.000000e-01
  %2642 = fmul fast float %2639, 2.000000e+00
  %2643 = fsub fast float 1.000000e+00, %2642
  %2644 = fmul fast float %2643, %2569
  %2645 = fadd fast float %2644, %2642
  %2646 = fmul fast float %2645, %2569
  %2647 = fmul fast float %2640, 2.000000e+00
  %2648 = fsub fast float 1.000000e+00, %2647
  %2649 = fmul fast float %2648, %2570
  %2650 = fadd fast float %2649, %2647
  %2651 = fmul fast float %2650, %2570
  %2652 = fmul fast float %2641, 2.000000e+00
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = fmul fast float %2653, %2571
  %2655 = fadd fast float %2654, %2652
  %2656 = fmul fast float %2655, %2571
  br label %2657

; <label>:2657                                    ; preds = %2629, %2627, %2614, %2584, %2568
  %2658 = phi float [ %2569, %2568 ], [ %2646, %2629 ], [ %2569, %2627 ], [ %2624, %2614 ], [ %2594, %2584 ]
  %2659 = phi float [ %2570, %2568 ], [ %2651, %2629 ], [ %2570, %2627 ], [ %2625, %2614 ], [ %2595, %2584 ]
  %2660 = phi float [ %2571, %2568 ], [ %2656, %2629 ], [ %2571, %2627 ], [ %2626, %2614 ], [ %2596, %2584 ]
  %2661 = phi float [ %2572, %2568 ], [ %2572, %2629 ], [ %2572, %2627 ], [ %2572, %2614 ], [ %2606, %2584 ]
  %2662 = phi float [ %2573, %2568 ], [ %2573, %2629 ], [ %2573, %2627 ], [ %2573, %2614 ], [ %2607, %2584 ]
  %2663 = phi float [ %2574, %2568 ], [ %2574, %2629 ], [ %2574, %2627 ], [ %2574, %2614 ], [ %2608, %2584 ]
  %2664 = phi float [ %2010, %2568 ], [ %2010, %2629 ], [ %2010, %2627 ], [ %2010, %2614 ], [ %2599, %2584 ]
  %2665 = phi float [ %2013, %2568 ], [ %2013, %2629 ], [ %2013, %2627 ], [ %2013, %2614 ], [ %2611, %2584 ]
  %2666 = and i32 %2576, 12
  %2667 = icmp eq i32 %2666, 12
  br i1 %2667, label %2740, label %2668

; <label>:2668                                    ; preds = %2657
  %2669 = and i32 %2576, 2097184
  %2670 = icmp eq i32 %2669, 2097184
  %2671 = select i1 %2670, float %2196, float 0.000000e+00
  %2672 = and i32 %2576, 4194336
  %2673 = icmp eq i32 %2672, 4194336
  %2674 = select i1 %2673, float %2196, float 0.000000e+00
  %2675 = and i32 %2576, 8388640
  %2676 = icmp eq i32 %2675, 8388640
  %2677 = select i1 %2676, float %2196, float 0.000000e+00
  %2678 = icmp eq i32 %2666, 0
  br i1 %2678, label %2679, label %2692

; <label>:2679                                    ; preds = %2668
  %2680 = fsub fast float %2497, %2002
  %2681 = fsub fast float %2498, %2003
  %2682 = fmul fast float %2671, %2680
  %2683 = fmul fast float %2671, %2681
  %2684 = fadd fast float %2682, %2002
  %2685 = fadd fast float %2683, %2003
  %2686 = fsub fast float %2499, %2012
  %2687 = fmul fast float %2674, %2686
  %2688 = fadd fast float %2687, %2012
  %2689 = fsub fast float %2496, %2011
  %2690 = fmul fast float %2677, %2689
  %2691 = fadd fast float %2690, %2011
  br label %2740

; <label>:2692                                    ; preds = %2668
  %2693 = icmp eq i32 %2666, 4
  br i1 %2693, label %2694, label %2726

; <label>:2694                                    ; preds = %2692
  %2695 = fmul fast float %2671, %2497
  %2696 = fmul fast float %2671, %2498
  %2697 = fadd fast float %2695, %2002
  %2698 = fadd fast float %2696, %2003
  %2699 = call float @dx.op.binary.f32(i32 36, float %2012, float %2499)  ; FMin(a,b)
  %2700 = fsub fast float %2699, %2012
  %2701 = fmul fast float %2700, %2674
  %2702 = fadd fast float %2701, %2012
  %2703 = fadd fast float %2496, %2011
  %2704 = fmul fast float %2703, 0x3FF337FAE0000000
  %2705 = fmul fast float %2011, %2011
  %2706 = fmul fast float %2496, %2496
  %2707 = fadd fast float %2706, %2705
  %2708 = fmul fast float %2707, 0x3FE5152B00000000
  %2709 = fmul fast float %2011, 0xBFCC1F85E0000000
  %2710 = fmul fast float %2709, %2496
  %2711 = fadd fast float %2710, 0xBFE1363700000000
  %2712 = fadd fast float %2711, %2704
  %2713 = fsub fast float %2712, %2708
  %2714 = fmul fast float %2703, 0x3FBA6F0D00000000
  %2715 = fmul fast float %2707, 0x3FD0432880000000
  %2716 = fmul fast float %2011, 0xBFEF110800000000
  %2717 = fmul fast float %2716, %2496
  %2718 = fadd fast float %2717, 1.000000e+00
  %2719 = fsub fast float %2718, %2714
  %2720 = fadd fast float %2719, %2715
  %2721 = fdiv fast float %2713, %2720
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = fsub fast float %2722, %2011
  %2724 = fmul fast float %2723, %2677
  %2725 = fadd fast float %2724, %2011
  br label %2740

; <label>:2726                                    ; preds = %2692
  %2727 = icmp eq i32 %2666, 8
  br i1 %2727, label %2728, label %2740

; <label>:2728                                    ; preds = %2726
  %2729 = fmul fast float %2671, %2497
  %2730 = fmul fast float %2671, %2498
  %2731 = fadd fast float %2729, %2002
  %2732 = fadd fast float %2730, %2003
  %2733 = call float @dx.op.binary.f32(i32 36, float %2012, float %2499)  ; FMin(a,b)
  %2734 = fsub fast float %2733, %2012
  %2735 = fmul fast float %2734, %2674
  %2736 = fadd fast float %2735, %2012
  %2737 = fsub fast float %2496, %2011
  %2738 = fmul fast float %2677, %2737
  %2739 = fadd fast float %2738, %2011
  br label %2740

; <label>:2740                                    ; preds = %2728, %2726, %2694, %2679, %2657, %2195, %2014, %2001
  %2741 = phi float [ %2002, %2657 ], [ %2002, %2195 ], [ %2002, %2001 ], [ %2731, %2728 ], [ %2002, %2726 ], [ %2697, %2694 ], [ %2684, %2679 ], [ %2002, %2014 ]
  %2742 = phi float [ %2003, %2657 ], [ %2003, %2195 ], [ %2003, %2001 ], [ %2732, %2728 ], [ %2003, %2726 ], [ %2698, %2694 ], [ %2685, %2679 ], [ %2003, %2014 ]
  %2743 = phi float [ %2658, %2657 ], [ %2004, %2195 ], [ %2004, %2001 ], [ %2658, %2728 ], [ %2658, %2726 ], [ %2658, %2694 ], [ %2658, %2679 ], [ %2004, %2014 ]
  %2744 = phi float [ %2659, %2657 ], [ %2005, %2195 ], [ %2005, %2001 ], [ %2659, %2728 ], [ %2659, %2726 ], [ %2659, %2694 ], [ %2659, %2679 ], [ %2005, %2014 ]
  %2745 = phi float [ %2660, %2657 ], [ %2006, %2195 ], [ %2006, %2001 ], [ %2660, %2728 ], [ %2660, %2726 ], [ %2660, %2694 ], [ %2660, %2679 ], [ %2006, %2014 ]
  %2746 = phi float [ %2661, %2657 ], [ %2007, %2195 ], [ %2007, %2001 ], [ %2661, %2728 ], [ %2661, %2726 ], [ %2661, %2694 ], [ %2661, %2679 ], [ %2007, %2014 ]
  %2747 = phi float [ %2662, %2657 ], [ %2008, %2195 ], [ %2008, %2001 ], [ %2662, %2728 ], [ %2662, %2726 ], [ %2662, %2694 ], [ %2662, %2679 ], [ %2008, %2014 ]
  %2748 = phi float [ %2663, %2657 ], [ %2009, %2195 ], [ %2009, %2001 ], [ %2663, %2728 ], [ %2663, %2726 ], [ %2663, %2694 ], [ %2663, %2679 ], [ %2009, %2014 ]
  %2749 = phi float [ %2664, %2657 ], [ %2010, %2195 ], [ %2010, %2001 ], [ %2664, %2728 ], [ %2664, %2726 ], [ %2664, %2694 ], [ %2664, %2679 ], [ %2010, %2014 ]
  %2750 = phi float [ %2011, %2657 ], [ %2011, %2195 ], [ %2011, %2001 ], [ %2739, %2728 ], [ %2011, %2726 ], [ %2725, %2694 ], [ %2691, %2679 ], [ %2011, %2014 ]
  %2751 = phi float [ %2012, %2657 ], [ %2012, %2195 ], [ %2012, %2001 ], [ %2736, %2728 ], [ %2012, %2726 ], [ %2702, %2694 ], [ %2688, %2679 ], [ %2012, %2014 ]
  %2752 = phi float [ %2665, %2657 ], [ %2013, %2195 ], [ %2013, %2001 ], [ %2665, %2728 ], [ %2665, %2726 ], [ %2665, %2694 ], [ %2665, %2679 ], [ %2013, %2014 ]
  br i1 %664, label %3479, label %2753

; <label>:2753                                    ; preds = %2740
  %2754 = icmp ult i32 %718, 4
  %2755 = add i32 %64, 72
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = add i32 %64, 76
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = or i32 %2760, %2757
  %2762 = icmp eq i32 %2761, 0
  br i1 %2762, label %3479, label %2763

; <label>:2763                                    ; preds = %2753
  %2764 = and i32 %2757, 262144
  %2765 = icmp ne i32 %2764, 0
  %2766 = select i1 %2765, float %71, float 1.000000e+00
  %2767 = select i1 %2765, float %72, float 0.000000e+00
  %2768 = select i1 %2765, float %73, float 0.000000e+00
  %2769 = select i1 %2765, float %74, float 1.000000e+00
  %2770 = select i1 %2765, float %75, float %103
  %2771 = select i1 %2765, float %76, float %104
  %2772 = add i32 %64, 332
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = lshr i32 %2774, 16
  %2776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2775)  ; LegacyF16ToF32(value)
  %2777 = fmul fast float %2776, 0x3F50624DE0000000
  %2778 = add i32 %64, 136
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = lshr i32 %2780, 16
  %2782 = and i32 %2781, 255
  %2783 = lshr i32 %2780, 24
  %2784 = add i32 %64, 340
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = and i32 %2786, 65535
  %2788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2787)  ; LegacyF16ToF32(value)
  %2789 = lshr i32 %2786, 16
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = add i32 %64, 80
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = lshr i32 %2793, 22
  %2795 = shl nuw nsw i32 %2794, 5
  %2796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2795)  ; LegacyF16ToF32(value)
  %2797 = shl i32 %2793, 4
  %2798 = and i32 %2797, 32752
  %2799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2798)  ; LegacyF16ToF32(value)
  %2800 = lshr i32 %2793, 7
  %2801 = and i32 %2800, 32752
  %2802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2801)  ; LegacyF16ToF32(value)
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 3
  %2805 = fmul fast float %2804, 1.000000e+03
  %2806 = fmul fast float %2805, %653
  %2807 = call float @dx.op.unary.f32(i32 22, float %2806)  ; Frc(value)
  %2808 = fadd fast float %2807, %641
  %2809 = fmul fast float %2805, %655
  %2810 = call float @dx.op.unary.f32(i32 22, float %2809)  ; Frc(value)
  %2811 = fadd fast float %2810, %642
  %2812 = fmul fast float %2777, %2805
  %2813 = call float @dx.op.unary.f32(i32 22, float %2812)  ; Frc(value)
  %2814 = fmul fast float %2813, 0x401921FB60000000
  %2815 = fadd fast float %2814, %2796
  %2816 = call float @dx.op.unary.f32(i32 13, float %2815)  ; Sin(value)
  %2817 = call float @dx.op.unary.f32(i32 12, float %2815)  ; Cos(value)
  %2818 = fsub fast float -0.000000e+00, %2816
  %2819 = fadd fast float %2770, -5.000000e-01
  %2820 = fadd fast float %2771, -5.000000e-01
  %2821 = fmul fast float %2788, %2819
  %2822 = fmul fast float %2790, %2820
  %2823 = fadd fast float %2821, 5.000000e-01
  %2824 = fadd fast float %2822, 5.000000e-01
  %2825 = fmul fast float %2799, %2823
  %2826 = fmul fast float %2802, %2824
  %2827 = fmul fast float %2817, %2825
  %2828 = call float @dx.op.tertiary.f32(i32 46, float %2818, float %2826, float %2827)  ; FMad(a,b,c)
  %2829 = fmul fast float %2816, %2825
  %2830 = call float @dx.op.tertiary.f32(i32 46, float %2817, float %2826, float %2829)  ; FMad(a,b,c)
  %2831 = fadd fast float %2808, %2828
  %2832 = fadd fast float %2811, %2830
  %2833 = icmp ugt i32 %2782, 1
  %2834 = icmp ugt i32 %2780, 33554431
  %2835 = or i1 %2834, %2833
  br i1 %2835, label %2836, label %2861

; <label>:2836                                    ; preds = %2763
  %2837 = add i32 %64, 276
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = lshr i32 %2839, 16
  %2841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2840)  ; LegacyF16ToF32(value)
  %2842 = fmul fast float %2804, %2841
  %2843 = call float @dx.op.unary.f32(i32 22, float %2842)  ; Frc(value)
  %2844 = mul nuw nsw i32 %2782, %2783
  %2845 = uitofp i32 %2844 to float
  %2846 = fmul fast float %2843, %2845
  %2847 = call float @dx.op.unary.f32(i32 27, float %2846)  ; Round_ni(value)
  %2848 = fptoui float %2847 to i32
  %2849 = urem i32 %2848, %2782
  %2850 = udiv i32 %2848, %2783
  %2851 = call float @dx.op.unary.f32(i32 22, float %2831)  ; Frc(value)
  %2852 = call float @dx.op.unary.f32(i32 22, float %2832)  ; Frc(value)
  %2853 = uitofp i32 %2849 to float
  %2854 = uitofp i32 %2850 to float
  %2855 = fadd fast float %2851, %2853
  %2856 = fadd fast float %2852, %2854
  %2857 = uitofp i32 %2782 to float
  %2858 = uitofp i32 %2783 to float
  %2859 = fdiv fast float %2855, %2857
  %2860 = fdiv fast float %2856, %2858
  br label %2861

; <label>:2861                                    ; preds = %2836, %2763
  %2862 = phi float [ %2859, %2836 ], [ %2831, %2763 ]
  %2863 = phi float [ %2860, %2836 ], [ %2832, %2763 ]
  %2864 = and i32 %2757, 256
  %2865 = icmp eq i32 %2864, 0
  br i1 %2865, label %2912, label %2866

; <label>:2866                                    ; preds = %2861
  %2867 = add i32 %64, 452
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = add i32 %2869, 0
  %2871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2871, %dx.types.Handle %122, float %2862, float %2863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = add i32 %64, 148
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = shl i32 %2876, 4
  %2878 = and i32 %2877, 32752
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = lshr i32 %2876, 7
  %2881 = and i32 %2880, 32752
  %2882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2881)  ; LegacyF16ToF32(value)
  %2883 = fsub fast float 1.000000e+00, %713
  %2884 = call float @dx.op.binary.f32(i32 35, float %2883, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2885 = bitcast float %713 to i32
  %2886 = sitofp i32 %2885 to float
  %2887 = fadd fast float %2886, 0xC1CFBF8940000000
  %2888 = fmul fast float %2882, %2887
  %2889 = fadd fast float %2888, 0x41CFBF8940000000
  %2890 = fptosi float %2889 to i32
  %2891 = bitcast i32 %2890 to float
  %2892 = bitcast float %2884 to i32
  %2893 = sitofp i32 %2892 to float
  %2894 = fadd fast float %2893, 0xC1CFBF8940000000
  %2895 = fmul fast float %2894, %2882
  %2896 = fadd fast float %2895, 0x41CFBF8940000000
  %2897 = fptosi float %2896 to i32
  %2898 = bitcast i32 %2897 to float
  %2899 = fmul fast float %2891, %2879
  %2900 = fmul fast float %2898, %2879
  %2901 = fsub fast float %2884, %2899
  %2902 = fadd fast float %2900, %2884
  %2903 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2904 = call float @dx.op.unary.f32(i32 7, float %2902)  ; Saturate(value)
  %2905 = fsub fast float %2873, %2903
  %2906 = fsub fast float %2904, %2903
  %2907 = bitcast float %2906 to i32
  %2908 = sub nsw i32 2129859010, %2907
  %2909 = bitcast i32 %2908 to float
  %2910 = fmul fast float %2909, %2905
  %2911 = call float @dx.op.unary.f32(i32 7, float %2910)  ; Saturate(value)
  br label %2912

; <label>:2912                                    ; preds = %2866, %2861
  %2913 = phi float [ %2911, %2866 ], [ %713, %2861 ]
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 128
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2934, label %2918

; <label>:2918                                    ; preds = %2912
  %2919 = add i32 %64, 436
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %122, float %2862, float %2863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = and i32 %2927, 524288
  %2929 = icmp ne i32 %2928, 0
  %2930 = fcmp fast ogt float %2925, 0x3FE0101020000000
  %2931 = select i1 %2930, float 1.000000e+00, float 0.000000e+00
  %2932 = select i1 %2929, float %2931, float %2925
  %2933 = fmul fast float %2932, %2913
  br label %2934

; <label>:2934                                    ; preds = %2918, %2912
  %2935 = phi float [ %2933, %2918 ], [ %2913, %2912 ]
  %2936 = fcmp fast ult float %2935, 0x3F70101020000000
  br i1 %2936, label %3479, label %2937

; <label>:2937                                    ; preds = %2934
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 16
  %2941 = icmp eq i32 %2940, 0
  br i1 %2941, label %3140, label %2942

; <label>:2942                                    ; preds = %2937
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = add i32 %64, 388
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = add i32 %2947, 0
  %2949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2950 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2949, %dx.types.Handle %121, float %2862, float %2863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.ResRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.ResRet.f32 %2950, 2
  %2954 = extractvalue %dx.types.ResRet.f32 %2950, 3
  %2955 = and i32 %2944, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = lshr i32 %2944, 8
  %2958 = and i32 %2957, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = fmul fast float %2954, %2956
  %2961 = fadd fast float %2960, %2959
  %2962 = fmul fast float %2961, 0x3F70101000000000
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 512
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %2975, label %2967

; <label>:2967                                    ; preds = %2942
  %2968 = add i32 %64, 472
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = add i32 %2970, 0
  %2972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2972, %dx.types.Handle %122, float %2862, float %2863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  br label %2975

; <label>:2975                                    ; preds = %2967, %2942
  %2976 = phi float [ %2974, %2967 ], [ 1.000000e+00, %2942 ]
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = and i32 %2978, 33554432
  %2980 = icmp eq i32 %2979, 0
  br i1 %2980, label %3087, label %2981

; <label>:2981                                    ; preds = %2975
  %2982 = add i32 %64, 272
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 65535
  %2986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2985)  ; LegacyF16ToF32(value)
  %2987 = lshr i32 %2984, 16
  %2988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2987)  ; LegacyF16ToF32(value)
  %2989 = add i32 %64, 276
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 65535
  %2993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2992)  ; LegacyF16ToF32(value)
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = lshr i32 %2995, 24
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = and i32 %2995, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = lshr i32 %2995, 8
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = lshr i32 %2995, 16
  %3007 = and i32 %3006, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = add i32 %64, 268
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3010, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = lshr i32 %3012, 24
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3014, 0x3F70101020000000
  %3016 = and i32 %3012, 255
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = lshr i32 %3012, 8
  %3020 = and i32 %3019, 255
  %3021 = uitofp i32 %3020 to float
  %3022 = fmul fast float %3021, 0x3F70101020000000
  %3023 = lshr i32 %3012, 16
  %3024 = and i32 %3023, 255
  %3025 = uitofp i32 %3024 to float
  %3026 = fmul fast float %3025, 0x3F70101020000000
  %3027 = bitcast float %2951 to i32
  %3028 = ashr i32 %3027, 1
  %3029 = sub nsw i32 1597463174, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = fmul fast float %2951, 5.000000e-01
  %3032 = fmul fast float %3030, %3030
  %3033 = fmul fast float %3032, %3031
  %3034 = fsub fast float 1.500000e+00, %3033
  %3035 = fmul fast float %3030, %2951
  %3036 = fmul fast float %3035, %3034
  %3037 = bitcast float %2952 to i32
  %3038 = ashr i32 %3037, 1
  %3039 = sub nsw i32 1597463174, %3038
  %3040 = bitcast i32 %3039 to float
  %3041 = fmul fast float %2952, 5.000000e-01
  %3042 = fmul fast float %3040, %3040
  %3043 = fmul fast float %3042, %3041
  %3044 = fsub fast float 1.500000e+00, %3043
  %3045 = fmul fast float %3040, %2952
  %3046 = fmul fast float %3045, %3044
  %3047 = bitcast float %2953 to i32
  %3048 = ashr i32 %3047, 1
  %3049 = sub nsw i32 1597463174, %3048
  %3050 = bitcast i32 %3049 to float
  %3051 = fmul fast float %2953, 5.000000e-01
  %3052 = fmul fast float %3050, %3050
  %3053 = fmul fast float %3052, %3051
  %3054 = fsub fast float 1.500000e+00, %3053
  %3055 = fmul fast float %3050, %2953
  %3056 = fmul fast float %3055, %3054
  %3057 = fsub fast float %3036, %3018
  %3058 = fsub fast float %3046, %3022
  %3059 = fsub fast float %3056, %3026
  %3060 = fmul fast float %3057, %2986
  %3061 = fmul fast float %3058, %2988
  %3062 = fmul fast float %3059, %2993
  %3063 = fadd fast float %3060, %3001
  %3064 = fadd fast float %3061, %3005
  %3065 = fadd fast float %3062, %3009
  %3066 = call float @dx.op.unary.f32(i32 7, float %3063)  ; Saturate(value)
  %3067 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3068 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3069 = fmul fast float %3066, %3066
  %3070 = fmul fast float %3067, %3067
  %3071 = fmul fast float %3068, %3068
  %3072 = fsub fast float %3069, %2951
  %3073 = fsub fast float %3070, %2952
  %3074 = fsub fast float %3071, %2953
  %3075 = fmul fast float %3072, %2976
  %3076 = fmul fast float %3073, %2976
  %3077 = fmul fast float %3074, %2976
  %3078 = fadd fast float %3075, %2951
  %3079 = fadd fast float %3076, %2952
  %3080 = fadd fast float %3077, %2953
  %3081 = fadd fast float %2998, %2962
  %3082 = fsub fast float %3081, %3015
  %3083 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  %3084 = fsub fast float %3083, %2962
  %3085 = fmul fast float %3084, %2976
  %3086 = fadd fast float %3085, %2962
  br label %3140

; <label>:3087                                    ; preds = %2975
  %3088 = and i32 %2978, 134217728
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3124, label %3090

; <label>:3090                                    ; preds = %3087
  %3091 = call float @dx.op.unary.f32(i32 24, float %629)  ; Sqrt(value)
  %3092 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %3093 = call float @dx.op.unary.f32(i32 24, float %631)  ; Sqrt(value)
  %3094 = fadd fast float %3091, -5.000000e-01
  %3095 = fadd fast float %3092, -5.000000e-01
  %3096 = fadd fast float %3093, -5.000000e-01
  %3097 = fmul fast float %3094, %2976
  %3098 = fmul fast float %3095, %2976
  %3099 = fmul fast float %3096, %2976
  %3100 = fadd fast float %3097, 5.000000e-01
  %3101 = fadd fast float %3098, 5.000000e-01
  %3102 = fadd fast float %3099, 5.000000e-01
  %3103 = call float @dx.op.unary.f32(i32 24, float %2951)  ; Sqrt(value)
  %3104 = call float @dx.op.unary.f32(i32 24, float %2952)  ; Sqrt(value)
  %3105 = call float @dx.op.unary.f32(i32 24, float %2953)  ; Sqrt(value)
  %3106 = fmul fast float %3100, 2.000000e+00
  %3107 = fsub fast float 1.000000e+00, %3106
  %3108 = fmul fast float %3107, %3103
  %3109 = fadd fast float %3108, %3106
  %3110 = fmul fast float %3109, %3103
  %3111 = fmul fast float %3101, 2.000000e+00
  %3112 = fsub fast float 1.000000e+00, %3111
  %3113 = fmul fast float %3112, %3104
  %3114 = fadd fast float %3113, %3111
  %3115 = fmul fast float %3114, %3104
  %3116 = fmul fast float %3102, 2.000000e+00
  %3117 = fsub fast float 1.000000e+00, %3116
  %3118 = fmul fast float %3117, %3105
  %3119 = fadd fast float %3118, %3116
  %3120 = fmul fast float %3119, %3105
  %3121 = fmul fast float %3110, %3110
  %3122 = fmul fast float %3115, %3115
  %3123 = fmul fast float %3120, %3120
  br label %3140

; <label>:3124                                    ; preds = %3087
  %3125 = fmul fast float %629, %629
  %3126 = fmul fast float %630, %630
  %3127 = fmul fast float %631, %631
  %3128 = fadd fast float %3125, -1.000000e+00
  %3129 = fadd fast float %3126, -1.000000e+00
  %3130 = fadd fast float %3127, -1.000000e+00
  %3131 = fmul fast float %2976, %3128
  %3132 = fmul fast float %2976, %3129
  %3133 = fmul fast float %2976, %3130
  %3134 = fadd fast float %3131, 1.000000e+00
  %3135 = fadd fast float %3132, 1.000000e+00
  %3136 = fadd fast float %3133, 1.000000e+00
  %3137 = fmul fast float %3134, %2951
  %3138 = fmul fast float %3135, %2952
  %3139 = fmul fast float %3136, %2953
  br label %3140

; <label>:3140                                    ; preds = %3124, %3090, %2981, %2937
  %3141 = phi float [ %3086, %2981 ], [ %2962, %3090 ], [ %2962, %3124 ], [ 0x3FA23C0BE0000000, %2937 ]
  %3142 = phi float [ %3078, %2981 ], [ %3121, %3090 ], [ %3137, %3124 ], [ 1.000000e+00, %2937 ]
  %3143 = phi float [ %3079, %2981 ], [ %3122, %3090 ], [ %3138, %3124 ], [ 1.000000e+00, %2937 ]
  %3144 = phi float [ %3080, %2981 ], [ %3123, %3090 ], [ %3139, %3124 ], [ 1.000000e+00, %2937 ]
  %3145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.i32 %3145, 1
  %3147 = and i32 %3146, 1
  %3148 = icmp ne i32 %3147, 0
  %3149 = add i32 %64, 356
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 32
  %3153 = icmp ne i32 %3152, 0
  %3154 = and i1 %3148, %3153
  %3155 = select i1 %3154, float 1.000000e+00, float %3142
  %3156 = select i1 %3154, float 0x3FD3333340000000, float %3143
  %3157 = select i1 %3154, float 0x3FD3333340000000, float %3144
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 32
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3234, label %3162

; <label>:3162                                    ; preds = %3140
  %3163 = add i32 %64, 140
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = add i32 %64, 404
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = add i32 %3168, 0
  %3170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3170, %dx.types.Handle %121, float %2862, float %2863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3172 = extractvalue %dx.types.ResRet.f32 %3171, 0
  %3173 = extractvalue %dx.types.ResRet.f32 %3171, 1
  %3174 = extractvalue %dx.types.ResRet.f32 %3171, 2
  %3175 = extractvalue %dx.types.ResRet.f32 %3171, 3
  %3176 = and i32 %3165, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = lshr i32 %3165, 8
  %3179 = and i32 %3178, 255
  %3180 = uitofp i32 %3179 to float
  %3181 = lshr i32 %3165, 16
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101000000000
  %3185 = fmul fast float %3172, %3177
  %3186 = fadd fast float %3185, %3180
  %3187 = fmul fast float %3186, 0x3F70101000000000
  %3188 = fadd fast float %3173, -5.000000e-01
  %3189 = fadd fast float %3175, -5.000000e-01
  %3190 = fmul fast float %3188, %3184
  %3191 = fmul fast float %3189, %3184
  %3192 = fadd fast float %3190, 5.000000e-01
  %3193 = fadd fast float %3191, 5.000000e-01
  %3194 = fmul fast float %3192, 2.000000e+00
  %3195 = fadd fast float %3194, -1.000000e+00
  %3196 = fmul fast float %3193, 2.000000e+00
  %3197 = fadd fast float %3196, -1.000000e+00
  %3198 = fadd fast float %3195, %3197
  %3199 = fmul fast float %3198, 5.000000e-01
  %3200 = fsub fast float %3195, %3197
  %3201 = fmul fast float %3200, 5.000000e-01
  %3202 = call float @dx.op.unary.f32(i32 6, float %3199)  ; FAbs(value)
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = call float @dx.op.unary.f32(i32 6, float %3201)  ; FAbs(value)
  %3205 = fsub fast float %3203, %3204
  %3206 = call float @dx.op.dot3.f32(i32 55, float %3199, float %3201, float %3205, float %3199, float %3201, float %3205)  ; Dot3(ax,ay,az,bx,by,bz)
  %3207 = call float @dx.op.unary.f32(i32 25, float %3206)  ; Rsqrt(value)
  %3208 = fmul fast float %3199, %3207
  %3209 = fmul fast float %3201, %3207
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 67108864
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %3230, label %3214

; <label>:3214                                    ; preds = %3162
  %3215 = add i32 %64, 328
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = and i32 %3217, 65535
  %3219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3218)  ; LegacyF16ToF32(value)
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = and i32 %3221, 65535
  %3223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3222)  ; LegacyF16ToF32(value)
  %3224 = lshr i32 %3217, 16
  %3225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3224)  ; LegacyF16ToF32(value)
  %3226 = fsub fast float %3187, %3225
  %3227 = fmul fast float %3226, %3219
  %3228 = fadd fast float %3227, %3223
  %3229 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  br label %3230

; <label>:3230                                    ; preds = %3214, %3162
  %3231 = phi float [ %3229, %3214 ], [ %3187, %3162 ]
  %3232 = call float @dx.op.dot2.f32(i32 54, float %3208, float %3209, float %2766, float %2767)  ; Dot2(ax,ay,bx,by)
  %3233 = call float @dx.op.dot2.f32(i32 54, float %3208, float %3209, float %2768, float %2769)  ; Dot2(ax,ay,bx,by)
  br label %3234

; <label>:3234                                    ; preds = %3230, %3140
  %3235 = phi float [ %3231, %3230 ], [ 0x3FD6666660000000, %3140 ]
  %3236 = phi float [ %3232, %3230 ], [ 0.000000e+00, %3140 ]
  %3237 = phi float [ %3233, %3230 ], [ 0.000000e+00, %3140 ]
  %3238 = phi float [ %3174, %3230 ], [ 1.000000e+00, %3140 ]
  %3239 = add i32 %64, 208
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = lshr i32 %3241, 22
  %3243 = shl nuw nsw i32 %3242, 5
  %3244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3243)  ; LegacyF16ToF32(value)
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %3246, 64
  %3248 = icmp eq i32 %3247, 0
  br i1 %3248, label %3282, label %3249

; <label>:3249                                    ; preds = %3234
  %3250 = add i32 %64, 420
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = add i32 %3252, 0
  %3254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = and i32 %3256, 131072
  %3258 = icmp eq i32 %3257, 0
  %3259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3254, %dx.types.Handle %121, float %2862, float %2863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.ResRet.f32 %3259, 2
  %3263 = fmul fast float %612, %3260
  %3264 = fmul fast float %613, %3261
  %3265 = fmul fast float %614, %3262
  br i1 %3258, label %3272, label %3266

; <label>:3266                                    ; preds = %3249
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 0
  %3269 = fmul fast float %3268, %3263
  %3270 = fmul fast float %3268, %3264
  %3271 = fmul fast float %3268, %3265
  br label %3272

; <label>:3272                                    ; preds = %3266, %3249
  %3273 = phi float [ %3269, %3266 ], [ %3263, %3249 ]
  %3274 = phi float [ %3270, %3266 ], [ %3264, %3249 ]
  %3275 = phi float [ %3271, %3266 ], [ %3265, %3249 ]
  %3276 = fmul fast float %3273, %3244
  %3277 = select i1 %280, float %3276, float %3273
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3277, float %3274, float %3275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = select i1 %280, float 0.000000e+00, float %3273
  %3280 = select i1 %280, float %3278, float %3274
  %3281 = select i1 %280, float 0.000000e+00, float %3275
  br label %3282

; <label>:3282                                    ; preds = %3272, %3234
  %3283 = phi float [ %3279, %3272 ], [ 0.000000e+00, %3234 ]
  %3284 = phi float [ %3280, %3272 ], [ 0.000000e+00, %3234 ]
  %3285 = phi float [ %3281, %3272 ], [ 0.000000e+00, %3234 ]
  %3286 = add i32 %64, 144
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = and i32 %3288, 255
  %3290 = uitofp i32 %3289 to float
  %3291 = lshr i32 %3288, 8
  %3292 = and i32 %3291, 255
  %3293 = uitofp i32 %3292 to float
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = fmul fast float %3293, %3294
  %3296 = fadd fast float %3295, %3290
  %3297 = fmul fast float %3296, 0x3F70101020000000
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  br i1 %2754, label %3299, label %3307

; <label>:3299                                    ; preds = %3282
  %3300 = fsub fast float 1.000000e+00, %2935
  %3301 = fmul fast float %3300, %2743
  %3302 = fmul fast float %3300, %2744
  %3303 = fmul fast float %3300, %2745
  %3304 = fmul fast float %3300, %2746
  %3305 = fmul fast float %3300, %2747
  %3306 = fmul fast float %3300, %2748
  br label %3307

; <label>:3307                                    ; preds = %3299, %3282
  %3308 = phi float [ %3301, %3299 ], [ %2743, %3282 ]
  %3309 = phi float [ %3302, %3299 ], [ %2744, %3282 ]
  %3310 = phi float [ %3303, %3299 ], [ %2745, %3282 ]
  %3311 = phi float [ %3304, %3299 ], [ %2746, %3282 ]
  %3312 = phi float [ %3305, %3299 ], [ %2747, %3282 ]
  %3313 = phi float [ %3306, %3299 ], [ %2748, %3282 ]
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 3
  %3317 = icmp eq i32 %3316, 3
  br i1 %3317, label %3396, label %3318

; <label>:3318                                    ; preds = %3307
  %3319 = and i32 %3315, 16
  %3320 = icmp ne i32 %3319, 0
  %3321 = select i1 %3320, float %2935, float 0.000000e+00
  %3322 = icmp eq i32 %3316, 0
  br i1 %3322, label %3323, label %3351

; <label>:3323                                    ; preds = %3318
  %3324 = and i32 %3315, 64
  %3325 = icmp ne i32 %3324, 0
  %3326 = select i1 %3325, float %2935, float 0.000000e+00
  %3327 = fsub fast float %3155, %3308
  %3328 = fsub fast float %3156, %3309
  %3329 = fsub fast float %3157, %3310
  %3330 = fmul fast float %3321, %3327
  %3331 = fmul fast float %3321, %3328
  %3332 = fmul fast float %3321, %3329
  %3333 = fadd fast float %3330, %3308
  %3334 = fadd fast float %3331, %3309
  %3335 = fadd fast float %3332, %3310
  %3336 = fsub fast float %3141, %2749
  %3337 = fmul fast float %3321, %3336
  %3338 = fadd fast float %3337, %2749
  %3339 = fsub fast float %3283, %3311
  %3340 = fsub fast float %3284, %3312
  %3341 = fsub fast float %3285, %3313
  %3342 = fmul fast float %3326, %3339
  %3343 = fmul fast float %3326, %3340
  %3344 = fmul fast float %3326, %3341
  %3345 = fadd fast float %3342, %3311
  %3346 = fadd fast float %3343, %3312
  %3347 = fadd fast float %3344, %3313
  %3348 = fsub fast float %3298, %2752
  %3349 = fmul fast float %3321, %3348
  %3350 = fadd fast float %3349, %2752
  br label %3396

; <label>:3351                                    ; preds = %3318
  %3352 = icmp eq i32 %3316, 1
  br i1 %3352, label %3353, label %3366

; <label>:3353                                    ; preds = %3351
  %3354 = fadd fast float %3155, -1.000000e+00
  %3355 = fadd fast float %3156, -1.000000e+00
  %3356 = fadd fast float %3157, -1.000000e+00
  %3357 = fmul fast float %3321, %3354
  %3358 = fmul fast float %3321, %3355
  %3359 = fmul fast float %3321, %3356
  %3360 = fadd fast float %3357, 1.000000e+00
  %3361 = fadd fast float %3358, 1.000000e+00
  %3362 = fadd fast float %3359, 1.000000e+00
  %3363 = fmul fast float %3360, %3308
  %3364 = fmul fast float %3361, %3309
  %3365 = fmul fast float %3362, %3310
  br label %3396

; <label>:3366                                    ; preds = %3351
  %3367 = icmp eq i32 %3316, 2
  br i1 %3367, label %3368, label %3396

; <label>:3368                                    ; preds = %3366
  %3369 = call float @dx.op.unary.f32(i32 24, float %3155)  ; Sqrt(value)
  %3370 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3371 = call float @dx.op.unary.f32(i32 24, float %3157)  ; Sqrt(value)
  %3372 = fadd fast float %3369, -5.000000e-01
  %3373 = fadd fast float %3370, -5.000000e-01
  %3374 = fadd fast float %3371, -5.000000e-01
  %3375 = fmul fast float %3372, %3321
  %3376 = fmul fast float %3373, %3321
  %3377 = fmul fast float %3374, %3321
  %3378 = fadd fast float %3375, 5.000000e-01
  %3379 = fadd fast float %3376, 5.000000e-01
  %3380 = fadd fast float %3377, 5.000000e-01
  %3381 = fmul fast float %3378, 2.000000e+00
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = fmul fast float %3382, %3308
  %3384 = fadd fast float %3383, %3381
  %3385 = fmul fast float %3384, %3308
  %3386 = fmul fast float %3379, 2.000000e+00
  %3387 = fsub fast float 1.000000e+00, %3386
  %3388 = fmul fast float %3387, %3309
  %3389 = fadd fast float %3388, %3386
  %3390 = fmul fast float %3389, %3309
  %3391 = fmul fast float %3380, 2.000000e+00
  %3392 = fsub fast float 1.000000e+00, %3391
  %3393 = fmul fast float %3392, %3310
  %3394 = fadd fast float %3393, %3391
  %3395 = fmul fast float %3394, %3310
  br label %3396

; <label>:3396                                    ; preds = %3368, %3366, %3353, %3323, %3307
  %3397 = phi float [ %3308, %3307 ], [ %3385, %3368 ], [ %3308, %3366 ], [ %3363, %3353 ], [ %3333, %3323 ]
  %3398 = phi float [ %3309, %3307 ], [ %3390, %3368 ], [ %3309, %3366 ], [ %3364, %3353 ], [ %3334, %3323 ]
  %3399 = phi float [ %3310, %3307 ], [ %3395, %3368 ], [ %3310, %3366 ], [ %3365, %3353 ], [ %3335, %3323 ]
  %3400 = phi float [ %3311, %3307 ], [ %3311, %3368 ], [ %3311, %3366 ], [ %3311, %3353 ], [ %3345, %3323 ]
  %3401 = phi float [ %3312, %3307 ], [ %3312, %3368 ], [ %3312, %3366 ], [ %3312, %3353 ], [ %3346, %3323 ]
  %3402 = phi float [ %3313, %3307 ], [ %3313, %3368 ], [ %3313, %3366 ], [ %3313, %3353 ], [ %3347, %3323 ]
  %3403 = phi float [ %2749, %3307 ], [ %2749, %3368 ], [ %2749, %3366 ], [ %2749, %3353 ], [ %3338, %3323 ]
  %3404 = phi float [ %2752, %3307 ], [ %2752, %3368 ], [ %2752, %3366 ], [ %2752, %3353 ], [ %3350, %3323 ]
  %3405 = and i32 %3315, 12
  %3406 = icmp eq i32 %3405, 12
  br i1 %3406, label %3479, label %3407

; <label>:3407                                    ; preds = %3396
  %3408 = and i32 %3315, 2097184
  %3409 = icmp eq i32 %3408, 2097184
  %3410 = select i1 %3409, float %2935, float 0.000000e+00
  %3411 = and i32 %3315, 4194336
  %3412 = icmp eq i32 %3411, 4194336
  %3413 = select i1 %3412, float %2935, float 0.000000e+00
  %3414 = and i32 %3315, 8388640
  %3415 = icmp eq i32 %3414, 8388640
  %3416 = select i1 %3415, float %2935, float 0.000000e+00
  %3417 = icmp eq i32 %3405, 0
  br i1 %3417, label %3418, label %3431

; <label>:3418                                    ; preds = %3407
  %3419 = fsub fast float %3236, %2741
  %3420 = fsub fast float %3237, %2742
  %3421 = fmul fast float %3410, %3419
  %3422 = fmul fast float %3410, %3420
  %3423 = fadd fast float %3421, %2741
  %3424 = fadd fast float %3422, %2742
  %3425 = fsub fast float %3238, %2751
  %3426 = fmul fast float %3413, %3425
  %3427 = fadd fast float %3426, %2751
  %3428 = fsub fast float %3235, %2750
  %3429 = fmul fast float %3416, %3428
  %3430 = fadd fast float %3429, %2750
  br label %3479

; <label>:3431                                    ; preds = %3407
  %3432 = icmp eq i32 %3405, 4
  br i1 %3432, label %3433, label %3465

; <label>:3433                                    ; preds = %3431
  %3434 = fmul fast float %3410, %3236
  %3435 = fmul fast float %3410, %3237
  %3436 = fadd fast float %3434, %2741
  %3437 = fadd fast float %3435, %2742
  %3438 = call float @dx.op.binary.f32(i32 36, float %2751, float %3238)  ; FMin(a,b)
  %3439 = fsub fast float %3438, %2751
  %3440 = fmul fast float %3439, %3413
  %3441 = fadd fast float %3440, %2751
  %3442 = fadd fast float %3235, %2750
  %3443 = fmul fast float %3442, 0x3FF337FAE0000000
  %3444 = fmul fast float %2750, %2750
  %3445 = fmul fast float %3235, %3235
  %3446 = fadd fast float %3445, %3444
  %3447 = fmul fast float %3446, 0x3FE5152B00000000
  %3448 = fmul fast float %2750, 0xBFCC1F85E0000000
  %3449 = fmul fast float %3448, %3235
  %3450 = fadd fast float %3449, 0xBFE1363700000000
  %3451 = fadd fast float %3450, %3443
  %3452 = fsub fast float %3451, %3447
  %3453 = fmul fast float %3442, 0x3FBA6F0D00000000
  %3454 = fmul fast float %3446, 0x3FD0432880000000
  %3455 = fmul fast float %2750, 0xBFEF110800000000
  %3456 = fmul fast float %3455, %3235
  %3457 = fadd fast float %3456, 1.000000e+00
  %3458 = fsub fast float %3457, %3453
  %3459 = fadd fast float %3458, %3454
  %3460 = fdiv fast float %3452, %3459
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = fsub fast float %3461, %2750
  %3463 = fmul fast float %3462, %3416
  %3464 = fadd fast float %3463, %2750
  br label %3479

; <label>:3465                                    ; preds = %3431
  %3466 = icmp eq i32 %3405, 8
  br i1 %3466, label %3467, label %3479

; <label>:3467                                    ; preds = %3465
  %3468 = fmul fast float %3410, %3236
  %3469 = fmul fast float %3410, %3237
  %3470 = fadd fast float %3468, %2741
  %3471 = fadd fast float %3469, %2742
  %3472 = call float @dx.op.binary.f32(i32 36, float %2751, float %3238)  ; FMin(a,b)
  %3473 = fsub fast float %3472, %2751
  %3474 = fmul fast float %3473, %3413
  %3475 = fadd fast float %3474, %2751
  %3476 = fsub fast float %3235, %2750
  %3477 = fmul fast float %3416, %3476
  %3478 = fadd fast float %3477, %2750
  br label %3479

; <label>:3479                                    ; preds = %3467, %3465, %3433, %3418, %3396, %2934, %2753, %2740
  %3480 = phi float [ %2741, %3396 ], [ %2741, %2934 ], [ %2741, %2740 ], [ %2741, %2753 ], [ %3423, %3418 ], [ %3436, %3433 ], [ %2741, %3465 ], [ %3470, %3467 ]
  %3481 = phi float [ %2742, %3396 ], [ %2742, %2934 ], [ %2742, %2740 ], [ %2742, %2753 ], [ %3424, %3418 ], [ %3437, %3433 ], [ %2742, %3465 ], [ %3471, %3467 ]
  %3482 = phi float [ %3397, %3396 ], [ %2743, %2934 ], [ %2743, %2740 ], [ %2743, %2753 ], [ %3397, %3418 ], [ %3397, %3433 ], [ %3397, %3465 ], [ %3397, %3467 ]
  %3483 = phi float [ %3398, %3396 ], [ %2744, %2934 ], [ %2744, %2740 ], [ %2744, %2753 ], [ %3398, %3418 ], [ %3398, %3433 ], [ %3398, %3465 ], [ %3398, %3467 ]
  %3484 = phi float [ %3399, %3396 ], [ %2745, %2934 ], [ %2745, %2740 ], [ %2745, %2753 ], [ %3399, %3418 ], [ %3399, %3433 ], [ %3399, %3465 ], [ %3399, %3467 ]
  %3485 = phi float [ %3400, %3396 ], [ %2746, %2934 ], [ %2746, %2740 ], [ %2746, %2753 ], [ %3400, %3418 ], [ %3400, %3433 ], [ %3400, %3465 ], [ %3400, %3467 ]
  %3486 = phi float [ %3401, %3396 ], [ %2747, %2934 ], [ %2747, %2740 ], [ %2747, %2753 ], [ %3401, %3418 ], [ %3401, %3433 ], [ %3401, %3465 ], [ %3401, %3467 ]
  %3487 = phi float [ %3402, %3396 ], [ %2748, %2934 ], [ %2748, %2740 ], [ %2748, %2753 ], [ %3402, %3418 ], [ %3402, %3433 ], [ %3402, %3465 ], [ %3402, %3467 ]
  %3488 = phi float [ %3403, %3396 ], [ %2749, %2934 ], [ %2749, %2740 ], [ %2749, %2753 ], [ %3403, %3418 ], [ %3403, %3433 ], [ %3403, %3465 ], [ %3403, %3467 ]
  %3489 = phi float [ %2750, %3396 ], [ %2750, %2934 ], [ %2750, %2740 ], [ %2750, %2753 ], [ %3430, %3418 ], [ %3464, %3433 ], [ %2750, %3465 ], [ %3478, %3467 ]
  %3490 = phi float [ %2751, %3396 ], [ %2751, %2934 ], [ %2751, %2740 ], [ %2751, %2753 ], [ %3427, %3418 ], [ %3441, %3433 ], [ %2751, %3465 ], [ %3475, %3467 ]
  %3491 = phi float [ %3404, %3396 ], [ %2752, %2934 ], [ %2752, %2740 ], [ %2752, %2753 ], [ %3404, %3418 ], [ %3404, %3433 ], [ %3404, %3465 ], [ %3404, %3467 ]
  %3492 = add i32 %64, 360
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.i32 %3493, 1
  %3496 = bitcast i32 %3494 to float
  %3497 = bitcast i32 %3495 to float
  %3498 = fcmp fast oge float %3496, 0.000000e+00
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 0
  %3501 = select i1 %3498, float %3496, float %3500
  %3502 = fadd fast float %3501, %222
  %3503 = fmul fast float %3497, %223
  %3504 = add i32 %64, 456
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = add i32 %3506, 0
  %3508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3508, %dx.types.Handle %122, float %103, float %104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3511 = fmul fast float %3503, %3510
  %3512 = fadd fast float %3502, %3511
  %3513 = and i32 %214, 65535
  %3514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3513)  ; LegacyF16ToF32(value)
  %3515 = lshr i32 %214, 16
  %3516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3515)  ; LegacyF16ToF32(value)
  %3517 = and i32 %215, 65535
  %3518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3517)  ; LegacyF16ToF32(value)
  %3519 = fmul fast float %3514, %3482
  %3520 = fmul fast float %3516, %3483
  %3521 = fmul fast float %3518, %3484
  %3522 = shl i32 %216, 4
  %3523 = and i32 %3522, 32752
  %3524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3523)  ; LegacyF16ToF32(value)
  %3525 = lshr i32 %216, 7
  %3526 = and i32 %3525, 32752
  %3527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3526)  ; LegacyF16ToF32(value)
  %3528 = lshr i32 %216, 22
  %3529 = shl nuw nsw i32 %3528, 5
  %3530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3529)  ; LegacyF16ToF32(value)
  %3531 = and i32 %217, 65535
  %3532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3531)  ; LegacyF16ToF32(value)
  %3533 = fmul fast float %3524, %3485
  %3534 = fmul fast float %3533, %3532
  %3535 = fmul fast float %3527, %3486
  %3536 = fmul fast float %3535, %3532
  %3537 = fmul fast float %3530, %3487
  %3538 = fmul fast float %3537, %3532
  %3539 = call float @dx.op.dot2.f32(i32 54, float %3480, float %3481, float %3480, float %3481)  ; Dot2(ax,ay,bx,by)
  %3540 = fmul fast float %3539, 0x3FE3333340000000
  %3541 = fsub fast float 1.000000e+00, %3540
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3480, float %3481, float %3541, float %3480, float %3481, float %3541)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = call float @dx.op.unary.f32(i32 25, float %3542)  ; Rsqrt(value)
  %3544 = fmul fast float %3543, %3480
  %3545 = fmul fast float %3543, %3481
  %3546 = fmul fast float %3541, %3543
  %3547 = fmul fast float %3546, %134
  %3548 = fmul fast float %3546, %136
  %3549 = fmul fast float %3546, %138
  %3550 = fmul fast float %3544, %96
  %3551 = fmul fast float %3544, %97
  %3552 = fmul fast float %3544, %98
  %3553 = fadd fast float %3547, %3550
  %3554 = fadd fast float %3548, %3551
  %3555 = fadd fast float %3549, %3552
  %3556 = fmul fast float %148, %3545
  %3557 = fmul fast float %149, %3545
  %3558 = fmul fast float %150, %3545
  %3559 = fadd fast float %3553, %3556
  %3560 = fadd fast float %3554, %3557
  %3561 = fadd fast float %3555, %3558
  %3562 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3560, float %3561, float %3559, float %3560, float %3561)  ; Dot3(ax,ay,az,bx,by,bz)
  %3563 = call float @dx.op.unary.f32(i32 25, float %3562)  ; Rsqrt(value)
  %3564 = fmul fast float %3559, %3563
  %3565 = fmul fast float %3560, %3563
  %3566 = fmul fast float %3561, %3563
  %3567 = icmp eq i32 %67, 65535
  br i1 %3567, label %4086, label %3568

; <label>:3568                                    ; preds = %3479
  %3569 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3570 = call float @dx.op.unary.f32(i32 83, float %69)  ; DerivCoarseX(value)
  %3571 = call float @dx.op.unary.f32(i32 83, float %70)  ; DerivCoarseX(value)
  %3572 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3573 = call float @dx.op.unary.f32(i32 84, float %69)  ; DerivCoarseY(value)
  %3574 = call float @dx.op.unary.f32(i32 84, float %70)  ; DerivCoarseY(value)
  %3575 = fadd fast float %3569, %68
  %3576 = fadd fast float %3570, %69
  %3577 = fadd fast float %3571, %70
  %3578 = fadd fast float %3572, %68
  %3579 = fadd fast float %3573, %69
  %3580 = fadd fast float %3574, %70
  %3581 = mul i32 %67, 48
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = add i32 %3581, 16
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = add i32 %3581, 32
  %3592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3596 = extractvalue %dx.types.ResRet.f32 %3592, 3
  %3597 = bitcast float %3596 to i32
  %3598 = fmul fast float %3583, %68
  %3599 = fmul fast float %3584, %69
  %3600 = fmul fast float %3585, %70
  %3601 = fsub fast float %3598, %3588
  %3602 = fsub fast float %3599, %3589
  %3603 = fsub fast float %3600, %3590
  %3604 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3605 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3606 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  %3607 = fmul fast float %3604, %3593
  %3608 = fmul fast float %3605, %3594
  %3609 = fmul fast float %3606, %3595
  %3610 = fadd fast float %3593, -1.000000e+00
  %3611 = fadd fast float %3594, -1.000000e+00
  %3612 = fadd fast float %3595, -1.000000e+00
  %3613 = call float @dx.op.unary.f32(i32 27, float %3607)  ; Round_ni(value)
  %3614 = call float @dx.op.unary.f32(i32 27, float %3608)  ; Round_ni(value)
  %3615 = call float @dx.op.unary.f32(i32 27, float %3609)  ; Round_ni(value)
  %3616 = call float @dx.op.binary.f32(i32 36, float %3613, float %3610)  ; FMin(a,b)
  %3617 = call float @dx.op.binary.f32(i32 36, float %3614, float %3611)  ; FMin(a,b)
  %3618 = call float @dx.op.binary.f32(i32 36, float %3615, float %3612)  ; FMin(a,b)
  %3619 = fmul fast float %3618, %3594
  %3620 = fadd fast float %3619, %3617
  %3621 = fmul fast float %3620, %3593
  %3622 = fadd fast float %3621, %3616
  %3623 = fptosi float %3622 to i32
  %3624 = add nsw i32 %3623, %3597
  %3625 = shl nsw i32 %3624, 2
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = lshr i32 %3627, 16
  %3629 = icmp eq i32 %3628, 0
  br i1 %3629, label %4054, label %3630

; <label>:3630                                    ; preds = %3568
  br label %3631

; <label>:3631                                    ; preds = %3753, %3630
  %3632 = phi i32 [ %3655, %3753 ], [ %3628, %3630 ]
  %3633 = phi float [ %3754, %3753 ], [ 0.000000e+00, %3630 ]
  %3634 = phi float [ %3755, %3753 ], [ %1271, %3630 ]
  %3635 = phi float [ %3756, %3753 ], [ %3512, %3630 ]
  %3636 = phi float [ %3757, %3753 ], [ %3491, %3630 ]
  %3637 = phi float [ %3758, %3753 ], [ 0.000000e+00, %3630 ]
  %3638 = phi float [ %3759, %3753 ], [ 0.000000e+00, %3630 ]
  %3639 = phi float [ %3760, %3753 ], [ %3534, %3630 ]
  %3640 = phi float [ %3761, %3753 ], [ %3536, %3630 ]
  %3641 = phi float [ %3762, %3753 ], [ %3538, %3630 ]
  %3642 = phi float [ %3763, %3753 ], [ %3564, %3630 ]
  %3643 = phi float [ %3764, %3753 ], [ %3565, %3630 ]
  %3644 = phi float [ %3765, %3753 ], [ %3566, %3630 ]
  %3645 = phi float [ %3766, %3753 ], [ %3490, %3630 ]
  %3646 = phi float [ %3767, %3753 ], [ %3489, %3630 ]
  %3647 = phi float [ %3768, %3753 ], [ 0.000000e+00, %3630 ]
  %3648 = phi float [ %3769, %3753 ], [ %3488, %3630 ]
  %3649 = phi float [ %3770, %3753 ], [ %3519, %3630 ]
  %3650 = phi float [ %3771, %3753 ], [ %3520, %3630 ]
  %3651 = phi float [ %3772, %3753 ], [ %3521, %3630 ]
  %3652 = shl nuw nsw i32 %3632, 2
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = lshr i32 %3654, 16
  %3656 = shl i32 %3654, 8
  %3657 = and i32 %3656, 16776960
  %3658 = or i32 %3657, 48
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = or i32 %3657, 64
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = extractvalue %dx.types.ResRet.i32 %3664, 1
  %3667 = or i32 %3657, 80
  %3668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3671 = or i32 %3657, 96
  %3672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3677 = or i32 %3657, 112
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3680 = or i32 %3657, 128
  %3681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.ResRet.f32 %3681, 3
  %3686 = or i32 %3657, 144
  %3687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.ResRet.f32 %3687, 1
  %3690 = extractvalue %dx.types.ResRet.f32 %3687, 2
  %3691 = extractvalue %dx.types.ResRet.f32 %3687, 3
  %3692 = or i32 %3657, 160
  %3693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3693, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3693, 2
  %3697 = extractvalue %dx.types.ResRet.f32 %3693, 3
  %3698 = or i32 %3657, 192
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = or i32 %3657, 208
  %3702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = or i32 %3657, 248
  %3705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 0
  %3707 = extractvalue %dx.types.ResRet.f32 %3705, 1
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = call float @dx.op.dot4.f32(i32 56, float %3709, float %3710, float %3711, float %3712, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3714 = or i32 %3657, 16
  %3715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = extractvalue %dx.types.ResRet.f32 %3715, 1
  %3718 = extractvalue %dx.types.ResRet.f32 %3715, 2
  %3719 = extractvalue %dx.types.ResRet.f32 %3715, 3
  %3720 = call float @dx.op.dot4.f32(i32 56, float %3716, float %3717, float %3718, float %3719, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3721 = or i32 %3657, 32
  %3722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.ResRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.ResRet.f32 %3722, 2
  %3726 = extractvalue %dx.types.ResRet.f32 %3722, 3
  %3727 = call float @dx.op.dot4.f32(i32 56, float %3723, float %3724, float %3725, float %3726, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3728 = call float @dx.op.unary.f32(i32 27, float %3713)  ; Round_ni(value)
  %3729 = call float @dx.op.unary.f32(i32 6, float %3728)  ; FAbs(value)
  %3730 = call float @dx.op.unary.f32(i32 27, float %3720)  ; Round_ni(value)
  %3731 = call float @dx.op.unary.f32(i32 6, float %3730)  ; FAbs(value)
  %3732 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3733 = call float @dx.op.unary.f32(i32 27, float %3732)  ; Round_ni(value)
  %3734 = fadd fast float %3731, %3729
  %3735 = fadd fast float %3734, %3733
  %3736 = fcmp fast oeq float %3735, 0.000000e+00
  %3737 = call float @dx.op.dot4.f32(i32 56, float %3709, float %3710, float %3711, float %3712, float %3575, float %3576, float %3577, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3738 = call float @dx.op.dot4.f32(i32 56, float %3716, float %3717, float %3718, float %3719, float %3575, float %3576, float %3577, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3739 = call float @dx.op.dot4.f32(i32 56, float %3709, float %3710, float %3711, float %3712, float %3578, float %3579, float %3580, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3740 = call float @dx.op.dot4.f32(i32 56, float %3716, float %3717, float %3718, float %3719, float %3578, float %3579, float %3580, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3741 = fsub fast float %3737, %3713
  %3742 = fsub fast float %3739, %3713
  %3743 = fsub fast float %3738, %3720
  %3744 = fsub fast float %3740, %3720
  %3745 = call float @dx.op.dot3.f32(i32 55, float %3660, float %3661, float %3662, float %134, float %136, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 2
  %3748 = fadd fast float %3747, %3745
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3751 = fcmp fast ogt float %3749, %3750
  %3752 = and i1 %3736, %3751
  br i1 %3752, label %3774, label %3753

; <label>:3753                                    ; preds = %4040, %3857, %3774, %3631
  %3754 = phi float [ %3633, %3774 ], [ %3860, %3857 ], [ %3860, %4040 ], [ %3633, %3631 ]
  %3755 = phi float [ %3634, %3774 ], [ %3634, %3857 ], [ %4015, %4040 ], [ %3634, %3631 ]
  %3756 = phi float [ %3635, %3774 ], [ %3635, %3857 ], [ %4014, %4040 ], [ %3635, %3631 ]
  %3757 = phi float [ %3636, %3774 ], [ %3636, %3857 ], [ %4012, %4040 ], [ %3636, %3631 ]
  %3758 = phi float [ %3637, %3774 ], [ %3637, %3857 ], [ %3984, %4040 ], [ %3637, %3631 ]
  %3759 = phi float [ %3638, %3774 ], [ %3638, %3857 ], [ %3982, %4040 ], [ %3638, %3631 ]
  %3760 = phi float [ %3639, %3774 ], [ %3639, %3857 ], [ %4050, %4040 ], [ %3639, %3631 ]
  %3761 = phi float [ %3640, %3774 ], [ %3640, %3857 ], [ %4051, %4040 ], [ %3640, %3631 ]
  %3762 = phi float [ %3641, %3774 ], [ %3641, %3857 ], [ %4052, %4040 ], [ %3641, %3631 ]
  %3763 = phi float [ %3642, %3774 ], [ %3642, %3857 ], [ %3963, %4040 ], [ %3642, %3631 ]
  %3764 = phi float [ %3643, %3774 ], [ %3643, %3857 ], [ %3964, %4040 ], [ %3643, %3631 ]
  %3765 = phi float [ %3644, %3774 ], [ %3644, %3857 ], [ %3965, %4040 ], [ %3644, %3631 ]
  %3766 = phi float [ %3645, %3774 ], [ %3645, %3857 ], [ %3992, %4040 ], [ %3645, %3631 ]
  %3767 = phi float [ %3646, %3774 ], [ %3646, %3857 ], [ %3989, %4040 ], [ %3646, %3631 ]
  %3768 = phi float [ %3647, %3774 ], [ %3647, %3857 ], [ %3986, %4040 ], [ %3647, %3631 ]
  %3769 = phi float [ %3648, %3774 ], [ %3648, %3857 ], [ %3980, %4040 ], [ %3648, %3631 ]
  %3770 = phi float [ %3649, %3774 ], [ %3649, %3857 ], [ %3975, %4040 ], [ %3649, %3631 ]
  %3771 = phi float [ %3650, %3774 ], [ %3650, %3857 ], [ %3976, %4040 ], [ %3650, %3631 ]
  %3772 = phi float [ %3651, %3774 ], [ %3651, %3857 ], [ %3977, %4040 ], [ %3651, %3631 ]
  %3773 = icmp eq i32 %3655, 0
  br i1 %3773, label %4053, label %3631

; <label>:3774                                    ; preds = %3631
  %3775 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3776 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3777 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3778 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3779 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3780 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3781 = extractvalue %dx.types.ResRet.i32 %3664, 3
  %3782 = extractvalue %dx.types.ResRet.i32 %3664, 2
  %3783 = bitcast float %3775 to i32
  %3784 = add i32 %3781, 0
  %3785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3787 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3785, %dx.types.Handle %3786, float %3713, float %3720, float undef, float undef, i32 0, i32 0, i32 undef, float %3741, float %3743, float undef, float %3742, float %3744, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3788 = extractvalue %dx.types.ResRet.f32 %3787, 0
  %3789 = fmul fast float %3788, %3780
  %3790 = fadd fast float %3789, %3779
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = fmul fast float %3713, %3673
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3674, float %3720, float %3792)  ; FMad(a,b,c)
  %3794 = fadd fast float %3793, %3778
  %3795 = fmul fast float %3713, %3675
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3676, float %3720, float %3795)  ; FMad(a,b,c)
  %3797 = fadd fast float %3796, %3777
  %3798 = fmul fast float %3741, %3673
  %3799 = call float @dx.op.tertiary.f32(i32 46, float %3674, float %3743, float %3798)  ; FMad(a,b,c)
  %3800 = fmul fast float %3741, %3675
  %3801 = call float @dx.op.tertiary.f32(i32 46, float %3676, float %3743, float %3800)  ; FMad(a,b,c)
  %3802 = fmul fast float %3742, %3673
  %3803 = call float @dx.op.tertiary.f32(i32 46, float %3674, float %3744, float %3802)  ; FMad(a,b,c)
  %3804 = fmul fast float %3742, %3675
  %3805 = call float @dx.op.tertiary.f32(i32 46, float %3676, float %3744, float %3804)  ; FMad(a,b,c)
  %3806 = add i32 %3782, 0
  %3807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3806, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3808 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3807, %dx.types.Handle %3786, float %3794, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float %3799, float %3801, float undef, float %3803, float %3805, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = and i32 %3783, 1024
  %3811 = icmp ne i32 %3810, 0
  %3812 = fcmp fast ogt float %3809, 0x3FE0101020000000
  %3813 = uitofp i1 %3812 to float
  %3814 = select i1 %3811, float %3813, float %3809
  %3815 = and i32 %3783, 8192
  %3816 = icmp ne i32 %3815, 0
  %3817 = select i1 %3816, float %3776, float 1.000000e+00
  %3818 = fmul fast float %3713, 2.000000e+00
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = call float @dx.op.unary.f32(i32 6, float %3819)  ; FAbs(value)
  %3821 = fmul fast float %3820, %3706
  %3822 = fsub fast float %3821, %3706
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fmul fast float %3720, 2.000000e+00
  %3825 = fadd fast float %3824, -1.000000e+00
  %3826 = call float @dx.op.unary.f32(i32 6, float %3825)  ; FAbs(value)
  %3827 = fmul fast float %3826, %3707
  %3828 = fsub fast float %3827, %3707
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = fmul fast float %3732, %3669
  %3831 = fsub fast float %3830, %3669
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = fmul fast float %3791, %3817
  %3834 = fmul fast float %3833, %3788
  %3835 = fmul fast float %3834, %3823
  %3836 = fmul fast float %3835, %3814
  %3837 = fmul fast float %3836, %3829
  %3838 = fmul fast float %3837, %3832
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3842 = fsub fast float %3749, %3841
  %3843 = fmul fast float %3842, %3840
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3845 = fmul fast float %3838, %3670
  %3846 = fadd fast float %3838, %3670
  %3847 = fmul fast float %3846, %3679
  %3848 = fsub fast float %3847, %3679
  %3849 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3850 = and i32 %3783, 128
  %3851 = icmp ne i32 %3850, 0
  %3852 = select i1 %3851, float %3849, float %3845
  %3853 = fmul fast float %3852, %3844
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = fcmp fast ugt float %3853, %3855
  br i1 %3856, label %3857, label %3753

; <label>:3857                                    ; preds = %3774
  %3858 = select i1 %3816, float %3853, float 0.000000e+00
  %3859 = fadd fast float %3858, %3633
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  br i1 %3816, label %3753, label %3861

; <label>:3861                                    ; preds = %3857
  %3862 = and i32 %3783, 4
  %3863 = and i32 %3783, 8
  %3864 = add i32 %3665, 0
  %3865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3864, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3867 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3865, %dx.types.Handle %3866, float %3794, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float %3799, float %3801, float undef, float %3803, float %3805, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = extractvalue %dx.types.ResRet.f32 %3867, 3
  %3872 = bitcast float %3691 to i32
  %3873 = and i32 %3872, 255
  %3874 = uitofp i32 %3873 to float
  %3875 = lshr i32 %3872, 8
  %3876 = and i32 %3875, 255
  %3877 = uitofp i32 %3876 to float
  %3878 = fmul fast float %3871, %3874
  %3879 = fadd fast float %3878, %3877
  %3880 = fmul fast float %3879, 0x3F70101000000000
  %3881 = add i32 %3666, 0
  %3882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3881, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3883 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3882, %dx.types.Handle %3866, float %3794, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float %3799, float %3801, float undef, float %3803, float %3805, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3884 = extractvalue %dx.types.ResRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.ResRet.f32 %3883, 1
  %3886 = extractvalue %dx.types.ResRet.f32 %3883, 2
  %3887 = extractvalue %dx.types.ResRet.f32 %3883, 3
  %3888 = bitcast float %3685 to i32
  %3889 = and i32 %3888, 255
  %3890 = uitofp i32 %3889 to float
  %3891 = lshr i32 %3888, 8
  %3892 = and i32 %3891, 255
  %3893 = uitofp i32 %3892 to float
  %3894 = lshr i32 %3888, 16
  %3895 = and i32 %3894, 255
  %3896 = uitofp i32 %3895 to float
  %3897 = fmul fast float %3896, 0x3F70101000000000
  %3898 = fmul fast float %3884, %3890
  %3899 = fadd fast float %3898, %3893
  %3900 = fmul fast float %3899, 0x3F70101000000000
  %3901 = fadd fast float %3885, -5.000000e-01
  %3902 = fadd fast float %3887, -5.000000e-01
  %3903 = fmul fast float %3901, %3897
  %3904 = fmul fast float %3902, %3897
  %3905 = fadd fast float %3903, 5.000000e-01
  %3906 = fadd fast float %3904, 5.000000e-01
  %3907 = fmul fast float %3868, %3694
  %3908 = fmul fast float %3869, %3695
  %3909 = fmul fast float %3870, %3696
  %3910 = fmul fast float %3905, 2.000000e+00
  %3911 = fadd fast float %3910, -1.000000e+00
  %3912 = fmul fast float %3906, 2.000000e+00
  %3913 = fadd fast float %3912, -1.000000e+00
  %3914 = fadd fast float %3911, %3913
  %3915 = fmul fast float %3914, 5.000000e-01
  %3916 = fsub fast float %3911, %3913
  %3917 = fmul fast float %3916, 5.000000e-01
  %3918 = call float @dx.op.unary.f32(i32 6, float %3915)  ; FAbs(value)
  %3919 = fsub fast float 1.000000e+00, %3918
  %3920 = call float @dx.op.unary.f32(i32 6, float %3917)  ; FAbs(value)
  %3921 = fsub fast float %3919, %3920
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3917, float %3921, float %3915, float %3917, float %3921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = call float @dx.op.unary.f32(i32 25, float %3922)  ; Rsqrt(value)
  %3924 = fmul fast float %3915, %3923
  %3925 = fmul fast float %3917, %3923
  %3926 = fmul fast float %3923, %3921
  %3927 = fmul fast float %3926, %3660
  %3928 = fmul fast float %3926, %3661
  %3929 = fmul fast float %3926, %3662
  %3930 = fmul fast float %3924, %3682
  %3931 = fmul fast float %3924, %3683
  %3932 = fmul fast float %3924, %3684
  %3933 = fadd fast float %3930, %3927
  %3934 = fadd fast float %3931, %3928
  %3935 = fadd fast float %3932, %3929
  %3936 = fmul fast float %3925, %3688
  %3937 = fmul fast float %3925, %3689
  %3938 = fmul fast float %3925, %3690
  %3939 = fadd fast float %3933, %3936
  %3940 = fadd fast float %3934, %3937
  %3941 = fadd fast float %3935, %3938
  %3942 = call float @dx.op.dot3.f32(i32 55, float %3939, float %3940, float %3941, float %3939, float %3940, float %3941)  ; Dot3(ax,ay,az,bx,by,bz)
  %3943 = call float @dx.op.unary.f32(i32 25, float %3942)  ; Rsqrt(value)
  %3944 = fmul fast float %3939, %3943
  %3945 = fmul fast float %3940, %3943
  %3946 = fmul fast float %3941, %3943
  %3947 = icmp ne i32 %3863, 0
  %3948 = select i1 %3947, float 1.000000e+00, float 0.000000e+00
  %3949 = fmul fast float %3853, %3948
  %3950 = and i32 %3783, 1
  %3951 = icmp eq i32 %3950, 0
  br i1 %3951, label %3952, label %3956

; <label>:3952                                    ; preds = %3861
  %3953 = fsub fast float %3944, %3642
  %3954 = fsub fast float %3945, %3643
  %3955 = fsub fast float %3946, %3644
  br label %3956

; <label>:3956                                    ; preds = %3952, %3861
  %3957 = phi float [ %3953, %3952 ], [ %3944, %3861 ]
  %3958 = phi float [ %3954, %3952 ], [ %3945, %3861 ]
  %3959 = phi float [ %3955, %3952 ], [ %3946, %3861 ]
  %3960 = fmul float %3959, %3949
  %3961 = fmul float %3958, %3949
  %3962 = fmul float %3957, %3949
  %3963 = fadd fast float %3962, %3642
  %3964 = fadd fast float %3961, %3643
  %3965 = fadd fast float %3960, %3644
  %3966 = icmp ne i32 %3862, 0
  %3967 = select i1 %3966, float 1.000000e+00, float 0.000000e+00
  %3968 = fmul fast float %3853, %3967
  %3969 = fsub fast float %3907, %3649
  %3970 = fsub fast float %3908, %3650
  %3971 = fsub fast float %3909, %3651
  %3972 = fmul fast float %3969, %3968
  %3973 = fmul fast float %3970, %3968
  %3974 = fmul fast float %3971, %3968
  %3975 = fadd fast float %3972, %3649
  %3976 = fadd fast float %3973, %3650
  %3977 = fadd fast float %3974, %3651
  %3978 = fsub fast float %3880, %3648
  %3979 = fmul fast float %3978, %3968
  %3980 = fadd fast float %3979, %3648
  %3981 = fmul fast float %3968, %3638
  %3982 = fsub fast float %3638, %3981
  %3983 = fmul fast float %3968, %3637
  %3984 = fsub fast float %3637, %3983
  %3985 = fadd fast float %3853, %3647
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fsub fast float %3900, %3646
  %3988 = fmul fast float %3987, %3949
  %3989 = fadd fast float %3988, %3646
  %3990 = fsub fast float %3886, %3645
  %3991 = fmul fast float %3990, %3949
  %3992 = fadd fast float %3991, %3645
  %3993 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3908, float %3909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.CBufRet.f32 %3994, 1
  %3997 = fmul fast float %3996, %3993
  %3998 = fadd fast float %3997, %3995
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = bitcast float %3697 to i32
  %4001 = and i32 %4000, 65535
  %4002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4001)  ; LegacyF16ToF32(value)
  %4003 = lshr i32 %4000, 16
  %4004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4003)  ; LegacyF16ToF32(value)
  %4005 = fcmp fast oge float %4002, 0.000000e+00
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = select i1 %4005, float %4002, float %4007
  %4009 = fadd fast float %4008, %4004
  %4010 = fsub fast float %3999, %3636
  %4011 = fmul fast float %4010, %3853
  %4012 = fadd fast float %4011, %3636
  %4013 = fmul fast float %4009, %3853
  %4014 = call float @dx.op.binary.f32(i32 35, float %3635, float %4013)  ; FMax(a,b)
  %4015 = call float @dx.op.binary.f32(i32 35, float %3634, float %3853)  ; FMax(a,b)
  %4016 = and i32 %3783, 16
  %4017 = icmp eq i32 %4016, 0
  br i1 %4017, label %4040, label %4018

; <label>:4018                                    ; preds = %3956
  %4019 = bitcast float %3703 to i32
  %4020 = add i32 %3700, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4020, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4021, %dx.types.Handle %3866, float %3794, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float %3799, float %3801, float undef, float %3803, float %3805, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.ResRet.f32 %4022, 1
  %4025 = extractvalue %dx.types.ResRet.f32 %4022, 2
  %4026 = and i32 %4019, 65535
  %4027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4026)  ; LegacyF16ToF32(value)
  %4028 = fmul fast float %4023, %3694
  %4029 = fmul fast float %4024, %3695
  %4030 = fmul fast float %4025, %3696
  %4031 = and i32 %3783, 16384
  %4032 = icmp ne i32 %4031, 0
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = select i1 %4032, float %4034, float 1.000000e+00
  %4036 = fmul fast float %4035, %4027
  %4037 = fmul fast float %4028, %4036
  %4038 = fmul fast float %4029, %4036
  %4039 = fmul fast float %4030, %4036
  br label %4040

; <label>:4040                                    ; preds = %4018, %3956
  %4041 = phi float [ %4037, %4018 ], [ 0.000000e+00, %3956 ]
  %4042 = phi float [ %4038, %4018 ], [ 0.000000e+00, %3956 ]
  %4043 = phi float [ %4039, %4018 ], [ 0.000000e+00, %3956 ]
  %4044 = fsub fast float %4041, %3639
  %4045 = fsub fast float %4042, %3640
  %4046 = fsub fast float %4043, %3641
  %4047 = fmul fast float %4044, %3853
  %4048 = fmul fast float %4045, %3853
  %4049 = fmul fast float %4046, %3853
  %4050 = fadd fast float %4047, %3639
  %4051 = fadd fast float %4048, %3640
  %4052 = fadd fast float %4049, %3641
  br label %3753

; <label>:4053                                    ; preds = %3753
  br label %4054

; <label>:4054                                    ; preds = %4053, %3568
  %4055 = phi float [ 0.000000e+00, %3568 ], [ %3754, %4053 ]
  %4056 = phi float [ %1271, %3568 ], [ %3755, %4053 ]
  %4057 = phi float [ %3512, %3568 ], [ %3756, %4053 ]
  %4058 = phi float [ %3491, %3568 ], [ %3757, %4053 ]
  %4059 = phi float [ 0.000000e+00, %3568 ], [ %3758, %4053 ]
  %4060 = phi float [ 0.000000e+00, %3568 ], [ %3759, %4053 ]
  %4061 = phi float [ %3534, %3568 ], [ %3760, %4053 ]
  %4062 = phi float [ %3536, %3568 ], [ %3761, %4053 ]
  %4063 = phi float [ %3538, %3568 ], [ %3762, %4053 ]
  %4064 = phi float [ %3564, %3568 ], [ %3763, %4053 ]
  %4065 = phi float [ %3565, %3568 ], [ %3764, %4053 ]
  %4066 = phi float [ %3566, %3568 ], [ %3765, %4053 ]
  %4067 = phi float [ %3490, %3568 ], [ %3766, %4053 ]
  %4068 = phi float [ %3489, %3568 ], [ %3767, %4053 ]
  %4069 = phi float [ 0.000000e+00, %3568 ], [ %3768, %4053 ]
  %4070 = phi float [ %3488, %3568 ], [ %3769, %4053 ]
  %4071 = phi float [ %3519, %3568 ], [ %3770, %4053 ]
  %4072 = phi float [ %3520, %3568 ], [ %3771, %4053 ]
  %4073 = phi float [ %3521, %3568 ], [ %3772, %4053 ]
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4065, float %4066, float %4064, float %4065, float %4066)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = call float @dx.op.unary.f32(i32 25, float %4074)  ; Rsqrt(value)
  %4076 = fmul fast float %4075, %4064
  %4077 = fmul fast float %4075, %4065
  %4078 = fmul fast float %4075, %4066
  %4079 = fadd fast float %4069, %1271
  %4080 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4076, float %4077, float %4078, float %4076, float %4077, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.unary.f32(i32 25, float %4081)  ; Rsqrt(value)
  %4083 = fmul fast float %4082, %4076
  %4084 = fmul fast float %4082, %4077
  %4085 = fmul fast float %4082, %4078
  br label %4086

; <label>:4086                                    ; preds = %4054, %3479
  %4087 = phi float [ %4061, %4054 ], [ %3534, %3479 ]
  %4088 = phi float [ %4062, %4054 ], [ %3536, %3479 ]
  %4089 = phi float [ %4063, %4054 ], [ %3538, %3479 ]
  %4090 = phi float [ %4083, %4054 ], [ %3564, %3479 ]
  %4091 = phi float [ %4084, %4054 ], [ %3565, %3479 ]
  %4092 = phi float [ %4085, %4054 ], [ %3566, %3479 ]
  %4093 = phi float [ %4071, %4054 ], [ %3519, %3479 ]
  %4094 = phi float [ %4072, %4054 ], [ %3520, %3479 ]
  %4095 = phi float [ %4073, %4054 ], [ %3521, %3479 ]
  %4096 = phi float [ %4070, %4054 ], [ %3488, %3479 ]
  %4097 = phi float [ %4080, %4054 ], [ %1271, %3479 ]
  %4098 = phi float [ %4068, %4054 ], [ %3489, %3479 ]
  %4099 = phi float [ %4067, %4054 ], [ %3490, %3479 ]
  %4100 = phi float [ %4060, %4054 ], [ 0.000000e+00, %3479 ]
  %4101 = phi float [ %4059, %4054 ], [ 0.000000e+00, %3479 ]
  %4102 = phi float [ %4055, %4054 ], [ 0.000000e+00, %3479 ]
  %4103 = phi float [ %4057, %4054 ], [ %3512, %3479 ]
  %4104 = phi float [ %4056, %4054 ], [ %1271, %3479 ]
  %4105 = phi float [ %4058, %4054 ], [ %3491, %3479 ]
  %4106 = fadd fast float %4096, 0xBFB99999A0000000
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = fmul fast float %4107, 0x3FF1C71C80000000
  %4109 = call float @dx.op.binary.f32(i32 36, float %4096, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4110 = fsub fast float 1.000000e+00, %4108
  %4111 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4112 = fmul fast float %4111, %4093
  %4113 = fmul fast float %4111, %4094
  %4114 = fmul fast float %4111, %4095
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4118 = fmul fast float %4108, %4093
  %4119 = fmul fast float %4108, %4094
  %4120 = fmul fast float %4108, %4095
  %4121 = fadd fast float %4118, %4109
  %4122 = fadd fast float %4119, %4109
  %4123 = fadd fast float %4120, %4109
  %4124 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4126 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4127 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.i32 %4128, 3
  %4130 = and i32 %4129, 8
  %4131 = icmp ne i32 %4130, 0
  %4132 = call float @dx.op.binary.f32(i32 35, float %4115, float %4093)  ; FMax(a,b)
  %4133 = call float @dx.op.binary.f32(i32 35, float %4116, float %4093)  ; FMax(a,b)
  %4134 = call float @dx.op.binary.f32(i32 35, float %4117, float %4093)  ; FMax(a,b)
  %4135 = call float @dx.op.dot3.f32(i32 55, float %4115, float %4116, float %4117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4136 = select i1 %280, float %4093, float %4115
  %4137 = select i1 %280, float %4135, float %4116
  %4138 = select i1 %280, float 1.000000e+00, float %4117
  %4139 = select i1 %4131, float %4132, float %4136
  %4140 = select i1 %4131, float %4133, float %4137
  %4141 = select i1 %4131, float %4134, float %4138
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4146 = fadd fast float %4143, %208
  %4147 = fadd fast float %4144, %209
  %4148 = fadd fast float %4145, %210
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4152 = fsub fast float %4146, %4150
  %4153 = fsub fast float %4147, %4151
  %4154 = fmul fast float %4152, %4152
  %4155 = fmul fast float %4153, %4153
  %4156 = fadd fast float %4154, %4155
  %4157 = call float @dx.op.unary.f32(i32 24, float %4156)  ; Sqrt(value)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4149, 2
  %4159 = fcmp fast olt float %4157, %4158
  br i1 %4159, label %4160, label %4227

; <label>:4160                                    ; preds = %4086
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.CBufRet.f32 %4161, 1
  %4168 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4171 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4172 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4173 = fadd fast float %4170, %4146
  %4174 = fadd fast float %4171, %4147
  %4175 = fadd fast float %4172, %4148
  %4176 = fmul fast float %4173, %4162
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4164, float %4176)  ; FMad(a,b,c)
  %4178 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4166, float %4177)  ; FMad(a,b,c)
  %4179 = fmul fast float %4173, %4167
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4169, float %4180)  ; FMad(a,b,c)
  %4182 = fsub fast float %4178, %4170
  %4183 = fsub fast float %4181, %4171
  %4184 = fsub fast float %4182, %4150
  %4185 = fadd fast float %4184, %4158
  %4186 = fsub fast float %4183, %4151
  %4187 = fadd fast float %4186, %4158
  %4188 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4189 = fmul fast float %4185, %4188
  %4190 = fmul fast float %4187, %4188
  %4191 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4193 = fsub fast float 1.000000e+00, %4191
  %4194 = fsub fast float 1.000000e+00, %4192
  %4195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %4193, float %4194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = fcmp fast ugt float %4196, 0.000000e+00
  br i1 %4197, label %4198, label %4501

; <label>:4198                                    ; preds = %4160
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4201 = fmul fast float %4200, %4196
  %4202 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4203 = fadd fast float %4202, %4201
  %4204 = extractvalue %dx.types.CBufRet.f32 %4165, 2
  %4205 = fadd fast float %4203, %4172
  %4206 = fmul fast float %4178, %4166
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4169, float %4206)  ; FMad(a,b,c)
  %4208 = call float @dx.op.tertiary.f32(i32 46, float %4205, float %4204, float %4207)  ; FMad(a,b,c)
  %4209 = fsub fast float %4208, %4172
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4212 = fsub fast float %4209, %4211
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %4193, float %4194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %4193, float %4194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = fadd fast float %4218, %4214
  %4222 = fmul fast float %4221, 0x3F847AE140000000
  %4223 = fadd fast float %4219, %4215
  %4224 = fmul fast float %4223, 0x3F847AE140000000
  %4225 = fadd fast float %4220, %4216
  %4226 = fmul fast float %4225, 0x3F847AE140000000
  br label %4501

; <label>:4227                                    ; preds = %4086
  %4228 = and i32 %259, 1
  %4229 = icmp eq i32 %4228, 0
  br i1 %4229, label %4501, label %4230

; <label>:4230                                    ; preds = %4227
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.CBufRet.f32 %4231, 1
  %4238 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4239 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4240 = extractvalue %dx.types.CBufRet.f32 %4231, 3
  %4241 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4242 = extractvalue %dx.types.CBufRet.f32 %4235, 3
  %4243 = fadd fast float %4240, %4146
  %4244 = fadd fast float %4241, %4147
  %4245 = fadd fast float %4242, %4148
  %4246 = fmul fast float %4243, %4232
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4234, float %4246)  ; FMad(a,b,c)
  %4248 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4236, float %4247)  ; FMad(a,b,c)
  %4249 = fmul fast float %4243, %4237
  %4250 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4238, float %4249)  ; FMad(a,b,c)
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4239, float %4250)  ; FMad(a,b,c)
  %4252 = fsub fast float %4248, %4240
  %4253 = fsub fast float %4251, %4241
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.CBufRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.CBufRet.f32 %4254, 2
  %4258 = extractvalue %dx.types.CBufRet.f32 %4254, 3
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.i32 %4261, 0
  %4263 = extractvalue %dx.types.CBufRet.i32 %4261, 1
  %4264 = udiv i32 %4263, %4262
  %4265 = fsub fast float %4252, %4255
  %4266 = fsub fast float %4253, %4256
  %4267 = call float @dx.op.binary.f32(i32 35, float %4265, float 0.000000e+00)  ; FMax(a,b)
  %4268 = call float @dx.op.binary.f32(i32 35, float %4266, float 0.000000e+00)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 36, float %4267, float %4257)  ; FMin(a,b)
  %4270 = call float @dx.op.binary.f32(i32 36, float %4268, float %4258)  ; FMin(a,b)
  %4271 = add i32 %4262, -1
  %4272 = add i32 %4264, -1
  %4273 = fmul fast float %4269, %4260
  %4274 = fmul fast float %4270, %4260
  %4275 = fptoui float %4273 to i32
  %4276 = fptoui float %4274 to i32
  %4277 = call i32 @dx.op.binary.i32(i32 40, i32 %4275, i32 %4271)  ; UMin(a,b)
  %4278 = call i32 @dx.op.binary.i32(i32 40, i32 %4276, i32 %4272)  ; UMin(a,b)
  %4279 = mul i32 %4278, %4262
  %4280 = add i32 %4279, %4277
  %4281 = shl i32 %4280, 2
  %4282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.i32 %4282, 0
  %4284 = icmp eq i32 %4283, -1
  br i1 %4284, label %4501, label %4285

; <label>:4285                                    ; preds = %4230
  %4286 = mul i32 %4283, 148
  %4287 = add i32 %4286, 4
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4286, 8
  %4291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = add i32 %4286, 36
  %4294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = add i32 %4286, 60
  %4297 = add i32 %4286, 92
  %4298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4297, i32 undef)  ; BufferLoad(srv,index,wot)
  %4299 = extractvalue %dx.types.ResRet.i32 %4298, 0
  %4300 = add i32 %4286, 116
  %4301 = fsub fast float %4252, %4289
  %4302 = fsub fast float %4253, %4292
  %4303 = fmul fast float %4260, %4301
  %4304 = fmul fast float %4260, %4302
  %4305 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4306 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4307 = fsub fast float 1.000000e+00, %4306
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4310 = call float @dx.op.unary.f32(i32 83, float %4305)  ; DerivCoarseX(value)
  %4311 = call float @dx.op.unary.f32(i32 83, float %4307)  ; DerivCoarseX(value)
  %4312 = call float @dx.op.unary.f32(i32 84, float %4305)  ; DerivCoarseY(value)
  %4313 = call float @dx.op.unary.f32(i32 84, float %4307)  ; DerivCoarseY(value)
  %4314 = fmul fast float %4310, %4309
  %4315 = fmul fast float %4311, %4309
  %4316 = fmul fast float %4312, %4309
  %4317 = fmul fast float %4313, %4309
  %4318 = call float @dx.op.dot2.f32(i32 54, float %4316, float %4317, float %4316, float %4317)  ; Dot2(ax,ay,bx,by)
  %4319 = call float @dx.op.dot2.f32(i32 54, float %4314, float %4315, float %4314, float %4315)  ; Dot2(ax,ay,bx,by)
  %4320 = call float @dx.op.binary.f32(i32 35, float %4319, float %4318)  ; FMax(a,b)
  %4321 = call float @dx.op.unary.f32(i32 23, float %4320)  ; Log(value)
  %4322 = fmul fast float %4321, 5.000000e-01
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 1
  %4325 = fadd fast float %4324, %4322
  %4326 = call float @dx.op.binary.f32(i32 35, float %4325, float 0.000000e+00)  ; FMax(a,b)
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4329 = fadd fast float %4328, %4326
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4332 = fadd fast float %4329, %4331
  %4333 = add i32 %4299, 0
  %4334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4333, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4335 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4334, i32 0)  ; GetDimensions(handle,mipLevel)
  %4336 = extractvalue %dx.types.Dimensions %4335, 0
  %4337 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4336)  ; FirstbitLo(value)
  %4338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.i32 %4338, 1
  %4340 = sub nsw i32 %4339, %4337
  %4341 = sitofp i32 %4340 to float
  %4342 = fsub fast float %4332, %4341
  %4343 = call float @dx.op.binary.f32(i32 35, float %4342, float 0.000000e+00)  ; FMax(a,b)
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4334, %dx.types.Handle %54, float %4305, float %4307, float %4295, float undef, i32 0, i32 0, i32 undef, float %4343)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fcmp ule float %4345, 0x3FE0101020000000
  %4347 = extractvalue %dx.types.CBufRet.i32 %4338, 0
  %4348 = and i32 %4347, 128
  %4349 = icmp ne i32 %4348, 0
  %4350 = and i1 %4346, %4349
  br i1 %4350, label %4501, label %4351

; <label>:4351                                    ; preds = %4285
  %4352 = add i32 %4286, 20
  %4353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = add i32 %4286, 24
  %4356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = add i32 %4286, 40
  %4359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = add i32 %4286, 96
  %4362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.i32 %4362, 0
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4366 = fmul fast float %4365, %4305
  %4367 = fmul fast float %4365, %4307
  %4368 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4369 = fadd fast float %4366, %4368
  %4370 = fadd fast float %4367, %4368
  %4371 = add i32 %4363, 0
  %4372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4371, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4373 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4372, i32 0)  ; GetDimensions(handle,mipLevel)
  %4374 = extractvalue %dx.types.Dimensions %4373, 0
  %4375 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4374)  ; FirstbitLo(value)
  %4376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.i32 %4376, 1
  %4378 = sub nsw i32 %4377, %4375
  %4379 = sitofp i32 %4378 to float
  %4380 = fsub fast float %4329, %4379
  %4381 = call float @dx.op.binary.f32(i32 35, float %4380, float 0.000000e+00)  ; FMax(a,b)
  %4382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4372, %dx.types.Handle %54, float %4369, float %4370, float %4360, float undef, i32 0, i32 0, i32 undef, float %4381)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = fmul fast float %4383, %4354
  %4385 = fadd fast float %4384, %4357
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.CBufRet.f32 %4386, 2
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4394 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4395 = fadd fast float %4391, %4252
  %4396 = fadd fast float %4393, %4253
  %4397 = fadd fast float %4385, %4394
  %4398 = fmul fast float %4395, %4387
  %4399 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4388, float %4398)  ; FMad(a,b,c)
  %4400 = call float @dx.op.tertiary.f32(i32 46, float %4397, float %4389, float %4399)  ; FMad(a,b,c)
  %4401 = fsub fast float %4400, %4394
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4404 = fsub fast float %4401, %4403
  %4405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.i32 %4405, 0
  %4407 = call i32 @dx.op.binary.i32(i32 40, i32 %4283, i32 %4406)  ; UMin(a,b)
  %4408 = mul i32 %4407, 36
  %4409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.i32 %4409, 0
  %4411 = add i32 %4408, 4
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = fmul fast float %4413, %4305
  %4415 = fmul fast float %4413, %4307
  %4416 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4417 = fadd fast float %4414, %4416
  %4418 = fadd fast float %4415, %4416
  %4419 = icmp eq i32 %4410, 0
  br i1 %4419, label %4488, label %4420

; <label>:4420                                    ; preds = %4351
  br label %4421

; <label>:4421                                    ; preds = %4478, %4420
  %4422 = phi float [ %4479, %4478 ], [ 0.000000e+00, %4420 ]
  %4423 = phi float [ %4480, %4478 ], [ 0.000000e+00, %4420 ]
  %4424 = phi float [ %4481, %4478 ], [ 0.000000e+00, %4420 ]
  %4425 = phi float [ %4482, %4478 ], [ 0.000000e+00, %4420 ]
  %4426 = phi float [ %4483, %4478 ], [ 0.000000e+00, %4420 ]
  %4427 = phi float [ %4484, %4478 ], [ 0.000000e+00, %4420 ]
  %4428 = phi i32 [ %4485, %4478 ], [ 0, %4420 ]
  %4429 = shl i32 %4428, 2
  %4430 = add i32 %4296, %4429
  %4431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = add i32 %4300, %4429
  %4434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.i32 %4434, 0
  %4436 = add i32 %4435, 0
  %4437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4436, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4438 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4437, i32 0)  ; GetDimensions(handle,mipLevel)
  %4439 = extractvalue %dx.types.Dimensions %4438, 0
  %4440 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4439)  ; FirstbitLo(value)
  %4441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.i32 %4441, 1
  %4443 = sub nsw i32 %4442, %4440
  %4444 = sitofp i32 %4443 to float
  %4445 = fsub fast float %4329, %4444
  %4446 = call float @dx.op.binary.f32(i32 35, float %4445, float 0.000000e+00)  ; FMax(a,b)
  %4447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4437, %dx.types.Handle %54, float %4417, float %4418, float %4432, float undef, i32 0, i32 0, i32 undef, float %4446)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = fcmp fast ogt float %4448, 0.000000e+00
  br i1 %4449, label %4450, label %4478

; <label>:4450                                    ; preds = %4421
  %4451 = add i32 %4411, %4429
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = and i32 %4453, 32767
  %4455 = mul nuw nsw i32 %4454, 928
  %4456 = add nuw nsw i32 %4455, 48
  %4457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.ResRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.ResRet.f32 %4457, 2
  %4461 = add nuw nsw i32 %4455, 60
  %4462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4461, i32 undef)  ; BufferLoad(srv,index,wot)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.ResRet.f32 %4462, 2
  %4466 = fmul fast float %4458, %4448
  %4467 = fmul fast float %4459, %4448
  %4468 = fmul fast float %4460, %4448
  %4469 = fadd fast float %4466, %4422
  %4470 = fadd fast float %4467, %4423
  %4471 = fadd fast float %4468, %4424
  %4472 = fmul fast float %4463, %4448
  %4473 = fmul fast float %4464, %4448
  %4474 = fmul fast float %4465, %4448
  %4475 = fadd fast float %4472, %4425
  %4476 = fadd fast float %4473, %4426
  %4477 = fadd fast float %4474, %4427
  br label %4478

; <label>:4478                                    ; preds = %4450, %4421
  %4479 = phi float [ %4469, %4450 ], [ %4422, %4421 ]
  %4480 = phi float [ %4470, %4450 ], [ %4423, %4421 ]
  %4481 = phi float [ %4471, %4450 ], [ %4424, %4421 ]
  %4482 = phi float [ %4475, %4450 ], [ %4425, %4421 ]
  %4483 = phi float [ %4476, %4450 ], [ %4426, %4421 ]
  %4484 = phi float [ %4477, %4450 ], [ %4427, %4421 ]
  %4485 = add nuw i32 %4428, 1
  %4486 = icmp eq i32 %4485, %4410
  br i1 %4486, label %4487, label %4421

; <label>:4487                                    ; preds = %4478
  br label %4488

; <label>:4488                                    ; preds = %4487, %4351
  %4489 = phi float [ 0.000000e+00, %4351 ], [ %4479, %4487 ]
  %4490 = phi float [ 0.000000e+00, %4351 ], [ %4480, %4487 ]
  %4491 = phi float [ 0.000000e+00, %4351 ], [ %4481, %4487 ]
  %4492 = phi float [ 0.000000e+00, %4351 ], [ %4482, %4487 ]
  %4493 = phi float [ 0.000000e+00, %4351 ], [ %4483, %4487 ]
  %4494 = phi float [ 0.000000e+00, %4351 ], [ %4484, %4487 ]
  %4495 = fadd fast float %4492, %4489
  %4496 = fmul fast float %4495, 0x3F847AE140000000
  %4497 = fadd fast float %4493, %4490
  %4498 = fmul fast float %4497, 0x3F847AE140000000
  %4499 = fadd fast float %4494, %4491
  %4500 = fmul fast float %4499, 0x3F847AE140000000
  br label %4501

; <label>:4501                                    ; preds = %4488, %4285, %4230, %4227, %4198, %4160
  %4502 = phi float [ %4212, %4198 ], [ -1.310720e+05, %4160 ], [ %4404, %4488 ], [ -1.310720e+05, %4230 ], [ -1.310720e+05, %4285 ], [ -1.310720e+05, %4227 ]
  %4503 = phi float [ %4222, %4198 ], [ 0.000000e+00, %4160 ], [ %4496, %4488 ], [ 0.000000e+00, %4230 ], [ 0.000000e+00, %4285 ], [ 0.000000e+00, %4227 ]
  %4504 = phi float [ %4224, %4198 ], [ 0.000000e+00, %4160 ], [ %4498, %4488 ], [ 0.000000e+00, %4230 ], [ 0.000000e+00, %4285 ], [ 0.000000e+00, %4227 ]
  %4505 = phi float [ %4226, %4198 ], [ 0.000000e+00, %4160 ], [ %4500, %4488 ], [ 0.000000e+00, %4230 ], [ 0.000000e+00, %4285 ], [ 0.000000e+00, %4227 ]
  %4506 = phi i1 [ true, %4198 ], [ false, %4160 ], [ true, %4488 ], [ false, %4230 ], [ false, %4285 ], [ false, %4227 ]
  %4507 = and i32 %259, 3
  %4508 = icmp eq i32 %4507, 1
  %4509 = select i1 %4508, float 1.000000e+00, float 0.000000e+00
  %4510 = fsub fast float %4502, %210
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = select i1 %4506, float %4511, float 1.000000e+00
  %4513 = fmul fast float %4512, %4509
  %4514 = icmp eq i32 %4507, 3
  %4515 = select i1 %4514, float 1.000000e+00, float %4513
  %4516 = call float @dx.op.binary.f32(i32 35, float %4102, float %4515)  ; FMax(a,b)
  %4517 = fcmp fast olt float %4515, 1.000000e+00
  %4518 = fcmp uge float %81, 0.000000e+00
  %4519 = and i1 %4518, %4517
  br i1 %4519, label %4520, label %4530

; <label>:4520                                    ; preds = %4501
  %4521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %81, float %82, float %83, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.ResRet.f32 %4521, 1
  %4524 = extractvalue %dx.types.ResRet.f32 %4521, 2
  %4525 = fadd fast float %4522, %4516
  %4526 = fcmp ule float %80, 0.000000e+00
  %4527 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4528 = select i1 %4526, float %4527, float 1.000000e+00
  %4529 = fmul fast float %4528, %4524
  br label %4530

; <label>:4530                                    ; preds = %4520, %4501
  %4531 = phi float [ %4525, %4520 ], [ %4516, %4501 ]
  %4532 = phi float [ %4523, %4520 ], [ 0.000000e+00, %4501 ]
  %4533 = phi float [ %4529, %4520 ], [ 0.000000e+00, %4501 ]
  %4534 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4537 = fcmp fast une float %4535, 0.000000e+00
  %4538 = fcmp fast une float %4536, 0.000000e+00
  %4539 = or i1 %4537, %4538
  br i1 %4539, label %4540, label %5099

; <label>:4540                                    ; preds = %4530
  br i1 %4537, label %4541, label %4814

; <label>:4541                                    ; preds = %4540
  %4542 = call float @dx.op.unary.f32(i32 23, float %4099)  ; Log(value)
  %4543 = fmul fast float %4542, 4.000000e+00
  %4544 = call float @dx.op.unary.f32(i32 21, float %4543)  ; Exp(value)
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = fmul fast float %4546, %68
  %4548 = fmul fast float %4546, %69
  %4549 = fmul fast float %4546, %70
  %4550 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4551 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4552 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %4553 = call float @dx.op.unary.f32(i32 23, float %4550)  ; Log(value)
  %4554 = call float @dx.op.unary.f32(i32 23, float %4551)  ; Log(value)
  %4555 = call float @dx.op.unary.f32(i32 23, float %4552)  ; Log(value)
  %4556 = fmul fast float %4553, 4.000000e+00
  %4557 = fmul fast float %4554, 4.000000e+00
  %4558 = fmul fast float %4555, 4.000000e+00
  %4559 = call float @dx.op.unary.f32(i32 21, float %4556)  ; Exp(value)
  %4560 = call float @dx.op.unary.f32(i32 21, float %4557)  ; Exp(value)
  %4561 = call float @dx.op.unary.f32(i32 21, float %4558)  ; Exp(value)
  %4562 = fadd fast float %4560, %4559
  %4563 = fadd fast float %4562, %4561
  %4564 = fdiv fast float 1.000000e+00, %4563
  %4565 = fmul fast float %4564, %4559
  %4566 = fcmp fast ogt float %77, 0.000000e+00
  %4567 = fcmp fast ogt float %78, 0.000000e+00
  %4568 = fcmp fast ogt float %79, 0.000000e+00
  %4569 = fcmp fast olt float %77, 0.000000e+00
  %4570 = fcmp fast olt float %78, 0.000000e+00
  %4571 = fcmp fast olt float %79, 0.000000e+00
  %4572 = zext i1 %4566 to i32
  %4573 = zext i1 %4567 to i32
  %4574 = zext i1 %4568 to i32
  %4575 = zext i1 %4569 to i32
  %4576 = zext i1 %4570 to i32
  %4577 = zext i1 %4571 to i32
  %4578 = sub nsw i32 %4572, %4575
  %4579 = sub nsw i32 %4573, %4576
  %4580 = sub nsw i32 %4574, %4577
  %4581 = call float @dx.op.unary.f32(i32 83, float %4547)  ; DerivCoarseX(value)
  %4582 = call float @dx.op.unary.f32(i32 83, float %4548)  ; DerivCoarseX(value)
  %4583 = call float @dx.op.unary.f32(i32 83, float %4549)  ; DerivCoarseX(value)
  %4584 = call float @dx.op.unary.f32(i32 84, float %4547)  ; DerivCoarseY(value)
  %4585 = call float @dx.op.unary.f32(i32 84, float %4548)  ; DerivCoarseY(value)
  %4586 = call float @dx.op.unary.f32(i32 84, float %4549)  ; DerivCoarseY(value)
  %4587 = fcmp fast ole float %291, %4565
  %4588 = fmul fast float %4564, %4562
  %4589 = fcmp fast ole float %291, %4588
  %4590 = select i1 %4589, float %4549, float %4547
  %4591 = select i1 %4589, float %4547, float %4548
  %4592 = select i1 %4587, float %4548, float %4590
  %4593 = select i1 %4587, float %4549, float %4591
  %4594 = select i1 %4589, float %4583, float %4581
  %4595 = select i1 %4589, float %4581, float %4582
  %4596 = select i1 %4587, float %4582, float %4594
  %4597 = select i1 %4587, float %4583, float %4595
  %4598 = select i1 %4589, float %4586, float %4584
  %4599 = select i1 %4589, float %4584, float %4585
  %4600 = select i1 %4587, float %4585, float %4598
  %4601 = select i1 %4587, float %4586, float %4599
  %4602 = call float @dx.op.unary.f32(i32 27, float %4592)  ; Round_ni(value)
  %4603 = call float @dx.op.unary.f32(i32 27, float %4593)  ; Round_ni(value)
  %4604 = fptosi float %4602 to i32
  %4605 = fptosi float %4603 to i32
  %4606 = xor i32 %4605, %4604
  %4607 = sitofp i32 %4606 to float
  %4608 = fptosi float %4607 to i32
  %4609 = sitofp i32 %4608 to float
  %4610 = fmul fast float %4609, 0x3FE3C6EF40000000
  %4611 = frem fast float %4602, 2.560000e+02
  %4612 = frem fast float %4603, 2.560000e+02
  %4613 = fptoui float %4611 to i32
  %4614 = fptoui float %4612 to i32
  %4615 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4613, i32 %4614, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = fadd fast float %4616, %4610
  %4620 = fadd fast float %4617, %4610
  %4621 = fadd fast float %4618, %4610
  %4622 = call float @dx.op.unary.f32(i32 22, float %4619)  ; Frc(value)
  %4623 = call float @dx.op.unary.f32(i32 22, float %4620)  ; Frc(value)
  %4624 = call float @dx.op.unary.f32(i32 22, float %4621)  ; Frc(value)
  %4625 = fmul fast float %4624, 0x401921FB60000000
  %4626 = call float @dx.op.unary.f32(i32 13, float %4625)  ; Sin(value)
  %4627 = call float @dx.op.unary.f32(i32 12, float %4625)  ; Cos(value)
  %4628 = fsub fast float -0.000000e+00, %4627
  %4629 = fmul fast float %4627, %4592
  %4630 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4593, float %4629)  ; FMad(a,b,c)
  %4631 = fmul fast float %4626, %4592
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %4628, float %4593, float %4631)  ; FMad(a,b,c)
  %4633 = fadd fast float %4630, %4622
  %4634 = fadd fast float %4632, %4623
  %4635 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4636 = bitcast float %4635 to i32
  %4637 = icmp eq i32 %4636, 0
  br i1 %4637, label %4676, label %4638

; <label>:4638                                    ; preds = %4541
  %4639 = add i32 %4636, 0
  %4640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4641 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4640, %dx.types.Handle %122, float %4633, float %4634, float undef, float undef, i32 0, i32 0, i32 undef, float %4596, float %4597, float undef, float %4600, float %4601, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4646 = fsub fast float 1.000000e+00, %4535
  %4647 = call float @dx.op.binary.f32(i32 35, float %4646, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4648 = bitcast float %4535 to i32
  %4649 = sitofp i32 %4648 to float
  %4650 = fadd fast float %4649, 0xC1CFBF8940000000
  %4651 = fmul fast float %4645, %4650
  %4652 = fadd fast float %4651, 0x41CFBF8940000000
  %4653 = fptosi float %4652 to i32
  %4654 = bitcast i32 %4653 to float
  %4655 = bitcast float %4647 to i32
  %4656 = sitofp i32 %4655 to float
  %4657 = fadd fast float %4656, 0xC1CFBF8940000000
  %4658 = fmul fast float %4657, %4645
  %4659 = fadd fast float %4658, 0x41CFBF8940000000
  %4660 = fptosi float %4659 to i32
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4654, %4644
  %4663 = fmul fast float %4661, %4644
  %4664 = fsub fast float %4647, %4662
  %4665 = fadd fast float %4663, %4647
  %4666 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4668 = fsub fast float %4642, %4666
  %4669 = fsub fast float %4667, %4666
  %4670 = bitcast float %4669 to i32
  %4671 = sub nsw i32 2129859010, %4670
  %4672 = bitcast i32 %4671 to float
  %4673 = fmul fast float %4672, %4668
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = fcmp fast olt float %4674, 0x3F70101020000000
  br i1 %4675, label %4814, label %4676

; <label>:4676                                    ; preds = %4638, %4541
  %4677 = phi float [ %4674, %4638 ], [ %4535, %4541 ]
  %4678 = fmul fast float %4677, %4544
  %4679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.i32 %4679, 1
  %4681 = extractvalue %dx.types.CBufRet.i32 %4679, 0
  %4682 = add i32 %4681, 0
  %4683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4683, %dx.types.Handle %121, float %4633, float %4634, float undef, float undef, i32 0, i32 0, i32 undef, float %4596, float %4597, float undef, float %4600, float %4601, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.ResRet.f32 %4684, 1
  %4687 = extractvalue %dx.types.ResRet.f32 %4684, 2
  %4688 = extractvalue %dx.types.ResRet.f32 %4684, 3
  %4689 = and i32 %4680, 255
  %4690 = uitofp i32 %4689 to float
  %4691 = lshr i32 %4680, 8
  %4692 = and i32 %4691, 255
  %4693 = uitofp i32 %4692 to float
  %4694 = fmul fast float %4688, %4690
  %4695 = fadd fast float %4694, %4693
  %4696 = fmul fast float %4695, 0x3F70101000000000
  %4697 = fadd fast float %4696, 0xBFB99999A0000000
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4698, 0x3FF1C71C80000000
  %4700 = call float @dx.op.binary.f32(i32 36, float %4696, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4701 = fsub fast float 1.000000e+00, %4699
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = fmul fast float %4702, %4685
  %4704 = fmul fast float %4702, %4686
  %4705 = fmul fast float %4702, %4687
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = fmul fast float %4699, %4685
  %4710 = fmul fast float %4699, %4686
  %4711 = fmul fast float %4699, %4687
  %4712 = fadd fast float %4709, %4700
  %4713 = fadd fast float %4710, %4700
  %4714 = fadd fast float %4711, %4700
  %4715 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.i32 %4718, 3
  %4720 = extractvalue %dx.types.CBufRet.i32 %4718, 2
  %4721 = add i32 %4720, 0
  %4722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4722, %dx.types.Handle %121, float %4633, float %4634, float undef, float undef, i32 0, i32 0, i32 undef, float %4596, float %4597, float undef, float %4600, float %4601, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4724 = extractvalue %dx.types.ResRet.f32 %4723, 0
  %4725 = extractvalue %dx.types.ResRet.f32 %4723, 1
  %4726 = extractvalue %dx.types.ResRet.f32 %4723, 2
  %4727 = extractvalue %dx.types.ResRet.f32 %4723, 3
  %4728 = and i32 %4719, 255
  %4729 = uitofp i32 %4728 to float
  %4730 = lshr i32 %4719, 8
  %4731 = and i32 %4730, 255
  %4732 = uitofp i32 %4731 to float
  %4733 = lshr i32 %4719, 16
  %4734 = and i32 %4733, 255
  %4735 = uitofp i32 %4734 to float
  %4736 = fmul fast float %4735, 0x3F70101000000000
  %4737 = fmul fast float %4724, %4729
  %4738 = fadd fast float %4737, %4732
  %4739 = fmul fast float %4738, 0x3F70101000000000
  %4740 = fadd fast float %4725, -5.000000e-01
  %4741 = fadd fast float %4727, -5.000000e-01
  %4742 = fmul fast float %4740, %4736
  %4743 = fmul fast float %4741, %4736
  %4744 = fadd fast float %4742, 5.000000e-01
  %4745 = fadd fast float %4743, 5.000000e-01
  %4746 = fmul fast float %4744, 2.000000e+00
  %4747 = fadd fast float %4746, -1.000000e+00
  %4748 = fmul fast float %4745, 2.000000e+00
  %4749 = fadd fast float %4748, -1.000000e+00
  %4750 = fadd fast float %4747, %4749
  %4751 = fmul fast float %4750, 5.000000e-01
  %4752 = fsub fast float %4747, %4749
  %4753 = fmul fast float %4752, 5.000000e-01
  %4754 = call float @dx.op.unary.f32(i32 6, float %4751)  ; FAbs(value)
  %4755 = fsub fast float 1.000000e+00, %4754
  %4756 = call float @dx.op.unary.f32(i32 6, float %4753)  ; FAbs(value)
  %4757 = fsub fast float %4755, %4756
  %4758 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4753, float %4757, float %4751, float %4753, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %4759 = call float @dx.op.unary.f32(i32 25, float %4758)  ; Rsqrt(value)
  %4760 = fmul fast float %4751, %4759
  %4761 = fmul fast float %4753, %4759
  %4762 = select i1 %4589, i32 %4579, i32 %4580
  %4763 = select i1 %4587, i32 %4578, i32 %4762
  %4764 = sitofp i32 %4763 to float
  %4765 = fmul fast float %4757, %4764
  %4766 = fmul fast float %4765, %4759
  %4767 = select i1 %4589, float %4766, float %4761
  %4768 = select i1 %4589, float %4761, float %4766
  %4769 = select i1 %4587, float %4766, float %4760
  %4770 = select i1 %4587, float %4761, float %4767
  %4771 = select i1 %4587, float %4760, float %4768
  %4772 = fsub fast float %4706, %4139
  %4773 = fsub fast float %4707, %4140
  %4774 = fsub fast float %4708, %4141
  %4775 = fmul fast float %4772, %4678
  %4776 = fmul fast float %4773, %4678
  %4777 = fmul fast float %4774, %4678
  %4778 = fadd fast float %4775, %4139
  %4779 = fadd fast float %4776, %4140
  %4780 = fadd fast float %4777, %4141
  %4781 = fsub fast float %4715, %4124
  %4782 = fsub fast float %4716, %4125
  %4783 = fsub fast float %4717, %4126
  %4784 = fmul fast float %4781, %4678
  %4785 = fmul fast float %4782, %4678
  %4786 = fmul fast float %4783, %4678
  %4787 = fadd fast float %4784, %4124
  %4788 = fadd fast float %4785, %4125
  %4789 = fadd fast float %4786, %4126
  %4790 = fadd fast float %4769, %4090
  %4791 = fadd fast float %4770, %4091
  %4792 = fadd fast float %4771, %4092
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4791, float %4792, float %4790, float %4791, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 25, float %4793)  ; Rsqrt(value)
  %4795 = fmul fast float %4790, %4794
  %4796 = fmul fast float %4791, %4794
  %4797 = fmul fast float %4792, %4794
  %4798 = fsub fast float %4795, %4090
  %4799 = fsub fast float %4796, %4091
  %4800 = fsub fast float %4797, %4092
  %4801 = fmul fast float %4798, %4678
  %4802 = fmul fast float %4799, %4678
  %4803 = fmul fast float %4800, %4678
  %4804 = fadd fast float %4801, %4090
  %4805 = fadd fast float %4802, %4091
  %4806 = fadd fast float %4803, %4092
  %4807 = call float @dx.op.binary.f32(i32 36, float %4099, float %4726)  ; FMin(a,b)
  %4808 = fsub fast float %4807, %4099
  %4809 = fmul fast float %4808, %4678
  %4810 = fadd fast float %4809, %4099
  %4811 = fsub fast float %4739, %4127
  %4812 = fmul fast float %4811, %4678
  %4813 = fadd fast float %4812, %4127
  br label %4814

; <label>:4814                                    ; preds = %4676, %4638, %4540
  %4815 = phi float [ %4787, %4676 ], [ %4124, %4638 ], [ %4124, %4540 ]
  %4816 = phi float [ %4788, %4676 ], [ %4125, %4638 ], [ %4125, %4540 ]
  %4817 = phi float [ %4789, %4676 ], [ %4126, %4638 ], [ %4126, %4540 ]
  %4818 = phi float [ %4804, %4676 ], [ %4090, %4638 ], [ %4090, %4540 ]
  %4819 = phi float [ %4805, %4676 ], [ %4091, %4638 ], [ %4091, %4540 ]
  %4820 = phi float [ %4806, %4676 ], [ %4092, %4638 ], [ %4092, %4540 ]
  %4821 = phi float [ %4778, %4676 ], [ %4139, %4638 ], [ %4139, %4540 ]
  %4822 = phi float [ %4779, %4676 ], [ %4140, %4638 ], [ %4140, %4540 ]
  %4823 = phi float [ %4780, %4676 ], [ %4141, %4638 ], [ %4141, %4540 ]
  %4824 = phi float [ %4813, %4676 ], [ %4127, %4638 ], [ %4127, %4540 ]
  %4825 = phi float [ %4810, %4676 ], [ %4099, %4638 ], [ %4099, %4540 ]
  br i1 %4538, label %4826, label %5099

; <label>:4826                                    ; preds = %4814
  %4827 = call float @dx.op.unary.f32(i32 23, float %4825)  ; Log(value)
  %4828 = fmul fast float %4827, 4.000000e+00
  %4829 = call float @dx.op.unary.f32(i32 21, float %4828)  ; Exp(value)
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = fmul fast float %4831, %68
  %4833 = fmul fast float %4831, %69
  %4834 = fmul fast float %4831, %70
  %4835 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4836 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4837 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %4838 = call float @dx.op.unary.f32(i32 23, float %4835)  ; Log(value)
  %4839 = call float @dx.op.unary.f32(i32 23, float %4836)  ; Log(value)
  %4840 = call float @dx.op.unary.f32(i32 23, float %4837)  ; Log(value)
  %4841 = fmul fast float %4838, 4.000000e+00
  %4842 = fmul fast float %4839, 4.000000e+00
  %4843 = fmul fast float %4840, 4.000000e+00
  %4844 = call float @dx.op.unary.f32(i32 21, float %4841)  ; Exp(value)
  %4845 = call float @dx.op.unary.f32(i32 21, float %4842)  ; Exp(value)
  %4846 = call float @dx.op.unary.f32(i32 21, float %4843)  ; Exp(value)
  %4847 = fadd fast float %4845, %4844
  %4848 = fadd fast float %4847, %4846
  %4849 = fdiv fast float 1.000000e+00, %4848
  %4850 = fmul fast float %4849, %4844
  %4851 = fcmp fast ogt float %77, 0.000000e+00
  %4852 = fcmp fast ogt float %78, 0.000000e+00
  %4853 = fcmp fast ogt float %79, 0.000000e+00
  %4854 = fcmp fast olt float %77, 0.000000e+00
  %4855 = fcmp fast olt float %78, 0.000000e+00
  %4856 = fcmp fast olt float %79, 0.000000e+00
  %4857 = zext i1 %4851 to i32
  %4858 = zext i1 %4852 to i32
  %4859 = zext i1 %4853 to i32
  %4860 = zext i1 %4854 to i32
  %4861 = zext i1 %4855 to i32
  %4862 = zext i1 %4856 to i32
  %4863 = sub nsw i32 %4857, %4860
  %4864 = sub nsw i32 %4858, %4861
  %4865 = sub nsw i32 %4859, %4862
  %4866 = call float @dx.op.unary.f32(i32 83, float %4832)  ; DerivCoarseX(value)
  %4867 = call float @dx.op.unary.f32(i32 83, float %4833)  ; DerivCoarseX(value)
  %4868 = call float @dx.op.unary.f32(i32 83, float %4834)  ; DerivCoarseX(value)
  %4869 = call float @dx.op.unary.f32(i32 84, float %4832)  ; DerivCoarseY(value)
  %4870 = call float @dx.op.unary.f32(i32 84, float %4833)  ; DerivCoarseY(value)
  %4871 = call float @dx.op.unary.f32(i32 84, float %4834)  ; DerivCoarseY(value)
  %4872 = fcmp fast ole float %291, %4850
  %4873 = fmul fast float %4849, %4847
  %4874 = fcmp fast ole float %291, %4873
  %4875 = select i1 %4874, float %4834, float %4832
  %4876 = select i1 %4874, float %4832, float %4833
  %4877 = select i1 %4872, float %4833, float %4875
  %4878 = select i1 %4872, float %4834, float %4876
  %4879 = select i1 %4874, float %4868, float %4866
  %4880 = select i1 %4874, float %4866, float %4867
  %4881 = select i1 %4872, float %4867, float %4879
  %4882 = select i1 %4872, float %4868, float %4880
  %4883 = select i1 %4874, float %4871, float %4869
  %4884 = select i1 %4874, float %4869, float %4870
  %4885 = select i1 %4872, float %4870, float %4883
  %4886 = select i1 %4872, float %4871, float %4884
  %4887 = call float @dx.op.unary.f32(i32 27, float %4877)  ; Round_ni(value)
  %4888 = call float @dx.op.unary.f32(i32 27, float %4878)  ; Round_ni(value)
  %4889 = fptosi float %4887 to i32
  %4890 = fptosi float %4888 to i32
  %4891 = xor i32 %4890, %4889
  %4892 = sitofp i32 %4891 to float
  %4893 = fptosi float %4892 to i32
  %4894 = sitofp i32 %4893 to float
  %4895 = fmul fast float %4894, 0x3FE3C6EF40000000
  %4896 = frem fast float %4887, 2.560000e+02
  %4897 = frem fast float %4888, 2.560000e+02
  %4898 = fptoui float %4896 to i32
  %4899 = fptoui float %4897 to i32
  %4900 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4898, i32 %4899, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4901 = extractvalue %dx.types.ResRet.f32 %4900, 0
  %4902 = extractvalue %dx.types.ResRet.f32 %4900, 1
  %4903 = extractvalue %dx.types.ResRet.f32 %4900, 2
  %4904 = fadd fast float %4901, %4895
  %4905 = fadd fast float %4902, %4895
  %4906 = fadd fast float %4903, %4895
  %4907 = call float @dx.op.unary.f32(i32 22, float %4904)  ; Frc(value)
  %4908 = call float @dx.op.unary.f32(i32 22, float %4905)  ; Frc(value)
  %4909 = call float @dx.op.unary.f32(i32 22, float %4906)  ; Frc(value)
  %4910 = fmul fast float %4909, 0x401921FB60000000
  %4911 = call float @dx.op.unary.f32(i32 13, float %4910)  ; Sin(value)
  %4912 = call float @dx.op.unary.f32(i32 12, float %4910)  ; Cos(value)
  %4913 = fsub fast float -0.000000e+00, %4912
  %4914 = fmul fast float %4912, %4877
  %4915 = call float @dx.op.tertiary.f32(i32 46, float %4911, float %4878, float %4914)  ; FMad(a,b,c)
  %4916 = fmul fast float %4911, %4877
  %4917 = call float @dx.op.tertiary.f32(i32 46, float %4913, float %4878, float %4916)  ; FMad(a,b,c)
  %4918 = fadd fast float %4915, %4907
  %4919 = fadd fast float %4917, %4908
  %4920 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4921 = bitcast float %4920 to i32
  %4922 = icmp eq i32 %4921, 0
  br i1 %4922, label %4961, label %4923

; <label>:4923                                    ; preds = %4826
  %4924 = add i32 %4921, 0
  %4925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4926 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4925, %dx.types.Handle %122, float %4918, float %4919, float undef, float undef, i32 0, i32 0, i32 undef, float %4881, float %4882, float undef, float %4885, float %4886, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4927 = extractvalue %dx.types.ResRet.f32 %4926, 0
  %4928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4929 = extractvalue %dx.types.CBufRet.f32 %4928, 1
  %4930 = extractvalue %dx.types.CBufRet.f32 %4928, 2
  %4931 = fsub fast float 1.000000e+00, %4536
  %4932 = call float @dx.op.binary.f32(i32 35, float %4931, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4933 = bitcast float %4536 to i32
  %4934 = sitofp i32 %4933 to float
  %4935 = fadd fast float %4934, 0xC1CFBF8940000000
  %4936 = fmul fast float %4930, %4935
  %4937 = fadd fast float %4936, 0x41CFBF8940000000
  %4938 = fptosi float %4937 to i32
  %4939 = bitcast i32 %4938 to float
  %4940 = bitcast float %4932 to i32
  %4941 = sitofp i32 %4940 to float
  %4942 = fadd fast float %4941, 0xC1CFBF8940000000
  %4943 = fmul fast float %4942, %4930
  %4944 = fadd fast float %4943, 0x41CFBF8940000000
  %4945 = fptosi float %4944 to i32
  %4946 = bitcast i32 %4945 to float
  %4947 = fmul fast float %4939, %4929
  %4948 = fmul fast float %4946, %4929
  %4949 = fsub fast float %4932, %4947
  %4950 = fadd fast float %4948, %4932
  %4951 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4953 = fsub fast float %4927, %4951
  %4954 = fsub fast float %4952, %4951
  %4955 = bitcast float %4954 to i32
  %4956 = sub nsw i32 2129859010, %4955
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4957, %4953
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fcmp fast olt float %4959, 0x3F70101020000000
  br i1 %4960, label %5099, label %4961

; <label>:4961                                    ; preds = %4923, %4826
  %4962 = phi float [ %4959, %4923 ], [ %4536, %4826 ]
  %4963 = fmul fast float %4962, %4829
  %4964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.i32 %4964, 1
  %4966 = extractvalue %dx.types.CBufRet.i32 %4964, 0
  %4967 = add i32 %4966, 0
  %4968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4968, %dx.types.Handle %121, float %4918, float %4919, float undef, float undef, i32 0, i32 0, i32 undef, float %4881, float %4882, float undef, float %4885, float %4886, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4970 = extractvalue %dx.types.ResRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.ResRet.f32 %4969, 1
  %4972 = extractvalue %dx.types.ResRet.f32 %4969, 2
  %4973 = extractvalue %dx.types.ResRet.f32 %4969, 3
  %4974 = and i32 %4965, 255
  %4975 = uitofp i32 %4974 to float
  %4976 = lshr i32 %4965, 8
  %4977 = and i32 %4976, 255
  %4978 = uitofp i32 %4977 to float
  %4979 = fmul fast float %4973, %4975
  %4980 = fadd fast float %4979, %4978
  %4981 = fmul fast float %4980, 0x3F70101000000000
  %4982 = fadd fast float %4981, 0xBFB99999A0000000
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fmul fast float %4983, 0x3FF1C71C80000000
  %4985 = call float @dx.op.binary.f32(i32 36, float %4981, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4986 = fsub fast float 1.000000e+00, %4984
  %4987 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4988 = fmul fast float %4987, %4970
  %4989 = fmul fast float %4987, %4971
  %4990 = fmul fast float %4987, %4972
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = fmul fast float %4984, %4970
  %4995 = fmul fast float %4984, %4971
  %4996 = fmul fast float %4984, %4972
  %4997 = fadd fast float %4994, %4985
  %4998 = fadd fast float %4995, %4985
  %4999 = fadd fast float %4996, %4985
  %5000 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %5001 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5002 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.i32 %5003, 3
  %5005 = extractvalue %dx.types.CBufRet.i32 %5003, 2
  %5006 = add i32 %5005, 0
  %5007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5008 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5007, %dx.types.Handle %121, float %4918, float %4919, float undef, float undef, i32 0, i32 0, i32 undef, float %4881, float %4882, float undef, float %4885, float %4886, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 0
  %5010 = extractvalue %dx.types.ResRet.f32 %5008, 1
  %5011 = extractvalue %dx.types.ResRet.f32 %5008, 2
  %5012 = extractvalue %dx.types.ResRet.f32 %5008, 3
  %5013 = and i32 %5004, 255
  %5014 = uitofp i32 %5013 to float
  %5015 = lshr i32 %5004, 8
  %5016 = and i32 %5015, 255
  %5017 = uitofp i32 %5016 to float
  %5018 = lshr i32 %5004, 16
  %5019 = and i32 %5018, 255
  %5020 = uitofp i32 %5019 to float
  %5021 = fmul fast float %5020, 0x3F70101000000000
  %5022 = fmul fast float %5009, %5014
  %5023 = fadd fast float %5022, %5017
  %5024 = fmul fast float %5023, 0x3F70101000000000
  %5025 = fadd fast float %5010, -5.000000e-01
  %5026 = fadd fast float %5012, -5.000000e-01
  %5027 = fmul fast float %5025, %5021
  %5028 = fmul fast float %5026, %5021
  %5029 = fadd fast float %5027, 5.000000e-01
  %5030 = fadd fast float %5028, 5.000000e-01
  %5031 = fmul fast float %5029, 2.000000e+00
  %5032 = fadd fast float %5031, -1.000000e+00
  %5033 = fmul fast float %5030, 2.000000e+00
  %5034 = fadd fast float %5033, -1.000000e+00
  %5035 = fadd fast float %5032, %5034
  %5036 = fmul fast float %5035, 5.000000e-01
  %5037 = fsub fast float %5032, %5034
  %5038 = fmul fast float %5037, 5.000000e-01
  %5039 = call float @dx.op.unary.f32(i32 6, float %5036)  ; FAbs(value)
  %5040 = fsub fast float 1.000000e+00, %5039
  %5041 = call float @dx.op.unary.f32(i32 6, float %5038)  ; FAbs(value)
  %5042 = fsub fast float %5040, %5041
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5038, float %5042, float %5036, float %5038, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.unary.f32(i32 25, float %5043)  ; Rsqrt(value)
  %5045 = fmul fast float %5036, %5044
  %5046 = fmul fast float %5038, %5044
  %5047 = select i1 %4874, i32 %4864, i32 %4865
  %5048 = select i1 %4872, i32 %4863, i32 %5047
  %5049 = sitofp i32 %5048 to float
  %5050 = fmul fast float %5042, %5049
  %5051 = fmul fast float %5050, %5044
  %5052 = select i1 %4874, float %5051, float %5046
  %5053 = select i1 %4874, float %5046, float %5051
  %5054 = select i1 %4872, float %5051, float %5045
  %5055 = select i1 %4872, float %5046, float %5052
  %5056 = select i1 %4872, float %5045, float %5053
  %5057 = fsub fast float %4991, %4821
  %5058 = fsub fast float %4992, %4822
  %5059 = fsub fast float %4993, %4823
  %5060 = fmul fast float %5057, %4963
  %5061 = fmul fast float %5058, %4963
  %5062 = fmul fast float %5059, %4963
  %5063 = fadd fast float %5060, %4821
  %5064 = fadd fast float %5061, %4822
  %5065 = fadd fast float %5062, %4823
  %5066 = fsub fast float %5000, %4815
  %5067 = fsub fast float %5001, %4816
  %5068 = fsub fast float %5002, %4817
  %5069 = fmul fast float %5066, %4963
  %5070 = fmul fast float %5067, %4963
  %5071 = fmul fast float %5068, %4963
  %5072 = fadd fast float %5069, %4815
  %5073 = fadd fast float %5070, %4816
  %5074 = fadd fast float %5071, %4817
  %5075 = fadd fast float %5054, %4818
  %5076 = fadd fast float %5055, %4819
  %5077 = fadd fast float %5056, %4820
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5075, float %5076, float %5077)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 25, float %5078)  ; Rsqrt(value)
  %5080 = fmul fast float %5075, %5079
  %5081 = fmul fast float %5076, %5079
  %5082 = fmul fast float %5077, %5079
  %5083 = fsub fast float %5080, %4818
  %5084 = fsub fast float %5081, %4819
  %5085 = fsub fast float %5082, %4820
  %5086 = fmul fast float %5083, %4963
  %5087 = fmul fast float %5084, %4963
  %5088 = fmul fast float %5085, %4963
  %5089 = fadd fast float %5086, %4818
  %5090 = fadd fast float %5087, %4819
  %5091 = fadd fast float %5088, %4820
  %5092 = call float @dx.op.binary.f32(i32 36, float %4825, float %5011)  ; FMin(a,b)
  %5093 = fsub fast float %5092, %4825
  %5094 = fmul fast float %5093, %4963
  %5095 = fadd fast float %5094, %4825
  %5096 = fsub fast float %5024, %4824
  %5097 = fmul fast float %5096, %4963
  %5098 = fadd fast float %5097, %4824
  br label %5099

; <label>:5099                                    ; preds = %4961, %4923, %4814, %4530
  %5100 = phi float [ %5072, %4961 ], [ %4815, %4923 ], [ %4815, %4814 ], [ %4124, %4530 ]
  %5101 = phi float [ %5073, %4961 ], [ %4816, %4923 ], [ %4816, %4814 ], [ %4125, %4530 ]
  %5102 = phi float [ %5074, %4961 ], [ %4817, %4923 ], [ %4817, %4814 ], [ %4126, %4530 ]
  %5103 = phi float [ %5089, %4961 ], [ %4818, %4923 ], [ %4818, %4814 ], [ %4090, %4530 ]
  %5104 = phi float [ %5090, %4961 ], [ %4819, %4923 ], [ %4819, %4814 ], [ %4091, %4530 ]
  %5105 = phi float [ %5091, %4961 ], [ %4820, %4923 ], [ %4820, %4814 ], [ %4092, %4530 ]
  %5106 = phi float [ %5063, %4961 ], [ %4821, %4923 ], [ %4821, %4814 ], [ %4139, %4530 ]
  %5107 = phi float [ %5064, %4961 ], [ %4822, %4923 ], [ %4822, %4814 ], [ %4140, %4530 ]
  %5108 = phi float [ %5065, %4961 ], [ %4823, %4923 ], [ %4823, %4814 ], [ %4141, %4530 ]
  %5109 = phi float [ %5098, %4961 ], [ %4824, %4923 ], [ %4824, %4814 ], [ %4127, %4530 ]
  %5110 = phi float [ %5095, %4961 ], [ %4825, %4923 ], [ %4825, %4814 ], [ %4099, %4530 ]
  %5111 = fcmp fast une float %4534, 0.000000e+00
  br i1 %5111, label %5112, label %5281

; <label>:5112                                    ; preds = %5099
  %5113 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %208, float %209, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.unary.f32(i32 25, float %5113)  ; Rsqrt(value)
  %5115 = fmul fast float %208, %5114
  %5116 = fsub fast float -0.000000e+00, %5115
  %5117 = fmul fast float %209, %5114
  %5118 = fsub fast float -0.000000e+00, %5117
  %5119 = fmul fast float %210, %5114
  %5120 = fsub fast float -0.000000e+00, %5119
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5118, float %5120, float %134, float %136, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = fmul fast float %4534, 2.500000e+00
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fmul fast float %4534, 0x4013FFFFE0000000
  %5125 = fadd fast float %5124, 0xBFFFFFFFE0000000
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = fmul fast float %4534, 0x4004000020000000
  %5128 = fadd fast float %5127, 0xBFF8000040000000
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fmul fast float %4106, 1.000000e+01
  %5131 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5132 = fmul fast float %5131, 2.000000e+00
  %5133 = fsub fast float 3.000000e+00, %5132
  %5134 = fmul fast float %5131, %5131
  %5135 = fmul fast float %5134, %5133
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = fsub fast float 0x3FE3333340000000, %5109
  %5138 = fmul fast float %5137, 0x400AAAAAA0000000
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fmul fast float %5136, %5139
  %5141 = fmul fast float %5106, 0x3FEA2B8620000000
  %5142 = fmul fast float %5107, 0x3FEA2B8620000000
  %5143 = fmul fast float %5108, 0x3FEA2B8620000000
  %5144 = fadd fast float %5141, 0x3FC81DFBA0000000
  %5145 = fmul fast float %5144, %5106
  %5146 = fadd fast float %5145, 0x3F910E6020000000
  %5147 = fadd fast float %5142, 0x3FC81DFBA0000000
  %5148 = fmul fast float %5147, %5107
  %5149 = fadd fast float %5148, 0x3F910E6020000000
  %5150 = fadd fast float %5143, 0x3FC81DFBA0000000
  %5151 = fmul fast float %5150, %5108
  %5152 = fadd fast float %5151, 0x3F910E6020000000
  %5153 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5156 = fsub fast float %5153, %5106
  %5157 = fsub fast float %5154, %5107
  %5158 = fsub fast float %5155, %5108
  %5159 = fmul fast float %5156, %5123
  %5160 = fmul fast float %5159, %5140
  %5161 = fmul fast float %5157, %5123
  %5162 = fmul fast float %5161, %5140
  %5163 = fmul fast float %5158, %5123
  %5164 = fmul fast float %5163, %5140
  %5165 = fadd fast float %5160, %5106
  %5166 = fadd fast float %5162, %5107
  %5167 = fadd fast float %5164, %5108
  %5168 = fmul fast float %5110, %5110
  %5169 = fmul fast float %5168, %5168
  %5170 = fadd fast float %5126, 1.000000e+00
  %5171 = fsub fast float %5170, %5140
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = call float @dx.op.dot3.f32(i32 55, float %134, float %136, float %138, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = fsub fast float 1.000000e+00, %5169
  %5176 = call float @dx.op.binary.f32(i32 36, float %5172, float %5175)  ; FMin(a,b)
  %5177 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5178 = call float @dx.op.binary.f32(i32 35, float %5176, float %5177)  ; FMax(a,b)
  %5179 = fadd fast float %5174, 0xBFE4CCCCC0000000
  %5180 = fmul fast float %5179, 0x4006DB6DA0000000
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fmul fast float %5181, 2.000000e+00
  %5183 = fsub fast float 3.000000e+00, %5182
  %5184 = bitcast float %5100 to i32
  %5185 = ashr i32 %5184, 1
  %5186 = add nsw i32 %5185, 532487669
  %5187 = bitcast i32 %5186 to float
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, 2.000000e+00
  %5193 = bitcast float %5101 to i32
  %5194 = ashr i32 %5193, 1
  %5195 = add nsw i32 %5194, 532487669
  %5196 = bitcast i32 %5195 to float
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = fmul fast float %5200, 2.000000e+00
  %5202 = bitcast float %5102 to i32
  %5203 = ashr i32 %5202, 1
  %5204 = add nsw i32 %5203, 532487669
  %5205 = bitcast i32 %5204 to float
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = bitcast float %5206 to i32
  %5208 = sub nsw i32 2129859010, %5207
  %5209 = bitcast i32 %5208 to float
  %5210 = fmul fast float %5209, 2.000000e+00
  %5211 = fsub fast float 0x4002A9FBE0000000, %5192
  %5212 = fadd fast float %5192, 0x3FD54FDF00000000
  %5213 = bitcast float %5212 to i32
  %5214 = sub nsw i32 2129859010, %5213
  %5215 = bitcast i32 %5214 to float
  %5216 = fmul fast float %5215, %5211
  %5217 = fmul fast float %5216, %5216
  %5218 = fsub fast float 0x4002A9FBE0000000, %5201
  %5219 = fadd fast float %5201, 0x3FD54FDF00000000
  %5220 = bitcast float %5219 to i32
  %5221 = sub nsw i32 2129859010, %5220
  %5222 = bitcast i32 %5221 to float
  %5223 = fmul fast float %5222, %5218
  %5224 = fmul fast float %5223, %5223
  %5225 = fsub fast float 0x4002A9FBE0000000, %5210
  %5226 = fadd fast float %5210, 0x3FD54FDF00000000
  %5227 = bitcast float %5226 to i32
  %5228 = sub nsw i32 2129859010, %5227
  %5229 = bitcast i32 %5228 to float
  %5230 = fmul fast float %5229, %5225
  %5231 = fmul fast float %5230, %5230
  %5232 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5217)  ; FMax(a,b)
  %5233 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5224)  ; FMax(a,b)
  %5234 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5231)  ; FMax(a,b)
  %5235 = fsub fast float 1.000000e+00, %5121
  %5236 = fadd fast float %5235, %5136
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fsub fast float 1.000000e+00, %4515
  %5239 = fmul fast float %5178, %5238
  %5240 = fmul fast float %5181, %5181
  %5241 = fmul fast float %5240, %5239
  %5242 = fmul fast float %5241, %5183
  %5243 = fmul fast float %5238, 0xBFE99999A0000000
  %5244 = fmul fast float %5243, %5123
  %5245 = fmul fast float %5244, %5140
  %5246 = fadd fast float %5245, 1.000000e+00
  %5247 = fadd fast float %5109, -1.000000e+00
  %5248 = fmul fast float %5246, %5247
  %5249 = fadd fast float %5248, 1.000000e+00
  %5250 = fsub fast float %5232, %5100
  %5251 = fsub fast float %5233, %5101
  %5252 = fsub fast float %5234, %5102
  %5253 = fmul fast float %5242, %5250
  %5254 = fmul fast float %5242, %5251
  %5255 = fmul fast float %5242, %5252
  %5256 = fadd fast float %5253, %5100
  %5257 = fadd fast float %5254, %5101
  %5258 = fadd fast float %5255, %5102
  %5259 = fsub fast float %134, %5103
  %5260 = fsub fast float %136, %5104
  %5261 = fsub fast float %138, %5105
  %5262 = fmul fast float %5242, %5259
  %5263 = fmul fast float %5242, %5260
  %5264 = fmul fast float %5242, %5261
  %5265 = fadd fast float %5262, %5103
  %5266 = fadd fast float %5263, %5104
  %5267 = fadd fast float %5264, %5105
  %5268 = fmul fast float %5242, %5237
  %5269 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5270 = fsub fast float 1.000000e+00, %5269
  %5271 = fmul fast float %5268, %5270
  %5272 = fadd fast float %5271, %5269
  %5273 = fsub fast float 1.000000e+00, %5110
  %5274 = fmul fast float %5242, %5273
  %5275 = fadd fast float %5274, %5110
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5266, float %5267, float %5265, float %5266, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = call float @dx.op.unary.f32(i32 25, float %5276)  ; Rsqrt(value)
  %5278 = fmul fast float %5265, %5277
  %5279 = fmul fast float %5266, %5277
  %5280 = fmul fast float %5267, %5277
  br label %5281

; <label>:5281                                    ; preds = %5112, %5099
  %5282 = phi float [ %5256, %5112 ], [ %5100, %5099 ]
  %5283 = phi float [ %5257, %5112 ], [ %5101, %5099 ]
  %5284 = phi float [ %5258, %5112 ], [ %5102, %5099 ]
  %5285 = phi float [ %5278, %5112 ], [ %5103, %5099 ]
  %5286 = phi float [ %5279, %5112 ], [ %5104, %5099 ]
  %5287 = phi float [ %5280, %5112 ], [ %5105, %5099 ]
  %5288 = phi float [ %5165, %5112 ], [ %5106, %5099 ]
  %5289 = phi float [ %5166, %5112 ], [ %5107, %5099 ]
  %5290 = phi float [ %5167, %5112 ], [ %5108, %5099 ]
  %5291 = phi float [ %5272, %5112 ], [ %5109, %5099 ]
  %5292 = phi float [ %5275, %5112 ], [ %5110, %5099 ]
  %5293 = icmp eq i32 %66, 0
  br i1 %5293, label %5324, label %5294

; <label>:5294                                    ; preds = %5281
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5297 = extractvalue %dx.types.CBufRet.f32 %5295, 3
  %5298 = fmul fast float %5296, %125
  %5299 = fmul fast float %5297, %126
  %5300 = fmul fast float %5298, 1.024000e+03
  %5301 = fmul fast float %5299, 1.024000e+03
  %5302 = fadd fast float %5300, -5.120000e+02
  %5303 = fadd fast float %5301, -5.120000e+02
  %5304 = fmul fast float %5298, 0x4081BEDF00000000
  %5305 = fadd fast float %5304, 0xC071BEDF00000000
  %5306 = call float @dx.op.unary.f32(i32 22, float %5305)  ; Frc(value)
  %5307 = fmul fast float %5302, %5306
  %5308 = fadd fast float %5307, %5303
  %5309 = fmul fast float %5299, 0x4073BEBE20000000
  %5310 = fadd fast float %5309, 0xC063BEBE20000000
  %5311 = call float @dx.op.unary.f32(i32 22, float %5310)  ; Frc(value)
  %5312 = fmul fast float %5303, %5311
  %5313 = fadd fast float %5312, %5302
  %5314 = fmul fast float %5308, %5313
  %5315 = call float @dx.op.unary.f32(i32 22, float %5314)  ; Frc(value)
  %5316 = add i32 %334, 12
  %5317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.i32 %5317, 0
  %5319 = and i32 %5318, 255
  %5320 = uitofp i32 %5319 to float
  %5321 = fmul fast float %5320, 0x3F70101020000000
  %5322 = fcmp fast olt float %5315, %5321
  br i1 %5322, label %5323, label %5324

; <label>:5323                                    ; preds = %5294
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5324

; <label>:5324                                    ; preds = %5323, %5294, %5281
  %5325 = fsub fast float -0.000000e+00, %210
  %5326 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %208, float %209, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 25, float %5326)  ; Rsqrt(value)
  %5328 = fmul fast float %5327, %208
  %5329 = fmul fast float %5327, %209
  %5330 = fmul fast float %5327, %210
  %5331 = fsub fast float -0.000000e+00, %5328
  %5332 = fsub fast float -0.000000e+00, %5329
  %5333 = fsub fast float -0.000000e+00, %5330
  %5334 = select i1 %280, float 0.000000e+00, float %5284
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5331, float %5332, float %5333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5328, float %5329, float %5330, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = fmul fast float %5337, 2.000000e+00
  %5339 = fmul fast float %5338, %5285
  %5340 = fmul fast float %5338, %5286
  %5341 = fmul fast float %5338, %5287
  %5342 = fsub fast float %5328, %5339
  %5343 = fsub fast float %5329, %5340
  %5344 = fsub fast float %5330, %5341
  %5345 = call float @dx.op.binary.f32(i32 36, float %5292, float 1.000000e+00)  ; FMin(a,b)
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = bitcast float %5346 to i32
  %5348 = ashr i32 %5347, 1
  %5349 = add nsw i32 %5348, 532487669
  %5350 = bitcast i32 %5349 to float
  %5351 = fsub fast float 1.000000e+00, %5291
  %5352 = call float @dx.op.binary.f32(i32 35, float %5351, float 0x3F847AE140000000)  ; FMax(a,b)
  %5353 = fmul fast float %5352, %5352
  %5354 = fmul fast float %5353, %5353
  %5355 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5350, float %5354, float %5355, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = fsub fast float 1.000000e+00, %5292
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = call float @dx.op.dot3.f32(i32 55, float %92, float %88, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fmul fast float %5361, 0x3FD20DD760000000
  %5363 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %92)  ; FMax(a,b)
  %5364 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = fcmp fast oeq float %5364, 0.000000e+00
  %5366 = fcmp fast oeq float %5363, 0.000000e+00
  %5367 = or i1 %5366, %5365
  br i1 %5367, label %5397, label %5368

; <label>:5368                                    ; preds = %5324
  %5369 = fsub fast float -0.000000e+00, %95
  %5370 = fsub fast float -0.000000e+00, %93
  %5371 = call float @dx.op.unary.f32(i32 24, float %5364)  ; Sqrt(value)
  %5372 = fdiv fast float %5371, %5363
  %5373 = fcmp fast ogt float %5372, 0x3FFB6F8900000000
  %5374 = select i1 %5373, float 0x3FFB6F8900000000, float %5372
  %5375 = fmul fast float %5374, 0x3FE8A23460000000
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = call float @dx.op.binary.f32(i32 35, float %5374, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5378 = fmul fast float %5376, %5363
  %5379 = fmul fast float %5377, 0x3FF279A740000000
  %5380 = fadd fast float %5379, -1.000000e+00
  %5381 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %94, float %5369, float %5370, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = call float @dx.op.unary.f32(i32 25, float %5381)  ; Rsqrt(value)
  %5383 = fmul fast float %5382, %5369
  %5384 = fmul fast float %5382, %5370
  %5385 = fmul fast float %5382, %94
  %5386 = fmul fast float %5380, %5380
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5377, 0x40005F8BE0000000
  %5389 = fsub fast float 0x400C5BF8A0000000, %5388
  %5390 = fdiv fast float %5378, %5389
  %5391 = fmul fast float %5390, 0x3FEE31C3C0000000
  %5392 = fmul fast float %5391, %5387
  %5393 = fmul fast float %5377, 0x3FDACB7480000000
  %5394 = fadd fast float %5393, 0xBFD7347680000000
  %5395 = fmul fast float %5394, %5390
  %5396 = fmul fast float %5395, %5387
  br label %5397

; <label>:5397                                    ; preds = %5368, %5324
  %5398 = phi float [ %5383, %5368 ], [ 0.000000e+00, %5324 ]
  %5399 = phi float [ %5384, %5368 ], [ 0.000000e+00, %5324 ]
  %5400 = phi float [ %5385, %5368 ], [ 0.000000e+00, %5324 ]
  %5401 = phi float [ %5392, %5368 ], [ 0.000000e+00, %5324 ]
  %5402 = phi float [ %5396, %5368 ], [ 0.000000e+00, %5324 ]
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5399, float %5400, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = fmul fast float %5403, %5403
  %5405 = fmul fast float %5404, 0x3FEE471020000000
  %5406 = fadd fast float %5405, 0xBFD42F6020000000
  %5407 = fmul fast float %5363, 0x3FD20DD760000000
  %5408 = fmul fast float %5406, %5402
  %5409 = fmul fast float %5401, 0x3FDF454380000000
  %5410 = fmul fast float %5409, %5403
  %5411 = fadd fast float %5410, %5407
  %5412 = fadd fast float %5411, %5408
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5399, float %5400, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = fmul fast float %5413, 0x3FDF454380000000
  %5415 = fmul fast float %5413, %5413
  %5416 = fmul fast float %5415, 0x3FEE471020000000
  %5417 = fadd fast float %5416, 0xBFD42F6020000000
  %5418 = call float @dx.op.dot3.f32(i32 55, float %5363, float %5401, float %5402, float 0x3FD20DD760000000, float %5414, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %88)  ; FMax(a,b)
  %5420 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5421 = fcmp fast oeq float %5420, 0.000000e+00
  %5422 = fcmp fast oeq float %5419, 0.000000e+00
  %5423 = or i1 %5422, %5421
  br i1 %5423, label %5453, label %5424

; <label>:5424                                    ; preds = %5397
  %5425 = fsub fast float -0.000000e+00, %91
  %5426 = fsub fast float -0.000000e+00, %89
  %5427 = call float @dx.op.unary.f32(i32 24, float %5420)  ; Sqrt(value)
  %5428 = fdiv fast float %5427, %5419
  %5429 = fcmp fast ogt float %5428, 0x3FFB6F8900000000
  %5430 = select i1 %5429, float 0x3FFB6F8900000000, float %5428
  %5431 = fmul fast float %5430, 0x3FE8A23460000000
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = call float @dx.op.binary.f32(i32 35, float %5430, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5434 = fmul fast float %5432, %5419
  %5435 = fmul fast float %5433, 0x3FF279A740000000
  %5436 = fadd fast float %5435, -1.000000e+00
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %90, float %5425, float %5426, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.unary.f32(i32 25, float %5437)  ; Rsqrt(value)
  %5439 = fmul fast float %5438, %5425
  %5440 = fmul fast float %5438, %5426
  %5441 = fmul fast float %5438, %90
  %5442 = fmul fast float %5436, %5436
  %5443 = fsub fast float 1.000000e+00, %5442
  %5444 = fmul fast float %5433, 0x40005F8BE0000000
  %5445 = fsub fast float 0x400C5BF8A0000000, %5444
  %5446 = fdiv fast float %5434, %5445
  %5447 = fmul fast float %5446, 0x3FEE31C3C0000000
  %5448 = fmul fast float %5447, %5443
  %5449 = fmul fast float %5433, 0x3FDACB7480000000
  %5450 = fadd fast float %5449, 0xBFD7347680000000
  %5451 = fmul fast float %5450, %5446
  %5452 = fmul fast float %5451, %5443
  br label %5453

; <label>:5453                                    ; preds = %5424, %5397
  %5454 = phi float [ %5439, %5424 ], [ 0.000000e+00, %5397 ]
  %5455 = phi float [ %5440, %5424 ], [ 0.000000e+00, %5397 ]
  %5456 = phi float [ %5441, %5424 ], [ 0.000000e+00, %5397 ]
  %5457 = phi float [ %5448, %5424 ], [ 0.000000e+00, %5397 ]
  %5458 = phi float [ %5452, %5424 ], [ 0.000000e+00, %5397 ]
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = fmul fast float %5459, %5459
  %5461 = fmul fast float %5460, 0x3FEE471020000000
  %5462 = fadd fast float %5461, 0xBFD42F6020000000
  %5463 = fmul fast float %5419, 0x3FD20DD760000000
  %5464 = fmul fast float %5462, %5458
  %5465 = fmul fast float %5457, 0x3FDF454380000000
  %5466 = fmul fast float %5465, %5459
  %5467 = fadd fast float %5466, %5463
  %5468 = fadd fast float %5467, %5464
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = fmul fast float %5469, 0x3FDF454380000000
  %5471 = fmul fast float %5469, %5469
  %5472 = fmul fast float %5471, 0x3FEE471020000000
  %5473 = fadd fast float %5472, 0xBFD42F6020000000
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5457, float %5458, float 0x3FD20DD760000000, float %5470, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5476 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = fcmp fast oeq float %5476, 0.000000e+00
  %5478 = fcmp fast oeq float %5475, 0.000000e+00
  %5479 = or i1 %5478, %5477
  br i1 %5479, label %5509, label %5480

; <label>:5480                                    ; preds = %5453
  %5481 = fsub fast float -0.000000e+00, %87
  %5482 = fsub fast float -0.000000e+00, %85
  %5483 = call float @dx.op.unary.f32(i32 24, float %5476)  ; Sqrt(value)
  %5484 = fdiv fast float %5483, %5475
  %5485 = fcmp fast ogt float %5484, 0x3FFB6F8900000000
  %5486 = select i1 %5485, float 0x3FFB6F8900000000, float %5484
  %5487 = fmul fast float %5486, 0x3FE8A23460000000
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5486, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5490 = fmul fast float %5488, %5475
  %5491 = fmul fast float %5489, 0x3FF279A740000000
  %5492 = fadd fast float %5491, -1.000000e+00
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %86, float %5481, float %5482, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = call float @dx.op.unary.f32(i32 25, float %5493)  ; Rsqrt(value)
  %5495 = fmul fast float %5494, %5481
  %5496 = fmul fast float %5494, %5482
  %5497 = fmul fast float %5494, %86
  %5498 = fmul fast float %5492, %5492
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5489, 0x40005F8BE0000000
  %5501 = fsub fast float 0x400C5BF8A0000000, %5500
  %5502 = fdiv fast float %5490, %5501
  %5503 = fmul fast float %5502, 0x3FEE31C3C0000000
  %5504 = fmul fast float %5503, %5499
  %5505 = fmul fast float %5489, 0x3FDACB7480000000
  %5506 = fadd fast float %5505, 0xBFD7347680000000
  %5507 = fmul fast float %5506, %5502
  %5508 = fmul fast float %5507, %5499
  br label %5509

; <label>:5509                                    ; preds = %5480, %5453
  %5510 = phi float [ %5495, %5480 ], [ 0.000000e+00, %5453 ]
  %5511 = phi float [ %5496, %5480 ], [ 0.000000e+00, %5453 ]
  %5512 = phi float [ %5497, %5480 ], [ 0.000000e+00, %5453 ]
  %5513 = phi float [ %5504, %5480 ], [ 0.000000e+00, %5453 ]
  %5514 = phi float [ %5508, %5480 ], [ 0.000000e+00, %5453 ]
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5511, float %5512, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fmul fast float %5515, %5515
  %5517 = fmul fast float %5516, 0x3FEE471020000000
  %5518 = fadd fast float %5517, 0xBFD42F6020000000
  %5519 = fmul fast float %5475, 0x3FD20DD760000000
  %5520 = fmul fast float %5518, %5514
  %5521 = fmul fast float %5513, 0x3FDF454380000000
  %5522 = fmul fast float %5521, %5515
  %5523 = fadd fast float %5522, %5519
  %5524 = fadd fast float %5523, %5520
  %5525 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5511, float %5512, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = fmul fast float %5525, 0x3FDF454380000000
  %5527 = fmul fast float %5525, %5525
  %5528 = fmul fast float %5527, 0x3FEE471020000000
  %5529 = fadd fast float %5528, 0xBFD42F6020000000
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5513, float %5514, float 0x3FD20DD760000000, float %5526, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = call float @dx.op.binary.f32(i32 35, float %5412, float 0.000000e+00)  ; FMax(a,b)
  %5532 = call float @dx.op.binary.f32(i32 35, float %5468, float 0.000000e+00)  ; FMax(a,b)
  %5533 = call float @dx.op.binary.f32(i32 35, float %5524, float 0.000000e+00)  ; FMax(a,b)
  %5534 = call float @dx.op.binary.f32(i32 35, float %5418, float 0.000000e+00)  ; FMax(a,b)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5474, float 0.000000e+00)  ; FMax(a,b)
  %5536 = call float @dx.op.binary.f32(i32 35, float %5530, float 0.000000e+00)  ; FMax(a,b)
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5539 = call float @dx.op.binary.f32(i32 36, float %5288, float %5538)  ; FMin(a,b)
  %5540 = fmul fast float %5539, %5346
  %5541 = fsub fast float 1.000000e+00, %5540
  %5542 = bitcast float %5541 to i32
  %5543 = sub nsw i32 2129859010, %5542
  %5544 = bitcast i32 %5543 to float
  %5545 = call float @dx.op.binary.f32(i32 36, float %5289, float %5538)  ; FMin(a,b)
  %5546 = fmul fast float %5545, %5346
  %5547 = fsub fast float 1.000000e+00, %5546
  %5548 = bitcast float %5547 to i32
  %5549 = sub nsw i32 2129859010, %5548
  %5550 = bitcast i32 %5549 to float
  %5551 = call float @dx.op.binary.f32(i32 36, float %5290, float %5538)  ; FMin(a,b)
  %5552 = fmul fast float %5551, %5346
  %5553 = fsub fast float 1.000000e+00, %5552
  %5554 = bitcast float %5553 to i32
  %5555 = sub nsw i32 2129859010, %5554
  %5556 = bitcast i32 %5555 to float
  %5557 = fmul fast float %5531, %5345
  %5558 = fmul fast float %5557, %5544
  %5559 = fmul fast float %5532, %5345
  %5560 = fmul fast float %5559, %5550
  %5561 = fmul fast float %5533, %5345
  %5562 = fmul fast float %5561, %5556
  %5563 = call float @dx.op.binary.f32(i32 36, float %5282, float %5538)  ; FMin(a,b)
  %5564 = fmul fast float %5563, %5346
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = bitcast float %5565 to i32
  %5567 = sub nsw i32 2129859010, %5566
  %5568 = bitcast i32 %5567 to float
  %5569 = call float @dx.op.binary.f32(i32 36, float %5283, float %5538)  ; FMin(a,b)
  %5570 = fmul fast float %5569, %5346
  %5571 = fsub fast float 1.000000e+00, %5570
  %5572 = bitcast float %5571 to i32
  %5573 = sub nsw i32 2129859010, %5572
  %5574 = bitcast i32 %5573 to float
  %5575 = call float @dx.op.binary.f32(i32 36, float %5334, float %5538)  ; FMin(a,b)
  %5576 = fmul fast float %5575, %5346
  %5577 = fsub fast float 1.000000e+00, %5576
  %5578 = bitcast float %5577 to i32
  %5579 = sub nsw i32 2129859010, %5578
  %5580 = bitcast i32 %5579 to float
  %5581 = fmul fast float %5534, %5345
  %5582 = fmul fast float %5581, %5568
  %5583 = fmul fast float %5535, %5345
  %5584 = fmul fast float %5583, %5574
  %5585 = fmul fast float %5536, %5345
  %5586 = fmul fast float %5585, %5580
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5560, float %5562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = select i1 %280, float 0.000000e+00, float %5558
  %5589 = select i1 %280, float %5587, float %5560
  %5590 = select i1 %280, float 0.000000e+00, float %5562
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5584, float %5586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = select i1 %280, float 0.000000e+00, float %5582
  %5593 = select i1 %280, float %5591, float %5584
  %5594 = select i1 %280, float 0.000000e+00, float %5586
  %5595 = fmul fast float %5336, 9.843750e-01
  %5596 = fmul fast float %5291, 9.843750e-01
  %5597 = fadd fast float %5595, 7.812500e-03
  %5598 = fadd fast float %5596, 7.812500e-03
  %5599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %5597, float %5598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5600 = extractvalue %dx.types.ResRet.f32 %5599, 2
  %5601 = extractvalue %dx.types.ResRet.f32 %5599, 3
  %5602 = fmul fast float %5600, %5282
  %5603 = fmul fast float %5600, %5283
  %5604 = fmul fast float %5600, %5334
  %5605 = fadd fast float %5602, %5601
  %5606 = fadd fast float %5603, %5601
  %5607 = fadd fast float %5604, %5601
  %5608 = fcmp fast ogt float %4100, 0.000000e+00
  br i1 %5608, label %5609, label %5635

; <label>:5609                                    ; preds = %5509
  %5610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4100, float %5336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5611 = extractvalue %dx.types.ResRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.ResRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.ResRet.f32 %5610, 2
  %5614 = fadd fast float %5611, -5.000000e-01
  %5615 = fadd fast float %5612, -5.000000e-01
  %5616 = fadd fast float %5613, -5.000000e-01
  %5617 = fsub fast float 1.000000e+00, %5282
  %5618 = fsub fast float 1.000000e+00, %5283
  %5619 = fsub fast float 1.000000e+00, %5334
  %5620 = fmul fast float %5282, 4.000000e+00
  %5621 = fmul fast float %5620, %5617
  %5622 = fmul fast float %5621, %5614
  %5623 = fmul fast float %5283, 4.000000e+00
  %5624 = fmul fast float %5623, %5618
  %5625 = fmul fast float %5624, %5615
  %5626 = fmul fast float %5334, 4.000000e+00
  %5627 = fmul fast float %5626, %5619
  %5628 = fmul fast float %5627, %5616
  %5629 = fadd fast float %5622, %5605
  %5630 = fadd fast float %5625, %5606
  %5631 = fadd fast float %5628, %5607
  %5632 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5633 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5634 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  br label %5635

; <label>:5635                                    ; preds = %5609, %5509
  %5636 = phi float [ %5632, %5609 ], [ %5605, %5509 ]
  %5637 = phi float [ %5633, %5609 ], [ %5606, %5509 ]
  %5638 = phi float [ %5634, %5609 ], [ %5607, %5509 ]
  %5639 = call float @dx.op.binary.f32(i32 35, float %5637, float %5638)  ; FMax(a,b)
  %5640 = call float @dx.op.binary.f32(i32 35, float %5636, float %5639)  ; FMax(a,b)
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5640, %5291
  %5643 = fadd fast float %5642, %5291
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5647 = fmul fast float %5643, %5645
  %5648 = fadd fast float %5647, %5646
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = fsub fast float 1.000000e+00, %5357
  %5651 = fadd fast float %5650, %5649
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = fcmp fast olt float %5652, 1.000000e+00
  br i1 %5653, label %5654, label %6130

; <label>:5654                                    ; preds = %5635
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5657 = extractvalue %dx.types.CBufRet.f32 %5655, 3
  %5658 = fmul fast float %5656, %125
  %5659 = fmul fast float %5657, %126
  %5660 = fptoui float %5658 to i32
  %5661 = fptoui float %5659 to i32
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5665 = extractvalue %dx.types.CBufRet.f32 %5662, 3
  %5666 = fadd fast float %112, -4.000000e+00
  %5667 = call float @dx.op.binary.f32(i32 35, float %5666, float 0.000000e+00)  ; FMax(a,b)
  %5668 = fadd fast float %5667, %5663
  %5669 = fmul fast float %5668, %5664
  %5670 = call float @dx.op.unary.f32(i32 23, float %5669)  ; Log(value)
  %5671 = fmul fast float %5670, %5665
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 2
  %5674 = fmul fast float %5671, %5673
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.i32 %5676, 1
  %5678 = add i32 %5677, -1
  %5679 = uitofp i32 %5677 to float
  %5680 = fmul fast float %5679, %5675
  %5681 = fptoui float %5680 to i32
  %5682 = call i32 @dx.op.binary.i32(i32 40, i32 %5681, i32 %5678)  ; UMin(a,b)
  %5683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.i32 %5683, 2
  %5685 = extractvalue %dx.types.CBufRet.i32 %5683, 3
  %5686 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5661, i32 %5684, i32 %5660)  ; UMad(a,b,c)
  %5687 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5682, i32 %5685, i32 %5686)  ; UMad(a,b,c)
  %5688 = call float @dx.op.binary.f32(i32 35, float %112, float 0.000000e+00)  ; FMax(a,b)
  %5689 = fptoui float %5688 to i32
  %5690 = lshr i32 %5689, 5
  %5691 = call i32 @dx.op.binary.i32(i32 40, i32 %5690, i32 8191)  ; UMin(a,b)
  %5692 = fsub fast float %4502, %210
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = fcmp fast ogt float %5693, 0.000000e+00
  %5695 = fcmp fast ogt float %5344, 0.000000e+00
  %5696 = and i1 %5695, %5694
  br i1 %5696, label %5697, label %5726

; <label>:5697                                    ; preds = %5654
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5343, float %5344, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.binary.f32(i32 35, float %5698, float -1.000000e+00)  ; FMax(a,b)
  %5700 = call float @dx.op.binary.f32(i32 36, float %5699, float 1.000000e+00)  ; FMin(a,b)
  %5701 = fmul fast float %5700, %5700
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = fmul fast float %5702, 0x3FFC6E2300000000
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = fcmp fast ogt float %5704, 0.000000e+00
  %5706 = call float @dx.op.unary.f32(i32 24, float %5704)  ; Sqrt(value)
  %5707 = fsub fast float 1.000000e+00, %5706
  %5708 = call float @dx.op.unary.f32(i32 23, float %5707)  ; Log(value)
  %5709 = fmul fast float %5708, 5.000000e+00
  %5710 = call float @dx.op.unary.f32(i32 21, float %5709)  ; Exp(value)
  %5711 = fmul fast float %5710, 0x3FEF591A60000000
  %5712 = fadd fast float %5711, 0x3F94DCB540000000
  %5713 = select i1 %5705, float %5712, float 1.000000e+00
  %5714 = fcmp fast oge float %5713, 1.000000e+00
  %5715 = fmul fast float %5698, 2.000000e+00
  %5716 = fadd fast float %5715, %5344
  %5717 = select i1 %5714, float %5716, float %5344
  %5718 = fsub fast float %5717, %5344
  %5719 = fmul fast float %5718, %5693
  %5720 = fadd fast float %5719, %5344
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5343, float %5720, float %5342, float %5343, float %5720)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = call float @dx.op.unary.f32(i32 25, float %5721)  ; Rsqrt(value)
  %5723 = fmul fast float %5722, %5342
  %5724 = fmul fast float %5722, %5343
  %5725 = fmul fast float %5720, %5722
  br label %5726

; <label>:5726                                    ; preds = %5697, %5654
  %5727 = phi float [ %5723, %5697 ], [ %5342, %5654 ]
  %5728 = phi float [ %5724, %5697 ], [ %5343, %5654 ]
  %5729 = phi float [ %5725, %5697 ], [ %5344, %5654 ]
  %5730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.i32 %5730, 2
  %5732 = add nsw i32 %5731, -1
  %5733 = call i32 @dx.op.binary.i32(i32 37, i32 %5732, i32 0)  ; IMax(a,b)
  %5734 = shl i32 %5691, 2
  %5735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5734, i32 undef)  ; BufferLoad(srv,index,wot)
  %5736 = extractvalue %dx.types.ResRet.i32 %5735, 0
  %5737 = lshr i32 %5736, 16
  %5738 = and i32 %5736, 65535
  %5739 = lshr i32 %5736, 21
  %5740 = lshr i32 %5738, 5
  %5741 = call i32 @dx.op.binary.i32(i32 40, i32 %5740, i32 %5733)  ; UMin(a,b)
  %5742 = icmp ugt i32 %5739, %5741
  br i1 %5742, label %6106, label %5743

; <label>:5743                                    ; preds = %5726
  br label %5744

; <label>:5744                                    ; preds = %6098, %5743
  %5745 = phi float [ %6099, %6098 ], [ 0.000000e+00, %5743 ]
  %5746 = phi float [ %6100, %6098 ], [ 0.000000e+00, %5743 ]
  %5747 = phi float [ %6101, %6098 ], [ 0.000000e+00, %5743 ]
  %5748 = phi float [ %6102, %6098 ], [ 1.000000e+00, %5743 ]
  %5749 = phi i32 [ %6103, %6098 ], [ %5739, %5743 ]
  %5750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.i32 %5750, 2
  %5752 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5687, i32 %5751, i32 %5749)  ; UMad(a,b,c)
  %5753 = shl i32 %5752, 2
  %5754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5753, i32 undef)  ; BufferLoad(srv,index,wot)
  %5755 = extractvalue %dx.types.ResRet.i32 %5754, 0
  %5756 = shl i32 %5749, 5
  %5757 = sub nsw i32 %5737, %5756
  %5758 = call i32 @dx.op.binary.i32(i32 37, i32 %5757, i32 0)  ; IMax(a,b)
  %5759 = call i32 @dx.op.binary.i32(i32 38, i32 %5758, i32 31)  ; IMin(a,b)
  %5760 = sub nsw i32 1, %5737
  %5761 = add nsw i32 %5760, %5738
  %5762 = call i32 @dx.op.binary.i32(i32 37, i32 %5761, i32 0)  ; IMax(a,b)
  %5763 = call i32 @dx.op.binary.i32(i32 38, i32 %5762, i32 32)  ; IMin(a,b)
  %5764 = and i32 %5763, 31
  %5765 = shl i32 -1, %5764
  %5766 = xor i32 %5765, -1
  %5767 = and i32 %5759, 31
  %5768 = shl i32 %5766, %5767
  %5769 = icmp eq i32 %5763, 32
  %5770 = select i1 %5769, i32 -1, i32 %5768
  %5771 = and i32 %5770, %5755
  %5772 = icmp eq i32 %5771, 0
  br i1 %5772, label %6098, label %5773

; <label>:5773                                    ; preds = %5744
  br label %5774

; <label>:5774                                    ; preds = %5881, %5773
  %5775 = phi float [ %5882, %5881 ], [ %5745, %5773 ]
  %5776 = phi float [ %5883, %5881 ], [ %5746, %5773 ]
  %5777 = phi float [ %5884, %5881 ], [ %5747, %5773 ]
  %5778 = phi float [ %5885, %5881 ], [ %5748, %5773 ]
  %5779 = phi i32 [ %5784, %5881 ], [ %5771, %5773 ]
  %5780 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5779)  ; FirstbitLo(value)
  %5781 = add i32 %5780, %5756
  %5782 = and i32 %5780, 31
  %5783 = shl i32 1, %5782
  %5784 = xor i32 %5783, %5779
  %5785 = mul i32 %5781, 72
  %5786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5785, i32 undef)  ; BufferLoad(srv,index,wot)
  %5787 = extractvalue %dx.types.ResRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.ResRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.ResRet.f32 %5786, 2
  %5790 = add i32 %5785, 12
  %5791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5790, i32 undef)  ; BufferLoad(srv,index,wot)
  %5792 = extractvalue %dx.types.ResRet.i32 %5791, 0
  %5793 = add i32 %5785, 16
  %5794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5793, i32 undef)  ; BufferLoad(srv,index,wot)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.ResRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.ResRet.f32 %5794, 2
  %5798 = add i32 %5785, 28
  %5799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5798, i32 undef)  ; BufferLoad(srv,index,wot)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = add i32 %5785, 32
  %5802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5801, i32 undef)  ; BufferLoad(srv,index,wot)
  %5803 = extractvalue %dx.types.ResRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.ResRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.ResRet.f32 %5802, 2
  %5806 = extractvalue %dx.types.ResRet.f32 %5802, 3
  %5807 = add i32 %5785, 48
  %5808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5807, i32 undef)  ; BufferLoad(srv,index,wot)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = add i32 %5785, 56
  %5812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5811, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.ResRet.f32 %5812, 1
  %5815 = add i32 %5785, 64
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = mul i32 %5781, 60
  %5820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5819, i32 undef)  ; BufferLoad(srv,index,wot)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  %5824 = add i32 %5819, 12
  %5825 = add i32 %5819, 48
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = and i32 %5792, 32767
  %5831 = bitcast float %5787 to i32
  %5832 = icmp eq i32 %5831, -1
  %5833 = bitcast float %5788 to i32
  %5834 = and i32 %5792, 32768
  %5835 = icmp ne i32 %5834, 0
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5840 = fsub fast float %5821, %5837
  %5841 = fsub fast float %5822, %5838
  %5842 = fsub fast float %5823, %5839
  %5843 = fsub fast float %208, %5840
  %5844 = fsub fast float %209, %5841
  %5845 = fsub fast float %210, %5842
  %5846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5824, i32 undef)  ; BufferLoad(srv,index,wot)
  %5847 = extractvalue %dx.types.ResRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.ResRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.ResRet.f32 %5846, 2
  %5850 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5847, float %5848, float %5849)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = add i32 %5819, 24
  %5852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5851, i32 undef)  ; BufferLoad(srv,index,wot)
  %5853 = extractvalue %dx.types.ResRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.ResRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.ResRet.f32 %5852, 2
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5853, float %5854, float %5855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = add i32 %5819, 36
  %5858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5857, i32 undef)  ; BufferLoad(srv,index,wot)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.ResRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.ResRet.f32 %5858, 2
  %5862 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5859, float %5860, float %5861)  ; Dot3(ax,ay,az,bx,by,bz)
  %5863 = call float @dx.op.unary.f32(i32 6, float %5850)  ; FAbs(value)
  %5864 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5865 = call float @dx.op.unary.f32(i32 6, float %5862)  ; FAbs(value)
  %5866 = fsub fast float %5827, %5863
  %5867 = fsub fast float %5828, %5864
  %5868 = fsub fast float %5829, %5865
  %5869 = fmul fast float %5866, %5795
  %5870 = fmul fast float %5867, %5796
  %5871 = fmul fast float %5868, %5797
  %5872 = call float @dx.op.binary.f32(i32 36, float %5870, float %5871)  ; FMin(a,b)
  %5873 = call float @dx.op.binary.f32(i32 36, float %5869, float %5872)  ; FMin(a,b)
  %5874 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5875 = call float @dx.op.binary.f32(i32 36, float %5778, float %5874)  ; FMin(a,b)
  %5876 = uitofp i1 %5835 to float
  %5877 = fadd fast float %5693, 1.000000e+00
  %5878 = fsub fast float %5877, %5876
  %5879 = fmul fast float %5875, %5878
  %5880 = fcmp fast ogt float %5879, 0.000000e+00
  br i1 %5880, label %5887, label %5881

; <label>:5881                                    ; preds = %6029, %5774
  %5882 = phi float [ %6093, %6029 ], [ %5775, %5774 ]
  %5883 = phi float [ %6094, %6029 ], [ %5776, %5774 ]
  %5884 = phi float [ %6095, %6029 ], [ %5777, %5774 ]
  %5885 = phi float [ %6096, %6029 ], [ %5778, %5774 ]
  %5886 = icmp eq i32 %5779, %5783
  br i1 %5886, label %6097, label %5774

; <label>:5887                                    ; preds = %5774
  br i1 %5832, label %5945, label %5888

; <label>:5888                                    ; preds = %5887
  %5889 = fsub fast float -0.000000e+00, %5847
  %5890 = fsub fast float -0.000000e+00, %5848
  %5891 = fsub fast float -0.000000e+00, %5849
  %5892 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %5889, float %5890, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %5893 = fsub fast float -0.000000e+00, %5892
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5889, float %5890, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = fadd fast float %5894, %5810
  %5896 = fadd fast float %5809, %5894
  %5897 = fsub fast float -0.000000e+00, %5896
  %5898 = fcmp ogt float %5892, -0.000000e+00
  %5899 = select i1 %5898, float %5897, float %5895
  %5900 = call float @dx.op.unary.f32(i32 6, float %5893)  ; FAbs(value)
  %5901 = fdiv fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5899, %5901
  %5903 = call float @dx.op.binary.f32(i32 35, float %5902, float 0.000000e+00)  ; FMax(a,b)
  %5904 = fsub fast float -0.000000e+00, %5853
  %5905 = fsub fast float -0.000000e+00, %5854
  %5906 = fsub fast float -0.000000e+00, %5855
  %5907 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %5904, float %5905, float %5906)  ; Dot3(ax,ay,az,bx,by,bz)
  %5908 = fsub fast float -0.000000e+00, %5907
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5904, float %5905, float %5906)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = fadd fast float %5909, %5814
  %5911 = fadd fast float %5813, %5909
  %5912 = fsub fast float -0.000000e+00, %5911
  %5913 = fcmp ogt float %5907, -0.000000e+00
  %5914 = select i1 %5913, float %5912, float %5910
  %5915 = call float @dx.op.unary.f32(i32 6, float %5908)  ; FAbs(value)
  %5916 = fdiv fast float 1.000000e+00, %5915
  %5917 = fmul fast float %5914, %5916
  %5918 = call float @dx.op.binary.f32(i32 35, float %5917, float 0.000000e+00)  ; FMax(a,b)
  %5919 = fsub fast float -0.000000e+00, %5859
  %5920 = fsub fast float -0.000000e+00, %5860
  %5921 = fsub fast float -0.000000e+00, %5861
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %5919, float %5920, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = fsub fast float -0.000000e+00, %5922
  %5924 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5919, float %5920, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = fadd fast float %5924, %5818
  %5926 = fadd fast float %5817, %5924
  %5927 = fsub fast float -0.000000e+00, %5926
  %5928 = fcmp ogt float %5922, -0.000000e+00
  %5929 = select i1 %5928, float %5927, float %5925
  %5930 = call float @dx.op.unary.f32(i32 6, float %5923)  ; FAbs(value)
  %5931 = fdiv fast float 1.000000e+00, %5930
  %5932 = fmul fast float %5929, %5931
  %5933 = call float @dx.op.binary.f32(i32 35, float %5932, float 0.000000e+00)  ; FMax(a,b)
  %5934 = call float @dx.op.binary.f32(i32 36, float %5918, float %5933)  ; FMin(a,b)
  %5935 = call float @dx.op.binary.f32(i32 36, float %5903, float %5934)  ; FMin(a,b)
  %5936 = fmul fast float %5935, %5727
  %5937 = fmul fast float %5935, %5728
  %5938 = fmul fast float %5935, %5729
  %5939 = fadd fast float %5936, %208
  %5940 = fadd fast float %5937, %209
  %5941 = fadd fast float %5938, %210
  %5942 = fsub fast float %5939, %5787
  %5943 = fsub fast float %5940, %5788
  %5944 = fsub fast float %5941, %5789
  br label %5952

; <label>:5945                                    ; preds = %5887
  %5946 = fmul fast float %5727, 8.096000e+03
  %5947 = fmul fast float %5728, 8.096000e+03
  %5948 = fmul fast float %5729, 8.096000e+03
  %5949 = fadd fast float %5946, %208
  %5950 = fadd fast float %5947, %209
  %5951 = fadd fast float %5948, %210
  br label %5952

; <label>:5952                                    ; preds = %5945, %5888
  %5953 = phi float [ %5727, %5945 ], [ %5942, %5888 ]
  %5954 = phi float [ %5728, %5945 ], [ %5943, %5888 ]
  %5955 = phi float [ %5729, %5945 ], [ %5944, %5888 ]
  %5956 = phi float [ %5949, %5945 ], [ %5939, %5888 ]
  %5957 = phi float [ %5950, %5945 ], [ %5940, %5888 ]
  %5958 = phi float [ %5951, %5945 ], [ %5941, %5888 ]
  %5959 = fcmp fast olt float %5806, 1.000000e+00
  br i1 %5959, label %5960, label %5991, !dx.controlflow.hints !105

; <label>:5960                                    ; preds = %5952
  %5961 = fmul fast float %5955, %5804
  %5962 = fmul fast float %5954, %5805
  %5963 = fsub fast float %5961, %5962
  %5964 = fmul fast float %5953, %5805
  %5965 = fmul fast float %5955, %5803
  %5966 = fsub fast float %5964, %5965
  %5967 = fmul fast float %5954, %5803
  %5968 = fmul fast float %5953, %5804
  %5969 = fsub fast float %5967, %5968
  %5970 = fmul fast float %5963, 2.000000e+00
  %5971 = fmul fast float %5966, 2.000000e+00
  %5972 = fmul fast float %5969, 2.000000e+00
  %5973 = fmul fast float %5970, %5806
  %5974 = fmul fast float %5971, %5806
  %5975 = fmul fast float %5972, %5806
  %5976 = fmul fast float %5972, %5804
  %5977 = fmul fast float %5971, %5805
  %5978 = fmul fast float %5970, %5805
  %5979 = fmul fast float %5972, %5803
  %5980 = fmul fast float %5971, %5803
  %5981 = fmul fast float %5970, %5804
  %5982 = fadd fast float %5976, %5953
  %5983 = fadd fast float %5982, %5973
  %5984 = fsub fast float %5983, %5977
  %5985 = fsub fast float %5954, %5979
  %5986 = fadd fast float %5985, %5974
  %5987 = fadd fast float %5986, %5978
  %5988 = fadd fast float %5975, %5955
  %5989 = fsub fast float %5988, %5981
  %5990 = fadd fast float %5989, %5980
  br label %5991

; <label>:5991                                    ; preds = %5960, %5952
  %5992 = phi float [ %5984, %5960 ], [ %5953, %5952 ]
  %5993 = phi float [ %5987, %5960 ], [ %5954, %5952 ]
  %5994 = phi float [ %5990, %5960 ], [ %5955, %5952 ]
  br i1 %5832, label %6026, label %5995

; <label>:5995                                    ; preds = %5991
  %5996 = fmul fast float %5291, 0x400187C840000000
  %5997 = fadd fast float %5996, 0xC00EFC2120000000
  %5998 = fmul fast float %5997, %5291
  %5999 = fadd fast float %5998, 0x3FE5D16340000000
  %6000 = fmul fast float %5999, %5291
  %6001 = fadd fast float %6000, 1.000000e+00
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = fsub fast float %5956, %208
  %6004 = fsub fast float %5957, %209
  %6005 = fsub fast float %5958, %210
  %6006 = fsub fast float %5956, %5787
  %6007 = fsub fast float %5957, %5788
  %6008 = fsub fast float %5958, %5789
  %6009 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6003, float %6004, float %6005)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = call float @dx.op.dot3.f32(i32 55, float %6006, float %6007, float %6008, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = fadd fast float %6010, 0x3EE4F8B580000000
  %6012 = fdiv fast float %6009, %6011
  %6013 = bitcast float %6012 to i32
  %6014 = ashr i32 %6013, 1
  %6015 = add nsw i32 %6014, 532487669
  %6016 = bitcast i32 %6015 to float
  %6017 = fmul fast float %6016, %6002
  %6018 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6019 = fmul fast float %6018, 0x4009981AE0000000
  %6020 = fsub fast float 0x40111BBD80000000, %6019
  %6021 = fmul fast float %6020, %6018
  %6022 = fadd fast float %6021, 0xC0009F6020000000
  %6023 = fmul fast float %6022, %6018
  %6024 = fadd fast float %6023, 1.000000e+00
  %6025 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  br label %6029

; <label>:6026                                    ; preds = %5991
  %6027 = icmp ne i32 %5833, -1
  %6028 = zext i1 %6027 to i32
  br label %6029

; <label>:6029                                    ; preds = %6026, %5995
  %6030 = phi float [ %5291, %6026 ], [ %6025, %5995 ]
  %6031 = phi i32 [ %6028, %6026 ], [ 0, %5995 ]
  %6032 = fmul float %6030, 5.000000e+00
  %6033 = fsub float 5.000000e+00, %6032
  %6034 = icmp ne i32 %6031, 0
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 3
  %6037 = fadd fast float %6036, %6033
  %6038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6037)  ; FMax(a,b)
  %6039 = call float @dx.op.unary.f32(i32 6, float %5992)  ; FAbs(value)
  %6040 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %6041 = fadd fast float %6040, %6039
  %6042 = call float @dx.op.unary.f32(i32 6, float %5994)  ; FAbs(value)
  %6043 = fadd fast float %6041, %6042
  %6044 = fcmp fast oeq float %6043, 0.000000e+00
  %6045 = fdiv fast float 1.000000e+00, %6043
  %6046 = select i1 %6044, float 1.000000e+00, float %6045
  %6047 = fmul fast float %6046, %5992
  %6048 = fmul fast float %6046, %5993
  %6049 = call float @dx.op.unary.f32(i32 6, float %6048)  ; FAbs(value)
  %6050 = call float @dx.op.unary.f32(i32 6, float %6047)  ; FAbs(value)
  %6051 = fsub fast float 1.000000e+00, %6049
  %6052 = fsub fast float 1.000000e+00, %6050
  %6053 = fcmp fast oge float %6047, 0.000000e+00
  %6054 = fcmp fast oge float %6048, 0.000000e+00
  %6055 = select i1 %6053, float 1.000000e+00, float -1.000000e+00
  %6056 = select i1 %6054, float 1.000000e+00, float -1.000000e+00
  %6057 = fcmp fast ole float %5994, 0.000000e+00
  %6058 = fmul fast float %6055, %6051
  %6059 = fmul fast float %6056, %6052
  %6060 = select i1 %6057, float %6058, float %6047
  %6061 = select i1 %6057, float %6059, float %6048
  %6062 = fmul fast float %6060, 5.000000e-01
  %6063 = fmul fast float %6061, 5.000000e-01
  %6064 = fadd fast float %6062, 5.000000e-01
  %6065 = fadd fast float %6063, 5.000000e-01
  %6066 = uitofp i32 %5830 to float
  %6067 = call float @dx.op.binary.f32(i32 36, float %6038, float 3.000000e+00)  ; FMin(a,b)
  %6068 = fadd fast float %6067, 2.000000e+00
  %6069 = call float @dx.op.unary.f32(i32 21, float %6068)  ; Exp(value)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6071 = fmul fast float %6070, %6069
  %6072 = fmul fast float %6071, 2.000000e+00
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = fmul fast float %6064, %6073
  %6075 = fmul fast float %6065, %6073
  %6076 = fadd fast float %6074, %6071
  %6077 = fadd fast float %6075, %6071
  %6078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %54, float %6076, float %6077, float %6066, float undef, i32 0, i32 0, i32 undef, float %6038)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.ResRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.ResRet.f32 %6078, 2
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6084 = fmul fast float %6083, %5800
  %6085 = call float @dx.op.binary.f32(i32 36, float %5362, float %6084)  ; FMin(a,b)
  %6086 = select i1 %6034, float %6085, float %6084
  %6087 = fmul fast float %6079, %5879
  %6088 = fmul fast float %6087, %6086
  %6089 = fmul fast float %6080, %5879
  %6090 = fmul fast float %6089, %6086
  %6091 = fmul fast float %6081, %5879
  %6092 = fmul fast float %6091, %6086
  %6093 = fadd fast float %6088, %5775
  %6094 = fadd fast float %6090, %5776
  %6095 = fadd fast float %6092, %5777
  %6096 = fsub fast float %5778, %5879
  br label %5881

; <label>:6097                                    ; preds = %5881
  br label %6098

; <label>:6098                                    ; preds = %6097, %5744
  %6099 = phi float [ %5745, %5744 ], [ %5882, %6097 ]
  %6100 = phi float [ %5746, %5744 ], [ %5883, %6097 ]
  %6101 = phi float [ %5747, %5744 ], [ %5884, %6097 ]
  %6102 = phi float [ %5748, %5744 ], [ %5885, %6097 ]
  %6103 = add i32 %5749, 1
  %6104 = icmp ugt i32 %6103, %5741
  br i1 %6104, label %6105, label %5744, !llvm.loop !106

; <label>:6105                                    ; preds = %6098
  br label %6106

; <label>:6106                                    ; preds = %6105, %5726
  %6107 = phi float [ 0.000000e+00, %5726 ], [ %6099, %6105 ]
  %6108 = phi float [ 0.000000e+00, %5726 ], [ %6100, %6105 ]
  %6109 = phi float [ 0.000000e+00, %5726 ], [ %6101, %6105 ]
  %6110 = call float @dx.op.dot3.f32(i32 55, float %6107, float %6108, float %6109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6111 = select i1 %280, float 0.000000e+00, float %6107
  %6112 = select i1 %280, float %6110, float %6108
  %6113 = select i1 %280, float 0.000000e+00, float %6109
  %6114 = fcmp fast olt float %5652, 0.000000e+00
  %6115 = call float @dx.op.unary.f32(i32 6, float %5652)  ; FAbs(value)
  %6116 = fmul fast float %6115, %5592
  %6117 = fmul fast float %6115, %5593
  %6118 = fmul fast float %6115, %5594
  %6119 = select i1 %6114, float %5592, float %6116
  %6120 = select i1 %6114, float %5593, float %6117
  %6121 = select i1 %6114, float %5594, float %6118
  %6122 = fsub fast float 1.000000e+00, %6115
  %6123 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  %6124 = fmul fast float %6123, %6111
  %6125 = fmul fast float %6123, %6112
  %6126 = fmul fast float %6123, %6113
  %6127 = fadd fast float %6119, %6124
  %6128 = fadd fast float %6120, %6125
  %6129 = fadd fast float %6121, %6126
  br label %6130

; <label>:6130                                    ; preds = %6106, %5635
  %6131 = phi float [ %5592, %5635 ], [ %6127, %6106 ]
  %6132 = phi float [ %5593, %5635 ], [ %6128, %6106 ]
  %6133 = phi float [ %5594, %5635 ], [ %6129, %6106 ]
  %6134 = fmul fast float %5641, %5588
  %6135 = fmul fast float %5641, %5589
  %6136 = fmul fast float %5641, %5590
  %6137 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = fcmp fast ogt float %6137, 0x3E7FF19E20000000
  %6139 = fdiv fast float 1.000000e+00, %6137
  %6140 = select i1 %6138, float %6139, float 0.000000e+00
  %6141 = fmul fast float %6140, %5288
  %6142 = fmul fast float %6140, %5289
  %6143 = fmul fast float %6140, %5290
  %6144 = fadd fast float %6141, -1.000000e+00
  %6145 = fadd fast float %6142, -1.000000e+00
  %6146 = fadd fast float %6143, -1.000000e+00
  %6147 = fmul fast float %6144, 5.000000e-01
  %6148 = fmul fast float %6145, 5.000000e-01
  %6149 = fmul fast float %6146, 5.000000e-01
  %6150 = fadd fast float %6147, 1.000000e+00
  %6151 = fadd fast float %6148, 1.000000e+00
  %6152 = fadd fast float %6149, 1.000000e+00
  %6153 = fmul fast float %6131, %5636
  %6154 = fmul fast float %6132, %5637
  %6155 = fmul fast float %6133, %5638
  %6156 = fsub fast float 1.000000e+00, %5336
  %6157 = bitcast float %6156 to i32
  %6158 = sitofp i32 %6157 to float
  %6159 = fmul fast float %6158, 5.000000e+00
  %6160 = fadd fast float %6159, 0xC1EFBF8940000000
  %6161 = fptosi float %6160 to i32
  %6162 = bitcast i32 %6161 to float
  %6163 = fmul fast float %6162, %4101
  %6164 = fmul fast float %5588, %6163
  %6165 = fmul fast float %6164, %5641
  %6166 = fmul fast float %6165, %6150
  %6167 = fmul fast float %5589, %6163
  %6168 = fmul fast float %6167, %5641
  %6169 = fmul fast float %6168, %6151
  %6170 = fmul fast float %5590, %6163
  %6171 = fmul fast float %6170, %5641
  %6172 = fmul fast float %6171, %6152
  %6173 = fmul fast float %6134, %4097
  %6174 = fmul fast float %6135, %4097
  %6175 = fmul fast float %6136, %4097
  %6176 = fadd fast float %6153, %4087
  %6177 = fadd fast float %6176, %6166
  %6178 = fmul fast float %6177, %4097
  %6179 = fadd fast float %6154, %4088
  %6180 = fadd fast float %6179, %6169
  %6181 = fmul fast float %6180, %4097
  %6182 = fadd fast float %6155, %4089
  %6183 = fadd fast float %6182, %6172
  %6184 = fmul fast float %6183, %4097
  %6185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6185, 3
  %6187 = fcmp fast oeq float %6186, 0.000000e+00
  br i1 %6187, label %7892, label %6188

; <label>:6188                                    ; preds = %6130
  %6189 = extractvalue %dx.types.CBufRet.f32 %6185, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6185, 1
  %6191 = extractvalue %dx.types.CBufRet.f32 %6185, 2
  %6192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6192, 0
  %6194 = extractvalue %dx.types.CBufRet.f32 %6192, 1
  %6195 = extractvalue %dx.types.CBufRet.f32 %6192, 2
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6199 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6200 = select i1 %280, float %6197, float %6193
  %6201 = select i1 %280, float %6199, float %6194
  %6202 = select i1 %280, float %6198, float %6195
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6205 = fmul fast float %6204, %134
  %6206 = fmul fast float %6204, %136
  %6207 = fmul fast float %6204, %138
  %6208 = fadd fast float %6205, %208
  %6209 = fadd fast float %6206, %209
  %6210 = fadd fast float %6207, %210
  %6211 = fcmp fast olt float %6186, 0.000000e+00
  br i1 %6211, label %7469, label %6212

; <label>:6212                                    ; preds = %6188
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 0
  %6215 = extractvalue %dx.types.CBufRet.f32 %6213, 1
  %6216 = extractvalue %dx.types.CBufRet.f32 %6213, 2
  %6217 = extractvalue %dx.types.CBufRet.f32 %6213, 3
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.CBufRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.CBufRet.f32 %6218, 2
  %6222 = extractvalue %dx.types.CBufRet.f32 %6218, 3
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.CBufRet.f32 %6223, 2
  %6227 = extractvalue %dx.types.CBufRet.f32 %6223, 3
  %6228 = fmul fast float %6214, %6208
  %6229 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6215, float %6228)  ; FMad(a,b,c)
  %6230 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6216, float %6229)  ; FMad(a,b,c)
  %6231 = fadd fast float %6230, %6217
  %6232 = fmul fast float %6219, %6208
  %6233 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6220, float %6232)  ; FMad(a,b,c)
  %6234 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6221, float %6233)  ; FMad(a,b,c)
  %6235 = fadd fast float %6234, %6222
  %6236 = fmul fast float %6224, %6208
  %6237 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6225, float %6236)  ; FMad(a,b,c)
  %6238 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6226, float %6237)  ; FMad(a,b,c)
  %6239 = fadd fast float %6238, %6227
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 0
  %6242 = fcmp fast une float %6241, 0.000000e+00
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6245 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6246 = extractvalue %dx.types.CBufRet.f32 %6243, 3
  %6247 = fmul fast float %6246, %6231
  %6248 = fmul fast float %6246, %6235
  %6249 = fadd fast float %6247, %6244
  %6250 = fadd fast float %6248, %6245
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.CBufRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.CBufRet.f32 %6251, 3
  %6255 = fmul fast float %6254, %6231
  %6256 = fmul fast float %6254, %6235
  %6257 = fadd fast float %6255, %6252
  %6258 = fadd fast float %6256, %6253
  %6259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.f32 %6259, 1
  %6261 = fsub fast float %6260, %6239
  %6262 = extractvalue %dx.types.CBufRet.f32 %6259, 2
  %6263 = fmul fast float %6261, %6262
  %6264 = fsub fast float 1.000000e+00, %6263
  %6265 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  br i1 %6242, label %6326, label %6266

; <label>:6266                                    ; preds = %6212
  %6267 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6270 = fadd fast float %6269, %6267
  %6271 = fcmp fast ogt float %6270, 0.000000e+00
  br i1 %6271, label %6272, label %6296

; <label>:6272                                    ; preds = %6266
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6276 = fsub fast float %6257, %6274
  %6277 = fsub fast float %6258, %6275
  %6278 = fcmp fast olt float %6276, 0.000000e+00
  %6279 = fcmp fast olt float %6277, 0.000000e+00
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.CBufRet.f32 %6280, 2
  %6284 = extractvalue %dx.types.CBufRet.f32 %6280, 3
  %6285 = select i1 %6278, float %6281, float %6283
  %6286 = select i1 %6279, float %6282, float %6284
  %6287 = fmul fast float %6285, %6276
  %6288 = fmul fast float %6286, %6277
  %6289 = call float @dx.op.unary.f32(i32 6, float %6287)  ; FAbs(value)
  %6290 = call float @dx.op.unary.f32(i32 6, float %6288)  ; FAbs(value)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6292 = call float @dx.op.binary.f32(i32 35, float %6289, float %6290)  ; FMax(a,b)
  %6293 = fsub fast float %6291, %6292
  %6294 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6295 = fmul fast float %6294, %6265
  br label %6296

; <label>:6296                                    ; preds = %6272, %6266
  %6297 = phi float [ %6295, %6272 ], [ 0.000000e+00, %6266 ]
  %6298 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6299 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6300 = fadd fast float %6299, %6298
  %6301 = fcmp fast ogt float %6300, 0.000000e+00
  br i1 %6301, label %6302, label %6326

; <label>:6302                                    ; preds = %6296
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.CBufRet.f32 %6303, 1
  %6306 = fsub fast float %6249, %6304
  %6307 = fsub fast float %6250, %6305
  %6308 = fcmp fast olt float %6306, 0.000000e+00
  %6309 = fcmp fast olt float %6307, 0.000000e+00
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.CBufRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6314 = extractvalue %dx.types.CBufRet.f32 %6310, 3
  %6315 = select i1 %6308, float %6311, float %6313
  %6316 = select i1 %6309, float %6312, float %6314
  %6317 = fmul fast float %6315, %6306
  %6318 = fmul fast float %6316, %6307
  %6319 = call float @dx.op.unary.f32(i32 6, float %6317)  ; FAbs(value)
  %6320 = call float @dx.op.unary.f32(i32 6, float %6318)  ; FAbs(value)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6322 = call float @dx.op.binary.f32(i32 35, float %6319, float %6320)  ; FMax(a,b)
  %6323 = fsub fast float %6321, %6322
  %6324 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  %6325 = fmul fast float %6324, %6265
  br label %6326

; <label>:6326                                    ; preds = %6302, %6296, %6212
  %6327 = phi float [ 0.000000e+00, %6212 ], [ %6325, %6302 ], [ 0.000000e+00, %6296 ]
  %6328 = phi float [ 0.000000e+00, %6212 ], [ %6297, %6302 ], [ %6297, %6296 ]
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6333 = extractvalue %dx.types.CBufRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.CBufRet.f32 %6332, 1
  %6335 = fsub fast float %6231, %6333
  %6336 = fsub fast float %6235, %6334
  %6337 = fcmp fast olt float %6335, 0.000000e+00
  %6338 = fcmp fast olt float %6336, 0.000000e+00
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6342 = extractvalue %dx.types.CBufRet.f32 %6339, 2
  %6343 = extractvalue %dx.types.CBufRet.f32 %6339, 3
  %6344 = select i1 %6337, float %6340, float %6342
  %6345 = select i1 %6338, float %6341, float %6343
  %6346 = fmul fast float %6344, %6335
  %6347 = fmul fast float %6345, %6336
  %6348 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6349 = call float @dx.op.unary.f32(i32 6, float %6347)  ; FAbs(value)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6351 = call float @dx.op.binary.f32(i32 35, float %6348, float %6349)  ; FMax(a,b)
  %6352 = fsub fast float %6350, %6351
  %6353 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6354 = call float @dx.op.binary.f32(i32 36, float %6353, float %6331)  ; FMin(a,b)
  %6355 = fmul fast float %6354, %6265
  %6356 = fsub fast float %6327, %6355
  %6357 = fsub fast float %6328, %6327
  %6358 = fsub fast float %6357, %6355
  %6359 = call float @dx.op.binary.f32(i32 35, float %6327, float %6328)  ; FMax(a,b)
  %6360 = call float @dx.op.binary.f32(i32 35, float %6355, float %6359)  ; FMax(a,b)
  %6361 = fcmp fast olt float %6360, 1.000000e+00
  br i1 %6361, label %6362, label %6760, !dx.controlflow.hints !108

; <label>:6362                                    ; preds = %6326
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = fcmp fast une float %6364, 0.000000e+00
  br i1 %6365, label %6366, label %6760, !dx.controlflow.hints !109

; <label>:6366                                    ; preds = %6362
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6371 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6381 = extractvalue %dx.types.CBufRet.f32 %6377, 3
  %6382 = fmul fast float %6368, %6208
  %6383 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6369, float %6382)  ; FMad(a,b,c)
  %6384 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6370, float %6383)  ; FMad(a,b,c)
  %6385 = fadd fast float %6384, %6371
  %6386 = fmul fast float %6373, %6208
  %6387 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6374, float %6386)  ; FMad(a,b,c)
  %6388 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6375, float %6387)  ; FMad(a,b,c)
  %6389 = fadd fast float %6388, %6376
  %6390 = fmul fast float %6378, %6208
  %6391 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6379, float %6390)  ; FMad(a,b,c)
  %6392 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6380, float %6391)  ; FMad(a,b,c)
  %6393 = fadd fast float %6392, %6381
  %6394 = fcmp fast oge float %6385, 1.000000e+00
  %6395 = fcmp fast oge float %6389, 1.000000e+00
  %6396 = or i1 %6394, %6395
  %6397 = fcmp fast olt float %6385, 0.000000e+00
  %6398 = fcmp fast olt float %6389, 0.000000e+00
  %6399 = or i1 %6397, %6398
  %6400 = or i1 %6396, %6399
  br i1 %6400, label %6760, label %6401, !dx.controlflow.hints !110

; <label>:6401                                    ; preds = %6366
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.CBufRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.CBufRet.f32 %6402, 2
  %6406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.i32 %6406, 2
  %6408 = uitofp i32 %6407 to float
  %6409 = extractvalue %dx.types.CBufRet.i32 %6406, 3
  %6410 = uitofp i32 %6409 to float
  %6411 = extractvalue %dx.types.CBufRet.f32 %6402, 3
  %6412 = fmul fast float %6411, 2.000000e+00
  %6413 = fsub fast float %6385, %6403
  %6414 = fsub fast float %6389, %6404
  %6415 = fmul fast float %6412, %6413
  %6416 = fmul fast float %6412, %6414
  %6417 = fdiv fast float 1.000000e+00, %6191
  %6418 = fmul fast float %6416, %6417
  %6419 = call float @dx.op.unary.f32(i32 6, float %6418)  ; FAbs(value)
  %6420 = fmul fast float %6405, %6210
  %6421 = fmul fast float %6420, %6412
  %6422 = call float @dx.op.unary.f32(i32 6, float %6421)  ; FAbs(value)
  %6423 = call float @dx.op.unary.f32(i32 6, float %6415)  ; FAbs(value)
  %6424 = call float @dx.op.binary.f32(i32 35, float %6422, float %6419)  ; FMax(a,b)
  %6425 = call float @dx.op.binary.f32(i32 35, float %6423, float %6424)  ; FMax(a,b)
  %6426 = fmul fast float %6425, 2.000000e+00
  %6427 = call float @dx.op.unary.f32(i32 23, float %6426)  ; Log(value)
  %6428 = call float @dx.op.binary.f32(i32 35, float %6427, float %6408)  ; FMax(a,b)
  %6429 = call float @dx.op.unary.f32(i32 22, float %6428)  ; Frc(value)
  %6430 = fadd fast float %6429, 0xBFEA666660000000
  %6431 = fmul fast float %6430, 8.000000e+00
  %6432 = call float @dx.op.unary.f32(i32 7, float %6431)  ; Saturate(value)
  %6433 = call float @dx.op.unary.f32(i32 27, float %6428)  ; Round_ni(value)
  %6434 = fadd fast float %6433, %6432
  %6435 = call float @dx.op.binary.f32(i32 36, float %6434, float %6410)  ; FMin(a,b)
  %6436 = call float @dx.op.unary.f32(i32 27, float %6435)  ; Round_ni(value)
  %6437 = fsub fast float -0.000000e+00, %6436
  %6438 = call float @dx.op.unary.f32(i32 21, float %6437)  ; Exp(value)
  %6439 = fmul fast float %6438, %6412
  %6440 = fmul fast float %6439, %6385
  %6441 = fmul fast float %6439, %6389
  %6442 = fmul fast float %6440, 2.500000e-01
  %6443 = fmul fast float %6441, 2.500000e-01
  %6444 = fadd fast float %6442, 5.000000e-01
  %6445 = fadd fast float %6443, 5.000000e-01
  %6446 = fsub fast float %6410, %6408
  %6447 = fptoui float %6446 to i32
  %6448 = add i32 %6447, 320
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6448)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6452 = fcmp fast une float %6435, %6410
  %6453 = fsub fast float %6385, %6450
  %6454 = fsub fast float %6389, %6451
  %6455 = call float @dx.op.unary.f32(i32 6, float %6453)  ; FAbs(value)
  %6456 = call float @dx.op.unary.f32(i32 6, float %6454)  ; FAbs(value)
  %6457 = fmul fast float %6455, %6439
  %6458 = fmul fast float %6456, %6439
  %6459 = fcmp fast olt float %6457, 1.000000e+00
  %6460 = fcmp fast olt float %6458, 1.000000e+00
  %6461 = and i1 %6459, %6460
  %6462 = or i1 %6452, %6461
  br i1 %6462, label %6463, label %6760, !dx.controlflow.hints !111

; <label>:6463                                    ; preds = %6401
  %6464 = fmul fast float %6441, 5.000000e-01
  %6465 = fmul fast float %6440, 5.000000e-01
  %6466 = fadd fast float %6464, 5.000000e-01
  %6467 = fadd fast float %6465, 5.000000e-01
  %6468 = sitofp i32 %6407 to float
  %6469 = fsub fast float %6435, %6468
  %6470 = call float @dx.op.unary.f32(i32 27, float %6469)  ; Round_ni(value)
  %6471 = call float @dx.op.unary.f32(i32 22, float %6435)  ; Frc(value)
  %6472 = call float @dx.op.unary.f32(i32 22, float %6467)  ; Frc(value)
  %6473 = call float @dx.op.unary.f32(i32 22, float %6466)  ; Frc(value)
  %6474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6472, float %6473, float %6470, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.ResRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.ResRet.f32 %6474, 2
  %6478 = extractvalue %dx.types.ResRet.f32 %6474, 3
  %6479 = fcmp fast ogt float %6471, 0.000000e+00
  br i1 %6479, label %6480, label %6501, !dx.controlflow.hints !112

; <label>:6480                                    ; preds = %6463
  %6481 = fadd fast float %6470, 1.000000e+00
  %6482 = call float @dx.op.unary.f32(i32 22, float %6444)  ; Frc(value)
  %6483 = call float @dx.op.unary.f32(i32 22, float %6445)  ; Frc(value)
  %6484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6482, float %6483, float %6481, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6485 = extractvalue %dx.types.ResRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.ResRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.ResRet.f32 %6484, 2
  %6488 = extractvalue %dx.types.ResRet.f32 %6484, 3
  %6489 = fsub fast float %6485, %6475
  %6490 = fsub fast float %6486, %6476
  %6491 = fsub fast float %6487, %6477
  %6492 = fsub fast float %6488, %6478
  %6493 = fmul fast float %6489, %6471
  %6494 = fmul fast float %6490, %6471
  %6495 = fmul fast float %6491, %6471
  %6496 = fmul fast float %6492, %6471
  %6497 = fadd fast float %6493, %6475
  %6498 = fadd fast float %6494, %6476
  %6499 = fadd fast float %6495, %6477
  %6500 = fadd fast float %6496, %6478
  br label %6501

; <label>:6501                                    ; preds = %6480, %6463
  %6502 = phi float [ %6497, %6480 ], [ %6475, %6463 ]
  %6503 = phi float [ %6498, %6480 ], [ %6476, %6463 ]
  %6504 = phi float [ %6499, %6480 ], [ %6477, %6463 ]
  %6505 = phi float [ %6500, %6480 ], [ %6478, %6463 ]
  %6506 = fadd fast float %6502, -5.000000e-01
  %6507 = fadd fast float %6504, -5.000000e-01
  %6508 = fmul fast float %6506, 0xBFD5555560000000
  %6509 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6507, float %6508)  ; FMad(a,b,c)
  %6510 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6503, float 0.000000e+00)  ; FMad(a,b,c)
  %6511 = fadd fast float %6510, %6505
  %6512 = fmul fast float %6506, -7.500000e-01
  %6513 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6507, float %6512)  ; FMad(a,b,c)
  %6514 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6503, float 0.000000e+00)  ; FMad(a,b,c)
  %6515 = fadd fast float %6514, %6505
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 0
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.CBufRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.CBufRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.CBufRet.f32 %6518, 3
  %6523 = fsub fast float %6519, %6509
  %6524 = fsub fast float %6520, %6511
  %6525 = fsub fast float %6521, %6513
  %6526 = fsub fast float %6522, %6515
  %6527 = fmul fast float %6523, %6517
  %6528 = fmul fast float %6524, %6517
  %6529 = fmul fast float %6525, %6517
  %6530 = fmul fast float %6526, %6517
  %6531 = fadd fast float %6527, %6509
  %6532 = fadd fast float %6528, %6511
  %6533 = fadd fast float %6529, %6513
  %6534 = fadd fast float %6530, %6515
  %6535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6536 = extractvalue %dx.types.ResRet.i32 %6535, 0
  %6537 = and i32 %6536, 536870911
  %6538 = uitofp i32 %6537 to float
  %6539 = fmul fast float %6538, %6385
  %6540 = fmul fast float %6538, %6389
  %6541 = fptoui float %6539 to i32
  %6542 = fptoui float %6540 to i32
  %6543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6544 = extractvalue %dx.types.ResRet.i32 %6543, 0
  %6545 = and i32 %6544, 31
  %6546 = lshr i32 %6541, %6545
  %6547 = lshr i32 %6542, %6545
  %6548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6549 = extractvalue %dx.types.ResRet.i32 %6548, 0
  %6550 = and i32 %6549, 31
  %6551 = shl i32 1, %6550
  %6552 = call i32 @dx.op.binary.i32(i32 40, i32 %6551, i32 4)  ; UMin(a,b)
  %6553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6554 = extractvalue %dx.types.ResRet.i32 %6553, 0
  %6555 = extractvalue %dx.types.ResRet.i32 %6553, 1
  %6556 = icmp eq i32 %6552, 0
  br i1 %6556, label %6598, label %6557

; <label>:6557                                    ; preds = %6501
  br label %6558

; <label>:6558                                    ; preds = %6586, %6557
  %6559 = phi i32 [ %6589, %6586 ], [ 0, %6557 ]
  %6560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6561 = extractvalue %dx.types.ResRet.i32 %6560, 0
  %6562 = lshr i32 %6561, 16
  %6563 = and i32 %6562, 31
  %6564 = shl i32 %6547, %6563
  %6565 = add i32 %6564, %6546
  %6566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6567 = extractvalue %dx.types.ResRet.i32 %6566, 0
  %6568 = and i32 %6567, 31
  %6569 = shl i32 %6565, %6568
  %6570 = add i32 %6569, %6559
  %6571 = shl i32 %6570, 2
  %6572 = add i32 %6571, 32
  %6573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6572, i32 undef)  ; BufferLoad(srv,index,wot)
  %6574 = extractvalue %dx.types.ResRet.i32 %6573, 0
  %6575 = icmp slt i32 %6574, 0
  %6576 = getelementptr [12 x float], [12 x float]* %113, i32 0, i32 %6559
  %6577 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6559
  %6578 = bitcast float* %6576 to i32*
  %6579 = bitcast float* %6577 to i32*
  br i1 %6575, label %6580, label %6586

; <label>:6580                                    ; preds = %6558
  %6581 = and i32 %6574, 1073741823
  %6582 = add nuw nsw i32 %6581, 20
  %6583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6582, i32 undef)  ; BufferLoad(srv,index,wot)
  %6584 = extractvalue %dx.types.ResRet.i32 %6583, 0
  %6585 = extractvalue %dx.types.ResRet.i32 %6583, 1
  br label %6586

; <label>:6586                                    ; preds = %6580, %6558
  %6587 = phi i32 [ %6584, %6580 ], [ %6554, %6558 ]
  %6588 = phi i32 [ %6585, %6580 ], [ %6555, %6558 ]
  store i32 %6587, i32* %6578, align 4
  store i32 %6588, i32* %6579, align 4
  %6589 = add nuw i32 %6559, 1
  %6590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.i32 %6590, 2
  %6592 = icmp eq i32 %6591, 0
  %6593 = icmp ugt i32 %6574, -1073741825
  %6594 = and i1 %6593, %6592
  %6595 = icmp ult i32 %6589, %6552
  %6596 = and i1 %6594, %6595
  br i1 %6596, label %6558, label %6597

; <label>:6597                                    ; preds = %6586
  br label %6598

; <label>:6598                                    ; preds = %6597, %6501
  %6599 = phi i32 [ 0, %6501 ], [ %6589, %6597 ]
  %6600 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6601 = fptoui float %6600 to i32
  %6602 = icmp eq i32 %6601, 0
  br i1 %6602, label %6654, label %6603

; <label>:6603                                    ; preds = %6598
  br label %6604

; <label>:6604                                    ; preds = %6649, %6603
  %6605 = phi i32 [ %6650, %6649 ], [ %6599, %6603 ]
  %6606 = phi i32 [ %6651, %6649 ], [ 0, %6603 ]
  %6607 = lshr i32 %6606, 2
  %6608 = and i32 %6606, 3
  %6609 = add nuw nsw i32 %6607, 83
  %6610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %6609)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.i32 %6610, 0
  %6612 = extractvalue %dx.types.CBufRet.i32 %6610, 1
  %6613 = extractvalue %dx.types.CBufRet.i32 %6610, 2
  %6614 = extractvalue %dx.types.CBufRet.i32 %6610, 3
  %6615 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %6611, i32* %6615, align 4
  %6616 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %6612, i32* %6616, align 4
  %6617 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %6613, i32* %6617, align 4
  %6618 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %6614, i32* %6618, align 4
  %6619 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %6608
  %6620 = load i32, i32* %6619, align 4, !tbaa !113, !noalias !117
  %6621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6622 = extractvalue %dx.types.ResRet.i32 %6621, 0
  %6623 = lshr i32 %6622, 16
  %6624 = and i32 %6623, 31
  %6625 = shl i32 %6547, %6624
  %6626 = add i32 %6625, %6546
  %6627 = shl i32 %6626, 2
  %6628 = add i32 %6627, %6620
  %6629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6628, i32 undef)  ; BufferLoad(srv,index,wot)
  %6630 = extractvalue %dx.types.ResRet.i32 %6629, 0
  %6631 = icmp eq i32 %6630, 0
  br i1 %6631, label %6649, label %6632

; <label>:6632                                    ; preds = %6604
  %6633 = icmp slt i32 %6630, 0
  %6634 = getelementptr [12 x float], [12 x float]* %113, i32 0, i32 %6605
  %6635 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6605
  %6636 = bitcast float* %6634 to i32*
  %6637 = bitcast float* %6635 to i32*
  br i1 %6633, label %6638, label %6645

; <label>:6638                                    ; preds = %6632
  %6639 = and i32 %6630, 1073741823
  %6640 = add i32 %6620, 20
  %6641 = add i32 %6640, %6639
  %6642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6641, i32 undef)  ; BufferLoad(srv,index,wot)
  %6643 = extractvalue %dx.types.ResRet.i32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.i32 %6642, 1
  br label %6645

; <label>:6645                                    ; preds = %6638, %6632
  %6646 = phi i32 [ %6643, %6638 ], [ %6554, %6632 ]
  %6647 = phi i32 [ %6644, %6638 ], [ %6555, %6632 ]
  store i32 %6646, i32* %6636, align 4
  store i32 %6647, i32* %6637, align 4
  %6648 = add i32 %6605, 1
  br label %6649

; <label>:6649                                    ; preds = %6645, %6604
  %6650 = phi i32 [ %6605, %6604 ], [ %6648, %6645 ]
  %6651 = add nuw i32 %6606, 1
  %6652 = icmp eq i32 %6651, %6601
  br i1 %6652, label %6653, label %6604

; <label>:6653                                    ; preds = %6649
  br label %6654

; <label>:6654                                    ; preds = %6653, %6598
  %6655 = phi i32 [ %6599, %6598 ], [ %6650, %6653 ]
  %6656 = icmp eq i32 %6655, 1
  %6657 = getelementptr [12 x float], [12 x float]* %113, i32 0, i32 0
  %6658 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 0
  br i1 %6656, label %6659, label %6662

; <label>:6659                                    ; preds = %6654
  %6660 = load float, float* %6657, align 4
  %6661 = load float, float* %6658, align 4
  br label %6689

; <label>:6662                                    ; preds = %6654
  %6663 = load float, float* %6657, align 4
  %6664 = load float, float* %6658, align 4
  %6665 = fdiv fast float 1.000000e+00, %6664
  %6666 = fsub fast float %6663, %6665
  %6667 = icmp ugt i32 %6655, 1
  br i1 %6667, label %6668, label %6684

; <label>:6668                                    ; preds = %6662
  br label %6669

; <label>:6669                                    ; preds = %6669, %6668
  %6670 = phi float [ %6679, %6669 ], [ %6666, %6668 ]
  %6671 = phi float [ %6680, %6669 ], [ %6663, %6668 ]
  %6672 = phi i32 [ %6681, %6669 ], [ 1, %6668 ]
  %6673 = getelementptr [12 x float], [12 x float]* %113, i32 0, i32 %6672
  %6674 = load float, float* %6673, align 4
  %6675 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6672
  %6676 = load float, float* %6675, align 4
  %6677 = fdiv fast float 1.000000e+00, %6676
  %6678 = fsub fast float %6674, %6677
  %6679 = call float @dx.op.binary.f32(i32 36, float %6670, float %6678)  ; FMin(a,b)
  %6680 = call float @dx.op.binary.f32(i32 35, float %6671, float %6674)  ; FMax(a,b)
  %6681 = add nuw i32 %6672, 1
  %6682 = icmp eq i32 %6681, %6655
  br i1 %6682, label %6683, label %6669

; <label>:6683                                    ; preds = %6669
  br label %6684

; <label>:6684                                    ; preds = %6683, %6662
  %6685 = phi float [ %6666, %6662 ], [ %6679, %6683 ]
  %6686 = phi float [ %6663, %6662 ], [ %6680, %6683 ]
  %6687 = fsub fast float %6686, %6685
  %6688 = fdiv fast float 1.000000e+00, %6687
  br label %6689

; <label>:6689                                    ; preds = %6684, %6659
  %6690 = phi float [ %6660, %6659 ], [ %6686, %6684 ]
  %6691 = phi float [ %6661, %6659 ], [ %6688, %6684 ]
  %6692 = fadd fast float %6393, %6690
  %6693 = fmul fast float %6692, %6691
  %6694 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  %6695 = fmul fast float %6694, 2.000000e+00
  %6696 = fsub fast float 1.000000e+00, %6695
  %6697 = fmul fast float %6531, %6531
  %6698 = fsub fast float %6532, %6697
  %6699 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6698)  ; FMax(a,b)
  %6700 = fdiv fast float 1.000000e+00, %6699
  %6701 = fmul fast float %6532, %6531
  %6702 = fsub fast float %6533, %6701
  %6703 = fsub fast float %6696, %6531
  %6704 = fmul fast float %6696, %6696
  %6705 = fsub fast float %6704, %6532
  %6706 = fmul fast float %6700, %6702
  %6707 = fmul fast float %6706, %6703
  %6708 = fsub fast float %6705, %6707
  %6709 = fmul fast float %6532, %6532
  %6710 = fsub fast float %6534, %6709
  %6711 = fmul fast float %6702, %6702
  %6712 = fmul fast float %6711, %6700
  %6713 = fsub fast float %6710, %6712
  %6714 = fdiv fast float %6708, %6713
  %6715 = fmul fast float %6714, %6702
  %6716 = fsub fast float %6703, %6715
  %6717 = fmul fast float %6716, %6700
  %6718 = fmul fast float %6717, %6531
  %6719 = fsub fast float 1.000000e+00, %6718
  %6720 = fmul fast float %6714, %6532
  %6721 = fsub fast float %6719, %6720
  %6722 = fmul fast float %6717, %6717
  %6723 = fmul fast float %6714, 4.000000e+00
  %6724 = fmul fast float %6723, %6721
  %6725 = fsub fast float %6722, %6724
  %6726 = call float @dx.op.unary.f32(i32 24, float %6725)  ; Sqrt(value)
  %6727 = fcmp fast oge float %6717, 0.000000e+00
  %6728 = fsub fast float -0.000000e+00, %6726
  %6729 = select i1 %6727, float %6728, float %6726
  %6730 = fsub fast float %6729, %6717
  %6731 = fdiv fast float %6730, %6714
  %6732 = fdiv fast float %6721, %6730
  %6733 = fmul fast float %6731, 5.000000e-01
  %6734 = fmul fast float %6732, 2.000000e+00
  %6735 = select i1 %6727, float %6733, float %6734
  %6736 = select i1 %6727, float %6734, float %6733
  %6737 = call float @dx.op.binary.f32(i32 35, float %6735, float %6736)  ; FMax(a,b)
  %6738 = call float @dx.op.binary.f32(i32 36, float %6735, float %6736)  ; FMin(a,b)
  %6739 = fcmp fast ogt float %6696, %6737
  %6740 = fsub fast float %6696, %6738
  %6741 = fsub fast float %6696, %6737
  %6742 = fsub fast float %6737, %6738
  %6743 = select i1 %6739, float %6741, float %6742
  %6744 = fmul float %6740, %6743
  %6745 = select i1 %6739, float %6738, float %6696
  %6746 = fcmp fast ogt float %6696, %6738
  %6747 = fmul fast float %6745, %6737
  %6748 = fadd fast float %6745, %6737
  %6749 = fmul fast float %6748, %6531
  %6750 = fadd fast float %6747, %6532
  %6751 = fsub fast float %6750, %6749
  %6752 = fdiv fast float %6751, %6744
  %6753 = select i1 %6746, float %6752, float 0.000000e+00
  %6754 = fsub fast float 1.000000e+00, %6753
  %6755 = select i1 %6739, float %6754, float %6753
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6516, 3
  %6758 = fmul fast float %6757, %6756
  %6759 = fsub fast float 1.000000e+00, %6758
  br label %6760

; <label>:6760                                    ; preds = %6689, %6401, %6366, %6362, %6326
  %6761 = phi float [ 1.000000e+00, %6326 ], [ %6759, %6689 ], [ 1.000000e+00, %6366 ], [ 1.000000e+00, %6401 ], [ 1.000000e+00, %6362 ]
  %6762 = fcmp fast ogt float %6358, 0.000000e+00
  br i1 %6762, label %6763, label %6927, !dx.controlflow.hints !126

; <label>:6763                                    ; preds = %6760
  %6764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6764, 2
  %6766 = fadd fast float %6765, %6239
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 2
  %6769 = extractvalue %dx.types.CBufRet.f32 %6767, 3
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 2
  %6772 = call float @dx.op.binary.f32(i32 35, float %6766, float 0.000000e+00)  ; FMax(a,b)
  %6773 = fadd fast float %6772, 0x3F10000000000000
  %6774 = fcmp fast oeq float %6771, 0.000000e+00
  br i1 %6774, label %6775, label %6842

; <label>:6775                                    ; preds = %6763
  %6776 = extractvalue %dx.types.CBufRet.f32 %6767, 1
  %6777 = extractvalue %dx.types.CBufRet.f32 %6767, 0
  %6778 = fmul fast float %6777, %6257
  %6779 = fmul fast float %6776, %6258
  %6780 = fadd fast float %6778, 5.000000e-01
  %6781 = call float @dx.op.unary.f32(i32 27, float %6780)  ; Round_ni(value)
  %6782 = fadd fast float %6779, 5.000000e-01
  %6783 = call float @dx.op.unary.f32(i32 27, float %6782)  ; Round_ni(value)
  %6784 = fsub fast float %6780, %6781
  %6785 = fsub fast float %6782, %6783
  %6786 = fadd fast float %6781, -5.000000e-01
  %6787 = fadd fast float %6783, -5.000000e-01
  %6788 = fmul fast float %6784, 2.000000e+00
  %6789 = fsub fast float 3.000000e+00, %6788
  %6790 = fadd fast float %6788, 1.000000e+00
  %6791 = fsub fast float 2.000000e+00, %6784
  %6792 = bitcast float %6789 to i32
  %6793 = sub nsw i32 2129859010, %6792
  %6794 = bitcast i32 %6793 to float
  %6795 = fmul fast float %6794, %6791
  %6796 = fadd fast float %6795, -1.000000e+00
  %6797 = bitcast float %6790 to i32
  %6798 = sub nsw i32 2129859010, %6797
  %6799 = bitcast i32 %6798 to float
  %6800 = fmul fast float %6799, %6784
  %6801 = fadd fast float %6800, 1.000000e+00
  %6802 = fmul fast float %6785, 2.000000e+00
  %6803 = fsub fast float 3.000000e+00, %6802
  %6804 = fadd fast float %6802, 1.000000e+00
  %6805 = fsub fast float 2.000000e+00, %6785
  %6806 = bitcast float %6803 to i32
  %6807 = sub nsw i32 2129859010, %6806
  %6808 = bitcast i32 %6807 to float
  %6809 = fmul fast float %6808, %6805
  %6810 = fadd fast float %6809, -1.000000e+00
  %6811 = bitcast float %6804 to i32
  %6812 = sub nsw i32 2129859010, %6811
  %6813 = bitcast i32 %6812 to float
  %6814 = fmul fast float %6813, %6785
  %6815 = fadd fast float %6814, 1.000000e+00
  %6816 = fadd fast float %6796, %6786
  %6817 = fmul fast float %6816, %6768
  %6818 = fadd fast float %6810, %6787
  %6819 = fmul fast float %6818, %6769
  %6820 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6817, float %6819, float undef, float undef, i32 0, i32 0, i32 undef, float %6773)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6821 = extractvalue %dx.types.ResRet.f32 %6820, 0
  %6822 = fmul fast float %6821, %6789
  %6823 = fadd fast float %6801, %6786
  %6824 = fmul fast float %6823, %6768
  %6825 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6824, float %6819, float undef, float undef, i32 0, i32 0, i32 undef, float %6773)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = fmul fast float %6826, %6790
  %6828 = fadd fast float %6815, %6787
  %6829 = fmul fast float %6828, %6769
  %6830 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6817, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float %6773)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6831 = extractvalue %dx.types.ResRet.f32 %6830, 0
  %6832 = fmul fast float %6831, %6789
  %6833 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6824, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float %6773)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6834 = extractvalue %dx.types.ResRet.f32 %6833, 0
  %6835 = fmul fast float %6834, %6790
  %6836 = fadd fast float %6835, %6832
  %6837 = fmul fast float %6836, %6804
  %6838 = fadd fast float %6827, %6822
  %6839 = fmul fast float %6838, %6803
  %6840 = fadd fast float %6839, %6837
  %6841 = fmul fast float %6840, 6.250000e-02
  br label %6927

; <label>:6842                                    ; preds = %6763
  %6843 = fmul fast float %291, 0x401921FB60000000
  %6844 = call float @dx.op.unary.f32(i32 13, float %6843)  ; Sin(value)
  %6845 = call float @dx.op.unary.f32(i32 12, float %6843)  ; Cos(value)
  %6846 = fsub fast float -0.000000e+00, %6844
  br label %6847

; <label>:6847                                    ; preds = %6896, %6842
  %6848 = phi float [ 0.000000e+00, %6842 ], [ %6891, %6896 ]
  %6849 = phi float [ 0.000000e+00, %6842 ], [ %6893, %6896 ]
  %6850 = phi i32 [ 0, %6842 ], [ %6897, %6896 ]
  %6851 = mul i32 %6850, 2
  %6852 = add i32 0, %6851
  %6853 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6852
  %6854 = load float, float* %6853, align 4
  %6855 = mul i32 %6850, 2
  %6856 = add i32 1, %6855
  %6857 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6856
  %6858 = load float, float* %6857, align 4
  %6859 = fmul fast float %6854, %6845
  %6860 = call float @dx.op.tertiary.f32(i32 46, float %6858, float %6846, float %6859)  ; FMad(a,b,c)
  %6861 = fmul fast float %6854, %6844
  %6862 = call float @dx.op.tertiary.f32(i32 46, float %6858, float %6845, float %6861)  ; FMad(a,b,c)
  %6863 = fmul fast float %6860, %6771
  %6864 = fmul fast float %6862, %6771
  %6865 = fadd fast float %6863, %6257
  %6866 = fadd fast float %6864, %6258
  %6867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %6865, float %6866, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.ResRet.f32 %6867, 3
  %6872 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 0
  store float %6868, float* %6872, align 4
  %6873 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 1
  store float %6869, float* %6873, align 4
  %6874 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 2
  store float %6870, float* %6874, align 4
  %6875 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 3
  store float %6871, float* %6875, align 4
  %6876 = fsub fast float %6868, %6773
  %6877 = fcmp fast olt float %6876, 0.000000e+00
  %6878 = select i1 %6877, float 0.000000e+00, float 1.000000e+00
  %6879 = fadd fast float %6878, %6848
  %6880 = fmul fast float %6878, %6876
  %6881 = fadd fast float %6880, %6849
  br label %6882

; <label>:6882                                    ; preds = %6882, %6847
  %6883 = phi i32 [ 1, %6847 ], [ %6894, %6882 ]
  %6884 = phi float [ %6881, %6847 ], [ %6893, %6882 ]
  %6885 = phi float [ %6879, %6847 ], [ %6891, %6882 ]
  %6886 = getelementptr [4 x float], [4 x float]* %118, i32 0, i32 %6883
  %6887 = load float, float* %6886, align 4, !tbaa !127, !noalias !117
  %6888 = fsub fast float %6887, %6773
  %6889 = fcmp fast olt float %6888, 0.000000e+00
  %6890 = select i1 %6889, float 0.000000e+00, float 1.000000e+00
  %6891 = fadd fast float %6890, %6885
  %6892 = fmul fast float %6890, %6888
  %6893 = fadd fast float %6892, %6884
  %6894 = add nuw nsw i32 %6883, 1
  %6895 = icmp eq i32 %6894, 4
  br i1 %6895, label %6896, label %6882, !llvm.loop !129

; <label>:6896                                    ; preds = %6882
  %6897 = add nuw nsw i32 %6850, 1
  %6898 = icmp eq i32 %6897, 8
  br i1 %6898, label %6899, label %6847, !llvm.loop !130

; <label>:6899                                    ; preds = %6896
  %6900 = fdiv fast float 1.000000e+00, %6891
  %6901 = fmul fast float %6900, %6893
  %6902 = fdiv fast float 1.000000e+00, %6773
  %6903 = fmul fast float %6901, %6902
  %6904 = call float @dx.op.unary.f32(i32 7, float %6903)  ; Saturate(value)
  %6905 = call float @dx.op.binary.f32(i32 35, float %6904, float 0.000000e+00)  ; FMax(a,b)
  %6906 = fmul fast float %6891, 3.125000e-02
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = fmul fast float %6907, 2.000000e+00
  %6909 = fadd fast float %6908, -1.000000e+00
  %6910 = fcmp fast ogt float %6909, 0.000000e+00
  %6911 = fcmp fast olt float %6909, 0.000000e+00
  %6912 = zext i1 %6910 to i32
  %6913 = zext i1 %6911 to i32
  %6914 = sub nsw i32 %6912, %6913
  %6915 = sitofp i32 %6914 to float
  %6916 = fmul fast float %6915, %6909
  %6917 = fsub fast float 1.000000e+00, %6916
  %6918 = fmul fast float %6917, %6917
  %6919 = fmul fast float %6918, %6917
  %6920 = fsub fast float %6917, %6919
  %6921 = fmul fast float %6920, %6905
  %6922 = fsub fast float 1.000000e+00, %6919
  %6923 = fsub fast float %6922, %6921
  %6924 = fmul fast float %6915, 5.000000e-01
  %6925 = fmul fast float %6924, %6923
  %6926 = fsub fast float 5.000000e-01, %6925
  br label %6927

; <label>:6927                                    ; preds = %6899, %6775, %6760
  %6928 = phi float [ 1.000000e+00, %6760 ], [ %6841, %6775 ], [ %6926, %6899 ]
  %6929 = fcmp fast ogt float %6356, 0.000000e+00
  br i1 %6929, label %6930, label %7094, !dx.controlflow.hints !131

; <label>:6930                                    ; preds = %6927
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6933 = fadd fast float %6932, %6239
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 2
  %6936 = extractvalue %dx.types.CBufRet.f32 %6934, 3
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6939 = call float @dx.op.binary.f32(i32 35, float %6933, float 0.000000e+00)  ; FMax(a,b)
  %6940 = fadd fast float %6939, 0x3F10000000000000
  %6941 = fcmp fast oeq float %6938, 0.000000e+00
  br i1 %6941, label %6942, label %7009

; <label>:6942                                    ; preds = %6930
  %6943 = extractvalue %dx.types.CBufRet.f32 %6934, 1
  %6944 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6945 = fmul fast float %6944, %6249
  %6946 = fmul fast float %6943, %6250
  %6947 = fadd fast float %6945, 5.000000e-01
  %6948 = call float @dx.op.unary.f32(i32 27, float %6947)  ; Round_ni(value)
  %6949 = fadd fast float %6946, 5.000000e-01
  %6950 = call float @dx.op.unary.f32(i32 27, float %6949)  ; Round_ni(value)
  %6951 = fsub fast float %6947, %6948
  %6952 = fsub fast float %6949, %6950
  %6953 = fadd fast float %6948, -5.000000e-01
  %6954 = fadd fast float %6950, -5.000000e-01
  %6955 = fmul fast float %6951, 2.000000e+00
  %6956 = fsub fast float 3.000000e+00, %6955
  %6957 = fadd fast float %6955, 1.000000e+00
  %6958 = fsub fast float 2.000000e+00, %6951
  %6959 = bitcast float %6956 to i32
  %6960 = sub nsw i32 2129859010, %6959
  %6961 = bitcast i32 %6960 to float
  %6962 = fmul fast float %6961, %6958
  %6963 = fadd fast float %6962, -1.000000e+00
  %6964 = bitcast float %6957 to i32
  %6965 = sub nsw i32 2129859010, %6964
  %6966 = bitcast i32 %6965 to float
  %6967 = fmul fast float %6966, %6951
  %6968 = fadd fast float %6967, 1.000000e+00
  %6969 = fmul fast float %6952, 2.000000e+00
  %6970 = fsub fast float 3.000000e+00, %6969
  %6971 = fadd fast float %6969, 1.000000e+00
  %6972 = fsub fast float 2.000000e+00, %6952
  %6973 = bitcast float %6970 to i32
  %6974 = sub nsw i32 2129859010, %6973
  %6975 = bitcast i32 %6974 to float
  %6976 = fmul fast float %6975, %6972
  %6977 = fadd fast float %6976, -1.000000e+00
  %6978 = bitcast float %6971 to i32
  %6979 = sub nsw i32 2129859010, %6978
  %6980 = bitcast i32 %6979 to float
  %6981 = fmul fast float %6980, %6952
  %6982 = fadd fast float %6981, 1.000000e+00
  %6983 = fadd fast float %6963, %6953
  %6984 = fmul fast float %6983, %6935
  %6985 = fadd fast float %6977, %6954
  %6986 = fmul fast float %6985, %6936
  %6987 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6984, float %6986, float undef, float undef, i32 0, i32 0, i32 undef, float %6940)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 0
  %6989 = fmul fast float %6988, %6956
  %6990 = fadd fast float %6968, %6953
  %6991 = fmul fast float %6990, %6935
  %6992 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6991, float %6986, float undef, float undef, i32 0, i32 0, i32 undef, float %6940)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6993 = extractvalue %dx.types.ResRet.f32 %6992, 0
  %6994 = fmul fast float %6993, %6957
  %6995 = fadd fast float %6982, %6954
  %6996 = fmul fast float %6995, %6936
  %6997 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6984, float %6996, float undef, float undef, i32 0, i32 0, i32 undef, float %6940)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6998 = extractvalue %dx.types.ResRet.f32 %6997, 0
  %6999 = fmul fast float %6998, %6956
  %7000 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6991, float %6996, float undef, float undef, i32 0, i32 0, i32 undef, float %6940)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7001 = extractvalue %dx.types.ResRet.f32 %7000, 0
  %7002 = fmul fast float %7001, %6957
  %7003 = fadd fast float %7002, %6999
  %7004 = fmul fast float %7003, %6971
  %7005 = fadd fast float %6994, %6989
  %7006 = fmul fast float %7005, %6970
  %7007 = fadd fast float %7006, %7004
  %7008 = fmul fast float %7007, 6.250000e-02
  br label %7094

; <label>:7009                                    ; preds = %6930
  %7010 = fmul fast float %291, 0x401921FB60000000
  %7011 = call float @dx.op.unary.f32(i32 13, float %7010)  ; Sin(value)
  %7012 = call float @dx.op.unary.f32(i32 12, float %7010)  ; Cos(value)
  %7013 = fsub fast float -0.000000e+00, %7011
  br label %7014

; <label>:7014                                    ; preds = %7063, %7009
  %7015 = phi float [ 0.000000e+00, %7009 ], [ %7058, %7063 ]
  %7016 = phi float [ 0.000000e+00, %7009 ], [ %7060, %7063 ]
  %7017 = phi i32 [ 0, %7009 ], [ %7064, %7063 ]
  %7018 = mul i32 %7017, 2
  %7019 = add i32 0, %7018
  %7020 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7019
  %7021 = load float, float* %7020, align 4
  %7022 = mul i32 %7017, 2
  %7023 = add i32 1, %7022
  %7024 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7023
  %7025 = load float, float* %7024, align 4
  %7026 = fmul fast float %7021, %7012
  %7027 = call float @dx.op.tertiary.f32(i32 46, float %7025, float %7013, float %7026)  ; FMad(a,b,c)
  %7028 = fmul fast float %7021, %7011
  %7029 = call float @dx.op.tertiary.f32(i32 46, float %7025, float %7012, float %7028)  ; FMad(a,b,c)
  %7030 = fmul fast float %7027, %6938
  %7031 = fmul fast float %7029, %6938
  %7032 = fadd fast float %7030, %6249
  %7033 = fadd fast float %7031, %6250
  %7034 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7032, float %7033, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7035 = extractvalue %dx.types.ResRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.ResRet.f32 %7034, 1
  %7037 = extractvalue %dx.types.ResRet.f32 %7034, 2
  %7038 = extractvalue %dx.types.ResRet.f32 %7034, 3
  %7039 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 0
  store float %7035, float* %7039, align 4
  %7040 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 1
  store float %7036, float* %7040, align 4
  %7041 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 2
  store float %7037, float* %7041, align 4
  %7042 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 3
  store float %7038, float* %7042, align 4
  %7043 = fsub fast float %7035, %6940
  %7044 = fcmp fast olt float %7043, 0.000000e+00
  %7045 = select i1 %7044, float 0.000000e+00, float 1.000000e+00
  %7046 = fadd fast float %7045, %7015
  %7047 = fmul fast float %7045, %7043
  %7048 = fadd fast float %7047, %7016
  br label %7049

; <label>:7049                                    ; preds = %7049, %7014
  %7050 = phi i32 [ 1, %7014 ], [ %7061, %7049 ]
  %7051 = phi float [ %7048, %7014 ], [ %7060, %7049 ]
  %7052 = phi float [ %7046, %7014 ], [ %7058, %7049 ]
  %7053 = getelementptr [4 x float], [4 x float]* %117, i32 0, i32 %7050
  %7054 = load float, float* %7053, align 4, !tbaa !127, !noalias !117
  %7055 = fsub fast float %7054, %6940
  %7056 = fcmp fast olt float %7055, 0.000000e+00
  %7057 = select i1 %7056, float 0.000000e+00, float 1.000000e+00
  %7058 = fadd fast float %7057, %7052
  %7059 = fmul fast float %7057, %7055
  %7060 = fadd fast float %7059, %7051
  %7061 = add nuw nsw i32 %7050, 1
  %7062 = icmp eq i32 %7061, 4
  br i1 %7062, label %7063, label %7049, !llvm.loop !129

; <label>:7063                                    ; preds = %7049
  %7064 = add nuw nsw i32 %7017, 1
  %7065 = icmp eq i32 %7064, 8
  br i1 %7065, label %7066, label %7014, !llvm.loop !130

; <label>:7066                                    ; preds = %7063
  %7067 = fdiv fast float 1.000000e+00, %7058
  %7068 = fmul fast float %7067, %7060
  %7069 = fdiv fast float 1.000000e+00, %6940
  %7070 = fmul fast float %7068, %7069
  %7071 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7072 = call float @dx.op.binary.f32(i32 35, float %7071, float 0.000000e+00)  ; FMax(a,b)
  %7073 = fmul fast float %7058, 3.125000e-02
  %7074 = call float @dx.op.unary.f32(i32 7, float %7073)  ; Saturate(value)
  %7075 = fmul fast float %7074, 2.000000e+00
  %7076 = fadd fast float %7075, -1.000000e+00
  %7077 = fcmp fast ogt float %7076, 0.000000e+00
  %7078 = fcmp fast olt float %7076, 0.000000e+00
  %7079 = zext i1 %7077 to i32
  %7080 = zext i1 %7078 to i32
  %7081 = sub nsw i32 %7079, %7080
  %7082 = sitofp i32 %7081 to float
  %7083 = fmul fast float %7082, %7076
  %7084 = fsub fast float 1.000000e+00, %7083
  %7085 = fmul fast float %7084, %7084
  %7086 = fmul fast float %7085, %7084
  %7087 = fsub fast float %7084, %7086
  %7088 = fmul fast float %7087, %7072
  %7089 = fsub fast float 1.000000e+00, %7086
  %7090 = fsub fast float %7089, %7088
  %7091 = fmul fast float %7082, 5.000000e-01
  %7092 = fmul fast float %7091, %7090
  %7093 = fsub fast float 5.000000e-01, %7092
  br label %7094

; <label>:7094                                    ; preds = %7066, %6942, %6927
  %7095 = phi float [ 1.000000e+00, %6927 ], [ %7008, %6942 ], [ %7093, %7066 ]
  %7096 = fcmp fast ogt float %6355, 0.000000e+00
  br i1 %7096, label %7097, label %7415, !dx.controlflow.hints !132

; <label>:7097                                    ; preds = %7094
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7100 = fadd fast float %7099, %6239
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7103 = extractvalue %dx.types.CBufRet.f32 %7101, 3
  %7104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7104, 0
  %7106 = call float @dx.op.binary.f32(i32 35, float %7100, float 0.000000e+00)  ; FMax(a,b)
  %7107 = fadd fast float %7106, 0x3F10000000000000
  %7108 = fcmp fast oeq float %7105, 0.000000e+00
  br i1 %6242, label %7109, label %7262, !dx.controlflow.hints !133

; <label>:7109                                    ; preds = %7097
  br i1 %7108, label %7110, label %7177

; <label>:7110                                    ; preds = %7109
  %7111 = extractvalue %dx.types.CBufRet.f32 %7101, 1
  %7112 = extractvalue %dx.types.CBufRet.f32 %7101, 0
  %7113 = fmul fast float %7112, %6231
  %7114 = fmul fast float %7111, %6235
  %7115 = fadd fast float %7113, 5.000000e-01
  %7116 = call float @dx.op.unary.f32(i32 27, float %7115)  ; Round_ni(value)
  %7117 = fadd fast float %7114, 5.000000e-01
  %7118 = call float @dx.op.unary.f32(i32 27, float %7117)  ; Round_ni(value)
  %7119 = fsub fast float %7115, %7116
  %7120 = fsub fast float %7117, %7118
  %7121 = fadd fast float %7116, -5.000000e-01
  %7122 = fadd fast float %7118, -5.000000e-01
  %7123 = fmul fast float %7119, 2.000000e+00
  %7124 = fsub fast float 3.000000e+00, %7123
  %7125 = fadd fast float %7123, 1.000000e+00
  %7126 = fsub fast float 2.000000e+00, %7119
  %7127 = bitcast float %7124 to i32
  %7128 = sub nsw i32 2129859010, %7127
  %7129 = bitcast i32 %7128 to float
  %7130 = fmul fast float %7129, %7126
  %7131 = fadd fast float %7130, -1.000000e+00
  %7132 = bitcast float %7125 to i32
  %7133 = sub nsw i32 2129859010, %7132
  %7134 = bitcast i32 %7133 to float
  %7135 = fmul fast float %7134, %7119
  %7136 = fadd fast float %7135, 1.000000e+00
  %7137 = fmul fast float %7120, 2.000000e+00
  %7138 = fsub fast float 3.000000e+00, %7137
  %7139 = fadd fast float %7137, 1.000000e+00
  %7140 = fsub fast float 2.000000e+00, %7120
  %7141 = bitcast float %7138 to i32
  %7142 = sub nsw i32 2129859010, %7141
  %7143 = bitcast i32 %7142 to float
  %7144 = fmul fast float %7143, %7140
  %7145 = fadd fast float %7144, -1.000000e+00
  %7146 = bitcast float %7139 to i32
  %7147 = sub nsw i32 2129859010, %7146
  %7148 = bitcast i32 %7147 to float
  %7149 = fmul fast float %7148, %7120
  %7150 = fadd fast float %7149, 1.000000e+00
  %7151 = fadd fast float %7131, %7121
  %7152 = fmul fast float %7151, %7102
  %7153 = fadd fast float %7145, %7122
  %7154 = fmul fast float %7153, %7103
  %7155 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7152, float %7154, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7156 = extractvalue %dx.types.ResRet.f32 %7155, 0
  %7157 = fmul fast float %7156, %7124
  %7158 = fadd fast float %7136, %7121
  %7159 = fmul fast float %7158, %7102
  %7160 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7159, float %7154, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7161 = extractvalue %dx.types.ResRet.f32 %7160, 0
  %7162 = fmul fast float %7161, %7125
  %7163 = fadd fast float %7150, %7122
  %7164 = fmul fast float %7163, %7103
  %7165 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7152, float %7164, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7166 = extractvalue %dx.types.ResRet.f32 %7165, 0
  %7167 = fmul fast float %7166, %7124
  %7168 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7159, float %7164, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7169 = extractvalue %dx.types.ResRet.f32 %7168, 0
  %7170 = fmul fast float %7169, %7125
  %7171 = fadd fast float %7170, %7167
  %7172 = fmul fast float %7171, %7139
  %7173 = fadd fast float %7162, %7157
  %7174 = fmul fast float %7173, %7138
  %7175 = fadd fast float %7174, %7172
  %7176 = fmul fast float %7175, 6.250000e-02
  br label %7415

; <label>:7177                                    ; preds = %7109
  %7178 = fmul fast float %291, 0x401921FB60000000
  %7179 = call float @dx.op.unary.f32(i32 13, float %7178)  ; Sin(value)
  %7180 = call float @dx.op.unary.f32(i32 12, float %7178)  ; Cos(value)
  %7181 = fsub fast float -0.000000e+00, %7179
  br label %7182

; <label>:7182                                    ; preds = %7231, %7177
  %7183 = phi float [ 0.000000e+00, %7177 ], [ %7226, %7231 ]
  %7184 = phi float [ 0.000000e+00, %7177 ], [ %7228, %7231 ]
  %7185 = phi i32 [ 0, %7177 ], [ %7232, %7231 ]
  %7186 = mul i32 %7185, 2
  %7187 = add i32 0, %7186
  %7188 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7187
  %7189 = load float, float* %7188, align 4
  %7190 = mul i32 %7185, 2
  %7191 = add i32 1, %7190
  %7192 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7191
  %7193 = load float, float* %7192, align 4
  %7194 = fmul fast float %7189, %7180
  %7195 = call float @dx.op.tertiary.f32(i32 46, float %7193, float %7181, float %7194)  ; FMad(a,b,c)
  %7196 = fmul fast float %7189, %7179
  %7197 = call float @dx.op.tertiary.f32(i32 46, float %7193, float %7180, float %7196)  ; FMad(a,b,c)
  %7198 = fmul fast float %7195, %7105
  %7199 = fmul fast float %7197, %7105
  %7200 = fadd fast float %7198, %6231
  %7201 = fadd fast float %7199, %6235
  %7202 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7200, float %7201, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = extractvalue %dx.types.ResRet.f32 %7202, 1
  %7205 = extractvalue %dx.types.ResRet.f32 %7202, 2
  %7206 = extractvalue %dx.types.ResRet.f32 %7202, 3
  %7207 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 0
  store float %7203, float* %7207, align 4
  %7208 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 1
  store float %7204, float* %7208, align 4
  %7209 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 2
  store float %7205, float* %7209, align 4
  %7210 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 3
  store float %7206, float* %7210, align 4
  %7211 = fsub fast float %7203, %7107
  %7212 = fcmp fast olt float %7211, 0.000000e+00
  %7213 = select i1 %7212, float 0.000000e+00, float 1.000000e+00
  %7214 = fadd fast float %7213, %7183
  %7215 = fmul fast float %7213, %7211
  %7216 = fadd fast float %7215, %7184
  br label %7217

; <label>:7217                                    ; preds = %7217, %7182
  %7218 = phi i32 [ 1, %7182 ], [ %7229, %7217 ]
  %7219 = phi float [ %7216, %7182 ], [ %7228, %7217 ]
  %7220 = phi float [ %7214, %7182 ], [ %7226, %7217 ]
  %7221 = getelementptr [4 x float], [4 x float]* %116, i32 0, i32 %7218
  %7222 = load float, float* %7221, align 4, !tbaa !127, !noalias !117
  %7223 = fsub fast float %7222, %7107
  %7224 = fcmp fast olt float %7223, 0.000000e+00
  %7225 = select i1 %7224, float 0.000000e+00, float 1.000000e+00
  %7226 = fadd fast float %7225, %7220
  %7227 = fmul fast float %7225, %7223
  %7228 = fadd fast float %7227, %7219
  %7229 = add nuw nsw i32 %7218, 1
  %7230 = icmp eq i32 %7229, 4
  br i1 %7230, label %7231, label %7217, !llvm.loop !129

; <label>:7231                                    ; preds = %7217
  %7232 = add nuw nsw i32 %7185, 1
  %7233 = icmp eq i32 %7232, 8
  br i1 %7233, label %7234, label %7182, !llvm.loop !130

; <label>:7234                                    ; preds = %7231
  %7235 = fdiv fast float 1.000000e+00, %7226
  %7236 = fmul fast float %7235, %7228
  %7237 = fdiv fast float 1.000000e+00, %7107
  %7238 = fmul fast float %7236, %7237
  %7239 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7240 = call float @dx.op.binary.f32(i32 35, float %7239, float 0.000000e+00)  ; FMax(a,b)
  %7241 = fmul fast float %7226, 3.125000e-02
  %7242 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  %7243 = fmul fast float %7242, 2.000000e+00
  %7244 = fadd fast float %7243, -1.000000e+00
  %7245 = fcmp fast ogt float %7244, 0.000000e+00
  %7246 = fcmp fast olt float %7244, 0.000000e+00
  %7247 = zext i1 %7245 to i32
  %7248 = zext i1 %7246 to i32
  %7249 = sub nsw i32 %7247, %7248
  %7250 = sitofp i32 %7249 to float
  %7251 = fmul fast float %7250, %7244
  %7252 = fsub fast float 1.000000e+00, %7251
  %7253 = fmul fast float %7252, %7252
  %7254 = fmul fast float %7253, %7252
  %7255 = fsub fast float %7252, %7254
  %7256 = fmul fast float %7255, %7240
  %7257 = fsub fast float 1.000000e+00, %7254
  %7258 = fsub fast float %7257, %7256
  %7259 = fmul fast float %7250, 5.000000e-01
  %7260 = fmul fast float %7259, %7258
  %7261 = fsub fast float 5.000000e-01, %7260
  br label %7415

; <label>:7262                                    ; preds = %7097
  br i1 %7108, label %7263, label %7330

; <label>:7263                                    ; preds = %7262
  %7264 = extractvalue %dx.types.CBufRet.f32 %7101, 1
  %7265 = extractvalue %dx.types.CBufRet.f32 %7101, 0
  %7266 = fmul fast float %7265, %6231
  %7267 = fmul fast float %7264, %6235
  %7268 = fadd fast float %7266, 5.000000e-01
  %7269 = call float @dx.op.unary.f32(i32 27, float %7268)  ; Round_ni(value)
  %7270 = fadd fast float %7267, 5.000000e-01
  %7271 = call float @dx.op.unary.f32(i32 27, float %7270)  ; Round_ni(value)
  %7272 = fsub fast float %7268, %7269
  %7273 = fsub fast float %7270, %7271
  %7274 = fadd fast float %7269, -5.000000e-01
  %7275 = fadd fast float %7271, -5.000000e-01
  %7276 = fmul fast float %7272, 2.000000e+00
  %7277 = fsub fast float 3.000000e+00, %7276
  %7278 = fadd fast float %7276, 1.000000e+00
  %7279 = fsub fast float 2.000000e+00, %7272
  %7280 = bitcast float %7277 to i32
  %7281 = sub nsw i32 2129859010, %7280
  %7282 = bitcast i32 %7281 to float
  %7283 = fmul fast float %7282, %7279
  %7284 = fadd fast float %7283, -1.000000e+00
  %7285 = bitcast float %7278 to i32
  %7286 = sub nsw i32 2129859010, %7285
  %7287 = bitcast i32 %7286 to float
  %7288 = fmul fast float %7287, %7272
  %7289 = fadd fast float %7288, 1.000000e+00
  %7290 = fmul fast float %7273, 2.000000e+00
  %7291 = fsub fast float 3.000000e+00, %7290
  %7292 = fadd fast float %7290, 1.000000e+00
  %7293 = fsub fast float 2.000000e+00, %7273
  %7294 = bitcast float %7291 to i32
  %7295 = sub nsw i32 2129859010, %7294
  %7296 = bitcast i32 %7295 to float
  %7297 = fmul fast float %7296, %7293
  %7298 = fadd fast float %7297, -1.000000e+00
  %7299 = bitcast float %7292 to i32
  %7300 = sub nsw i32 2129859010, %7299
  %7301 = bitcast i32 %7300 to float
  %7302 = fmul fast float %7301, %7273
  %7303 = fadd fast float %7302, 1.000000e+00
  %7304 = fadd fast float %7284, %7274
  %7305 = fmul fast float %7304, %7102
  %7306 = fadd fast float %7298, %7275
  %7307 = fmul fast float %7306, %7103
  %7308 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7305, float %7307, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7309 = extractvalue %dx.types.ResRet.f32 %7308, 0
  %7310 = fmul fast float %7309, %7277
  %7311 = fadd fast float %7289, %7274
  %7312 = fmul fast float %7311, %7102
  %7313 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7312, float %7307, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7314 = extractvalue %dx.types.ResRet.f32 %7313, 0
  %7315 = fmul fast float %7314, %7278
  %7316 = fadd fast float %7303, %7275
  %7317 = fmul fast float %7316, %7103
  %7318 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7305, float %7317, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7319 = extractvalue %dx.types.ResRet.f32 %7318, 0
  %7320 = fmul fast float %7319, %7277
  %7321 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7312, float %7317, float undef, float undef, i32 0, i32 0, i32 undef, float %7107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7322 = extractvalue %dx.types.ResRet.f32 %7321, 0
  %7323 = fmul fast float %7322, %7278
  %7324 = fadd fast float %7323, %7320
  %7325 = fmul fast float %7324, %7292
  %7326 = fadd fast float %7315, %7310
  %7327 = fmul fast float %7326, %7291
  %7328 = fadd fast float %7327, %7325
  %7329 = fmul fast float %7328, 6.250000e-02
  br label %7415

; <label>:7330                                    ; preds = %7262
  %7331 = fmul fast float %291, 0x401921FB60000000
  %7332 = call float @dx.op.unary.f32(i32 13, float %7331)  ; Sin(value)
  %7333 = call float @dx.op.unary.f32(i32 12, float %7331)  ; Cos(value)
  %7334 = fsub fast float -0.000000e+00, %7332
  br label %7335

; <label>:7335                                    ; preds = %7384, %7330
  %7336 = phi float [ 0.000000e+00, %7330 ], [ %7379, %7384 ]
  %7337 = phi float [ 0.000000e+00, %7330 ], [ %7381, %7384 ]
  %7338 = phi i32 [ 0, %7330 ], [ %7385, %7384 ]
  %7339 = mul i32 %7338, 2
  %7340 = add i32 0, %7339
  %7341 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7340
  %7342 = load float, float* %7341, align 4
  %7343 = mul i32 %7338, 2
  %7344 = add i32 1, %7343
  %7345 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7344
  %7346 = load float, float* %7345, align 4
  %7347 = fmul fast float %7342, %7333
  %7348 = call float @dx.op.tertiary.f32(i32 46, float %7346, float %7334, float %7347)  ; FMad(a,b,c)
  %7349 = fmul fast float %7342, %7332
  %7350 = call float @dx.op.tertiary.f32(i32 46, float %7346, float %7333, float %7349)  ; FMad(a,b,c)
  %7351 = fmul fast float %7348, %7105
  %7352 = fmul fast float %7350, %7105
  %7353 = fadd fast float %7351, %6231
  %7354 = fadd fast float %7352, %6235
  %7355 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7353, float %7354, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = extractvalue %dx.types.ResRet.f32 %7355, 1
  %7358 = extractvalue %dx.types.ResRet.f32 %7355, 2
  %7359 = extractvalue %dx.types.ResRet.f32 %7355, 3
  %7360 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 0
  store float %7356, float* %7360, align 4
  %7361 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 1
  store float %7357, float* %7361, align 4
  %7362 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 2
  store float %7358, float* %7362, align 4
  %7363 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 3
  store float %7359, float* %7363, align 4
  %7364 = fsub fast float %7356, %7107
  %7365 = fcmp fast olt float %7364, 0.000000e+00
  %7366 = select i1 %7365, float 0.000000e+00, float 1.000000e+00
  %7367 = fadd fast float %7366, %7336
  %7368 = fmul fast float %7366, %7364
  %7369 = fadd fast float %7368, %7337
  br label %7370

; <label>:7370                                    ; preds = %7370, %7335
  %7371 = phi i32 [ 1, %7335 ], [ %7382, %7370 ]
  %7372 = phi float [ %7369, %7335 ], [ %7381, %7370 ]
  %7373 = phi float [ %7367, %7335 ], [ %7379, %7370 ]
  %7374 = getelementptr [4 x float], [4 x float]* %115, i32 0, i32 %7371
  %7375 = load float, float* %7374, align 4, !tbaa !127, !noalias !117
  %7376 = fsub fast float %7375, %7107
  %7377 = fcmp fast olt float %7376, 0.000000e+00
  %7378 = select i1 %7377, float 0.000000e+00, float 1.000000e+00
  %7379 = fadd fast float %7378, %7373
  %7380 = fmul fast float %7378, %7376
  %7381 = fadd fast float %7380, %7372
  %7382 = add nuw nsw i32 %7371, 1
  %7383 = icmp eq i32 %7382, 4
  br i1 %7383, label %7384, label %7370, !llvm.loop !129

; <label>:7384                                    ; preds = %7370
  %7385 = add nuw nsw i32 %7338, 1
  %7386 = icmp eq i32 %7385, 8
  br i1 %7386, label %7387, label %7335, !llvm.loop !130

; <label>:7387                                    ; preds = %7384
  %7388 = fdiv fast float 1.000000e+00, %7379
  %7389 = fmul fast float %7388, %7381
  %7390 = fdiv fast float 1.000000e+00, %7107
  %7391 = fmul fast float %7389, %7390
  %7392 = call float @dx.op.unary.f32(i32 7, float %7391)  ; Saturate(value)
  %7393 = call float @dx.op.binary.f32(i32 35, float %7392, float 0.000000e+00)  ; FMax(a,b)
  %7394 = fmul fast float %7379, 3.125000e-02
  %7395 = call float @dx.op.unary.f32(i32 7, float %7394)  ; Saturate(value)
  %7396 = fmul fast float %7395, 2.000000e+00
  %7397 = fadd fast float %7396, -1.000000e+00
  %7398 = fcmp fast ogt float %7397, 0.000000e+00
  %7399 = fcmp fast olt float %7397, 0.000000e+00
  %7400 = zext i1 %7398 to i32
  %7401 = zext i1 %7399 to i32
  %7402 = sub nsw i32 %7400, %7401
  %7403 = sitofp i32 %7402 to float
  %7404 = fmul fast float %7403, %7397
  %7405 = fsub fast float 1.000000e+00, %7404
  %7406 = fmul fast float %7405, %7405
  %7407 = fmul fast float %7406, %7405
  %7408 = fsub fast float %7405, %7407
  %7409 = fmul fast float %7408, %7393
  %7410 = fsub fast float 1.000000e+00, %7407
  %7411 = fsub fast float %7410, %7409
  %7412 = fmul fast float %7403, 5.000000e-01
  %7413 = fmul fast float %7412, %7411
  %7414 = fsub fast float 5.000000e-01, %7413
  br label %7415

; <label>:7415                                    ; preds = %7387, %7263, %7234, %7110, %7094
  %7416 = phi float [ 1.000000e+00, %7094 ], [ %7176, %7110 ], [ %7261, %7234 ], [ %7329, %7263 ], [ %7414, %7387 ]
  %7417 = fsub fast float %6928, %6761
  %7418 = fmul fast float %7417, %6328
  %7419 = fadd fast float %7418, %6761
  %7420 = fsub fast float %7095, %7419
  %7421 = fmul fast float %7420, %6327
  %7422 = fadd fast float %7421, %7419
  %7423 = fsub fast float %7416, %7422
  %7424 = fmul fast float %7423, %6355
  %7425 = fadd fast float %7424, %7422
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 2
  %7428 = fcmp fast ogt float %7427, 0.000000e+00
  br i1 %7428, label %7429, label %7469, !dx.controlflow.hints !134

; <label>:7429                                    ; preds = %7415
  %7430 = fcmp fast ugt float %7427, 0.000000e+00
  br i1 %7430, label %7431, label %7466

; <label>:7431                                    ; preds = %7429
  %7432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.f32 %7432, 0
  %7434 = extractvalue %dx.types.CBufRet.f32 %7432, 1
  %7435 = extractvalue %dx.types.CBufRet.f32 %7432, 2
  %7436 = extractvalue %dx.types.CBufRet.f32 %7432, 3
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7439 = extractvalue %dx.types.CBufRet.f32 %7437, 1
  %7440 = extractvalue %dx.types.CBufRet.f32 %7437, 2
  %7441 = extractvalue %dx.types.CBufRet.f32 %7437, 3
  %7442 = extractvalue %dx.types.CBufRet.f32 %7426, 0
  %7443 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7445 = extractvalue %dx.types.CBufRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.CBufRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.CBufRet.f32 %7444, 2
  %7448 = fadd fast float %7445, %6208
  %7449 = fadd fast float %7446, %6209
  %7450 = fadd fast float %7447, %6210
  %7451 = fmul fast float %7448, %7433
  %7452 = call float @dx.op.tertiary.f32(i32 46, float %7434, float %7449, float %7451)  ; FMad(a,b,c)
  %7453 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7450, float %7452)  ; FMad(a,b,c)
  %7454 = fadd fast float %7453, %7436
  %7455 = fmul fast float %7448, %7438
  %7456 = call float @dx.op.tertiary.f32(i32 46, float %7439, float %7449, float %7455)  ; FMad(a,b,c)
  %7457 = call float @dx.op.tertiary.f32(i32 46, float %7440, float %7450, float %7456)  ; FMad(a,b,c)
  %7458 = fadd fast float %7457, %7441
  %7459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7454, float %7458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = fmul fast float %7460, %7443
  %7462 = fadd fast float %7461, %7442
  %7463 = call float @dx.op.unary.f32(i32 7, float %7462)  ; Saturate(value)
  %7464 = fmul fast float %7463, %7427
  %7465 = fsub fast float 1.000000e+00, %7464
  br label %7466

; <label>:7466                                    ; preds = %7431, %7429
  %7467 = phi float [ %7465, %7431 ], [ 1.000000e+00, %7429 ]
  %7468 = fmul fast float %7467, %7425
  br label %7469

; <label>:7469                                    ; preds = %7466, %7415, %6188
  %7470 = phi float [ 1.000000e+00, %6188 ], [ %7468, %7466 ], [ %7425, %7415 ]
  %7471 = call float @dx.op.binary.f32(i32 36, float %7470, float %7470)  ; FMin(a,b)
  %7472 = call float @dx.op.binary.f32(i32 36, float %7470, float %7471)  ; FMin(a,b)
  %7473 = fcmp fast ogt float %7472, 0.000000e+00
  br i1 %7473, label %7474, label %7639, !dx.controlflow.hints !135

; <label>:7474                                    ; preds = %7469
  %7475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7476 = extractvalue %dx.types.CBufRet.f32 %7475, 0
  %7477 = extractvalue %dx.types.CBufRet.f32 %7475, 1
  %7478 = extractvalue %dx.types.CBufRet.f32 %7475, 2
  %7479 = extractvalue %dx.types.CBufRet.f32 %7475, 3
  %7480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.CBufRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.CBufRet.f32 %7480, 2
  %7484 = extractvalue %dx.types.CBufRet.f32 %7480, 3
  %7485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7486 = extractvalue %dx.types.CBufRet.f32 %7485, 0
  %7487 = extractvalue %dx.types.CBufRet.f32 %7485, 1
  %7488 = extractvalue %dx.types.CBufRet.f32 %7485, 2
  %7489 = extractvalue %dx.types.CBufRet.f32 %7485, 3
  %7490 = fmul fast float %7476, %6208
  %7491 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %7477, float %7490)  ; FMad(a,b,c)
  %7492 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %7478, float %7491)  ; FMad(a,b,c)
  %7493 = fadd fast float %7492, %7479
  %7494 = fmul fast float %7481, %6208
  %7495 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %7482, float %7494)  ; FMad(a,b,c)
  %7496 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %7483, float %7495)  ; FMad(a,b,c)
  %7497 = fadd fast float %7496, %7484
  %7498 = fmul fast float %7486, %6208
  %7499 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %7487, float %7498)  ; FMad(a,b,c)
  %7500 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %7488, float %7499)  ; FMad(a,b,c)
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.CBufRet.f32 %7501, 3
  %7505 = fmul fast float %7504, %7493
  %7506 = fmul fast float %7504, %7497
  %7507 = fadd fast float %7505, %7502
  %7508 = fadd fast float %7506, %7503
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7509, 1
  %7512 = fsub fast float %7507, %7510
  %7513 = fsub fast float %7508, %7511
  %7514 = fcmp fast olt float %7512, 0.000000e+00
  %7515 = fcmp fast olt float %7513, 0.000000e+00
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7519 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7520 = extractvalue %dx.types.CBufRet.f32 %7516, 3
  %7521 = select i1 %7514, float %7517, float %7519
  %7522 = select i1 %7515, float %7518, float %7520
  %7523 = fmul fast float %7521, %7512
  %7524 = fmul fast float %7522, %7513
  %7525 = call float @dx.op.unary.f32(i32 6, float %7523)  ; FAbs(value)
  %7526 = call float @dx.op.unary.f32(i32 6, float %7524)  ; FAbs(value)
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = call float @dx.op.binary.f32(i32 35, float %7525, float %7526)  ; FMax(a,b)
  %7530 = fsub fast float %7528, %7529
  %7531 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7532 = fcmp fast ogt float %7531, 0.000000e+00
  br i1 %7532, label %7533, label %7574, !dx.controlflow.hints !136

; <label>:7533                                    ; preds = %7474
  %7534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7507, float %7508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 1
  %7536 = fcmp fast ogt float %7535, 0.000000e+00
  br i1 %7536, label %7537, label %7569

; <label>:7537                                    ; preds = %7533
  %7538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7507, float %7508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7539 = extractvalue %dx.types.ResRet.f32 %7538, 0
  %7540 = extractvalue %dx.types.ResRet.f32 %7538, 1
  %7541 = extractvalue %dx.types.ResRet.f32 %7538, 2
  %7542 = extractvalue %dx.types.ResRet.f32 %7538, 3
  %7543 = fsub fast float 1.000000e+00, %7489
  %7544 = fsub fast float %7543, %7500
  %7545 = fmul fast float %7544, 0x400921FB60000000
  %7546 = fadd fast float %7545, 0x3FF921FB60000000
  %7547 = call float @dx.op.unary.f32(i32 13, float %7546)  ; Sin(value)
  %7548 = fadd fast float %7547, -1.000000e+00
  %7549 = fmul fast float %7548, 0x3FD45F3060000000
  %7550 = fmul fast float %7544, 0x401921FB60000000
  %7551 = fadd fast float %7550, 0x400921FB60000000
  %7552 = call float @dx.op.unary.f32(i32 13, float %7551)  ; Sin(value)
  %7553 = fadd fast float %7552, 0x3E7777A5C0000000
  %7554 = fmul fast float %7553, 0x3FC45F3060000000
  %7555 = fmul fast float %7544, 0x4022D97C80000000
  %7556 = fadd fast float %7555, 0x4012D97C80000000
  %7557 = call float @dx.op.unary.f32(i32 13, float %7556)  ; Sin(value)
  %7558 = fadd fast float %7557, 1.000000e+00
  %7559 = fmul fast float %7558, 0x3FBB2995E0000000
  %7560 = fmul fast float %7544, 0x402921FB60000000
  %7561 = fadd fast float %7560, 0x401921FB60000000
  %7562 = call float @dx.op.unary.f32(i32 13, float %7561)  ; Sin(value)
  %7563 = fadd fast float %7562, 0xBE8777A5C0000000
  %7564 = fmul fast float %7563, 0x3FB45F3060000000
  %7565 = call float @dx.op.dot4.f32(i32 56, float %7539, float %7540, float %7541, float %7542, float %7549, float %7554, float %7559, float %7564)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7566 = fmul fast float %7565, 0xBFF7154760000000
  %7567 = call float @dx.op.unary.f32(i32 21, float %7566)  ; Exp(value)
  %7568 = call float @dx.op.unary.f32(i32 7, float %7567)  ; Saturate(value)
  br label %7569

; <label>:7569                                    ; preds = %7537, %7533
  %7570 = phi float [ %7568, %7537 ], [ 1.000000e+00, %7533 ]
  %7571 = fadd fast float %7570, -1.000000e+00
  %7572 = fmul fast float %7571, %7531
  %7573 = fadd fast float %7572, 1.000000e+00
  br label %7574

; <label>:7574                                    ; preds = %7569, %7474
  %7575 = phi float [ %7573, %7569 ], [ 1.000000e+00, %7474 ]
  %7576 = fmul fast float %7575, %7470
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.CBufRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.CBufRet.f32 %7577, 2
  %7581 = fadd fast float %7578, %208
  %7582 = fadd fast float %7579, %209
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 1
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7587 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7588 = extractvalue %dx.types.CBufRet.f32 %7585, 2
  %7589 = fsub fast float -0.000000e+00, %7581
  %7590 = fsub fast float -0.000000e+00, %7582
  %7591 = fsub fast float %5325, %7580
  %7592 = fadd fast float %7591, %7584
  %7593 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7589, float %7590, float %7592)  ; Dot3(ax,ay,az,bx,by,bz)
  %7594 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7586, float %7587, float %7588)  ; Dot3(ax,ay,az,bx,by,bz)
  %7595 = fdiv fast float 1.000000e+00, %7594
  %7596 = fmul fast float %7595, %7593
  %7597 = fmul fast float %7586, %7596
  %7598 = fmul fast float %7587, %7596
  %7599 = fadd fast float %7597, %7581
  %7600 = fadd fast float %7598, %7582
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 0
  %7603 = extractvalue %dx.types.CBufRet.f32 %7601, 1
  %7604 = fsub fast float %7599, %7602
  %7605 = fsub fast float %7600, %7603
  %7606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7607 = extractvalue %dx.types.CBufRet.f32 %7606, 2
  %7608 = extractvalue %dx.types.CBufRet.f32 %7606, 3
  %7609 = fmul fast float %7604, %7607
  %7610 = fmul fast float %7605, %7608
  %7611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.i32 %7611, 3
  %7613 = icmp eq i32 %7612, 0
  br i1 %7613, label %7619, label %7614

; <label>:7614                                    ; preds = %7574
  %7615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7609, float %7610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7616 = extractvalue %dx.types.ResRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.ResRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.ResRet.f32 %7615, 2
  br label %7624

; <label>:7619                                    ; preds = %7574
  %7620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %7609, float %7610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7621 = extractvalue %dx.types.ResRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.ResRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.ResRet.f32 %7620, 2
  br label %7624

; <label>:7624                                    ; preds = %7619, %7614
  %7625 = phi float [ %7616, %7614 ], [ %7621, %7619 ]
  %7626 = phi float [ %7617, %7614 ], [ %7622, %7619 ]
  %7627 = phi float [ %7618, %7614 ], [ %7623, %7619 ]
  %7628 = extractvalue %dx.types.CBufRet.f32 %7583, 2
  %7629 = fmul fast float %7628, %7625
  %7630 = extractvalue %dx.types.CBufRet.f32 %7583, 0
  %7631 = fsub fast float %7596, %7630
  %7632 = fsub fast float %7631, %7629
  %7633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7632)  ; FMax(a,b)
  %7634 = fmul fast float %7633, %7626
  %7635 = call float @dx.op.binary.f32(i32 36, float %7627, float %7634)  ; FMin(a,b)
  %7636 = fmul fast float %7635, 0xBFF7154760000000
  %7637 = call float @dx.op.unary.f32(i32 21, float %7636)  ; Exp(value)
  %7638 = fmul fast float %7576, %7637
  br label %7639

; <label>:7639                                    ; preds = %7624, %7469
  %7640 = phi float [ %7638, %7624 ], [ %7470, %7469 ]
  %7641 = call float @dx.op.binary.f32(i32 36, float %7640, float %7640)  ; FMin(a,b)
  %7642 = call float @dx.op.binary.f32(i32 36, float %7640, float %7641)  ; FMin(a,b)
  %7643 = fcmp fast ogt float %7642, 0.000000e+00
  br i1 %7643, label %7644, label %7892, !dx.controlflow.hints !137

; <label>:7644                                    ; preds = %7639
  %7645 = fmul fast float %7640, %6200
  %7646 = fmul fast float %7640, %6201
  %7647 = fmul fast float %7640, %6202
  %7648 = fsub fast float %210, %4502
  %7649 = fcmp fast ogt float %7648, 0.000000e+00
  %7650 = fmul fast float %6189, 5.120000e+02
  %7651 = fmul fast float %6190, 5.120000e+02
  %7652 = fmul fast float %6191, 5.120000e+02
  %7653 = fadd fast float %7652, %210
  %7654 = fsub fast float %4502, %7653
  %7655 = fmul fast float %7654, 2.000000e+00
  %7656 = fadd fast float %7655, %7653
  %7657 = select i1 %7649, float %7656, float %7653
  %7658 = fsub fast float %7657, %210
  %7659 = call float @dx.op.dot3.f32(i32 55, float %7650, float %7651, float %7658, float %7650, float %7651, float %7658)  ; Dot3(ax,ay,az,bx,by,bz)
  %7660 = call float @dx.op.unary.f32(i32 25, float %7659)  ; Rsqrt(value)
  %7661 = fmul fast float %7660, %7650
  %7662 = fmul fast float %7660, %7651
  %7663 = fmul fast float %7660, %7658
  %7664 = fsub fast float %4502, %210
  %7665 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7664)  ; Dot3(ax,ay,az,bx,by,bz)
  %7666 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7661, float %7662, float %7663)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = fdiv fast float 1.000000e+00, %7666
  %7668 = fmul fast float %7667, %7665
  %7669 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7648, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7670 = fcmp fast ogt float %7669, 0.000000e+00
  %7671 = fcmp fast olt float %7669, 0.000000e+00
  %7672 = zext i1 %7670 to i32
  %7673 = zext i1 %7671 to i32
  %7674 = sub nsw i32 %7672, %7673
  %7675 = sitofp i32 %7674 to float
  %7676 = fsub fast float %7657, %4502
  %7677 = call float @dx.op.dot3.f32(i32 55, float %7650, float %7651, float %7676, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7678 = fcmp fast ogt float %7677, 0.000000e+00
  %7679 = fcmp fast olt float %7677, 0.000000e+00
  %7680 = zext i1 %7678 to i32
  %7681 = zext i1 %7679 to i32
  %7682 = sub nsw i32 %7680, %7681
  %7683 = sitofp i32 %7682 to float
  %7684 = fcmp fast une float %7675, %7683
  br i1 %7684, label %7685, label %7695

; <label>:7685                                    ; preds = %7644
  %7686 = fmul fast float %7668, %7663
  %7687 = fmul fast float %7668, %7662
  %7688 = fmul fast float %7668, %7661
  %7689 = fmul fast float %7688, %7688
  %7690 = fmul fast float %7687, %7687
  %7691 = fadd fast float %7689, %7690
  %7692 = fmul fast float %7686, %7686
  %7693 = fadd fast float %7691, %7692
  %7694 = call float @dx.op.unary.f32(i32 24, float %7693)  ; Sqrt(value)
  br label %7705

; <label>:7695                                    ; preds = %7644
  %7696 = icmp slt i32 %7674, 0
  br i1 %7696, label %7697, label %7705

; <label>:7697                                    ; preds = %7695
  %7698 = fsub fast float %210, %7657
  %7699 = fmul fast float %7650, %7650
  %7700 = fmul fast float %7651, %7651
  %7701 = fadd fast float %7699, %7700
  %7702 = fmul fast float %7698, %7698
  %7703 = fadd fast float %7701, %7702
  %7704 = call float @dx.op.unary.f32(i32 24, float %7703)  ; Sqrt(value)
  br label %7705

; <label>:7705                                    ; preds = %7697, %7695, %7685
  %7706 = phi float [ %7694, %7685 ], [ %7704, %7697 ], [ 0.000000e+00, %7695 ]
  %7707 = fsub fast float -0.000000e+00, %7706
  %7708 = select i1 %7649, float -0.000000e+00, float %7707
  %7709 = fmul fast float %4503, 0x3FF7154760000000
  %7710 = fmul fast float %7709, %7708
  %7711 = fmul fast float %4504, 0x3FF7154760000000
  %7712 = fmul fast float %7711, %7708
  %7713 = fmul fast float %4505, 0x3FF7154760000000
  %7714 = fmul fast float %7713, %7708
  %7715 = call float @dx.op.unary.f32(i32 21, float %7710)  ; Exp(value)
  %7716 = call float @dx.op.unary.f32(i32 21, float %7712)  ; Exp(value)
  %7717 = call float @dx.op.unary.f32(i32 21, float %7714)  ; Exp(value)
  %7718 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7719 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7720 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7721 = fmul fast float %7645, %7718
  %7722 = fmul fast float %7646, %7719
  %7723 = fmul fast float %7647, %7720
  %7724 = fsub fast float %6189, %5328
  %7725 = fsub fast float %6190, %5329
  %7726 = fsub fast float %6191, %5330
  %7727 = call float @dx.op.dot3.f32(i32 55, float %7724, float %7725, float %7726, float %7724, float %7725, float %7726)  ; Dot3(ax,ay,az,bx,by,bz)
  %7728 = call float @dx.op.unary.f32(i32 25, float %7727)  ; Rsqrt(value)
  %7729 = fmul fast float %7728, %7724
  %7730 = fmul fast float %7728, %7725
  %7731 = fmul fast float %7728, %7726
  %7732 = call float @dx.op.dot3.f32(i32 55, float %6189, float %6190, float %6191, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %7733 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5333, float %7729, float %7730, float %7731)  ; Dot3(ax,ay,az,bx,by,bz)
  %7734 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7735 = bitcast i32 %5360 to float
  %7736 = fmul fast float %7734, %7734
  %7737 = fmul fast float %7736, %7735
  %7738 = call float @dx.op.unary.f32(i32 7, float %7737)  ; Saturate(value)
  %7739 = fmul fast float %7738, %7734
  %7740 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %7729, float %7730, float %7731)  ; Dot3(ax,ay,az,bx,by,bz)
  %7741 = fmul fast float %7740, %7740
  %7742 = call float @dx.op.unary.f32(i32 6, float %7732)  ; FAbs(value)
  %7743 = fsub fast float 1.000000e+00, %5354
  %7744 = fmul fast float %5336, %5336
  %7745 = fmul fast float %7744, %7743
  %7746 = fadd fast float %7745, %5354
  %7747 = bitcast float %7746 to i32
  %7748 = ashr i32 %7747, 1
  %7749 = add nsw i32 %7748, 532487669
  %7750 = bitcast i32 %7749 to float
  %7751 = fadd fast float %7750, %5336
  %7752 = fmul fast float %5354, %7741
  %7753 = fsub fast float 1.000000e+00, %7741
  %7754 = fadd fast float %7753, %7752
  %7755 = fmul fast float %7742, %7742
  %7756 = fmul fast float %7755, %7743
  %7757 = fadd fast float %7756, %5354
  %7758 = bitcast float %7757 to i32
  %7759 = ashr i32 %7758, 1
  %7760 = add nsw i32 %7759, 532487669
  %7761 = bitcast i32 %7760 to float
  %7762 = fadd fast float %7761, %7742
  %7763 = fmul fast float %7754, %7754
  %7764 = fmul fast float %7763, %7751
  %7765 = fmul fast float %7764, %7762
  %7766 = fdiv fast float 0x3FF0A00000000000, %7765
  %7767 = fmul fast float %7766, %5354
  %7768 = call float @dx.op.unary.f32(i32 6, float %7733)  ; FAbs(value)
  %7769 = fsub fast float 1.000000e+00, %7768
  %7770 = bitcast float %7769 to i32
  %7771 = sitofp i32 %7770 to float
  %7772 = fmul fast float %7771, 5.000000e+00
  %7773 = fadd fast float %7772, 0xC1EFBF8940000000
  %7774 = fptosi float %7773 to i32
  %7775 = bitcast i32 %7774 to float
  %7776 = fsub fast float 1.000000e+00, %5282
  %7777 = fsub fast float 1.000000e+00, %5283
  %7778 = fsub fast float 1.000000e+00, %5334
  %7779 = fmul fast float %7775, %7776
  %7780 = fmul fast float %7775, %7777
  %7781 = fmul fast float %7775, %7778
  %7782 = fadd fast float %7779, %5282
  %7783 = fadd fast float %7780, %5283
  %7784 = fadd fast float %7781, %5334
  br i1 %5608, label %7785, label %7808

; <label>:7785                                    ; preds = %7705
  %7786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4100, float %7768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7787 = extractvalue %dx.types.ResRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.ResRet.f32 %7786, 1
  %7789 = extractvalue %dx.types.ResRet.f32 %7786, 2
  %7790 = fadd fast float %7787, -5.000000e-01
  %7791 = fadd fast float %7788, -5.000000e-01
  %7792 = fadd fast float %7789, -5.000000e-01
  %7793 = fmul fast float %5282, 4.000000e+00
  %7794 = fmul fast float %7793, %7776
  %7795 = fmul fast float %7794, %7790
  %7796 = fmul fast float %5283, 4.000000e+00
  %7797 = fmul fast float %7796, %7777
  %7798 = fmul fast float %7797, %7791
  %7799 = fmul fast float %5334, 4.000000e+00
  %7800 = fmul fast float %7799, %7778
  %7801 = fmul fast float %7800, %7792
  %7802 = fadd fast float %7795, %7782
  %7803 = fadd fast float %7798, %7783
  %7804 = fadd fast float %7801, %7784
  %7805 = call float @dx.op.unary.f32(i32 7, float %7802)  ; Saturate(value)
  %7806 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7807 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  br label %7808

; <label>:7808                                    ; preds = %7785, %7705
  %7809 = phi float [ %7805, %7785 ], [ %7782, %7705 ]
  %7810 = phi float [ %7806, %7785 ], [ %7783, %7705 ]
  %7811 = phi float [ %7807, %7785 ], [ %7784, %7705 ]
  %7812 = fmul fast float %7732, 9.843750e-01
  %7813 = fadd fast float %7812, 7.812500e-03
  %7814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %7813, float %5598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7815 = extractvalue %dx.types.ResRet.f32 %7814, 2
  %7816 = extractvalue %dx.types.ResRet.f32 %7814, 3
  %7817 = fmul fast float %7815, %5282
  %7818 = fmul fast float %7815, %5283
  %7819 = fmul fast float %7815, %5334
  %7820 = fadd fast float %7817, %7816
  %7821 = fadd fast float %7818, %7816
  %7822 = fadd fast float %7819, %7816
  br i1 %5608, label %7823, label %7846

; <label>:7823                                    ; preds = %7808
  %7824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4100, float %7732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7825 = extractvalue %dx.types.ResRet.f32 %7824, 0
  %7826 = extractvalue %dx.types.ResRet.f32 %7824, 1
  %7827 = extractvalue %dx.types.ResRet.f32 %7824, 2
  %7828 = fadd fast float %7825, -5.000000e-01
  %7829 = fadd fast float %7826, -5.000000e-01
  %7830 = fadd fast float %7827, -5.000000e-01
  %7831 = fmul fast float %5282, 4.000000e+00
  %7832 = fmul fast float %7831, %7776
  %7833 = fmul fast float %7832, %7828
  %7834 = fmul fast float %5283, 4.000000e+00
  %7835 = fmul fast float %7834, %7777
  %7836 = fmul fast float %7835, %7829
  %7837 = fmul fast float %5334, 4.000000e+00
  %7838 = fmul fast float %7837, %7778
  %7839 = fmul fast float %7838, %7830
  %7840 = fadd fast float %7833, %7820
  %7841 = fadd fast float %7836, %7821
  %7842 = fadd fast float %7839, %7822
  %7843 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7844 = call float @dx.op.unary.f32(i32 7, float %7841)  ; Saturate(value)
  %7845 = call float @dx.op.unary.f32(i32 7, float %7842)  ; Saturate(value)
  br label %7846

; <label>:7846                                    ; preds = %7823, %7808
  %7847 = phi float [ %7843, %7823 ], [ %7820, %7808 ]
  %7848 = phi float [ %7844, %7823 ], [ %7821, %7808 ]
  %7849 = phi float [ %7845, %7823 ], [ %7822, %7808 ]
  %7850 = call float @dx.op.binary.f32(i32 35, float %7848, float %7849)  ; FMax(a,b)
  %7851 = call float @dx.op.binary.f32(i32 35, float %7847, float %7850)  ; FMax(a,b)
  %7852 = fsub fast float 1.000000e+00, %7851
  %7853 = fmul fast float %7809, %7767
  %7854 = fmul fast float %7810, %7767
  %7855 = fmul fast float %7811, %7767
  %7856 = fsub fast float 1.000000e+00, %7733
  %7857 = bitcast float %7856 to i32
  %7858 = sitofp i32 %7857 to float
  %7859 = fmul fast float %7858, 5.000000e+00
  %7860 = fadd fast float %7859, 0xC1EFBF8940000000
  %7861 = fptosi float %7860 to i32
  %7862 = bitcast i32 %7861 to float
  %7863 = fmul fast float %7862, %4101
  %7864 = fmul fast float %7852, %7863
  %7865 = fmul fast float %7864, %6150
  %7866 = fmul fast float %7864, %6151
  %7867 = fmul fast float %7864, %6152
  %7868 = fadd fast float %7865, %7853
  %7869 = fadd fast float %7866, %7854
  %7870 = fadd fast float %7867, %7855
  %7871 = fmul fast float %7739, %7721
  %7872 = fmul fast float %7871, %7852
  %7873 = fmul fast float %7739, %7722
  %7874 = fmul fast float %7873, %7852
  %7875 = fmul fast float %7739, %7723
  %7876 = fmul fast float %7875, %7852
  %7877 = fmul fast float %7871, %7868
  %7878 = fmul fast float %7873, %7869
  %7879 = fmul fast float %7875, %7870
  %7880 = fadd fast float %7872, %6134
  %7881 = fmul fast float %7880, %4097
  %7882 = fadd fast float %7874, %6135
  %7883 = fmul fast float %7882, %4097
  %7884 = fadd fast float %7876, %6136
  %7885 = fmul fast float %7884, %4097
  %7886 = fadd fast float %7877, %6177
  %7887 = fmul fast float %7886, %4097
  %7888 = fadd fast float %7878, %6180
  %7889 = fmul fast float %7888, %4097
  %7890 = fadd fast float %7879, %6183
  %7891 = fmul fast float %7890, %4097
  br label %7892

; <label>:7892                                    ; preds = %7846, %7639, %6130
  %7893 = phi float [ %6178, %6130 ], [ %6178, %7639 ], [ %7887, %7846 ]
  %7894 = phi float [ %6181, %6130 ], [ %6181, %7639 ], [ %7889, %7846 ]
  %7895 = phi float [ %6184, %6130 ], [ %6184, %7639 ], [ %7891, %7846 ]
  %7896 = phi float [ %6173, %6130 ], [ %6173, %7639 ], [ %7881, %7846 ]
  %7897 = phi float [ %6174, %6130 ], [ %6174, %7639 ], [ %7883, %7846 ]
  %7898 = phi float [ %6175, %6130 ], [ %6175, %7639 ], [ %7885, %7846 ]
  %7899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7900 = extractvalue %dx.types.CBufRet.i32 %7899, 0
  %7901 = icmp eq i32 %7900, 0
  br i1 %7901, label %8565, label %7902

; <label>:7902                                    ; preds = %7892
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 3
  %7906 = fmul fast float %7904, %125
  %7907 = fmul fast float %7905, %126
  %7908 = fptoui float %7906 to i32
  %7909 = fptoui float %7907 to i32
  %7910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.CBufRet.f32 %7910, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7910, 3
  %7914 = fadd fast float %112, -4.000000e+00
  %7915 = call float @dx.op.binary.f32(i32 35, float %7914, float 0.000000e+00)  ; FMax(a,b)
  %7916 = fadd fast float %7915, %7911
  %7917 = fmul fast float %7916, %7912
  %7918 = call float @dx.op.unary.f32(i32 23, float %7917)  ; Log(value)
  %7919 = fmul fast float %7918, %7913
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 2
  %7922 = fmul fast float %7919, %7921
  %7923 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.i32 %7924, 1
  %7926 = add i32 %7925, -1
  %7927 = uitofp i32 %7925 to float
  %7928 = fmul fast float %7927, %7923
  %7929 = fptoui float %7928 to i32
  %7930 = call i32 @dx.op.binary.i32(i32 40, i32 %7929, i32 %7926)  ; UMin(a,b)
  %7931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.i32 %7931, 2
  %7933 = extractvalue %dx.types.CBufRet.i32 %7931, 3
  %7934 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7909, i32 %7932, i32 %7908)  ; UMad(a,b,c)
  %7935 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7930, i32 %7933, i32 %7934)  ; UMad(a,b,c)
  %7936 = add nsw i32 %7900, -1
  %7937 = call i32 @dx.op.binary.i32(i32 37, i32 %7936, i32 0)  ; IMax(a,b)
  %7938 = call float @dx.op.binary.f32(i32 35, float %112, float 0.000000e+00)  ; FMax(a,b)
  %7939 = fptoui float %7938 to i32
  %7940 = lshr i32 %7939, 5
  %7941 = call i32 @dx.op.binary.i32(i32 40, i32 %7940, i32 8191)  ; UMin(a,b)
  %7942 = shl i32 %7941, 2
  %7943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7942, i32 undef)  ; BufferLoad(srv,index,wot)
  %7944 = extractvalue %dx.types.ResRet.i32 %7943, 0
  %7945 = lshr i32 %7944, 16
  %7946 = and i32 %7944, 65535
  %7947 = lshr i32 %7944, 21
  %7948 = lshr i32 %7946, 5
  %7949 = call i32 @dx.op.binary.i32(i32 40, i32 %7948, i32 %7937)  ; UMin(a,b)
  %7950 = icmp ugt i32 %7947, %7949
  br i1 %7950, label %8565, label %7951

; <label>:7951                                    ; preds = %7902
  br label %7952

; <label>:7952                                    ; preds = %8555, %7951
  %7953 = phi i32 [ %8562, %8555 ], [ %7947, %7951 ]
  %7954 = phi float [ %8556, %8555 ], [ %7893, %7951 ]
  %7955 = phi float [ %8557, %8555 ], [ %7894, %7951 ]
  %7956 = phi float [ %8558, %8555 ], [ %7895, %7951 ]
  %7957 = phi float [ %8559, %8555 ], [ %7896, %7951 ]
  %7958 = phi float [ %8560, %8555 ], [ %7897, %7951 ]
  %7959 = phi float [ %8561, %8555 ], [ %7898, %7951 ]
  %7960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.i32 %7960, 0
  %7962 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7935, i32 %7961, i32 %7953)  ; UMad(a,b,c)
  %7963 = shl i32 %7962, 2
  %7964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7963, i32 undef)  ; BufferLoad(srv,index,wot)
  %7965 = extractvalue %dx.types.ResRet.i32 %7964, 0
  %7966 = shl i32 %7953, 5
  %7967 = sub nsw i32 %7945, %7966
  %7968 = call i32 @dx.op.binary.i32(i32 37, i32 %7967, i32 0)  ; IMax(a,b)
  %7969 = call i32 @dx.op.binary.i32(i32 38, i32 %7968, i32 31)  ; IMin(a,b)
  %7970 = sub nsw i32 1, %7945
  %7971 = add nsw i32 %7970, %7946
  %7972 = call i32 @dx.op.binary.i32(i32 37, i32 %7971, i32 0)  ; IMax(a,b)
  %7973 = call i32 @dx.op.binary.i32(i32 38, i32 %7972, i32 32)  ; IMin(a,b)
  %7974 = and i32 %7973, 31
  %7975 = shl i32 -1, %7974
  %7976 = xor i32 %7975, -1
  %7977 = and i32 %7969, 31
  %7978 = shl i32 %7976, %7977
  %7979 = icmp eq i32 %7973, 32
  %7980 = select i1 %7979, i32 -1, i32 %7978
  %7981 = and i32 %7980, %7965
  %7982 = icmp eq i32 %7981, 0
  br i1 %7982, label %8555, label %7983

; <label>:7983                                    ; preds = %7952
  br label %7984

; <label>:7984                                    ; preds = %8118, %7983
  %7985 = phi i32 [ %7996, %8118 ], [ %7981, %7983 ]
  %7986 = phi float [ %8119, %8118 ], [ %7954, %7983 ]
  %7987 = phi float [ %8120, %8118 ], [ %7955, %7983 ]
  %7988 = phi float [ %8121, %8118 ], [ %7956, %7983 ]
  %7989 = phi float [ %8122, %8118 ], [ %7957, %7983 ]
  %7990 = phi float [ %8123, %8118 ], [ %7958, %7983 ]
  %7991 = phi float [ %8124, %8118 ], [ %7959, %7983 ]
  %7992 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7985)  ; FirstbitLo(value)
  %7993 = add i32 %7992, %7966
  %7994 = and i32 %7992, 31
  %7995 = shl i32 1, %7994
  %7996 = xor i32 %7995, %7985
  %7997 = mul i32 %7993, 112
  %7998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7997, i32 undef)  ; BufferLoad(srv,index,wot)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.ResRet.f32 %7998, 2
  %8002 = or i32 %7997, 12
  %8003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8002, i32 undef)  ; BufferLoad(srv,index,wot)
  %8004 = extractvalue %dx.types.ResRet.f32 %8003, 0
  %8005 = add i32 %7997, 16
  %8006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8005, i32 undef)  ; BufferLoad(srv,index,wot)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.ResRet.f32 %8006, 1
  %8009 = extractvalue %dx.types.ResRet.f32 %8006, 2
  %8010 = add i32 %7997, 28
  %8011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8010, i32 undef)  ; BufferLoad(srv,index,wot)
  %8012 = extractvalue %dx.types.ResRet.i32 %8011, 0
  %8013 = add i32 %7997, 44
  %8014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8013, i32 undef)  ; BufferLoad(srv,index,wot)
  %8015 = extractvalue %dx.types.ResRet.f32 %8014, 0
  %8016 = add i32 %7997, 48
  %8017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8016, i32 undef)  ; BufferLoad(srv,index,wot)
  %8018 = extractvalue %dx.types.ResRet.f32 %8017, 0
  %8019 = extractvalue %dx.types.ResRet.f32 %8017, 1
  %8020 = extractvalue %dx.types.ResRet.f32 %8017, 2
  %8021 = extractvalue %dx.types.ResRet.f32 %8017, 3
  %8022 = add i32 %7997, 64
  %8023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8022, i32 undef)  ; BufferLoad(srv,index,wot)
  %8024 = extractvalue %dx.types.ResRet.f32 %8023, 0
  %8025 = extractvalue %dx.types.ResRet.f32 %8023, 1
  %8026 = extractvalue %dx.types.ResRet.f32 %8023, 2
  %8027 = extractvalue %dx.types.ResRet.f32 %8023, 3
  %8028 = add i32 %7997, 80
  %8029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8028, i32 undef)  ; BufferLoad(srv,index,wot)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 1
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 2
  %8032 = add i32 %7997, 92
  %8033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8032, i32 undef)  ; BufferLoad(srv,index,wot)
  %8034 = extractvalue %dx.types.ResRet.i32 %8033, 0
  %8035 = call float @dx.op.dot3.f32(i32 55, float %7999, float %8000, float %8001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = select i1 %280, float %8030, float %7999
  %8037 = select i1 %280, float %8035, float %8000
  %8038 = select i1 %280, float %8031, float %8001
  %8039 = and i32 %8034, 65535
  %8040 = uitofp i32 %8039 to float
  %8041 = lshr i32 %8034, 16
  %8042 = uitofp i32 %8041 to float
  %8043 = and i32 %8012, 65535
  %8044 = and i32 %8012, 50331648
  %8045 = icmp eq i32 %8044, 33554432
  %8046 = fsub fast float %8018, %208
  %8047 = fsub fast float %8019, %209
  %8048 = fsub fast float %8020, %210
  %8049 = call float @dx.op.dot3.f32(i32 55, float %8046, float %8047, float %8048, float %8046, float %8047, float %8048)  ; Dot3(ax,ay,az,bx,by,bz)
  %8050 = call float @dx.op.unary.f32(i32 24, float %8049)  ; Sqrt(value)
  %8051 = fdiv fast float 1.000000e+00, %8050
  %8052 = fmul fast float %8051, %8046
  %8053 = fmul fast float %8051, %8047
  %8054 = fmul fast float %8051, %8048
  %8055 = fadd fast float %8050, %8004
  %8056 = fdiv fast float 1.000000e+00, %8055
  %8057 = fmul float %8015, %8056
  %8058 = fmul float %8057, %8057
  %8059 = call float @dx.op.unary.f32(i32 7, float %8058)  ; Saturate(value)
  br i1 %8045, label %8060, label %8081

; <label>:8060                                    ; preds = %7984
  %8061 = fmul fast float %8026, %8007
  %8062 = fmul fast float %8026, %8008
  %8063 = fmul fast float %8026, %8009
  %8064 = fadd fast float %8046, %8061
  %8065 = fadd fast float %8047, %8062
  %8066 = fadd fast float %8048, %8063
  %8067 = call float @dx.op.dot3.f32(i32 55, float %8064, float %8065, float %8066, float %8064, float %8065, float %8066)  ; Dot3(ax,ay,az,bx,by,bz)
  %8068 = call float @dx.op.unary.f32(i32 25, float %8067)  ; Rsqrt(value)
  %8069 = fmul fast float %8068, %8064
  %8070 = fmul fast float %8068, %8065
  %8071 = fmul fast float %8068, %8066
  %8072 = fsub fast float %208, %8018
  %8073 = fsub fast float %209, %8019
  %8074 = fsub fast float %210, %8020
  %8075 = fsub fast float -0.000000e+00, %8072
  %8076 = fsub fast float -0.000000e+00, %8073
  %8077 = fsub fast float -0.000000e+00, %8074
  %8078 = call float @dx.op.dot3.f32(i32 55, float %8075, float %8076, float %8077, float %8007, float %8008, float %8009)  ; Dot3(ax,ay,az,bx,by,bz)
  %8079 = fcmp fast ogt float %8078, 0.000000e+00
  %8080 = uitofp i1 %8079 to float
  br label %8081

; <label>:8081                                    ; preds = %8060, %7984
  %8082 = phi float [ %8080, %8060 ], [ 1.000000e+00, %7984 ]
  %8083 = phi float [ %8069, %8060 ], [ %8052, %7984 ]
  %8084 = phi float [ %8070, %8060 ], [ %8053, %7984 ]
  %8085 = phi float [ %8071, %8060 ], [ %8054, %7984 ]
  %8086 = call float @dx.op.dot3.f32(i32 55, float %8007, float %8008, float %8009, float %8083, float %8084, float %8085)  ; Dot3(ax,ay,az,bx,by,bz)
  %8087 = fmul fast float %8086, %8086
  %8088 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8089 = fsub fast float 1.000000e+00, %8088
  %8090 = fmul fast float %8089, 5.000000e-01
  %8091 = fcmp fast ogt float %8086, 0.000000e+00
  %8092 = fsub fast float 1.000000e+00, %8090
  %8093 = select i1 %8091, float %8090, float %8092
  %8094 = fmul fast float %8093, %8042
  %8095 = fadd fast float %8094, %8040
  %8096 = fmul fast float %8095, 0x3EF0001000000000
  %8097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %8096, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8098 = extractvalue %dx.types.ResRet.f32 %8097, 0
  %8099 = fmul fast float %8086, %8024
  %8100 = fadd fast float %8099, %8025
  %8101 = call float @dx.op.unary.f32(i32 7, float %8100)  ; Saturate(value)
  %8102 = select i1 %8045, float 1.000000e+00, float %8101
  %8103 = select i1 %8045, float %8101, float 1.000000e+00
  %8104 = fmul fast float %8050, %8021
  %8105 = fsub fast float 1.000000e+00, %8104
  %8106 = fmul fast float %8105, %8027
  %8107 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8108 = fmul fast float %8107, %8103
  %8109 = fmul fast float %8108, 2.000000e+00
  %8110 = fsub fast float 3.000000e+00, %8109
  %8111 = fmul fast float %8098, %8082
  %8112 = fmul fast float %8108, %8108
  %8113 = fmul fast float %8112, %8111
  %8114 = fmul fast float %8113, %8110
  %8115 = call float @dx.op.binary.f32(i32 36, float %8114, float %8114)  ; FMin(a,b)
  %8116 = call float @dx.op.binary.f32(i32 36, float %8114, float %8115)  ; FMin(a,b)
  %8117 = fcmp fast ogt float %8116, 0.000000e+00
  br i1 %8117, label %8126, label %8118, !dx.controlflow.hints !138

; <label>:8118                                    ; preds = %8511, %8272, %8081
  %8119 = phi float [ %7986, %8272 ], [ %7986, %8081 ], [ %8551, %8511 ]
  %8120 = phi float [ %7987, %8272 ], [ %7987, %8081 ], [ %8552, %8511 ]
  %8121 = phi float [ %7988, %8272 ], [ %7988, %8081 ], [ %8553, %8511 ]
  %8122 = phi float [ %7989, %8272 ], [ %7989, %8081 ], [ %8545, %8511 ]
  %8123 = phi float [ %7990, %8272 ], [ %7990, %8081 ], [ %8546, %8511 ]
  %8124 = phi float [ %7991, %8272 ], [ %7991, %8081 ], [ %8547, %8511 ]
  %8125 = icmp eq i32 %7985, %7995
  br i1 %8125, label %8554, label %7984

; <label>:8126                                    ; preds = %8081
  %8127 = icmp eq i32 %8043, 255
  br i1 %8127, label %8272, label %8128, !dx.controlflow.hints !139

; <label>:8128                                    ; preds = %8126
  %8129 = mul nuw nsw i32 %8043, 176
  %8130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8129, i32 undef)  ; BufferLoad(srv,index,wot)
  %8131 = extractvalue %dx.types.ResRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.ResRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.ResRet.f32 %8130, 2
  %8134 = extractvalue %dx.types.ResRet.f32 %8130, 3
  %8135 = add nuw nsw i32 %8129, 16
  %8136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8135, i32 undef)  ; BufferLoad(srv,index,wot)
  %8137 = extractvalue %dx.types.ResRet.f32 %8136, 0
  %8138 = extractvalue %dx.types.ResRet.f32 %8136, 1
  %8139 = add nuw nsw i32 %8129, 32
  %8140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8139, i32 undef)  ; BufferLoad(srv,index,wot)
  %8141 = extractvalue %dx.types.ResRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.ResRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.ResRet.f32 %8140, 2
  %8144 = add nuw nsw i32 %8129, 48
  %8145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8144, i32 undef)  ; BufferLoad(srv,index,wot)
  %8146 = extractvalue %dx.types.ResRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.ResRet.f32 %8145, 1
  %8148 = extractvalue %dx.types.ResRet.f32 %8145, 2
  %8149 = extractvalue %dx.types.ResRet.f32 %8145, 3
  %8150 = add nuw nsw i32 %8129, 64
  %8151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8150, i32 undef)  ; BufferLoad(srv,index,wot)
  %8152 = extractvalue %dx.types.ResRet.f32 %8151, 0
  %8153 = extractvalue %dx.types.ResRet.f32 %8151, 1
  %8154 = extractvalue %dx.types.ResRet.f32 %8151, 2
  %8155 = extractvalue %dx.types.ResRet.f32 %8151, 3
  %8156 = add nuw nsw i32 %8129, 80
  %8157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8156, i32 undef)  ; BufferLoad(srv,index,wot)
  %8158 = extractvalue %dx.types.ResRet.f32 %8157, 0
  %8159 = extractvalue %dx.types.ResRet.f32 %8157, 1
  %8160 = extractvalue %dx.types.ResRet.f32 %8157, 2
  %8161 = extractvalue %dx.types.ResRet.f32 %8157, 3
  %8162 = add nuw nsw i32 %8129, 96
  %8163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8162, i32 undef)  ; BufferLoad(srv,index,wot)
  %8164 = extractvalue %dx.types.ResRet.f32 %8163, 0
  %8165 = extractvalue %dx.types.ResRet.f32 %8163, 1
  %8166 = extractvalue %dx.types.ResRet.f32 %8163, 2
  %8167 = extractvalue %dx.types.ResRet.f32 %8163, 3
  %8168 = bitcast float %8138 to i32
  %8169 = fmul fast float %8143, %134
  %8170 = fmul fast float %8143, %136
  %8171 = fmul fast float %8143, %138
  %8172 = fadd fast float %8169, %208
  %8173 = fadd fast float %8170, %209
  %8174 = fadd fast float %8171, %210
  %8175 = fmul fast float %8172, %8146
  %8176 = call float @dx.op.tertiary.f32(i32 46, float %8173, float %8152, float %8175)  ; FMad(a,b,c)
  %8177 = call float @dx.op.tertiary.f32(i32 46, float %8174, float %8158, float %8176)  ; FMad(a,b,c)
  %8178 = fadd fast float %8177, %8164
  %8179 = fmul fast float %8172, %8147
  %8180 = call float @dx.op.tertiary.f32(i32 46, float %8173, float %8153, float %8179)  ; FMad(a,b,c)
  %8181 = call float @dx.op.tertiary.f32(i32 46, float %8174, float %8159, float %8180)  ; FMad(a,b,c)
  %8182 = fadd fast float %8181, %8165
  %8183 = fmul fast float %8172, %8148
  %8184 = call float @dx.op.tertiary.f32(i32 46, float %8173, float %8154, float %8183)  ; FMad(a,b,c)
  %8185 = call float @dx.op.tertiary.f32(i32 46, float %8174, float %8160, float %8184)  ; FMad(a,b,c)
  %8186 = fadd fast float %8185, %8166
  %8187 = fmul fast float %8172, %8149
  %8188 = call float @dx.op.tertiary.f32(i32 46, float %8173, float %8155, float %8187)  ; FMad(a,b,c)
  %8189 = call float @dx.op.tertiary.f32(i32 46, float %8174, float %8161, float %8188)  ; FMad(a,b,c)
  %8190 = fadd fast float %8189, %8167
  %8191 = fdiv fast float %8178, %8190
  %8192 = fdiv fast float %8182, %8190
  %8193 = fdiv fast float %8186, %8190
  %8194 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8193)  ; FMax(a,b)
  %8195 = fmul fast float %291, 0x401921FB60000000
  %8196 = call float @dx.op.unary.f32(i32 13, float %8195)  ; Sin(value)
  %8197 = call float @dx.op.unary.f32(i32 12, float %8195)  ; Cos(value)
  %8198 = fmul fast float %8197, %8142
  %8199 = call float @dx.op.tertiary.f32(i32 46, float %8196, float %8142, float 0.000000e+00)  ; FMad(a,b,c)
  %8200 = fmul fast float %8142, %8196
  %8201 = fsub fast float -0.000000e+00, %8200
  %8202 = call float @dx.op.tertiary.f32(i32 46, float %8197, float %8142, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8203

; <label>:8203                                    ; preds = %8203, %8128
  %8204 = phi float [ 0.000000e+00, %8128 ], [ %8236, %8203 ]
  %8205 = phi float [ 0.000000e+00, %8128 ], [ %8238, %8203 ]
  %8206 = phi i32 [ 0, %8128 ], [ %8239, %8203 ]
  %8207 = mul i32 %8206, 2
  %8208 = add i32 0, %8207
  %8209 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8208
  %8210 = load float, float* %8209, align 4
  %8211 = mul i32 %8206, 2
  %8212 = add i32 1, %8211
  %8213 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8212
  %8214 = load float, float* %8213, align 4
  %8215 = fmul fast float %8198, %8210
  %8216 = call float @dx.op.tertiary.f32(i32 46, float %8214, float %8201, float %8215)  ; FMad(a,b,c)
  %8217 = fmul fast float %8210, %8199
  %8218 = call float @dx.op.tertiary.f32(i32 46, float %8214, float %8202, float %8217)  ; FMad(a,b,c)
  %8219 = fadd fast float %8216, %8191
  %8220 = fadd fast float %8218, %8192
  %8221 = fmul fast float %8219, %8137
  %8222 = fmul fast float %8220, %8137
  %8223 = call float @dx.op.binary.f32(i32 35, float %8221, float %8133)  ; FMax(a,b)
  %8224 = call float @dx.op.binary.f32(i32 35, float %8222, float %8133)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 36, float %8223, float %8134)  ; FMin(a,b)
  %8226 = call float @dx.op.binary.f32(i32 36, float %8224, float %8134)  ; FMin(a,b)
  %8227 = fadd fast float %8225, %8131
  %8228 = fadd fast float %8226, %8132
  %8229 = uitofp i32 %8168 to float
  %8230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %57, float %8227, float %8228, float %8229, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8231 = extractvalue %dx.types.ResRet.f32 %8230, 0
  %8232 = fsub fast float %8231, %8194
  %8233 = fsub fast float %8232, %8141
  %8234 = fcmp fast ogt float %8233, 0.000000e+00
  %8235 = select i1 %8234, float 1.000000e+00, float 0.000000e+00
  %8236 = fadd fast float %8235, %8204
  %8237 = select i1 %8234, float %8233, float 0.000000e+00
  %8238 = fadd fast float %8237, %8205
  %8239 = add nuw nsw i32 %8206, 1
  %8240 = icmp eq i32 %8239, 8
  br i1 %8240, label %8241, label %8203

; <label>:8241                                    ; preds = %8203
  %8242 = fdiv fast float 1.000000e+00, %8236
  %8243 = fmul fast float %8242, %8238
  %8244 = fdiv fast float 1.000000e+00, %8194
  %8245 = fmul fast float %8243, %8244
  %8246 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8247 = call float @dx.op.binary.f32(i32 35, float %8246, float 0.000000e+00)  ; FMax(a,b)
  %8248 = fmul fast float %8236, 1.250000e-01
  %8249 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8250 = fmul fast float %8249, 2.000000e+00
  %8251 = fadd fast float %8250, -1.000000e+00
  %8252 = fcmp fast ogt float %8251, 0.000000e+00
  %8253 = fcmp fast olt float %8251, 0.000000e+00
  %8254 = zext i1 %8252 to i32
  %8255 = zext i1 %8253 to i32
  %8256 = sub nsw i32 %8254, %8255
  %8257 = sitofp i32 %8256 to float
  %8258 = fmul fast float %8257, %8251
  %8259 = fsub fast float 1.000000e+00, %8258
  %8260 = fmul fast float %8259, %8259
  %8261 = fmul fast float %8260, %8259
  %8262 = fsub fast float %8259, %8261
  %8263 = fmul fast float %8262, %8247
  %8264 = fsub fast float 1.000000e+00, %8261
  %8265 = fsub fast float %8264, %8263
  %8266 = fmul fast float %8257, 5.000000e-01
  %8267 = fmul fast float %8266, %8265
  %8268 = fsub fast float -5.000000e-01, %8267
  %8269 = fmul fast float %8268, %8102
  %8270 = fadd fast float %8269, 1.000000e+00
  %8271 = fmul fast float %8270, %8114
  br label %8272

; <label>:8272                                    ; preds = %8241, %8126
  %8273 = phi float [ %8271, %8241 ], [ %8114, %8126 ]
  %8274 = call float @dx.op.binary.f32(i32 36, float %8273, float %8273)  ; FMin(a,b)
  %8275 = call float @dx.op.binary.f32(i32 36, float %8273, float %8274)  ; FMin(a,b)
  %8276 = fcmp fast ogt float %8275, 0.000000e+00
  br i1 %8276, label %8277, label %8118, !dx.controlflow.hints !140

; <label>:8277                                    ; preds = %8272
  %8278 = fmul fast float %8273, %8036
  %8279 = fmul fast float %8273, %8037
  %8280 = fmul fast float %8273, %8038
  %8281 = fsub fast float %8020, %4502
  %8282 = fcmp fast ogt float %8281, 0.000000e+00
  %8283 = fsub fast float %210, %4502
  %8284 = fcmp fast ogt float %8283, 0.000000e+00
  %8285 = xor i1 %8284, %8282
  %8286 = fsub fast float %4502, %8020
  %8287 = fmul fast float %8286, 2.000000e+00
  %8288 = fadd fast float %8287, %8020
  %8289 = select i1 %8285, float %8020, float %8288
  %8290 = fsub fast float %8289, %210
  %8291 = call float @dx.op.dot3.f32(i32 55, float %8046, float %8047, float %8290, float %8046, float %8047, float %8290)  ; Dot3(ax,ay,az,bx,by,bz)
  %8292 = call float @dx.op.unary.f32(i32 25, float %8291)  ; Rsqrt(value)
  %8293 = fmul fast float %8292, %8046
  %8294 = fmul fast float %8292, %8047
  %8295 = fmul fast float %8292, %8290
  %8296 = fsub fast float %4502, %210
  %8297 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8296)  ; Dot3(ax,ay,az,bx,by,bz)
  %8298 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8293, float %8294, float %8295)  ; Dot3(ax,ay,az,bx,by,bz)
  %8299 = fdiv fast float 1.000000e+00, %8298
  %8300 = fmul fast float %8299, %8297
  %8301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8283, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8302 = fcmp fast ogt float %8301, 0.000000e+00
  %8303 = fcmp fast olt float %8301, 0.000000e+00
  %8304 = zext i1 %8302 to i32
  %8305 = zext i1 %8303 to i32
  %8306 = sub nsw i32 %8304, %8305
  %8307 = sitofp i32 %8306 to float
  %8308 = fsub fast float %8289, %4502
  %8309 = call float @dx.op.dot3.f32(i32 55, float %8046, float %8047, float %8308, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8310 = fcmp fast ogt float %8309, 0.000000e+00
  %8311 = fcmp fast olt float %8309, 0.000000e+00
  %8312 = zext i1 %8310 to i32
  %8313 = zext i1 %8311 to i32
  %8314 = sub nsw i32 %8312, %8313
  %8315 = sitofp i32 %8314 to float
  %8316 = fcmp fast une float %8307, %8315
  br i1 %8316, label %8317, label %8327

; <label>:8317                                    ; preds = %8277
  %8318 = fmul fast float %8300, %8295
  %8319 = fmul fast float %8300, %8294
  %8320 = fmul fast float %8300, %8293
  %8321 = fmul fast float %8320, %8320
  %8322 = fmul fast float %8319, %8319
  %8323 = fadd fast float %8321, %8322
  %8324 = fmul fast float %8318, %8318
  %8325 = fadd fast float %8323, %8324
  %8326 = call float @dx.op.unary.f32(i32 24, float %8325)  ; Sqrt(value)
  br label %8339

; <label>:8327                                    ; preds = %8277
  %8328 = icmp slt i32 %8306, 0
  br i1 %8328, label %8329, label %8339

; <label>:8329                                    ; preds = %8327
  %8330 = fsub fast float %208, %8018
  %8331 = fsub fast float %209, %8019
  %8332 = fsub fast float %210, %8289
  %8333 = fmul fast float %8330, %8330
  %8334 = fmul fast float %8331, %8331
  %8335 = fadd fast float %8333, %8334
  %8336 = fmul fast float %8332, %8332
  %8337 = fadd fast float %8335, %8336
  %8338 = call float @dx.op.unary.f32(i32 24, float %8337)  ; Sqrt(value)
  br label %8339

; <label>:8339                                    ; preds = %8329, %8327, %8317
  %8340 = phi float [ %8326, %8317 ], [ %8338, %8329 ], [ 0.000000e+00, %8327 ]
  %8341 = and i1 %8284, %8282
  %8342 = fsub fast float -0.000000e+00, %8340
  %8343 = select i1 %8341, float -0.000000e+00, float %8342
  %8344 = fmul fast float %4503, 0x3FF7154760000000
  %8345 = fmul fast float %8344, %8343
  %8346 = fmul fast float %4504, 0x3FF7154760000000
  %8347 = fmul fast float %8346, %8343
  %8348 = fmul fast float %4505, 0x3FF7154760000000
  %8349 = fmul fast float %8348, %8343
  %8350 = call float @dx.op.unary.f32(i32 21, float %8345)  ; Exp(value)
  %8351 = call float @dx.op.unary.f32(i32 21, float %8347)  ; Exp(value)
  %8352 = call float @dx.op.unary.f32(i32 21, float %8349)  ; Exp(value)
  %8353 = call float @dx.op.unary.f32(i32 7, float %8350)  ; Saturate(value)
  %8354 = call float @dx.op.unary.f32(i32 7, float %8351)  ; Saturate(value)
  %8355 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8356 = fmul fast float %8278, %8353
  %8357 = fmul fast float %8279, %8354
  %8358 = fmul fast float %8280, %8355
  %8359 = fsub fast float %8052, %5328
  %8360 = fsub fast float %8053, %5329
  %8361 = fsub fast float %8054, %5330
  %8362 = call float @dx.op.dot3.f32(i32 55, float %8359, float %8360, float %8361, float %8359, float %8360, float %8361)  ; Dot3(ax,ay,az,bx,by,bz)
  %8363 = call float @dx.op.unary.f32(i32 25, float %8362)  ; Rsqrt(value)
  %8364 = fmul fast float %8363, %8359
  %8365 = fmul fast float %8363, %8360
  %8366 = fmul fast float %8363, %8361
  %8367 = call float @dx.op.dot3.f32(i32 55, float %8052, float %8053, float %8054, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %8368 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5333, float %8364, float %8365, float %8366)  ; Dot3(ax,ay,az,bx,by,bz)
  %8369 = call float @dx.op.unary.f32(i32 7, float %8367)  ; Saturate(value)
  %8370 = fmul fast float %8369, %8059
  %8371 = bitcast i32 %5360 to float
  %8372 = fmul fast float %8369, %8369
  %8373 = fmul fast float %8372, %8371
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fmul fast float %8370, %8374
  %8376 = bitcast float %8049 to i32
  %8377 = ashr i32 %8376, 1
  %8378 = sub nsw i32 1597463007, %8377
  %8379 = bitcast i32 %8378 to float
  %8380 = fmul fast float %8379, %8046
  %8381 = fmul fast float %8379, %8047
  %8382 = fmul fast float %8379, %8048
  %8383 = fsub fast float %8380, %5328
  %8384 = fsub fast float %8381, %5329
  %8385 = fsub fast float %8382, %5330
  %8386 = call float @dx.op.dot3.f32(i32 55, float %8383, float %8384, float %8385, float %8383, float %8384, float %8385)  ; Dot3(ax,ay,az,bx,by,bz)
  %8387 = call float @dx.op.unary.f32(i32 25, float %8386)  ; Rsqrt(value)
  %8388 = fmul fast float %8383, %8387
  %8389 = fmul fast float %8384, %8387
  %8390 = fmul fast float %8385, %8387
  %8391 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %8388, float %8389, float %8390)  ; Dot3(ax,ay,az,bx,by,bz)
  %8392 = fmul fast float %8391, %8391
  %8393 = call float @dx.op.unary.f32(i32 6, float %8367)  ; FAbs(value)
  %8394 = fsub fast float 1.000000e+00, %5354
  %8395 = fmul fast float %5336, %5336
  %8396 = fmul fast float %8395, %8394
  %8397 = fadd fast float %8396, %5354
  %8398 = bitcast float %8397 to i32
  %8399 = ashr i32 %8398, 1
  %8400 = add nsw i32 %8399, 532487669
  %8401 = bitcast i32 %8400 to float
  %8402 = fadd fast float %8401, %5336
  %8403 = fmul fast float %5354, %8392
  %8404 = fsub fast float 1.000000e+00, %8392
  %8405 = fadd fast float %8404, %8403
  %8406 = fmul fast float %8393, %8393
  %8407 = fmul fast float %8406, %8394
  %8408 = fadd fast float %8407, %5354
  %8409 = bitcast float %8408 to i32
  %8410 = ashr i32 %8409, 1
  %8411 = add nsw i32 %8410, 532487669
  %8412 = bitcast i32 %8411 to float
  %8413 = fadd fast float %8412, %8393
  %8414 = fmul fast float %8405, %8405
  %8415 = fmul fast float %8414, %8402
  %8416 = fmul fast float %8415, %8413
  %8417 = fdiv fast float 1.000000e+00, %8416
  %8418 = bitcast float %5354 to i32
  %8419 = sitofp i32 %8418 to float
  %8420 = fmul fast float %8419, 0x3FE7F73180000000
  %8421 = fadd fast float %8420, 0x41AFE27C40000000
  %8422 = fptosi float %8421 to i32
  %8423 = bitcast i32 %8422 to float
  %8424 = fmul fast float %8015, 0x3FD80E9D60000000
  %8425 = fmul fast float %8424, %8379
  %8426 = fadd fast float %8423, %8425
  %8427 = bitcast float %8426 to i32
  %8428 = sub nsw i32 2129859010, %8427
  %8429 = bitcast i32 %8428 to float
  %8430 = fmul fast float %5354, %8417
  %8431 = fmul fast float %8430, %8423
  %8432 = fmul fast float %8431, %8429
  %8433 = call float @dx.op.unary.f32(i32 6, float %8368)  ; FAbs(value)
  %8434 = fsub fast float 1.000000e+00, %8433
  %8435 = bitcast float %8434 to i32
  %8436 = sitofp i32 %8435 to float
  %8437 = fmul fast float %8436, 5.000000e+00
  %8438 = fadd fast float %8437, 0xC1EFBF8940000000
  %8439 = fptosi float %8438 to i32
  %8440 = bitcast i32 %8439 to float
  %8441 = fsub fast float 1.000000e+00, %5282
  %8442 = fsub fast float 1.000000e+00, %5283
  %8443 = fsub fast float 1.000000e+00, %5334
  %8444 = fmul fast float %8440, %8441
  %8445 = fmul fast float %8440, %8442
  %8446 = fmul fast float %8440, %8443
  %8447 = fadd fast float %8444, %5282
  %8448 = fadd fast float %8445, %5283
  %8449 = fadd fast float %8446, %5334
  br i1 %5608, label %8450, label %8473

; <label>:8450                                    ; preds = %8339
  %8451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4100, float %8433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8452 = extractvalue %dx.types.ResRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.ResRet.f32 %8451, 1
  %8454 = extractvalue %dx.types.ResRet.f32 %8451, 2
  %8455 = fadd fast float %8452, -5.000000e-01
  %8456 = fadd fast float %8453, -5.000000e-01
  %8457 = fadd fast float %8454, -5.000000e-01
  %8458 = fmul fast float %5282, 4.000000e+00
  %8459 = fmul fast float %8458, %8441
  %8460 = fmul fast float %8459, %8455
  %8461 = fmul fast float %5283, 4.000000e+00
  %8462 = fmul fast float %8461, %8442
  %8463 = fmul fast float %8462, %8456
  %8464 = fmul fast float %5334, 4.000000e+00
  %8465 = fmul fast float %8464, %8443
  %8466 = fmul fast float %8465, %8457
  %8467 = fadd fast float %8460, %8447
  %8468 = fadd fast float %8463, %8448
  %8469 = fadd fast float %8466, %8449
  %8470 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  %8471 = call float @dx.op.unary.f32(i32 7, float %8468)  ; Saturate(value)
  %8472 = call float @dx.op.unary.f32(i32 7, float %8469)  ; Saturate(value)
  br label %8473

; <label>:8473                                    ; preds = %8450, %8339
  %8474 = phi float [ %8470, %8450 ], [ %8447, %8339 ]
  %8475 = phi float [ %8471, %8450 ], [ %8448, %8339 ]
  %8476 = phi float [ %8472, %8450 ], [ %8449, %8339 ]
  %8477 = fmul fast float %8367, 9.843750e-01
  %8478 = fadd fast float %8477, 7.812500e-03
  %8479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8478, float %5598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8480 = extractvalue %dx.types.ResRet.f32 %8479, 2
  %8481 = extractvalue %dx.types.ResRet.f32 %8479, 3
  %8482 = fmul fast float %8480, %5282
  %8483 = fmul fast float %8480, %5283
  %8484 = fmul fast float %8480, %5334
  %8485 = fadd fast float %8482, %8481
  %8486 = fadd fast float %8483, %8481
  %8487 = fadd fast float %8484, %8481
  br i1 %5608, label %8488, label %8511

; <label>:8488                                    ; preds = %8473
  %8489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4100, float %8367, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8490 = extractvalue %dx.types.ResRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.ResRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.ResRet.f32 %8489, 2
  %8493 = fadd fast float %8490, -5.000000e-01
  %8494 = fadd fast float %8491, -5.000000e-01
  %8495 = fadd fast float %8492, -5.000000e-01
  %8496 = fmul fast float %5282, 4.000000e+00
  %8497 = fmul fast float %8496, %8441
  %8498 = fmul fast float %8497, %8493
  %8499 = fmul fast float %5283, 4.000000e+00
  %8500 = fmul fast float %8499, %8442
  %8501 = fmul fast float %8500, %8494
  %8502 = fmul fast float %5334, 4.000000e+00
  %8503 = fmul fast float %8502, %8443
  %8504 = fmul fast float %8503, %8495
  %8505 = fadd fast float %8498, %8485
  %8506 = fadd fast float %8501, %8486
  %8507 = fadd fast float %8504, %8487
  %8508 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8509 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8510 = call float @dx.op.unary.f32(i32 7, float %8507)  ; Saturate(value)
  br label %8511

; <label>:8511                                    ; preds = %8488, %8473
  %8512 = phi float [ %8508, %8488 ], [ %8485, %8473 ]
  %8513 = phi float [ %8509, %8488 ], [ %8486, %8473 ]
  %8514 = phi float [ %8510, %8488 ], [ %8487, %8473 ]
  %8515 = call float @dx.op.binary.f32(i32 35, float %8513, float %8514)  ; FMax(a,b)
  %8516 = call float @dx.op.binary.f32(i32 35, float %8512, float %8515)  ; FMax(a,b)
  %8517 = fsub fast float 1.000000e+00, %8516
  %8518 = fmul fast float %8474, %8432
  %8519 = fmul fast float %8475, %8432
  %8520 = fmul fast float %8476, %8432
  %8521 = fsub fast float 1.000000e+00, %8368
  %8522 = bitcast float %8521 to i32
  %8523 = sitofp i32 %8522 to float
  %8524 = fmul fast float %8523, 5.000000e+00
  %8525 = fadd fast float %8524, 0xC1EFBF8940000000
  %8526 = fptosi float %8525 to i32
  %8527 = bitcast i32 %8526 to float
  %8528 = fmul fast float %8527, %4101
  %8529 = fmul fast float %8517, %8528
  %8530 = fmul fast float %8529, %6150
  %8531 = fmul fast float %8529, %6151
  %8532 = fmul fast float %8529, %6152
  %8533 = fadd fast float %8530, %8518
  %8534 = fadd fast float %8531, %8519
  %8535 = fadd fast float %8532, %8520
  %8536 = fmul fast float %8356, %4097
  %8537 = fmul fast float %8536, %8375
  %8538 = fmul fast float %8537, %8517
  %8539 = fmul fast float %8357, %4097
  %8540 = fmul fast float %8539, %8375
  %8541 = fmul fast float %8540, %8517
  %8542 = fmul fast float %8358, %4097
  %8543 = fmul fast float %8542, %8375
  %8544 = fmul fast float %8543, %8517
  %8545 = fadd fast float %8538, %7989
  %8546 = fadd fast float %8541, %7990
  %8547 = fadd fast float %8544, %7991
  %8548 = fmul fast float %8537, %8533
  %8549 = fmul fast float %8540, %8534
  %8550 = fmul fast float %8543, %8535
  %8551 = fadd fast float %8548, %7986
  %8552 = fadd fast float %8549, %7987
  %8553 = fadd fast float %8550, %7988
  br label %8118

; <label>:8554                                    ; preds = %8118
  br label %8555

; <label>:8555                                    ; preds = %8554, %7952
  %8556 = phi float [ %7954, %7952 ], [ %8119, %8554 ]
  %8557 = phi float [ %7955, %7952 ], [ %8120, %8554 ]
  %8558 = phi float [ %7956, %7952 ], [ %8121, %8554 ]
  %8559 = phi float [ %7957, %7952 ], [ %8122, %8554 ]
  %8560 = phi float [ %7958, %7952 ], [ %8123, %8554 ]
  %8561 = phi float [ %7959, %7952 ], [ %8124, %8554 ]
  %8562 = add i32 %7953, 1
  %8563 = icmp ugt i32 %8562, %7949
  br i1 %8563, label %8564, label %7952

; <label>:8564                                    ; preds = %8555
  br label %8565

; <label>:8565                                    ; preds = %8564, %7902, %7892
  %8566 = phi float [ %7893, %7892 ], [ %7893, %7902 ], [ %8556, %8564 ]
  %8567 = phi float [ %7894, %7892 ], [ %7894, %7902 ], [ %8557, %8564 ]
  %8568 = phi float [ %7895, %7892 ], [ %7895, %7902 ], [ %8558, %8564 ]
  %8569 = phi float [ %7896, %7892 ], [ %7896, %7902 ], [ %8559, %8564 ]
  %8570 = phi float [ %7897, %7892 ], [ %7897, %7902 ], [ %8560, %8564 ]
  %8571 = phi float [ %7898, %7892 ], [ %7898, %7902 ], [ %8561, %8564 ]
  %8572 = fmul fast float %4097, %4097
  %8573 = fsub fast float 1.000000e+00, %8572
  %8574 = call float @dx.op.dot3.f32(i32 55, float %8573, float %8573, float %8573, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8575 = fsub fast float 1.000000e+00, %8574
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 0
  %8578 = fmul fast float %8577, %6156
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 3
  %8581 = fsub fast float 1.000000e+00, %4105
  %8582 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8583 = fadd fast float %8571, %4103
  %8584 = fmul fast float %8583, %4105
  %8585 = fmul fast float %8582, %8580
  %8586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8587 = extractvalue %dx.types.CBufRet.f32 %8586, 3
  %8588 = fmul fast float %8569, %5288
  %8589 = fmul fast float %8570, %5289
  %8590 = fmul fast float %8571, %5290
  %8591 = fcmp fast ogt float %112, %243
  %8592 = and i1 %8591, %4508
  %8593 = or i1 %4514, %8592
  %8594 = icmp eq i32 %4507, 2
  %8595 = fcmp fast ole float %112, %243
  %8596 = and i1 %8595, %8594
  %8597 = or i1 %8596, %8593
  br i1 %8592, label %8598, label %8855

; <label>:8598                                    ; preds = %8565
  %8599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8600 = extractvalue %dx.types.CBufRet.f32 %8599, 2
  %8601 = extractvalue %dx.types.CBufRet.f32 %8599, 3
  %8602 = fmul fast float %8600, %125
  %8603 = fmul fast float %8601, %126
  %8604 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8605 = call float @dx.op.unary.f32(i32 7, float %8603)  ; Saturate(value)
  %8606 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8604, float %8605, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8607 = extractvalue %dx.types.ResRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.ResRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.ResRet.f32 %8606, 2
  %8610 = extractvalue %dx.types.ResRet.f32 %8606, 3
  %8611 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8604, float %8605, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8612 = extractvalue %dx.types.ResRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.ResRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.ResRet.f32 %8611, 2
  %8615 = extractvalue %dx.types.ResRet.f32 %8611, 3
  %8616 = call float @dx.op.binary.f32(i32 35, float %8608, float %8609)  ; FMax(a,b)
  %8617 = call float @dx.op.binary.f32(i32 35, float %8607, float %8616)  ; FMax(a,b)
  %8618 = call float @dx.op.binary.f32(i32 35, float %8617, float %8610)  ; FMax(a,b)
  %8619 = call float @dx.op.binary.f32(i32 36, float %8613, float %8614)  ; FMin(a,b)
  %8620 = call float @dx.op.binary.f32(i32 36, float %8612, float %8619)  ; FMin(a,b)
  %8621 = call float @dx.op.binary.f32(i32 36, float %8620, float %8615)  ; FMin(a,b)
  %8622 = fmul fast float %8618, 2.550000e+02
  %8623 = fadd fast float %8622, 0x3F70101020000000
  %8624 = fptoui float %8623 to i32
  %8625 = fmul fast float %8621, 2.550000e+02
  %8626 = fadd fast float %8625, 0x3F70101020000000
  %8627 = fptoui float %8626 to i32
  %8628 = icmp ult i32 %8624, %8627
  br i1 %8628, label %8629, label %8797

; <label>:8629                                    ; preds = %8598
  %8630 = fcmp fast ogt float %111, 9.843750e-01
  %8631 = fadd fast float %112, -4.000000e+00
  %8632 = select i1 %8630, float -4.000000e+00, float %8631
  %8633 = call float @dx.op.binary.f32(i32 35, float %8632, float 0.000000e+00)  ; FMax(a,b)
  %8634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8635 = extractvalue %dx.types.CBufRet.f32 %8634, 0
  %8636 = fadd fast float %8635, %8633
  %8637 = extractvalue %dx.types.CBufRet.f32 %8634, 2
  %8638 = fmul fast float %8636, %8637
  %8639 = call float @dx.op.unary.f32(i32 23, float %8638)  ; Log(value)
  %8640 = extractvalue %dx.types.CBufRet.f32 %8634, 3
  %8641 = fmul fast float %8640, %8639
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8644 = fmul fast float %8641, %8643
  %8645 = call float @dx.op.unary.f32(i32 7, float %8644)  ; Saturate(value)
  %8646 = uitofp i32 %8624 to float
  %8647 = uitofp i32 %8627 to float
  %8648 = fadd fast float %8646, 5.000000e-01
  %8649 = fadd fast float %8647, 5.000000e-01
  %8650 = fmul fast float %8643, %8648
  %8651 = fmul fast float %8643, %8649
  %8652 = fadd fast float %8650, 0x3F0FFB4800000000
  %8653 = fadd fast float %8651, 0xBF0FFB4800000000
  %8654 = call float @dx.op.binary.f32(i32 35, float %8645, float %8652)  ; FMax(a,b)
  %8655 = call float @dx.op.binary.f32(i32 36, float %8654, float %8653)  ; FMin(a,b)
  %8656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8657 = extractvalue %dx.types.CBufRet.f32 %8656, 1
  %8658 = extractvalue %dx.types.CBufRet.f32 %8656, 2
  %8659 = extractvalue %dx.types.CBufRet.f32 %8656, 0
  %8660 = fmul fast float %8657, %8655
  %8661 = fadd fast float %8659, %8660
  %8662 = fadd fast float %8659, %8658
  %8663 = fsub fast float %8657, %8658
  %8664 = fadd fast float %8663, %8659
  %8665 = call float @dx.op.binary.f32(i32 35, float %8661, float %8662)  ; FMax(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8665, float %8664)  ; FMin(a,b)
  %8667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %8604, float %8605, float %8666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8668 = extractvalue %dx.types.ResRet.f32 %8667, 0
  %8669 = extractvalue %dx.types.ResRet.f32 %8667, 1
  %8670 = extractvalue %dx.types.ResRet.f32 %8667, 2
  %8671 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.i32 %8671, 0
  %8673 = extractvalue %dx.types.CBufRet.i32 %8671, 1
  %8674 = uitofp i32 %8672 to float
  %8675 = uitofp i32 %8673 to float
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.CBufRet.f32 %8676, 1
  %8679 = fmul fast float %8674, %8604
  %8680 = fmul fast float %8675, %8605
  %8681 = fadd fast float %8679, -5.000000e-01
  %8682 = fadd fast float %8680, -5.000000e-01
  %8683 = call float @dx.op.unary.f32(i32 22, float %8681)  ; Frc(value)
  %8684 = call float @dx.op.unary.f32(i32 22, float %8682)  ; Frc(value)
  %8685 = fmul fast float %8683, %8683
  %8686 = fmul fast float %8685, %8683
  %8687 = fsub fast float 3.000000e+00, %8683
  %8688 = fmul fast float %8685, %8687
  %8689 = fmul fast float %8683, 3.000000e+00
  %8690 = fmul fast float %8686, 3.000000e+00
  %8691 = fmul fast float %8685, 6.000000e+00
  %8692 = fsub fast float %8690, %8691
  %8693 = fadd fast float %8692, 4.000000e+00
  %8694 = fmul fast float %8693, 0x3FC5555560000000
  %8695 = fmul fast float %8686, -3.000000e+00
  %8696 = fadd fast float %8685, %8683
  %8697 = fmul fast float %8696, 3.000000e+00
  %8698 = fadd fast float %8695, 1.000000e+00
  %8699 = fadd fast float %8698, %8697
  %8700 = fmul fast float %8686, 0x3FC5555560000000
  %8701 = fmul fast float %8684, %8684
  %8702 = fmul fast float %8701, %8684
  %8703 = fsub fast float 3.000000e+00, %8684
  %8704 = fmul fast float %8701, %8703
  %8705 = fmul fast float %8684, 3.000000e+00
  %8706 = fmul fast float %8702, 3.000000e+00
  %8707 = fmul fast float %8701, 6.000000e+00
  %8708 = fsub fast float %8706, %8707
  %8709 = fadd fast float %8708, 4.000000e+00
  %8710 = fmul fast float %8709, 0x3FC5555560000000
  %8711 = fmul fast float %8702, -3.000000e+00
  %8712 = fadd fast float %8701, %8684
  %8713 = fmul fast float %8712, 3.000000e+00
  %8714 = fadd fast float %8711, 1.000000e+00
  %8715 = fadd fast float %8714, %8713
  %8716 = fmul fast float %8702, 0x3FC5555560000000
  %8717 = fadd fast float %8683, 1.000000e+00
  %8718 = fsub fast float 1.000000e+00, %8689
  %8719 = fadd fast float %8718, %8688
  %8720 = fadd fast float %8719, %8693
  %8721 = fmul fast float %8720, 0x3FC5555560000000
  %8722 = fdiv fast float %8694, %8721
  %8723 = fsub fast float %8717, %8722
  %8724 = fsub fast float 1.000000e+00, %8683
  %8725 = fadd fast float %8699, %8686
  %8726 = fmul fast float %8725, 0x3FC5555560000000
  %8727 = fdiv fast float %8700, %8726
  %8728 = fadd fast float %8724, %8727
  %8729 = fadd fast float %8684, 1.000000e+00
  %8730 = fsub fast float 1.000000e+00, %8705
  %8731 = fadd fast float %8730, %8704
  %8732 = fadd fast float %8731, %8709
  %8733 = fmul fast float %8732, 0x3FC5555560000000
  %8734 = fdiv fast float %8710, %8733
  %8735 = fsub fast float %8729, %8734
  %8736 = fsub fast float 1.000000e+00, %8684
  %8737 = fadd fast float %8715, %8702
  %8738 = fmul fast float %8737, 0x3FC5555560000000
  %8739 = fdiv fast float %8716, %8738
  %8740 = fadd fast float %8739, %8736
  %8741 = fmul fast float %8723, %8677
  %8742 = fsub fast float %8604, %8741
  %8743 = fmul fast float %8728, %8677
  %8744 = fadd fast float %8743, %8604
  %8745 = fmul fast float %8740, %8678
  %8746 = fadd fast float %8745, %8605
  %8747 = fmul fast float %8735, %8678
  %8748 = fsub fast float %8605, %8747
  %8749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8742, float %8748, float %8666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8750 = extractvalue %dx.types.ResRet.f32 %8749, 0
  %8751 = extractvalue %dx.types.ResRet.f32 %8749, 1
  %8752 = extractvalue %dx.types.ResRet.f32 %8749, 2
  %8753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8744, float %8748, float %8666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8754 = extractvalue %dx.types.ResRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.ResRet.f32 %8753, 1
  %8756 = extractvalue %dx.types.ResRet.f32 %8753, 2
  %8757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8742, float %8746, float %8666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8758 = extractvalue %dx.types.ResRet.f32 %8757, 0
  %8759 = extractvalue %dx.types.ResRet.f32 %8757, 1
  %8760 = extractvalue %dx.types.ResRet.f32 %8757, 2
  %8761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8744, float %8746, float %8666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8762 = extractvalue %dx.types.ResRet.f32 %8761, 0
  %8763 = extractvalue %dx.types.ResRet.f32 %8761, 1
  %8764 = extractvalue %dx.types.ResRet.f32 %8761, 2
  %8765 = fsub fast float %8758, %8750
  %8766 = fsub fast float %8759, %8751
  %8767 = fsub fast float %8760, %8752
  %8768 = fmul fast float %8765, %8738
  %8769 = fmul fast float %8766, %8738
  %8770 = fmul fast float %8767, %8738
  %8771 = fadd fast float %8768, %8750
  %8772 = fadd fast float %8769, %8751
  %8773 = fadd fast float %8770, %8752
  %8774 = fsub fast float %8762, %8754
  %8775 = fsub fast float %8763, %8755
  %8776 = fsub fast float %8764, %8756
  %8777 = fmul fast float %8774, %8738
  %8778 = fmul fast float %8775, %8738
  %8779 = fmul fast float %8776, %8738
  %8780 = fsub fast float %8754, %8771
  %8781 = fadd fast float %8780, %8777
  %8782 = fsub fast float %8755, %8772
  %8783 = fadd fast float %8782, %8778
  %8784 = fsub fast float %8756, %8773
  %8785 = fadd fast float %8784, %8779
  %8786 = fmul fast float %8781, %8726
  %8787 = fmul fast float %8783, %8726
  %8788 = fmul fast float %8785, %8726
  %8789 = fadd fast float %8786, %8771
  %8790 = fadd fast float %8787, %8772
  %8791 = fadd fast float %8788, %8773
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8794 = fmul fast float %8789, %8793
  %8795 = fmul fast float %8790, %8793
  %8796 = fmul fast float %8791, %8793
  br label %8797

; <label>:8797                                    ; preds = %8629, %8598
  %8798 = phi float [ %8668, %8629 ], [ 1.000000e+00, %8598 ]
  %8799 = phi float [ %8669, %8629 ], [ 1.000000e+00, %8598 ]
  %8800 = phi float [ %8670, %8629 ], [ 1.000000e+00, %8598 ]
  %8801 = phi float [ %8794, %8629 ], [ 0.000000e+00, %8598 ]
  %8802 = phi float [ %8795, %8629 ], [ 0.000000e+00, %8598 ]
  %8803 = phi float [ %8796, %8629 ], [ 0.000000e+00, %8598 ]
  %8804 = fmul fast float %8801, %8575
  %8805 = fmul fast float %8802, %8575
  %8806 = fmul fast float %8803, %8575
  %8807 = call float @dx.op.dot3.f32(i32 55, float %8798, float %8799, float %8800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8808 = call float @dx.op.dot3.f32(i32 55, float %8804, float %8805, float %8806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8809 = select i1 %280, float %8807, float %8798
  %8810 = select i1 %280, float %8807, float %8799
  %8811 = select i1 %280, float 1.000000e+00, float %8800
  %8812 = select i1 %280, float %8808, float %8804
  %8813 = select i1 %280, float 0.000000e+00, float %8805
  %8814 = select i1 %280, float 0.000000e+00, float %8806
  %8815 = fmul fast float %8809, %8588
  %8816 = fmul fast float %8810, %8589
  %8817 = fmul fast float %8811, %8590
  %8818 = fadd fast float %8815, %8812
  %8819 = fadd fast float %8816, %8813
  %8820 = fadd fast float %8814, %8817
  %8821 = fmul fast float %8809, %8566
  %8822 = fmul fast float %8810, %8567
  %8823 = fmul fast float %8811, %8568
  %8824 = fmul fast float %157, %8600
  %8825 = fmul fast float %159, %8601
  %8826 = fsub fast float 1.000000e+00, %8824
  %8827 = fsub fast float 1.000000e+00, %8825
  %8828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8829 = extractvalue %dx.types.CBufRet.f32 %8828, 0
  %8830 = extractvalue %dx.types.CBufRet.f32 %8828, 1
  %8831 = extractvalue %dx.types.CBufRet.f32 %8828, 2
  %8832 = fmul fast float %8826, %8829
  %8833 = fmul fast float %8826, %8830
  %8834 = fmul fast float %8826, %8831
  %8835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8836 = extractvalue %dx.types.CBufRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.CBufRet.f32 %8835, 1
  %8838 = extractvalue %dx.types.CBufRet.f32 %8835, 2
  %8839 = fmul fast float %8827, %8836
  %8840 = fmul fast float %8827, %8837
  %8841 = fmul fast float %8827, %8838
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8845 = extractvalue %dx.types.CBufRet.f32 %8842, 2
  %8846 = fadd fast float %8839, %8843
  %8847 = fadd fast float %8846, %8832
  %8848 = fadd fast float %8840, %8844
  %8849 = fadd fast float %8848, %8833
  %8850 = fadd fast float %8841, %8845
  %8851 = fadd fast float %8850, %8834
  %8852 = fmul fast float %8847, %243
  %8853 = fmul fast float %8849, %243
  %8854 = fmul fast float %8851, %243
  br label %8855

; <label>:8855                                    ; preds = %8797, %8565
  %8856 = phi float [ %8852, %8797 ], [ %208, %8565 ]
  %8857 = phi float [ %8853, %8797 ], [ %209, %8565 ]
  %8858 = phi float [ %8854, %8797 ], [ %210, %8565 ]
  %8859 = phi float [ %243, %8797 ], [ %112, %8565 ]
  %8860 = phi float [ %8818, %8797 ], [ %8588, %8565 ]
  %8861 = phi float [ %8819, %8797 ], [ %8589, %8565 ]
  %8862 = phi float [ %8820, %8797 ], [ %8590, %8565 ]
  %8863 = phi float [ %8821, %8797 ], [ %8566, %8565 ]
  %8864 = phi float [ %8822, %8797 ], [ %8567, %8565 ]
  %8865 = phi float [ %8823, %8797 ], [ %8568, %8565 ]
  %8866 = phi float [ %8798, %8797 ], [ 1.000000e+00, %8565 ]
  br i1 %8597, label %10021, label %8867

; <label>:8867                                    ; preds = %8855
  %8868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8869 = extractvalue %dx.types.CBufRet.f32 %8868, 0
  %8870 = extractvalue %dx.types.CBufRet.f32 %8868, 1
  %8871 = extractvalue %dx.types.CBufRet.f32 %8868, 2
  %8872 = extractvalue %dx.types.CBufRet.f32 %8868, 3
  %8873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.f32 %8873, 0
  %8875 = extractvalue %dx.types.CBufRet.f32 %8873, 1
  %8876 = extractvalue %dx.types.CBufRet.f32 %8873, 2
  %8877 = extractvalue %dx.types.CBufRet.f32 %8873, 3
  %8878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8879 = extractvalue %dx.types.CBufRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.CBufRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.CBufRet.f32 %8878, 2
  %8882 = extractvalue %dx.types.CBufRet.f32 %8878, 3
  %8883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8884 = extractvalue %dx.types.CBufRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.CBufRet.f32 %8883, 1
  %8886 = extractvalue %dx.types.CBufRet.f32 %8883, 2
  %8887 = extractvalue %dx.types.CBufRet.f32 %8883, 3
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 3
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 3
  %8892 = extractvalue %dx.types.CBufRet.f32 %8890, 0
  %8893 = extractvalue %dx.types.CBufRet.f32 %8890, 1
  %8894 = extractvalue %dx.types.CBufRet.f32 %8890, 2
  %8895 = fcmp fast olt float %8894, -5.000000e-01
  %8896 = call float @dx.op.dot3.f32(i32 55, float %8856, float %8857, float %8858, float %8856, float %8857, float %8858)  ; Dot3(ax,ay,az,bx,by,bz)
  %8897 = call float @dx.op.unary.f32(i32 25, float %8896)  ; Rsqrt(value)
  %8898 = fmul fast float %8897, %8896
  %8899 = fmul fast float %8897, %8856
  %8900 = fmul fast float %8897, %8857
  %8901 = fmul fast float %8897, %8858
  %8902 = fadd fast float %8898, %8872
  %8903 = call float @dx.op.dot3.f32(i32 55, float %8899, float %8900, float %8901, float %8869, float %8870, float %8871)  ; Dot3(ax,ay,az,bx,by,bz)
  %8904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8905 = extractvalue %dx.types.CBufRet.i32 %8904, 1
  %8906 = and i32 %8905, 1
  %8907 = icmp ne i32 %8906, 0
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 2
  %8910 = fcmp fast ogt float %8909, 0.000000e+00
  %8911 = and i1 %8907, %8910
  br i1 %8911, label %8912, label %9318, !dx.controlflow.hints !141

; <label>:8912                                    ; preds = %8867
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 3
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8918 = extractvalue %dx.types.CBufRet.f32 %8917, 2
  %8919 = fsub fast float %8916, %8918
  %8920 = and i32 %8905, 2
  %8921 = extractvalue %dx.types.CBufRet.i32 %8904, 0
  %8922 = call i32 @dx.op.binary.i32(i32 40, i32 %8921, i32 3)  ; UMin(a,b)
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 0
  %8925 = extractvalue %dx.types.CBufRet.f32 %8923, 1
  %8926 = extractvalue %dx.types.CBufRet.f32 %8917, 0
  %8927 = extractvalue %dx.types.CBufRet.f32 %8917, 1
  %8928 = fsub fast float %8924, %8926
  %8929 = fsub fast float %8925, %8927
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8932 = fcmp fast ogt float %8931, 0.000000e+00
  %8933 = fsub fast float -0.000000e+00, %8928
  %8934 = fsub fast float -0.000000e+00, %8929
  %8935 = call float @dx.op.dot2.f32(i32 54, float %8899, float %8900, float %8899, float %8900)  ; Dot2(ax,ay,bx,by)
  %8936 = call float @dx.op.dot2.f32(i32 54, float %8899, float %8900, float %8933, float %8934)  ; Dot2(ax,ay,bx,by)
  %8937 = fmul fast float %8936, 2.000000e+00
  %8938 = call float @dx.op.dot2.f32(i32 54, float %8933, float %8934, float %8933, float %8934)  ; Dot2(ax,ay,bx,by)
  %8939 = fmul fast float %8931, %8931
  %8940 = fsub fast float %8938, %8939
  %8941 = fmul fast float %8937, %8937
  %8942 = fmul fast float %8935, 4.000000e+00
  %8943 = fmul fast float %8942, %8940
  %8944 = fsub fast float %8941, %8943
  %8945 = fcmp fast ogt float %8944, 0.000000e+00
  br i1 %8945, label %8946, label %8961

; <label>:8946                                    ; preds = %8912
  %8947 = fcmp fast ogt float %8937, 0.000000e+00
  %8948 = call float @dx.op.unary.f32(i32 24, float %8944)  ; Sqrt(value)
  %8949 = fsub fast float -0.000000e+00, %8948
  %8950 = select i1 %8947, float %8948, float %8949
  %8951 = fadd fast float %8950, %8937
  %8952 = fmul float %8951, -5.000000e-01
  %8953 = fdiv fast float %8952, %8935
  %8954 = call float @dx.op.binary.f32(i32 35, float %8953, float 0.000000e+00)  ; FMax(a,b)
  %8955 = call float @dx.op.binary.f32(i32 36, float %8898, float %8954)  ; FMin(a,b)
  %8956 = fdiv fast float %8940, %8952
  %8957 = call float @dx.op.binary.f32(i32 35, float %8956, float 0.000000e+00)  ; FMax(a,b)
  %8958 = call float @dx.op.binary.f32(i32 36, float %8898, float %8957)  ; FMin(a,b)
  %8959 = call float @dx.op.binary.f32(i32 36, float %8955, float %8958)  ; FMin(a,b)
  %8960 = call float @dx.op.binary.f32(i32 35, float %8955, float %8958)  ; FMax(a,b)
  br label %8961

; <label>:8961                                    ; preds = %8946, %8912
  %8962 = phi float [ %8960, %8946 ], [ -1.000000e+00, %8912 ]
  %8963 = phi float [ %8959, %8946 ], [ -1.000000e+00, %8912 ]
  %8964 = phi i1 [ true, %8946 ], [ false, %8912 ]
  %8965 = and i1 %8932, %8964
  br i1 %8965, label %8966, label %8968

; <label>:8966                                    ; preds = %8961
  %8967 = fcmp fast oeq float %8963, %8962
  br i1 %8967, label %9271, label %8969

; <label>:8968                                    ; preds = %8961
  br i1 %8932, label %9271, label %8969

; <label>:8969                                    ; preds = %8968, %8966
  %8970 = phi float [ %8898, %8968 ], [ %8962, %8966 ]
  %8971 = phi float [ 0.000000e+00, %8968 ], [ %8963, %8966 ]
  %8972 = icmp ne i32 %8920, 0
  %8973 = fmul fast float %8970, %8901
  %8974 = fadd fast float %8973, %8914
  %8975 = fmul fast float %8974, %8970
  %8976 = select i1 %8972, float 0.000000e+00, float %8975
  %8977 = fcmp fast oeq float %8901, 0.000000e+00
  %8978 = fdiv fast float %8919, %8901
  %8979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8978)  ; FMax(a,b)
  %8980 = select i1 %8977, float %8970, float %8979
  %8981 = call float @dx.op.binary.f32(i32 36, float %8970, float %8980)  ; FMin(a,b)
  %8982 = fcmp fast ogt float %8901, 0.000000e+00
  %8983 = fcmp fast olt float %8919, 0.000000e+00
  br i1 %8982, label %8984, label %9041

; <label>:8984                                    ; preds = %8969
  %8985 = icmp eq i32 %8920, 0
  br i1 %8983, label %8986, label %9030

; <label>:8986                                    ; preds = %8984
  %8987 = select i1 %8985, float %8970, float 0.000000e+00
  %8988 = fsub fast float -0.000000e+00, %8987
  %8989 = call float @dx.op.unary.f32(i32 6, float %8988)  ; FAbs(value)
  %8990 = fmul fast float %8987, %8901
  %8991 = fadd fast float %8990, %8914
  %8992 = fmul fast float %8989, %8991
  %8993 = fsub fast float %8976, %8992
  %8994 = fsub fast float %8970, %8989
  %8995 = select i1 %8985, float %8994, float 0.000000e+00
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 0
  %8998 = extractvalue %dx.types.CBufRet.f32 %8996, 1
  %8999 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %9000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9001 = extractvalue %dx.types.CBufRet.f32 %9000, 0
  %9002 = extractvalue %dx.types.CBufRet.f32 %9000, 1
  %9003 = extractvalue %dx.types.CBufRet.f32 %9000, 2
  %9004 = extractvalue %dx.types.CBufRet.f32 %9000, 3
  %9005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9006 = extractvalue %dx.types.CBufRet.f32 %9005, 3
  %9007 = call float @dx.op.binary.f32(i32 36, float %8993, float %9006)  ; FMin(a,b)
  %9008 = fmul fast float %9004, %8995
  %9009 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  %9010 = fsub fast float %9001, %8997
  %9011 = fsub fast float %9002, %8998
  %9012 = fsub fast float %9003, %8999
  %9013 = fmul fast float %9009, %9010
  %9014 = fmul fast float %9009, %9011
  %9015 = fmul fast float %9009, %9012
  %9016 = fadd fast float %9013, %8997
  %9017 = fadd fast float %9014, %8998
  %9018 = fadd fast float %9015, %8999
  %9019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9020 = extractvalue %dx.types.CBufRet.f32 %9019, 0
  %9021 = extractvalue %dx.types.CBufRet.f32 %9019, 1
  %9022 = fadd fast float %9021, %9020
  %9023 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  %9024 = extractvalue %dx.types.CBufRet.f32 %9019, 2
  %9025 = extractvalue %dx.types.CBufRet.f32 %9019, 3
  %9026 = fadd fast float %9025, %9024
  %9027 = call float @dx.op.unary.f32(i32 7, float %9026)  ; Saturate(value)
  %9028 = fmul fast float %9023, %9007
  %9029 = fmul fast float %9028, %9027
  br label %9271

; <label>:9030                                    ; preds = %8984
  br i1 %8985, label %9031, label %9052

; <label>:9031                                    ; preds = %9030
  %9032 = call float @dx.op.binary.f32(i32 36, float %8981, float %8971)  ; FMin(a,b)
  %9033 = fsub fast float %8981, %9032
  %9034 = fsub fast float %9033, %8970
  %9035 = call float @dx.op.unary.f32(i32 6, float %9034)  ; FAbs(value)
  %9036 = fadd fast float %9033, %8970
  %9037 = fmul fast float %9036, %8901
  %9038 = fadd fast float %9037, %8914
  %9039 = fmul fast float %9038, %9035
  %9040 = fsub fast float %8976, %9039
  br label %9052

; <label>:9041                                    ; preds = %8969
  br i1 %8983, label %9042, label %9052

; <label>:9042                                    ; preds = %9041
  %9043 = call float @dx.op.binary.f32(i32 35, float %8971, float %8981)  ; FMax(a,b)
  %9044 = icmp eq i32 %8920, 0
  %9045 = select i1 %9044, float %8981, float 0.000000e+00
  %9046 = fsub fast float -0.000000e+00, %9045
  %9047 = call float @dx.op.unary.f32(i32 6, float %9046)  ; FAbs(value)
  %9048 = fmul fast float %9045, %8901
  %9049 = fadd fast float %9048, %8914
  %9050 = fmul fast float %9047, %9049
  %9051 = fsub fast float %8976, %9050
  br label %9052

; <label>:9052                                    ; preds = %9042, %9041, %9031, %9030
  %9053 = phi float [ %8971, %9030 ], [ %8971, %9031 ], [ %9043, %9042 ], [ %8971, %9041 ]
  %9054 = phi float [ 0.000000e+00, %9030 ], [ %9035, %9031 ], [ %9047, %9042 ], [ 0.000000e+00, %9041 ]
  %9055 = phi float [ %8976, %9030 ], [ %9040, %9031 ], [ %9051, %9042 ], [ %8976, %9041 ]
  %9056 = phi float [ %8981, %9030 ], [ %8981, %9031 ], [ %8970, %9042 ], [ %8970, %9041 ]
  %9057 = getelementptr inbounds [3 x float], [3 x float]* %119, i32 0, i32 0
  store float -1.000000e+00, float* %9057, align 4, !tbaa !127, !noalias !142
  %9058 = getelementptr inbounds [3 x float], [3 x float]* %119, i32 0, i32 1
  store float -1.000000e+00, float* %9058, align 4, !tbaa !127, !noalias !142
  %9059 = getelementptr inbounds [3 x float], [3 x float]* %119, i32 0, i32 2
  store float -1.000000e+00, float* %9059, align 4, !tbaa !127, !noalias !142
  %9060 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 0
  store float -1.000000e+00, float* %9060, align 4, !tbaa !127, !noalias !142
  %9061 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 1
  store float -1.000000e+00, float* %9061, align 4, !tbaa !127, !noalias !142
  %9062 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 2
  store float -1.000000e+00, float* %9062, align 4, !tbaa !127, !noalias !142
  %9063 = icmp sgt i32 %8922, 0
  br i1 %9063, label %9064, label %9125

; <label>:9064                                    ; preds = %9052
  br label %9065

; <label>:9065                                    ; preds = %9114, %9064
  %9066 = phi i32 [ %9115, %9114 ], [ 0, %9064 ]
  %9067 = phi i32 [ %9116, %9114 ], [ 0, %9064 ]
  %9068 = add nuw i32 %9067, 171
  %9069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9068)  ; CBufferLoadLegacy(handle,regIndex)
  %9070 = extractvalue %dx.types.CBufRet.f32 %9069, 0
  %9071 = extractvalue %dx.types.CBufRet.f32 %9069, 1
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 0
  %9074 = extractvalue %dx.types.CBufRet.f32 %9072, 1
  %9075 = fsub fast float %9070, %9073
  %9076 = fsub fast float %9071, %9074
  %9077 = extractvalue %dx.types.CBufRet.f32 %9069, 2
  %9078 = fsub fast float -0.000000e+00, %9075
  %9079 = fsub fast float -0.000000e+00, %9076
  %9080 = call float @dx.op.dot2.f32(i32 54, float %8899, float %8900, float %9078, float %9079)  ; Dot2(ax,ay,bx,by)
  %9081 = fmul fast float %9080, 2.000000e+00
  %9082 = call float @dx.op.dot2.f32(i32 54, float %9078, float %9079, float %9078, float %9079)  ; Dot2(ax,ay,bx,by)
  %9083 = fmul fast float %9077, %9077
  %9084 = fsub fast float %9082, %9083
  %9085 = fmul fast float %9081, %9081
  %9086 = fmul fast float %8942, %9084
  %9087 = fsub fast float %9085, %9086
  %9088 = fcmp fast ogt float %9087, 0.000000e+00
  br i1 %9088, label %9089, label %9104

; <label>:9089                                    ; preds = %9065
  %9090 = fcmp fast ogt float %9081, 0.000000e+00
  %9091 = call float @dx.op.unary.f32(i32 24, float %9087)  ; Sqrt(value)
  %9092 = fsub fast float -0.000000e+00, %9091
  %9093 = select i1 %9090, float %9091, float %9092
  %9094 = fadd fast float %9093, %9081
  %9095 = fmul float %9094, -5.000000e-01
  %9096 = fdiv fast float %9095, %8935
  %9097 = call float @dx.op.binary.f32(i32 35, float %9096, float 0.000000e+00)  ; FMax(a,b)
  %9098 = call float @dx.op.binary.f32(i32 36, float %8970, float %9097)  ; FMin(a,b)
  %9099 = fdiv fast float %9084, %9095
  %9100 = call float @dx.op.binary.f32(i32 35, float %9099, float 0.000000e+00)  ; FMax(a,b)
  %9101 = call float @dx.op.binary.f32(i32 36, float %8970, float %9100)  ; FMin(a,b)
  %9102 = call float @dx.op.binary.f32(i32 36, float %9098, float %9101)  ; FMin(a,b)
  %9103 = call float @dx.op.binary.f32(i32 35, float %9098, float %9101)  ; FMax(a,b)
  br label %9104

; <label>:9104                                    ; preds = %9089, %9065
  %9105 = phi float [ %9103, %9089 ], [ -1.000000e+00, %9065 ]
  %9106 = phi float [ %9102, %9089 ], [ -1.000000e+00, %9065 ]
  %9107 = phi i1 [ true, %9089 ], [ false, %9065 ]
  br i1 %9107, label %9108, label %9114

; <label>:9108                                    ; preds = %9104
  %9109 = call float @dx.op.binary.f32(i32 35, float %9053, float %9106)  ; FMax(a,b)
  %9110 = getelementptr inbounds [3 x float], [3 x float]* %119, i32 0, i32 %9067
  store float %9109, float* %9110, align 4, !tbaa !127, !noalias !142
  %9111 = call float @dx.op.binary.f32(i32 35, float %9053, float %9105)  ; FMax(a,b)
  %9112 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9067
  store float %9111, float* %9112, align 4, !tbaa !127, !noalias !142
  %9113 = add nsw i32 %9066, 1
  br label %9114

; <label>:9114                                    ; preds = %9108, %9104
  %9115 = phi i32 [ %9113, %9108 ], [ %9066, %9104 ]
  %9116 = add nuw nsw i32 %9067, 1
  %9117 = icmp eq i32 %9116, %8922
  br i1 %9117, label %9118, label %9065

; <label>:9118                                    ; preds = %9114
  %9119 = load float, float* %9059, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %9120 = load float, float* %9058, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  %9121 = load float, float* %9057, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  %9122 = load float, float* %9062, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %9123 = load float, float* %9061, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  %9124 = load float, float* %9060, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  br label %9125

; <label>:9125                                    ; preds = %9118, %9052
  %9126 = phi float [ -1.000000e+00, %9052 ], [ %9124, %9118 ]
  %9127 = phi float [ -1.000000e+00, %9052 ], [ %9123, %9118 ]
  %9128 = phi float [ -1.000000e+00, %9052 ], [ %9122, %9118 ]
  %9129 = phi float [ -1.000000e+00, %9052 ], [ %9121, %9118 ]
  %9130 = phi float [ -1.000000e+00, %9052 ], [ %9120, %9118 ]
  %9131 = phi float [ -1.000000e+00, %9052 ], [ %9119, %9118 ]
  %9132 = phi i32 [ 0, %9052 ], [ %9115, %9118 ]
  %9133 = call float @dx.op.binary.f32(i32 36, float %9130, float %9131)  ; FMin(a,b)
  %9134 = call float @dx.op.binary.f32(i32 36, float %9129, float %9133)  ; FMin(a,b)
  %9135 = call float @dx.op.binary.f32(i32 35, float %9129, float %9130)  ; FMax(a,b)
  %9136 = call float @dx.op.binary.f32(i32 36, float %9135, float %9131)  ; FMin(a,b)
  %9137 = call float @dx.op.binary.f32(i32 36, float %9129, float %9130)  ; FMin(a,b)
  %9138 = call float @dx.op.binary.f32(i32 35, float %9137, float %9136)  ; FMax(a,b)
  %9139 = call float @dx.op.binary.f32(i32 35, float %9130, float %9131)  ; FMax(a,b)
  %9140 = call float @dx.op.binary.f32(i32 35, float %9129, float %9139)  ; FMax(a,b)
  store float %9134, float* %9057, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  store float %9138, float* %9058, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  store float %9140, float* %9059, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %9141 = call float @dx.op.binary.f32(i32 36, float %9127, float %9128)  ; FMin(a,b)
  %9142 = call float @dx.op.binary.f32(i32 36, float %9126, float %9141)  ; FMin(a,b)
  %9143 = call float @dx.op.binary.f32(i32 35, float %9126, float %9127)  ; FMax(a,b)
  %9144 = call float @dx.op.binary.f32(i32 36, float %9143, float %9128)  ; FMin(a,b)
  %9145 = call float @dx.op.binary.f32(i32 36, float %9126, float %9127)  ; FMin(a,b)
  %9146 = call float @dx.op.binary.f32(i32 35, float %9145, float %9144)  ; FMax(a,b)
  %9147 = call float @dx.op.binary.f32(i32 35, float %9127, float %9128)  ; FMax(a,b)
  %9148 = call float @dx.op.binary.f32(i32 35, float %9126, float %9147)  ; FMax(a,b)
  store float %9142, float* %9060, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  store float %9146, float* %9061, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  store float %9148, float* %9062, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %9149 = sub nsw i32 3, %9132
  %9150 = icmp sgt i32 %9149, 2
  br i1 %9150, label %9151, label %9189

; <label>:9151                                    ; preds = %9125
  %9152 = icmp eq i32 %8920, 0
  %9153 = fsub fast float %8970, %9054
  %9154 = select i1 %9152, float %9153, float %9054
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 0
  %9157 = extractvalue %dx.types.CBufRet.f32 %9155, 1
  %9158 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9160 = extractvalue %dx.types.CBufRet.f32 %9159, 0
  %9161 = extractvalue %dx.types.CBufRet.f32 %9159, 1
  %9162 = extractvalue %dx.types.CBufRet.f32 %9159, 2
  %9163 = extractvalue %dx.types.CBufRet.f32 %9159, 3
  %9164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9165 = extractvalue %dx.types.CBufRet.f32 %9164, 3
  %9166 = call float @dx.op.binary.f32(i32 36, float %9055, float %9165)  ; FMin(a,b)
  %9167 = fmul fast float %9163, %9154
  %9168 = call float @dx.op.unary.f32(i32 7, float %9167)  ; Saturate(value)
  %9169 = fsub fast float %9160, %9156
  %9170 = fsub fast float %9161, %9157
  %9171 = fsub fast float %9162, %9158
  %9172 = fmul fast float %9168, %9169
  %9173 = fmul fast float %9168, %9170
  %9174 = fmul fast float %9168, %9171
  %9175 = fadd fast float %9172, %9156
  %9176 = fadd fast float %9173, %9157
  %9177 = fadd fast float %9174, %9158
  %9178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.f32 %9178, 0
  %9180 = extractvalue %dx.types.CBufRet.f32 %9178, 1
  %9181 = fadd fast float %9180, %9179
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = extractvalue %dx.types.CBufRet.f32 %9178, 2
  %9184 = extractvalue %dx.types.CBufRet.f32 %9178, 3
  %9185 = fadd fast float %9184, %9183
  %9186 = call float @dx.op.unary.f32(i32 7, float %9185)  ; Saturate(value)
  %9187 = fmul fast float %9182, %9166
  %9188 = fmul fast float %9187, %9186
  br label %9271

; <label>:9189                                    ; preds = %9125
  %9190 = getelementptr inbounds [3 x float], [3 x float]* %119, i32 0, i32 %9149
  %9191 = load float, float* %9190, align 4, !tbaa !127, !noalias !142
  %9192 = fcmp fast olt float %9191, %9056
  %9193 = icmp sgt i32 %9132, 0
  %9194 = and i1 %9193, %9192
  br i1 %9194, label %9195, label %9232

; <label>:9195                                    ; preds = %9189
  br label %9196

; <label>:9196                                    ; preds = %9225, %9195
  %9197 = phi float [ %9226, %9225 ], [ %9054, %9195 ]
  %9198 = phi float [ %9227, %9225 ], [ %9055, %9195 ]
  %9199 = phi float [ %9207, %9225 ], [ %9191, %9195 ]
  %9200 = phi i32 [ %9204, %9225 ], [ %9149, %9195 ]
  %9201 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9200
  %9202 = load float, float* %9201, align 4, !tbaa !127, !noalias !142
  %9203 = icmp slt i32 %9200, 2
  %9204 = add nsw i32 %9200, 1
  %9205 = getelementptr inbounds [3 x float], [3 x float]* %119, i32 0, i32 %9204
  %9206 = load float, float* %9205, align 4, !tbaa !127, !noalias !142
  %9207 = select i1 %9203, float %9206, float %8970
  %9208 = call float @dx.op.binary.f32(i32 36, float %9207, float %9202)  ; FMin(a,b)
  %9209 = call float @dx.op.binary.f32(i32 36, float %9056, float %9208)  ; FMin(a,b)
  %9210 = icmp eq i32 %8920, 0
  %9211 = fadd fast float %9209, %9199
  %9212 = fmul fast float %9211, %8901
  %9213 = fadd fast float %9212, %8914
  br i1 %9210, label %9219, label %9214

; <label>:9214                                    ; preds = %9196
  %9215 = fsub fast float %9209, %9199
  %9216 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9215)  ; FMax(a,b)
  %9217 = fmul fast float %9216, %9213
  %9218 = fadd fast float %9217, %9198
  br label %9225

; <label>:9219                                    ; preds = %9196
  %9220 = fsub fast float %9199, %9209
  %9221 = call float @dx.op.unary.f32(i32 6, float %9220)  ; FAbs(value)
  %9222 = fadd fast float %9221, %9197
  %9223 = fmul fast float %9221, %9213
  %9224 = fsub fast float %9198, %9223
  br label %9225

; <label>:9225                                    ; preds = %9219, %9214
  %9226 = phi float [ %9216, %9214 ], [ %9222, %9219 ]
  %9227 = phi float [ %9218, %9214 ], [ %9224, %9219 ]
  %9228 = fcmp fast olt float %9207, %9056
  %9229 = icmp slt i32 %9204, 3
  %9230 = and i1 %9229, %9228
  br i1 %9230, label %9196, label %9231

; <label>:9231                                    ; preds = %9225
  br label %9232

; <label>:9232                                    ; preds = %9231, %9189
  %9233 = phi float [ %9054, %9189 ], [ %9226, %9231 ]
  %9234 = phi float [ %9055, %9189 ], [ %9227, %9231 ]
  %9235 = fsub fast float %8970, %9233
  %9236 = select i1 %8972, float %9233, float %9235
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
  %9248 = call float @dx.op.binary.f32(i32 36, float %9234, float %9247)  ; FMin(a,b)
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
  br label %9271

; <label>:9271                                    ; preds = %9232, %9151, %8986, %8968, %8966
  %9272 = phi float [ %8995, %8986 ], [ %9154, %9151 ], [ %9236, %9232 ], [ 0.000000e+00, %8966 ], [ 0.000000e+00, %8968 ]
  %9273 = phi float [ %9029, %8986 ], [ %9188, %9151 ], [ %9270, %9232 ], [ 0.000000e+00, %8966 ], [ 0.000000e+00, %8968 ]
  %9274 = phi float [ %9016, %8986 ], [ %9175, %9151 ], [ %9257, %9232 ], [ 0.000000e+00, %8966 ], [ 0.000000e+00, %8968 ]
  %9275 = phi float [ %9017, %8986 ], [ %9176, %9151 ], [ %9258, %9232 ], [ 0.000000e+00, %8966 ], [ 0.000000e+00, %8968 ]
  %9276 = phi float [ %9018, %8986 ], [ %9177, %9151 ], [ %9259, %9232 ], [ 0.000000e+00, %8966 ], [ 0.000000e+00, %8968 ]
  %9277 = fmul fast float %8909, %9273
  %9278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.f32 %9278, 2
  %9280 = fsub fast float %8916, %9279
  %9281 = fcmp fast olt float %9277, -2.000000e+01
  %9282 = call float @dx.op.unary.f32(i32 21, float %9277)  ; Exp(value)
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 2
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 3
  %9286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.f32 %9286, 2
  %9288 = fmul fast float %9285, %9280
  %9289 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9290 = fsub fast float 1.000000e+00, %9289
  %9291 = fmul fast float %8901, 5.000000e-01
  %9292 = fadd fast float %9291, 5.000000e-01
  %9293 = call float @dx.op.unary.f32(i32 7, float %9292)  ; Saturate(value)
  %9294 = fsub fast float 1.000000e+00, %9293
  %9295 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9290)  ; FMax(a,b)
  %9296 = fdiv fast float %9294, %9295
  %9297 = fsub fast float %9280, %8858
  %9298 = call float @dx.op.unary.f32(i32 6, float %9297)  ; FAbs(value)
  %9299 = fmul fast float %9298, %9284
  %9300 = call float @dx.op.unary.f32(i32 7, float %9296)  ; Saturate(value)
  %9301 = fsub fast float 1.000000e+00, %9299
  %9302 = fmul fast float %9301, %9300
  %9303 = fadd fast float %9302, %9299
  %9304 = fmul fast float %9287, %9280
  %9305 = call float @dx.op.unary.f32(i32 7, float %9304)  ; Saturate(value)
  %9306 = fsub fast float 1.000000e+00, %9303
  %9307 = fmul fast float %9306, %9305
  %9308 = fadd fast float %9307, %9303
  %9309 = call float @dx.op.unary.f32(i32 7, float %9308)  ; Saturate(value)
  %9310 = fadd fast float %9282, -1.000000e+00
  %9311 = select i1 %9281, float -1.000000e+00, float %9310
  %9312 = fmul fast float %9309, %9311
  %9313 = fadd fast float %9312, 1.000000e+00
  %9314 = fsub fast float -0.000000e+00, %9312
  %9315 = fmul fast float %9274, %9314
  %9316 = fmul fast float %9275, %9314
  %9317 = fmul fast float %9276, %9314
  br label %9318

; <label>:9318                                    ; preds = %9271, %8867
  %9319 = phi float [ %9272, %9271 ], [ 0.000000e+00, %8867 ]
  %9320 = phi float [ %9313, %9271 ], [ 1.000000e+00, %8867 ]
  %9321 = phi float [ %9315, %9271 ], [ 0.000000e+00, %8867 ]
  %9322 = phi float [ %9316, %9271 ], [ 0.000000e+00, %8867 ]
  %9323 = phi float [ %9317, %9271 ], [ 0.000000e+00, %8867 ]
  %9324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9325 = extractvalue %dx.types.CBufRet.f32 %9324, 1
  %9326 = fsub fast float 1.000000e+00, %9320
  %9327 = fmul fast float %9326, %8902
  %9328 = fmul fast float %9327, %9325
  %9329 = fsub fast float %8902, %9328
  br i1 %8895, label %9330, label %9359, !dx.controlflow.hints !178

; <label>:9330                                    ; preds = %9318
  %9331 = fmul fast float %8903, %8892
  %9332 = fadd fast float %9331, %8893
  %9333 = call float @dx.op.unary.f32(i32 7, float %9332)  ; Saturate(value)
  %9334 = fmul fast float %8874, %9329
  %9335 = fsub fast float -0.000000e+00, %9334
  %9336 = fmul fast float %8875, %9329
  %9337 = fsub fast float -0.000000e+00, %9336
  %9338 = call float @dx.op.unary.f32(i32 21, float %9335)  ; Exp(value)
  %9339 = call float @dx.op.unary.f32(i32 21, float %9337)  ; Exp(value)
  %9340 = call float @dx.op.binary.f32(i32 35, float %8882, float %9338)  ; FMax(a,b)
  %9341 = call float @dx.op.binary.f32(i32 35, float %8882, float %9339)  ; FMax(a,b)
  %9342 = fsub fast float %9341, %9340
  %9343 = fmul fast float %9342, %9333
  %9344 = fadd fast float %9343, %9340
  %9345 = call float @dx.op.unary.f32(i32 7, float %9344)  ; Saturate(value)
  %9346 = fsub fast float %8879, %8884
  %9347 = fsub fast float %8880, %8885
  %9348 = fsub fast float %8881, %8886
  %9349 = fmul fast float %9333, %9346
  %9350 = fmul fast float %9333, %9347
  %9351 = fmul fast float %9333, %9348
  %9352 = fadd fast float %9349, %8884
  %9353 = fadd fast float %9350, %8885
  %9354 = fadd fast float %9351, %8886
  %9355 = fsub fast float 1.000000e+00, %9345
  %9356 = fmul fast float %9355, %9352
  %9357 = fmul fast float %9355, %9353
  %9358 = fmul fast float %9355, %9354
  br label %9418

; <label>:9359                                    ; preds = %9318
  %9360 = fmul fast float %9329, %8891
  %9361 = call float @dx.op.unary.f32(i32 7, float %9360)  ; Saturate(value)
  %9362 = fsub fast float 2.000000e+00, %9361
  %9363 = fmul fast float %9361, 9.921875e-01
  %9364 = fmul fast float %9363, %9362
  %9365 = fadd fast float %9364, 3.906250e-03
  %9366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %9365, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9367 = extractvalue %dx.types.ResRet.f32 %9366, 0
  %9368 = fsub fast float %9361, %9367
  %9369 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9368)  ; FMax(a,b)
  %9370 = fmul fast float %8877, %8858
  %9371 = call float @dx.op.unary.f32(i32 6, float %9370)  ; FAbs(value)
  %9372 = fcmp fast ogt float %9371, 0x3EB0C6F7A0000000
  br i1 %9372, label %9373, label %9379, !dx.controlflow.hints !179

; <label>:9373                                    ; preds = %9359
  %9374 = fmul fast float %9370, 0xBFF7154760000000
  %9375 = call float @dx.op.unary.f32(i32 21, float %9374)  ; Exp(value)
  %9376 = fsub fast float 1.000000e+00, %9375
  %9377 = fdiv fast float %9376, %9370
  %9378 = fmul fast float %9377, %8887
  br label %9379

; <label>:9379                                    ; preds = %9373, %9359
  %9380 = phi float [ %9378, %9373 ], [ %8887, %9359 ]
  %9381 = fadd fast float %9380, %8889
  %9382 = fmul fast float %9381, %9369
  %9383 = fmul fast float %8874, %9382
  %9384 = fsub fast float -0.000000e+00, %9383
  %9385 = fmul fast float %8875, %9382
  %9386 = fsub fast float -0.000000e+00, %9385
  %9387 = fmul fast float %8876, %9382
  %9388 = fsub fast float -0.000000e+00, %9387
  %9389 = call float @dx.op.unary.f32(i32 21, float %9384)  ; Exp(value)
  %9390 = call float @dx.op.unary.f32(i32 21, float %9386)  ; Exp(value)
  %9391 = call float @dx.op.unary.f32(i32 21, float %9388)  ; Exp(value)
  %9392 = fmul fast float %8903, %8903
  %9393 = fadd fast float %9392, 1.000000e+00
  %9394 = fmul fast float %9393, 0x3FAE8EC8A0000000
  %9395 = fmul fast float %9394, %8884
  %9396 = fmul fast float %9394, %8885
  %9397 = fmul fast float %9394, %8886
  %9398 = fmul fast float %8903, %8882
  %9399 = fsub fast float 1.000000e+00, %9398
  %9400 = fmul fast float %8882, %8882
  %9401 = fsub fast float 1.000000e+00, %9400
  %9402 = fmul fast float %9401, 0x3FB45F3060000000
  %9403 = fmul fast float %9399, %9399
  %9404 = fdiv fast float 1.000000e+00, %9403
  %9405 = fmul fast float %9402, %9404
  %9406 = fmul fast float %9405, %8879
  %9407 = fmul fast float %9405, %8880
  %9408 = fmul fast float %9405, %8881
  %9409 = fadd fast float %9406, %9395
  %9410 = fadd fast float %9407, %9396
  %9411 = fadd fast float %9408, %9397
  %9412 = fsub fast float 1.000000e+00, %9389
  %9413 = fsub fast float 1.000000e+00, %9390
  %9414 = fsub fast float 1.000000e+00, %9391
  %9415 = fmul fast float %9409, %9412
  %9416 = fmul fast float %9410, %9413
  %9417 = fmul fast float %9411, %9414
  br label %9418

; <label>:9418                                    ; preds = %9379, %9330
  %9419 = phi float [ %9356, %9330 ], [ %9415, %9379 ]
  %9420 = phi float [ %9357, %9330 ], [ %9416, %9379 ]
  %9421 = phi float [ %9358, %9330 ], [ %9417, %9379 ]
  %9422 = phi float [ %9345, %9330 ], [ %9389, %9379 ]
  %9423 = phi float [ %9345, %9330 ], [ %9390, %9379 ]
  %9424 = phi float [ %9345, %9330 ], [ %9391, %9379 ]
  br i1 %8911, label %9425, label %9623, !dx.controlflow.hints !180

; <label>:9425                                    ; preds = %9418
  %9426 = extractvalue %dx.types.CBufRet.f32 %9324, 0
  %9427 = fmul fast float %9426, %9326
  %9428 = fsub fast float %9321, %9419
  %9429 = fsub fast float %9322, %9420
  %9430 = fsub fast float %9323, %9421
  %9431 = fmul fast float %9427, %9428
  %9432 = fmul fast float %9427, %9429
  %9433 = fmul fast float %9427, %9430
  %9434 = fadd fast float %9431, %9419
  %9435 = fadd fast float %9432, %9420
  %9436 = fadd fast float %9433, %9421
  %9437 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9422)  ; FMax(a,b)
  %9438 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9423)  ; FMax(a,b)
  %9439 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9424)  ; FMax(a,b)
  %9440 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9320)  ; FMax(a,b)
  %9441 = call float @dx.op.binary.f32(i32 35, float %9319, float %9329)  ; FMax(a,b)
  %9442 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9441)  ; FMax(a,b)
  %9443 = fdiv fast float %9319, %9442
  %9444 = call float @dx.op.unary.f32(i32 7, float %9443)  ; Saturate(value)
  %9445 = fdiv fast float %9329, %9442
  %9446 = call float @dx.op.unary.f32(i32 7, float %9445)  ; Saturate(value)
  %9447 = fcmp fast une float %9440, 1.000000e+00
  br i1 %9447, label %9448, label %9461, !dx.controlflow.hints !181

; <label>:9448                                    ; preds = %9425
  %9449 = call float @dx.op.unary.f32(i32 23, float %9440)  ; Log(value)
  %9450 = fmul fast float %9449, 0x3FE62E4300000000
  %9451 = fmul fast float %9321, %9450
  %9452 = fsub fast float -0.000000e+00, %9451
  %9453 = fmul fast float %9322, %9450
  %9454 = fsub fast float -0.000000e+00, %9453
  %9455 = fmul fast float %9323, %9450
  %9456 = fsub fast float -0.000000e+00, %9455
  %9457 = fsub fast float 1.000000e+00, %9440
  %9458 = fdiv fast float %9452, %9457
  %9459 = fdiv fast float %9454, %9457
  %9460 = fdiv fast float %9456, %9457
  br label %9461

; <label>:9461                                    ; preds = %9448, %9425
  %9462 = phi float [ %9458, %9448 ], [ %9321, %9425 ]
  %9463 = phi float [ %9459, %9448 ], [ %9322, %9425 ]
  %9464 = phi float [ %9460, %9448 ], [ %9323, %9425 ]
  %9465 = phi float [ %9450, %9448 ], [ 0.000000e+00, %9425 ]
  %9466 = fcmp fast une float %9437, 1.000000e+00
  br i1 %9466, label %9467, label %9474, !dx.controlflow.hints !182

; <label>:9467                                    ; preds = %9461
  %9468 = call float @dx.op.unary.f32(i32 23, float %9437)  ; Log(value)
  %9469 = fmul fast float %9468, 0x3FE62E4300000000
  %9470 = fmul fast float %9434, %9469
  %9471 = fsub fast float -0.000000e+00, %9470
  %9472 = fsub fast float 1.000000e+00, %9437
  %9473 = fdiv fast float %9471, %9472
  br label %9474

; <label>:9474                                    ; preds = %9467, %9461
  %9475 = phi float [ %9473, %9467 ], [ %9434, %9461 ]
  %9476 = phi float [ %9469, %9467 ], [ 0.000000e+00, %9461 ]
  %9477 = fcmp fast une float %9438, 1.000000e+00
  br i1 %9477, label %9478, label %9485, !dx.controlflow.hints !182

; <label>:9478                                    ; preds = %9474
  %9479 = call float @dx.op.unary.f32(i32 23, float %9438)  ; Log(value)
  %9480 = fmul fast float %9479, 0x3FE62E4300000000
  %9481 = fmul fast float %9435, %9480
  %9482 = fsub fast float -0.000000e+00, %9481
  %9483 = fsub fast float 1.000000e+00, %9438
  %9484 = fdiv fast float %9482, %9483
  br label %9485

; <label>:9485                                    ; preds = %9478, %9474
  %9486 = phi float [ %9484, %9478 ], [ %9435, %9474 ]
  %9487 = phi float [ %9480, %9478 ], [ 0.000000e+00, %9474 ]
  %9488 = fcmp fast une float %9439, 1.000000e+00
  br i1 %9488, label %9489, label %9496, !dx.controlflow.hints !182

; <label>:9489                                    ; preds = %9485
  %9490 = call float @dx.op.unary.f32(i32 23, float %9439)  ; Log(value)
  %9491 = fmul fast float %9490, 0x3FE62E4300000000
  %9492 = fmul fast float %9436, %9491
  %9493 = fsub fast float -0.000000e+00, %9492
  %9494 = fsub fast float 1.000000e+00, %9439
  %9495 = fdiv fast float %9493, %9494
  br label %9496

; <label>:9496                                    ; preds = %9489, %9485
  %9497 = phi float [ %9495, %9489 ], [ %9436, %9485 ]
  %9498 = phi float [ %9491, %9489 ], [ 0.000000e+00, %9485 ]
  %9499 = fmul fast float %9462, %9446
  %9500 = fmul fast float %9463, %9446
  %9501 = fmul fast float %9464, %9446
  %9502 = fmul fast float %9465, %9446
  %9503 = fmul fast float %9475, %9444
  %9504 = fmul fast float %9486, %9444
  %9505 = fmul fast float %9497, %9444
  %9506 = fmul fast float %9476, %9444
  %9507 = fmul fast float %9487, %9444
  %9508 = fmul fast float %9498, %9444
  %9509 = fadd fast float %9503, %9499
  %9510 = fadd fast float %9504, %9500
  %9511 = fadd fast float %9505, %9501
  %9512 = fadd fast float %9506, %9502
  %9513 = fadd fast float %9507, %9502
  %9514 = fadd fast float %9508, %9502
  %9515 = fcmp fast une float %9512, 0.000000e+00
  br i1 %9515, label %9516, label %9523, !dx.controlflow.hints !183

; <label>:9516                                    ; preds = %9496
  %9517 = fmul fast float %9512, 0x3FF7154760000000
  %9518 = call float @dx.op.unary.f32(i32 21, float %9517)  ; Exp(value)
  %9519 = fsub fast float 1.000000e+00, %9518
  %9520 = fmul fast float %9509, %9519
  %9521 = fsub fast float -0.000000e+00, %9520
  %9522 = fdiv fast float %9521, %9512
  br label %9523

; <label>:9523                                    ; preds = %9516, %9496
  %9524 = phi float [ %9518, %9516 ], [ 1.000000e+00, %9496 ]
  %9525 = phi float [ %9522, %9516 ], [ %9509, %9496 ]
  %9526 = fcmp fast une float %9513, 0.000000e+00
  br i1 %9526, label %9527, label %9534, !dx.controlflow.hints !183

; <label>:9527                                    ; preds = %9523
  %9528 = fmul fast float %9513, 0x3FF7154760000000
  %9529 = call float @dx.op.unary.f32(i32 21, float %9528)  ; Exp(value)
  %9530 = fsub fast float 1.000000e+00, %9529
  %9531 = fmul fast float %9510, %9530
  %9532 = fsub fast float -0.000000e+00, %9531
  %9533 = fdiv fast float %9532, %9513
  br label %9534

; <label>:9534                                    ; preds = %9527, %9523
  %9535 = phi float [ %9529, %9527 ], [ 1.000000e+00, %9523 ]
  %9536 = phi float [ %9533, %9527 ], [ %9510, %9523 ]
  %9537 = fcmp fast une float %9514, 0.000000e+00
  br i1 %9537, label %9538, label %9545, !dx.controlflow.hints !183

; <label>:9538                                    ; preds = %9534
  %9539 = fmul fast float %9514, 0x3FF7154760000000
  %9540 = call float @dx.op.unary.f32(i32 21, float %9539)  ; Exp(value)
  %9541 = fsub fast float 1.000000e+00, %9540
  %9542 = fmul fast float %9511, %9541
  %9543 = fsub fast float -0.000000e+00, %9542
  %9544 = fdiv fast float %9543, %9514
  br label %9545

; <label>:9545                                    ; preds = %9538, %9534
  %9546 = phi float [ %9540, %9538 ], [ 1.000000e+00, %9534 ]
  %9547 = phi float [ %9544, %9538 ], [ %9511, %9534 ]
  %9548 = fcmp fast ogt float %9444, %9446
  br i1 %9548, label %9549, label %9569

; <label>:9549                                    ; preds = %9545
  %9550 = fsub fast float 1.000000e+00, %9446
  %9551 = fmul fast float %9462, %9550
  %9552 = fmul fast float %9463, %9550
  %9553 = fmul fast float %9464, %9550
  %9554 = fmul fast float %9465, %9550
  %9555 = fcmp fast une float %9554, 0.000000e+00
  br i1 %9555, label %9556, label %9607, !dx.controlflow.hints !184

; <label>:9556                                    ; preds = %9549
  %9557 = fmul fast float %9554, 0x3FF7154760000000
  %9558 = call float @dx.op.unary.f32(i32 21, float %9557)  ; Exp(value)
  %9559 = fsub fast float 1.000000e+00, %9558
  %9560 = fmul fast float %9551, %9559
  %9561 = fsub fast float -0.000000e+00, %9560
  %9562 = fmul fast float %9552, %9559
  %9563 = fsub fast float -0.000000e+00, %9562
  %9564 = fmul fast float %9553, %9559
  %9565 = fsub fast float -0.000000e+00, %9564
  %9566 = fdiv fast float %9561, %9554
  %9567 = fdiv fast float %9563, %9554
  %9568 = fdiv fast float %9565, %9554
  br label %9607

; <label>:9569                                    ; preds = %9545
  %9570 = fsub fast float 1.000000e+00, %9444
  %9571 = fmul fast float %9475, %9570
  %9572 = fmul fast float %9486, %9570
  %9573 = fmul fast float %9497, %9570
  %9574 = fmul fast float %9476, %9570
  %9575 = fmul fast float %9487, %9570
  %9576 = fmul fast float %9498, %9570
  %9577 = fcmp fast une float %9574, 0.000000e+00
  br i1 %9577, label %9578, label %9585, !dx.controlflow.hints !183

; <label>:9578                                    ; preds = %9569
  %9579 = fmul fast float %9574, 0x3FF7154760000000
  %9580 = call float @dx.op.unary.f32(i32 21, float %9579)  ; Exp(value)
  %9581 = fsub fast float 1.000000e+00, %9580
  %9582 = fmul fast float %9571, %9581
  %9583 = fsub fast float -0.000000e+00, %9582
  %9584 = fdiv fast float %9583, %9574
  br label %9585

; <label>:9585                                    ; preds = %9578, %9569
  %9586 = phi float [ %9584, %9578 ], [ %9571, %9569 ]
  %9587 = phi float [ %9580, %9578 ], [ 1.000000e+00, %9569 ]
  %9588 = fcmp fast une float %9575, 0.000000e+00
  br i1 %9588, label %9589, label %9596, !dx.controlflow.hints !183

; <label>:9589                                    ; preds = %9585
  %9590 = fmul fast float %9575, 0x3FF7154760000000
  %9591 = call float @dx.op.unary.f32(i32 21, float %9590)  ; Exp(value)
  %9592 = fsub fast float 1.000000e+00, %9591
  %9593 = fmul fast float %9572, %9592
  %9594 = fsub fast float -0.000000e+00, %9593
  %9595 = fdiv fast float %9594, %9575
  br label %9596

; <label>:9596                                    ; preds = %9589, %9585
  %9597 = phi float [ %9595, %9589 ], [ %9572, %9585 ]
  %9598 = phi float [ %9591, %9589 ], [ 1.000000e+00, %9585 ]
  %9599 = fcmp fast une float %9576, 0.000000e+00
  br i1 %9599, label %9600, label %9607, !dx.controlflow.hints !183

; <label>:9600                                    ; preds = %9596
  %9601 = fmul fast float %9576, 0x3FF7154760000000
  %9602 = call float @dx.op.unary.f32(i32 21, float %9601)  ; Exp(value)
  %9603 = fsub fast float 1.000000e+00, %9602
  %9604 = fmul fast float %9573, %9603
  %9605 = fsub fast float -0.000000e+00, %9604
  %9606 = fdiv fast float %9605, %9576
  br label %9607

; <label>:9607                                    ; preds = %9600, %9596, %9556, %9549
  %9608 = phi float [ %9606, %9600 ], [ %9568, %9556 ], [ %9553, %9549 ], [ %9573, %9596 ]
  %9609 = phi float [ %9597, %9600 ], [ %9567, %9556 ], [ %9552, %9549 ], [ %9597, %9596 ]
  %9610 = phi float [ %9586, %9600 ], [ %9566, %9556 ], [ %9551, %9549 ], [ %9586, %9596 ]
  %9611 = phi float [ %9602, %9600 ], [ %9558, %9556 ], [ 1.000000e+00, %9549 ], [ 1.000000e+00, %9596 ]
  %9612 = phi float [ %9598, %9600 ], [ %9558, %9556 ], [ 1.000000e+00, %9549 ], [ %9598, %9596 ]
  %9613 = phi float [ %9587, %9600 ], [ %9558, %9556 ], [ 1.000000e+00, %9549 ], [ %9587, %9596 ]
  %9614 = fmul fast float %9613, %9525
  %9615 = fmul fast float %9612, %9536
  %9616 = fmul fast float %9611, %9547
  %9617 = fadd fast float %9614, %9610
  %9618 = fadd fast float %9615, %9609
  %9619 = fadd fast float %9616, %9608
  %9620 = fmul fast float %9613, %9524
  %9621 = fmul fast float %9612, %9535
  %9622 = fmul fast float %9611, %9546
  br label %9623

; <label>:9623                                    ; preds = %9607, %9418
  %9624 = phi float [ %9622, %9607 ], [ %9424, %9418 ]
  %9625 = phi float [ %9621, %9607 ], [ %9423, %9418 ]
  %9626 = phi float [ %9620, %9607 ], [ %9422, %9418 ]
  %9627 = phi float [ %9619, %9607 ], [ %9421, %9418 ]
  %9628 = phi float [ %9618, %9607 ], [ %9420, %9418 ]
  %9629 = phi float [ %9617, %9607 ], [ %9419, %9418 ]
  %9630 = fmul fast float %9629, %8575
  %9631 = fmul fast float %9628, %8575
  %9632 = fmul fast float %9627, %8575
  %9633 = fmul fast float %9626, %8866
  %9634 = call float @dx.op.dot3.f32(i32 55, float %9626, float %9625, float %9624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9635 = call float @dx.op.dot3.f32(i32 55, float %9630, float %9631, float %9632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9636 = select i1 %280, float %9634, float %9626
  %9637 = select i1 %280, float %9634, float %9625
  %9638 = select i1 %280, float 1.000000e+00, float %9624
  %9639 = select i1 %280, float %9635, float %9630
  %9640 = select i1 %280, float 0.000000e+00, float %9631
  %9641 = select i1 %280, float 0.000000e+00, float %9632
  %9642 = fmul fast float %9636, %8860
  %9643 = fmul fast float %9637, %8861
  %9644 = fmul fast float %9638, %8862
  %9645 = fadd fast float %9642, %9639
  %9646 = fadd fast float %9643, %9640
  %9647 = fadd fast float %9641, %9644
  %9648 = fmul fast float %9636, %8863
  %9649 = fmul fast float %9637, %8864
  %9650 = fmul fast float %9638, %8865
  %9651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9652 = extractvalue %dx.types.CBufRet.i32 %9651, 0
  %9653 = icmp eq i32 %9652, 0
  br i1 %9653, label %10021, label %9654, !dx.controlflow.hints !185

; <label>:9654                                    ; preds = %9623
  %9655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.f32 %9655, 2
  %9657 = extractvalue %dx.types.CBufRet.f32 %9655, 3
  %9658 = fmul fast float %9656, %125
  %9659 = fmul fast float %9657, %126
  %9660 = fmul fast float %9658, 2.000000e+00
  %9661 = fmul fast float %9659, 2.000000e+00
  %9662 = fsub fast float 1.000000e+00, %9660
  %9663 = fsub fast float 1.000000e+00, %9661
  %9664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9665 = extractvalue %dx.types.CBufRet.f32 %9664, 0
  %9666 = extractvalue %dx.types.CBufRet.f32 %9664, 1
  %9667 = extractvalue %dx.types.CBufRet.f32 %9664, 2
  %9668 = fmul fast float %9662, %9665
  %9669 = fmul fast float %9662, %9666
  %9670 = fmul fast float %9662, %9667
  %9671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9672 = extractvalue %dx.types.CBufRet.f32 %9671, 0
  %9673 = extractvalue %dx.types.CBufRet.f32 %9671, 1
  %9674 = extractvalue %dx.types.CBufRet.f32 %9671, 2
  %9675 = fmul fast float %9663, %9672
  %9676 = fmul fast float %9663, %9673
  %9677 = fmul fast float %9663, %9674
  %9678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9679 = extractvalue %dx.types.CBufRet.f32 %9678, 0
  %9680 = extractvalue %dx.types.CBufRet.f32 %9678, 1
  %9681 = extractvalue %dx.types.CBufRet.f32 %9678, 2
  %9682 = fadd fast float %9675, %9679
  %9683 = fadd fast float %9682, %9668
  %9684 = fadd fast float %9676, %9680
  %9685 = fadd fast float %9684, %9669
  %9686 = fadd fast float %9677, %9681
  %9687 = fadd fast float %9686, %9670
  %9688 = fmul fast float %9683, %8859
  %9689 = fmul fast float %9685, %8859
  %9690 = fmul fast float %9687, %8859
  %9691 = fmul fast float %9688, %9688
  %9692 = fmul fast float %9689, %9689
  %9693 = fadd fast float %9691, %9692
  %9694 = fmul fast float %9690, %9690
  %9695 = fadd fast float %9693, %9694
  %9696 = call float @dx.op.unary.f32(i32 24, float %9695)  ; Sqrt(value)
  %9697 = extractvalue %dx.types.CBufRet.f32 %8586, 0
  %9698 = fsub fast float %9696, %9697
  %9699 = extractvalue %dx.types.CBufRet.f32 %8586, 2
  %9700 = fmul fast float %9698, %9699
  %9701 = call float @dx.op.unary.f32(i32 7, float %9700)  ; Saturate(value)
  %9702 = fadd fast float %9701, -5.000000e-01
  %9703 = fmul fast float %9702, 2.000000e+00
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 2
  %9706 = call float @dx.op.binary.f32(i32 36, float %9705, float %9703)  ; FMin(a,b)
  %9707 = fsub fast float -0.000000e+00, %9705
  %9708 = fcmp fast ogt float %9706, %9707
  br i1 %9708, label %9709, label %10021, !dx.controlflow.hints !186

; <label>:9709                                    ; preds = %9654
  %9710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9711 = extractvalue %dx.types.CBufRet.f32 %9710, 3
  %9712 = fcmp fast ogt float %9711, 0.000000e+00
  br i1 %9712, label %9713, label %9788, !dx.controlflow.hints !187

; <label>:9713                                    ; preds = %9709
  %9714 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9715 = extractvalue %dx.types.Dimensions %9714, 0
  %9716 = sitofp i32 %9715 to float
  %9717 = extractvalue %dx.types.Dimensions %9714, 1
  %9718 = sitofp i32 %9717 to float
  %9719 = fmul fast float %9658, %9716
  %9720 = fmul fast float %9659, %9718
  %9721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.f32 %9721, 1
  %9723 = fsub fast float -0.000000e+00, %9722
  %9724 = fptoui float %9723 to i32
  %9725 = fptoui float %9719 to i32
  %9726 = fptoui float %9720 to i32
  %9727 = and i32 %9724, 31
  %9728 = lshr i32 %9725, %9727
  %9729 = lshr i32 %9726, %9727
  %9730 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9724, i32 %9728, i32 %9729, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9731 = extractvalue %dx.types.ResRet.f32 %9730, 0
  %9732 = fcmp fast olt float %9731, -1.000000e+00
  %9733 = fcmp fast ogt float %9731, -1.000000e+00
  %9734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.f32 %9734, 1
  %9736 = select i1 %9733, float %9735, float 1.000000e+00
  %9737 = fadd fast float %9731, 1.000000e+00
  %9738 = fmul fast float %9736, %9737
  %9739 = call float @dx.op.unary.f32(i32 6, float %9738)  ; FAbs(value)
  %9740 = extractvalue %dx.types.CBufRet.f32 %9734, 3
  %9741 = fcmp fast oge float %9739, %9740
  %9742 = select i1 %9741, float 0x4197782600000000, float %9739
  %9743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9743, 0
  %9745 = extractvalue %dx.types.CBufRet.f32 %9743, 1
  %9746 = extractvalue %dx.types.CBufRet.f32 %9743, 2
  %9747 = select i1 %9732, float %9744, float %9665
  %9748 = select i1 %9732, float %9745, float %9666
  %9749 = select i1 %9732, float %9746, float %9667
  %9750 = fmul fast float %9747, %9662
  %9751 = fmul fast float %9748, %9662
  %9752 = fmul fast float %9749, %9662
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.CBufRet.f32 %9753, 2
  %9757 = select i1 %9732, float %9754, float %9672
  %9758 = select i1 %9732, float %9755, float %9673
  %9759 = select i1 %9732, float %9756, float %9674
  %9760 = fmul fast float %9757, %9663
  %9761 = fmul fast float %9758, %9663
  %9762 = fmul fast float %9759, %9663
  %9763 = fadd fast float %9760, %9750
  %9764 = fadd fast float %9761, %9751
  %9765 = fadd fast float %9762, %9752
  %9766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9767 = extractvalue %dx.types.CBufRet.f32 %9766, 0
  %9768 = extractvalue %dx.types.CBufRet.f32 %9766, 1
  %9769 = extractvalue %dx.types.CBufRet.f32 %9766, 2
  %9770 = select i1 %9732, float %9767, float %9679
  %9771 = select i1 %9732, float %9768, float %9680
  %9772 = select i1 %9732, float %9769, float %9681
  %9773 = fadd fast float %9763, %9770
  %9774 = fadd fast float %9764, %9771
  %9775 = fadd fast float %9765, %9772
  %9776 = fmul fast float %9773, %9742
  %9777 = fmul fast float %9774, %9742
  %9778 = fmul fast float %9775, %9742
  %9779 = fmul fast float %9776, %9776
  %9780 = fmul fast float %9777, %9777
  %9781 = fadd fast float %9779, %9780
  %9782 = fmul fast float %9778, %9778
  %9783 = fadd fast float %9781, %9782
  %9784 = call float @dx.op.unary.f32(i32 24, float %9783)  ; Sqrt(value)
  %9785 = fsub fast float %9784, %9697
  %9786 = fmul fast float %9785, %9699
  %9787 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  br label %9788

; <label>:9788                                    ; preds = %9713, %9709
  %9789 = phi float [ %9787, %9713 ], [ 1.000000e+00, %9709 ]
  %9790 = fmul fast float %9706, 5.000000e-01
  %9791 = fadd fast float %9790, 5.000000e-01
  %9792 = call float @dx.op.unary.f32(i32 22, float %9791)  ; Frc(value)
  %9793 = call float @dx.op.unary.f32(i32 27, float %9792)  ; Round_ni(value)
  %9794 = call float @dx.op.unary.f32(i32 22, float %9792)  ; Frc(value)
  %9795 = fmul fast float %9794, 2.000000e+00
  %9796 = fadd fast float %9795, -1.000000e+00
  %9797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %9658, float %9659, float %9793, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9798 = extractvalue %dx.types.ResRet.f32 %9797, 0
  %9799 = extractvalue %dx.types.ResRet.f32 %9797, 1
  %9800 = extractvalue %dx.types.ResRet.f32 %9797, 2
  %9801 = extractvalue %dx.types.ResRet.f32 %9797, 3
  %9802 = fadd fast float %9798, -5.000000e-01
  %9803 = fadd fast float %9800, -5.000000e-01
  %9804 = fmul fast float %9802, 0xBFD5555560000000
  %9805 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9803, float %9804)  ; FMad(a,b,c)
  %9806 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9799, float 0.000000e+00)  ; FMad(a,b,c)
  %9807 = fadd fast float %9806, %9801
  %9808 = fmul fast float %9802, -7.500000e-01
  %9809 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9803, float %9808)  ; FMad(a,b,c)
  %9810 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9799, float 0.000000e+00)  ; FMad(a,b,c)
  %9811 = fadd fast float %9810, %9801
  %9812 = call float @dx.op.binary.f32(i32 35, float %9805, float -1.000000e+00)  ; FMax(a,b)
  %9813 = call float @dx.op.binary.f32(i32 35, float %9807, float -1.000000e+00)  ; FMax(a,b)
  %9814 = call float @dx.op.binary.f32(i32 35, float %9809, float -1.000000e+00)  ; FMax(a,b)
  %9815 = call float @dx.op.binary.f32(i32 35, float %9811, float -1.000000e+00)  ; FMax(a,b)
  %9816 = call float @dx.op.binary.f32(i32 36, float %9812, float 1.000000e+00)  ; FMin(a,b)
  %9817 = call float @dx.op.binary.f32(i32 36, float %9813, float 1.000000e+00)  ; FMin(a,b)
  %9818 = call float @dx.op.binary.f32(i32 36, float %9814, float 1.000000e+00)  ; FMin(a,b)
  %9819 = call float @dx.op.binary.f32(i32 36, float %9815, float 1.000000e+00)  ; FMin(a,b)
  %9820 = fcmp fast olt float %9816, 0x3FEFFF8020000000
  br i1 %9820, label %9821, label %9936, !dx.controlflow.hints !188

; <label>:9821                                    ; preds = %9788
  %9822 = extractvalue %dx.types.CBufRet.f32 %9704, 3
  %9823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9824 = extractvalue %dx.types.CBufRet.f32 %9823, 0
  %9825 = extractvalue %dx.types.CBufRet.f32 %9823, 1
  %9826 = extractvalue %dx.types.CBufRet.f32 %9823, 2
  %9827 = extractvalue %dx.types.CBufRet.f32 %9823, 3
  %9828 = fsub fast float %9824, %9816
  %9829 = fsub fast float %9825, %9817
  %9830 = fsub fast float %9826, %9818
  %9831 = fsub fast float %9827, %9819
  %9832 = fmul fast float %9828, %9822
  %9833 = fmul fast float %9829, %9822
  %9834 = fmul fast float %9830, %9822
  %9835 = fmul fast float %9831, %9822
  %9836 = fadd fast float %9832, %9816
  %9837 = fadd fast float %9833, %9817
  %9838 = fsub fast float -0.000000e+00, %9837
  %9839 = fadd fast float %9834, %9818
  %9840 = fadd fast float %9835, %9819
  %9841 = fmul fast float %9836, %9836
  %9842 = fsub fast float %9837, %9841
  %9843 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9842)  ; FMax(a,b)
  %9844 = fdiv fast float 1.000000e+00, %9843
  %9845 = fmul fast float %9837, %9836
  %9846 = fsub fast float %9839, %9845
  %9847 = fsub fast float %9796, %9836
  %9848 = fmul fast float %9796, %9796
  %9849 = fsub fast float %9848, %9837
  %9850 = fmul fast float %9847, %9844
  %9851 = fmul fast float %9850, %9846
  %9852 = fsub fast float %9849, %9851
  %9853 = fmul fast float %9837, %9837
  %9854 = fsub fast float %9840, %9853
  %9855 = fmul fast float %9846, %9846
  %9856 = fmul fast float %9855, %9844
  %9857 = fsub fast float %9854, %9856
  %9858 = fdiv fast float %9852, %9857
  %9859 = fmul fast float %9846, %9858
  %9860 = fsub fast float %9847, %9859
  %9861 = fmul fast float %9860, %9844
  %9862 = fmul fast float %9861, %9836
  %9863 = fsub fast float 1.000000e+00, %9862
  %9864 = fmul fast float %9837, %9858
  %9865 = fsub fast float %9863, %9864
  %9866 = fmul fast float %9861, %9861
  %9867 = fmul fast float %9858, 4.000000e+00
  %9868 = fmul fast float %9867, %9865
  %9869 = fsub fast float %9866, %9868
  %9870 = call float @dx.op.unary.f32(i32 24, float %9869)  ; Sqrt(value)
  %9871 = fcmp fast oge float %9861, 0.000000e+00
  %9872 = fsub fast float -0.000000e+00, %9870
  %9873 = select i1 %9871, float %9872, float %9870
  %9874 = fsub fast float %9873, %9861
  %9875 = fdiv fast float %9874, %9858
  %9876 = fdiv fast float %9865, %9874
  %9877 = fmul fast float %9875, 5.000000e-01
  %9878 = fmul fast float %9876, 2.000000e+00
  %9879 = select i1 %9871, float %9877, float %9878
  %9880 = select i1 %9871, float %9878, float %9877
  %9881 = call float @dx.op.binary.f32(i32 35, float %9879, float %9880)  ; FMax(a,b)
  %9882 = call float @dx.op.binary.f32(i32 36, float %9879, float %9880)  ; FMin(a,b)
  %9883 = fcmp fast ogt float %9796, %9882
  br i1 %9883, label %9884, label %9894

; <label>:9884                                    ; preds = %9821
  %9885 = fsub fast float %9796, %9882
  %9886 = fsub fast float %9881, %9882
  %9887 = fmul fast float %9885, %9886
  %9888 = fmul fast float %9881, %9796
  %9889 = fadd fast float %9881, %9796
  %9890 = fmul fast float %9889, %9836
  %9891 = fadd fast float %9888, %9837
  %9892 = fsub fast float %9891, %9890
  %9893 = fdiv fast float %9892, %9887
  br label %9894

; <label>:9894                                    ; preds = %9884, %9821
  %9895 = phi float [ %9893, %9884 ], [ 0.000000e+00, %9821 ]
  %9896 = fcmp fast ogt float %9796, %9881
  %9897 = fsub fast float %9796, %9881
  br i1 %9896, label %9898, label %9908

; <label>:9898                                    ; preds = %9894
  %9899 = fsub fast float %9881, %9882
  %9900 = fmul fast float %9899, %9897
  %9901 = fmul fast float %9882, %9796
  %9902 = fadd fast float %9882, %9796
  %9903 = fmul fast float %9902, %9836
  %9904 = fsub fast float %9838, %9901
  %9905 = fadd fast float %9904, %9903
  %9906 = fdiv fast float %9905, %9900
  %9907 = fadd fast float %9906, %9895
  br label %9908

; <label>:9908                                    ; preds = %9898, %9894
  %9909 = phi float [ %9907, %9898 ], [ %9895, %9894 ]
  %9910 = fsub fast float %9796, %9882
  %9911 = fmul fast float %9910, %9897
  %9912 = fmul fast float %9882, %9881
  %9913 = fadd fast float %9882, %9881
  %9914 = fmul fast float %9913, %9836
  %9915 = fadd fast float %9912, %9837
  %9916 = fsub fast float %9915, %9914
  %9917 = fdiv fast float %9916, %9911
  %9918 = call float @dx.op.unary.f32(i32 7, float %9909)  ; Saturate(value)
  %9919 = fcmp fast oeq float %8587, 0.000000e+00
  %9920 = extractvalue %dx.types.CBufRet.f32 %9704, 0
  %9921 = fcmp fast oeq float %9920, 0.000000e+00
  %9922 = or i1 %9919, %9921
  %9923 = fmul fast float %9920, 2.000000e+00
  %9924 = fadd fast float %9705, %9706
  %9925 = fdiv fast float %9924, %9923
  %9926 = call float @dx.op.unary.f32(i32 7, float %9925)  ; Saturate(value)
  %9927 = fmul fast float %9926, 2.000000e+00
  %9928 = fsub fast float 3.000000e+00, %9927
  %9929 = fmul fast float %9926, %9926
  %9930 = fmul fast float %9929, %9928
  %9931 = select i1 %9922, float 1.000000e+00, float %9930
  %9932 = fmul fast float %9917, %8587
  %9933 = fadd fast float %9918, %9932
  %9934 = call float @dx.op.unary.f32(i32 7, float %9933)  ; Saturate(value)
  %9935 = fmul fast float %9931, %9934
  br label %9936

; <label>:9936                                    ; preds = %9908, %9788
  %9937 = phi float [ %9935, %9908 ], [ 0.000000e+00, %9788 ]
  %9938 = fsub fast float 1.000000e+00, %9937
  %9939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %9658, float %9659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9940 = extractvalue %dx.types.ResRet.f32 %9939, 0
  %9941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9942 = extractvalue %dx.types.CBufRet.i32 %9941, 2
  %9943 = icmp eq i32 %9942, 0
  br i1 %9943, label %9949, label %9944

; <label>:9944                                    ; preds = %9936
  %9945 = call float @dx.op.unary.f32(i32 7, float %9937)  ; Saturate(value)
  %9946 = fadd fast float %9940, -1.000000e+00
  %9947 = fmul fast float %9945, %9946
  %9948 = fadd fast float %9947, 1.000000e+00
  br label %9949

; <label>:9949                                    ; preds = %9944, %9936
  %9950 = phi float [ %9948, %9944 ], [ %9938, %9936 ]
  br i1 %9712, label %9951, label %9969

; <label>:9951                                    ; preds = %9949
  %9952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9953 = extractvalue %dx.types.CBufRet.f32 %9952, 1
  %9954 = fsub fast float %9789, %9953
  %9955 = call float @dx.op.unary.f32(i32 7, float %9954)  ; Saturate(value)
  %9956 = fsub fast float %9789, %9711
  %9957 = call float @dx.op.unary.f32(i32 7, float %9956)  ; Saturate(value)
  %9958 = fsub fast float %9955, %9957
  %9959 = fsub fast float %9791, %9957
  %9960 = fdiv fast float %9959, %9958
  %9961 = call float @dx.op.unary.f32(i32 7, float %9960)  ; Saturate(value)
  %9962 = fmul fast float %9961, 2.000000e+00
  %9963 = fsub fast float 3.000000e+00, %9962
  %9964 = fsub fast float %9940, %9950
  %9965 = fmul fast float %9961, %9961
  %9966 = fmul fast float %9965, %9964
  %9967 = fmul fast float %9966, %9963
  %9968 = fadd fast float %9967, %9950
  br label %9969

; <label>:9969                                    ; preds = %9951, %9949
  %9970 = phi float [ %9968, %9951 ], [ %9950, %9949 ]
  %9971 = call float @dx.op.binary.f32(i32 35, float %9940, float %9970)  ; FMax(a,b)
  %9972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9973 = extractvalue %dx.types.CBufRet.i32 %9972, 2
  %9974 = and i32 %9973, 1
  %9975 = icmp eq i32 %9974, 0
  %9976 = fcmp fast une float %9971, 1.000000e+00
  %9977 = and i1 %9976, %9975
  br i1 %9977, label %9978, label %9997

; <label>:9978                                    ; preds = %9969
  %9979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %9658, float %9659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9980 = extractvalue %dx.types.ResRet.f32 %9979, 0
  %9981 = extractvalue %dx.types.ResRet.f32 %9979, 1
  %9982 = extractvalue %dx.types.ResRet.f32 %9979, 2
  %9983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9984 = extractvalue %dx.types.CBufRet.f32 %9983, 1
  %9985 = fmul fast float %9984, %9980
  %9986 = fmul fast float %9984, %9981
  %9987 = fmul fast float %9984, %9982
  %9988 = fcmp fast ogt float %9940, 0x3FEFFF2E40000000
  %9989 = fsub fast float 1.000000e+00, %9971
  %9990 = fsub fast float 1.000000e+00, %9940
  %9991 = fdiv fast float %9989, %9990
  %9992 = call float @dx.op.unary.f32(i32 7, float %9991)  ; Saturate(value)
  %9993 = select i1 %9988, float 0.000000e+00, float %9992
  %9994 = fmul fast float %9985, %9993
  %9995 = fmul fast float %9986, %9993
  %9996 = fmul fast float %9987, %9993
  br label %9997

; <label>:9997                                    ; preds = %9978, %9969
  %9998 = phi float [ 0.000000e+00, %9969 ], [ %9994, %9978 ]
  %9999 = phi float [ 0.000000e+00, %9969 ], [ %9995, %9978 ]
  %10000 = phi float [ 0.000000e+00, %9969 ], [ %9996, %9978 ]
  %10001 = fmul fast float %9998, %8575
  %10002 = fmul fast float %9999, %8575
  %10003 = fmul fast float %10000, %8575
  %10004 = fmul fast float %9971, %9633
  %10005 = call float @dx.op.dot3.f32(i32 55, float %9971, float %9971, float %9971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10006 = call float @dx.op.dot3.f32(i32 55, float %10001, float %10002, float %10003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10007 = select i1 %280, float %10005, float %9971
  %10008 = select i1 %280, float 1.000000e+00, float %9971
  %10009 = select i1 %280, float %10006, float %10001
  %10010 = select i1 %280, float 0.000000e+00, float %10002
  %10011 = select i1 %280, float 0.000000e+00, float %10003
  %10012 = fmul fast float %10007, %9645
  %10013 = fmul fast float %10007, %9646
  %10014 = fmul fast float %10008, %9647
  %10015 = fadd fast float %10012, %10009
  %10016 = fadd fast float %10013, %10010
  %10017 = fadd fast float %10011, %10014
  %10018 = fmul fast float %10007, %9648
  %10019 = fmul fast float %10007, %9649
  %10020 = fmul fast float %10008, %9650
  br label %10021

; <label>:10021                                   ; preds = %9997, %9654, %9623, %8855
  %10022 = phi float [ %8860, %8855 ], [ %9645, %9623 ], [ %10015, %9997 ], [ %9645, %9654 ]
  %10023 = phi float [ %8861, %8855 ], [ %9646, %9623 ], [ %10016, %9997 ], [ %9646, %9654 ]
  %10024 = phi float [ %8862, %8855 ], [ %9647, %9623 ], [ %10017, %9997 ], [ %9647, %9654 ]
  %10025 = phi float [ %8863, %8855 ], [ %9648, %9623 ], [ %10018, %9997 ], [ %9648, %9654 ]
  %10026 = phi float [ %8864, %8855 ], [ %9649, %9623 ], [ %10019, %9997 ], [ %9649, %9654 ]
  %10027 = phi float [ %8865, %8855 ], [ %9650, %9623 ], [ %10020, %9997 ], [ %9650, %9654 ]
  %10028 = phi float [ %8866, %8855 ], [ %9633, %9623 ], [ %10004, %9997 ], [ %9633, %9654 ]
  %10029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10030 = extractvalue %dx.types.CBufRet.f32 %10029, 2
  %10031 = extractvalue %dx.types.CBufRet.f32 %10029, 3
  %10032 = fmul fast float %10030, %125
  %10033 = fmul fast float %10031, %126
  %10034 = call float @dx.op.unary.f32(i32 7, float %10032)  ; Saturate(value)
  %10035 = call float @dx.op.unary.f32(i32 7, float %10033)  ; Saturate(value)
  %10036 = select i1 %8597, i32 2, i32 0
  %10037 = or i32 %10036, 1
  %10038 = uitofp i32 %10037 to float
  %10039 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10034, float %10035, float %10038, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10040 = extractvalue %dx.types.ResRet.f32 %10039, 0
  %10041 = extractvalue %dx.types.ResRet.f32 %10039, 1
  %10042 = extractvalue %dx.types.ResRet.f32 %10039, 2
  %10043 = extractvalue %dx.types.ResRet.f32 %10039, 3
  %10044 = add nuw nsw i32 %10036, 2
  %10045 = uitofp i32 %10044 to float
  %10046 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10034, float %10035, float %10045, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10047 = extractvalue %dx.types.ResRet.f32 %10046, 0
  %10048 = extractvalue %dx.types.ResRet.f32 %10046, 1
  %10049 = extractvalue %dx.types.ResRet.f32 %10046, 2
  %10050 = extractvalue %dx.types.ResRet.f32 %10046, 3
  %10051 = call float @dx.op.binary.f32(i32 35, float %10041, float %10042)  ; FMax(a,b)
  %10052 = call float @dx.op.binary.f32(i32 35, float %10040, float %10051)  ; FMax(a,b)
  %10053 = call float @dx.op.binary.f32(i32 35, float %10052, float %10043)  ; FMax(a,b)
  %10054 = call float @dx.op.binary.f32(i32 36, float %10048, float %10049)  ; FMin(a,b)
  %10055 = call float @dx.op.binary.f32(i32 36, float %10047, float %10054)  ; FMin(a,b)
  %10056 = call float @dx.op.binary.f32(i32 36, float %10055, float %10050)  ; FMin(a,b)
  %10057 = fmul fast float %10053, 2.550000e+02
  %10058 = fadd fast float %10057, 0x3F70101020000000
  %10059 = fptoui float %10058 to i32
  %10060 = fmul fast float %10056, 2.550000e+02
  %10061 = fadd fast float %10060, 0x3F70101020000000
  %10062 = fptoui float %10061 to i32
  %10063 = icmp ult i32 %10059, %10062
  br i1 %10063, label %10064, label %10233

; <label>:10064                                   ; preds = %10021
  %10065 = fcmp fast ogt float %111, 9.843750e-01
  %10066 = fadd fast float %8859, -4.000000e+00
  %10067 = select i1 %10065, float -4.000000e+00, float %10066
  %10068 = call float @dx.op.binary.f32(i32 35, float %10067, float 0.000000e+00)  ; FMax(a,b)
  %10069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10070 = extractvalue %dx.types.CBufRet.f32 %10069, 0
  %10071 = fadd fast float %10070, %10068
  %10072 = extractvalue %dx.types.CBufRet.f32 %10069, 2
  %10073 = fmul fast float %10071, %10072
  %10074 = call float @dx.op.unary.f32(i32 23, float %10073)  ; Log(value)
  %10075 = extractvalue %dx.types.CBufRet.f32 %10069, 3
  %10076 = fmul fast float %10075, %10074
  %10077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10078 = extractvalue %dx.types.CBufRet.f32 %10077, 2
  %10079 = fmul fast float %10076, %10078
  %10080 = call float @dx.op.unary.f32(i32 7, float %10079)  ; Saturate(value)
  %10081 = uitofp i32 %10059 to float
  %10082 = uitofp i32 %10062 to float
  %10083 = fadd fast float %10081, 5.000000e-01
  %10084 = fadd fast float %10082, 5.000000e-01
  %10085 = fmul fast float %10078, %10083
  %10086 = fmul fast float %10078, %10084
  %10087 = fadd fast float %10085, 0x3F0FFB4800000000
  %10088 = fadd fast float %10086, 0xBF0FFB4800000000
  %10089 = call float @dx.op.binary.f32(i32 35, float %10080, float %10087)  ; FMax(a,b)
  %10090 = call float @dx.op.binary.f32(i32 36, float %10089, float %10088)  ; FMin(a,b)
  %10091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10092 = extractvalue %dx.types.CBufRet.f32 %10091, 1
  %10093 = extractvalue %dx.types.CBufRet.f32 %10091, 2
  %10094 = extractvalue %dx.types.CBufRet.f32 %10091, 0
  %10095 = select i1 %8597, float %10094, float 0.000000e+00
  %10096 = fmul fast float %10092, %10090
  %10097 = fadd fast float %10095, %10096
  %10098 = fadd fast float %10095, %10093
  %10099 = fsub fast float %10092, %10093
  %10100 = fadd fast float %10099, %10095
  %10101 = call float @dx.op.binary.f32(i32 35, float %10097, float %10098)  ; FMax(a,b)
  %10102 = call float @dx.op.binary.f32(i32 36, float %10101, float %10100)  ; FMin(a,b)
  %10103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10034, float %10035, float %10102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10104 = extractvalue %dx.types.ResRet.f32 %10103, 0
  %10105 = extractvalue %dx.types.ResRet.f32 %10103, 1
  %10106 = extractvalue %dx.types.ResRet.f32 %10103, 2
  %10107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10108 = extractvalue %dx.types.CBufRet.i32 %10107, 0
  %10109 = extractvalue %dx.types.CBufRet.i32 %10107, 1
  %10110 = uitofp i32 %10108 to float
  %10111 = uitofp i32 %10109 to float
  %10112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10113 = extractvalue %dx.types.CBufRet.f32 %10112, 0
  %10114 = extractvalue %dx.types.CBufRet.f32 %10112, 1
  %10115 = fmul fast float %10110, %10034
  %10116 = fmul fast float %10111, %10035
  %10117 = fadd fast float %10115, -5.000000e-01
  %10118 = fadd fast float %10116, -5.000000e-01
  %10119 = call float @dx.op.unary.f32(i32 22, float %10117)  ; Frc(value)
  %10120 = call float @dx.op.unary.f32(i32 22, float %10118)  ; Frc(value)
  %10121 = fmul fast float %10119, %10119
  %10122 = fmul fast float %10121, %10119
  %10123 = fsub fast float 3.000000e+00, %10119
  %10124 = fmul fast float %10121, %10123
  %10125 = fmul fast float %10119, 3.000000e+00
  %10126 = fmul fast float %10122, 3.000000e+00
  %10127 = fmul fast float %10121, 6.000000e+00
  %10128 = fsub fast float %10126, %10127
  %10129 = fadd fast float %10128, 4.000000e+00
  %10130 = fmul fast float %10129, 0x3FC5555560000000
  %10131 = fmul fast float %10122, -3.000000e+00
  %10132 = fadd fast float %10121, %10119
  %10133 = fmul fast float %10132, 3.000000e+00
  %10134 = fadd fast float %10131, 1.000000e+00
  %10135 = fadd fast float %10134, %10133
  %10136 = fmul fast float %10122, 0x3FC5555560000000
  %10137 = fmul fast float %10120, %10120
  %10138 = fmul fast float %10137, %10120
  %10139 = fsub fast float 3.000000e+00, %10120
  %10140 = fmul fast float %10137, %10139
  %10141 = fmul fast float %10120, 3.000000e+00
  %10142 = fmul fast float %10138, 3.000000e+00
  %10143 = fmul fast float %10137, 6.000000e+00
  %10144 = fsub fast float %10142, %10143
  %10145 = fadd fast float %10144, 4.000000e+00
  %10146 = fmul fast float %10145, 0x3FC5555560000000
  %10147 = fmul fast float %10138, -3.000000e+00
  %10148 = fadd fast float %10137, %10120
  %10149 = fmul fast float %10148, 3.000000e+00
  %10150 = fadd fast float %10147, 1.000000e+00
  %10151 = fadd fast float %10150, %10149
  %10152 = fmul fast float %10138, 0x3FC5555560000000
  %10153 = fadd fast float %10119, 1.000000e+00
  %10154 = fsub fast float 1.000000e+00, %10125
  %10155 = fadd fast float %10154, %10124
  %10156 = fadd fast float %10155, %10129
  %10157 = fmul fast float %10156, 0x3FC5555560000000
  %10158 = fdiv fast float %10130, %10157
  %10159 = fsub fast float %10153, %10158
  %10160 = fsub fast float 1.000000e+00, %10119
  %10161 = fadd fast float %10135, %10122
  %10162 = fmul fast float %10161, 0x3FC5555560000000
  %10163 = fdiv fast float %10136, %10162
  %10164 = fadd fast float %10160, %10163
  %10165 = fadd fast float %10120, 1.000000e+00
  %10166 = fsub fast float 1.000000e+00, %10141
  %10167 = fadd fast float %10166, %10140
  %10168 = fadd fast float %10167, %10145
  %10169 = fmul fast float %10168, 0x3FC5555560000000
  %10170 = fdiv fast float %10146, %10169
  %10171 = fsub fast float %10165, %10170
  %10172 = fsub fast float 1.000000e+00, %10120
  %10173 = fadd fast float %10151, %10138
  %10174 = fmul fast float %10173, 0x3FC5555560000000
  %10175 = fdiv fast float %10152, %10174
  %10176 = fadd fast float %10175, %10172
  %10177 = fmul fast float %10159, %10113
  %10178 = fsub fast float %10034, %10177
  %10179 = fmul fast float %10164, %10113
  %10180 = fadd fast float %10179, %10034
  %10181 = fmul fast float %10176, %10114
  %10182 = fadd fast float %10181, %10035
  %10183 = fmul fast float %10171, %10114
  %10184 = fsub fast float %10035, %10183
  %10185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10178, float %10184, float %10102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10186 = extractvalue %dx.types.ResRet.f32 %10185, 0
  %10187 = extractvalue %dx.types.ResRet.f32 %10185, 1
  %10188 = extractvalue %dx.types.ResRet.f32 %10185, 2
  %10189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10180, float %10184, float %10102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10190 = extractvalue %dx.types.ResRet.f32 %10189, 0
  %10191 = extractvalue %dx.types.ResRet.f32 %10189, 1
  %10192 = extractvalue %dx.types.ResRet.f32 %10189, 2
  %10193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10178, float %10182, float %10102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10194 = extractvalue %dx.types.ResRet.f32 %10193, 0
  %10195 = extractvalue %dx.types.ResRet.f32 %10193, 1
  %10196 = extractvalue %dx.types.ResRet.f32 %10193, 2
  %10197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10180, float %10182, float %10102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10198 = extractvalue %dx.types.ResRet.f32 %10197, 0
  %10199 = extractvalue %dx.types.ResRet.f32 %10197, 1
  %10200 = extractvalue %dx.types.ResRet.f32 %10197, 2
  %10201 = fsub fast float %10194, %10186
  %10202 = fsub fast float %10195, %10187
  %10203 = fsub fast float %10196, %10188
  %10204 = fmul fast float %10201, %10174
  %10205 = fmul fast float %10202, %10174
  %10206 = fmul fast float %10203, %10174
  %10207 = fadd fast float %10204, %10186
  %10208 = fadd fast float %10205, %10187
  %10209 = fadd fast float %10206, %10188
  %10210 = fsub fast float %10198, %10190
  %10211 = fsub fast float %10199, %10191
  %10212 = fsub fast float %10200, %10192
  %10213 = fmul fast float %10210, %10174
  %10214 = fmul fast float %10211, %10174
  %10215 = fmul fast float %10212, %10174
  %10216 = fsub fast float %10190, %10207
  %10217 = fadd fast float %10216, %10213
  %10218 = fsub fast float %10191, %10208
  %10219 = fadd fast float %10218, %10214
  %10220 = fsub fast float %10192, %10209
  %10221 = fadd fast float %10220, %10215
  %10222 = fmul fast float %10217, %10162
  %10223 = fmul fast float %10219, %10162
  %10224 = fmul fast float %10221, %10162
  %10225 = fadd fast float %10222, %10207
  %10226 = fadd fast float %10223, %10208
  %10227 = fadd fast float %10224, %10209
  %10228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10229 = extractvalue %dx.types.CBufRet.f32 %10228, 1
  %10230 = fmul fast float %10225, %10229
  %10231 = fmul fast float %10226, %10229
  %10232 = fmul fast float %10227, %10229
  br label %10233

; <label>:10233                                   ; preds = %10064, %10021
  %10234 = phi float [ %10104, %10064 ], [ 1.000000e+00, %10021 ]
  %10235 = phi float [ %10105, %10064 ], [ 1.000000e+00, %10021 ]
  %10236 = phi float [ %10106, %10064 ], [ 1.000000e+00, %10021 ]
  %10237 = phi float [ %10230, %10064 ], [ 0.000000e+00, %10021 ]
  %10238 = phi float [ %10231, %10064 ], [ 0.000000e+00, %10021 ]
  %10239 = phi float [ %10232, %10064 ], [ 0.000000e+00, %10021 ]
  %10240 = fmul fast float %10237, %8575
  %10241 = fmul fast float %10238, %8575
  %10242 = fmul fast float %10239, %8575
  %10243 = fmul fast float %10234, %10028
  %10244 = call float @dx.op.dot3.f32(i32 55, float %10234, float %10235, float %10236, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10245 = call float @dx.op.dot3.f32(i32 55, float %10240, float %10241, float %10242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10246 = select i1 %280, float %10244, float %10234
  %10247 = select i1 %280, float %10244, float %10235
  %10248 = select i1 %280, float 1.000000e+00, float %10236
  %10249 = select i1 %280, float %10245, float %10240
  %10250 = select i1 %280, float 0.000000e+00, float %10241
  %10251 = select i1 %280, float 0.000000e+00, float %10242
  %10252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10253 = extractvalue %dx.types.CBufRet.i32 %10252, 3
  %10254 = and i32 %10253, 3
  %10255 = icmp ne i32 %10254, 0
  %10256 = and i32 %10253, 4
  %10257 = icmp ne i32 %10256, 0
  %10258 = and i1 %10255, %10257
  %10259 = and i1 %280, %10258
  br i1 %10259, label %10260, label %10266

; <label>:10260                                   ; preds = %10233
  %10261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10262 = extractvalue %dx.types.CBufRet.f32 %10261, 1
  %10263 = fadd fast float %10243, -1.000000e+00
  %10264 = fmul fast float %10262, %10263
  %10265 = fadd fast float %10264, 1.000000e+00
  br label %10266

; <label>:10266                                   ; preds = %10260, %10233
  %10267 = phi float [ %10265, %10260 ], [ %10243, %10233 ]
  %10268 = fadd fast float %10025, %10022
  %10269 = fmul fast float %10246, %10268
  %10270 = fadd fast float %10269, %10249
  %10271 = fadd fast float %10026, %10023
  %10272 = fmul fast float %10247, %10271
  %10273 = fadd fast float %10272, %10250
  %10274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10275 = extractvalue %dx.types.CBufRet.f32 %10274, 0
  br i1 %280, label %10276, label %10300

; <label>:10276                                   ; preds = %10266
  %10277 = fadd fast float %10270, %10273
  %10278 = fmul fast float %10275, %10277
  %10279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10280 = extractvalue %dx.types.CBufRet.f32 %10279, 3
  %10281 = extractvalue %dx.types.CBufRet.f32 %8579, 1
  %10282 = fsub fast float %8584, %8578
  %10283 = fadd fast float %10282, %8585
  %10284 = fsub fast float %10283, %10281
  %10285 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %10286 = fmul fast float %10284, %10285
  %10287 = call float @dx.op.unary.f32(i32 7, float %10286)  ; Saturate(value)
  %10288 = fsub fast float %10287, %10280
  %10289 = fmul fast float %10288, %10267
  %10290 = fadd fast float %10289, %10280
  %10291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10292 = extractvalue %dx.types.CBufRet.f32 %10291, 0
  %10293 = fsub fast float %10290, %10292
  %10294 = fmul fast float %10293, 1.000000e+01
  %10295 = call float @dx.op.unary.f32(i32 7, float %10294)  ; Saturate(value)
  %10296 = fsub fast float %4104, %8575
  %10297 = fmul fast float %10295, %10296
  %10298 = fadd fast float %10297, %8575
  %10299 = fmul fast float %10298, %10290
  br label %10324

; <label>:10300                                   ; preds = %10266
  %10301 = fadd fast float %10027, %10024
  %10302 = fmul fast float %10248, %10301
  %10303 = fadd fast float %10302, %10251
  %10304 = fmul fast float %10275, %10270
  %10305 = fmul fast float %10275, %10273
  %10306 = fmul fast float %10275, %10303
  %10307 = call float @dx.op.binary.f32(i32 35, float %10305, float %10306)  ; FMax(a,b)
  %10308 = call float @dx.op.binary.f32(i32 35, float %10304, float %10307)  ; FMax(a,b)
  %10309 = call float @dx.op.binary.f32(i32 35, float %10308, float %8575)  ; FMax(a,b)
  %10310 = fcmp fast ugt float %10309, 0x3F10000000000000
  br i1 %10310, label %10312, label %10311

; <label>:10311                                   ; preds = %10300
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10312

; <label>:10312                                   ; preds = %10311, %10300
  %10313 = add i32 %64, 356
  %10314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10313, i32 undef)  ; BufferLoad(srv,index,wot)
  %10315 = extractvalue %dx.types.ResRet.i32 %10314, 0
  %10316 = and i32 %10315, 32
  %10317 = icmp eq i32 %10316, 0
  br i1 %10317, label %10324, label %10318

; <label>:10318                                   ; preds = %10312
  %10319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10320 = extractvalue %dx.types.CBufRet.f32 %10319, 0
  %10321 = fmul fast float %10320, 0x3FE99999A0000000
  %10322 = fadd fast float %10320, %10304
  %10323 = fadd fast float %10321, %10306
  br label %10324

; <label>:10324                                   ; preds = %10318, %10312, %10276
  %10325 = phi float [ %10278, %10276 ], [ %10322, %10318 ], [ %10304, %10312 ]
  %10326 = phi float [ %10299, %10276 ], [ %10305, %10318 ], [ %10305, %10312 ]
  %10327 = phi float [ %10298, %10276 ], [ %10323, %10318 ], [ %10306, %10312 ]
  %10328 = phi float [ %10298, %10276 ], [ %8575, %10318 ], [ %8575, %10312 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10329 = call float @dx.op.binary.f32(i32 36, float %10325, float 3.225500e+04)  ; FMin(a,b)
  %10330 = call float @dx.op.binary.f32(i32 36, float %10326, float 3.225500e+04)  ; FMin(a,b)
  %10331 = call float @dx.op.binary.f32(i32 36, float %10327, float 3.225500e+04)  ; FMin(a,b)
  %10332 = call float @dx.op.binary.f32(i32 36, float %10328, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10329)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!75 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0]}
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
!95 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 12, i8 0, !86}
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

