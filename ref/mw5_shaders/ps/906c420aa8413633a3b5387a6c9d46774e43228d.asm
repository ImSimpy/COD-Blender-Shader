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
; shader hash: de1ac8d35ff50b3f161471eea672796c
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
  br i1 %3718, label %4233, label %3719

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
  br i1 %3780, label %4202, label %3781

; <label>:3781                                    ; preds = %3719
  br label %3782

; <label>:3782                                    ; preds = %3903, %3781
  %3783 = phi i32 [ %3805, %3903 ], [ %3779, %3781 ]
  %3784 = phi float [ %3904, %3903 ], [ 0.000000e+00, %3781 ]
  %3785 = phi float [ %3905, %3903 ], [ %3663, %3781 ]
  %3786 = phi float [ %3906, %3903 ], [ %3642, %3781 ]
  %3787 = phi float [ %3907, %3903 ], [ %3641, %3781 ]
  %3788 = phi float [ %3908, %3903 ], [ 0.000000e+00, %3781 ]
  %3789 = phi float [ %3909, %3903 ], [ %3685, %3781 ]
  %3790 = phi float [ %3910, %3903 ], [ %3687, %3781 ]
  %3791 = phi float [ %3911, %3903 ], [ %3689, %3781 ]
  %3792 = phi float [ %3912, %3903 ], [ %3715, %3781 ]
  %3793 = phi float [ %3913, %3903 ], [ %3716, %3781 ]
  %3794 = phi float [ %3914, %3903 ], [ %3717, %3781 ]
  %3795 = phi float [ %3915, %3903 ], [ %3640, %3781 ]
  %3796 = phi float [ %3916, %3903 ], [ %3639, %3781 ]
  %3797 = phi float [ %3917, %3903 ], [ 0.000000e+00, %3781 ]
  %3798 = phi float [ %3918, %3903 ], [ %3638, %3781 ]
  %3799 = phi float [ %3919, %3903 ], [ %3670, %3781 ]
  %3800 = phi float [ %3920, %3903 ], [ %3671, %3781 ]
  %3801 = phi float [ %3921, %3903 ], [ %3672, %3781 ]
  %3802 = shl nuw nsw i32 %3783, 2
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = lshr i32 %3804, 16
  %3806 = shl i32 %3804, 8
  %3807 = and i32 %3806, 16776960
  %3808 = or i32 %3807, 48
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = or i32 %3807, 64
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.i32 %3814, 1
  %3817 = or i32 %3807, 80
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3821 = or i32 %3807, 96
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3827 = or i32 %3807, 112
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3830 = or i32 %3807, 128
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = or i32 %3807, 144
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = or i32 %3807, 160
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3848 = or i32 %3807, 192
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = or i32 %3807, 208
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = or i32 %3807, 248
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3864 = or i32 %3807, 16
  %3865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.ResRet.f32 %3865, 2
  %3869 = extractvalue %dx.types.ResRet.f32 %3865, 3
  %3870 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3871 = or i32 %3807, 32
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %68, float %69, float %70, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = call float @dx.op.unary.f32(i32 27, float %3863)  ; Round_ni(value)
  %3879 = call float @dx.op.unary.f32(i32 6, float %3878)  ; FAbs(value)
  %3880 = call float @dx.op.unary.f32(i32 27, float %3870)  ; Round_ni(value)
  %3881 = call float @dx.op.unary.f32(i32 6, float %3880)  ; FAbs(value)
  %3882 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3883 = call float @dx.op.unary.f32(i32 27, float %3882)  ; Round_ni(value)
  %3884 = fadd fast float %3881, %3879
  %3885 = fadd fast float %3884, %3883
  %3886 = fcmp fast oeq float %3885, 0.000000e+00
  %3887 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %3726, float %3727, float %3728, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3888 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %3726, float %3727, float %3728, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %3729, float %3730, float %3731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %3729, float %3730, float %3731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = fsub fast float %3887, %3863
  %3892 = fsub fast float %3889, %3863
  %3893 = fsub fast float %3888, %3870
  %3894 = fsub fast float %3890, %3870
  %3895 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float %135, float %137, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3898 = fadd fast float %3897, %3895
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3901 = fcmp fast ogt float %3899, %3900
  %3902 = and i1 %3886, %3901
  br i1 %3902, label %3923, label %3903

; <label>:3903                                    ; preds = %4188, %4006, %3923, %3782
  %3904 = phi float [ %3784, %3923 ], [ %4009, %4006 ], [ %4009, %4188 ], [ %3784, %3782 ]
  %3905 = phi float [ %3785, %3923 ], [ %3785, %4006 ], [ %4163, %4188 ], [ %3785, %3782 ]
  %3906 = phi float [ %3786, %3923 ], [ %3786, %4006 ], [ %4161, %4188 ], [ %3786, %3782 ]
  %3907 = phi float [ %3787, %3923 ], [ %3787, %4006 ], [ %4133, %4188 ], [ %3787, %3782 ]
  %3908 = phi float [ %3788, %3923 ], [ %3788, %4006 ], [ %4131, %4188 ], [ %3788, %3782 ]
  %3909 = phi float [ %3789, %3923 ], [ %3789, %4006 ], [ %4198, %4188 ], [ %3789, %3782 ]
  %3910 = phi float [ %3790, %3923 ], [ %3790, %4006 ], [ %4199, %4188 ], [ %3790, %3782 ]
  %3911 = phi float [ %3791, %3923 ], [ %3791, %4006 ], [ %4200, %4188 ], [ %3791, %3782 ]
  %3912 = phi float [ %3792, %3923 ], [ %3792, %4006 ], [ %4112, %4188 ], [ %3792, %3782 ]
  %3913 = phi float [ %3793, %3923 ], [ %3793, %4006 ], [ %4113, %4188 ], [ %3793, %3782 ]
  %3914 = phi float [ %3794, %3923 ], [ %3794, %4006 ], [ %4114, %4188 ], [ %3794, %3782 ]
  %3915 = phi float [ %3795, %3923 ], [ %3795, %4006 ], [ %4141, %4188 ], [ %3795, %3782 ]
  %3916 = phi float [ %3796, %3923 ], [ %3796, %4006 ], [ %4138, %4188 ], [ %3796, %3782 ]
  %3917 = phi float [ %3797, %3923 ], [ %3797, %4006 ], [ %4135, %4188 ], [ %3797, %3782 ]
  %3918 = phi float [ %3798, %3923 ], [ %3798, %4006 ], [ %4129, %4188 ], [ %3798, %3782 ]
  %3919 = phi float [ %3799, %3923 ], [ %3799, %4006 ], [ %4124, %4188 ], [ %3799, %3782 ]
  %3920 = phi float [ %3800, %3923 ], [ %3800, %4006 ], [ %4125, %4188 ], [ %3800, %3782 ]
  %3921 = phi float [ %3801, %3923 ], [ %3801, %4006 ], [ %4126, %4188 ], [ %3801, %3782 ]
  %3922 = icmp eq i32 %3805, 0
  br i1 %3922, label %4201, label %3782

; <label>:3923                                    ; preds = %3782
  %3924 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3925 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3926 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3930 = extractvalue %dx.types.ResRet.i32 %3814, 3
  %3931 = extractvalue %dx.types.ResRet.i32 %3814, 2
  %3932 = bitcast float %3924 to i32
  %3933 = add i32 %3930, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3934, %dx.types.Handle %3935, float %3863, float %3870, float undef, float undef, i32 0, i32 0, i32 undef, float %3891, float %3893, float undef, float %3892, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = fmul fast float %3937, %3929
  %3939 = fadd fast float %3938, %3928
  %3940 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3941 = fmul fast float %3863, %3823
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3870, float %3941)  ; FMad(a,b,c)
  %3943 = fadd fast float %3942, %3927
  %3944 = fmul fast float %3863, %3825
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3870, float %3944)  ; FMad(a,b,c)
  %3946 = fadd fast float %3945, %3926
  %3947 = fmul fast float %3891, %3823
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3893, float %3947)  ; FMad(a,b,c)
  %3949 = fmul fast float %3891, %3825
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3893, float %3949)  ; FMad(a,b,c)
  %3951 = fmul fast float %3892, %3823
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3894, float %3951)  ; FMad(a,b,c)
  %3953 = fmul fast float %3892, %3825
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3894, float %3953)  ; FMad(a,b,c)
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
  %3967 = fmul fast float %3863, 2.000000e+00
  %3968 = fadd fast float %3967, -1.000000e+00
  %3969 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3970 = fmul fast float %3969, %3856
  %3971 = fsub fast float %3970, %3856
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = fmul fast float %3870, 2.000000e+00
  %3974 = fadd fast float %3973, -1.000000e+00
  %3975 = call float @dx.op.unary.f32(i32 6, float %3974)  ; FAbs(value)
  %3976 = fmul fast float %3975, %3857
  %3977 = fsub fast float %3976, %3857
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3979 = fmul fast float %3882, %3819
  %3980 = fsub fast float %3979, %3819
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
  %3991 = fsub fast float %3899, %3990
  %3992 = fmul fast float %3991, %3989
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = fmul fast float %3987, %3820
  %3995 = fadd fast float %3987, %3820
  %3996 = fmul fast float %3995, %3829
  %3997 = fsub fast float %3996, %3829
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = and i32 %3932, 128
  %4000 = icmp ne i32 %3999, 0
  %4001 = select i1 %4000, float %3998, float %3994
  %4002 = fmul fast float %4001, %3993
  %4003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.f32 %4003, 0
  %4005 = fcmp fast ugt float %4002, %4004
  br i1 %4005, label %4006, label %3903

; <label>:4006                                    ; preds = %3923
  %4007 = select i1 %3965, float %4002, float 0.000000e+00
  %4008 = fadd fast float %4007, %3784
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  br i1 %3965, label %3903, label %4010

; <label>:4010                                    ; preds = %4006
  %4011 = and i32 %3932, 4
  %4012 = and i32 %3932, 8
  %4013 = add i32 %3815, 0
  %4014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4013, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4014, %dx.types.Handle %4015, float %3943, float %3946, float undef, float undef, i32 0, i32 0, i32 undef, float %3948, float %3950, float undef, float %3952, float %3954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = bitcast float %3841 to i32
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = lshr i32 %4021, 8
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = fmul fast float %4020, %4023
  %4028 = fadd fast float %4027, %4026
  %4029 = fmul fast float %4028, 0x3F70101000000000
  %4030 = add i32 %3816, 0
  %4031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4030, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4032 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4031, %dx.types.Handle %4015, float %3943, float %3946, float undef, float undef, i32 0, i32 0, i32 undef, float %3948, float %3950, float undef, float %3952, float %3954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %4032, 2
  %4036 = extractvalue %dx.types.ResRet.f32 %4032, 3
  %4037 = bitcast float %3835 to i32
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
  %4056 = fmul fast float %4017, %3844
  %4057 = fmul fast float %4018, %3845
  %4058 = fmul fast float %4019, %3846
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
  %4076 = fmul fast float %4075, %3810
  %4077 = fmul fast float %4075, %3811
  %4078 = fmul fast float %4075, %3812
  %4079 = fmul fast float %4073, %3832
  %4080 = fmul fast float %4073, %3833
  %4081 = fmul fast float %4073, %3834
  %4082 = fadd fast float %4079, %4076
  %4083 = fadd fast float %4080, %4077
  %4084 = fadd fast float %4081, %4078
  %4085 = fmul fast float %4074, %3838
  %4086 = fmul fast float %4074, %3839
  %4087 = fmul fast float %4074, %3840
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
  %4102 = fsub fast float %4093, %3792
  %4103 = fsub fast float %4094, %3793
  %4104 = fsub fast float %4095, %3794
  br label %4105

; <label>:4105                                    ; preds = %4101, %4010
  %4106 = phi float [ %4102, %4101 ], [ %4093, %4010 ]
  %4107 = phi float [ %4103, %4101 ], [ %4094, %4010 ]
  %4108 = phi float [ %4104, %4101 ], [ %4095, %4010 ]
  %4109 = fmul float %4108, %4098
  %4110 = fmul float %4107, %4098
  %4111 = fmul float %4106, %4098
  %4112 = fadd fast float %4111, %3792
  %4113 = fadd fast float %4110, %3793
  %4114 = fadd fast float %4109, %3794
  %4115 = icmp ne i32 %4011, 0
  %4116 = select i1 %4115, float 1.000000e+00, float 0.000000e+00
  %4117 = fmul fast float %4002, %4116
  %4118 = fsub fast float %4056, %3799
  %4119 = fsub fast float %4057, %3800
  %4120 = fsub fast float %4058, %3801
  %4121 = fmul fast float %4118, %4117
  %4122 = fmul fast float %4119, %4117
  %4123 = fmul fast float %4120, %4117
  %4124 = fadd fast float %4121, %3799
  %4125 = fadd fast float %4122, %3800
  %4126 = fadd fast float %4123, %3801
  %4127 = fsub fast float %4029, %3798
  %4128 = fmul fast float %4127, %4117
  %4129 = fadd fast float %4128, %3798
  %4130 = fmul fast float %4117, %3788
  %4131 = fsub fast float %3788, %4130
  %4132 = fmul fast float %4117, %3787
  %4133 = fsub fast float %3787, %4132
  %4134 = fadd fast float %4002, %3797
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = fsub fast float %4049, %3796
  %4137 = fmul fast float %4136, %4098
  %4138 = fadd fast float %4137, %3796
  %4139 = fsub fast float %4035, %3795
  %4140 = fmul fast float %4139, %4098
  %4141 = fadd fast float %4140, %3795
  %4142 = call float @dx.op.dot3.f32(i32 55, float %4056, float %4057, float %4058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = fmul fast float %4145, %4142
  %4147 = fadd fast float %4146, %4144
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = bitcast float %3847 to i32
  %4150 = and i32 %4149, 65535
  %4151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4150)  ; LegacyF16ToF32(value)
  %4152 = lshr i32 %4149, 16
  %4153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4152)  ; LegacyF16ToF32(value)
  %4154 = fcmp fast oge float %4151, 0.000000e+00
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = select i1 %4154, float %4151, float %4156
  %4158 = fadd fast float %4157, %4153
  %4159 = fsub fast float %4148, %3786
  %4160 = fmul fast float %4159, %4002
  %4161 = fadd fast float %4160, %3786
  %4162 = fmul fast float %4158, %4002
  %4163 = call float @dx.op.binary.f32(i32 35, float %3785, float %4162)  ; FMax(a,b)
  %4164 = and i32 %3932, 16
  %4165 = icmp eq i32 %4164, 0
  br i1 %4165, label %4188, label %4166

; <label>:4166                                    ; preds = %4105
  %4167 = bitcast float %3853 to i32
  %4168 = add i32 %3850, 0
  %4169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4168, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4170 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4169, %dx.types.Handle %4015, float %3943, float %3946, float undef, float undef, i32 0, i32 0, i32 undef, float %3948, float %3950, float undef, float %3952, float %3954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = and i32 %4167, 65535
  %4175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4174)  ; LegacyF16ToF32(value)
  %4176 = fmul fast float %4171, %3844
  %4177 = fmul fast float %4172, %3845
  %4178 = fmul fast float %4173, %3846
  %4179 = and i32 %3932, 16384
  %4180 = icmp ne i32 %4179, 0
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = select i1 %4180, float %4182, float 1.000000e+00
  %4184 = fmul fast float %4183, %4175
  %4185 = fmul fast float %4176, %4184
  %4186 = fmul fast float %4177, %4184
  %4187 = fmul fast float %4178, %4184
  br label %4188

; <label>:4188                                    ; preds = %4166, %4105
  %4189 = phi float [ %4185, %4166 ], [ 0.000000e+00, %4105 ]
  %4190 = phi float [ %4186, %4166 ], [ 0.000000e+00, %4105 ]
  %4191 = phi float [ %4187, %4166 ], [ 0.000000e+00, %4105 ]
  %4192 = fsub fast float %4189, %3789
  %4193 = fsub fast float %4190, %3790
  %4194 = fsub fast float %4191, %3791
  %4195 = fmul fast float %4192, %4002
  %4196 = fmul fast float %4193, %4002
  %4197 = fmul fast float %4194, %4002
  %4198 = fadd fast float %4195, %3789
  %4199 = fadd fast float %4196, %3790
  %4200 = fadd fast float %4197, %3791
  br label %3903

; <label>:4201                                    ; preds = %3903
  br label %4202

; <label>:4202                                    ; preds = %4201, %3719
  %4203 = phi float [ 0.000000e+00, %3719 ], [ %3904, %4201 ]
  %4204 = phi float [ %3663, %3719 ], [ %3905, %4201 ]
  %4205 = phi float [ %3642, %3719 ], [ %3906, %4201 ]
  %4206 = phi float [ %3641, %3719 ], [ %3907, %4201 ]
  %4207 = phi float [ 0.000000e+00, %3719 ], [ %3908, %4201 ]
  %4208 = phi float [ %3685, %3719 ], [ %3909, %4201 ]
  %4209 = phi float [ %3687, %3719 ], [ %3910, %4201 ]
  %4210 = phi float [ %3689, %3719 ], [ %3911, %4201 ]
  %4211 = phi float [ %3715, %3719 ], [ %3912, %4201 ]
  %4212 = phi float [ %3716, %3719 ], [ %3913, %4201 ]
  %4213 = phi float [ %3717, %3719 ], [ %3914, %4201 ]
  %4214 = phi float [ %3640, %3719 ], [ %3915, %4201 ]
  %4215 = phi float [ %3639, %3719 ], [ %3916, %4201 ]
  %4216 = phi float [ 0.000000e+00, %3719 ], [ %3917, %4201 ]
  %4217 = phi float [ %3638, %3719 ], [ %3918, %4201 ]
  %4218 = phi float [ %3670, %3719 ], [ %3919, %4201 ]
  %4219 = phi float [ %3671, %3719 ], [ %3920, %4201 ]
  %4220 = phi float [ %3672, %3719 ], [ %3921, %4201 ]
  %4221 = call float @dx.op.dot3.f32(i32 55, float %4211, float %4212, float %4213, float %4211, float %4212, float %4213)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = call float @dx.op.unary.f32(i32 25, float %4221)  ; Rsqrt(value)
  %4223 = fmul fast float %4222, %4211
  %4224 = fmul fast float %4222, %4212
  %4225 = fmul fast float %4222, %4213
  %4226 = fadd fast float %4216, %1301
  %4227 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4228 = call float @dx.op.dot3.f32(i32 55, float %4223, float %4224, float %4225, float %4223, float %4224, float %4225)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = call float @dx.op.unary.f32(i32 25, float %4228)  ; Rsqrt(value)
  %4230 = fmul fast float %4229, %4223
  %4231 = fmul fast float %4229, %4224
  %4232 = fmul fast float %4229, %4225
  br label %4233

; <label>:4233                                    ; preds = %4202, %3629
  %4234 = phi float [ %4230, %4202 ], [ %3715, %3629 ]
  %4235 = phi float [ %4231, %4202 ], [ %3716, %3629 ]
  %4236 = phi float [ %4232, %4202 ], [ %3717, %3629 ]
  %4237 = phi float [ %4218, %4202 ], [ %3670, %3629 ]
  %4238 = phi float [ %4219, %4202 ], [ %3671, %3629 ]
  %4239 = phi float [ %4220, %4202 ], [ %3672, %3629 ]
  %4240 = phi float [ %4208, %4202 ], [ %3685, %3629 ]
  %4241 = phi float [ %4209, %4202 ], [ %3687, %3629 ]
  %4242 = phi float [ %4210, %4202 ], [ %3689, %3629 ]
  %4243 = phi float [ %4217, %4202 ], [ %3638, %3629 ]
  %4244 = phi float [ %4227, %4202 ], [ %1301, %3629 ]
  %4245 = phi float [ %4215, %4202 ], [ %3639, %3629 ]
  %4246 = phi float [ %4214, %4202 ], [ %3640, %3629 ]
  %4247 = phi float [ %4207, %4202 ], [ 0.000000e+00, %3629 ]
  %4248 = phi float [ %4206, %4202 ], [ %3641, %3629 ]
  %4249 = phi float [ %4203, %4202 ], [ 0.000000e+00, %3629 ]
  %4250 = phi float [ %4204, %4202 ], [ %3663, %3629 ]
  %4251 = phi float [ %4205, %4202 ], [ %3642, %3629 ]
  %4252 = fadd fast float %4243, 0xBFB99999A0000000
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fmul fast float %4253, 0x3FF1C71C80000000
  %4255 = call float @dx.op.binary.f32(i32 36, float %4243, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4256 = fsub fast float 1.000000e+00, %4254
  %4257 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4258 = fmul fast float %4257, %4237
  %4259 = fmul fast float %4257, %4238
  %4260 = fmul fast float %4257, %4239
  %4261 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4263 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4264 = fmul fast float %4254, %4237
  %4265 = fmul fast float %4254, %4238
  %4266 = fmul fast float %4254, %4239
  %4267 = fadd fast float %4264, %4255
  %4268 = fadd fast float %4265, %4255
  %4269 = fadd fast float %4266, %4255
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4273 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.i32 %4274, 3
  %4276 = and i32 %4275, 8
  %4277 = icmp ne i32 %4276, 0
  %4278 = call float @dx.op.binary.f32(i32 35, float %4261, float %4237)  ; FMax(a,b)
  %4279 = call float @dx.op.binary.f32(i32 35, float %4262, float %4237)  ; FMax(a,b)
  %4280 = call float @dx.op.binary.f32(i32 35, float %4263, float %4237)  ; FMax(a,b)
  %4281 = call float @dx.op.dot3.f32(i32 55, float %4261, float %4262, float %4263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = select i1 %281, float %4237, float %4261
  %4283 = select i1 %281, float %4281, float %4262
  %4284 = select i1 %281, float 1.000000e+00, float %4263
  %4285 = select i1 %4277, float %4278, float %4282
  %4286 = select i1 %4277, float %4279, float %4283
  %4287 = select i1 %4277, float %4280, float %4284
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4291 = extractvalue %dx.types.CBufRet.f32 %4288, 2
  %4292 = fadd fast float %4289, %209
  %4293 = fadd fast float %4290, %210
  %4294 = fadd fast float %4291, %211
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = extractvalue %dx.types.CBufRet.f32 %4295, 1
  %4298 = fsub fast float %4292, %4296
  %4299 = fsub fast float %4293, %4297
  %4300 = fmul fast float %4298, %4298
  %4301 = fmul fast float %4299, %4299
  %4302 = fadd fast float %4300, %4301
  %4303 = call float @dx.op.unary.f32(i32 24, float %4302)  ; Sqrt(value)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4295, 2
  %4305 = fcmp fast olt float %4303, %4304
  br i1 %4305, label %4306, label %4373

; <label>:4306                                    ; preds = %4233
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4314 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4316 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4317 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4318 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4319 = fadd fast float %4316, %4292
  %4320 = fadd fast float %4317, %4293
  %4321 = fadd fast float %4318, %4294
  %4322 = fmul fast float %4319, %4308
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4310, float %4322)  ; FMad(a,b,c)
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4312, float %4323)  ; FMad(a,b,c)
  %4325 = fmul fast float %4319, %4313
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4314, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4315, float %4326)  ; FMad(a,b,c)
  %4328 = fsub fast float %4324, %4316
  %4329 = fsub fast float %4327, %4317
  %4330 = fsub fast float %4328, %4296
  %4331 = fadd fast float %4330, %4304
  %4332 = fsub fast float %4329, %4297
  %4333 = fadd fast float %4332, %4304
  %4334 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4335 = fmul fast float %4331, %4334
  %4336 = fmul fast float %4333, %4334
  %4337 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4339 = fsub fast float 1.000000e+00, %4337
  %4340 = fsub fast float 1.000000e+00, %4338
  %4341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %4339, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = fcmp fast ugt float %4342, 0.000000e+00
  br i1 %4343, label %4344, label %4647

; <label>:4344                                    ; preds = %4306
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4347 = fmul fast float %4346, %4342
  %4348 = extractvalue %dx.types.CBufRet.f32 %4345, 3
  %4349 = fadd fast float %4348, %4347
  %4350 = extractvalue %dx.types.CBufRet.f32 %4311, 2
  %4351 = fadd fast float %4349, %4318
  %4352 = fmul fast float %4324, %4312
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4327, float %4315, float %4352)  ; FMad(a,b,c)
  %4354 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4350, float %4353)  ; FMad(a,b,c)
  %4355 = fsub fast float %4354, %4318
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 2
  %4358 = fsub fast float %4355, %4357
  %4359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %4339, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %4339, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = extractvalue %dx.types.ResRet.f32 %4363, 1
  %4366 = extractvalue %dx.types.ResRet.f32 %4363, 2
  %4367 = fadd fast float %4364, %4360
  %4368 = fmul fast float %4367, 0x3F847AE140000000
  %4369 = fadd fast float %4365, %4361
  %4370 = fmul fast float %4369, 0x3F847AE140000000
  %4371 = fadd fast float %4366, %4362
  %4372 = fmul fast float %4371, 0x3F847AE140000000
  br label %4647

; <label>:4373                                    ; preds = %4233
  %4374 = and i32 %260, 1
  %4375 = icmp eq i32 %4374, 0
  br i1 %4375, label %4647, label %4376

; <label>:4376                                    ; preds = %4373
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 0
  %4383 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4384 = extractvalue %dx.types.CBufRet.f32 %4379, 1
  %4385 = extractvalue %dx.types.CBufRet.f32 %4381, 1
  %4386 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4387 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4388 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4389 = fadd fast float %4386, %4292
  %4390 = fadd fast float %4387, %4293
  %4391 = fadd fast float %4388, %4294
  %4392 = fmul fast float %4389, %4378
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4380, float %4392)  ; FMad(a,b,c)
  %4394 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4382, float %4393)  ; FMad(a,b,c)
  %4395 = fmul fast float %4389, %4383
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4384, float %4395)  ; FMad(a,b,c)
  %4397 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4385, float %4396)  ; FMad(a,b,c)
  %4398 = fsub fast float %4394, %4386
  %4399 = fsub fast float %4397, %4387
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.CBufRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.CBufRet.f32 %4400, 2
  %4404 = extractvalue %dx.types.CBufRet.f32 %4400, 3
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 3
  %4407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.i32 %4407, 0
  %4409 = extractvalue %dx.types.CBufRet.i32 %4407, 1
  %4410 = udiv i32 %4409, %4408
  %4411 = fsub fast float %4398, %4401
  %4412 = fsub fast float %4399, %4402
  %4413 = call float @dx.op.binary.f32(i32 35, float %4411, float 0.000000e+00)  ; FMax(a,b)
  %4414 = call float @dx.op.binary.f32(i32 35, float %4412, float 0.000000e+00)  ; FMax(a,b)
  %4415 = call float @dx.op.binary.f32(i32 36, float %4413, float %4403)  ; FMin(a,b)
  %4416 = call float @dx.op.binary.f32(i32 36, float %4414, float %4404)  ; FMin(a,b)
  %4417 = add i32 %4408, -1
  %4418 = add i32 %4410, -1
  %4419 = fmul fast float %4415, %4406
  %4420 = fmul fast float %4416, %4406
  %4421 = fptoui float %4419 to i32
  %4422 = fptoui float %4420 to i32
  %4423 = call i32 @dx.op.binary.i32(i32 40, i32 %4421, i32 %4417)  ; UMin(a,b)
  %4424 = call i32 @dx.op.binary.i32(i32 40, i32 %4422, i32 %4418)  ; UMin(a,b)
  %4425 = mul i32 %4424, %4408
  %4426 = add i32 %4425, %4423
  %4427 = shl i32 %4426, 2
  %4428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.i32 %4428, 0
  %4430 = icmp eq i32 %4429, -1
  br i1 %4430, label %4647, label %4431

; <label>:4431                                    ; preds = %4376
  %4432 = mul i32 %4429, 148
  %4433 = add i32 %4432, 4
  %4434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = add i32 %4432, 8
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = add i32 %4432, 36
  %4440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = add i32 %4432, 60
  %4443 = add i32 %4432, 92
  %4444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.i32 %4444, 0
  %4446 = add i32 %4432, 116
  %4447 = fsub fast float %4398, %4435
  %4448 = fsub fast float %4399, %4438
  %4449 = fmul fast float %4406, %4447
  %4450 = fmul fast float %4406, %4448
  %4451 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4453 = fsub fast float 1.000000e+00, %4452
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 2
  %4456 = call float @dx.op.unary.f32(i32 83, float %4451)  ; DerivCoarseX(value)
  %4457 = call float @dx.op.unary.f32(i32 83, float %4453)  ; DerivCoarseX(value)
  %4458 = call float @dx.op.unary.f32(i32 84, float %4451)  ; DerivCoarseY(value)
  %4459 = call float @dx.op.unary.f32(i32 84, float %4453)  ; DerivCoarseY(value)
  %4460 = fmul fast float %4456, %4455
  %4461 = fmul fast float %4457, %4455
  %4462 = fmul fast float %4458, %4455
  %4463 = fmul fast float %4459, %4455
  %4464 = call float @dx.op.dot2.f32(i32 54, float %4462, float %4463, float %4462, float %4463)  ; Dot2(ax,ay,bx,by)
  %4465 = call float @dx.op.dot2.f32(i32 54, float %4460, float %4461, float %4460, float %4461)  ; Dot2(ax,ay,bx,by)
  %4466 = call float @dx.op.binary.f32(i32 35, float %4465, float %4464)  ; FMax(a,b)
  %4467 = call float @dx.op.unary.f32(i32 23, float %4466)  ; Log(value)
  %4468 = fmul fast float %4467, 5.000000e-01
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4471 = fadd fast float %4470, %4468
  %4472 = call float @dx.op.binary.f32(i32 35, float %4471, float 0.000000e+00)  ; FMax(a,b)
  %4473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4473, 3
  %4475 = fadd fast float %4474, %4472
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4478 = fadd fast float %4475, %4477
  %4479 = add i32 %4445, 0
  %4480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4479, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4481 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4480, i32 0)  ; GetDimensions(handle,mipLevel)
  %4482 = extractvalue %dx.types.Dimensions %4481, 0
  %4483 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4482)  ; FirstbitLo(value)
  %4484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.i32 %4484, 1
  %4486 = sub nsw i32 %4485, %4483
  %4487 = sitofp i32 %4486 to float
  %4488 = fsub fast float %4478, %4487
  %4489 = call float @dx.op.binary.f32(i32 35, float %4488, float 0.000000e+00)  ; FMax(a,b)
  %4490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4480, %dx.types.Handle %54, float %4451, float %4453, float %4441, float undef, i32 0, i32 0, i32 undef, float %4489)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4491 = extractvalue %dx.types.ResRet.f32 %4490, 0
  %4492 = fcmp ule float %4491, 0x3FE0101020000000
  %4493 = extractvalue %dx.types.CBufRet.i32 %4484, 0
  %4494 = and i32 %4493, 128
  %4495 = icmp ne i32 %4494, 0
  %4496 = and i1 %4492, %4495
  br i1 %4496, label %4647, label %4497

; <label>:4497                                    ; preds = %4431
  %4498 = add i32 %4432, 20
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = add i32 %4432, 24
  %4502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = add i32 %4432, 40
  %4505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = add i32 %4432, 96
  %4508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4512 = fmul fast float %4511, %4451
  %4513 = fmul fast float %4511, %4453
  %4514 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4515 = fadd fast float %4512, %4514
  %4516 = fadd fast float %4513, %4514
  %4517 = add i32 %4509, 0
  %4518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4517, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4519 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4518, i32 0)  ; GetDimensions(handle,mipLevel)
  %4520 = extractvalue %dx.types.Dimensions %4519, 0
  %4521 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4520)  ; FirstbitLo(value)
  %4522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.i32 %4522, 1
  %4524 = sub nsw i32 %4523, %4521
  %4525 = sitofp i32 %4524 to float
  %4526 = fsub fast float %4475, %4525
  %4527 = call float @dx.op.binary.f32(i32 35, float %4526, float 0.000000e+00)  ; FMax(a,b)
  %4528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4518, %dx.types.Handle %54, float %4515, float %4516, float %4506, float undef, i32 0, i32 0, i32 undef, float %4527)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = fmul fast float %4529, %4500
  %4531 = fadd fast float %4530, %4503
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4535 = extractvalue %dx.types.CBufRet.f32 %4532, 2
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4540 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4541 = fadd fast float %4537, %4398
  %4542 = fadd fast float %4539, %4399
  %4543 = fadd fast float %4531, %4540
  %4544 = fmul fast float %4541, %4533
  %4545 = call float @dx.op.tertiary.f32(i32 46, float %4542, float %4534, float %4544)  ; FMad(a,b,c)
  %4546 = call float @dx.op.tertiary.f32(i32 46, float %4543, float %4535, float %4545)  ; FMad(a,b,c)
  %4547 = fsub fast float %4546, %4540
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 2
  %4550 = fsub fast float %4547, %4549
  %4551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.i32 %4551, 0
  %4553 = call i32 @dx.op.binary.i32(i32 40, i32 %4429, i32 %4552)  ; UMin(a,b)
  %4554 = mul i32 %4553, 36
  %4555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.i32 %4555, 0
  %4557 = add i32 %4554, 4
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 0
  %4560 = fmul fast float %4559, %4451
  %4561 = fmul fast float %4559, %4453
  %4562 = extractvalue %dx.types.CBufRet.f32 %4558, 1
  %4563 = fadd fast float %4560, %4562
  %4564 = fadd fast float %4561, %4562
  %4565 = icmp eq i32 %4556, 0
  br i1 %4565, label %4634, label %4566

; <label>:4566                                    ; preds = %4497
  br label %4567

; <label>:4567                                    ; preds = %4624, %4566
  %4568 = phi float [ %4625, %4624 ], [ 0.000000e+00, %4566 ]
  %4569 = phi float [ %4626, %4624 ], [ 0.000000e+00, %4566 ]
  %4570 = phi float [ %4627, %4624 ], [ 0.000000e+00, %4566 ]
  %4571 = phi float [ %4628, %4624 ], [ 0.000000e+00, %4566 ]
  %4572 = phi float [ %4629, %4624 ], [ 0.000000e+00, %4566 ]
  %4573 = phi float [ %4630, %4624 ], [ 0.000000e+00, %4566 ]
  %4574 = phi i32 [ %4631, %4624 ], [ 0, %4566 ]
  %4575 = shl i32 %4574, 2
  %4576 = add i32 %4442, %4575
  %4577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = add i32 %4446, %4575
  %4580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.i32 %4580, 0
  %4582 = add i32 %4581, 0
  %4583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4582, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4584 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4583, i32 0)  ; GetDimensions(handle,mipLevel)
  %4585 = extractvalue %dx.types.Dimensions %4584, 0
  %4586 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4585)  ; FirstbitLo(value)
  %4587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.i32 %4587, 1
  %4589 = sub nsw i32 %4588, %4586
  %4590 = sitofp i32 %4589 to float
  %4591 = fsub fast float %4475, %4590
  %4592 = call float @dx.op.binary.f32(i32 35, float %4591, float 0.000000e+00)  ; FMax(a,b)
  %4593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4583, %dx.types.Handle %54, float %4563, float %4564, float %4578, float undef, i32 0, i32 0, i32 undef, float %4592)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = fcmp fast ogt float %4594, 0.000000e+00
  br i1 %4595, label %4596, label %4624

; <label>:4596                                    ; preds = %4567
  %4597 = add i32 %4557, %4575
  %4598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.i32 %4598, 0
  %4600 = and i32 %4599, 32767
  %4601 = mul nuw nsw i32 %4600, 928
  %4602 = add nuw nsw i32 %4601, 48
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = add nuw nsw i32 %4601, 60
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = fmul fast float %4604, %4594
  %4613 = fmul fast float %4605, %4594
  %4614 = fmul fast float %4606, %4594
  %4615 = fadd fast float %4612, %4568
  %4616 = fadd fast float %4613, %4569
  %4617 = fadd fast float %4614, %4570
  %4618 = fmul fast float %4609, %4594
  %4619 = fmul fast float %4610, %4594
  %4620 = fmul fast float %4611, %4594
  %4621 = fadd fast float %4618, %4571
  %4622 = fadd fast float %4619, %4572
  %4623 = fadd fast float %4620, %4573
  br label %4624

; <label>:4624                                    ; preds = %4596, %4567
  %4625 = phi float [ %4615, %4596 ], [ %4568, %4567 ]
  %4626 = phi float [ %4616, %4596 ], [ %4569, %4567 ]
  %4627 = phi float [ %4617, %4596 ], [ %4570, %4567 ]
  %4628 = phi float [ %4621, %4596 ], [ %4571, %4567 ]
  %4629 = phi float [ %4622, %4596 ], [ %4572, %4567 ]
  %4630 = phi float [ %4623, %4596 ], [ %4573, %4567 ]
  %4631 = add nuw i32 %4574, 1
  %4632 = icmp eq i32 %4631, %4556
  br i1 %4632, label %4633, label %4567

; <label>:4633                                    ; preds = %4624
  br label %4634

; <label>:4634                                    ; preds = %4633, %4497
  %4635 = phi float [ 0.000000e+00, %4497 ], [ %4625, %4633 ]
  %4636 = phi float [ 0.000000e+00, %4497 ], [ %4626, %4633 ]
  %4637 = phi float [ 0.000000e+00, %4497 ], [ %4627, %4633 ]
  %4638 = phi float [ 0.000000e+00, %4497 ], [ %4628, %4633 ]
  %4639 = phi float [ 0.000000e+00, %4497 ], [ %4629, %4633 ]
  %4640 = phi float [ 0.000000e+00, %4497 ], [ %4630, %4633 ]
  %4641 = fadd fast float %4638, %4635
  %4642 = fmul fast float %4641, 0x3F847AE140000000
  %4643 = fadd fast float %4639, %4636
  %4644 = fmul fast float %4643, 0x3F847AE140000000
  %4645 = fadd fast float %4640, %4637
  %4646 = fmul fast float %4645, 0x3F847AE140000000
  br label %4647

; <label>:4647                                    ; preds = %4634, %4431, %4376, %4373, %4344, %4306
  %4648 = phi float [ %4368, %4344 ], [ 0.000000e+00, %4306 ], [ %4642, %4634 ], [ 0.000000e+00, %4376 ], [ 0.000000e+00, %4431 ], [ 0.000000e+00, %4373 ]
  %4649 = phi float [ %4370, %4344 ], [ 0.000000e+00, %4306 ], [ %4644, %4634 ], [ 0.000000e+00, %4376 ], [ 0.000000e+00, %4431 ], [ 0.000000e+00, %4373 ]
  %4650 = phi float [ %4372, %4344 ], [ 0.000000e+00, %4306 ], [ %4646, %4634 ], [ 0.000000e+00, %4376 ], [ 0.000000e+00, %4431 ], [ 0.000000e+00, %4373 ]
  %4651 = phi float [ %4358, %4344 ], [ -1.310720e+05, %4306 ], [ %4550, %4634 ], [ -1.310720e+05, %4376 ], [ -1.310720e+05, %4431 ], [ -1.310720e+05, %4373 ]
  %4652 = phi i1 [ true, %4344 ], [ false, %4306 ], [ true, %4634 ], [ false, %4376 ], [ false, %4431 ], [ false, %4373 ]
  %4653 = and i32 %260, 3
  %4654 = icmp eq i32 %4653, 1
  %4655 = select i1 %4654, float 1.000000e+00, float 0.000000e+00
  %4656 = fsub fast float %4651, %211
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = select i1 %4652, float %4657, float 1.000000e+00
  %4659 = fmul fast float %4658, %4655
  %4660 = icmp eq i32 %4653, 3
  %4661 = select i1 %4660, float 1.000000e+00, float %4659
  %4662 = call float @dx.op.binary.f32(i32 35, float %4249, float %4661)  ; FMax(a,b)
  %4663 = fcmp fast olt float %4661, 1.000000e+00
  %4664 = fcmp uge float %82, 0.000000e+00
  %4665 = and i1 %4664, %4663
  br i1 %4665, label %4666, label %4676

; <label>:4666                                    ; preds = %4647
  %4667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %82, float %83, float %84, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4667, 2
  %4671 = fadd fast float %4668, %4662
  %4672 = fcmp ule float %81, 0.000000e+00
  %4673 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = select i1 %4672, float %4673, float 1.000000e+00
  %4675 = fmul fast float %4674, %4670
  br label %4676

; <label>:4676                                    ; preds = %4666, %4647
  %4677 = phi float [ %4671, %4666 ], [ %4662, %4647 ]
  %4678 = phi float [ %4669, %4666 ], [ 0.000000e+00, %4647 ]
  %4679 = phi float [ %4675, %4666 ], [ 0.000000e+00, %4647 ]
  %4680 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4683 = fcmp fast une float %4681, 0.000000e+00
  %4684 = fcmp fast une float %4682, 0.000000e+00
  %4685 = or i1 %4683, %4684
  br i1 %4685, label %4686, label %5245

; <label>:4686                                    ; preds = %4676
  br i1 %4683, label %4687, label %4960

; <label>:4687                                    ; preds = %4686
  %4688 = call float @dx.op.unary.f32(i32 23, float %4246)  ; Log(value)
  %4689 = fmul fast float %4688, 4.000000e+00
  %4690 = call float @dx.op.unary.f32(i32 21, float %4689)  ; Exp(value)
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 0
  %4693 = fmul fast float %4692, %68
  %4694 = fmul fast float %4692, %69
  %4695 = fmul fast float %4692, %70
  %4696 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4697 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %4698 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %4699 = call float @dx.op.unary.f32(i32 23, float %4696)  ; Log(value)
  %4700 = call float @dx.op.unary.f32(i32 23, float %4697)  ; Log(value)
  %4701 = call float @dx.op.unary.f32(i32 23, float %4698)  ; Log(value)
  %4702 = fmul fast float %4699, 4.000000e+00
  %4703 = fmul fast float %4700, 4.000000e+00
  %4704 = fmul fast float %4701, 4.000000e+00
  %4705 = call float @dx.op.unary.f32(i32 21, float %4702)  ; Exp(value)
  %4706 = call float @dx.op.unary.f32(i32 21, float %4703)  ; Exp(value)
  %4707 = call float @dx.op.unary.f32(i32 21, float %4704)  ; Exp(value)
  %4708 = fadd fast float %4706, %4705
  %4709 = fadd fast float %4708, %4707
  %4710 = fdiv fast float 1.000000e+00, %4709
  %4711 = fmul fast float %4710, %4705
  %4712 = fcmp fast ogt float %78, 0.000000e+00
  %4713 = fcmp fast ogt float %79, 0.000000e+00
  %4714 = fcmp fast ogt float %80, 0.000000e+00
  %4715 = fcmp fast olt float %78, 0.000000e+00
  %4716 = fcmp fast olt float %79, 0.000000e+00
  %4717 = fcmp fast olt float %80, 0.000000e+00
  %4718 = zext i1 %4712 to i32
  %4719 = zext i1 %4713 to i32
  %4720 = zext i1 %4714 to i32
  %4721 = zext i1 %4715 to i32
  %4722 = zext i1 %4716 to i32
  %4723 = zext i1 %4717 to i32
  %4724 = sub nsw i32 %4718, %4721
  %4725 = sub nsw i32 %4719, %4722
  %4726 = sub nsw i32 %4720, %4723
  %4727 = call float @dx.op.unary.f32(i32 83, float %4693)  ; DerivCoarseX(value)
  %4728 = call float @dx.op.unary.f32(i32 83, float %4694)  ; DerivCoarseX(value)
  %4729 = call float @dx.op.unary.f32(i32 83, float %4695)  ; DerivCoarseX(value)
  %4730 = call float @dx.op.unary.f32(i32 84, float %4693)  ; DerivCoarseY(value)
  %4731 = call float @dx.op.unary.f32(i32 84, float %4694)  ; DerivCoarseY(value)
  %4732 = call float @dx.op.unary.f32(i32 84, float %4695)  ; DerivCoarseY(value)
  %4733 = fcmp fast ole float %292, %4711
  %4734 = fmul fast float %4710, %4708
  %4735 = fcmp fast ole float %292, %4734
  %4736 = select i1 %4735, float %4695, float %4693
  %4737 = select i1 %4735, float %4693, float %4694
  %4738 = select i1 %4733, float %4694, float %4736
  %4739 = select i1 %4733, float %4695, float %4737
  %4740 = select i1 %4735, float %4729, float %4727
  %4741 = select i1 %4735, float %4727, float %4728
  %4742 = select i1 %4733, float %4728, float %4740
  %4743 = select i1 %4733, float %4729, float %4741
  %4744 = select i1 %4735, float %4732, float %4730
  %4745 = select i1 %4735, float %4730, float %4731
  %4746 = select i1 %4733, float %4731, float %4744
  %4747 = select i1 %4733, float %4732, float %4745
  %4748 = call float @dx.op.unary.f32(i32 27, float %4738)  ; Round_ni(value)
  %4749 = call float @dx.op.unary.f32(i32 27, float %4739)  ; Round_ni(value)
  %4750 = fptosi float %4748 to i32
  %4751 = fptosi float %4749 to i32
  %4752 = xor i32 %4751, %4750
  %4753 = sitofp i32 %4752 to float
  %4754 = fptosi float %4753 to i32
  %4755 = sitofp i32 %4754 to float
  %4756 = fmul fast float %4755, 0x3FE3C6EF40000000
  %4757 = frem fast float %4748, 2.560000e+02
  %4758 = frem fast float %4749, 2.560000e+02
  %4759 = fptoui float %4757 to i32
  %4760 = fptoui float %4758 to i32
  %4761 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4759, i32 %4760, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = fadd fast float %4762, %4756
  %4766 = fadd fast float %4763, %4756
  %4767 = fadd fast float %4764, %4756
  %4768 = call float @dx.op.unary.f32(i32 22, float %4765)  ; Frc(value)
  %4769 = call float @dx.op.unary.f32(i32 22, float %4766)  ; Frc(value)
  %4770 = call float @dx.op.unary.f32(i32 22, float %4767)  ; Frc(value)
  %4771 = fmul fast float %4770, 0x401921FB60000000
  %4772 = call float @dx.op.unary.f32(i32 13, float %4771)  ; Sin(value)
  %4773 = call float @dx.op.unary.f32(i32 12, float %4771)  ; Cos(value)
  %4774 = fsub fast float -0.000000e+00, %4773
  %4775 = fmul fast float %4773, %4738
  %4776 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4739, float %4775)  ; FMad(a,b,c)
  %4777 = fmul fast float %4772, %4738
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4774, float %4739, float %4777)  ; FMad(a,b,c)
  %4779 = fadd fast float %4776, %4768
  %4780 = fadd fast float %4778, %4769
  %4781 = extractvalue %dx.types.CBufRet.f32 %4691, 3
  %4782 = bitcast float %4781 to i32
  %4783 = icmp eq i32 %4782, 0
  br i1 %4783, label %4822, label %4784

; <label>:4784                                    ; preds = %4687
  %4785 = add i32 %4782, 0
  %4786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4787 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4786, %dx.types.Handle %123, float %4779, float %4780, float undef, float undef, i32 0, i32 0, i32 undef, float %4742, float %4743, float undef, float %4746, float %4747, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4791 = extractvalue %dx.types.CBufRet.f32 %4789, 2
  %4792 = fsub fast float 1.000000e+00, %4681
  %4793 = call float @dx.op.binary.f32(i32 35, float %4792, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4794 = bitcast float %4681 to i32
  %4795 = sitofp i32 %4794 to float
  %4796 = fadd fast float %4795, 0xC1CFBF8940000000
  %4797 = fmul fast float %4791, %4796
  %4798 = fadd fast float %4797, 0x41CFBF8940000000
  %4799 = fptosi float %4798 to i32
  %4800 = bitcast i32 %4799 to float
  %4801 = bitcast float %4793 to i32
  %4802 = sitofp i32 %4801 to float
  %4803 = fadd fast float %4802, 0xC1CFBF8940000000
  %4804 = fmul fast float %4803, %4791
  %4805 = fadd fast float %4804, 0x41CFBF8940000000
  %4806 = fptosi float %4805 to i32
  %4807 = bitcast i32 %4806 to float
  %4808 = fmul fast float %4800, %4790
  %4809 = fmul fast float %4807, %4790
  %4810 = fsub fast float %4793, %4808
  %4811 = fadd fast float %4809, %4793
  %4812 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4813 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4814 = fsub fast float %4788, %4812
  %4815 = fsub fast float %4813, %4812
  %4816 = bitcast float %4815 to i32
  %4817 = sub nsw i32 2129859010, %4816
  %4818 = bitcast i32 %4817 to float
  %4819 = fmul fast float %4818, %4814
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fcmp fast olt float %4820, 0x3F70101020000000
  br i1 %4821, label %4960, label %4822

; <label>:4822                                    ; preds = %4784, %4687
  %4823 = phi float [ %4820, %4784 ], [ %4681, %4687 ]
  %4824 = fmul fast float %4823, %4690
  %4825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.i32 %4825, 1
  %4827 = extractvalue %dx.types.CBufRet.i32 %4825, 0
  %4828 = add i32 %4827, 0
  %4829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4829, %dx.types.Handle %122, float %4779, float %4780, float undef, float undef, i32 0, i32 0, i32 undef, float %4742, float %4743, float undef, float %4746, float %4747, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.ResRet.f32 %4830, 3
  %4835 = and i32 %4826, 255
  %4836 = uitofp i32 %4835 to float
  %4837 = lshr i32 %4826, 8
  %4838 = and i32 %4837, 255
  %4839 = uitofp i32 %4838 to float
  %4840 = fmul fast float %4834, %4836
  %4841 = fadd fast float %4840, %4839
  %4842 = fmul fast float %4841, 0x3F70101000000000
  %4843 = fadd fast float %4842, 0xBFB99999A0000000
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fmul fast float %4844, 0x3FF1C71C80000000
  %4846 = call float @dx.op.binary.f32(i32 36, float %4842, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4847 = fsub fast float 1.000000e+00, %4845
  %4848 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4849 = fmul fast float %4848, %4831
  %4850 = fmul fast float %4848, %4832
  %4851 = fmul fast float %4848, %4833
  %4852 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4853 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4854 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4855 = fmul fast float %4845, %4831
  %4856 = fmul fast float %4845, %4832
  %4857 = fmul fast float %4845, %4833
  %4858 = fadd fast float %4855, %4846
  %4859 = fadd fast float %4856, %4846
  %4860 = fadd fast float %4857, %4846
  %4861 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4862 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4863 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.i32 %4864, 3
  %4866 = extractvalue %dx.types.CBufRet.i32 %4864, 2
  %4867 = add i32 %4866, 0
  %4868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4869 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4868, %dx.types.Handle %122, float %4779, float %4780, float undef, float undef, i32 0, i32 0, i32 undef, float %4742, float %4743, float undef, float %4746, float %4747, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4870 = extractvalue %dx.types.ResRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.ResRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.ResRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.ResRet.f32 %4869, 3
  %4874 = and i32 %4865, 255
  %4875 = uitofp i32 %4874 to float
  %4876 = lshr i32 %4865, 8
  %4877 = and i32 %4876, 255
  %4878 = uitofp i32 %4877 to float
  %4879 = lshr i32 %4865, 16
  %4880 = and i32 %4879, 255
  %4881 = uitofp i32 %4880 to float
  %4882 = fmul fast float %4881, 0x3F70101000000000
  %4883 = fmul fast float %4870, %4875
  %4884 = fadd fast float %4883, %4878
  %4885 = fmul fast float %4884, 0x3F70101000000000
  %4886 = fadd fast float %4871, -5.000000e-01
  %4887 = fadd fast float %4873, -5.000000e-01
  %4888 = fmul fast float %4886, %4882
  %4889 = fmul fast float %4887, %4882
  %4890 = fadd fast float %4888, 5.000000e-01
  %4891 = fadd fast float %4889, 5.000000e-01
  %4892 = fmul fast float %4890, 2.000000e+00
  %4893 = fadd fast float %4892, -1.000000e+00
  %4894 = fmul fast float %4891, 2.000000e+00
  %4895 = fadd fast float %4894, -1.000000e+00
  %4896 = fadd fast float %4893, %4895
  %4897 = fmul fast float %4896, 5.000000e-01
  %4898 = fsub fast float %4893, %4895
  %4899 = fmul fast float %4898, 5.000000e-01
  %4900 = call float @dx.op.unary.f32(i32 6, float %4897)  ; FAbs(value)
  %4901 = fsub fast float 1.000000e+00, %4900
  %4902 = call float @dx.op.unary.f32(i32 6, float %4899)  ; FAbs(value)
  %4903 = fsub fast float %4901, %4902
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4899, float %4903, float %4897, float %4899, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.unary.f32(i32 25, float %4904)  ; Rsqrt(value)
  %4906 = fmul fast float %4897, %4905
  %4907 = fmul fast float %4899, %4905
  %4908 = select i1 %4735, i32 %4725, i32 %4726
  %4909 = select i1 %4733, i32 %4724, i32 %4908
  %4910 = sitofp i32 %4909 to float
  %4911 = fmul fast float %4903, %4910
  %4912 = fmul fast float %4911, %4905
  %4913 = select i1 %4735, float %4912, float %4907
  %4914 = select i1 %4735, float %4907, float %4912
  %4915 = select i1 %4733, float %4912, float %4906
  %4916 = select i1 %4733, float %4907, float %4913
  %4917 = select i1 %4733, float %4906, float %4914
  %4918 = fsub fast float %4852, %4285
  %4919 = fsub fast float %4853, %4286
  %4920 = fsub fast float %4854, %4287
  %4921 = fmul fast float %4918, %4824
  %4922 = fmul fast float %4919, %4824
  %4923 = fmul fast float %4920, %4824
  %4924 = fadd fast float %4921, %4285
  %4925 = fadd fast float %4922, %4286
  %4926 = fadd fast float %4923, %4287
  %4927 = fsub fast float %4861, %4270
  %4928 = fsub fast float %4862, %4271
  %4929 = fsub fast float %4863, %4272
  %4930 = fmul fast float %4927, %4824
  %4931 = fmul fast float %4928, %4824
  %4932 = fmul fast float %4929, %4824
  %4933 = fadd fast float %4930, %4270
  %4934 = fadd fast float %4931, %4271
  %4935 = fadd fast float %4932, %4272
  %4936 = fadd fast float %4915, %4234
  %4937 = fadd fast float %4916, %4235
  %4938 = fadd fast float %4917, %4236
  %4939 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4937, float %4938, float %4936, float %4937, float %4938)  ; Dot3(ax,ay,az,bx,by,bz)
  %4940 = call float @dx.op.unary.f32(i32 25, float %4939)  ; Rsqrt(value)
  %4941 = fmul fast float %4936, %4940
  %4942 = fmul fast float %4937, %4940
  %4943 = fmul fast float %4938, %4940
  %4944 = fsub fast float %4941, %4234
  %4945 = fsub fast float %4942, %4235
  %4946 = fsub fast float %4943, %4236
  %4947 = fmul fast float %4944, %4824
  %4948 = fmul fast float %4945, %4824
  %4949 = fmul fast float %4946, %4824
  %4950 = fadd fast float %4947, %4234
  %4951 = fadd fast float %4948, %4235
  %4952 = fadd fast float %4949, %4236
  %4953 = call float @dx.op.binary.f32(i32 36, float %4246, float %4872)  ; FMin(a,b)
  %4954 = fsub fast float %4953, %4246
  %4955 = fmul fast float %4954, %4824
  %4956 = fadd fast float %4955, %4246
  %4957 = fsub fast float %4885, %4273
  %4958 = fmul fast float %4957, %4824
  %4959 = fadd fast float %4958, %4273
  br label %4960

; <label>:4960                                    ; preds = %4822, %4784, %4686
  %4961 = phi float [ %4933, %4822 ], [ %4270, %4784 ], [ %4270, %4686 ]
  %4962 = phi float [ %4934, %4822 ], [ %4271, %4784 ], [ %4271, %4686 ]
  %4963 = phi float [ %4935, %4822 ], [ %4272, %4784 ], [ %4272, %4686 ]
  %4964 = phi float [ %4950, %4822 ], [ %4234, %4784 ], [ %4234, %4686 ]
  %4965 = phi float [ %4951, %4822 ], [ %4235, %4784 ], [ %4235, %4686 ]
  %4966 = phi float [ %4952, %4822 ], [ %4236, %4784 ], [ %4236, %4686 ]
  %4967 = phi float [ %4924, %4822 ], [ %4285, %4784 ], [ %4285, %4686 ]
  %4968 = phi float [ %4925, %4822 ], [ %4286, %4784 ], [ %4286, %4686 ]
  %4969 = phi float [ %4926, %4822 ], [ %4287, %4784 ], [ %4287, %4686 ]
  %4970 = phi float [ %4959, %4822 ], [ %4273, %4784 ], [ %4273, %4686 ]
  %4971 = phi float [ %4956, %4822 ], [ %4246, %4784 ], [ %4246, %4686 ]
  br i1 %4684, label %4972, label %5245

; <label>:4972                                    ; preds = %4960
  %4973 = call float @dx.op.unary.f32(i32 23, float %4971)  ; Log(value)
  %4974 = fmul fast float %4973, 4.000000e+00
  %4975 = call float @dx.op.unary.f32(i32 21, float %4974)  ; Exp(value)
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = fmul fast float %4977, %68
  %4979 = fmul fast float %4977, %69
  %4980 = fmul fast float %4977, %70
  %4981 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4982 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %4983 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %4984 = call float @dx.op.unary.f32(i32 23, float %4981)  ; Log(value)
  %4985 = call float @dx.op.unary.f32(i32 23, float %4982)  ; Log(value)
  %4986 = call float @dx.op.unary.f32(i32 23, float %4983)  ; Log(value)
  %4987 = fmul fast float %4984, 4.000000e+00
  %4988 = fmul fast float %4985, 4.000000e+00
  %4989 = fmul fast float %4986, 4.000000e+00
  %4990 = call float @dx.op.unary.f32(i32 21, float %4987)  ; Exp(value)
  %4991 = call float @dx.op.unary.f32(i32 21, float %4988)  ; Exp(value)
  %4992 = call float @dx.op.unary.f32(i32 21, float %4989)  ; Exp(value)
  %4993 = fadd fast float %4991, %4990
  %4994 = fadd fast float %4993, %4992
  %4995 = fdiv fast float 1.000000e+00, %4994
  %4996 = fmul fast float %4995, %4990
  %4997 = fcmp fast ogt float %78, 0.000000e+00
  %4998 = fcmp fast ogt float %79, 0.000000e+00
  %4999 = fcmp fast ogt float %80, 0.000000e+00
  %5000 = fcmp fast olt float %78, 0.000000e+00
  %5001 = fcmp fast olt float %79, 0.000000e+00
  %5002 = fcmp fast olt float %80, 0.000000e+00
  %5003 = zext i1 %4997 to i32
  %5004 = zext i1 %4998 to i32
  %5005 = zext i1 %4999 to i32
  %5006 = zext i1 %5000 to i32
  %5007 = zext i1 %5001 to i32
  %5008 = zext i1 %5002 to i32
  %5009 = sub nsw i32 %5003, %5006
  %5010 = sub nsw i32 %5004, %5007
  %5011 = sub nsw i32 %5005, %5008
  %5012 = call float @dx.op.unary.f32(i32 83, float %4978)  ; DerivCoarseX(value)
  %5013 = call float @dx.op.unary.f32(i32 83, float %4979)  ; DerivCoarseX(value)
  %5014 = call float @dx.op.unary.f32(i32 83, float %4980)  ; DerivCoarseX(value)
  %5015 = call float @dx.op.unary.f32(i32 84, float %4978)  ; DerivCoarseY(value)
  %5016 = call float @dx.op.unary.f32(i32 84, float %4979)  ; DerivCoarseY(value)
  %5017 = call float @dx.op.unary.f32(i32 84, float %4980)  ; DerivCoarseY(value)
  %5018 = fcmp fast ole float %292, %4996
  %5019 = fmul fast float %4995, %4993
  %5020 = fcmp fast ole float %292, %5019
  %5021 = select i1 %5020, float %4980, float %4978
  %5022 = select i1 %5020, float %4978, float %4979
  %5023 = select i1 %5018, float %4979, float %5021
  %5024 = select i1 %5018, float %4980, float %5022
  %5025 = select i1 %5020, float %5014, float %5012
  %5026 = select i1 %5020, float %5012, float %5013
  %5027 = select i1 %5018, float %5013, float %5025
  %5028 = select i1 %5018, float %5014, float %5026
  %5029 = select i1 %5020, float %5017, float %5015
  %5030 = select i1 %5020, float %5015, float %5016
  %5031 = select i1 %5018, float %5016, float %5029
  %5032 = select i1 %5018, float %5017, float %5030
  %5033 = call float @dx.op.unary.f32(i32 27, float %5023)  ; Round_ni(value)
  %5034 = call float @dx.op.unary.f32(i32 27, float %5024)  ; Round_ni(value)
  %5035 = fptosi float %5033 to i32
  %5036 = fptosi float %5034 to i32
  %5037 = xor i32 %5036, %5035
  %5038 = sitofp i32 %5037 to float
  %5039 = fptosi float %5038 to i32
  %5040 = sitofp i32 %5039 to float
  %5041 = fmul fast float %5040, 0x3FE3C6EF40000000
  %5042 = frem fast float %5033, 2.560000e+02
  %5043 = frem fast float %5034, 2.560000e+02
  %5044 = fptoui float %5042 to i32
  %5045 = fptoui float %5043 to i32
  %5046 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5044, i32 %5045, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5047 = extractvalue %dx.types.ResRet.f32 %5046, 0
  %5048 = extractvalue %dx.types.ResRet.f32 %5046, 1
  %5049 = extractvalue %dx.types.ResRet.f32 %5046, 2
  %5050 = fadd fast float %5047, %5041
  %5051 = fadd fast float %5048, %5041
  %5052 = fadd fast float %5049, %5041
  %5053 = call float @dx.op.unary.f32(i32 22, float %5050)  ; Frc(value)
  %5054 = call float @dx.op.unary.f32(i32 22, float %5051)  ; Frc(value)
  %5055 = call float @dx.op.unary.f32(i32 22, float %5052)  ; Frc(value)
  %5056 = fmul fast float %5055, 0x401921FB60000000
  %5057 = call float @dx.op.unary.f32(i32 13, float %5056)  ; Sin(value)
  %5058 = call float @dx.op.unary.f32(i32 12, float %5056)  ; Cos(value)
  %5059 = fsub fast float -0.000000e+00, %5058
  %5060 = fmul fast float %5058, %5023
  %5061 = call float @dx.op.tertiary.f32(i32 46, float %5057, float %5024, float %5060)  ; FMad(a,b,c)
  %5062 = fmul fast float %5057, %5023
  %5063 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5024, float %5062)  ; FMad(a,b,c)
  %5064 = fadd fast float %5061, %5053
  %5065 = fadd fast float %5063, %5054
  %5066 = extractvalue %dx.types.CBufRet.f32 %4976, 3
  %5067 = bitcast float %5066 to i32
  %5068 = icmp eq i32 %5067, 0
  br i1 %5068, label %5107, label %5069

; <label>:5069                                    ; preds = %4972
  %5070 = add i32 %5067, 0
  %5071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5072 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5071, %dx.types.Handle %123, float %5064, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float %5027, float %5028, float undef, float %5031, float %5032, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 1
  %5076 = extractvalue %dx.types.CBufRet.f32 %5074, 2
  %5077 = fsub fast float 1.000000e+00, %4682
  %5078 = call float @dx.op.binary.f32(i32 35, float %5077, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5079 = bitcast float %4682 to i32
  %5080 = sitofp i32 %5079 to float
  %5081 = fadd fast float %5080, 0xC1CFBF8940000000
  %5082 = fmul fast float %5076, %5081
  %5083 = fadd fast float %5082, 0x41CFBF8940000000
  %5084 = fptosi float %5083 to i32
  %5085 = bitcast i32 %5084 to float
  %5086 = bitcast float %5078 to i32
  %5087 = sitofp i32 %5086 to float
  %5088 = fadd fast float %5087, 0xC1CFBF8940000000
  %5089 = fmul fast float %5088, %5076
  %5090 = fadd fast float %5089, 0x41CFBF8940000000
  %5091 = fptosi float %5090 to i32
  %5092 = bitcast i32 %5091 to float
  %5093 = fmul fast float %5085, %5075
  %5094 = fmul fast float %5092, %5075
  %5095 = fsub fast float %5078, %5093
  %5096 = fadd fast float %5094, %5078
  %5097 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5099 = fsub fast float %5073, %5097
  %5100 = fsub fast float %5098, %5097
  %5101 = bitcast float %5100 to i32
  %5102 = sub nsw i32 2129859010, %5101
  %5103 = bitcast i32 %5102 to float
  %5104 = fmul fast float %5103, %5099
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fcmp fast olt float %5105, 0x3F70101020000000
  br i1 %5106, label %5245, label %5107

; <label>:5107                                    ; preds = %5069, %4972
  %5108 = phi float [ %5105, %5069 ], [ %4682, %4972 ]
  %5109 = fmul fast float %5108, %4975
  %5110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.i32 %5110, 1
  %5112 = extractvalue %dx.types.CBufRet.i32 %5110, 0
  %5113 = add i32 %5112, 0
  %5114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5115 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5114, %dx.types.Handle %122, float %5064, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float %5027, float %5028, float undef, float %5031, float %5032, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.ResRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.ResRet.f32 %5115, 2
  %5119 = extractvalue %dx.types.ResRet.f32 %5115, 3
  %5120 = and i32 %5111, 255
  %5121 = uitofp i32 %5120 to float
  %5122 = lshr i32 %5111, 8
  %5123 = and i32 %5122, 255
  %5124 = uitofp i32 %5123 to float
  %5125 = fmul fast float %5119, %5121
  %5126 = fadd fast float %5125, %5124
  %5127 = fmul fast float %5126, 0x3F70101000000000
  %5128 = fadd fast float %5127, 0xBFB99999A0000000
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fmul fast float %5129, 0x3FF1C71C80000000
  %5131 = call float @dx.op.binary.f32(i32 36, float %5127, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5132 = fsub fast float 1.000000e+00, %5130
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5133, %5116
  %5135 = fmul fast float %5133, %5117
  %5136 = fmul fast float %5133, %5118
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5140 = fmul fast float %5130, %5116
  %5141 = fmul fast float %5130, %5117
  %5142 = fmul fast float %5130, %5118
  %5143 = fadd fast float %5140, %5131
  %5144 = fadd fast float %5141, %5131
  %5145 = fadd fast float %5142, %5131
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5148 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.i32 %5149, 3
  %5151 = extractvalue %dx.types.CBufRet.i32 %5149, 2
  %5152 = add i32 %5151, 0
  %5153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5154 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5153, %dx.types.Handle %122, float %5064, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float %5027, float %5028, float undef, float %5031, float %5032, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5155 = extractvalue %dx.types.ResRet.f32 %5154, 0
  %5156 = extractvalue %dx.types.ResRet.f32 %5154, 1
  %5157 = extractvalue %dx.types.ResRet.f32 %5154, 2
  %5158 = extractvalue %dx.types.ResRet.f32 %5154, 3
  %5159 = and i32 %5150, 255
  %5160 = uitofp i32 %5159 to float
  %5161 = lshr i32 %5150, 8
  %5162 = and i32 %5161, 255
  %5163 = uitofp i32 %5162 to float
  %5164 = lshr i32 %5150, 16
  %5165 = and i32 %5164, 255
  %5166 = uitofp i32 %5165 to float
  %5167 = fmul fast float %5166, 0x3F70101000000000
  %5168 = fmul fast float %5155, %5160
  %5169 = fadd fast float %5168, %5163
  %5170 = fmul fast float %5169, 0x3F70101000000000
  %5171 = fadd fast float %5156, -5.000000e-01
  %5172 = fadd fast float %5158, -5.000000e-01
  %5173 = fmul fast float %5171, %5167
  %5174 = fmul fast float %5172, %5167
  %5175 = fadd fast float %5173, 5.000000e-01
  %5176 = fadd fast float %5174, 5.000000e-01
  %5177 = fmul fast float %5175, 2.000000e+00
  %5178 = fadd fast float %5177, -1.000000e+00
  %5179 = fmul fast float %5176, 2.000000e+00
  %5180 = fadd fast float %5179, -1.000000e+00
  %5181 = fadd fast float %5178, %5180
  %5182 = fmul fast float %5181, 5.000000e-01
  %5183 = fsub fast float %5178, %5180
  %5184 = fmul fast float %5183, 5.000000e-01
  %5185 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = call float @dx.op.unary.f32(i32 6, float %5184)  ; FAbs(value)
  %5188 = fsub fast float %5186, %5187
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5184, float %5188, float %5182, float %5184, float %5188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.unary.f32(i32 25, float %5189)  ; Rsqrt(value)
  %5191 = fmul fast float %5182, %5190
  %5192 = fmul fast float %5184, %5190
  %5193 = select i1 %5020, i32 %5010, i32 %5011
  %5194 = select i1 %5018, i32 %5009, i32 %5193
  %5195 = sitofp i32 %5194 to float
  %5196 = fmul fast float %5188, %5195
  %5197 = fmul fast float %5196, %5190
  %5198 = select i1 %5020, float %5197, float %5192
  %5199 = select i1 %5020, float %5192, float %5197
  %5200 = select i1 %5018, float %5197, float %5191
  %5201 = select i1 %5018, float %5192, float %5198
  %5202 = select i1 %5018, float %5191, float %5199
  %5203 = fsub fast float %5137, %4967
  %5204 = fsub fast float %5138, %4968
  %5205 = fsub fast float %5139, %4969
  %5206 = fmul fast float %5203, %5109
  %5207 = fmul fast float %5204, %5109
  %5208 = fmul fast float %5205, %5109
  %5209 = fadd fast float %5206, %4967
  %5210 = fadd fast float %5207, %4968
  %5211 = fadd fast float %5208, %4969
  %5212 = fsub fast float %5146, %4961
  %5213 = fsub fast float %5147, %4962
  %5214 = fsub fast float %5148, %4963
  %5215 = fmul fast float %5212, %5109
  %5216 = fmul fast float %5213, %5109
  %5217 = fmul fast float %5214, %5109
  %5218 = fadd fast float %5215, %4961
  %5219 = fadd fast float %5216, %4962
  %5220 = fadd fast float %5217, %4963
  %5221 = fadd fast float %5200, %4964
  %5222 = fadd fast float %5201, %4965
  %5223 = fadd fast float %5202, %4966
  %5224 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float %5221, float %5222, float %5223)  ; Dot3(ax,ay,az,bx,by,bz)
  %5225 = call float @dx.op.unary.f32(i32 25, float %5224)  ; Rsqrt(value)
  %5226 = fmul fast float %5221, %5225
  %5227 = fmul fast float %5222, %5225
  %5228 = fmul fast float %5223, %5225
  %5229 = fsub fast float %5226, %4964
  %5230 = fsub fast float %5227, %4965
  %5231 = fsub fast float %5228, %4966
  %5232 = fmul fast float %5229, %5109
  %5233 = fmul fast float %5230, %5109
  %5234 = fmul fast float %5231, %5109
  %5235 = fadd fast float %5232, %4964
  %5236 = fadd fast float %5233, %4965
  %5237 = fadd fast float %5234, %4966
  %5238 = call float @dx.op.binary.f32(i32 36, float %4971, float %5157)  ; FMin(a,b)
  %5239 = fsub fast float %5238, %4971
  %5240 = fmul fast float %5239, %5109
  %5241 = fadd fast float %5240, %4971
  %5242 = fsub fast float %5170, %4970
  %5243 = fmul fast float %5242, %5109
  %5244 = fadd fast float %5243, %4970
  br label %5245

; <label>:5245                                    ; preds = %5107, %5069, %4960, %4676
  %5246 = phi float [ %5218, %5107 ], [ %4961, %5069 ], [ %4961, %4960 ], [ %4270, %4676 ]
  %5247 = phi float [ %5219, %5107 ], [ %4962, %5069 ], [ %4962, %4960 ], [ %4271, %4676 ]
  %5248 = phi float [ %5220, %5107 ], [ %4963, %5069 ], [ %4963, %4960 ], [ %4272, %4676 ]
  %5249 = phi float [ %5235, %5107 ], [ %4964, %5069 ], [ %4964, %4960 ], [ %4234, %4676 ]
  %5250 = phi float [ %5236, %5107 ], [ %4965, %5069 ], [ %4965, %4960 ], [ %4235, %4676 ]
  %5251 = phi float [ %5237, %5107 ], [ %4966, %5069 ], [ %4966, %4960 ], [ %4236, %4676 ]
  %5252 = phi float [ %5209, %5107 ], [ %4967, %5069 ], [ %4967, %4960 ], [ %4285, %4676 ]
  %5253 = phi float [ %5210, %5107 ], [ %4968, %5069 ], [ %4968, %4960 ], [ %4286, %4676 ]
  %5254 = phi float [ %5211, %5107 ], [ %4969, %5069 ], [ %4969, %4960 ], [ %4287, %4676 ]
  %5255 = phi float [ %5244, %5107 ], [ %4970, %5069 ], [ %4970, %4960 ], [ %4273, %4676 ]
  %5256 = phi float [ %5241, %5107 ], [ %4971, %5069 ], [ %4971, %4960 ], [ %4246, %4676 ]
  %5257 = fcmp fast une float %4680, 0.000000e+00
  br i1 %5257, label %5258, label %5427

; <label>:5258                                    ; preds = %5245
  %5259 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float %209, float %210, float %211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = call float @dx.op.unary.f32(i32 25, float %5259)  ; Rsqrt(value)
  %5261 = fmul fast float %209, %5260
  %5262 = fsub fast float -0.000000e+00, %5261
  %5263 = fmul fast float %210, %5260
  %5264 = fsub fast float -0.000000e+00, %5263
  %5265 = fmul fast float %211, %5260
  %5266 = fsub fast float -0.000000e+00, %5265
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5264, float %5266, float %135, float %137, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = fmul fast float %4680, 2.500000e+00
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %4680, 0x4013FFFFE0000000
  %5271 = fadd fast float %5270, 0xBFFFFFFFE0000000
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %4680, 0x4004000020000000
  %5274 = fadd fast float %5273, 0xBFF8000040000000
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %4252, 1.000000e+01
  %5277 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5278 = fmul fast float %5277, 2.000000e+00
  %5279 = fsub fast float 3.000000e+00, %5278
  %5280 = fmul fast float %5277, %5277
  %5281 = fmul fast float %5280, %5279
  %5282 = fsub fast float 1.000000e+00, %5281
  %5283 = fsub fast float 0x3FE3333340000000, %5255
  %5284 = fmul fast float %5283, 0x400AAAAAA0000000
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fmul fast float %5282, %5285
  %5287 = fmul fast float %5252, 0x3FEA2B8620000000
  %5288 = fmul fast float %5253, 0x3FEA2B8620000000
  %5289 = fmul fast float %5254, 0x3FEA2B8620000000
  %5290 = fadd fast float %5287, 0x3FC81DFBA0000000
  %5291 = fmul fast float %5290, %5252
  %5292 = fadd fast float %5291, 0x3F910E6020000000
  %5293 = fadd fast float %5288, 0x3FC81DFBA0000000
  %5294 = fmul fast float %5293, %5253
  %5295 = fadd fast float %5294, 0x3F910E6020000000
  %5296 = fadd fast float %5289, 0x3FC81DFBA0000000
  %5297 = fmul fast float %5296, %5254
  %5298 = fadd fast float %5297, 0x3F910E6020000000
  %5299 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5301 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5302 = fsub fast float %5299, %5252
  %5303 = fsub fast float %5300, %5253
  %5304 = fsub fast float %5301, %5254
  %5305 = fmul fast float %5302, %5269
  %5306 = fmul fast float %5305, %5286
  %5307 = fmul fast float %5303, %5269
  %5308 = fmul fast float %5307, %5286
  %5309 = fmul fast float %5304, %5269
  %5310 = fmul fast float %5309, %5286
  %5311 = fadd fast float %5306, %5252
  %5312 = fadd fast float %5308, %5253
  %5313 = fadd fast float %5310, %5254
  %5314 = fmul fast float %5256, %5256
  %5315 = fmul fast float %5314, %5314
  %5316 = fadd fast float %5272, 1.000000e+00
  %5317 = fsub fast float %5316, %5286
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = call float @dx.op.dot3.f32(i32 55, float %135, float %137, float %139, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fsub fast float 1.000000e+00, %5315
  %5322 = call float @dx.op.binary.f32(i32 36, float %5318, float %5321)  ; FMin(a,b)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5324 = call float @dx.op.binary.f32(i32 35, float %5322, float %5323)  ; FMax(a,b)
  %5325 = fadd fast float %5320, 0xBFE4CCCCC0000000
  %5326 = fmul fast float %5325, 0x4006DB6DA0000000
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = fsub fast float 3.000000e+00, %5328
  %5330 = bitcast float %5246 to i32
  %5331 = ashr i32 %5330, 1
  %5332 = add nsw i32 %5331, 532487669
  %5333 = bitcast i32 %5332 to float
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = bitcast float %5334 to i32
  %5336 = sub nsw i32 2129859010, %5335
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, 2.000000e+00
  %5339 = bitcast float %5247 to i32
  %5340 = ashr i32 %5339, 1
  %5341 = add nsw i32 %5340, 532487669
  %5342 = bitcast i32 %5341 to float
  %5343 = fsub fast float 1.000000e+00, %5342
  %5344 = bitcast float %5343 to i32
  %5345 = sub nsw i32 2129859010, %5344
  %5346 = bitcast i32 %5345 to float
  %5347 = fmul fast float %5346, 2.000000e+00
  %5348 = bitcast float %5248 to i32
  %5349 = ashr i32 %5348, 1
  %5350 = add nsw i32 %5349, 532487669
  %5351 = bitcast i32 %5350 to float
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = bitcast float %5352 to i32
  %5354 = sub nsw i32 2129859010, %5353
  %5355 = bitcast i32 %5354 to float
  %5356 = fmul fast float %5355, 2.000000e+00
  %5357 = fsub fast float 0x4002A9FBE0000000, %5338
  %5358 = fadd fast float %5338, 0x3FD54FDF00000000
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, %5357
  %5363 = fmul fast float %5362, %5362
  %5364 = fsub fast float 0x4002A9FBE0000000, %5347
  %5365 = fadd fast float %5347, 0x3FD54FDF00000000
  %5366 = bitcast float %5365 to i32
  %5367 = sub nsw i32 2129859010, %5366
  %5368 = bitcast i32 %5367 to float
  %5369 = fmul fast float %5368, %5364
  %5370 = fmul fast float %5369, %5369
  %5371 = fsub fast float 0x4002A9FBE0000000, %5356
  %5372 = fadd fast float %5356, 0x3FD54FDF00000000
  %5373 = bitcast float %5372 to i32
  %5374 = sub nsw i32 2129859010, %5373
  %5375 = bitcast i32 %5374 to float
  %5376 = fmul fast float %5375, %5371
  %5377 = fmul fast float %5376, %5376
  %5378 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5363)  ; FMax(a,b)
  %5379 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5370)  ; FMax(a,b)
  %5380 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5377)  ; FMax(a,b)
  %5381 = fsub fast float 1.000000e+00, %5267
  %5382 = fadd fast float %5381, %5282
  %5383 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5384 = fsub fast float 1.000000e+00, %4661
  %5385 = fmul fast float %5324, %5384
  %5386 = fmul fast float %5327, %5327
  %5387 = fmul fast float %5386, %5385
  %5388 = fmul fast float %5387, %5329
  %5389 = fmul fast float %5384, 0xBFE99999A0000000
  %5390 = fmul fast float %5389, %5269
  %5391 = fmul fast float %5390, %5286
  %5392 = fadd fast float %5391, 1.000000e+00
  %5393 = fadd fast float %5255, -1.000000e+00
  %5394 = fmul fast float %5392, %5393
  %5395 = fadd fast float %5394, 1.000000e+00
  %5396 = fsub fast float %5378, %5246
  %5397 = fsub fast float %5379, %5247
  %5398 = fsub fast float %5380, %5248
  %5399 = fmul fast float %5388, %5396
  %5400 = fmul fast float %5388, %5397
  %5401 = fmul fast float %5388, %5398
  %5402 = fadd fast float %5399, %5246
  %5403 = fadd fast float %5400, %5247
  %5404 = fadd fast float %5401, %5248
  %5405 = fsub fast float %135, %5249
  %5406 = fsub fast float %137, %5250
  %5407 = fsub fast float %139, %5251
  %5408 = fmul fast float %5388, %5405
  %5409 = fmul fast float %5388, %5406
  %5410 = fmul fast float %5388, %5407
  %5411 = fadd fast float %5408, %5249
  %5412 = fadd fast float %5409, %5250
  %5413 = fadd fast float %5410, %5251
  %5414 = fmul fast float %5388, %5383
  %5415 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  %5416 = fsub fast float 1.000000e+00, %5415
  %5417 = fmul fast float %5414, %5416
  %5418 = fadd fast float %5417, %5415
  %5419 = fsub fast float 1.000000e+00, %5256
  %5420 = fmul fast float %5388, %5419
  %5421 = fadd fast float %5420, %5256
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5412, float %5413, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = call float @dx.op.unary.f32(i32 25, float %5422)  ; Rsqrt(value)
  %5424 = fmul fast float %5411, %5423
  %5425 = fmul fast float %5412, %5423
  %5426 = fmul fast float %5413, %5423
  br label %5427

; <label>:5427                                    ; preds = %5258, %5245
  %5428 = phi float [ %5402, %5258 ], [ %5246, %5245 ]
  %5429 = phi float [ %5403, %5258 ], [ %5247, %5245 ]
  %5430 = phi float [ %5404, %5258 ], [ %5248, %5245 ]
  %5431 = phi float [ %5424, %5258 ], [ %5249, %5245 ]
  %5432 = phi float [ %5425, %5258 ], [ %5250, %5245 ]
  %5433 = phi float [ %5426, %5258 ], [ %5251, %5245 ]
  %5434 = phi float [ %5311, %5258 ], [ %5252, %5245 ]
  %5435 = phi float [ %5312, %5258 ], [ %5253, %5245 ]
  %5436 = phi float [ %5313, %5258 ], [ %5254, %5245 ]
  %5437 = phi float [ %5418, %5258 ], [ %5255, %5245 ]
  %5438 = phi float [ %5421, %5258 ], [ %5256, %5245 ]
  %5439 = icmp eq i32 %66, 0
  br i1 %5439, label %5470, label %5440

; <label>:5440                                    ; preds = %5427
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5444 = fmul fast float %5442, %126
  %5445 = fmul fast float %5443, %127
  %5446 = fmul fast float %5444, 1.024000e+03
  %5447 = fmul fast float %5445, 1.024000e+03
  %5448 = fadd fast float %5446, -5.120000e+02
  %5449 = fadd fast float %5447, -5.120000e+02
  %5450 = fmul fast float %5444, 0x4081BEDF00000000
  %5451 = fadd fast float %5450, 0xC071BEDF00000000
  %5452 = call float @dx.op.unary.f32(i32 22, float %5451)  ; Frc(value)
  %5453 = fmul fast float %5448, %5452
  %5454 = fadd fast float %5453, %5449
  %5455 = fmul fast float %5445, 0x4073BEBE20000000
  %5456 = fadd fast float %5455, 0xC063BEBE20000000
  %5457 = call float @dx.op.unary.f32(i32 22, float %5456)  ; Frc(value)
  %5458 = fmul fast float %5449, %5457
  %5459 = fadd fast float %5458, %5448
  %5460 = fmul fast float %5454, %5459
  %5461 = call float @dx.op.unary.f32(i32 22, float %5460)  ; Frc(value)
  %5462 = add i32 %335, 12
  %5463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.i32 %5463, 0
  %5465 = and i32 %5464, 255
  %5466 = uitofp i32 %5465 to float
  %5467 = fmul fast float %5466, 0x3F70101020000000
  %5468 = fcmp fast olt float %5461, %5467
  br i1 %5468, label %5469, label %5470

; <label>:5469                                    ; preds = %5440
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5470

; <label>:5470                                    ; preds = %5469, %5440, %5427
  %5471 = fsub fast float -0.000000e+00, %211
  %5472 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float %209, float %210, float %211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.unary.f32(i32 25, float %5472)  ; Rsqrt(value)
  %5474 = fmul fast float %5473, %209
  %5475 = fmul fast float %5473, %210
  %5476 = fmul fast float %5473, %211
  %5477 = fsub fast float -0.000000e+00, %5474
  %5478 = fsub fast float -0.000000e+00, %5475
  %5479 = fsub fast float -0.000000e+00, %5476
  %5480 = select i1 %281, float 0.000000e+00, float %5430
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %5476, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fmul fast float %5483, 2.000000e+00
  %5485 = fmul fast float %5484, %5431
  %5486 = fmul fast float %5484, %5432
  %5487 = fmul fast float %5484, %5433
  %5488 = fsub fast float %5474, %5485
  %5489 = fsub fast float %5475, %5486
  %5490 = fsub fast float %5476, %5487
  %5491 = call float @dx.op.binary.f32(i32 36, float %5438, float 1.000000e+00)  ; FMin(a,b)
  %5492 = fsub fast float 1.000000e+00, %5491
  %5493 = bitcast float %5492 to i32
  %5494 = ashr i32 %5493, 1
  %5495 = add nsw i32 %5494, 532487669
  %5496 = bitcast i32 %5495 to float
  %5497 = fsub fast float 1.000000e+00, %5437
  %5498 = call float @dx.op.binary.f32(i32 35, float %5497, float 0x3F847AE140000000)  ; FMax(a,b)
  %5499 = fmul fast float %5498, %5498
  %5500 = fmul fast float %5499, %5499
  %5501 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5496, float %5500, float %5501, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = fsub fast float 1.000000e+00, %5438
  %5505 = bitcast float %5504 to i32
  %5506 = sub nsw i32 2129859010, %5505
  %5507 = call float @dx.op.dot3.f32(i32 55, float %93, float %89, float %85, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = fmul fast float %5507, 0x3FD20DD760000000
  %5509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %93)  ; FMax(a,b)
  %5510 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = fcmp fast oeq float %5510, 0.000000e+00
  %5512 = fcmp fast oeq float %5509, 0.000000e+00
  %5513 = or i1 %5512, %5511
  br i1 %5513, label %5543, label %5514

; <label>:5514                                    ; preds = %5470
  %5515 = fsub fast float -0.000000e+00, %96
  %5516 = fsub fast float -0.000000e+00, %94
  %5517 = call float @dx.op.unary.f32(i32 24, float %5510)  ; Sqrt(value)
  %5518 = fdiv fast float %5517, %5509
  %5519 = fcmp fast ogt float %5518, 0x3FFB6F8900000000
  %5520 = select i1 %5519, float 0x3FFB6F8900000000, float %5518
  %5521 = fmul fast float %5520, 0x3FE8A23460000000
  %5522 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5523 = call float @dx.op.binary.f32(i32 35, float %5520, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5524 = fmul fast float %5522, %5509
  %5525 = fmul fast float %5523, 0x3FF279A740000000
  %5526 = fadd fast float %5525, -1.000000e+00
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5516, float %95, float %5515, float %5516, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = call float @dx.op.unary.f32(i32 25, float %5527)  ; Rsqrt(value)
  %5529 = fmul fast float %5528, %5515
  %5530 = fmul fast float %5528, %5516
  %5531 = fmul fast float %5528, %95
  %5532 = fmul fast float %5526, %5526
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5523, 0x40005F8BE0000000
  %5535 = fsub fast float 0x400C5BF8A0000000, %5534
  %5536 = fdiv fast float %5524, %5535
  %5537 = fmul fast float %5536, 0x3FEE31C3C0000000
  %5538 = fmul fast float %5537, %5533
  %5539 = fmul fast float %5523, 0x3FDACB7480000000
  %5540 = fadd fast float %5539, 0xBFD7347680000000
  %5541 = fmul fast float %5540, %5536
  %5542 = fmul fast float %5541, %5533
  br label %5543

; <label>:5543                                    ; preds = %5514, %5470
  %5544 = phi float [ %5529, %5514 ], [ 0.000000e+00, %5470 ]
  %5545 = phi float [ %5530, %5514 ], [ 0.000000e+00, %5470 ]
  %5546 = phi float [ %5531, %5514 ], [ 0.000000e+00, %5470 ]
  %5547 = phi float [ %5538, %5514 ], [ 0.000000e+00, %5470 ]
  %5548 = phi float [ %5542, %5514 ], [ 0.000000e+00, %5470 ]
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = fmul fast float %5549, %5549
  %5551 = fmul fast float %5550, 0x3FEE471020000000
  %5552 = fadd fast float %5551, 0xBFD42F6020000000
  %5553 = fmul fast float %5509, 0x3FD20DD760000000
  %5554 = fmul fast float %5552, %5548
  %5555 = fmul fast float %5547, 0x3FDF454380000000
  %5556 = fmul fast float %5555, %5549
  %5557 = fadd fast float %5556, %5553
  %5558 = fadd fast float %5557, %5554
  %5559 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = fmul fast float %5559, 0x3FDF454380000000
  %5561 = fmul fast float %5559, %5559
  %5562 = fmul fast float %5561, 0x3FEE471020000000
  %5563 = fadd fast float %5562, 0xBFD42F6020000000
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5547, float %5548, float 0x3FD20DD760000000, float %5560, float %5563)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %89)  ; FMax(a,b)
  %5566 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = fcmp fast oeq float %5566, 0.000000e+00
  %5568 = fcmp fast oeq float %5565, 0.000000e+00
  %5569 = or i1 %5568, %5567
  br i1 %5569, label %5599, label %5570

; <label>:5570                                    ; preds = %5543
  %5571 = fsub fast float -0.000000e+00, %92
  %5572 = fsub fast float -0.000000e+00, %90
  %5573 = call float @dx.op.unary.f32(i32 24, float %5566)  ; Sqrt(value)
  %5574 = fdiv fast float %5573, %5565
  %5575 = fcmp fast ogt float %5574, 0x3FFB6F8900000000
  %5576 = select i1 %5575, float 0x3FFB6F8900000000, float %5574
  %5577 = fmul fast float %5576, 0x3FE8A23460000000
  %5578 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5579 = call float @dx.op.binary.f32(i32 35, float %5576, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5580 = fmul fast float %5578, %5565
  %5581 = fmul fast float %5579, 0x3FF279A740000000
  %5582 = fadd fast float %5581, -1.000000e+00
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %91, float %5571, float %5572, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.unary.f32(i32 25, float %5583)  ; Rsqrt(value)
  %5585 = fmul fast float %5584, %5571
  %5586 = fmul fast float %5584, %5572
  %5587 = fmul fast float %5584, %91
  %5588 = fmul fast float %5582, %5582
  %5589 = fsub fast float 1.000000e+00, %5588
  %5590 = fmul fast float %5579, 0x40005F8BE0000000
  %5591 = fsub fast float 0x400C5BF8A0000000, %5590
  %5592 = fdiv fast float %5580, %5591
  %5593 = fmul fast float %5592, 0x3FEE31C3C0000000
  %5594 = fmul fast float %5593, %5589
  %5595 = fmul fast float %5579, 0x3FDACB7480000000
  %5596 = fadd fast float %5595, 0xBFD7347680000000
  %5597 = fmul fast float %5596, %5592
  %5598 = fmul fast float %5597, %5589
  br label %5599

; <label>:5599                                    ; preds = %5570, %5543
  %5600 = phi float [ %5585, %5570 ], [ 0.000000e+00, %5543 ]
  %5601 = phi float [ %5586, %5570 ], [ 0.000000e+00, %5543 ]
  %5602 = phi float [ %5587, %5570 ], [ 0.000000e+00, %5543 ]
  %5603 = phi float [ %5594, %5570 ], [ 0.000000e+00, %5543 ]
  %5604 = phi float [ %5598, %5570 ], [ 0.000000e+00, %5543 ]
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fmul fast float %5605, %5605
  %5607 = fmul fast float %5606, 0x3FEE471020000000
  %5608 = fadd fast float %5607, 0xBFD42F6020000000
  %5609 = fmul fast float %5565, 0x3FD20DD760000000
  %5610 = fmul fast float %5608, %5604
  %5611 = fmul fast float %5603, 0x3FDF454380000000
  %5612 = fmul fast float %5611, %5605
  %5613 = fadd fast float %5612, %5609
  %5614 = fadd fast float %5613, %5610
  %5615 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5616 = fmul fast float %5615, 0x3FDF454380000000
  %5617 = fmul fast float %5615, %5615
  %5618 = fmul fast float %5617, 0x3FEE471020000000
  %5619 = fadd fast float %5618, 0xBFD42F6020000000
  %5620 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5603, float %5604, float 0x3FD20DD760000000, float %5616, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %85)  ; FMax(a,b)
  %5622 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fcmp fast oeq float %5622, 0.000000e+00
  %5624 = fcmp fast oeq float %5621, 0.000000e+00
  %5625 = or i1 %5624, %5623
  br i1 %5625, label %5655, label %5626

; <label>:5626                                    ; preds = %5599
  %5627 = fsub fast float -0.000000e+00, %88
  %5628 = fsub fast float -0.000000e+00, %86
  %5629 = call float @dx.op.unary.f32(i32 24, float %5622)  ; Sqrt(value)
  %5630 = fdiv fast float %5629, %5621
  %5631 = fcmp fast ogt float %5630, 0x3FFB6F8900000000
  %5632 = select i1 %5631, float 0x3FFB6F8900000000, float %5630
  %5633 = fmul fast float %5632, 0x3FE8A23460000000
  %5634 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5635 = call float @dx.op.binary.f32(i32 35, float %5632, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5636 = fmul fast float %5634, %5621
  %5637 = fmul fast float %5635, 0x3FF279A740000000
  %5638 = fadd fast float %5637, -1.000000e+00
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %87, float %5627, float %5628, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 25, float %5639)  ; Rsqrt(value)
  %5641 = fmul fast float %5640, %5627
  %5642 = fmul fast float %5640, %5628
  %5643 = fmul fast float %5640, %87
  %5644 = fmul fast float %5638, %5638
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = fmul fast float %5635, 0x40005F8BE0000000
  %5647 = fsub fast float 0x400C5BF8A0000000, %5646
  %5648 = fdiv fast float %5636, %5647
  %5649 = fmul fast float %5648, 0x3FEE31C3C0000000
  %5650 = fmul fast float %5649, %5645
  %5651 = fmul fast float %5635, 0x3FDACB7480000000
  %5652 = fadd fast float %5651, 0xBFD7347680000000
  %5653 = fmul fast float %5652, %5648
  %5654 = fmul fast float %5653, %5645
  br label %5655

; <label>:5655                                    ; preds = %5626, %5599
  %5656 = phi float [ %5641, %5626 ], [ 0.000000e+00, %5599 ]
  %5657 = phi float [ %5642, %5626 ], [ 0.000000e+00, %5599 ]
  %5658 = phi float [ %5643, %5626 ], [ 0.000000e+00, %5599 ]
  %5659 = phi float [ %5650, %5626 ], [ 0.000000e+00, %5599 ]
  %5660 = phi float [ %5654, %5626 ], [ 0.000000e+00, %5599 ]
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = fmul fast float %5661, %5661
  %5663 = fmul fast float %5662, 0x3FEE471020000000
  %5664 = fadd fast float %5663, 0xBFD42F6020000000
  %5665 = fmul fast float %5621, 0x3FD20DD760000000
  %5666 = fmul fast float %5664, %5660
  %5667 = fmul fast float %5659, 0x3FDF454380000000
  %5668 = fmul fast float %5667, %5661
  %5669 = fadd fast float %5668, %5665
  %5670 = fadd fast float %5669, %5666
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = fmul fast float %5671, 0x3FDF454380000000
  %5673 = fmul fast float %5671, %5671
  %5674 = fmul fast float %5673, 0x3FEE471020000000
  %5675 = fadd fast float %5674, 0xBFD42F6020000000
  %5676 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5659, float %5660, float 0x3FD20DD760000000, float %5672, float %5675)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = call float @dx.op.binary.f32(i32 35, float %5558, float 0.000000e+00)  ; FMax(a,b)
  %5678 = call float @dx.op.binary.f32(i32 35, float %5614, float 0.000000e+00)  ; FMax(a,b)
  %5679 = call float @dx.op.binary.f32(i32 35, float %5670, float 0.000000e+00)  ; FMax(a,b)
  %5680 = call float @dx.op.binary.f32(i32 35, float %5564, float 0.000000e+00)  ; FMax(a,b)
  %5681 = call float @dx.op.binary.f32(i32 35, float %5620, float 0.000000e+00)  ; FMax(a,b)
  %5682 = call float @dx.op.binary.f32(i32 35, float %5676, float 0.000000e+00)  ; FMax(a,b)
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = call float @dx.op.binary.f32(i32 36, float %5434, float %5684)  ; FMin(a,b)
  %5686 = fmul fast float %5685, %5492
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = call float @dx.op.binary.f32(i32 36, float %5435, float %5684)  ; FMin(a,b)
  %5692 = fmul fast float %5691, %5492
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = call float @dx.op.binary.f32(i32 36, float %5436, float %5684)  ; FMin(a,b)
  %5698 = fmul fast float %5697, %5492
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = bitcast float %5699 to i32
  %5701 = sub nsw i32 2129859010, %5700
  %5702 = bitcast i32 %5701 to float
  %5703 = fmul fast float %5677, %5491
  %5704 = fmul fast float %5703, %5690
  %5705 = fmul fast float %5678, %5491
  %5706 = fmul fast float %5705, %5696
  %5707 = fmul fast float %5679, %5491
  %5708 = fmul fast float %5707, %5702
  %5709 = call float @dx.op.binary.f32(i32 36, float %5428, float %5684)  ; FMin(a,b)
  %5710 = fmul fast float %5709, %5492
  %5711 = fsub fast float 1.000000e+00, %5710
  %5712 = bitcast float %5711 to i32
  %5713 = sub nsw i32 2129859010, %5712
  %5714 = bitcast i32 %5713 to float
  %5715 = call float @dx.op.binary.f32(i32 36, float %5429, float %5684)  ; FMin(a,b)
  %5716 = fmul fast float %5715, %5492
  %5717 = fsub fast float 1.000000e+00, %5716
  %5718 = bitcast float %5717 to i32
  %5719 = sub nsw i32 2129859010, %5718
  %5720 = bitcast i32 %5719 to float
  %5721 = call float @dx.op.binary.f32(i32 36, float %5480, float %5684)  ; FMin(a,b)
  %5722 = fmul fast float %5721, %5492
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = bitcast float %5723 to i32
  %5725 = sub nsw i32 2129859010, %5724
  %5726 = bitcast i32 %5725 to float
  %5727 = fmul fast float %5680, %5491
  %5728 = fmul fast float %5727, %5714
  %5729 = fmul fast float %5681, %5491
  %5730 = fmul fast float %5729, %5720
  %5731 = fmul fast float %5682, %5491
  %5732 = fmul fast float %5731, %5726
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5706, float %5708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = select i1 %281, float 0.000000e+00, float %5704
  %5735 = select i1 %281, float %5733, float %5706
  %5736 = select i1 %281, float 0.000000e+00, float %5708
  %5737 = call float @dx.op.dot3.f32(i32 55, float %5728, float %5730, float %5732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5738 = select i1 %281, float 0.000000e+00, float %5728
  %5739 = select i1 %281, float %5737, float %5730
  %5740 = select i1 %281, float 0.000000e+00, float %5732
  %5741 = fmul fast float %5507, 0x4071A18460000000
  %5742 = fadd fast float %5741, 0x3F0FFB4800000000
  %5743 = call float @dx.op.unary.f32(i32 23, float %5742)  ; Log(value)
  %5744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %5745 = extractvalue %dx.types.ResRet.i32 %5744, 0
  %5746 = and i32 %5745, 8388608
  %5747 = icmp eq i32 %5746, 0
  br i1 %5747, label %5748, label %5788

; <label>:5748                                    ; preds = %5655
  %5749 = fadd fast float %5743, 0x4006B851E0000000
  %5750 = add i32 %335, 12
  %5751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5750, i32 undef)  ; BufferLoad(srv,index,wot)
  %5752 = extractvalue %dx.types.ResRet.i32 %5751, 0
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5755 = lshr i32 %5752, 16
  %5756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5755)  ; LegacyF16ToF32(value)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5760 = fsub fast float %113, %5759
  %5761 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5762 = fmul fast float %5760, %5761
  %5763 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5764 = fsub fast float %5757, %5749
  %5765 = fcmp fast ogt float %5764, 0.000000e+00
  %5766 = fcmp fast olt float %5764, 0.000000e+00
  %5767 = zext i1 %5765 to i32
  %5768 = zext i1 %5766 to i32
  %5769 = sub nsw i32 %5767, %5768
  %5770 = sitofp i32 %5769 to float
  %5771 = call float @dx.op.unary.f32(i32 6, float %5764)  ; FAbs(value)
  %5772 = fsub fast float -0.000000e+00, %5756
  %5773 = fsub fast float %5772, %5754
  %5774 = fadd fast float %5773, %5771
  %5775 = call float @dx.op.binary.f32(i32 35, float %5774, float 0.000000e+00)  ; FMax(a,b)
  %5776 = fmul fast float %5770, %5775
  %5777 = fadd fast float %5743, %5776
  %5778 = call float @dx.op.unary.f32(i32 21, float %5777)  ; Exp(value)
  %5779 = fmul fast float %5778, 0x3F50624DE0000000
  %5780 = fcmp fast oeq float %5508, 0.000000e+00
  %5781 = fdiv fast float 0x400C5BF880000000, %5507
  %5782 = fmul fast float %5779, %5781
  %5783 = select i1 %5780, float 1.000000e+00, float %5782
  %5784 = call float @dx.op.binary.f32(i32 35, float %5783, float 1.000000e+00)  ; FMax(a,b)
  %5785 = fadd fast float %5784, -1.000000e+00
  %5786 = fmul fast float %5785, %5763
  %5787 = fadd fast float %5786, 1.000000e+00
  br label %5788

; <label>:5788                                    ; preds = %5748, %5655
  %5789 = phi float [ %5787, %5748 ], [ 1.000000e+00, %5655 ]
  %5790 = call float @dx.op.unary.f32(i32 6, float %5789)  ; FAbs(value)
  %5791 = fmul fast float %5790, %5734
  %5792 = fmul fast float %5790, %5735
  %5793 = fmul fast float %5790, %5736
  %5794 = fmul fast float %5482, 9.843750e-01
  %5795 = fmul fast float %5437, 9.843750e-01
  %5796 = fadd fast float %5794, 7.812500e-03
  %5797 = fadd fast float %5795, 7.812500e-03
  %5798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %5796, float %5797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5799 = extractvalue %dx.types.ResRet.f32 %5798, 2
  %5800 = extractvalue %dx.types.ResRet.f32 %5798, 3
  %5801 = fmul fast float %5799, %5428
  %5802 = fmul fast float %5799, %5429
  %5803 = fmul fast float %5799, %5480
  %5804 = fadd fast float %5801, %5800
  %5805 = fadd fast float %5802, %5800
  %5806 = fadd fast float %5803, %5800
  %5807 = fcmp fast ogt float %4247, 0.000000e+00
  br i1 %5807, label %5808, label %5834

; <label>:5808                                    ; preds = %5788
  %5809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4247, float %5482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5810 = extractvalue %dx.types.ResRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.ResRet.f32 %5809, 1
  %5812 = extractvalue %dx.types.ResRet.f32 %5809, 2
  %5813 = fadd fast float %5810, -5.000000e-01
  %5814 = fadd fast float %5811, -5.000000e-01
  %5815 = fadd fast float %5812, -5.000000e-01
  %5816 = fsub fast float 1.000000e+00, %5428
  %5817 = fsub fast float 1.000000e+00, %5429
  %5818 = fsub fast float 1.000000e+00, %5480
  %5819 = fmul fast float %5428, 4.000000e+00
  %5820 = fmul fast float %5819, %5816
  %5821 = fmul fast float %5820, %5813
  %5822 = fmul fast float %5429, 4.000000e+00
  %5823 = fmul fast float %5822, %5817
  %5824 = fmul fast float %5823, %5814
  %5825 = fmul fast float %5480, 4.000000e+00
  %5826 = fmul fast float %5825, %5818
  %5827 = fmul fast float %5826, %5815
  %5828 = fadd fast float %5821, %5804
  %5829 = fadd fast float %5824, %5805
  %5830 = fadd fast float %5827, %5806
  %5831 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5832 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5833 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  br label %5834

; <label>:5834                                    ; preds = %5808, %5788
  %5835 = phi float [ %5831, %5808 ], [ %5804, %5788 ]
  %5836 = phi float [ %5832, %5808 ], [ %5805, %5788 ]
  %5837 = phi float [ %5833, %5808 ], [ %5806, %5788 ]
  %5838 = call float @dx.op.binary.f32(i32 35, float %5836, float %5837)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5835, float %5838)  ; FMax(a,b)
  %5840 = fsub fast float 1.000000e+00, %5839
  %5841 = fmul fast float %5839, %5437
  %5842 = fadd fast float %5841, %5437
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %5845 = extractvalue %dx.types.CBufRet.f32 %5843, 3
  %5846 = fmul fast float %5842, %5844
  %5847 = fadd fast float %5846, %5845
  %5848 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5849 = fsub fast float 1.000000e+00, %5503
  %5850 = fadd fast float %5849, %5848
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = fcmp fast olt float %5851, 1.000000e+00
  br i1 %5852, label %5853, label %6329

; <label>:5853                                    ; preds = %5834
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5857 = fmul fast float %5855, %126
  %5858 = fmul fast float %5856, %127
  %5859 = fptoui float %5857 to i32
  %5860 = fptoui float %5858 to i32
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5865 = fadd fast float %113, -4.000000e+00
  %5866 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5867 = fadd fast float %5866, %5862
  %5868 = fmul fast float %5867, %5863
  %5869 = call float @dx.op.unary.f32(i32 23, float %5868)  ; Log(value)
  %5870 = fmul fast float %5869, %5864
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5873 = fmul fast float %5870, %5872
  %5874 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.i32 %5875, 1
  %5877 = add i32 %5876, -1
  %5878 = uitofp i32 %5876 to float
  %5879 = fmul fast float %5878, %5874
  %5880 = fptoui float %5879 to i32
  %5881 = call i32 @dx.op.binary.i32(i32 40, i32 %5880, i32 %5877)  ; UMin(a,b)
  %5882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.i32 %5882, 2
  %5884 = extractvalue %dx.types.CBufRet.i32 %5882, 3
  %5885 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5860, i32 %5883, i32 %5859)  ; UMad(a,b,c)
  %5886 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5881, i32 %5884, i32 %5885)  ; UMad(a,b,c)
  %5887 = call float @dx.op.binary.f32(i32 35, float %113, float 0.000000e+00)  ; FMax(a,b)
  %5888 = fptoui float %5887 to i32
  %5889 = lshr i32 %5888, 5
  %5890 = call i32 @dx.op.binary.i32(i32 40, i32 %5889, i32 8191)  ; UMin(a,b)
  %5891 = fsub fast float %4651, %211
  %5892 = call float @dx.op.unary.f32(i32 7, float %5891)  ; Saturate(value)
  %5893 = fcmp fast ogt float %5892, 0.000000e+00
  %5894 = fcmp fast ogt float %5490, 0.000000e+00
  %5895 = and i1 %5894, %5893
  br i1 %5895, label %5896, label %5925

; <label>:5896                                    ; preds = %5853
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5490, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = call float @dx.op.binary.f32(i32 35, float %5897, float -1.000000e+00)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 36, float %5898, float 1.000000e+00)  ; FMin(a,b)
  %5900 = fmul fast float %5899, %5899
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5901, 0x3FFC6E2300000000
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = fcmp fast ogt float %5903, 0.000000e+00
  %5905 = call float @dx.op.unary.f32(i32 24, float %5903)  ; Sqrt(value)
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = call float @dx.op.unary.f32(i32 23, float %5906)  ; Log(value)
  %5908 = fmul fast float %5907, 5.000000e+00
  %5909 = call float @dx.op.unary.f32(i32 21, float %5908)  ; Exp(value)
  %5910 = fmul fast float %5909, 0x3FEF591A60000000
  %5911 = fadd fast float %5910, 0x3F94DCB540000000
  %5912 = select i1 %5904, float %5911, float 1.000000e+00
  %5913 = fcmp fast oge float %5912, 1.000000e+00
  %5914 = fmul fast float %5897, 2.000000e+00
  %5915 = fadd fast float %5914, %5490
  %5916 = select i1 %5913, float %5915, float %5490
  %5917 = fsub fast float %5916, %5490
  %5918 = fmul fast float %5917, %5892
  %5919 = fadd fast float %5918, %5490
  %5920 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5919, float %5488, float %5489, float %5919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = call float @dx.op.unary.f32(i32 25, float %5920)  ; Rsqrt(value)
  %5922 = fmul fast float %5921, %5488
  %5923 = fmul fast float %5921, %5489
  %5924 = fmul fast float %5919, %5921
  br label %5925

; <label>:5925                                    ; preds = %5896, %5853
  %5926 = phi float [ %5922, %5896 ], [ %5488, %5853 ]
  %5927 = phi float [ %5923, %5896 ], [ %5489, %5853 ]
  %5928 = phi float [ %5924, %5896 ], [ %5490, %5853 ]
  %5929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.i32 %5929, 2
  %5931 = add nsw i32 %5930, -1
  %5932 = call i32 @dx.op.binary.i32(i32 37, i32 %5931, i32 0)  ; IMax(a,b)
  %5933 = shl i32 %5890, 2
  %5934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.i32 %5934, 0
  %5936 = lshr i32 %5935, 16
  %5937 = and i32 %5935, 65535
  %5938 = lshr i32 %5935, 21
  %5939 = lshr i32 %5937, 5
  %5940 = call i32 @dx.op.binary.i32(i32 40, i32 %5939, i32 %5932)  ; UMin(a,b)
  %5941 = icmp ugt i32 %5938, %5940
  br i1 %5941, label %6305, label %5942

; <label>:5942                                    ; preds = %5925
  br label %5943

; <label>:5943                                    ; preds = %6297, %5942
  %5944 = phi float [ %6298, %6297 ], [ 0.000000e+00, %5942 ]
  %5945 = phi float [ %6299, %6297 ], [ 0.000000e+00, %5942 ]
  %5946 = phi float [ %6300, %6297 ], [ 0.000000e+00, %5942 ]
  %5947 = phi float [ %6301, %6297 ], [ 1.000000e+00, %5942 ]
  %5948 = phi i32 [ %6302, %6297 ], [ %5938, %5942 ]
  %5949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.i32 %5949, 2
  %5951 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5886, i32 %5950, i32 %5948)  ; UMad(a,b,c)
  %5952 = shl i32 %5951, 2
  %5953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5952, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.i32 %5953, 0
  %5955 = shl i32 %5948, 5
  %5956 = sub nsw i32 %5936, %5955
  %5957 = call i32 @dx.op.binary.i32(i32 37, i32 %5956, i32 0)  ; IMax(a,b)
  %5958 = call i32 @dx.op.binary.i32(i32 38, i32 %5957, i32 31)  ; IMin(a,b)
  %5959 = sub nsw i32 1, %5936
  %5960 = add nsw i32 %5959, %5937
  %5961 = call i32 @dx.op.binary.i32(i32 37, i32 %5960, i32 0)  ; IMax(a,b)
  %5962 = call i32 @dx.op.binary.i32(i32 38, i32 %5961, i32 32)  ; IMin(a,b)
  %5963 = and i32 %5962, 31
  %5964 = shl i32 -1, %5963
  %5965 = xor i32 %5964, -1
  %5966 = and i32 %5958, 31
  %5967 = shl i32 %5965, %5966
  %5968 = icmp eq i32 %5962, 32
  %5969 = select i1 %5968, i32 -1, i32 %5967
  %5970 = and i32 %5969, %5954
  %5971 = icmp eq i32 %5970, 0
  br i1 %5971, label %6297, label %5972

; <label>:5972                                    ; preds = %5943
  br label %5973

; <label>:5973                                    ; preds = %6080, %5972
  %5974 = phi float [ %6081, %6080 ], [ %5944, %5972 ]
  %5975 = phi float [ %6082, %6080 ], [ %5945, %5972 ]
  %5976 = phi float [ %6083, %6080 ], [ %5946, %5972 ]
  %5977 = phi float [ %6084, %6080 ], [ %5947, %5972 ]
  %5978 = phi i32 [ %5983, %6080 ], [ %5970, %5972 ]
  %5979 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5978)  ; FirstbitLo(value)
  %5980 = add i32 %5979, %5955
  %5981 = and i32 %5979, 31
  %5982 = shl i32 1, %5981
  %5983 = xor i32 %5982, %5978
  %5984 = mul i32 %5980, 72
  %5985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = add i32 %5984, 12
  %5990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5989, i32 undef)  ; BufferLoad(srv,index,wot)
  %5991 = extractvalue %dx.types.ResRet.i32 %5990, 0
  %5992 = add i32 %5984, 16
  %5993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5992, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.ResRet.f32 %5993, 1
  %5996 = extractvalue %dx.types.ResRet.f32 %5993, 2
  %5997 = add i32 %5984, 28
  %5998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5997, i32 undef)  ; BufferLoad(srv,index,wot)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = add i32 %5984, 32
  %6001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6000, i32 undef)  ; BufferLoad(srv,index,wot)
  %6002 = extractvalue %dx.types.ResRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.ResRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.ResRet.f32 %6001, 2
  %6005 = extractvalue %dx.types.ResRet.f32 %6001, 3
  %6006 = add i32 %5984, 48
  %6007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6010 = add i32 %5984, 56
  %6011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = add i32 %5984, 64
  %6015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6014, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 1
  %6018 = mul i32 %5980, 60
  %6019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6018, i32 undef)  ; BufferLoad(srv,index,wot)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6019, 2
  %6023 = add i32 %6018, 12
  %6024 = add i32 %6018, 48
  %6025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6024, i32 undef)  ; BufferLoad(srv,index,wot)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = and i32 %5991, 32767
  %6030 = bitcast float %5986 to i32
  %6031 = icmp eq i32 %6030, -1
  %6032 = bitcast float %5987 to i32
  %6033 = and i32 %5991, 32768
  %6034 = icmp ne i32 %6033, 0
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6039 = fsub fast float %6020, %6036
  %6040 = fsub fast float %6021, %6037
  %6041 = fsub fast float %6022, %6038
  %6042 = fsub fast float %209, %6039
  %6043 = fsub fast float %210, %6040
  %6044 = fsub fast float %211, %6041
  %6045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6023, i32 undef)  ; BufferLoad(srv,index,wot)
  %6046 = extractvalue %dx.types.ResRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.ResRet.f32 %6045, 2
  %6049 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float %6046, float %6047, float %6048)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = add i32 %6018, 24
  %6051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6050, i32 undef)  ; BufferLoad(srv,index,wot)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float %6052, float %6053, float %6054)  ; Dot3(ax,ay,az,bx,by,bz)
  %6056 = add i32 %6018, 36
  %6057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6056, i32 undef)  ; BufferLoad(srv,index,wot)
  %6058 = extractvalue %dx.types.ResRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.ResRet.f32 %6057, 1
  %6060 = extractvalue %dx.types.ResRet.f32 %6057, 2
  %6061 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float %6058, float %6059, float %6060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = call float @dx.op.unary.f32(i32 6, float %6049)  ; FAbs(value)
  %6063 = call float @dx.op.unary.f32(i32 6, float %6055)  ; FAbs(value)
  %6064 = call float @dx.op.unary.f32(i32 6, float %6061)  ; FAbs(value)
  %6065 = fsub fast float %6026, %6062
  %6066 = fsub fast float %6027, %6063
  %6067 = fsub fast float %6028, %6064
  %6068 = fmul fast float %6065, %5994
  %6069 = fmul fast float %6066, %5995
  %6070 = fmul fast float %6067, %5996
  %6071 = call float @dx.op.binary.f32(i32 36, float %6069, float %6070)  ; FMin(a,b)
  %6072 = call float @dx.op.binary.f32(i32 36, float %6068, float %6071)  ; FMin(a,b)
  %6073 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6074 = call float @dx.op.binary.f32(i32 36, float %5977, float %6073)  ; FMin(a,b)
  %6075 = uitofp i1 %6034 to float
  %6076 = fadd fast float %5892, 1.000000e+00
  %6077 = fsub fast float %6076, %6075
  %6078 = fmul fast float %6074, %6077
  %6079 = fcmp fast ogt float %6078, 0.000000e+00
  br i1 %6079, label %6086, label %6080

; <label>:6080                                    ; preds = %6228, %5973
  %6081 = phi float [ %6292, %6228 ], [ %5974, %5973 ]
  %6082 = phi float [ %6293, %6228 ], [ %5975, %5973 ]
  %6083 = phi float [ %6294, %6228 ], [ %5976, %5973 ]
  %6084 = phi float [ %6295, %6228 ], [ %5977, %5973 ]
  %6085 = icmp eq i32 %5978, %5982
  br i1 %6085, label %6296, label %5973

; <label>:6086                                    ; preds = %5973
  br i1 %6031, label %6144, label %6087

; <label>:6087                                    ; preds = %6086
  %6088 = fsub fast float -0.000000e+00, %6046
  %6089 = fsub fast float -0.000000e+00, %6047
  %6090 = fsub fast float -0.000000e+00, %6048
  %6091 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %6088, float %6089, float %6090)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = fsub fast float -0.000000e+00, %6091
  %6093 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float %6088, float %6089, float %6090)  ; Dot3(ax,ay,az,bx,by,bz)
  %6094 = fadd fast float %6093, %6009
  %6095 = fadd fast float %6008, %6093
  %6096 = fsub fast float -0.000000e+00, %6095
  %6097 = fcmp ogt float %6091, -0.000000e+00
  %6098 = select i1 %6097, float %6096, float %6094
  %6099 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6100 = fdiv fast float 1.000000e+00, %6099
  %6101 = fmul fast float %6098, %6100
  %6102 = call float @dx.op.binary.f32(i32 35, float %6101, float 0.000000e+00)  ; FMax(a,b)
  %6103 = fsub fast float -0.000000e+00, %6052
  %6104 = fsub fast float -0.000000e+00, %6053
  %6105 = fsub fast float -0.000000e+00, %6054
  %6106 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %6103, float %6104, float %6105)  ; Dot3(ax,ay,az,bx,by,bz)
  %6107 = fsub fast float -0.000000e+00, %6106
  %6108 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float %6103, float %6104, float %6105)  ; Dot3(ax,ay,az,bx,by,bz)
  %6109 = fadd fast float %6108, %6013
  %6110 = fadd fast float %6012, %6108
  %6111 = fsub fast float -0.000000e+00, %6110
  %6112 = fcmp ogt float %6106, -0.000000e+00
  %6113 = select i1 %6112, float %6111, float %6109
  %6114 = call float @dx.op.unary.f32(i32 6, float %6107)  ; FAbs(value)
  %6115 = fdiv fast float 1.000000e+00, %6114
  %6116 = fmul fast float %6113, %6115
  %6117 = call float @dx.op.binary.f32(i32 35, float %6116, float 0.000000e+00)  ; FMax(a,b)
  %6118 = fsub fast float -0.000000e+00, %6058
  %6119 = fsub fast float -0.000000e+00, %6059
  %6120 = fsub fast float -0.000000e+00, %6060
  %6121 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %6118, float %6119, float %6120)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = fsub fast float -0.000000e+00, %6121
  %6123 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float %6118, float %6119, float %6120)  ; Dot3(ax,ay,az,bx,by,bz)
  %6124 = fadd fast float %6123, %6017
  %6125 = fadd fast float %6016, %6123
  %6126 = fsub fast float -0.000000e+00, %6125
  %6127 = fcmp ogt float %6121, -0.000000e+00
  %6128 = select i1 %6127, float %6126, float %6124
  %6129 = call float @dx.op.unary.f32(i32 6, float %6122)  ; FAbs(value)
  %6130 = fdiv fast float 1.000000e+00, %6129
  %6131 = fmul fast float %6128, %6130
  %6132 = call float @dx.op.binary.f32(i32 35, float %6131, float 0.000000e+00)  ; FMax(a,b)
  %6133 = call float @dx.op.binary.f32(i32 36, float %6117, float %6132)  ; FMin(a,b)
  %6134 = call float @dx.op.binary.f32(i32 36, float %6102, float %6133)  ; FMin(a,b)
  %6135 = fmul fast float %6134, %5926
  %6136 = fmul fast float %6134, %5927
  %6137 = fmul fast float %6134, %5928
  %6138 = fadd fast float %6135, %209
  %6139 = fadd fast float %6136, %210
  %6140 = fadd fast float %6137, %211
  %6141 = fsub fast float %6138, %5986
  %6142 = fsub fast float %6139, %5987
  %6143 = fsub fast float %6140, %5988
  br label %6151

; <label>:6144                                    ; preds = %6086
  %6145 = fmul fast float %5926, 8.096000e+03
  %6146 = fmul fast float %5927, 8.096000e+03
  %6147 = fmul fast float %5928, 8.096000e+03
  %6148 = fadd fast float %6145, %209
  %6149 = fadd fast float %6146, %210
  %6150 = fadd fast float %6147, %211
  br label %6151

; <label>:6151                                    ; preds = %6144, %6087
  %6152 = phi float [ %5926, %6144 ], [ %6141, %6087 ]
  %6153 = phi float [ %5927, %6144 ], [ %6142, %6087 ]
  %6154 = phi float [ %5928, %6144 ], [ %6143, %6087 ]
  %6155 = phi float [ %6148, %6144 ], [ %6138, %6087 ]
  %6156 = phi float [ %6149, %6144 ], [ %6139, %6087 ]
  %6157 = phi float [ %6150, %6144 ], [ %6140, %6087 ]
  %6158 = fcmp fast olt float %6005, 1.000000e+00
  br i1 %6158, label %6159, label %6190, !dx.controlflow.hints !105

; <label>:6159                                    ; preds = %6151
  %6160 = fmul fast float %6154, %6003
  %6161 = fmul fast float %6153, %6004
  %6162 = fsub fast float %6160, %6161
  %6163 = fmul fast float %6152, %6004
  %6164 = fmul fast float %6154, %6002
  %6165 = fsub fast float %6163, %6164
  %6166 = fmul fast float %6153, %6002
  %6167 = fmul fast float %6152, %6003
  %6168 = fsub fast float %6166, %6167
  %6169 = fmul fast float %6162, 2.000000e+00
  %6170 = fmul fast float %6165, 2.000000e+00
  %6171 = fmul fast float %6168, 2.000000e+00
  %6172 = fmul fast float %6169, %6005
  %6173 = fmul fast float %6170, %6005
  %6174 = fmul fast float %6171, %6005
  %6175 = fmul fast float %6171, %6003
  %6176 = fmul fast float %6170, %6004
  %6177 = fmul fast float %6169, %6004
  %6178 = fmul fast float %6171, %6002
  %6179 = fmul fast float %6170, %6002
  %6180 = fmul fast float %6169, %6003
  %6181 = fadd fast float %6175, %6152
  %6182 = fadd fast float %6181, %6172
  %6183 = fsub fast float %6182, %6176
  %6184 = fsub fast float %6153, %6178
  %6185 = fadd fast float %6184, %6173
  %6186 = fadd fast float %6185, %6177
  %6187 = fadd fast float %6174, %6154
  %6188 = fsub fast float %6187, %6180
  %6189 = fadd fast float %6188, %6179
  br label %6190

; <label>:6190                                    ; preds = %6159, %6151
  %6191 = phi float [ %6183, %6159 ], [ %6152, %6151 ]
  %6192 = phi float [ %6186, %6159 ], [ %6153, %6151 ]
  %6193 = phi float [ %6189, %6159 ], [ %6154, %6151 ]
  br i1 %6031, label %6225, label %6194

; <label>:6194                                    ; preds = %6190
  %6195 = fmul fast float %5437, 0x400187C840000000
  %6196 = fadd fast float %6195, 0xC00EFC2120000000
  %6197 = fmul fast float %6196, %5437
  %6198 = fadd fast float %6197, 0x3FE5D16340000000
  %6199 = fmul fast float %6198, %5437
  %6200 = fadd fast float %6199, 1.000000e+00
  %6201 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6202 = fsub fast float %6155, %209
  %6203 = fsub fast float %6156, %210
  %6204 = fsub fast float %6157, %211
  %6205 = fsub fast float %6155, %5986
  %6206 = fsub fast float %6156, %5987
  %6207 = fsub fast float %6157, %5988
  %6208 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6202, float %6203, float %6204)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = call float @dx.op.dot3.f32(i32 55, float %6205, float %6206, float %6207, float %6205, float %6206, float %6207)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = fadd fast float %6209, 0x3EE4F8B580000000
  %6211 = fdiv fast float %6208, %6210
  %6212 = bitcast float %6211 to i32
  %6213 = ashr i32 %6212, 1
  %6214 = add nsw i32 %6213, 532487669
  %6215 = bitcast i32 %6214 to float
  %6216 = fmul fast float %6215, %6201
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6218 = fmul fast float %6217, 0x4009981AE0000000
  %6219 = fsub fast float 0x40111BBD80000000, %6218
  %6220 = fmul fast float %6219, %6217
  %6221 = fadd fast float %6220, 0xC0009F6020000000
  %6222 = fmul fast float %6221, %6217
  %6223 = fadd fast float %6222, 1.000000e+00
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  br label %6228

; <label>:6225                                    ; preds = %6190
  %6226 = icmp ne i32 %6032, -1
  %6227 = zext i1 %6226 to i32
  br label %6228

; <label>:6228                                    ; preds = %6225, %6194
  %6229 = phi float [ %5437, %6225 ], [ %6224, %6194 ]
  %6230 = phi i32 [ %6227, %6225 ], [ 0, %6194 ]
  %6231 = fmul float %6229, 5.000000e+00
  %6232 = fsub float 5.000000e+00, %6231
  %6233 = icmp ne i32 %6230, 0
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = fadd fast float %6235, %6232
  %6237 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6236)  ; FMax(a,b)
  %6238 = call float @dx.op.unary.f32(i32 6, float %6191)  ; FAbs(value)
  %6239 = call float @dx.op.unary.f32(i32 6, float %6192)  ; FAbs(value)
  %6240 = fadd fast float %6239, %6238
  %6241 = call float @dx.op.unary.f32(i32 6, float %6193)  ; FAbs(value)
  %6242 = fadd fast float %6240, %6241
  %6243 = fcmp fast oeq float %6242, 0.000000e+00
  %6244 = fdiv fast float 1.000000e+00, %6242
  %6245 = select i1 %6243, float 1.000000e+00, float %6244
  %6246 = fmul fast float %6245, %6191
  %6247 = fmul fast float %6245, %6192
  %6248 = call float @dx.op.unary.f32(i32 6, float %6247)  ; FAbs(value)
  %6249 = call float @dx.op.unary.f32(i32 6, float %6246)  ; FAbs(value)
  %6250 = fsub fast float 1.000000e+00, %6248
  %6251 = fsub fast float 1.000000e+00, %6249
  %6252 = fcmp fast oge float %6246, 0.000000e+00
  %6253 = fcmp fast oge float %6247, 0.000000e+00
  %6254 = select i1 %6252, float 1.000000e+00, float -1.000000e+00
  %6255 = select i1 %6253, float 1.000000e+00, float -1.000000e+00
  %6256 = fcmp fast ole float %6193, 0.000000e+00
  %6257 = fmul fast float %6254, %6250
  %6258 = fmul fast float %6255, %6251
  %6259 = select i1 %6256, float %6257, float %6246
  %6260 = select i1 %6256, float %6258, float %6247
  %6261 = fmul fast float %6259, 5.000000e-01
  %6262 = fmul fast float %6260, 5.000000e-01
  %6263 = fadd fast float %6261, 5.000000e-01
  %6264 = fadd fast float %6262, 5.000000e-01
  %6265 = uitofp i32 %6029 to float
  %6266 = call float @dx.op.binary.f32(i32 36, float %6237, float 3.000000e+00)  ; FMin(a,b)
  %6267 = fadd fast float %6266, 2.000000e+00
  %6268 = call float @dx.op.unary.f32(i32 21, float %6267)  ; Exp(value)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6270 = fmul fast float %6269, %6268
  %6271 = fmul fast float %6270, 2.000000e+00
  %6272 = fsub fast float 1.000000e+00, %6271
  %6273 = fmul fast float %6263, %6272
  %6274 = fmul fast float %6264, %6272
  %6275 = fadd fast float %6273, %6270
  %6276 = fadd fast float %6274, %6270
  %6277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %54, float %6275, float %6276, float %6265, float undef, i32 0, i32 0, i32 undef, float %6237)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.ResRet.f32 %6277, 2
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 3
  %6283 = fmul fast float %6282, %5999
  %6284 = call float @dx.op.binary.f32(i32 36, float %5508, float %6283)  ; FMin(a,b)
  %6285 = select i1 %6233, float %6284, float %6283
  %6286 = fmul fast float %6278, %6078
  %6287 = fmul fast float %6286, %6285
  %6288 = fmul fast float %6279, %6078
  %6289 = fmul fast float %6288, %6285
  %6290 = fmul fast float %6280, %6078
  %6291 = fmul fast float %6290, %6285
  %6292 = fadd fast float %6287, %5974
  %6293 = fadd fast float %6289, %5975
  %6294 = fadd fast float %6291, %5976
  %6295 = fsub fast float %5977, %6078
  br label %6080

; <label>:6296                                    ; preds = %6080
  br label %6297

; <label>:6297                                    ; preds = %6296, %5943
  %6298 = phi float [ %5944, %5943 ], [ %6081, %6296 ]
  %6299 = phi float [ %5945, %5943 ], [ %6082, %6296 ]
  %6300 = phi float [ %5946, %5943 ], [ %6083, %6296 ]
  %6301 = phi float [ %5947, %5943 ], [ %6084, %6296 ]
  %6302 = add i32 %5948, 1
  %6303 = icmp ugt i32 %6302, %5940
  br i1 %6303, label %6304, label %5943, !llvm.loop !106

; <label>:6304                                    ; preds = %6297
  br label %6305

; <label>:6305                                    ; preds = %6304, %5925
  %6306 = phi float [ 0.000000e+00, %5925 ], [ %6298, %6304 ]
  %6307 = phi float [ 0.000000e+00, %5925 ], [ %6299, %6304 ]
  %6308 = phi float [ 0.000000e+00, %5925 ], [ %6300, %6304 ]
  %6309 = call float @dx.op.dot3.f32(i32 55, float %6306, float %6307, float %6308, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = select i1 %281, float 0.000000e+00, float %6306
  %6311 = select i1 %281, float %6309, float %6307
  %6312 = select i1 %281, float 0.000000e+00, float %6308
  %6313 = fcmp fast olt float %5851, 0.000000e+00
  %6314 = call float @dx.op.unary.f32(i32 6, float %5851)  ; FAbs(value)
  %6315 = fmul fast float %6314, %5738
  %6316 = fmul fast float %6314, %5739
  %6317 = fmul fast float %6314, %5740
  %6318 = select i1 %6313, float %5738, float %6315
  %6319 = select i1 %6313, float %5739, float %6316
  %6320 = select i1 %6313, float %5740, float %6317
  %6321 = fsub fast float 1.000000e+00, %6314
  %6322 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  %6323 = fmul fast float %6322, %6310
  %6324 = fmul fast float %6322, %6311
  %6325 = fmul fast float %6322, %6312
  %6326 = fadd fast float %6318, %6323
  %6327 = fadd fast float %6319, %6324
  %6328 = fadd fast float %6320, %6325
  br label %6329

; <label>:6329                                    ; preds = %6305, %5834
  %6330 = phi float [ %6326, %6305 ], [ %5738, %5834 ]
  %6331 = phi float [ %6327, %6305 ], [ %5739, %5834 ]
  %6332 = phi float [ %6328, %6305 ], [ %5740, %5834 ]
  %6333 = fmul fast float %209, %209
  %6334 = fmul fast float %210, %210
  %6335 = fadd fast float %6334, %6333
  %6336 = fmul fast float %211, %211
  %6337 = fadd fast float %6335, %6336
  %6338 = call float @dx.op.unary.f32(i32 24, float %6337)  ; Sqrt(value)
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6341 = fsub fast float %6338, %6340
  %6342 = extractvalue %dx.types.CBufRet.f32 %6339, 2
  %6343 = fmul fast float %6341, %6342
  %6344 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6339, 3
  %6347 = and i32 %5745, 4194304
  %6348 = icmp ne i32 %6347, 0
  %6349 = icmp ne i32 %5746, 0
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6360 = select i1 %6348, float %6351, float %6356
  %6361 = select i1 %6348, float %6352, float %6357
  %6362 = select i1 %6348, float %6353, float %6358
  %6363 = select i1 %6348, float %6354, float %6359
  %6364 = select i1 %6349, float 0.000000e+00, float %6363
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6368 = select i1 %6348, float %6366, float %6367
  %6369 = select i1 %6349, float 0.000000e+00, float %6368
  %6370 = extractvalue %dx.types.CBufRet.f32 %6365, 2
  %6371 = extractvalue %dx.types.CBufRet.f32 %6365, 3
  %6372 = select i1 %6348, float %6370, float %6371
  %6373 = select i1 %6349, float 0.000000e+00, float %6372
  %6374 = fmul fast float %6344, %71
  %6375 = fmul fast float %6374, %6345
  %6376 = fmul fast float %6375, %6369
  %6377 = fmul fast float %6374, %6346
  %6378 = fmul fast float %6377, %6373
  %6379 = fadd fast float %6378, 1.000000e+00
  %6380 = fmul fast float %5840, %5791
  %6381 = fmul fast float %6380, %6379
  %6382 = fmul fast float %5840, %5792
  %6383 = fmul fast float %6382, %6379
  %6384 = fmul fast float %5840, %5793
  %6385 = fmul fast float %6384, %6379
  %6386 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6387 = fcmp fast ogt float %6386, 0x3E7FF19E20000000
  %6388 = fdiv fast float 1.000000e+00, %6386
  %6389 = select i1 %6387, float %6388, float 0.000000e+00
  %6390 = fmul fast float %6389, %5434
  %6391 = fmul fast float %6389, %5435
  %6392 = fmul fast float %6389, %5436
  %6393 = fadd fast float %6390, -1.000000e+00
  %6394 = fadd fast float %6391, -1.000000e+00
  %6395 = fadd fast float %6392, -1.000000e+00
  %6396 = fmul fast float %6393, 5.000000e-01
  %6397 = fmul fast float %6394, 5.000000e-01
  %6398 = fmul fast float %6395, 5.000000e-01
  %6399 = fadd fast float %6396, 1.000000e+00
  %6400 = fadd fast float %6397, 1.000000e+00
  %6401 = fadd fast float %6398, 1.000000e+00
  %6402 = fadd fast float %6376, %4248
  %6403 = fsub fast float %6360, %6399
  %6404 = fsub fast float %6361, %6400
  %6405 = fsub fast float %6362, %6401
  %6406 = fmul fast float %6403, %6364
  %6407 = fmul fast float %6404, %6364
  %6408 = fmul fast float %6405, %6364
  %6409 = fadd fast float %6406, %6399
  %6410 = fadd fast float %6407, %6400
  %6411 = fadd fast float %6408, %6401
  %6412 = fmul fast float %6330, %5835
  %6413 = fmul fast float %6331, %5836
  %6414 = fmul fast float %6332, %5837
  %6415 = fsub fast float 1.000000e+00, %5482
  %6416 = bitcast float %6415 to i32
  %6417 = sitofp i32 %6416 to float
  %6418 = fmul fast float %6417, 5.000000e+00
  %6419 = fadd fast float %6418, 0xC1EFBF8940000000
  %6420 = fptosi float %6419 to i32
  %6421 = bitcast i32 %6420 to float
  %6422 = fmul fast float %6402, %6421
  %6423 = fmul fast float %6380, %6422
  %6424 = fmul fast float %6423, %6409
  %6425 = fmul fast float %6382, %6422
  %6426 = fmul fast float %6425, %6410
  %6427 = fmul fast float %6384, %6422
  %6428 = fmul fast float %6427, %6411
  %6429 = fmul fast float %6381, %4244
  %6430 = fmul fast float %6383, %4244
  %6431 = fmul fast float %6385, %4244
  %6432 = fadd fast float %6412, %4240
  %6433 = fadd fast float %6432, %6424
  %6434 = fmul fast float %6433, %4244
  %6435 = fadd fast float %6413, %4241
  %6436 = fadd fast float %6435, %6426
  %6437 = fmul fast float %6436, %4244
  %6438 = fadd fast float %6414, %4242
  %6439 = fadd fast float %6438, %6428
  %6440 = fmul fast float %6439, %4244
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 3
  %6443 = fcmp fast oeq float %6442, 0.000000e+00
  br i1 %6443, label %8148, label %6444

; <label>:6444                                    ; preds = %6329
  %6445 = extractvalue %dx.types.CBufRet.f32 %6441, 0
  %6446 = extractvalue %dx.types.CBufRet.f32 %6441, 1
  %6447 = extractvalue %dx.types.CBufRet.f32 %6441, 2
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  %6450 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6451 = extractvalue %dx.types.CBufRet.f32 %6448, 2
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6455 = call float @dx.op.dot3.f32(i32 55, float %6449, float %6450, float %6451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6456 = select i1 %281, float %6453, float %6449
  %6457 = select i1 %281, float %6455, float %6450
  %6458 = select i1 %281, float %6454, float %6451
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6461 = fmul fast float %6460, %135
  %6462 = fmul fast float %6460, %137
  %6463 = fmul fast float %6460, %139
  %6464 = fadd fast float %6461, %209
  %6465 = fadd fast float %6462, %210
  %6466 = fadd fast float %6463, %211
  %6467 = fcmp fast olt float %6442, 0.000000e+00
  br i1 %6467, label %7725, label %6468

; <label>:6468                                    ; preds = %6444
  %6469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6470 = extractvalue %dx.types.CBufRet.f32 %6469, 0
  %6471 = extractvalue %dx.types.CBufRet.f32 %6469, 1
  %6472 = extractvalue %dx.types.CBufRet.f32 %6469, 2
  %6473 = extractvalue %dx.types.CBufRet.f32 %6469, 3
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.CBufRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.CBufRet.f32 %6474, 2
  %6478 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6484 = fmul fast float %6470, %6464
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6471, float %6484)  ; FMad(a,b,c)
  %6486 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6472, float %6485)  ; FMad(a,b,c)
  %6487 = fadd fast float %6486, %6473
  %6488 = fmul fast float %6475, %6464
  %6489 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6476, float %6488)  ; FMad(a,b,c)
  %6490 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6477, float %6489)  ; FMad(a,b,c)
  %6491 = fadd fast float %6490, %6478
  %6492 = fmul fast float %6480, %6464
  %6493 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6481, float %6492)  ; FMad(a,b,c)
  %6494 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6482, float %6493)  ; FMad(a,b,c)
  %6495 = fadd fast float %6494, %6483
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = fcmp fast une float %6497, 0.000000e+00
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.CBufRet.f32 %6499, 3
  %6503 = fmul fast float %6502, %6487
  %6504 = fmul fast float %6502, %6491
  %6505 = fadd fast float %6503, %6500
  %6506 = fadd fast float %6504, %6501
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6510 = extractvalue %dx.types.CBufRet.f32 %6507, 3
  %6511 = fmul fast float %6510, %6487
  %6512 = fmul fast float %6510, %6491
  %6513 = fadd fast float %6511, %6508
  %6514 = fadd fast float %6512, %6509
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6517 = fsub fast float %6516, %6495
  %6518 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6519 = fmul fast float %6517, %6518
  %6520 = fsub fast float 1.000000e+00, %6519
  %6521 = call float @dx.op.unary.f32(i32 7, float %6520)  ; Saturate(value)
  br i1 %6498, label %6582, label %6522

; <label>:6522                                    ; preds = %6468
  %6523 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6526 = fadd fast float %6525, %6523
  %6527 = fcmp fast ogt float %6526, 0.000000e+00
  br i1 %6527, label %6528, label %6552

; <label>:6528                                    ; preds = %6522
  %6529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.CBufRet.f32 %6529, 1
  %6532 = fsub fast float %6513, %6530
  %6533 = fsub fast float %6514, %6531
  %6534 = fcmp fast olt float %6532, 0.000000e+00
  %6535 = fcmp fast olt float %6533, 0.000000e+00
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.CBufRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.CBufRet.f32 %6536, 2
  %6540 = extractvalue %dx.types.CBufRet.f32 %6536, 3
  %6541 = select i1 %6534, float %6537, float %6539
  %6542 = select i1 %6535, float %6538, float %6540
  %6543 = fmul fast float %6541, %6532
  %6544 = fmul fast float %6542, %6533
  %6545 = call float @dx.op.unary.f32(i32 6, float %6543)  ; FAbs(value)
  %6546 = call float @dx.op.unary.f32(i32 6, float %6544)  ; FAbs(value)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6548 = call float @dx.op.binary.f32(i32 35, float %6545, float %6546)  ; FMax(a,b)
  %6549 = fsub fast float %6547, %6548
  %6550 = call float @dx.op.unary.f32(i32 7, float %6549)  ; Saturate(value)
  %6551 = fmul fast float %6550, %6521
  br label %6552

; <label>:6552                                    ; preds = %6528, %6522
  %6553 = phi float [ %6551, %6528 ], [ 0.000000e+00, %6522 ]
  %6554 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6555 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6556 = fadd fast float %6555, %6554
  %6557 = fcmp fast ogt float %6556, 0.000000e+00
  br i1 %6557, label %6558, label %6582

; <label>:6558                                    ; preds = %6552
  %6559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6559, 0
  %6561 = extractvalue %dx.types.CBufRet.f32 %6559, 1
  %6562 = fsub fast float %6505, %6560
  %6563 = fsub fast float %6506, %6561
  %6564 = fcmp fast olt float %6562, 0.000000e+00
  %6565 = fcmp fast olt float %6563, 0.000000e+00
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6568 = extractvalue %dx.types.CBufRet.f32 %6566, 1
  %6569 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6570 = extractvalue %dx.types.CBufRet.f32 %6566, 3
  %6571 = select i1 %6564, float %6567, float %6569
  %6572 = select i1 %6565, float %6568, float %6570
  %6573 = fmul fast float %6571, %6562
  %6574 = fmul fast float %6572, %6563
  %6575 = call float @dx.op.unary.f32(i32 6, float %6573)  ; FAbs(value)
  %6576 = call float @dx.op.unary.f32(i32 6, float %6574)  ; FAbs(value)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6578 = call float @dx.op.binary.f32(i32 35, float %6575, float %6576)  ; FMax(a,b)
  %6579 = fsub fast float %6577, %6578
  %6580 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6581 = fmul fast float %6580, %6521
  br label %6582

; <label>:6582                                    ; preds = %6558, %6552, %6468
  %6583 = phi float [ 0.000000e+00, %6468 ], [ %6581, %6558 ], [ 0.000000e+00, %6552 ]
  %6584 = phi float [ 0.000000e+00, %6468 ], [ %6553, %6558 ], [ %6553, %6552 ]
  %6585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.f32 %6585, 1
  %6587 = call float @dx.op.unary.f32(i32 7, float %6586)  ; Saturate(value)
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = fsub fast float %6487, %6589
  %6592 = fsub fast float %6491, %6590
  %6593 = fcmp fast olt float %6591, 0.000000e+00
  %6594 = fcmp fast olt float %6592, 0.000000e+00
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6599 = extractvalue %dx.types.CBufRet.f32 %6595, 3
  %6600 = select i1 %6593, float %6596, float %6598
  %6601 = select i1 %6594, float %6597, float %6599
  %6602 = fmul fast float %6600, %6591
  %6603 = fmul fast float %6601, %6592
  %6604 = call float @dx.op.unary.f32(i32 6, float %6602)  ; FAbs(value)
  %6605 = call float @dx.op.unary.f32(i32 6, float %6603)  ; FAbs(value)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6607 = call float @dx.op.binary.f32(i32 35, float %6604, float %6605)  ; FMax(a,b)
  %6608 = fsub fast float %6606, %6607
  %6609 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6610 = call float @dx.op.binary.f32(i32 36, float %6609, float %6587)  ; FMin(a,b)
  %6611 = fmul fast float %6610, %6521
  %6612 = fsub fast float %6583, %6611
  %6613 = fsub fast float %6584, %6583
  %6614 = fsub fast float %6613, %6611
  %6615 = call float @dx.op.binary.f32(i32 35, float %6583, float %6584)  ; FMax(a,b)
  %6616 = call float @dx.op.binary.f32(i32 35, float %6611, float %6615)  ; FMax(a,b)
  %6617 = fcmp fast olt float %6616, 1.000000e+00
  br i1 %6617, label %6618, label %7016, !dx.controlflow.hints !108

; <label>:6618                                    ; preds = %6582
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 0
  %6621 = fcmp fast une float %6620, 0.000000e+00
  br i1 %6621, label %6622, label %7016, !dx.controlflow.hints !109

; <label>:6622                                    ; preds = %6618
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6626 = extractvalue %dx.types.CBufRet.f32 %6623, 2
  %6627 = extractvalue %dx.types.CBufRet.f32 %6623, 3
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6633, 3
  %6638 = fmul fast float %6624, %6464
  %6639 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6625, float %6638)  ; FMad(a,b,c)
  %6640 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6626, float %6639)  ; FMad(a,b,c)
  %6641 = fadd fast float %6640, %6627
  %6642 = fmul fast float %6629, %6464
  %6643 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6630, float %6642)  ; FMad(a,b,c)
  %6644 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6631, float %6643)  ; FMad(a,b,c)
  %6645 = fadd fast float %6644, %6632
  %6646 = fmul fast float %6634, %6464
  %6647 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6635, float %6646)  ; FMad(a,b,c)
  %6648 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6636, float %6647)  ; FMad(a,b,c)
  %6649 = fadd fast float %6648, %6637
  %6650 = fcmp fast oge float %6641, 1.000000e+00
  %6651 = fcmp fast oge float %6645, 1.000000e+00
  %6652 = or i1 %6650, %6651
  %6653 = fcmp fast olt float %6641, 0.000000e+00
  %6654 = fcmp fast olt float %6645, 0.000000e+00
  %6655 = or i1 %6653, %6654
  %6656 = or i1 %6652, %6655
  br i1 %6656, label %7016, label %6657, !dx.controlflow.hints !110

; <label>:6657                                    ; preds = %6622
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.CBufRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.CBufRet.f32 %6658, 2
  %6662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6663 = extractvalue %dx.types.CBufRet.i32 %6662, 2
  %6664 = uitofp i32 %6663 to float
  %6665 = extractvalue %dx.types.CBufRet.i32 %6662, 3
  %6666 = uitofp i32 %6665 to float
  %6667 = extractvalue %dx.types.CBufRet.f32 %6658, 3
  %6668 = fmul fast float %6667, 2.000000e+00
  %6669 = fsub fast float %6641, %6659
  %6670 = fsub fast float %6645, %6660
  %6671 = fmul fast float %6668, %6669
  %6672 = fmul fast float %6668, %6670
  %6673 = fdiv fast float 1.000000e+00, %6447
  %6674 = fmul fast float %6672, %6673
  %6675 = call float @dx.op.unary.f32(i32 6, float %6674)  ; FAbs(value)
  %6676 = fmul fast float %6661, %6466
  %6677 = fmul fast float %6676, %6668
  %6678 = call float @dx.op.unary.f32(i32 6, float %6677)  ; FAbs(value)
  %6679 = call float @dx.op.unary.f32(i32 6, float %6671)  ; FAbs(value)
  %6680 = call float @dx.op.binary.f32(i32 35, float %6678, float %6675)  ; FMax(a,b)
  %6681 = call float @dx.op.binary.f32(i32 35, float %6679, float %6680)  ; FMax(a,b)
  %6682 = fmul fast float %6681, 2.000000e+00
  %6683 = call float @dx.op.unary.f32(i32 23, float %6682)  ; Log(value)
  %6684 = call float @dx.op.binary.f32(i32 35, float %6683, float %6664)  ; FMax(a,b)
  %6685 = call float @dx.op.unary.f32(i32 22, float %6684)  ; Frc(value)
  %6686 = fadd fast float %6685, 0xBFEA666660000000
  %6687 = fmul fast float %6686, 8.000000e+00
  %6688 = call float @dx.op.unary.f32(i32 7, float %6687)  ; Saturate(value)
  %6689 = call float @dx.op.unary.f32(i32 27, float %6684)  ; Round_ni(value)
  %6690 = fadd fast float %6689, %6688
  %6691 = call float @dx.op.binary.f32(i32 36, float %6690, float %6666)  ; FMin(a,b)
  %6692 = call float @dx.op.unary.f32(i32 27, float %6691)  ; Round_ni(value)
  %6693 = fsub fast float -0.000000e+00, %6692
  %6694 = call float @dx.op.unary.f32(i32 21, float %6693)  ; Exp(value)
  %6695 = fmul fast float %6694, %6668
  %6696 = fmul fast float %6695, %6641
  %6697 = fmul fast float %6695, %6645
  %6698 = fmul fast float %6696, 2.500000e-01
  %6699 = fmul fast float %6697, 2.500000e-01
  %6700 = fadd fast float %6698, 5.000000e-01
  %6701 = fadd fast float %6699, 5.000000e-01
  %6702 = fsub fast float %6666, %6664
  %6703 = fptoui float %6702 to i32
  %6704 = add i32 %6703, 320
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6704)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.CBufRet.f32 %6705, 1
  %6708 = fcmp fast une float %6691, %6666
  %6709 = fsub fast float %6641, %6706
  %6710 = fsub fast float %6645, %6707
  %6711 = call float @dx.op.unary.f32(i32 6, float %6709)  ; FAbs(value)
  %6712 = call float @dx.op.unary.f32(i32 6, float %6710)  ; FAbs(value)
  %6713 = fmul fast float %6711, %6695
  %6714 = fmul fast float %6712, %6695
  %6715 = fcmp fast olt float %6713, 1.000000e+00
  %6716 = fcmp fast olt float %6714, 1.000000e+00
  %6717 = and i1 %6715, %6716
  %6718 = or i1 %6708, %6717
  br i1 %6718, label %6719, label %7016, !dx.controlflow.hints !111

; <label>:6719                                    ; preds = %6657
  %6720 = fmul fast float %6697, 5.000000e-01
  %6721 = fmul fast float %6696, 5.000000e-01
  %6722 = fadd fast float %6720, 5.000000e-01
  %6723 = fadd fast float %6721, 5.000000e-01
  %6724 = sitofp i32 %6663 to float
  %6725 = fsub fast float %6691, %6724
  %6726 = call float @dx.op.unary.f32(i32 27, float %6725)  ; Round_ni(value)
  %6727 = call float @dx.op.unary.f32(i32 22, float %6691)  ; Frc(value)
  %6728 = call float @dx.op.unary.f32(i32 22, float %6723)  ; Frc(value)
  %6729 = call float @dx.op.unary.f32(i32 22, float %6722)  ; Frc(value)
  %6730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6728, float %6729, float %6726, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6731 = extractvalue %dx.types.ResRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.ResRet.f32 %6730, 1
  %6733 = extractvalue %dx.types.ResRet.f32 %6730, 2
  %6734 = extractvalue %dx.types.ResRet.f32 %6730, 3
  %6735 = fcmp fast ogt float %6727, 0.000000e+00
  br i1 %6735, label %6736, label %6757, !dx.controlflow.hints !112

; <label>:6736                                    ; preds = %6719
  %6737 = fadd fast float %6726, 1.000000e+00
  %6738 = call float @dx.op.unary.f32(i32 22, float %6700)  ; Frc(value)
  %6739 = call float @dx.op.unary.f32(i32 22, float %6701)  ; Frc(value)
  %6740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6738, float %6739, float %6737, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6741 = extractvalue %dx.types.ResRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.ResRet.f32 %6740, 1
  %6743 = extractvalue %dx.types.ResRet.f32 %6740, 2
  %6744 = extractvalue %dx.types.ResRet.f32 %6740, 3
  %6745 = fsub fast float %6741, %6731
  %6746 = fsub fast float %6742, %6732
  %6747 = fsub fast float %6743, %6733
  %6748 = fsub fast float %6744, %6734
  %6749 = fmul fast float %6745, %6727
  %6750 = fmul fast float %6746, %6727
  %6751 = fmul fast float %6747, %6727
  %6752 = fmul fast float %6748, %6727
  %6753 = fadd fast float %6749, %6731
  %6754 = fadd fast float %6750, %6732
  %6755 = fadd fast float %6751, %6733
  %6756 = fadd fast float %6752, %6734
  br label %6757

; <label>:6757                                    ; preds = %6736, %6719
  %6758 = phi float [ %6753, %6736 ], [ %6731, %6719 ]
  %6759 = phi float [ %6754, %6736 ], [ %6732, %6719 ]
  %6760 = phi float [ %6755, %6736 ], [ %6733, %6719 ]
  %6761 = phi float [ %6756, %6736 ], [ %6734, %6719 ]
  %6762 = fadd fast float %6758, -5.000000e-01
  %6763 = fadd fast float %6760, -5.000000e-01
  %6764 = fmul fast float %6762, 0xBFD5555560000000
  %6765 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6763, float %6764)  ; FMad(a,b,c)
  %6766 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6759, float 0.000000e+00)  ; FMad(a,b,c)
  %6767 = fadd fast float %6766, %6761
  %6768 = fmul fast float %6762, -7.500000e-01
  %6769 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6763, float %6768)  ; FMad(a,b,c)
  %6770 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6759, float 0.000000e+00)  ; FMad(a,b,c)
  %6771 = fadd fast float %6770, %6761
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6778 = extractvalue %dx.types.CBufRet.f32 %6774, 3
  %6779 = fsub fast float %6775, %6765
  %6780 = fsub fast float %6776, %6767
  %6781 = fsub fast float %6777, %6769
  %6782 = fsub fast float %6778, %6771
  %6783 = fmul fast float %6779, %6773
  %6784 = fmul fast float %6780, %6773
  %6785 = fmul fast float %6781, %6773
  %6786 = fmul fast float %6782, %6773
  %6787 = fadd fast float %6783, %6765
  %6788 = fadd fast float %6784, %6767
  %6789 = fadd fast float %6785, %6769
  %6790 = fadd fast float %6786, %6771
  %6791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.i32 %6791, 0
  %6793 = and i32 %6792, 536870911
  %6794 = uitofp i32 %6793 to float
  %6795 = fmul fast float %6794, %6641
  %6796 = fmul fast float %6794, %6645
  %6797 = fptoui float %6795 to i32
  %6798 = fptoui float %6796 to i32
  %6799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6800 = extractvalue %dx.types.ResRet.i32 %6799, 0
  %6801 = and i32 %6800, 31
  %6802 = lshr i32 %6797, %6801
  %6803 = lshr i32 %6798, %6801
  %6804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6805 = extractvalue %dx.types.ResRet.i32 %6804, 0
  %6806 = and i32 %6805, 31
  %6807 = shl i32 1, %6806
  %6808 = call i32 @dx.op.binary.i32(i32 40, i32 %6807, i32 4)  ; UMin(a,b)
  %6809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6810 = extractvalue %dx.types.ResRet.i32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.i32 %6809, 1
  %6812 = icmp eq i32 %6808, 0
  br i1 %6812, label %6854, label %6813

; <label>:6813                                    ; preds = %6757
  br label %6814

; <label>:6814                                    ; preds = %6842, %6813
  %6815 = phi i32 [ %6845, %6842 ], [ 0, %6813 ]
  %6816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6817 = extractvalue %dx.types.ResRet.i32 %6816, 0
  %6818 = lshr i32 %6817, 16
  %6819 = and i32 %6818, 31
  %6820 = shl i32 %6803, %6819
  %6821 = add i32 %6820, %6802
  %6822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6823 = extractvalue %dx.types.ResRet.i32 %6822, 0
  %6824 = and i32 %6823, 31
  %6825 = shl i32 %6821, %6824
  %6826 = add i32 %6825, %6815
  %6827 = shl i32 %6826, 2
  %6828 = add i32 %6827, 32
  %6829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6828, i32 undef)  ; BufferLoad(srv,index,wot)
  %6830 = extractvalue %dx.types.ResRet.i32 %6829, 0
  %6831 = icmp slt i32 %6830, 0
  %6832 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6815
  %6833 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 %6815
  %6834 = bitcast float* %6832 to i32*
  %6835 = bitcast float* %6833 to i32*
  br i1 %6831, label %6836, label %6842

; <label>:6836                                    ; preds = %6814
  %6837 = and i32 %6830, 1073741823
  %6838 = add nuw nsw i32 %6837, 20
  %6839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6838, i32 undef)  ; BufferLoad(srv,index,wot)
  %6840 = extractvalue %dx.types.ResRet.i32 %6839, 0
  %6841 = extractvalue %dx.types.ResRet.i32 %6839, 1
  br label %6842

; <label>:6842                                    ; preds = %6836, %6814
  %6843 = phi i32 [ %6840, %6836 ], [ %6810, %6814 ]
  %6844 = phi i32 [ %6841, %6836 ], [ %6811, %6814 ]
  store i32 %6843, i32* %6834, align 4
  store i32 %6844, i32* %6835, align 4
  %6845 = add nuw i32 %6815, 1
  %6846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.i32 %6846, 2
  %6848 = icmp eq i32 %6847, 0
  %6849 = icmp ugt i32 %6830, -1073741825
  %6850 = and i1 %6849, %6848
  %6851 = icmp ult i32 %6845, %6808
  %6852 = and i1 %6850, %6851
  br i1 %6852, label %6814, label %6853

; <label>:6853                                    ; preds = %6842
  br label %6854

; <label>:6854                                    ; preds = %6853, %6757
  %6855 = phi i32 [ 0, %6757 ], [ %6845, %6853 ]
  %6856 = extractvalue %dx.types.CBufRet.f32 %6619, 2
  %6857 = fptoui float %6856 to i32
  %6858 = icmp eq i32 %6857, 0
  br i1 %6858, label %6910, label %6859

; <label>:6859                                    ; preds = %6854
  br label %6860

; <label>:6860                                    ; preds = %6905, %6859
  %6861 = phi i32 [ %6906, %6905 ], [ %6855, %6859 ]
  %6862 = phi i32 [ %6907, %6905 ], [ 0, %6859 ]
  %6863 = lshr i32 %6862, 2
  %6864 = and i32 %6862, 3
  %6865 = add nuw nsw i32 %6863, 83
  %6866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %6865)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.i32 %6866, 0
  %6868 = extractvalue %dx.types.CBufRet.i32 %6866, 1
  %6869 = extractvalue %dx.types.CBufRet.i32 %6866, 2
  %6870 = extractvalue %dx.types.CBufRet.i32 %6866, 3
  %6871 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %6867, i32* %6871, align 4
  %6872 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %6868, i32* %6872, align 4
  %6873 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %6869, i32* %6873, align 4
  %6874 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %6870, i32* %6874, align 4
  %6875 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %6864
  %6876 = load i32, i32* %6875, align 4, !tbaa !113, !noalias !117
  %6877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6878 = extractvalue %dx.types.ResRet.i32 %6877, 0
  %6879 = lshr i32 %6878, 16
  %6880 = and i32 %6879, 31
  %6881 = shl i32 %6803, %6880
  %6882 = add i32 %6881, %6802
  %6883 = shl i32 %6882, 2
  %6884 = add i32 %6883, %6876
  %6885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6884, i32 undef)  ; BufferLoad(srv,index,wot)
  %6886 = extractvalue %dx.types.ResRet.i32 %6885, 0
  %6887 = icmp eq i32 %6886, 0
  br i1 %6887, label %6905, label %6888

; <label>:6888                                    ; preds = %6860
  %6889 = icmp slt i32 %6886, 0
  %6890 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6861
  %6891 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 %6861
  %6892 = bitcast float* %6890 to i32*
  %6893 = bitcast float* %6891 to i32*
  br i1 %6889, label %6894, label %6901

; <label>:6894                                    ; preds = %6888
  %6895 = and i32 %6886, 1073741823
  %6896 = add i32 %6876, 20
  %6897 = add i32 %6896, %6895
  %6898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6897, i32 undef)  ; BufferLoad(srv,index,wot)
  %6899 = extractvalue %dx.types.ResRet.i32 %6898, 0
  %6900 = extractvalue %dx.types.ResRet.i32 %6898, 1
  br label %6901

; <label>:6901                                    ; preds = %6894, %6888
  %6902 = phi i32 [ %6899, %6894 ], [ %6810, %6888 ]
  %6903 = phi i32 [ %6900, %6894 ], [ %6811, %6888 ]
  store i32 %6902, i32* %6892, align 4
  store i32 %6903, i32* %6893, align 4
  %6904 = add i32 %6861, 1
  br label %6905

; <label>:6905                                    ; preds = %6901, %6860
  %6906 = phi i32 [ %6861, %6860 ], [ %6904, %6901 ]
  %6907 = add nuw i32 %6862, 1
  %6908 = icmp eq i32 %6907, %6857
  br i1 %6908, label %6909, label %6860

; <label>:6909                                    ; preds = %6905
  br label %6910

; <label>:6910                                    ; preds = %6909, %6854
  %6911 = phi i32 [ %6855, %6854 ], [ %6906, %6909 ]
  %6912 = icmp eq i32 %6911, 1
  %6913 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 0
  %6914 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 0
  br i1 %6912, label %6915, label %6918

; <label>:6915                                    ; preds = %6910
  %6916 = load float, float* %6913, align 4
  %6917 = load float, float* %6914, align 4
  br label %6945

; <label>:6918                                    ; preds = %6910
  %6919 = load float, float* %6913, align 4
  %6920 = load float, float* %6914, align 4
  %6921 = fdiv fast float 1.000000e+00, %6920
  %6922 = fsub fast float %6919, %6921
  %6923 = icmp ugt i32 %6911, 1
  br i1 %6923, label %6924, label %6940

; <label>:6924                                    ; preds = %6918
  br label %6925

; <label>:6925                                    ; preds = %6925, %6924
  %6926 = phi float [ %6935, %6925 ], [ %6922, %6924 ]
  %6927 = phi float [ %6936, %6925 ], [ %6919, %6924 ]
  %6928 = phi i32 [ %6937, %6925 ], [ 1, %6924 ]
  %6929 = getelementptr [12 x float], [12 x float]* %114, i32 0, i32 %6928
  %6930 = load float, float* %6929, align 4
  %6931 = getelementptr [12 x float], [12 x float]* %115, i32 0, i32 %6928
  %6932 = load float, float* %6931, align 4
  %6933 = fdiv fast float 1.000000e+00, %6932
  %6934 = fsub fast float %6930, %6933
  %6935 = call float @dx.op.binary.f32(i32 36, float %6926, float %6934)  ; FMin(a,b)
  %6936 = call float @dx.op.binary.f32(i32 35, float %6927, float %6930)  ; FMax(a,b)
  %6937 = add nuw i32 %6928, 1
  %6938 = icmp eq i32 %6937, %6911
  br i1 %6938, label %6939, label %6925

; <label>:6939                                    ; preds = %6925
  br label %6940

; <label>:6940                                    ; preds = %6939, %6918
  %6941 = phi float [ %6922, %6918 ], [ %6935, %6939 ]
  %6942 = phi float [ %6919, %6918 ], [ %6936, %6939 ]
  %6943 = fsub fast float %6942, %6941
  %6944 = fdiv fast float 1.000000e+00, %6943
  br label %6945

; <label>:6945                                    ; preds = %6940, %6915
  %6946 = phi float [ %6916, %6915 ], [ %6942, %6940 ]
  %6947 = phi float [ %6917, %6915 ], [ %6944, %6940 ]
  %6948 = fadd fast float %6649, %6946
  %6949 = fmul fast float %6948, %6947
  %6950 = call float @dx.op.unary.f32(i32 7, float %6949)  ; Saturate(value)
  %6951 = fmul fast float %6950, 2.000000e+00
  %6952 = fsub fast float 1.000000e+00, %6951
  %6953 = fmul fast float %6787, %6787
  %6954 = fsub fast float %6788, %6953
  %6955 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6954)  ; FMax(a,b)
  %6956 = fdiv fast float 1.000000e+00, %6955
  %6957 = fmul fast float %6788, %6787
  %6958 = fsub fast float %6789, %6957
  %6959 = fsub fast float %6952, %6787
  %6960 = fmul fast float %6952, %6952
  %6961 = fsub fast float %6960, %6788
  %6962 = fmul fast float %6956, %6958
  %6963 = fmul fast float %6962, %6959
  %6964 = fsub fast float %6961, %6963
  %6965 = fmul fast float %6788, %6788
  %6966 = fsub fast float %6790, %6965
  %6967 = fmul fast float %6958, %6958
  %6968 = fmul fast float %6967, %6956
  %6969 = fsub fast float %6966, %6968
  %6970 = fdiv fast float %6964, %6969
  %6971 = fmul fast float %6970, %6958
  %6972 = fsub fast float %6959, %6971
  %6973 = fmul fast float %6972, %6956
  %6974 = fmul fast float %6973, %6787
  %6975 = fsub fast float 1.000000e+00, %6974
  %6976 = fmul fast float %6970, %6788
  %6977 = fsub fast float %6975, %6976
  %6978 = fmul fast float %6973, %6973
  %6979 = fmul fast float %6970, 4.000000e+00
  %6980 = fmul fast float %6979, %6977
  %6981 = fsub fast float %6978, %6980
  %6982 = call float @dx.op.unary.f32(i32 24, float %6981)  ; Sqrt(value)
  %6983 = fcmp fast oge float %6973, 0.000000e+00
  %6984 = fsub fast float -0.000000e+00, %6982
  %6985 = select i1 %6983, float %6984, float %6982
  %6986 = fsub fast float %6985, %6973
  %6987 = fdiv fast float %6986, %6970
  %6988 = fdiv fast float %6977, %6986
  %6989 = fmul fast float %6987, 5.000000e-01
  %6990 = fmul fast float %6988, 2.000000e+00
  %6991 = select i1 %6983, float %6989, float %6990
  %6992 = select i1 %6983, float %6990, float %6989
  %6993 = call float @dx.op.binary.f32(i32 35, float %6991, float %6992)  ; FMax(a,b)
  %6994 = call float @dx.op.binary.f32(i32 36, float %6991, float %6992)  ; FMin(a,b)
  %6995 = fcmp fast ogt float %6952, %6993
  %6996 = fsub fast float %6952, %6994
  %6997 = fsub fast float %6952, %6993
  %6998 = fsub fast float %6993, %6994
  %6999 = select i1 %6995, float %6997, float %6998
  %7000 = fmul float %6996, %6999
  %7001 = select i1 %6995, float %6994, float %6952
  %7002 = fcmp fast ogt float %6952, %6994
  %7003 = fmul fast float %7001, %6993
  %7004 = fadd fast float %7001, %6993
  %7005 = fmul fast float %7004, %6787
  %7006 = fadd fast float %7003, %6788
  %7007 = fsub fast float %7006, %7005
  %7008 = fdiv fast float %7007, %7000
  %7009 = select i1 %7002, float %7008, float 0.000000e+00
  %7010 = fsub fast float 1.000000e+00, %7009
  %7011 = select i1 %6995, float %7010, float %7009
  %7012 = call float @dx.op.unary.f32(i32 7, float %7011)  ; Saturate(value)
  %7013 = extractvalue %dx.types.CBufRet.f32 %6772, 3
  %7014 = fmul fast float %7013, %7012
  %7015 = fsub fast float 1.000000e+00, %7014
  br label %7016

; <label>:7016                                    ; preds = %6945, %6657, %6622, %6618, %6582
  %7017 = phi float [ 1.000000e+00, %6582 ], [ %7015, %6945 ], [ 1.000000e+00, %6622 ], [ 1.000000e+00, %6657 ], [ 1.000000e+00, %6618 ]
  %7018 = fcmp fast ogt float %6614, 0.000000e+00
  br i1 %7018, label %7019, label %7183, !dx.controlflow.hints !126

; <label>:7019                                    ; preds = %7016
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 2
  %7022 = fadd fast float %7021, %6495
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %7025 = extractvalue %dx.types.CBufRet.f32 %7023, 3
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7028 = call float @dx.op.binary.f32(i32 35, float %7022, float 0.000000e+00)  ; FMax(a,b)
  %7029 = fadd fast float %7028, 0x3F10000000000000
  %7030 = fcmp fast oeq float %7027, 0.000000e+00
  br i1 %7030, label %7031, label %7098

; <label>:7031                                    ; preds = %7019
  %7032 = extractvalue %dx.types.CBufRet.f32 %7023, 1
  %7033 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %7034 = fmul fast float %7033, %6513
  %7035 = fmul fast float %7032, %6514
  %7036 = fadd fast float %7034, 5.000000e-01
  %7037 = call float @dx.op.unary.f32(i32 27, float %7036)  ; Round_ni(value)
  %7038 = fadd fast float %7035, 5.000000e-01
  %7039 = call float @dx.op.unary.f32(i32 27, float %7038)  ; Round_ni(value)
  %7040 = fsub fast float %7036, %7037
  %7041 = fsub fast float %7038, %7039
  %7042 = fadd fast float %7037, -5.000000e-01
  %7043 = fadd fast float %7039, -5.000000e-01
  %7044 = fmul fast float %7040, 2.000000e+00
  %7045 = fsub fast float 3.000000e+00, %7044
  %7046 = fadd fast float %7044, 1.000000e+00
  %7047 = fsub fast float 2.000000e+00, %7040
  %7048 = bitcast float %7045 to i32
  %7049 = sub nsw i32 2129859010, %7048
  %7050 = bitcast i32 %7049 to float
  %7051 = fmul fast float %7050, %7047
  %7052 = fadd fast float %7051, -1.000000e+00
  %7053 = bitcast float %7046 to i32
  %7054 = sub nsw i32 2129859010, %7053
  %7055 = bitcast i32 %7054 to float
  %7056 = fmul fast float %7055, %7040
  %7057 = fadd fast float %7056, 1.000000e+00
  %7058 = fmul fast float %7041, 2.000000e+00
  %7059 = fsub fast float 3.000000e+00, %7058
  %7060 = fadd fast float %7058, 1.000000e+00
  %7061 = fsub fast float 2.000000e+00, %7041
  %7062 = bitcast float %7059 to i32
  %7063 = sub nsw i32 2129859010, %7062
  %7064 = bitcast i32 %7063 to float
  %7065 = fmul fast float %7064, %7061
  %7066 = fadd fast float %7065, -1.000000e+00
  %7067 = bitcast float %7060 to i32
  %7068 = sub nsw i32 2129859010, %7067
  %7069 = bitcast i32 %7068 to float
  %7070 = fmul fast float %7069, %7041
  %7071 = fadd fast float %7070, 1.000000e+00
  %7072 = fadd fast float %7052, %7042
  %7073 = fmul fast float %7072, %7024
  %7074 = fadd fast float %7066, %7043
  %7075 = fmul fast float %7074, %7025
  %7076 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7073, float %7075, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = fmul fast float %7077, %7045
  %7079 = fadd fast float %7057, %7042
  %7080 = fmul fast float %7079, %7024
  %7081 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7080, float %7075, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7082 = extractvalue %dx.types.ResRet.f32 %7081, 0
  %7083 = fmul fast float %7082, %7046
  %7084 = fadd fast float %7071, %7043
  %7085 = fmul fast float %7084, %7025
  %7086 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7073, float %7085, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = fmul fast float %7087, %7045
  %7089 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7080, float %7085, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 0
  %7091 = fmul fast float %7090, %7046
  %7092 = fadd fast float %7091, %7088
  %7093 = fmul fast float %7092, %7060
  %7094 = fadd fast float %7083, %7078
  %7095 = fmul fast float %7094, %7059
  %7096 = fadd fast float %7095, %7093
  %7097 = fmul fast float %7096, 6.250000e-02
  br label %7183

; <label>:7098                                    ; preds = %7019
  %7099 = fmul fast float %292, 0x401921FB60000000
  %7100 = call float @dx.op.unary.f32(i32 13, float %7099)  ; Sin(value)
  %7101 = call float @dx.op.unary.f32(i32 12, float %7099)  ; Cos(value)
  %7102 = fsub fast float -0.000000e+00, %7100
  br label %7103

; <label>:7103                                    ; preds = %7152, %7098
  %7104 = phi float [ 0.000000e+00, %7098 ], [ %7147, %7152 ]
  %7105 = phi float [ 0.000000e+00, %7098 ], [ %7149, %7152 ]
  %7106 = phi i32 [ 0, %7098 ], [ %7153, %7152 ]
  %7107 = mul i32 %7106, 2
  %7108 = add i32 0, %7107
  %7109 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7108
  %7110 = load float, float* %7109, align 4
  %7111 = mul i32 %7106, 2
  %7112 = add i32 1, %7111
  %7113 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7112
  %7114 = load float, float* %7113, align 4
  %7115 = fmul fast float %7110, %7101
  %7116 = call float @dx.op.tertiary.f32(i32 46, float %7114, float %7102, float %7115)  ; FMad(a,b,c)
  %7117 = fmul fast float %7110, %7100
  %7118 = call float @dx.op.tertiary.f32(i32 46, float %7114, float %7101, float %7117)  ; FMad(a,b,c)
  %7119 = fmul fast float %7116, %7027
  %7120 = fmul fast float %7118, %7027
  %7121 = fadd fast float %7119, %6513
  %7122 = fadd fast float %7120, %6514
  %7123 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %7121, float %7122, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7124 = extractvalue %dx.types.ResRet.f32 %7123, 0
  %7125 = extractvalue %dx.types.ResRet.f32 %7123, 1
  %7126 = extractvalue %dx.types.ResRet.f32 %7123, 2
  %7127 = extractvalue %dx.types.ResRet.f32 %7123, 3
  %7128 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 0
  store float %7124, float* %7128, align 4
  %7129 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 1
  store float %7125, float* %7129, align 4
  %7130 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 2
  store float %7126, float* %7130, align 4
  %7131 = getelementptr inbounds [4 x float], [4 x float]* %119, i32 0, i32 3
  store float %7127, float* %7131, align 4
  %7132 = fsub fast float %7124, %7029
  %7133 = fcmp fast olt float %7132, 0.000000e+00
  %7134 = select i1 %7133, float 0.000000e+00, float 1.000000e+00
  %7135 = fadd fast float %7134, %7104
  %7136 = fmul fast float %7134, %7132
  %7137 = fadd fast float %7136, %7105
  br label %7138

; <label>:7138                                    ; preds = %7138, %7103
  %7139 = phi i32 [ 1, %7103 ], [ %7150, %7138 ]
  %7140 = phi float [ %7137, %7103 ], [ %7149, %7138 ]
  %7141 = phi float [ %7135, %7103 ], [ %7147, %7138 ]
  %7142 = getelementptr [4 x float], [4 x float]* %119, i32 0, i32 %7139
  %7143 = load float, float* %7142, align 4, !tbaa !127, !noalias !117
  %7144 = fsub fast float %7143, %7029
  %7145 = fcmp fast olt float %7144, 0.000000e+00
  %7146 = select i1 %7145, float 0.000000e+00, float 1.000000e+00
  %7147 = fadd fast float %7146, %7141
  %7148 = fmul fast float %7146, %7144
  %7149 = fadd fast float %7148, %7140
  %7150 = add nuw nsw i32 %7139, 1
  %7151 = icmp eq i32 %7150, 4
  br i1 %7151, label %7152, label %7138, !llvm.loop !129

; <label>:7152                                    ; preds = %7138
  %7153 = add nuw nsw i32 %7106, 1
  %7154 = icmp eq i32 %7153, 8
  br i1 %7154, label %7155, label %7103, !llvm.loop !130

; <label>:7155                                    ; preds = %7152
  %7156 = fdiv fast float 1.000000e+00, %7147
  %7157 = fmul fast float %7156, %7149
  %7158 = fdiv fast float 1.000000e+00, %7029
  %7159 = fmul fast float %7157, %7158
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = call float @dx.op.binary.f32(i32 35, float %7160, float 0.000000e+00)  ; FMax(a,b)
  %7162 = fmul fast float %7147, 3.125000e-02
  %7163 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  %7164 = fmul fast float %7163, 2.000000e+00
  %7165 = fadd fast float %7164, -1.000000e+00
  %7166 = fcmp fast ogt float %7165, 0.000000e+00
  %7167 = fcmp fast olt float %7165, 0.000000e+00
  %7168 = zext i1 %7166 to i32
  %7169 = zext i1 %7167 to i32
  %7170 = sub nsw i32 %7168, %7169
  %7171 = sitofp i32 %7170 to float
  %7172 = fmul fast float %7171, %7165
  %7173 = fsub fast float 1.000000e+00, %7172
  %7174 = fmul fast float %7173, %7173
  %7175 = fmul fast float %7174, %7173
  %7176 = fsub fast float %7173, %7175
  %7177 = fmul fast float %7176, %7161
  %7178 = fsub fast float 1.000000e+00, %7175
  %7179 = fsub fast float %7178, %7177
  %7180 = fmul fast float %7171, 5.000000e-01
  %7181 = fmul fast float %7180, %7179
  %7182 = fsub fast float 5.000000e-01, %7181
  br label %7183

; <label>:7183                                    ; preds = %7155, %7031, %7016
  %7184 = phi float [ 1.000000e+00, %7016 ], [ %7097, %7031 ], [ %7182, %7155 ]
  %7185 = fcmp fast ogt float %6612, 0.000000e+00
  br i1 %7185, label %7186, label %7350, !dx.controlflow.hints !131

; <label>:7186                                    ; preds = %7183
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 1
  %7189 = fadd fast float %7188, %6495
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 2
  %7192 = extractvalue %dx.types.CBufRet.f32 %7190, 3
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 1
  %7195 = call float @dx.op.binary.f32(i32 35, float %7189, float 0.000000e+00)  ; FMax(a,b)
  %7196 = fadd fast float %7195, 0x3F10000000000000
  %7197 = fcmp fast oeq float %7194, 0.000000e+00
  br i1 %7197, label %7198, label %7265

; <label>:7198                                    ; preds = %7186
  %7199 = extractvalue %dx.types.CBufRet.f32 %7190, 1
  %7200 = extractvalue %dx.types.CBufRet.f32 %7190, 0
  %7201 = fmul fast float %7200, %6505
  %7202 = fmul fast float %7199, %6506
  %7203 = fadd fast float %7201, 5.000000e-01
  %7204 = call float @dx.op.unary.f32(i32 27, float %7203)  ; Round_ni(value)
  %7205 = fadd fast float %7202, 5.000000e-01
  %7206 = call float @dx.op.unary.f32(i32 27, float %7205)  ; Round_ni(value)
  %7207 = fsub fast float %7203, %7204
  %7208 = fsub fast float %7205, %7206
  %7209 = fadd fast float %7204, -5.000000e-01
  %7210 = fadd fast float %7206, -5.000000e-01
  %7211 = fmul fast float %7207, 2.000000e+00
  %7212 = fsub fast float 3.000000e+00, %7211
  %7213 = fadd fast float %7211, 1.000000e+00
  %7214 = fsub fast float 2.000000e+00, %7207
  %7215 = bitcast float %7212 to i32
  %7216 = sub nsw i32 2129859010, %7215
  %7217 = bitcast i32 %7216 to float
  %7218 = fmul fast float %7217, %7214
  %7219 = fadd fast float %7218, -1.000000e+00
  %7220 = bitcast float %7213 to i32
  %7221 = sub nsw i32 2129859010, %7220
  %7222 = bitcast i32 %7221 to float
  %7223 = fmul fast float %7222, %7207
  %7224 = fadd fast float %7223, 1.000000e+00
  %7225 = fmul fast float %7208, 2.000000e+00
  %7226 = fsub fast float 3.000000e+00, %7225
  %7227 = fadd fast float %7225, 1.000000e+00
  %7228 = fsub fast float 2.000000e+00, %7208
  %7229 = bitcast float %7226 to i32
  %7230 = sub nsw i32 2129859010, %7229
  %7231 = bitcast i32 %7230 to float
  %7232 = fmul fast float %7231, %7228
  %7233 = fadd fast float %7232, -1.000000e+00
  %7234 = bitcast float %7227 to i32
  %7235 = sub nsw i32 2129859010, %7234
  %7236 = bitcast i32 %7235 to float
  %7237 = fmul fast float %7236, %7208
  %7238 = fadd fast float %7237, 1.000000e+00
  %7239 = fadd fast float %7219, %7209
  %7240 = fmul fast float %7239, %7191
  %7241 = fadd fast float %7233, %7210
  %7242 = fmul fast float %7241, %7192
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7240, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float %7196)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = fmul fast float %7244, %7212
  %7246 = fadd fast float %7224, %7209
  %7247 = fmul fast float %7246, %7191
  %7248 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7247, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float %7196)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7249 = extractvalue %dx.types.ResRet.f32 %7248, 0
  %7250 = fmul fast float %7249, %7213
  %7251 = fadd fast float %7238, %7210
  %7252 = fmul fast float %7251, %7192
  %7253 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7240, float %7252, float undef, float undef, i32 0, i32 0, i32 undef, float %7196)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7254 = extractvalue %dx.types.ResRet.f32 %7253, 0
  %7255 = fmul fast float %7254, %7212
  %7256 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7247, float %7252, float undef, float undef, i32 0, i32 0, i32 undef, float %7196)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7257 = extractvalue %dx.types.ResRet.f32 %7256, 0
  %7258 = fmul fast float %7257, %7213
  %7259 = fadd fast float %7258, %7255
  %7260 = fmul fast float %7259, %7227
  %7261 = fadd fast float %7250, %7245
  %7262 = fmul fast float %7261, %7226
  %7263 = fadd fast float %7262, %7260
  %7264 = fmul fast float %7263, 6.250000e-02
  br label %7350

; <label>:7265                                    ; preds = %7186
  %7266 = fmul fast float %292, 0x401921FB60000000
  %7267 = call float @dx.op.unary.f32(i32 13, float %7266)  ; Sin(value)
  %7268 = call float @dx.op.unary.f32(i32 12, float %7266)  ; Cos(value)
  %7269 = fsub fast float -0.000000e+00, %7267
  br label %7270

; <label>:7270                                    ; preds = %7319, %7265
  %7271 = phi float [ 0.000000e+00, %7265 ], [ %7314, %7319 ]
  %7272 = phi float [ 0.000000e+00, %7265 ], [ %7316, %7319 ]
  %7273 = phi i32 [ 0, %7265 ], [ %7320, %7319 ]
  %7274 = mul i32 %7273, 2
  %7275 = add i32 0, %7274
  %7276 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7275
  %7277 = load float, float* %7276, align 4
  %7278 = mul i32 %7273, 2
  %7279 = add i32 1, %7278
  %7280 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7279
  %7281 = load float, float* %7280, align 4
  %7282 = fmul fast float %7277, %7268
  %7283 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7269, float %7282)  ; FMad(a,b,c)
  %7284 = fmul fast float %7277, %7267
  %7285 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7268, float %7284)  ; FMad(a,b,c)
  %7286 = fmul fast float %7283, %7194
  %7287 = fmul fast float %7285, %7194
  %7288 = fadd fast float %7286, %6505
  %7289 = fadd fast float %7287, %6506
  %7290 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7288, float %7289, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7291 = extractvalue %dx.types.ResRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.ResRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.ResRet.f32 %7290, 2
  %7294 = extractvalue %dx.types.ResRet.f32 %7290, 3
  %7295 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 0
  store float %7291, float* %7295, align 4
  %7296 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 1
  store float %7292, float* %7296, align 4
  %7297 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 2
  store float %7293, float* %7297, align 4
  %7298 = getelementptr inbounds [4 x float], [4 x float]* %118, i32 0, i32 3
  store float %7294, float* %7298, align 4
  %7299 = fsub fast float %7291, %7196
  %7300 = fcmp fast olt float %7299, 0.000000e+00
  %7301 = select i1 %7300, float 0.000000e+00, float 1.000000e+00
  %7302 = fadd fast float %7301, %7271
  %7303 = fmul fast float %7301, %7299
  %7304 = fadd fast float %7303, %7272
  br label %7305

; <label>:7305                                    ; preds = %7305, %7270
  %7306 = phi i32 [ 1, %7270 ], [ %7317, %7305 ]
  %7307 = phi float [ %7304, %7270 ], [ %7316, %7305 ]
  %7308 = phi float [ %7302, %7270 ], [ %7314, %7305 ]
  %7309 = getelementptr [4 x float], [4 x float]* %118, i32 0, i32 %7306
  %7310 = load float, float* %7309, align 4, !tbaa !127, !noalias !117
  %7311 = fsub fast float %7310, %7196
  %7312 = fcmp fast olt float %7311, 0.000000e+00
  %7313 = select i1 %7312, float 0.000000e+00, float 1.000000e+00
  %7314 = fadd fast float %7313, %7308
  %7315 = fmul fast float %7313, %7311
  %7316 = fadd fast float %7315, %7307
  %7317 = add nuw nsw i32 %7306, 1
  %7318 = icmp eq i32 %7317, 4
  br i1 %7318, label %7319, label %7305, !llvm.loop !129

; <label>:7319                                    ; preds = %7305
  %7320 = add nuw nsw i32 %7273, 1
  %7321 = icmp eq i32 %7320, 8
  br i1 %7321, label %7322, label %7270, !llvm.loop !130

; <label>:7322                                    ; preds = %7319
  %7323 = fdiv fast float 1.000000e+00, %7314
  %7324 = fmul fast float %7323, %7316
  %7325 = fdiv fast float 1.000000e+00, %7196
  %7326 = fmul fast float %7324, %7325
  %7327 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7328 = call float @dx.op.binary.f32(i32 35, float %7327, float 0.000000e+00)  ; FMax(a,b)
  %7329 = fmul fast float %7314, 3.125000e-02
  %7330 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7331 = fmul fast float %7330, 2.000000e+00
  %7332 = fadd fast float %7331, -1.000000e+00
  %7333 = fcmp fast ogt float %7332, 0.000000e+00
  %7334 = fcmp fast olt float %7332, 0.000000e+00
  %7335 = zext i1 %7333 to i32
  %7336 = zext i1 %7334 to i32
  %7337 = sub nsw i32 %7335, %7336
  %7338 = sitofp i32 %7337 to float
  %7339 = fmul fast float %7338, %7332
  %7340 = fsub fast float 1.000000e+00, %7339
  %7341 = fmul fast float %7340, %7340
  %7342 = fmul fast float %7341, %7340
  %7343 = fsub fast float %7340, %7342
  %7344 = fmul fast float %7343, %7328
  %7345 = fsub fast float 1.000000e+00, %7342
  %7346 = fsub fast float %7345, %7344
  %7347 = fmul fast float %7338, 5.000000e-01
  %7348 = fmul fast float %7347, %7346
  %7349 = fsub fast float 5.000000e-01, %7348
  br label %7350

; <label>:7350                                    ; preds = %7322, %7198, %7183
  %7351 = phi float [ 1.000000e+00, %7183 ], [ %7264, %7198 ], [ %7349, %7322 ]
  %7352 = fcmp fast ogt float %6611, 0.000000e+00
  br i1 %7352, label %7353, label %7671, !dx.controlflow.hints !132

; <label>:7353                                    ; preds = %7350
  %7354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7354, 0
  %7356 = fadd fast float %7355, %6495
  %7357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7358 = extractvalue %dx.types.CBufRet.f32 %7357, 2
  %7359 = extractvalue %dx.types.CBufRet.f32 %7357, 3
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 0
  %7362 = call float @dx.op.binary.f32(i32 35, float %7356, float 0.000000e+00)  ; FMax(a,b)
  %7363 = fadd fast float %7362, 0x3F10000000000000
  %7364 = fcmp fast oeq float %7361, 0.000000e+00
  br i1 %6498, label %7365, label %7518, !dx.controlflow.hints !133

; <label>:7365                                    ; preds = %7353
  br i1 %7364, label %7366, label %7433

; <label>:7366                                    ; preds = %7365
  %7367 = extractvalue %dx.types.CBufRet.f32 %7357, 1
  %7368 = extractvalue %dx.types.CBufRet.f32 %7357, 0
  %7369 = fmul fast float %7368, %6487
  %7370 = fmul fast float %7367, %6491
  %7371 = fadd fast float %7369, 5.000000e-01
  %7372 = call float @dx.op.unary.f32(i32 27, float %7371)  ; Round_ni(value)
  %7373 = fadd fast float %7370, 5.000000e-01
  %7374 = call float @dx.op.unary.f32(i32 27, float %7373)  ; Round_ni(value)
  %7375 = fsub fast float %7371, %7372
  %7376 = fsub fast float %7373, %7374
  %7377 = fadd fast float %7372, -5.000000e-01
  %7378 = fadd fast float %7374, -5.000000e-01
  %7379 = fmul fast float %7375, 2.000000e+00
  %7380 = fsub fast float 3.000000e+00, %7379
  %7381 = fadd fast float %7379, 1.000000e+00
  %7382 = fsub fast float 2.000000e+00, %7375
  %7383 = bitcast float %7380 to i32
  %7384 = sub nsw i32 2129859010, %7383
  %7385 = bitcast i32 %7384 to float
  %7386 = fmul fast float %7385, %7382
  %7387 = fadd fast float %7386, -1.000000e+00
  %7388 = bitcast float %7381 to i32
  %7389 = sub nsw i32 2129859010, %7388
  %7390 = bitcast i32 %7389 to float
  %7391 = fmul fast float %7390, %7375
  %7392 = fadd fast float %7391, 1.000000e+00
  %7393 = fmul fast float %7376, 2.000000e+00
  %7394 = fsub fast float 3.000000e+00, %7393
  %7395 = fadd fast float %7393, 1.000000e+00
  %7396 = fsub fast float 2.000000e+00, %7376
  %7397 = bitcast float %7394 to i32
  %7398 = sub nsw i32 2129859010, %7397
  %7399 = bitcast i32 %7398 to float
  %7400 = fmul fast float %7399, %7396
  %7401 = fadd fast float %7400, -1.000000e+00
  %7402 = bitcast float %7395 to i32
  %7403 = sub nsw i32 2129859010, %7402
  %7404 = bitcast i32 %7403 to float
  %7405 = fmul fast float %7404, %7376
  %7406 = fadd fast float %7405, 1.000000e+00
  %7407 = fadd fast float %7387, %7377
  %7408 = fmul fast float %7407, %7358
  %7409 = fadd fast float %7401, %7378
  %7410 = fmul fast float %7409, %7359
  %7411 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7408, float %7410, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7412 = extractvalue %dx.types.ResRet.f32 %7411, 0
  %7413 = fmul fast float %7412, %7380
  %7414 = fadd fast float %7392, %7377
  %7415 = fmul fast float %7414, %7358
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7415, float %7410, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = fmul fast float %7417, %7381
  %7419 = fadd fast float %7406, %7378
  %7420 = fmul fast float %7419, %7359
  %7421 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7408, float %7420, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = fmul fast float %7422, %7380
  %7424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7415, float %7420, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = fmul fast float %7425, %7381
  %7427 = fadd fast float %7426, %7423
  %7428 = fmul fast float %7427, %7395
  %7429 = fadd fast float %7418, %7413
  %7430 = fmul fast float %7429, %7394
  %7431 = fadd fast float %7430, %7428
  %7432 = fmul fast float %7431, 6.250000e-02
  br label %7671

; <label>:7433                                    ; preds = %7365
  %7434 = fmul fast float %292, 0x401921FB60000000
  %7435 = call float @dx.op.unary.f32(i32 13, float %7434)  ; Sin(value)
  %7436 = call float @dx.op.unary.f32(i32 12, float %7434)  ; Cos(value)
  %7437 = fsub fast float -0.000000e+00, %7435
  br label %7438

; <label>:7438                                    ; preds = %7487, %7433
  %7439 = phi float [ 0.000000e+00, %7433 ], [ %7482, %7487 ]
  %7440 = phi float [ 0.000000e+00, %7433 ], [ %7484, %7487 ]
  %7441 = phi i32 [ 0, %7433 ], [ %7488, %7487 ]
  %7442 = mul i32 %7441, 2
  %7443 = add i32 0, %7442
  %7444 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7443
  %7445 = load float, float* %7444, align 4
  %7446 = mul i32 %7441, 2
  %7447 = add i32 1, %7446
  %7448 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7447
  %7449 = load float, float* %7448, align 4
  %7450 = fmul fast float %7445, %7436
  %7451 = call float @dx.op.tertiary.f32(i32 46, float %7449, float %7437, float %7450)  ; FMad(a,b,c)
  %7452 = fmul fast float %7445, %7435
  %7453 = call float @dx.op.tertiary.f32(i32 46, float %7449, float %7436, float %7452)  ; FMad(a,b,c)
  %7454 = fmul fast float %7451, %7361
  %7455 = fmul fast float %7453, %7361
  %7456 = fadd fast float %7454, %6487
  %7457 = fadd fast float %7455, %6491
  %7458 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7456, float %7457, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7462 = extractvalue %dx.types.ResRet.f32 %7458, 3
  %7463 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 0
  store float %7459, float* %7463, align 4
  %7464 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 1
  store float %7460, float* %7464, align 4
  %7465 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 2
  store float %7461, float* %7465, align 4
  %7466 = getelementptr inbounds [4 x float], [4 x float]* %117, i32 0, i32 3
  store float %7462, float* %7466, align 4
  %7467 = fsub fast float %7459, %7363
  %7468 = fcmp fast olt float %7467, 0.000000e+00
  %7469 = select i1 %7468, float 0.000000e+00, float 1.000000e+00
  %7470 = fadd fast float %7469, %7439
  %7471 = fmul fast float %7469, %7467
  %7472 = fadd fast float %7471, %7440
  br label %7473

; <label>:7473                                    ; preds = %7473, %7438
  %7474 = phi i32 [ 1, %7438 ], [ %7485, %7473 ]
  %7475 = phi float [ %7472, %7438 ], [ %7484, %7473 ]
  %7476 = phi float [ %7470, %7438 ], [ %7482, %7473 ]
  %7477 = getelementptr [4 x float], [4 x float]* %117, i32 0, i32 %7474
  %7478 = load float, float* %7477, align 4, !tbaa !127, !noalias !117
  %7479 = fsub fast float %7478, %7363
  %7480 = fcmp fast olt float %7479, 0.000000e+00
  %7481 = select i1 %7480, float 0.000000e+00, float 1.000000e+00
  %7482 = fadd fast float %7481, %7476
  %7483 = fmul fast float %7481, %7479
  %7484 = fadd fast float %7483, %7475
  %7485 = add nuw nsw i32 %7474, 1
  %7486 = icmp eq i32 %7485, 4
  br i1 %7486, label %7487, label %7473, !llvm.loop !129

; <label>:7487                                    ; preds = %7473
  %7488 = add nuw nsw i32 %7441, 1
  %7489 = icmp eq i32 %7488, 8
  br i1 %7489, label %7490, label %7438, !llvm.loop !130

; <label>:7490                                    ; preds = %7487
  %7491 = fdiv fast float 1.000000e+00, %7482
  %7492 = fmul fast float %7491, %7484
  %7493 = fdiv fast float 1.000000e+00, %7363
  %7494 = fmul fast float %7492, %7493
  %7495 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  %7496 = call float @dx.op.binary.f32(i32 35, float %7495, float 0.000000e+00)  ; FMax(a,b)
  %7497 = fmul fast float %7482, 3.125000e-02
  %7498 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  %7499 = fmul fast float %7498, 2.000000e+00
  %7500 = fadd fast float %7499, -1.000000e+00
  %7501 = fcmp fast ogt float %7500, 0.000000e+00
  %7502 = fcmp fast olt float %7500, 0.000000e+00
  %7503 = zext i1 %7501 to i32
  %7504 = zext i1 %7502 to i32
  %7505 = sub nsw i32 %7503, %7504
  %7506 = sitofp i32 %7505 to float
  %7507 = fmul fast float %7506, %7500
  %7508 = fsub fast float 1.000000e+00, %7507
  %7509 = fmul fast float %7508, %7508
  %7510 = fmul fast float %7509, %7508
  %7511 = fsub fast float %7508, %7510
  %7512 = fmul fast float %7511, %7496
  %7513 = fsub fast float 1.000000e+00, %7510
  %7514 = fsub fast float %7513, %7512
  %7515 = fmul fast float %7506, 5.000000e-01
  %7516 = fmul fast float %7515, %7514
  %7517 = fsub fast float 5.000000e-01, %7516
  br label %7671

; <label>:7518                                    ; preds = %7353
  br i1 %7364, label %7519, label %7586

; <label>:7519                                    ; preds = %7518
  %7520 = extractvalue %dx.types.CBufRet.f32 %7357, 1
  %7521 = extractvalue %dx.types.CBufRet.f32 %7357, 0
  %7522 = fmul fast float %7521, %6487
  %7523 = fmul fast float %7520, %6491
  %7524 = fadd fast float %7522, 5.000000e-01
  %7525 = call float @dx.op.unary.f32(i32 27, float %7524)  ; Round_ni(value)
  %7526 = fadd fast float %7523, 5.000000e-01
  %7527 = call float @dx.op.unary.f32(i32 27, float %7526)  ; Round_ni(value)
  %7528 = fsub fast float %7524, %7525
  %7529 = fsub fast float %7526, %7527
  %7530 = fadd fast float %7525, -5.000000e-01
  %7531 = fadd fast float %7527, -5.000000e-01
  %7532 = fmul fast float %7528, 2.000000e+00
  %7533 = fsub fast float 3.000000e+00, %7532
  %7534 = fadd fast float %7532, 1.000000e+00
  %7535 = fsub fast float 2.000000e+00, %7528
  %7536 = bitcast float %7533 to i32
  %7537 = sub nsw i32 2129859010, %7536
  %7538 = bitcast i32 %7537 to float
  %7539 = fmul fast float %7538, %7535
  %7540 = fadd fast float %7539, -1.000000e+00
  %7541 = bitcast float %7534 to i32
  %7542 = sub nsw i32 2129859010, %7541
  %7543 = bitcast i32 %7542 to float
  %7544 = fmul fast float %7543, %7528
  %7545 = fadd fast float %7544, 1.000000e+00
  %7546 = fmul fast float %7529, 2.000000e+00
  %7547 = fsub fast float 3.000000e+00, %7546
  %7548 = fadd fast float %7546, 1.000000e+00
  %7549 = fsub fast float 2.000000e+00, %7529
  %7550 = bitcast float %7547 to i32
  %7551 = sub nsw i32 2129859010, %7550
  %7552 = bitcast i32 %7551 to float
  %7553 = fmul fast float %7552, %7549
  %7554 = fadd fast float %7553, -1.000000e+00
  %7555 = bitcast float %7548 to i32
  %7556 = sub nsw i32 2129859010, %7555
  %7557 = bitcast i32 %7556 to float
  %7558 = fmul fast float %7557, %7529
  %7559 = fadd fast float %7558, 1.000000e+00
  %7560 = fadd fast float %7540, %7530
  %7561 = fmul fast float %7560, %7358
  %7562 = fadd fast float %7554, %7531
  %7563 = fmul fast float %7562, %7359
  %7564 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7561, float %7563, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7565 = extractvalue %dx.types.ResRet.f32 %7564, 0
  %7566 = fmul fast float %7565, %7533
  %7567 = fadd fast float %7545, %7530
  %7568 = fmul fast float %7567, %7358
  %7569 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7568, float %7563, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 0
  %7571 = fmul fast float %7570, %7534
  %7572 = fadd fast float %7559, %7531
  %7573 = fmul fast float %7572, %7359
  %7574 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7561, float %7573, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7575 = extractvalue %dx.types.ResRet.f32 %7574, 0
  %7576 = fmul fast float %7575, %7533
  %7577 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7568, float %7573, float undef, float undef, i32 0, i32 0, i32 undef, float %7363)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7578 = extractvalue %dx.types.ResRet.f32 %7577, 0
  %7579 = fmul fast float %7578, %7534
  %7580 = fadd fast float %7579, %7576
  %7581 = fmul fast float %7580, %7548
  %7582 = fadd fast float %7571, %7566
  %7583 = fmul fast float %7582, %7547
  %7584 = fadd fast float %7583, %7581
  %7585 = fmul fast float %7584, 6.250000e-02
  br label %7671

; <label>:7586                                    ; preds = %7518
  %7587 = fmul fast float %292, 0x401921FB60000000
  %7588 = call float @dx.op.unary.f32(i32 13, float %7587)  ; Sin(value)
  %7589 = call float @dx.op.unary.f32(i32 12, float %7587)  ; Cos(value)
  %7590 = fsub fast float -0.000000e+00, %7588
  br label %7591

; <label>:7591                                    ; preds = %7640, %7586
  %7592 = phi float [ 0.000000e+00, %7586 ], [ %7635, %7640 ]
  %7593 = phi float [ 0.000000e+00, %7586 ], [ %7637, %7640 ]
  %7594 = phi i32 [ 0, %7586 ], [ %7641, %7640 ]
  %7595 = mul i32 %7594, 2
  %7596 = add i32 0, %7595
  %7597 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7596
  %7598 = load float, float* %7597, align 4
  %7599 = mul i32 %7594, 2
  %7600 = add i32 1, %7599
  %7601 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7600
  %7602 = load float, float* %7601, align 4
  %7603 = fmul fast float %7598, %7589
  %7604 = call float @dx.op.tertiary.f32(i32 46, float %7602, float %7590, float %7603)  ; FMad(a,b,c)
  %7605 = fmul fast float %7598, %7588
  %7606 = call float @dx.op.tertiary.f32(i32 46, float %7602, float %7589, float %7605)  ; FMad(a,b,c)
  %7607 = fmul fast float %7604, %7361
  %7608 = fmul fast float %7606, %7361
  %7609 = fadd fast float %7607, %6487
  %7610 = fadd fast float %7608, %6491
  %7611 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7609, float %7610, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7612 = extractvalue %dx.types.ResRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.ResRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.ResRet.f32 %7611, 2
  %7615 = extractvalue %dx.types.ResRet.f32 %7611, 3
  %7616 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 0
  store float %7612, float* %7616, align 4
  %7617 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 1
  store float %7613, float* %7617, align 4
  %7618 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 2
  store float %7614, float* %7618, align 4
  %7619 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 3
  store float %7615, float* %7619, align 4
  %7620 = fsub fast float %7612, %7363
  %7621 = fcmp fast olt float %7620, 0.000000e+00
  %7622 = select i1 %7621, float 0.000000e+00, float 1.000000e+00
  %7623 = fadd fast float %7622, %7592
  %7624 = fmul fast float %7622, %7620
  %7625 = fadd fast float %7624, %7593
  br label %7626

; <label>:7626                                    ; preds = %7626, %7591
  %7627 = phi i32 [ 1, %7591 ], [ %7638, %7626 ]
  %7628 = phi float [ %7625, %7591 ], [ %7637, %7626 ]
  %7629 = phi float [ %7623, %7591 ], [ %7635, %7626 ]
  %7630 = getelementptr [4 x float], [4 x float]* %116, i32 0, i32 %7627
  %7631 = load float, float* %7630, align 4, !tbaa !127, !noalias !117
  %7632 = fsub fast float %7631, %7363
  %7633 = fcmp fast olt float %7632, 0.000000e+00
  %7634 = select i1 %7633, float 0.000000e+00, float 1.000000e+00
  %7635 = fadd fast float %7634, %7629
  %7636 = fmul fast float %7634, %7632
  %7637 = fadd fast float %7636, %7628
  %7638 = add nuw nsw i32 %7627, 1
  %7639 = icmp eq i32 %7638, 4
  br i1 %7639, label %7640, label %7626, !llvm.loop !129

; <label>:7640                                    ; preds = %7626
  %7641 = add nuw nsw i32 %7594, 1
  %7642 = icmp eq i32 %7641, 8
  br i1 %7642, label %7643, label %7591, !llvm.loop !130

; <label>:7643                                    ; preds = %7640
  %7644 = fdiv fast float 1.000000e+00, %7635
  %7645 = fmul fast float %7644, %7637
  %7646 = fdiv fast float 1.000000e+00, %7363
  %7647 = fmul fast float %7645, %7646
  %7648 = call float @dx.op.unary.f32(i32 7, float %7647)  ; Saturate(value)
  %7649 = call float @dx.op.binary.f32(i32 35, float %7648, float 0.000000e+00)  ; FMax(a,b)
  %7650 = fmul fast float %7635, 3.125000e-02
  %7651 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7652 = fmul fast float %7651, 2.000000e+00
  %7653 = fadd fast float %7652, -1.000000e+00
  %7654 = fcmp fast ogt float %7653, 0.000000e+00
  %7655 = fcmp fast olt float %7653, 0.000000e+00
  %7656 = zext i1 %7654 to i32
  %7657 = zext i1 %7655 to i32
  %7658 = sub nsw i32 %7656, %7657
  %7659 = sitofp i32 %7658 to float
  %7660 = fmul fast float %7659, %7653
  %7661 = fsub fast float 1.000000e+00, %7660
  %7662 = fmul fast float %7661, %7661
  %7663 = fmul fast float %7662, %7661
  %7664 = fsub fast float %7661, %7663
  %7665 = fmul fast float %7664, %7649
  %7666 = fsub fast float 1.000000e+00, %7663
  %7667 = fsub fast float %7666, %7665
  %7668 = fmul fast float %7659, 5.000000e-01
  %7669 = fmul fast float %7668, %7667
  %7670 = fsub fast float 5.000000e-01, %7669
  br label %7671

; <label>:7671                                    ; preds = %7643, %7519, %7490, %7366, %7350
  %7672 = phi float [ 1.000000e+00, %7350 ], [ %7432, %7366 ], [ %7517, %7490 ], [ %7585, %7519 ], [ %7670, %7643 ]
  %7673 = fsub fast float %7184, %7017
  %7674 = fmul fast float %7673, %6584
  %7675 = fadd fast float %7674, %7017
  %7676 = fsub fast float %7351, %7675
  %7677 = fmul fast float %7676, %6583
  %7678 = fadd fast float %7677, %7675
  %7679 = fsub fast float %7672, %7678
  %7680 = fmul fast float %7679, %6611
  %7681 = fadd fast float %7680, %7678
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 2
  %7684 = fcmp fast ogt float %7683, 0.000000e+00
  br i1 %7684, label %7685, label %7725, !dx.controlflow.hints !134

; <label>:7685                                    ; preds = %7671
  %7686 = fcmp fast ugt float %7683, 0.000000e+00
  br i1 %7686, label %7687, label %7722

; <label>:7687                                    ; preds = %7685
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7692 = extractvalue %dx.types.CBufRet.f32 %7688, 3
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.CBufRet.f32 %7693, 3
  %7698 = extractvalue %dx.types.CBufRet.f32 %7682, 0
  %7699 = extractvalue %dx.types.CBufRet.f32 %7682, 1
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.CBufRet.f32 %7700, 1
  %7703 = extractvalue %dx.types.CBufRet.f32 %7700, 2
  %7704 = fadd fast float %7701, %6464
  %7705 = fadd fast float %7702, %6465
  %7706 = fadd fast float %7703, %6466
  %7707 = fmul fast float %7704, %7689
  %7708 = call float @dx.op.tertiary.f32(i32 46, float %7690, float %7705, float %7707)  ; FMad(a,b,c)
  %7709 = call float @dx.op.tertiary.f32(i32 46, float %7691, float %7706, float %7708)  ; FMad(a,b,c)
  %7710 = fadd fast float %7709, %7692
  %7711 = fmul fast float %7704, %7694
  %7712 = call float @dx.op.tertiary.f32(i32 46, float %7695, float %7705, float %7711)  ; FMad(a,b,c)
  %7713 = call float @dx.op.tertiary.f32(i32 46, float %7696, float %7706, float %7712)  ; FMad(a,b,c)
  %7714 = fadd fast float %7713, %7697
  %7715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7710, float %7714, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = fmul fast float %7716, %7699
  %7718 = fadd fast float %7717, %7698
  %7719 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7720 = fmul fast float %7719, %7683
  %7721 = fsub fast float 1.000000e+00, %7720
  br label %7722

; <label>:7722                                    ; preds = %7687, %7685
  %7723 = phi float [ %7721, %7687 ], [ 1.000000e+00, %7685 ]
  %7724 = fmul fast float %7723, %7681
  br label %7725

; <label>:7725                                    ; preds = %7722, %7671, %6444
  %7726 = phi float [ 1.000000e+00, %6444 ], [ %7724, %7722 ], [ %7681, %7671 ]
  %7727 = call float @dx.op.binary.f32(i32 36, float %7726, float %7726)  ; FMin(a,b)
  %7728 = call float @dx.op.binary.f32(i32 36, float %7726, float %7727)  ; FMin(a,b)
  %7729 = fcmp fast ogt float %7728, 0.000000e+00
  br i1 %7729, label %7730, label %7895, !dx.controlflow.hints !135

; <label>:7730                                    ; preds = %7725
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7734 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7735 = extractvalue %dx.types.CBufRet.f32 %7731, 3
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 0
  %7738 = extractvalue %dx.types.CBufRet.f32 %7736, 1
  %7739 = extractvalue %dx.types.CBufRet.f32 %7736, 2
  %7740 = extractvalue %dx.types.CBufRet.f32 %7736, 3
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.CBufRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.CBufRet.f32 %7741, 2
  %7745 = extractvalue %dx.types.CBufRet.f32 %7741, 3
  %7746 = fmul fast float %7732, %6464
  %7747 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %7733, float %7746)  ; FMad(a,b,c)
  %7748 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %7734, float %7747)  ; FMad(a,b,c)
  %7749 = fadd fast float %7748, %7735
  %7750 = fmul fast float %7737, %6464
  %7751 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %7738, float %7750)  ; FMad(a,b,c)
  %7752 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %7739, float %7751)  ; FMad(a,b,c)
  %7753 = fadd fast float %7752, %7740
  %7754 = fmul fast float %7742, %6464
  %7755 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %7743, float %7754)  ; FMad(a,b,c)
  %7756 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %7744, float %7755)  ; FMad(a,b,c)
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.f32 %7757, 1
  %7760 = extractvalue %dx.types.CBufRet.f32 %7757, 3
  %7761 = fmul fast float %7760, %7749
  %7762 = fmul fast float %7760, %7753
  %7763 = fadd fast float %7761, %7758
  %7764 = fadd fast float %7762, %7759
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7768 = fsub fast float %7763, %7766
  %7769 = fsub fast float %7764, %7767
  %7770 = fcmp fast olt float %7768, 0.000000e+00
  %7771 = fcmp fast olt float %7769, 0.000000e+00
  %7772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7773 = extractvalue %dx.types.CBufRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.CBufRet.f32 %7772, 1
  %7775 = extractvalue %dx.types.CBufRet.f32 %7772, 2
  %7776 = extractvalue %dx.types.CBufRet.f32 %7772, 3
  %7777 = select i1 %7770, float %7773, float %7775
  %7778 = select i1 %7771, float %7774, float %7776
  %7779 = fmul fast float %7777, %7768
  %7780 = fmul fast float %7778, %7769
  %7781 = call float @dx.op.unary.f32(i32 6, float %7779)  ; FAbs(value)
  %7782 = call float @dx.op.unary.f32(i32 6, float %7780)  ; FAbs(value)
  %7783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7784 = extractvalue %dx.types.CBufRet.f32 %7783, 0
  %7785 = call float @dx.op.binary.f32(i32 35, float %7781, float %7782)  ; FMax(a,b)
  %7786 = fsub fast float %7784, %7785
  %7787 = call float @dx.op.unary.f32(i32 7, float %7786)  ; Saturate(value)
  %7788 = fcmp fast ogt float %7787, 0.000000e+00
  br i1 %7788, label %7789, label %7830, !dx.controlflow.hints !136

; <label>:7789                                    ; preds = %7730
  %7790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7763, float %7764, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7791 = extractvalue %dx.types.ResRet.f32 %7790, 1
  %7792 = fcmp fast ogt float %7791, 0.000000e+00
  br i1 %7792, label %7793, label %7825

; <label>:7793                                    ; preds = %7789
  %7794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7763, float %7764, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7795 = extractvalue %dx.types.ResRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.ResRet.f32 %7794, 1
  %7797 = extractvalue %dx.types.ResRet.f32 %7794, 2
  %7798 = extractvalue %dx.types.ResRet.f32 %7794, 3
  %7799 = fsub fast float 1.000000e+00, %7745
  %7800 = fsub fast float %7799, %7756
  %7801 = fmul fast float %7800, 0x400921FB60000000
  %7802 = fadd fast float %7801, 0x3FF921FB60000000
  %7803 = call float @dx.op.unary.f32(i32 13, float %7802)  ; Sin(value)
  %7804 = fadd fast float %7803, -1.000000e+00
  %7805 = fmul fast float %7804, 0x3FD45F3060000000
  %7806 = fmul fast float %7800, 0x401921FB60000000
  %7807 = fadd fast float %7806, 0x400921FB60000000
  %7808 = call float @dx.op.unary.f32(i32 13, float %7807)  ; Sin(value)
  %7809 = fadd fast float %7808, 0x3E7777A5C0000000
  %7810 = fmul fast float %7809, 0x3FC45F3060000000
  %7811 = fmul fast float %7800, 0x4022D97C80000000
  %7812 = fadd fast float %7811, 0x4012D97C80000000
  %7813 = call float @dx.op.unary.f32(i32 13, float %7812)  ; Sin(value)
  %7814 = fadd fast float %7813, 1.000000e+00
  %7815 = fmul fast float %7814, 0x3FBB2995E0000000
  %7816 = fmul fast float %7800, 0x402921FB60000000
  %7817 = fadd fast float %7816, 0x401921FB60000000
  %7818 = call float @dx.op.unary.f32(i32 13, float %7817)  ; Sin(value)
  %7819 = fadd fast float %7818, 0xBE8777A5C0000000
  %7820 = fmul fast float %7819, 0x3FB45F3060000000
  %7821 = call float @dx.op.dot4.f32(i32 56, float %7795, float %7796, float %7797, float %7798, float %7805, float %7810, float %7815, float %7820)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7822 = fmul fast float %7821, 0xBFF7154760000000
  %7823 = call float @dx.op.unary.f32(i32 21, float %7822)  ; Exp(value)
  %7824 = call float @dx.op.unary.f32(i32 7, float %7823)  ; Saturate(value)
  br label %7825

; <label>:7825                                    ; preds = %7793, %7789
  %7826 = phi float [ %7824, %7793 ], [ 1.000000e+00, %7789 ]
  %7827 = fadd fast float %7826, -1.000000e+00
  %7828 = fmul fast float %7827, %7787
  %7829 = fadd fast float %7828, 1.000000e+00
  br label %7830

; <label>:7830                                    ; preds = %7825, %7730
  %7831 = phi float [ %7829, %7825 ], [ 1.000000e+00, %7730 ]
  %7832 = fmul fast float %7831, %7726
  %7833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7834 = extractvalue %dx.types.CBufRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.CBufRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.CBufRet.f32 %7833, 2
  %7837 = fadd fast float %7834, %209
  %7838 = fadd fast float %7835, %210
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 1
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7841, 1
  %7844 = extractvalue %dx.types.CBufRet.f32 %7841, 2
  %7845 = fsub fast float -0.000000e+00, %7837
  %7846 = fsub fast float -0.000000e+00, %7838
  %7847 = fsub fast float %5471, %7836
  %7848 = fadd fast float %7847, %7840
  %7849 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7845, float %7846, float %7848)  ; Dot3(ax,ay,az,bx,by,bz)
  %7850 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7842, float %7843, float %7844)  ; Dot3(ax,ay,az,bx,by,bz)
  %7851 = fdiv fast float 1.000000e+00, %7850
  %7852 = fmul fast float %7851, %7849
  %7853 = fmul fast float %7842, %7852
  %7854 = fmul fast float %7843, %7852
  %7855 = fadd fast float %7853, %7837
  %7856 = fadd fast float %7854, %7838
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7860 = fsub fast float %7855, %7858
  %7861 = fsub fast float %7856, %7859
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 2
  %7864 = extractvalue %dx.types.CBufRet.f32 %7862, 3
  %7865 = fmul fast float %7860, %7863
  %7866 = fmul fast float %7861, %7864
  %7867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.i32 %7867, 3
  %7869 = icmp eq i32 %7868, 0
  br i1 %7869, label %7875, label %7870

; <label>:7870                                    ; preds = %7830
  %7871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7865, float %7866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7872 = extractvalue %dx.types.ResRet.f32 %7871, 0
  %7873 = extractvalue %dx.types.ResRet.f32 %7871, 1
  %7874 = extractvalue %dx.types.ResRet.f32 %7871, 2
  br label %7880

; <label>:7875                                    ; preds = %7830
  %7876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %7865, float %7866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = extractvalue %dx.types.ResRet.f32 %7876, 1
  %7879 = extractvalue %dx.types.ResRet.f32 %7876, 2
  br label %7880

; <label>:7880                                    ; preds = %7875, %7870
  %7881 = phi float [ %7872, %7870 ], [ %7877, %7875 ]
  %7882 = phi float [ %7873, %7870 ], [ %7878, %7875 ]
  %7883 = phi float [ %7874, %7870 ], [ %7879, %7875 ]
  %7884 = extractvalue %dx.types.CBufRet.f32 %7839, 2
  %7885 = fmul fast float %7884, %7881
  %7886 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7887 = fsub fast float %7852, %7886
  %7888 = fsub fast float %7887, %7885
  %7889 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7888)  ; FMax(a,b)
  %7890 = fmul fast float %7889, %7882
  %7891 = call float @dx.op.binary.f32(i32 36, float %7883, float %7890)  ; FMin(a,b)
  %7892 = fmul fast float %7891, 0xBFF7154760000000
  %7893 = call float @dx.op.unary.f32(i32 21, float %7892)  ; Exp(value)
  %7894 = fmul fast float %7832, %7893
  br label %7895

; <label>:7895                                    ; preds = %7880, %7725
  %7896 = phi float [ %7894, %7880 ], [ %7726, %7725 ]
  %7897 = call float @dx.op.binary.f32(i32 36, float %7896, float %7896)  ; FMin(a,b)
  %7898 = call float @dx.op.binary.f32(i32 36, float %7896, float %7897)  ; FMin(a,b)
  %7899 = fcmp fast ogt float %7898, 0.000000e+00
  br i1 %7899, label %7900, label %8148, !dx.controlflow.hints !137

; <label>:7900                                    ; preds = %7895
  %7901 = fmul fast float %7896, %6456
  %7902 = fmul fast float %7896, %6457
  %7903 = fmul fast float %7896, %6458
  %7904 = fsub fast float %211, %4651
  %7905 = fcmp fast ogt float %7904, 0.000000e+00
  %7906 = fmul fast float %6445, 5.120000e+02
  %7907 = fmul fast float %6446, 5.120000e+02
  %7908 = fmul fast float %6447, 5.120000e+02
  %7909 = fadd fast float %7908, %211
  %7910 = fsub fast float %4651, %7909
  %7911 = fmul fast float %7910, 2.000000e+00
  %7912 = fadd fast float %7911, %7909
  %7913 = select i1 %7905, float %7912, float %7909
  %7914 = fsub fast float %7913, %211
  %7915 = call float @dx.op.dot3.f32(i32 55, float %7906, float %7907, float %7914, float %7906, float %7907, float %7914)  ; Dot3(ax,ay,az,bx,by,bz)
  %7916 = call float @dx.op.unary.f32(i32 25, float %7915)  ; Rsqrt(value)
  %7917 = fmul fast float %7916, %7906
  %7918 = fmul fast float %7916, %7907
  %7919 = fmul fast float %7916, %7914
  %7920 = fsub fast float %4651, %211
  %7921 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7920)  ; Dot3(ax,ay,az,bx,by,bz)
  %7922 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7917, float %7918, float %7919)  ; Dot3(ax,ay,az,bx,by,bz)
  %7923 = fdiv fast float 1.000000e+00, %7922
  %7924 = fmul fast float %7923, %7921
  %7925 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7904, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7926 = fcmp fast ogt float %7925, 0.000000e+00
  %7927 = fcmp fast olt float %7925, 0.000000e+00
  %7928 = zext i1 %7926 to i32
  %7929 = zext i1 %7927 to i32
  %7930 = sub nsw i32 %7928, %7929
  %7931 = sitofp i32 %7930 to float
  %7932 = fsub fast float %7913, %4651
  %7933 = call float @dx.op.dot3.f32(i32 55, float %7906, float %7907, float %7932, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7934 = fcmp fast ogt float %7933, 0.000000e+00
  %7935 = fcmp fast olt float %7933, 0.000000e+00
  %7936 = zext i1 %7934 to i32
  %7937 = zext i1 %7935 to i32
  %7938 = sub nsw i32 %7936, %7937
  %7939 = sitofp i32 %7938 to float
  %7940 = fcmp fast une float %7931, %7939
  br i1 %7940, label %7941, label %7951

; <label>:7941                                    ; preds = %7900
  %7942 = fmul fast float %7924, %7919
  %7943 = fmul fast float %7924, %7918
  %7944 = fmul fast float %7924, %7917
  %7945 = fmul fast float %7944, %7944
  %7946 = fmul fast float %7943, %7943
  %7947 = fadd fast float %7945, %7946
  %7948 = fmul fast float %7942, %7942
  %7949 = fadd fast float %7947, %7948
  %7950 = call float @dx.op.unary.f32(i32 24, float %7949)  ; Sqrt(value)
  br label %7961

; <label>:7951                                    ; preds = %7900
  %7952 = icmp slt i32 %7930, 0
  br i1 %7952, label %7953, label %7961

; <label>:7953                                    ; preds = %7951
  %7954 = fsub fast float %211, %7913
  %7955 = fmul fast float %7906, %7906
  %7956 = fmul fast float %7907, %7907
  %7957 = fadd fast float %7955, %7956
  %7958 = fmul fast float %7954, %7954
  %7959 = fadd fast float %7957, %7958
  %7960 = call float @dx.op.unary.f32(i32 24, float %7959)  ; Sqrt(value)
  br label %7961

; <label>:7961                                    ; preds = %7953, %7951, %7941
  %7962 = phi float [ %7950, %7941 ], [ %7960, %7953 ], [ 0.000000e+00, %7951 ]
  %7963 = fsub fast float -0.000000e+00, %7962
  %7964 = select i1 %7905, float -0.000000e+00, float %7963
  %7965 = fmul fast float %4648, 0x3FF7154760000000
  %7966 = fmul fast float %7965, %7964
  %7967 = fmul fast float %4649, 0x3FF7154760000000
  %7968 = fmul fast float %7967, %7964
  %7969 = fmul fast float %4650, 0x3FF7154760000000
  %7970 = fmul fast float %7969, %7964
  %7971 = call float @dx.op.unary.f32(i32 21, float %7966)  ; Exp(value)
  %7972 = call float @dx.op.unary.f32(i32 21, float %7968)  ; Exp(value)
  %7973 = call float @dx.op.unary.f32(i32 21, float %7970)  ; Exp(value)
  %7974 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7975 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7976 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7977 = fmul fast float %7901, %7974
  %7978 = fmul fast float %7902, %7975
  %7979 = fmul fast float %7903, %7976
  %7980 = fsub fast float %6445, %5474
  %7981 = fsub fast float %6446, %5475
  %7982 = fsub fast float %6447, %5476
  %7983 = call float @dx.op.dot3.f32(i32 55, float %7980, float %7981, float %7982, float %7980, float %7981, float %7982)  ; Dot3(ax,ay,az,bx,by,bz)
  %7984 = call float @dx.op.unary.f32(i32 25, float %7983)  ; Rsqrt(value)
  %7985 = fmul fast float %7984, %7980
  %7986 = fmul fast float %7984, %7981
  %7987 = fmul fast float %7984, %7982
  %7988 = call float @dx.op.dot3.f32(i32 55, float %6445, float %6446, float %6447, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %7989 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %7985, float %7986, float %7987)  ; Dot3(ax,ay,az,bx,by,bz)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7988)  ; Saturate(value)
  %7991 = bitcast i32 %5506 to float
  %7992 = fmul fast float %7990, %7990
  %7993 = fmul fast float %7992, %7991
  %7994 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7995 = fmul fast float %7994, %7990
  %7996 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %7985, float %7986, float %7987)  ; Dot3(ax,ay,az,bx,by,bz)
  %7997 = fmul fast float %7996, %7996
  %7998 = call float @dx.op.unary.f32(i32 6, float %7988)  ; FAbs(value)
  %7999 = fsub fast float 1.000000e+00, %5500
  %8000 = fmul fast float %5482, %5482
  %8001 = fmul fast float %8000, %7999
  %8002 = fadd fast float %8001, %5500
  %8003 = bitcast float %8002 to i32
  %8004 = ashr i32 %8003, 1
  %8005 = add nsw i32 %8004, 532487669
  %8006 = bitcast i32 %8005 to float
  %8007 = fadd fast float %8006, %5482
  %8008 = fmul fast float %5500, %7997
  %8009 = fsub fast float 1.000000e+00, %7997
  %8010 = fadd fast float %8009, %8008
  %8011 = fmul fast float %7998, %7998
  %8012 = fmul fast float %8011, %7999
  %8013 = fadd fast float %8012, %5500
  %8014 = bitcast float %8013 to i32
  %8015 = ashr i32 %8014, 1
  %8016 = add nsw i32 %8015, 532487669
  %8017 = bitcast i32 %8016 to float
  %8018 = fadd fast float %8017, %7998
  %8019 = fmul fast float %8010, %8010
  %8020 = fmul fast float %8019, %8007
  %8021 = fmul fast float %8020, %8018
  %8022 = fdiv fast float 0x3FF0A00000000000, %8021
  %8023 = fmul fast float %8022, %5500
  %8024 = call float @dx.op.unary.f32(i32 6, float %7989)  ; FAbs(value)
  %8025 = fsub fast float 1.000000e+00, %8024
  %8026 = bitcast float %8025 to i32
  %8027 = sitofp i32 %8026 to float
  %8028 = fmul fast float %8027, 5.000000e+00
  %8029 = fadd fast float %8028, 0xC1EFBF8940000000
  %8030 = fptosi float %8029 to i32
  %8031 = bitcast i32 %8030 to float
  %8032 = fsub fast float 1.000000e+00, %5428
  %8033 = fsub fast float 1.000000e+00, %5429
  %8034 = fsub fast float 1.000000e+00, %5480
  %8035 = fmul fast float %8031, %8032
  %8036 = fmul fast float %8031, %8033
  %8037 = fmul fast float %8031, %8034
  %8038 = fadd fast float %8035, %5428
  %8039 = fadd fast float %8036, %5429
  %8040 = fadd fast float %8037, %5480
  br i1 %5807, label %8041, label %8064

; <label>:8041                                    ; preds = %7961
  %8042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4247, float %8024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8043 = extractvalue %dx.types.ResRet.f32 %8042, 0
  %8044 = extractvalue %dx.types.ResRet.f32 %8042, 1
  %8045 = extractvalue %dx.types.ResRet.f32 %8042, 2
  %8046 = fadd fast float %8043, -5.000000e-01
  %8047 = fadd fast float %8044, -5.000000e-01
  %8048 = fadd fast float %8045, -5.000000e-01
  %8049 = fmul fast float %5428, 4.000000e+00
  %8050 = fmul fast float %8049, %8032
  %8051 = fmul fast float %8050, %8046
  %8052 = fmul fast float %5429, 4.000000e+00
  %8053 = fmul fast float %8052, %8033
  %8054 = fmul fast float %8053, %8047
  %8055 = fmul fast float %5480, 4.000000e+00
  %8056 = fmul fast float %8055, %8034
  %8057 = fmul fast float %8056, %8048
  %8058 = fadd fast float %8051, %8038
  %8059 = fadd fast float %8054, %8039
  %8060 = fadd fast float %8057, %8040
  %8061 = call float @dx.op.unary.f32(i32 7, float %8058)  ; Saturate(value)
  %8062 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  %8063 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  br label %8064

; <label>:8064                                    ; preds = %8041, %7961
  %8065 = phi float [ %8061, %8041 ], [ %8038, %7961 ]
  %8066 = phi float [ %8062, %8041 ], [ %8039, %7961 ]
  %8067 = phi float [ %8063, %8041 ], [ %8040, %7961 ]
  %8068 = fmul fast float %7988, 9.843750e-01
  %8069 = fadd fast float %8068, 7.812500e-03
  %8070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8069, float %5797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8071 = extractvalue %dx.types.ResRet.f32 %8070, 2
  %8072 = extractvalue %dx.types.ResRet.f32 %8070, 3
  %8073 = fmul fast float %8071, %5428
  %8074 = fmul fast float %8071, %5429
  %8075 = fmul fast float %8071, %5480
  %8076 = fadd fast float %8073, %8072
  %8077 = fadd fast float %8074, %8072
  %8078 = fadd fast float %8075, %8072
  br i1 %5807, label %8079, label %8102

; <label>:8079                                    ; preds = %8064
  %8080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4247, float %7988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.ResRet.f32 %8080, 1
  %8083 = extractvalue %dx.types.ResRet.f32 %8080, 2
  %8084 = fadd fast float %8081, -5.000000e-01
  %8085 = fadd fast float %8082, -5.000000e-01
  %8086 = fadd fast float %8083, -5.000000e-01
  %8087 = fmul fast float %5428, 4.000000e+00
  %8088 = fmul fast float %8087, %8032
  %8089 = fmul fast float %8088, %8084
  %8090 = fmul fast float %5429, 4.000000e+00
  %8091 = fmul fast float %8090, %8033
  %8092 = fmul fast float %8091, %8085
  %8093 = fmul fast float %5480, 4.000000e+00
  %8094 = fmul fast float %8093, %8034
  %8095 = fmul fast float %8094, %8086
  %8096 = fadd fast float %8089, %8076
  %8097 = fadd fast float %8092, %8077
  %8098 = fadd fast float %8095, %8078
  %8099 = call float @dx.op.unary.f32(i32 7, float %8096)  ; Saturate(value)
  %8100 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8101 = call float @dx.op.unary.f32(i32 7, float %8098)  ; Saturate(value)
  br label %8102

; <label>:8102                                    ; preds = %8079, %8064
  %8103 = phi float [ %8099, %8079 ], [ %8076, %8064 ]
  %8104 = phi float [ %8100, %8079 ], [ %8077, %8064 ]
  %8105 = phi float [ %8101, %8079 ], [ %8078, %8064 ]
  %8106 = call float @dx.op.binary.f32(i32 35, float %8104, float %8105)  ; FMax(a,b)
  %8107 = call float @dx.op.binary.f32(i32 35, float %8103, float %8106)  ; FMax(a,b)
  %8108 = fsub fast float 1.000000e+00, %8107
  %8109 = fmul fast float %8065, %8023
  %8110 = fmul fast float %8066, %8023
  %8111 = fmul fast float %8067, %8023
  %8112 = fsub fast float 1.000000e+00, %7989
  %8113 = bitcast float %8112 to i32
  %8114 = sitofp i32 %8113 to float
  %8115 = fmul fast float %8114, 5.000000e+00
  %8116 = fadd fast float %8115, 0xC1EFBF8940000000
  %8117 = fptosi float %8116 to i32
  %8118 = bitcast i32 %8117 to float
  %8119 = fmul fast float %8118, %4248
  %8120 = fmul fast float %8108, %8119
  %8121 = fmul fast float %8120, %6399
  %8122 = fmul fast float %8120, %6400
  %8123 = fmul fast float %8120, %6401
  %8124 = fadd fast float %8121, %8109
  %8125 = fadd fast float %8122, %8110
  %8126 = fadd fast float %8123, %8111
  %8127 = fmul fast float %7995, %7977
  %8128 = fmul fast float %8127, %8108
  %8129 = fmul fast float %7995, %7978
  %8130 = fmul fast float %8129, %8108
  %8131 = fmul fast float %7995, %7979
  %8132 = fmul fast float %8131, %8108
  %8133 = fmul fast float %8127, %8124
  %8134 = fmul fast float %8129, %8125
  %8135 = fmul fast float %8131, %8126
  %8136 = fadd fast float %8128, %6381
  %8137 = fmul fast float %8136, %4244
  %8138 = fadd fast float %8130, %6383
  %8139 = fmul fast float %8138, %4244
  %8140 = fadd fast float %8132, %6385
  %8141 = fmul fast float %8140, %4244
  %8142 = fadd fast float %8133, %6433
  %8143 = fmul fast float %8142, %4244
  %8144 = fadd fast float %8134, %6436
  %8145 = fmul fast float %8144, %4244
  %8146 = fadd fast float %8135, %6439
  %8147 = fmul fast float %8146, %4244
  br label %8148

; <label>:8148                                    ; preds = %8102, %7895, %6329
  %8149 = phi float [ %6434, %6329 ], [ %6434, %7895 ], [ %8143, %8102 ]
  %8150 = phi float [ %6437, %6329 ], [ %6437, %7895 ], [ %8145, %8102 ]
  %8151 = phi float [ %6440, %6329 ], [ %6440, %7895 ], [ %8147, %8102 ]
  %8152 = phi float [ %6429, %6329 ], [ %6429, %7895 ], [ %8137, %8102 ]
  %8153 = phi float [ %6430, %6329 ], [ %6430, %7895 ], [ %8139, %8102 ]
  %8154 = phi float [ %6431, %6329 ], [ %6431, %7895 ], [ %8141, %8102 ]
  %8155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.i32 %8155, 0
  %8157 = icmp eq i32 %8156, 0
  br i1 %8157, label %8821, label %8158

; <label>:8158                                    ; preds = %8148
  %8159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8160 = extractvalue %dx.types.CBufRet.f32 %8159, 2
  %8161 = extractvalue %dx.types.CBufRet.f32 %8159, 3
  %8162 = fmul fast float %8160, %126
  %8163 = fmul fast float %8161, %127
  %8164 = fptoui float %8162 to i32
  %8165 = fptoui float %8163 to i32
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 0
  %8168 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8169 = extractvalue %dx.types.CBufRet.f32 %8166, 3
  %8170 = fadd fast float %113, -4.000000e+00
  %8171 = call float @dx.op.binary.f32(i32 35, float %8170, float 0.000000e+00)  ; FMax(a,b)
  %8172 = fadd fast float %8171, %8167
  %8173 = fmul fast float %8172, %8168
  %8174 = call float @dx.op.unary.f32(i32 23, float %8173)  ; Log(value)
  %8175 = fmul fast float %8174, %8169
  %8176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8176, 2
  %8178 = fmul fast float %8175, %8177
  %8179 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.i32 %8180, 1
  %8182 = add i32 %8181, -1
  %8183 = uitofp i32 %8181 to float
  %8184 = fmul fast float %8183, %8179
  %8185 = fptoui float %8184 to i32
  %8186 = call i32 @dx.op.binary.i32(i32 40, i32 %8185, i32 %8182)  ; UMin(a,b)
  %8187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.i32 %8187, 2
  %8189 = extractvalue %dx.types.CBufRet.i32 %8187, 3
  %8190 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8165, i32 %8188, i32 %8164)  ; UMad(a,b,c)
  %8191 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8186, i32 %8189, i32 %8190)  ; UMad(a,b,c)
  %8192 = add nsw i32 %8156, -1
  %8193 = call i32 @dx.op.binary.i32(i32 37, i32 %8192, i32 0)  ; IMax(a,b)
  %8194 = call float @dx.op.binary.f32(i32 35, float %113, float 0.000000e+00)  ; FMax(a,b)
  %8195 = fptoui float %8194 to i32
  %8196 = lshr i32 %8195, 5
  %8197 = call i32 @dx.op.binary.i32(i32 40, i32 %8196, i32 8191)  ; UMin(a,b)
  %8198 = shl i32 %8197, 2
  %8199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8198, i32 undef)  ; BufferLoad(srv,index,wot)
  %8200 = extractvalue %dx.types.ResRet.i32 %8199, 0
  %8201 = lshr i32 %8200, 16
  %8202 = and i32 %8200, 65535
  %8203 = lshr i32 %8200, 21
  %8204 = lshr i32 %8202, 5
  %8205 = call i32 @dx.op.binary.i32(i32 40, i32 %8204, i32 %8193)  ; UMin(a,b)
  %8206 = icmp ugt i32 %8203, %8205
  br i1 %8206, label %8821, label %8207

; <label>:8207                                    ; preds = %8158
  br label %8208

; <label>:8208                                    ; preds = %8811, %8207
  %8209 = phi i32 [ %8818, %8811 ], [ %8203, %8207 ]
  %8210 = phi float [ %8812, %8811 ], [ %8149, %8207 ]
  %8211 = phi float [ %8813, %8811 ], [ %8150, %8207 ]
  %8212 = phi float [ %8814, %8811 ], [ %8151, %8207 ]
  %8213 = phi float [ %8815, %8811 ], [ %8152, %8207 ]
  %8214 = phi float [ %8816, %8811 ], [ %8153, %8207 ]
  %8215 = phi float [ %8817, %8811 ], [ %8154, %8207 ]
  %8216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.i32 %8216, 0
  %8218 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8191, i32 %8217, i32 %8209)  ; UMad(a,b,c)
  %8219 = shl i32 %8218, 2
  %8220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8219, i32 undef)  ; BufferLoad(srv,index,wot)
  %8221 = extractvalue %dx.types.ResRet.i32 %8220, 0
  %8222 = shl i32 %8209, 5
  %8223 = sub nsw i32 %8201, %8222
  %8224 = call i32 @dx.op.binary.i32(i32 37, i32 %8223, i32 0)  ; IMax(a,b)
  %8225 = call i32 @dx.op.binary.i32(i32 38, i32 %8224, i32 31)  ; IMin(a,b)
  %8226 = sub nsw i32 1, %8201
  %8227 = add nsw i32 %8226, %8202
  %8228 = call i32 @dx.op.binary.i32(i32 37, i32 %8227, i32 0)  ; IMax(a,b)
  %8229 = call i32 @dx.op.binary.i32(i32 38, i32 %8228, i32 32)  ; IMin(a,b)
  %8230 = and i32 %8229, 31
  %8231 = shl i32 -1, %8230
  %8232 = xor i32 %8231, -1
  %8233 = and i32 %8225, 31
  %8234 = shl i32 %8232, %8233
  %8235 = icmp eq i32 %8229, 32
  %8236 = select i1 %8235, i32 -1, i32 %8234
  %8237 = and i32 %8236, %8221
  %8238 = icmp eq i32 %8237, 0
  br i1 %8238, label %8811, label %8239

; <label>:8239                                    ; preds = %8208
  br label %8240

; <label>:8240                                    ; preds = %8374, %8239
  %8241 = phi i32 [ %8252, %8374 ], [ %8237, %8239 ]
  %8242 = phi float [ %8375, %8374 ], [ %8210, %8239 ]
  %8243 = phi float [ %8376, %8374 ], [ %8211, %8239 ]
  %8244 = phi float [ %8377, %8374 ], [ %8212, %8239 ]
  %8245 = phi float [ %8378, %8374 ], [ %8213, %8239 ]
  %8246 = phi float [ %8379, %8374 ], [ %8214, %8239 ]
  %8247 = phi float [ %8380, %8374 ], [ %8215, %8239 ]
  %8248 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8241)  ; FirstbitLo(value)
  %8249 = add i32 %8248, %8222
  %8250 = and i32 %8248, 31
  %8251 = shl i32 1, %8250
  %8252 = xor i32 %8251, %8241
  %8253 = mul i32 %8249, 112
  %8254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8253, i32 undef)  ; BufferLoad(srv,index,wot)
  %8255 = extractvalue %dx.types.ResRet.f32 %8254, 0
  %8256 = extractvalue %dx.types.ResRet.f32 %8254, 1
  %8257 = extractvalue %dx.types.ResRet.f32 %8254, 2
  %8258 = or i32 %8253, 12
  %8259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8258, i32 undef)  ; BufferLoad(srv,index,wot)
  %8260 = extractvalue %dx.types.ResRet.f32 %8259, 0
  %8261 = add i32 %8253, 16
  %8262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8261, i32 undef)  ; BufferLoad(srv,index,wot)
  %8263 = extractvalue %dx.types.ResRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.ResRet.f32 %8262, 1
  %8265 = extractvalue %dx.types.ResRet.f32 %8262, 2
  %8266 = add i32 %8253, 28
  %8267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8266, i32 undef)  ; BufferLoad(srv,index,wot)
  %8268 = extractvalue %dx.types.ResRet.i32 %8267, 0
  %8269 = add i32 %8253, 44
  %8270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8269, i32 undef)  ; BufferLoad(srv,index,wot)
  %8271 = extractvalue %dx.types.ResRet.f32 %8270, 0
  %8272 = add i32 %8253, 48
  %8273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8272, i32 undef)  ; BufferLoad(srv,index,wot)
  %8274 = extractvalue %dx.types.ResRet.f32 %8273, 0
  %8275 = extractvalue %dx.types.ResRet.f32 %8273, 1
  %8276 = extractvalue %dx.types.ResRet.f32 %8273, 2
  %8277 = extractvalue %dx.types.ResRet.f32 %8273, 3
  %8278 = add i32 %8253, 64
  %8279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8278, i32 undef)  ; BufferLoad(srv,index,wot)
  %8280 = extractvalue %dx.types.ResRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.ResRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.ResRet.f32 %8279, 2
  %8283 = extractvalue %dx.types.ResRet.f32 %8279, 3
  %8284 = add i32 %8253, 80
  %8285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8284, i32 undef)  ; BufferLoad(srv,index,wot)
  %8286 = extractvalue %dx.types.ResRet.f32 %8285, 1
  %8287 = extractvalue %dx.types.ResRet.f32 %8285, 2
  %8288 = add i32 %8253, 92
  %8289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8288, i32 undef)  ; BufferLoad(srv,index,wot)
  %8290 = extractvalue %dx.types.ResRet.i32 %8289, 0
  %8291 = call float @dx.op.dot3.f32(i32 55, float %8255, float %8256, float %8257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8292 = select i1 %281, float %8286, float %8255
  %8293 = select i1 %281, float %8291, float %8256
  %8294 = select i1 %281, float %8287, float %8257
  %8295 = and i32 %8290, 65535
  %8296 = uitofp i32 %8295 to float
  %8297 = lshr i32 %8290, 16
  %8298 = uitofp i32 %8297 to float
  %8299 = and i32 %8268, 65535
  %8300 = and i32 %8268, 50331648
  %8301 = icmp eq i32 %8300, 33554432
  %8302 = fsub fast float %8274, %209
  %8303 = fsub fast float %8275, %210
  %8304 = fsub fast float %8276, %211
  %8305 = call float @dx.op.dot3.f32(i32 55, float %8302, float %8303, float %8304, float %8302, float %8303, float %8304)  ; Dot3(ax,ay,az,bx,by,bz)
  %8306 = call float @dx.op.unary.f32(i32 24, float %8305)  ; Sqrt(value)
  %8307 = fdiv fast float 1.000000e+00, %8306
  %8308 = fmul fast float %8307, %8302
  %8309 = fmul fast float %8307, %8303
  %8310 = fmul fast float %8307, %8304
  %8311 = fadd fast float %8306, %8260
  %8312 = fdiv fast float 1.000000e+00, %8311
  %8313 = fmul float %8271, %8312
  %8314 = fmul float %8313, %8313
  %8315 = call float @dx.op.unary.f32(i32 7, float %8314)  ; Saturate(value)
  br i1 %8301, label %8316, label %8337

; <label>:8316                                    ; preds = %8240
  %8317 = fmul fast float %8282, %8263
  %8318 = fmul fast float %8282, %8264
  %8319 = fmul fast float %8282, %8265
  %8320 = fadd fast float %8302, %8317
  %8321 = fadd fast float %8303, %8318
  %8322 = fadd fast float %8304, %8319
  %8323 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8321, float %8322, float %8320, float %8321, float %8322)  ; Dot3(ax,ay,az,bx,by,bz)
  %8324 = call float @dx.op.unary.f32(i32 25, float %8323)  ; Rsqrt(value)
  %8325 = fmul fast float %8324, %8320
  %8326 = fmul fast float %8324, %8321
  %8327 = fmul fast float %8324, %8322
  %8328 = fsub fast float %209, %8274
  %8329 = fsub fast float %210, %8275
  %8330 = fsub fast float %211, %8276
  %8331 = fsub fast float -0.000000e+00, %8328
  %8332 = fsub fast float -0.000000e+00, %8329
  %8333 = fsub fast float -0.000000e+00, %8330
  %8334 = call float @dx.op.dot3.f32(i32 55, float %8331, float %8332, float %8333, float %8263, float %8264, float %8265)  ; Dot3(ax,ay,az,bx,by,bz)
  %8335 = fcmp fast ogt float %8334, 0.000000e+00
  %8336 = uitofp i1 %8335 to float
  br label %8337

; <label>:8337                                    ; preds = %8316, %8240
  %8338 = phi float [ %8336, %8316 ], [ 1.000000e+00, %8240 ]
  %8339 = phi float [ %8325, %8316 ], [ %8308, %8240 ]
  %8340 = phi float [ %8326, %8316 ], [ %8309, %8240 ]
  %8341 = phi float [ %8327, %8316 ], [ %8310, %8240 ]
  %8342 = call float @dx.op.dot3.f32(i32 55, float %8263, float %8264, float %8265, float %8339, float %8340, float %8341)  ; Dot3(ax,ay,az,bx,by,bz)
  %8343 = fmul fast float %8342, %8342
  %8344 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8345 = fsub fast float 1.000000e+00, %8344
  %8346 = fmul fast float %8345, 5.000000e-01
  %8347 = fcmp fast ogt float %8342, 0.000000e+00
  %8348 = fsub fast float 1.000000e+00, %8346
  %8349 = select i1 %8347, float %8346, float %8348
  %8350 = fmul fast float %8349, %8298
  %8351 = fadd fast float %8350, %8296
  %8352 = fmul fast float %8351, 0x3EF0001000000000
  %8353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %8352, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8354 = extractvalue %dx.types.ResRet.f32 %8353, 0
  %8355 = fmul fast float %8342, %8280
  %8356 = fadd fast float %8355, %8281
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = select i1 %8301, float 1.000000e+00, float %8357
  %8359 = select i1 %8301, float %8357, float 1.000000e+00
  %8360 = fmul fast float %8306, %8277
  %8361 = fsub fast float 1.000000e+00, %8360
  %8362 = fmul fast float %8361, %8283
  %8363 = call float @dx.op.unary.f32(i32 7, float %8362)  ; Saturate(value)
  %8364 = fmul fast float %8363, %8359
  %8365 = fmul fast float %8364, 2.000000e+00
  %8366 = fsub fast float 3.000000e+00, %8365
  %8367 = fmul fast float %8354, %8338
  %8368 = fmul fast float %8364, %8364
  %8369 = fmul fast float %8368, %8367
  %8370 = fmul fast float %8369, %8366
  %8371 = call float @dx.op.binary.f32(i32 36, float %8370, float %8370)  ; FMin(a,b)
  %8372 = call float @dx.op.binary.f32(i32 36, float %8370, float %8371)  ; FMin(a,b)
  %8373 = fcmp fast ogt float %8372, 0.000000e+00
  br i1 %8373, label %8382, label %8374, !dx.controlflow.hints !138

; <label>:8374                                    ; preds = %8767, %8528, %8337
  %8375 = phi float [ %8242, %8528 ], [ %8242, %8337 ], [ %8807, %8767 ]
  %8376 = phi float [ %8243, %8528 ], [ %8243, %8337 ], [ %8808, %8767 ]
  %8377 = phi float [ %8244, %8528 ], [ %8244, %8337 ], [ %8809, %8767 ]
  %8378 = phi float [ %8245, %8528 ], [ %8245, %8337 ], [ %8801, %8767 ]
  %8379 = phi float [ %8246, %8528 ], [ %8246, %8337 ], [ %8802, %8767 ]
  %8380 = phi float [ %8247, %8528 ], [ %8247, %8337 ], [ %8803, %8767 ]
  %8381 = icmp eq i32 %8241, %8251
  br i1 %8381, label %8810, label %8240

; <label>:8382                                    ; preds = %8337
  %8383 = icmp eq i32 %8299, 255
  br i1 %8383, label %8528, label %8384, !dx.controlflow.hints !139

; <label>:8384                                    ; preds = %8382
  %8385 = mul nuw nsw i32 %8299, 176
  %8386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8385, i32 undef)  ; BufferLoad(srv,index,wot)
  %8387 = extractvalue %dx.types.ResRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.ResRet.f32 %8386, 1
  %8389 = extractvalue %dx.types.ResRet.f32 %8386, 2
  %8390 = extractvalue %dx.types.ResRet.f32 %8386, 3
  %8391 = add nuw nsw i32 %8385, 16
  %8392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8391, i32 undef)  ; BufferLoad(srv,index,wot)
  %8393 = extractvalue %dx.types.ResRet.f32 %8392, 0
  %8394 = extractvalue %dx.types.ResRet.f32 %8392, 1
  %8395 = add nuw nsw i32 %8385, 32
  %8396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8395, i32 undef)  ; BufferLoad(srv,index,wot)
  %8397 = extractvalue %dx.types.ResRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.ResRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.ResRet.f32 %8396, 2
  %8400 = add nuw nsw i32 %8385, 48
  %8401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8400, i32 undef)  ; BufferLoad(srv,index,wot)
  %8402 = extractvalue %dx.types.ResRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.ResRet.f32 %8401, 1
  %8404 = extractvalue %dx.types.ResRet.f32 %8401, 2
  %8405 = extractvalue %dx.types.ResRet.f32 %8401, 3
  %8406 = add nuw nsw i32 %8385, 64
  %8407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8406, i32 undef)  ; BufferLoad(srv,index,wot)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = extractvalue %dx.types.ResRet.f32 %8407, 3
  %8412 = add nuw nsw i32 %8385, 80
  %8413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8412, i32 undef)  ; BufferLoad(srv,index,wot)
  %8414 = extractvalue %dx.types.ResRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.ResRet.f32 %8413, 1
  %8416 = extractvalue %dx.types.ResRet.f32 %8413, 2
  %8417 = extractvalue %dx.types.ResRet.f32 %8413, 3
  %8418 = add nuw nsw i32 %8385, 96
  %8419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8418, i32 undef)  ; BufferLoad(srv,index,wot)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.ResRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.ResRet.f32 %8419, 2
  %8423 = extractvalue %dx.types.ResRet.f32 %8419, 3
  %8424 = bitcast float %8394 to i32
  %8425 = fmul fast float %8399, %135
  %8426 = fmul fast float %8399, %137
  %8427 = fmul fast float %8399, %139
  %8428 = fadd fast float %8425, %209
  %8429 = fadd fast float %8426, %210
  %8430 = fadd fast float %8427, %211
  %8431 = fmul fast float %8428, %8402
  %8432 = call float @dx.op.tertiary.f32(i32 46, float %8429, float %8408, float %8431)  ; FMad(a,b,c)
  %8433 = call float @dx.op.tertiary.f32(i32 46, float %8430, float %8414, float %8432)  ; FMad(a,b,c)
  %8434 = fadd fast float %8433, %8420
  %8435 = fmul fast float %8428, %8403
  %8436 = call float @dx.op.tertiary.f32(i32 46, float %8429, float %8409, float %8435)  ; FMad(a,b,c)
  %8437 = call float @dx.op.tertiary.f32(i32 46, float %8430, float %8415, float %8436)  ; FMad(a,b,c)
  %8438 = fadd fast float %8437, %8421
  %8439 = fmul fast float %8428, %8404
  %8440 = call float @dx.op.tertiary.f32(i32 46, float %8429, float %8410, float %8439)  ; FMad(a,b,c)
  %8441 = call float @dx.op.tertiary.f32(i32 46, float %8430, float %8416, float %8440)  ; FMad(a,b,c)
  %8442 = fadd fast float %8441, %8422
  %8443 = fmul fast float %8428, %8405
  %8444 = call float @dx.op.tertiary.f32(i32 46, float %8429, float %8411, float %8443)  ; FMad(a,b,c)
  %8445 = call float @dx.op.tertiary.f32(i32 46, float %8430, float %8417, float %8444)  ; FMad(a,b,c)
  %8446 = fadd fast float %8445, %8423
  %8447 = fdiv fast float %8434, %8446
  %8448 = fdiv fast float %8438, %8446
  %8449 = fdiv fast float %8442, %8446
  %8450 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8449)  ; FMax(a,b)
  %8451 = fmul fast float %292, 0x401921FB60000000
  %8452 = call float @dx.op.unary.f32(i32 13, float %8451)  ; Sin(value)
  %8453 = call float @dx.op.unary.f32(i32 12, float %8451)  ; Cos(value)
  %8454 = fmul fast float %8453, %8398
  %8455 = call float @dx.op.tertiary.f32(i32 46, float %8452, float %8398, float 0.000000e+00)  ; FMad(a,b,c)
  %8456 = fmul fast float %8398, %8452
  %8457 = fsub fast float -0.000000e+00, %8456
  %8458 = call float @dx.op.tertiary.f32(i32 46, float %8453, float %8398, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8459

; <label>:8459                                    ; preds = %8459, %8384
  %8460 = phi float [ 0.000000e+00, %8384 ], [ %8492, %8459 ]
  %8461 = phi float [ 0.000000e+00, %8384 ], [ %8494, %8459 ]
  %8462 = phi i32 [ 0, %8384 ], [ %8495, %8459 ]
  %8463 = mul i32 %8462, 2
  %8464 = add i32 0, %8463
  %8465 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8464
  %8466 = load float, float* %8465, align 4
  %8467 = mul i32 %8462, 2
  %8468 = add i32 1, %8467
  %8469 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8468
  %8470 = load float, float* %8469, align 4
  %8471 = fmul fast float %8454, %8466
  %8472 = call float @dx.op.tertiary.f32(i32 46, float %8470, float %8457, float %8471)  ; FMad(a,b,c)
  %8473 = fmul fast float %8466, %8455
  %8474 = call float @dx.op.tertiary.f32(i32 46, float %8470, float %8458, float %8473)  ; FMad(a,b,c)
  %8475 = fadd fast float %8472, %8447
  %8476 = fadd fast float %8474, %8448
  %8477 = fmul fast float %8475, %8393
  %8478 = fmul fast float %8476, %8393
  %8479 = call float @dx.op.binary.f32(i32 35, float %8477, float %8389)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 35, float %8478, float %8389)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 36, float %8479, float %8390)  ; FMin(a,b)
  %8482 = call float @dx.op.binary.f32(i32 36, float %8480, float %8390)  ; FMin(a,b)
  %8483 = fadd fast float %8481, %8387
  %8484 = fadd fast float %8482, %8388
  %8485 = uitofp i32 %8424 to float
  %8486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %57, float %8483, float %8484, float %8485, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8487 = extractvalue %dx.types.ResRet.f32 %8486, 0
  %8488 = fsub fast float %8487, %8450
  %8489 = fsub fast float %8488, %8397
  %8490 = fcmp fast ogt float %8489, 0.000000e+00
  %8491 = select i1 %8490, float 1.000000e+00, float 0.000000e+00
  %8492 = fadd fast float %8491, %8460
  %8493 = select i1 %8490, float %8489, float 0.000000e+00
  %8494 = fadd fast float %8493, %8461
  %8495 = add nuw nsw i32 %8462, 1
  %8496 = icmp eq i32 %8495, 8
  br i1 %8496, label %8497, label %8459

; <label>:8497                                    ; preds = %8459
  %8498 = fdiv fast float 1.000000e+00, %8492
  %8499 = fmul fast float %8498, %8494
  %8500 = fdiv fast float 1.000000e+00, %8450
  %8501 = fmul fast float %8499, %8500
  %8502 = call float @dx.op.unary.f32(i32 7, float %8501)  ; Saturate(value)
  %8503 = call float @dx.op.binary.f32(i32 35, float %8502, float 0.000000e+00)  ; FMax(a,b)
  %8504 = fmul fast float %8492, 1.250000e-01
  %8505 = call float @dx.op.unary.f32(i32 7, float %8504)  ; Saturate(value)
  %8506 = fmul fast float %8505, 2.000000e+00
  %8507 = fadd fast float %8506, -1.000000e+00
  %8508 = fcmp fast ogt float %8507, 0.000000e+00
  %8509 = fcmp fast olt float %8507, 0.000000e+00
  %8510 = zext i1 %8508 to i32
  %8511 = zext i1 %8509 to i32
  %8512 = sub nsw i32 %8510, %8511
  %8513 = sitofp i32 %8512 to float
  %8514 = fmul fast float %8513, %8507
  %8515 = fsub fast float 1.000000e+00, %8514
  %8516 = fmul fast float %8515, %8515
  %8517 = fmul fast float %8516, %8515
  %8518 = fsub fast float %8515, %8517
  %8519 = fmul fast float %8518, %8503
  %8520 = fsub fast float 1.000000e+00, %8517
  %8521 = fsub fast float %8520, %8519
  %8522 = fmul fast float %8513, 5.000000e-01
  %8523 = fmul fast float %8522, %8521
  %8524 = fsub fast float -5.000000e-01, %8523
  %8525 = fmul fast float %8524, %8358
  %8526 = fadd fast float %8525, 1.000000e+00
  %8527 = fmul fast float %8526, %8370
  br label %8528

; <label>:8528                                    ; preds = %8497, %8382
  %8529 = phi float [ %8527, %8497 ], [ %8370, %8382 ]
  %8530 = call float @dx.op.binary.f32(i32 36, float %8529, float %8529)  ; FMin(a,b)
  %8531 = call float @dx.op.binary.f32(i32 36, float %8529, float %8530)  ; FMin(a,b)
  %8532 = fcmp fast ogt float %8531, 0.000000e+00
  br i1 %8532, label %8533, label %8374, !dx.controlflow.hints !140

; <label>:8533                                    ; preds = %8528
  %8534 = fmul fast float %8529, %8292
  %8535 = fmul fast float %8529, %8293
  %8536 = fmul fast float %8529, %8294
  %8537 = fsub fast float %8276, %4651
  %8538 = fcmp fast ogt float %8537, 0.000000e+00
  %8539 = fsub fast float %211, %4651
  %8540 = fcmp fast ogt float %8539, 0.000000e+00
  %8541 = xor i1 %8540, %8538
  %8542 = fsub fast float %4651, %8276
  %8543 = fmul fast float %8542, 2.000000e+00
  %8544 = fadd fast float %8543, %8276
  %8545 = select i1 %8541, float %8276, float %8544
  %8546 = fsub fast float %8545, %211
  %8547 = call float @dx.op.dot3.f32(i32 55, float %8302, float %8303, float %8546, float %8302, float %8303, float %8546)  ; Dot3(ax,ay,az,bx,by,bz)
  %8548 = call float @dx.op.unary.f32(i32 25, float %8547)  ; Rsqrt(value)
  %8549 = fmul fast float %8548, %8302
  %8550 = fmul fast float %8548, %8303
  %8551 = fmul fast float %8548, %8546
  %8552 = fsub fast float %4651, %211
  %8553 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8552)  ; Dot3(ax,ay,az,bx,by,bz)
  %8554 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8549, float %8550, float %8551)  ; Dot3(ax,ay,az,bx,by,bz)
  %8555 = fdiv fast float 1.000000e+00, %8554
  %8556 = fmul fast float %8555, %8553
  %8557 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8539, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8558 = fcmp fast ogt float %8557, 0.000000e+00
  %8559 = fcmp fast olt float %8557, 0.000000e+00
  %8560 = zext i1 %8558 to i32
  %8561 = zext i1 %8559 to i32
  %8562 = sub nsw i32 %8560, %8561
  %8563 = sitofp i32 %8562 to float
  %8564 = fsub fast float %8545, %4651
  %8565 = call float @dx.op.dot3.f32(i32 55, float %8302, float %8303, float %8564, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8566 = fcmp fast ogt float %8565, 0.000000e+00
  %8567 = fcmp fast olt float %8565, 0.000000e+00
  %8568 = zext i1 %8566 to i32
  %8569 = zext i1 %8567 to i32
  %8570 = sub nsw i32 %8568, %8569
  %8571 = sitofp i32 %8570 to float
  %8572 = fcmp fast une float %8563, %8571
  br i1 %8572, label %8573, label %8583

; <label>:8573                                    ; preds = %8533
  %8574 = fmul fast float %8556, %8551
  %8575 = fmul fast float %8556, %8550
  %8576 = fmul fast float %8556, %8549
  %8577 = fmul fast float %8576, %8576
  %8578 = fmul fast float %8575, %8575
  %8579 = fadd fast float %8577, %8578
  %8580 = fmul fast float %8574, %8574
  %8581 = fadd fast float %8579, %8580
  %8582 = call float @dx.op.unary.f32(i32 24, float %8581)  ; Sqrt(value)
  br label %8595

; <label>:8583                                    ; preds = %8533
  %8584 = icmp slt i32 %8562, 0
  br i1 %8584, label %8585, label %8595

; <label>:8585                                    ; preds = %8583
  %8586 = fsub fast float %209, %8274
  %8587 = fsub fast float %210, %8275
  %8588 = fsub fast float %211, %8545
  %8589 = fmul fast float %8586, %8586
  %8590 = fmul fast float %8587, %8587
  %8591 = fadd fast float %8589, %8590
  %8592 = fmul fast float %8588, %8588
  %8593 = fadd fast float %8591, %8592
  %8594 = call float @dx.op.unary.f32(i32 24, float %8593)  ; Sqrt(value)
  br label %8595

; <label>:8595                                    ; preds = %8585, %8583, %8573
  %8596 = phi float [ %8582, %8573 ], [ %8594, %8585 ], [ 0.000000e+00, %8583 ]
  %8597 = and i1 %8540, %8538
  %8598 = fsub fast float -0.000000e+00, %8596
  %8599 = select i1 %8597, float -0.000000e+00, float %8598
  %8600 = fmul fast float %4648, 0x3FF7154760000000
  %8601 = fmul fast float %8600, %8599
  %8602 = fmul fast float %4649, 0x3FF7154760000000
  %8603 = fmul fast float %8602, %8599
  %8604 = fmul fast float %4650, 0x3FF7154760000000
  %8605 = fmul fast float %8604, %8599
  %8606 = call float @dx.op.unary.f32(i32 21, float %8601)  ; Exp(value)
  %8607 = call float @dx.op.unary.f32(i32 21, float %8603)  ; Exp(value)
  %8608 = call float @dx.op.unary.f32(i32 21, float %8605)  ; Exp(value)
  %8609 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8610 = call float @dx.op.unary.f32(i32 7, float %8607)  ; Saturate(value)
  %8611 = call float @dx.op.unary.f32(i32 7, float %8608)  ; Saturate(value)
  %8612 = fmul fast float %8534, %8609
  %8613 = fmul fast float %8535, %8610
  %8614 = fmul fast float %8536, %8611
  %8615 = fsub fast float %8308, %5474
  %8616 = fsub fast float %8309, %5475
  %8617 = fsub fast float %8310, %5476
  %8618 = call float @dx.op.dot3.f32(i32 55, float %8615, float %8616, float %8617, float %8615, float %8616, float %8617)  ; Dot3(ax,ay,az,bx,by,bz)
  %8619 = call float @dx.op.unary.f32(i32 25, float %8618)  ; Rsqrt(value)
  %8620 = fmul fast float %8619, %8615
  %8621 = fmul fast float %8619, %8616
  %8622 = fmul fast float %8619, %8617
  %8623 = call float @dx.op.dot3.f32(i32 55, float %8308, float %8309, float %8310, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %8624 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %8620, float %8621, float %8622)  ; Dot3(ax,ay,az,bx,by,bz)
  %8625 = call float @dx.op.unary.f32(i32 7, float %8623)  ; Saturate(value)
  %8626 = fmul fast float %8625, %8315
  %8627 = bitcast i32 %5506 to float
  %8628 = fmul fast float %8625, %8625
  %8629 = fmul fast float %8628, %8627
  %8630 = call float @dx.op.unary.f32(i32 7, float %8629)  ; Saturate(value)
  %8631 = fmul fast float %8626, %8630
  %8632 = bitcast float %8305 to i32
  %8633 = ashr i32 %8632, 1
  %8634 = sub nsw i32 1597463007, %8633
  %8635 = bitcast i32 %8634 to float
  %8636 = fmul fast float %8635, %8302
  %8637 = fmul fast float %8635, %8303
  %8638 = fmul fast float %8635, %8304
  %8639 = fsub fast float %8636, %5474
  %8640 = fsub fast float %8637, %5475
  %8641 = fsub fast float %8638, %5476
  %8642 = call float @dx.op.dot3.f32(i32 55, float %8639, float %8640, float %8641, float %8639, float %8640, float %8641)  ; Dot3(ax,ay,az,bx,by,bz)
  %8643 = call float @dx.op.unary.f32(i32 25, float %8642)  ; Rsqrt(value)
  %8644 = fmul fast float %8639, %8643
  %8645 = fmul fast float %8640, %8643
  %8646 = fmul fast float %8641, %8643
  %8647 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %8644, float %8645, float %8646)  ; Dot3(ax,ay,az,bx,by,bz)
  %8648 = fmul fast float %8647, %8647
  %8649 = call float @dx.op.unary.f32(i32 6, float %8623)  ; FAbs(value)
  %8650 = fsub fast float 1.000000e+00, %5500
  %8651 = fmul fast float %5482, %5482
  %8652 = fmul fast float %8651, %8650
  %8653 = fadd fast float %8652, %5500
  %8654 = bitcast float %8653 to i32
  %8655 = ashr i32 %8654, 1
  %8656 = add nsw i32 %8655, 532487669
  %8657 = bitcast i32 %8656 to float
  %8658 = fadd fast float %8657, %5482
  %8659 = fmul fast float %5500, %8648
  %8660 = fsub fast float 1.000000e+00, %8648
  %8661 = fadd fast float %8660, %8659
  %8662 = fmul fast float %8649, %8649
  %8663 = fmul fast float %8662, %8650
  %8664 = fadd fast float %8663, %5500
  %8665 = bitcast float %8664 to i32
  %8666 = ashr i32 %8665, 1
  %8667 = add nsw i32 %8666, 532487669
  %8668 = bitcast i32 %8667 to float
  %8669 = fadd fast float %8668, %8649
  %8670 = fmul fast float %8661, %8661
  %8671 = fmul fast float %8670, %8658
  %8672 = fmul fast float %8671, %8669
  %8673 = fdiv fast float 1.000000e+00, %8672
  %8674 = bitcast float %5500 to i32
  %8675 = sitofp i32 %8674 to float
  %8676 = fmul fast float %8675, 0x3FE7F73180000000
  %8677 = fadd fast float %8676, 0x41AFE27C40000000
  %8678 = fptosi float %8677 to i32
  %8679 = bitcast i32 %8678 to float
  %8680 = fmul fast float %8271, 0x3FD80E9D60000000
  %8681 = fmul fast float %8680, %8635
  %8682 = fadd fast float %8679, %8681
  %8683 = bitcast float %8682 to i32
  %8684 = sub nsw i32 2129859010, %8683
  %8685 = bitcast i32 %8684 to float
  %8686 = fmul fast float %5500, %8673
  %8687 = fmul fast float %8686, %8679
  %8688 = fmul fast float %8687, %8685
  %8689 = call float @dx.op.unary.f32(i32 6, float %8624)  ; FAbs(value)
  %8690 = fsub fast float 1.000000e+00, %8689
  %8691 = bitcast float %8690 to i32
  %8692 = sitofp i32 %8691 to float
  %8693 = fmul fast float %8692, 5.000000e+00
  %8694 = fadd fast float %8693, 0xC1EFBF8940000000
  %8695 = fptosi float %8694 to i32
  %8696 = bitcast i32 %8695 to float
  %8697 = fsub fast float 1.000000e+00, %5428
  %8698 = fsub fast float 1.000000e+00, %5429
  %8699 = fsub fast float 1.000000e+00, %5480
  %8700 = fmul fast float %8696, %8697
  %8701 = fmul fast float %8696, %8698
  %8702 = fmul fast float %8696, %8699
  %8703 = fadd fast float %8700, %5428
  %8704 = fadd fast float %8701, %5429
  %8705 = fadd fast float %8702, %5480
  br i1 %5807, label %8706, label %8729

; <label>:8706                                    ; preds = %8595
  %8707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4247, float %8689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.ResRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.ResRet.f32 %8707, 2
  %8711 = fadd fast float %8708, -5.000000e-01
  %8712 = fadd fast float %8709, -5.000000e-01
  %8713 = fadd fast float %8710, -5.000000e-01
  %8714 = fmul fast float %5428, 4.000000e+00
  %8715 = fmul fast float %8714, %8697
  %8716 = fmul fast float %8715, %8711
  %8717 = fmul fast float %5429, 4.000000e+00
  %8718 = fmul fast float %8717, %8698
  %8719 = fmul fast float %8718, %8712
  %8720 = fmul fast float %5480, 4.000000e+00
  %8721 = fmul fast float %8720, %8699
  %8722 = fmul fast float %8721, %8713
  %8723 = fadd fast float %8716, %8703
  %8724 = fadd fast float %8719, %8704
  %8725 = fadd fast float %8722, %8705
  %8726 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8727 = call float @dx.op.unary.f32(i32 7, float %8724)  ; Saturate(value)
  %8728 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  br label %8729

; <label>:8729                                    ; preds = %8706, %8595
  %8730 = phi float [ %8726, %8706 ], [ %8703, %8595 ]
  %8731 = phi float [ %8727, %8706 ], [ %8704, %8595 ]
  %8732 = phi float [ %8728, %8706 ], [ %8705, %8595 ]
  %8733 = fmul fast float %8623, 9.843750e-01
  %8734 = fadd fast float %8733, 7.812500e-03
  %8735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8734, float %5797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8736 = extractvalue %dx.types.ResRet.f32 %8735, 2
  %8737 = extractvalue %dx.types.ResRet.f32 %8735, 3
  %8738 = fmul fast float %8736, %5428
  %8739 = fmul fast float %8736, %5429
  %8740 = fmul fast float %8736, %5480
  %8741 = fadd fast float %8738, %8737
  %8742 = fadd fast float %8739, %8737
  %8743 = fadd fast float %8740, %8737
  br i1 %5807, label %8744, label %8767

; <label>:8744                                    ; preds = %8729
  %8745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4247, float %8623, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8746 = extractvalue %dx.types.ResRet.f32 %8745, 0
  %8747 = extractvalue %dx.types.ResRet.f32 %8745, 1
  %8748 = extractvalue %dx.types.ResRet.f32 %8745, 2
  %8749 = fadd fast float %8746, -5.000000e-01
  %8750 = fadd fast float %8747, -5.000000e-01
  %8751 = fadd fast float %8748, -5.000000e-01
  %8752 = fmul fast float %5428, 4.000000e+00
  %8753 = fmul fast float %8752, %8697
  %8754 = fmul fast float %8753, %8749
  %8755 = fmul fast float %5429, 4.000000e+00
  %8756 = fmul fast float %8755, %8698
  %8757 = fmul fast float %8756, %8750
  %8758 = fmul fast float %5480, 4.000000e+00
  %8759 = fmul fast float %8758, %8699
  %8760 = fmul fast float %8759, %8751
  %8761 = fadd fast float %8754, %8741
  %8762 = fadd fast float %8757, %8742
  %8763 = fadd fast float %8760, %8743
  %8764 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8765 = call float @dx.op.unary.f32(i32 7, float %8762)  ; Saturate(value)
  %8766 = call float @dx.op.unary.f32(i32 7, float %8763)  ; Saturate(value)
  br label %8767

; <label>:8767                                    ; preds = %8744, %8729
  %8768 = phi float [ %8764, %8744 ], [ %8741, %8729 ]
  %8769 = phi float [ %8765, %8744 ], [ %8742, %8729 ]
  %8770 = phi float [ %8766, %8744 ], [ %8743, %8729 ]
  %8771 = call float @dx.op.binary.f32(i32 35, float %8769, float %8770)  ; FMax(a,b)
  %8772 = call float @dx.op.binary.f32(i32 35, float %8768, float %8771)  ; FMax(a,b)
  %8773 = fsub fast float 1.000000e+00, %8772
  %8774 = fmul fast float %8730, %8688
  %8775 = fmul fast float %8731, %8688
  %8776 = fmul fast float %8732, %8688
  %8777 = fsub fast float 1.000000e+00, %8624
  %8778 = bitcast float %8777 to i32
  %8779 = sitofp i32 %8778 to float
  %8780 = fmul fast float %8779, 5.000000e+00
  %8781 = fadd fast float %8780, 0xC1EFBF8940000000
  %8782 = fptosi float %8781 to i32
  %8783 = bitcast i32 %8782 to float
  %8784 = fmul fast float %8783, %4248
  %8785 = fmul fast float %8773, %8784
  %8786 = fmul fast float %8785, %6399
  %8787 = fmul fast float %8785, %6400
  %8788 = fmul fast float %8785, %6401
  %8789 = fadd fast float %8786, %8774
  %8790 = fadd fast float %8787, %8775
  %8791 = fadd fast float %8788, %8776
  %8792 = fmul fast float %8612, %4244
  %8793 = fmul fast float %8792, %8631
  %8794 = fmul fast float %8793, %8773
  %8795 = fmul fast float %8613, %4244
  %8796 = fmul fast float %8795, %8631
  %8797 = fmul fast float %8796, %8773
  %8798 = fmul fast float %8614, %4244
  %8799 = fmul fast float %8798, %8631
  %8800 = fmul fast float %8799, %8773
  %8801 = fadd fast float %8794, %8245
  %8802 = fadd fast float %8797, %8246
  %8803 = fadd fast float %8800, %8247
  %8804 = fmul fast float %8793, %8789
  %8805 = fmul fast float %8796, %8790
  %8806 = fmul fast float %8799, %8791
  %8807 = fadd fast float %8804, %8242
  %8808 = fadd fast float %8805, %8243
  %8809 = fadd fast float %8806, %8244
  br label %8374

; <label>:8810                                    ; preds = %8374
  br label %8811

; <label>:8811                                    ; preds = %8810, %8208
  %8812 = phi float [ %8210, %8208 ], [ %8375, %8810 ]
  %8813 = phi float [ %8211, %8208 ], [ %8376, %8810 ]
  %8814 = phi float [ %8212, %8208 ], [ %8377, %8810 ]
  %8815 = phi float [ %8213, %8208 ], [ %8378, %8810 ]
  %8816 = phi float [ %8214, %8208 ], [ %8379, %8810 ]
  %8817 = phi float [ %8215, %8208 ], [ %8380, %8810 ]
  %8818 = add i32 %8209, 1
  %8819 = icmp ugt i32 %8818, %8205
  br i1 %8819, label %8820, label %8208

; <label>:8820                                    ; preds = %8811
  br label %8821

; <label>:8821                                    ; preds = %8820, %8158, %8148
  %8822 = phi float [ %8149, %8148 ], [ %8149, %8158 ], [ %8812, %8820 ]
  %8823 = phi float [ %8150, %8148 ], [ %8150, %8158 ], [ %8813, %8820 ]
  %8824 = phi float [ %8151, %8148 ], [ %8151, %8158 ], [ %8814, %8820 ]
  %8825 = phi float [ %8152, %8148 ], [ %8152, %8158 ], [ %8815, %8820 ]
  %8826 = phi float [ %8153, %8148 ], [ %8153, %8158 ], [ %8816, %8820 ]
  %8827 = phi float [ %8154, %8148 ], [ %8154, %8158 ], [ %8817, %8820 ]
  %8828 = fmul fast float %4244, %4244
  %8829 = fsub fast float 1.000000e+00, %8828
  %8830 = call float @dx.op.dot3.f32(i32 55, float %8829, float %8829, float %8829, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8831 = fsub fast float 1.000000e+00, %8830
  %8832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8833 = extractvalue %dx.types.CBufRet.f32 %8832, 0
  %8834 = fmul fast float %8833, %6415
  %8835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8836 = extractvalue %dx.types.CBufRet.f32 %8835, 3
  %8837 = fsub fast float 1.000000e+00, %4251
  %8838 = call float @dx.op.unary.f32(i32 7, float %8837)  ; Saturate(value)
  %8839 = fadd fast float %8827, %4250
  %8840 = fmul fast float %8839, %4251
  %8841 = fmul fast float %8838, %8836
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 3
  %8844 = fmul fast float %8825, %5434
  %8845 = fmul fast float %8826, %5435
  %8846 = fmul fast float %8827, %5436
  %8847 = fcmp fast ogt float %113, %244
  %8848 = and i1 %8847, %4654
  %8849 = or i1 %4660, %8848
  %8850 = icmp eq i32 %4653, 2
  %8851 = fcmp fast ole float %113, %244
  %8852 = and i1 %8851, %8850
  %8853 = or i1 %8852, %8849
  br i1 %8848, label %8854, label %9111

; <label>:8854                                    ; preds = %8821
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 2
  %8857 = extractvalue %dx.types.CBufRet.f32 %8855, 3
  %8858 = fmul fast float %8856, %126
  %8859 = fmul fast float %8857, %127
  %8860 = call float @dx.op.unary.f32(i32 7, float %8858)  ; Saturate(value)
  %8861 = call float @dx.op.unary.f32(i32 7, float %8859)  ; Saturate(value)
  %8862 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8860, float %8861, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8863 = extractvalue %dx.types.ResRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.ResRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.ResRet.f32 %8862, 2
  %8866 = extractvalue %dx.types.ResRet.f32 %8862, 3
  %8867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8860, float %8861, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8868 = extractvalue %dx.types.ResRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.ResRet.f32 %8867, 1
  %8870 = extractvalue %dx.types.ResRet.f32 %8867, 2
  %8871 = extractvalue %dx.types.ResRet.f32 %8867, 3
  %8872 = call float @dx.op.binary.f32(i32 35, float %8864, float %8865)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 35, float %8863, float %8872)  ; FMax(a,b)
  %8874 = call float @dx.op.binary.f32(i32 35, float %8873, float %8866)  ; FMax(a,b)
  %8875 = call float @dx.op.binary.f32(i32 36, float %8869, float %8870)  ; FMin(a,b)
  %8876 = call float @dx.op.binary.f32(i32 36, float %8868, float %8875)  ; FMin(a,b)
  %8877 = call float @dx.op.binary.f32(i32 36, float %8876, float %8871)  ; FMin(a,b)
  %8878 = fmul fast float %8874, 2.550000e+02
  %8879 = fadd fast float %8878, 0x3F70101020000000
  %8880 = fptoui float %8879 to i32
  %8881 = fmul fast float %8877, 2.550000e+02
  %8882 = fadd fast float %8881, 0x3F70101020000000
  %8883 = fptoui float %8882 to i32
  %8884 = icmp ult i32 %8880, %8883
  br i1 %8884, label %8885, label %9053

; <label>:8885                                    ; preds = %8854
  %8886 = fcmp fast ogt float %112, 9.843750e-01
  %8887 = fadd fast float %113, -4.000000e+00
  %8888 = select i1 %8886, float -4.000000e+00, float %8887
  %8889 = call float @dx.op.binary.f32(i32 35, float %8888, float 0.000000e+00)  ; FMax(a,b)
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 0
  %8892 = fadd fast float %8891, %8889
  %8893 = extractvalue %dx.types.CBufRet.f32 %8890, 2
  %8894 = fmul fast float %8892, %8893
  %8895 = call float @dx.op.unary.f32(i32 23, float %8894)  ; Log(value)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8890, 3
  %8897 = fmul fast float %8896, %8895
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 2
  %8900 = fmul fast float %8897, %8899
  %8901 = call float @dx.op.unary.f32(i32 7, float %8900)  ; Saturate(value)
  %8902 = uitofp i32 %8880 to float
  %8903 = uitofp i32 %8883 to float
  %8904 = fadd fast float %8902, 5.000000e-01
  %8905 = fadd fast float %8903, 5.000000e-01
  %8906 = fmul fast float %8899, %8904
  %8907 = fmul fast float %8899, %8905
  %8908 = fadd fast float %8906, 0x3F0FFB4800000000
  %8909 = fadd fast float %8907, 0xBF0FFB4800000000
  %8910 = call float @dx.op.binary.f32(i32 35, float %8901, float %8908)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 36, float %8910, float %8909)  ; FMin(a,b)
  %8912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8913 = extractvalue %dx.types.CBufRet.f32 %8912, 1
  %8914 = extractvalue %dx.types.CBufRet.f32 %8912, 2
  %8915 = extractvalue %dx.types.CBufRet.f32 %8912, 0
  %8916 = fmul fast float %8913, %8911
  %8917 = fadd fast float %8915, %8916
  %8918 = fadd fast float %8915, %8914
  %8919 = fsub fast float %8913, %8914
  %8920 = fadd fast float %8919, %8915
  %8921 = call float @dx.op.binary.f32(i32 35, float %8917, float %8918)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 36, float %8921, float %8920)  ; FMin(a,b)
  %8923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %8860, float %8861, float %8922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8924 = extractvalue %dx.types.ResRet.f32 %8923, 0
  %8925 = extractvalue %dx.types.ResRet.f32 %8923, 1
  %8926 = extractvalue %dx.types.ResRet.f32 %8923, 2
  %8927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8928 = extractvalue %dx.types.CBufRet.i32 %8927, 0
  %8929 = extractvalue %dx.types.CBufRet.i32 %8927, 1
  %8930 = uitofp i32 %8928 to float
  %8931 = uitofp i32 %8929 to float
  %8932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8933 = extractvalue %dx.types.CBufRet.f32 %8932, 0
  %8934 = extractvalue %dx.types.CBufRet.f32 %8932, 1
  %8935 = fmul fast float %8930, %8860
  %8936 = fmul fast float %8931, %8861
  %8937 = fadd fast float %8935, -5.000000e-01
  %8938 = fadd fast float %8936, -5.000000e-01
  %8939 = call float @dx.op.unary.f32(i32 22, float %8937)  ; Frc(value)
  %8940 = call float @dx.op.unary.f32(i32 22, float %8938)  ; Frc(value)
  %8941 = fmul fast float %8939, %8939
  %8942 = fmul fast float %8941, %8939
  %8943 = fsub fast float 3.000000e+00, %8939
  %8944 = fmul fast float %8941, %8943
  %8945 = fmul fast float %8939, 3.000000e+00
  %8946 = fmul fast float %8942, 3.000000e+00
  %8947 = fmul fast float %8941, 6.000000e+00
  %8948 = fsub fast float %8946, %8947
  %8949 = fadd fast float %8948, 4.000000e+00
  %8950 = fmul fast float %8949, 0x3FC5555560000000
  %8951 = fmul fast float %8942, -3.000000e+00
  %8952 = fadd fast float %8941, %8939
  %8953 = fmul fast float %8952, 3.000000e+00
  %8954 = fadd fast float %8951, 1.000000e+00
  %8955 = fadd fast float %8954, %8953
  %8956 = fmul fast float %8942, 0x3FC5555560000000
  %8957 = fmul fast float %8940, %8940
  %8958 = fmul fast float %8957, %8940
  %8959 = fsub fast float 3.000000e+00, %8940
  %8960 = fmul fast float %8957, %8959
  %8961 = fmul fast float %8940, 3.000000e+00
  %8962 = fmul fast float %8958, 3.000000e+00
  %8963 = fmul fast float %8957, 6.000000e+00
  %8964 = fsub fast float %8962, %8963
  %8965 = fadd fast float %8964, 4.000000e+00
  %8966 = fmul fast float %8965, 0x3FC5555560000000
  %8967 = fmul fast float %8958, -3.000000e+00
  %8968 = fadd fast float %8957, %8940
  %8969 = fmul fast float %8968, 3.000000e+00
  %8970 = fadd fast float %8967, 1.000000e+00
  %8971 = fadd fast float %8970, %8969
  %8972 = fmul fast float %8958, 0x3FC5555560000000
  %8973 = fadd fast float %8939, 1.000000e+00
  %8974 = fsub fast float 1.000000e+00, %8945
  %8975 = fadd fast float %8974, %8944
  %8976 = fadd fast float %8975, %8949
  %8977 = fmul fast float %8976, 0x3FC5555560000000
  %8978 = fdiv fast float %8950, %8977
  %8979 = fsub fast float %8973, %8978
  %8980 = fsub fast float 1.000000e+00, %8939
  %8981 = fadd fast float %8955, %8942
  %8982 = fmul fast float %8981, 0x3FC5555560000000
  %8983 = fdiv fast float %8956, %8982
  %8984 = fadd fast float %8980, %8983
  %8985 = fadd fast float %8940, 1.000000e+00
  %8986 = fsub fast float 1.000000e+00, %8961
  %8987 = fadd fast float %8986, %8960
  %8988 = fadd fast float %8987, %8965
  %8989 = fmul fast float %8988, 0x3FC5555560000000
  %8990 = fdiv fast float %8966, %8989
  %8991 = fsub fast float %8985, %8990
  %8992 = fsub fast float 1.000000e+00, %8940
  %8993 = fadd fast float %8971, %8958
  %8994 = fmul fast float %8993, 0x3FC5555560000000
  %8995 = fdiv fast float %8972, %8994
  %8996 = fadd fast float %8995, %8992
  %8997 = fmul fast float %8979, %8933
  %8998 = fsub fast float %8860, %8997
  %8999 = fmul fast float %8984, %8933
  %9000 = fadd fast float %8999, %8860
  %9001 = fmul fast float %8996, %8934
  %9002 = fadd fast float %9001, %8861
  %9003 = fmul fast float %8991, %8934
  %9004 = fsub fast float %8861, %9003
  %9005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8998, float %9004, float %8922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9006 = extractvalue %dx.types.ResRet.f32 %9005, 0
  %9007 = extractvalue %dx.types.ResRet.f32 %9005, 1
  %9008 = extractvalue %dx.types.ResRet.f32 %9005, 2
  %9009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9000, float %9004, float %8922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9010 = extractvalue %dx.types.ResRet.f32 %9009, 0
  %9011 = extractvalue %dx.types.ResRet.f32 %9009, 1
  %9012 = extractvalue %dx.types.ResRet.f32 %9009, 2
  %9013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8998, float %9002, float %8922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9014 = extractvalue %dx.types.ResRet.f32 %9013, 0
  %9015 = extractvalue %dx.types.ResRet.f32 %9013, 1
  %9016 = extractvalue %dx.types.ResRet.f32 %9013, 2
  %9017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9000, float %9002, float %8922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9018 = extractvalue %dx.types.ResRet.f32 %9017, 0
  %9019 = extractvalue %dx.types.ResRet.f32 %9017, 1
  %9020 = extractvalue %dx.types.ResRet.f32 %9017, 2
  %9021 = fsub fast float %9014, %9006
  %9022 = fsub fast float %9015, %9007
  %9023 = fsub fast float %9016, %9008
  %9024 = fmul fast float %9021, %8994
  %9025 = fmul fast float %9022, %8994
  %9026 = fmul fast float %9023, %8994
  %9027 = fadd fast float %9024, %9006
  %9028 = fadd fast float %9025, %9007
  %9029 = fadd fast float %9026, %9008
  %9030 = fsub fast float %9018, %9010
  %9031 = fsub fast float %9019, %9011
  %9032 = fsub fast float %9020, %9012
  %9033 = fmul fast float %9030, %8994
  %9034 = fmul fast float %9031, %8994
  %9035 = fmul fast float %9032, %8994
  %9036 = fsub fast float %9010, %9027
  %9037 = fadd fast float %9036, %9033
  %9038 = fsub fast float %9011, %9028
  %9039 = fadd fast float %9038, %9034
  %9040 = fsub fast float %9012, %9029
  %9041 = fadd fast float %9040, %9035
  %9042 = fmul fast float %9037, %8982
  %9043 = fmul fast float %9039, %8982
  %9044 = fmul fast float %9041, %8982
  %9045 = fadd fast float %9042, %9027
  %9046 = fadd fast float %9043, %9028
  %9047 = fadd fast float %9044, %9029
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 1
  %9050 = fmul fast float %9045, %9049
  %9051 = fmul fast float %9046, %9049
  %9052 = fmul fast float %9047, %9049
  br label %9053

; <label>:9053                                    ; preds = %8885, %8854
  %9054 = phi float [ %8924, %8885 ], [ 1.000000e+00, %8854 ]
  %9055 = phi float [ %8925, %8885 ], [ 1.000000e+00, %8854 ]
  %9056 = phi float [ %8926, %8885 ], [ 1.000000e+00, %8854 ]
  %9057 = phi float [ %9050, %8885 ], [ 0.000000e+00, %8854 ]
  %9058 = phi float [ %9051, %8885 ], [ 0.000000e+00, %8854 ]
  %9059 = phi float [ %9052, %8885 ], [ 0.000000e+00, %8854 ]
  %9060 = fmul fast float %9057, %8831
  %9061 = fmul fast float %9058, %8831
  %9062 = fmul fast float %9059, %8831
  %9063 = call float @dx.op.dot3.f32(i32 55, float %9054, float %9055, float %9056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9064 = call float @dx.op.dot3.f32(i32 55, float %9060, float %9061, float %9062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9065 = select i1 %281, float %9063, float %9054
  %9066 = select i1 %281, float %9063, float %9055
  %9067 = select i1 %281, float 1.000000e+00, float %9056
  %9068 = select i1 %281, float %9064, float %9060
  %9069 = select i1 %281, float 0.000000e+00, float %9061
  %9070 = select i1 %281, float 0.000000e+00, float %9062
  %9071 = fmul fast float %9065, %8844
  %9072 = fmul fast float %9066, %8845
  %9073 = fmul fast float %9067, %8846
  %9074 = fadd fast float %9071, %9068
  %9075 = fadd fast float %9072, %9069
  %9076 = fadd fast float %9070, %9073
  %9077 = fmul fast float %9065, %8822
  %9078 = fmul fast float %9066, %8823
  %9079 = fmul fast float %9067, %8824
  %9080 = fmul fast float %158, %8856
  %9081 = fmul fast float %160, %8857
  %9082 = fsub fast float 1.000000e+00, %9080
  %9083 = fsub fast float 1.000000e+00, %9081
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9088 = fmul fast float %9082, %9085
  %9089 = fmul fast float %9082, %9086
  %9090 = fmul fast float %9082, %9087
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 0
  %9093 = extractvalue %dx.types.CBufRet.f32 %9091, 1
  %9094 = extractvalue %dx.types.CBufRet.f32 %9091, 2
  %9095 = fmul fast float %9083, %9092
  %9096 = fmul fast float %9083, %9093
  %9097 = fmul fast float %9083, %9094
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9102 = fadd fast float %9095, %9099
  %9103 = fadd fast float %9102, %9088
  %9104 = fadd fast float %9096, %9100
  %9105 = fadd fast float %9104, %9089
  %9106 = fadd fast float %9097, %9101
  %9107 = fadd fast float %9106, %9090
  %9108 = fmul fast float %9103, %244
  %9109 = fmul fast float %9105, %244
  %9110 = fmul fast float %9107, %244
  br label %9111

; <label>:9111                                    ; preds = %9053, %8821
  %9112 = phi float [ %9108, %9053 ], [ %209, %8821 ]
  %9113 = phi float [ %9109, %9053 ], [ %210, %8821 ]
  %9114 = phi float [ %9110, %9053 ], [ %211, %8821 ]
  %9115 = phi float [ %244, %9053 ], [ %113, %8821 ]
  %9116 = phi float [ %9074, %9053 ], [ %8844, %8821 ]
  %9117 = phi float [ %9075, %9053 ], [ %8845, %8821 ]
  %9118 = phi float [ %9076, %9053 ], [ %8846, %8821 ]
  %9119 = phi float [ %9077, %9053 ], [ %8822, %8821 ]
  %9120 = phi float [ %9078, %9053 ], [ %8823, %8821 ]
  %9121 = phi float [ %9079, %9053 ], [ %8824, %8821 ]
  %9122 = phi float [ %9054, %9053 ], [ 1.000000e+00, %8821 ]
  br i1 %8853, label %10277, label %9123

; <label>:9123                                    ; preds = %9111
  %9124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.f32 %9124, 0
  %9126 = extractvalue %dx.types.CBufRet.f32 %9124, 1
  %9127 = extractvalue %dx.types.CBufRet.f32 %9124, 2
  %9128 = extractvalue %dx.types.CBufRet.f32 %9124, 3
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 0
  %9131 = extractvalue %dx.types.CBufRet.f32 %9129, 1
  %9132 = extractvalue %dx.types.CBufRet.f32 %9129, 2
  %9133 = extractvalue %dx.types.CBufRet.f32 %9129, 3
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 0
  %9136 = extractvalue %dx.types.CBufRet.f32 %9134, 1
  %9137 = extractvalue %dx.types.CBufRet.f32 %9134, 2
  %9138 = extractvalue %dx.types.CBufRet.f32 %9134, 3
  %9139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9140 = extractvalue %dx.types.CBufRet.f32 %9139, 0
  %9141 = extractvalue %dx.types.CBufRet.f32 %9139, 1
  %9142 = extractvalue %dx.types.CBufRet.f32 %9139, 2
  %9143 = extractvalue %dx.types.CBufRet.f32 %9139, 3
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 3
  %9146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9147 = extractvalue %dx.types.CBufRet.f32 %9146, 3
  %9148 = extractvalue %dx.types.CBufRet.f32 %9146, 0
  %9149 = extractvalue %dx.types.CBufRet.f32 %9146, 1
  %9150 = extractvalue %dx.types.CBufRet.f32 %9146, 2
  %9151 = fcmp fast olt float %9150, -5.000000e-01
  %9152 = call float @dx.op.dot3.f32(i32 55, float %9112, float %9113, float %9114, float %9112, float %9113, float %9114)  ; Dot3(ax,ay,az,bx,by,bz)
  %9153 = call float @dx.op.unary.f32(i32 25, float %9152)  ; Rsqrt(value)
  %9154 = fmul fast float %9153, %9152
  %9155 = fmul fast float %9153, %9112
  %9156 = fmul fast float %9153, %9113
  %9157 = fmul fast float %9153, %9114
  %9158 = fadd fast float %9154, %9128
  %9159 = call float @dx.op.dot3.f32(i32 55, float %9155, float %9156, float %9157, float %9125, float %9126, float %9127)  ; Dot3(ax,ay,az,bx,by,bz)
  %9160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.i32 %9160, 1
  %9162 = and i32 %9161, 1
  %9163 = icmp ne i32 %9162, 0
  %9164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9165 = extractvalue %dx.types.CBufRet.f32 %9164, 2
  %9166 = fcmp fast ogt float %9165, 0.000000e+00
  %9167 = and i1 %9163, %9166
  br i1 %9167, label %9168, label %9574, !dx.controlflow.hints !141

; <label>:9168                                    ; preds = %9123
  %9169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.f32 %9169, 3
  %9171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9171, 2
  %9173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9173, 2
  %9175 = fsub fast float %9172, %9174
  %9176 = and i32 %9161, 2
  %9177 = extractvalue %dx.types.CBufRet.i32 %9160, 0
  %9178 = call i32 @dx.op.binary.i32(i32 40, i32 %9177, i32 3)  ; UMin(a,b)
  %9179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9180 = extractvalue %dx.types.CBufRet.f32 %9179, 0
  %9181 = extractvalue %dx.types.CBufRet.f32 %9179, 1
  %9182 = extractvalue %dx.types.CBufRet.f32 %9173, 0
  %9183 = extractvalue %dx.types.CBufRet.f32 %9173, 1
  %9184 = fsub fast float %9180, %9182
  %9185 = fsub fast float %9181, %9183
  %9186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9187 = extractvalue %dx.types.CBufRet.f32 %9186, 0
  %9188 = fcmp fast ogt float %9187, 0.000000e+00
  %9189 = fsub fast float -0.000000e+00, %9184
  %9190 = fsub fast float -0.000000e+00, %9185
  %9191 = call float @dx.op.dot2.f32(i32 54, float %9155, float %9156, float %9155, float %9156)  ; Dot2(ax,ay,bx,by)
  %9192 = call float @dx.op.dot2.f32(i32 54, float %9155, float %9156, float %9189, float %9190)  ; Dot2(ax,ay,bx,by)
  %9193 = fmul fast float %9192, 2.000000e+00
  %9194 = call float @dx.op.dot2.f32(i32 54, float %9189, float %9190, float %9189, float %9190)  ; Dot2(ax,ay,bx,by)
  %9195 = fmul fast float %9187, %9187
  %9196 = fsub fast float %9194, %9195
  %9197 = fmul fast float %9193, %9193
  %9198 = fmul fast float %9191, 4.000000e+00
  %9199 = fmul fast float %9198, %9196
  %9200 = fsub fast float %9197, %9199
  %9201 = fcmp fast ogt float %9200, 0.000000e+00
  br i1 %9201, label %9202, label %9217

; <label>:9202                                    ; preds = %9168
  %9203 = fcmp fast ogt float %9193, 0.000000e+00
  %9204 = call float @dx.op.unary.f32(i32 24, float %9200)  ; Sqrt(value)
  %9205 = fsub fast float -0.000000e+00, %9204
  %9206 = select i1 %9203, float %9204, float %9205
  %9207 = fadd fast float %9206, %9193
  %9208 = fmul float %9207, -5.000000e-01
  %9209 = fdiv fast float %9208, %9191
  %9210 = call float @dx.op.binary.f32(i32 35, float %9209, float 0.000000e+00)  ; FMax(a,b)
  %9211 = call float @dx.op.binary.f32(i32 36, float %9154, float %9210)  ; FMin(a,b)
  %9212 = fdiv fast float %9196, %9208
  %9213 = call float @dx.op.binary.f32(i32 35, float %9212, float 0.000000e+00)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 36, float %9154, float %9213)  ; FMin(a,b)
  %9215 = call float @dx.op.binary.f32(i32 36, float %9211, float %9214)  ; FMin(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9211, float %9214)  ; FMax(a,b)
  br label %9217

; <label>:9217                                    ; preds = %9202, %9168
  %9218 = phi float [ %9216, %9202 ], [ -1.000000e+00, %9168 ]
  %9219 = phi float [ %9215, %9202 ], [ -1.000000e+00, %9168 ]
  %9220 = phi i1 [ true, %9202 ], [ false, %9168 ]
  %9221 = and i1 %9188, %9220
  br i1 %9221, label %9222, label %9224

; <label>:9222                                    ; preds = %9217
  %9223 = fcmp fast oeq float %9219, %9218
  br i1 %9223, label %9527, label %9225

; <label>:9224                                    ; preds = %9217
  br i1 %9188, label %9527, label %9225

; <label>:9225                                    ; preds = %9224, %9222
  %9226 = phi float [ %9154, %9224 ], [ %9218, %9222 ]
  %9227 = phi float [ 0.000000e+00, %9224 ], [ %9219, %9222 ]
  %9228 = icmp ne i32 %9176, 0
  %9229 = fmul fast float %9226, %9157
  %9230 = fadd fast float %9229, %9170
  %9231 = fmul fast float %9230, %9226
  %9232 = select i1 %9228, float 0.000000e+00, float %9231
  %9233 = fcmp fast oeq float %9157, 0.000000e+00
  %9234 = fdiv fast float %9175, %9157
  %9235 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9234)  ; FMax(a,b)
  %9236 = select i1 %9233, float %9226, float %9235
  %9237 = call float @dx.op.binary.f32(i32 36, float %9226, float %9236)  ; FMin(a,b)
  %9238 = fcmp fast ogt float %9157, 0.000000e+00
  %9239 = fcmp fast olt float %9175, 0.000000e+00
  br i1 %9238, label %9240, label %9297

; <label>:9240                                    ; preds = %9225
  %9241 = icmp eq i32 %9176, 0
  br i1 %9239, label %9242, label %9286

; <label>:9242                                    ; preds = %9240
  %9243 = select i1 %9241, float %9226, float 0.000000e+00
  %9244 = fsub fast float -0.000000e+00, %9243
  %9245 = call float @dx.op.unary.f32(i32 6, float %9244)  ; FAbs(value)
  %9246 = fmul fast float %9243, %9157
  %9247 = fadd fast float %9246, %9170
  %9248 = fmul fast float %9245, %9247
  %9249 = fsub fast float %9232, %9248
  %9250 = fsub fast float %9226, %9245
  %9251 = select i1 %9241, float %9250, float 0.000000e+00
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 0
  %9254 = extractvalue %dx.types.CBufRet.f32 %9252, 1
  %9255 = extractvalue %dx.types.CBufRet.f32 %9252, 2
  %9256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9257 = extractvalue %dx.types.CBufRet.f32 %9256, 0
  %9258 = extractvalue %dx.types.CBufRet.f32 %9256, 1
  %9259 = extractvalue %dx.types.CBufRet.f32 %9256, 2
  %9260 = extractvalue %dx.types.CBufRet.f32 %9256, 3
  %9261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9262 = extractvalue %dx.types.CBufRet.f32 %9261, 3
  %9263 = call float @dx.op.binary.f32(i32 36, float %9249, float %9262)  ; FMin(a,b)
  %9264 = fmul fast float %9260, %9251
  %9265 = call float @dx.op.unary.f32(i32 7, float %9264)  ; Saturate(value)
  %9266 = fsub fast float %9257, %9253
  %9267 = fsub fast float %9258, %9254
  %9268 = fsub fast float %9259, %9255
  %9269 = fmul fast float %9265, %9266
  %9270 = fmul fast float %9265, %9267
  %9271 = fmul fast float %9265, %9268
  %9272 = fadd fast float %9269, %9253
  %9273 = fadd fast float %9270, %9254
  %9274 = fadd fast float %9271, %9255
  %9275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9276 = extractvalue %dx.types.CBufRet.f32 %9275, 0
  %9277 = extractvalue %dx.types.CBufRet.f32 %9275, 1
  %9278 = fadd fast float %9277, %9276
  %9279 = call float @dx.op.unary.f32(i32 7, float %9278)  ; Saturate(value)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9275, 2
  %9281 = extractvalue %dx.types.CBufRet.f32 %9275, 3
  %9282 = fadd fast float %9281, %9280
  %9283 = call float @dx.op.unary.f32(i32 7, float %9282)  ; Saturate(value)
  %9284 = fmul fast float %9279, %9263
  %9285 = fmul fast float %9284, %9283
  br label %9527

; <label>:9286                                    ; preds = %9240
  br i1 %9241, label %9287, label %9308

; <label>:9287                                    ; preds = %9286
  %9288 = call float @dx.op.binary.f32(i32 36, float %9237, float %9227)  ; FMin(a,b)
  %9289 = fsub fast float %9237, %9288
  %9290 = fsub fast float %9289, %9226
  %9291 = call float @dx.op.unary.f32(i32 6, float %9290)  ; FAbs(value)
  %9292 = fadd fast float %9289, %9226
  %9293 = fmul fast float %9292, %9157
  %9294 = fadd fast float %9293, %9170
  %9295 = fmul fast float %9294, %9291
  %9296 = fsub fast float %9232, %9295
  br label %9308

; <label>:9297                                    ; preds = %9225
  br i1 %9239, label %9298, label %9308

; <label>:9298                                    ; preds = %9297
  %9299 = call float @dx.op.binary.f32(i32 35, float %9227, float %9237)  ; FMax(a,b)
  %9300 = icmp eq i32 %9176, 0
  %9301 = select i1 %9300, float %9237, float 0.000000e+00
  %9302 = fsub fast float -0.000000e+00, %9301
  %9303 = call float @dx.op.unary.f32(i32 6, float %9302)  ; FAbs(value)
  %9304 = fmul fast float %9301, %9157
  %9305 = fadd fast float %9304, %9170
  %9306 = fmul fast float %9303, %9305
  %9307 = fsub fast float %9232, %9306
  br label %9308

; <label>:9308                                    ; preds = %9298, %9297, %9287, %9286
  %9309 = phi float [ %9227, %9286 ], [ %9227, %9287 ], [ %9299, %9298 ], [ %9227, %9297 ]
  %9310 = phi float [ 0.000000e+00, %9286 ], [ %9291, %9287 ], [ %9303, %9298 ], [ 0.000000e+00, %9297 ]
  %9311 = phi float [ %9232, %9286 ], [ %9296, %9287 ], [ %9307, %9298 ], [ %9232, %9297 ]
  %9312 = phi float [ %9237, %9286 ], [ %9237, %9287 ], [ %9226, %9298 ], [ %9226, %9297 ]
  %9313 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 0
  store float -1.000000e+00, float* %9313, align 4, !tbaa !127, !noalias !142
  %9314 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 1
  store float -1.000000e+00, float* %9314, align 4, !tbaa !127, !noalias !142
  %9315 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 2
  store float -1.000000e+00, float* %9315, align 4, !tbaa !127, !noalias !142
  %9316 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 0
  store float -1.000000e+00, float* %9316, align 4, !tbaa !127, !noalias !142
  %9317 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 1
  store float -1.000000e+00, float* %9317, align 4, !tbaa !127, !noalias !142
  %9318 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 2
  store float -1.000000e+00, float* %9318, align 4, !tbaa !127, !noalias !142
  %9319 = icmp sgt i32 %9178, 0
  br i1 %9319, label %9320, label %9381

; <label>:9320                                    ; preds = %9308
  br label %9321

; <label>:9321                                    ; preds = %9370, %9320
  %9322 = phi i32 [ %9371, %9370 ], [ 0, %9320 ]
  %9323 = phi i32 [ %9372, %9370 ], [ 0, %9320 ]
  %9324 = add nuw i32 %9323, 171
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9324)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 0
  %9327 = extractvalue %dx.types.CBufRet.f32 %9325, 1
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9330 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9331 = fsub fast float %9326, %9329
  %9332 = fsub fast float %9327, %9330
  %9333 = extractvalue %dx.types.CBufRet.f32 %9325, 2
  %9334 = fsub fast float -0.000000e+00, %9331
  %9335 = fsub fast float -0.000000e+00, %9332
  %9336 = call float @dx.op.dot2.f32(i32 54, float %9155, float %9156, float %9334, float %9335)  ; Dot2(ax,ay,bx,by)
  %9337 = fmul fast float %9336, 2.000000e+00
  %9338 = call float @dx.op.dot2.f32(i32 54, float %9334, float %9335, float %9334, float %9335)  ; Dot2(ax,ay,bx,by)
  %9339 = fmul fast float %9333, %9333
  %9340 = fsub fast float %9338, %9339
  %9341 = fmul fast float %9337, %9337
  %9342 = fmul fast float %9198, %9340
  %9343 = fsub fast float %9341, %9342
  %9344 = fcmp fast ogt float %9343, 0.000000e+00
  br i1 %9344, label %9345, label %9360

; <label>:9345                                    ; preds = %9321
  %9346 = fcmp fast ogt float %9337, 0.000000e+00
  %9347 = call float @dx.op.unary.f32(i32 24, float %9343)  ; Sqrt(value)
  %9348 = fsub fast float -0.000000e+00, %9347
  %9349 = select i1 %9346, float %9347, float %9348
  %9350 = fadd fast float %9349, %9337
  %9351 = fmul float %9350, -5.000000e-01
  %9352 = fdiv fast float %9351, %9191
  %9353 = call float @dx.op.binary.f32(i32 35, float %9352, float 0.000000e+00)  ; FMax(a,b)
  %9354 = call float @dx.op.binary.f32(i32 36, float %9226, float %9353)  ; FMin(a,b)
  %9355 = fdiv fast float %9340, %9351
  %9356 = call float @dx.op.binary.f32(i32 35, float %9355, float 0.000000e+00)  ; FMax(a,b)
  %9357 = call float @dx.op.binary.f32(i32 36, float %9226, float %9356)  ; FMin(a,b)
  %9358 = call float @dx.op.binary.f32(i32 36, float %9354, float %9357)  ; FMin(a,b)
  %9359 = call float @dx.op.binary.f32(i32 35, float %9354, float %9357)  ; FMax(a,b)
  br label %9360

; <label>:9360                                    ; preds = %9345, %9321
  %9361 = phi float [ %9359, %9345 ], [ -1.000000e+00, %9321 ]
  %9362 = phi float [ %9358, %9345 ], [ -1.000000e+00, %9321 ]
  %9363 = phi i1 [ true, %9345 ], [ false, %9321 ]
  br i1 %9363, label %9364, label %9370

; <label>:9364                                    ; preds = %9360
  %9365 = call float @dx.op.binary.f32(i32 35, float %9309, float %9362)  ; FMax(a,b)
  %9366 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9323
  store float %9365, float* %9366, align 4, !tbaa !127, !noalias !142
  %9367 = call float @dx.op.binary.f32(i32 35, float %9309, float %9361)  ; FMax(a,b)
  %9368 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 %9323
  store float %9367, float* %9368, align 4, !tbaa !127, !noalias !142
  %9369 = add nsw i32 %9322, 1
  br label %9370

; <label>:9370                                    ; preds = %9364, %9360
  %9371 = phi i32 [ %9369, %9364 ], [ %9322, %9360 ]
  %9372 = add nuw nsw i32 %9323, 1
  %9373 = icmp eq i32 %9372, %9178
  br i1 %9373, label %9374, label %9321

; <label>:9374                                    ; preds = %9370
  %9375 = load float, float* %9315, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %9376 = load float, float* %9314, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  %9377 = load float, float* %9313, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  %9378 = load float, float* %9318, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %9379 = load float, float* %9317, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  %9380 = load float, float* %9316, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  br label %9381

; <label>:9381                                    ; preds = %9374, %9308
  %9382 = phi float [ -1.000000e+00, %9308 ], [ %9380, %9374 ]
  %9383 = phi float [ -1.000000e+00, %9308 ], [ %9379, %9374 ]
  %9384 = phi float [ -1.000000e+00, %9308 ], [ %9378, %9374 ]
  %9385 = phi float [ -1.000000e+00, %9308 ], [ %9377, %9374 ]
  %9386 = phi float [ -1.000000e+00, %9308 ], [ %9376, %9374 ]
  %9387 = phi float [ -1.000000e+00, %9308 ], [ %9375, %9374 ]
  %9388 = phi i32 [ 0, %9308 ], [ %9371, %9374 ]
  %9389 = call float @dx.op.binary.f32(i32 36, float %9386, float %9387)  ; FMin(a,b)
  %9390 = call float @dx.op.binary.f32(i32 36, float %9385, float %9389)  ; FMin(a,b)
  %9391 = call float @dx.op.binary.f32(i32 35, float %9385, float %9386)  ; FMax(a,b)
  %9392 = call float @dx.op.binary.f32(i32 36, float %9391, float %9387)  ; FMin(a,b)
  %9393 = call float @dx.op.binary.f32(i32 36, float %9385, float %9386)  ; FMin(a,b)
  %9394 = call float @dx.op.binary.f32(i32 35, float %9393, float %9392)  ; FMax(a,b)
  %9395 = call float @dx.op.binary.f32(i32 35, float %9386, float %9387)  ; FMax(a,b)
  %9396 = call float @dx.op.binary.f32(i32 35, float %9385, float %9395)  ; FMax(a,b)
  store float %9390, float* %9313, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  store float %9394, float* %9314, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  store float %9396, float* %9315, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %9397 = call float @dx.op.binary.f32(i32 36, float %9383, float %9384)  ; FMin(a,b)
  %9398 = call float @dx.op.binary.f32(i32 36, float %9382, float %9397)  ; FMin(a,b)
  %9399 = call float @dx.op.binary.f32(i32 35, float %9382, float %9383)  ; FMax(a,b)
  %9400 = call float @dx.op.binary.f32(i32 36, float %9399, float %9384)  ; FMin(a,b)
  %9401 = call float @dx.op.binary.f32(i32 36, float %9382, float %9383)  ; FMin(a,b)
  %9402 = call float @dx.op.binary.f32(i32 35, float %9401, float %9400)  ; FMax(a,b)
  %9403 = call float @dx.op.binary.f32(i32 35, float %9383, float %9384)  ; FMax(a,b)
  %9404 = call float @dx.op.binary.f32(i32 35, float %9382, float %9403)  ; FMax(a,b)
  store float %9398, float* %9316, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  store float %9402, float* %9317, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  store float %9404, float* %9318, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %9405 = sub nsw i32 3, %9388
  %9406 = icmp sgt i32 %9405, 2
  br i1 %9406, label %9407, label %9445

; <label>:9407                                    ; preds = %9381
  %9408 = icmp eq i32 %9176, 0
  %9409 = fsub fast float %9226, %9310
  %9410 = select i1 %9408, float %9409, float %9310
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 0
  %9413 = extractvalue %dx.types.CBufRet.f32 %9411, 1
  %9414 = extractvalue %dx.types.CBufRet.f32 %9411, 2
  %9415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9416 = extractvalue %dx.types.CBufRet.f32 %9415, 0
  %9417 = extractvalue %dx.types.CBufRet.f32 %9415, 1
  %9418 = extractvalue %dx.types.CBufRet.f32 %9415, 2
  %9419 = extractvalue %dx.types.CBufRet.f32 %9415, 3
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 3
  %9422 = call float @dx.op.binary.f32(i32 36, float %9311, float %9421)  ; FMin(a,b)
  %9423 = fmul fast float %9419, %9410
  %9424 = call float @dx.op.unary.f32(i32 7, float %9423)  ; Saturate(value)
  %9425 = fsub fast float %9416, %9412
  %9426 = fsub fast float %9417, %9413
  %9427 = fsub fast float %9418, %9414
  %9428 = fmul fast float %9424, %9425
  %9429 = fmul fast float %9424, %9426
  %9430 = fmul fast float %9424, %9427
  %9431 = fadd fast float %9428, %9412
  %9432 = fadd fast float %9429, %9413
  %9433 = fadd fast float %9430, %9414
  %9434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9435 = extractvalue %dx.types.CBufRet.f32 %9434, 0
  %9436 = extractvalue %dx.types.CBufRet.f32 %9434, 1
  %9437 = fadd fast float %9436, %9435
  %9438 = call float @dx.op.unary.f32(i32 7, float %9437)  ; Saturate(value)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9434, 2
  %9440 = extractvalue %dx.types.CBufRet.f32 %9434, 3
  %9441 = fadd fast float %9440, %9439
  %9442 = call float @dx.op.unary.f32(i32 7, float %9441)  ; Saturate(value)
  %9443 = fmul fast float %9438, %9422
  %9444 = fmul fast float %9443, %9442
  br label %9527

; <label>:9445                                    ; preds = %9381
  %9446 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9405
  %9447 = load float, float* %9446, align 4, !tbaa !127, !noalias !142
  %9448 = fcmp fast olt float %9447, %9312
  %9449 = icmp sgt i32 %9388, 0
  %9450 = and i1 %9449, %9448
  br i1 %9450, label %9451, label %9488

; <label>:9451                                    ; preds = %9445
  br label %9452

; <label>:9452                                    ; preds = %9481, %9451
  %9453 = phi float [ %9482, %9481 ], [ %9310, %9451 ]
  %9454 = phi float [ %9483, %9481 ], [ %9311, %9451 ]
  %9455 = phi float [ %9463, %9481 ], [ %9447, %9451 ]
  %9456 = phi i32 [ %9460, %9481 ], [ %9405, %9451 ]
  %9457 = getelementptr inbounds [3 x float], [3 x float]* %121, i32 0, i32 %9456
  %9458 = load float, float* %9457, align 4, !tbaa !127, !noalias !142
  %9459 = icmp slt i32 %9456, 2
  %9460 = add nsw i32 %9456, 1
  %9461 = getelementptr inbounds [3 x float], [3 x float]* %120, i32 0, i32 %9460
  %9462 = load float, float* %9461, align 4, !tbaa !127, !noalias !142
  %9463 = select i1 %9459, float %9462, float %9226
  %9464 = call float @dx.op.binary.f32(i32 36, float %9463, float %9458)  ; FMin(a,b)
  %9465 = call float @dx.op.binary.f32(i32 36, float %9312, float %9464)  ; FMin(a,b)
  %9466 = icmp eq i32 %9176, 0
  %9467 = fadd fast float %9465, %9455
  %9468 = fmul fast float %9467, %9157
  %9469 = fadd fast float %9468, %9170
  br i1 %9466, label %9475, label %9470

; <label>:9470                                    ; preds = %9452
  %9471 = fsub fast float %9465, %9455
  %9472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9471)  ; FMax(a,b)
  %9473 = fmul fast float %9472, %9469
  %9474 = fadd fast float %9473, %9454
  br label %9481

; <label>:9475                                    ; preds = %9452
  %9476 = fsub fast float %9455, %9465
  %9477 = call float @dx.op.unary.f32(i32 6, float %9476)  ; FAbs(value)
  %9478 = fadd fast float %9477, %9453
  %9479 = fmul fast float %9477, %9469
  %9480 = fsub fast float %9454, %9479
  br label %9481

; <label>:9481                                    ; preds = %9475, %9470
  %9482 = phi float [ %9472, %9470 ], [ %9478, %9475 ]
  %9483 = phi float [ %9474, %9470 ], [ %9480, %9475 ]
  %9484 = fcmp fast olt float %9463, %9312
  %9485 = icmp slt i32 %9460, 3
  %9486 = and i1 %9485, %9484
  br i1 %9486, label %9452, label %9487

; <label>:9487                                    ; preds = %9481
  br label %9488

; <label>:9488                                    ; preds = %9487, %9445
  %9489 = phi float [ %9310, %9445 ], [ %9482, %9487 ]
  %9490 = phi float [ %9311, %9445 ], [ %9483, %9487 ]
  %9491 = fsub fast float %9226, %9489
  %9492 = select i1 %9228, float %9489, float %9491
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 0
  %9495 = extractvalue %dx.types.CBufRet.f32 %9493, 1
  %9496 = extractvalue %dx.types.CBufRet.f32 %9493, 2
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 0
  %9499 = extractvalue %dx.types.CBufRet.f32 %9497, 1
  %9500 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9501 = extractvalue %dx.types.CBufRet.f32 %9497, 3
  %9502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.f32 %9502, 3
  %9504 = call float @dx.op.binary.f32(i32 36, float %9490, float %9503)  ; FMin(a,b)
  %9505 = fmul fast float %9501, %9492
  %9506 = call float @dx.op.unary.f32(i32 7, float %9505)  ; Saturate(value)
  %9507 = fsub fast float %9498, %9494
  %9508 = fsub fast float %9499, %9495
  %9509 = fsub fast float %9500, %9496
  %9510 = fmul fast float %9506, %9507
  %9511 = fmul fast float %9506, %9508
  %9512 = fmul fast float %9506, %9509
  %9513 = fadd fast float %9510, %9494
  %9514 = fadd fast float %9511, %9495
  %9515 = fadd fast float %9512, %9496
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 0
  %9518 = extractvalue %dx.types.CBufRet.f32 %9516, 1
  %9519 = fadd fast float %9518, %9517
  %9520 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  %9521 = extractvalue %dx.types.CBufRet.f32 %9516, 2
  %9522 = extractvalue %dx.types.CBufRet.f32 %9516, 3
  %9523 = fadd fast float %9522, %9521
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = fmul fast float %9520, %9504
  %9526 = fmul fast float %9525, %9524
  br label %9527

; <label>:9527                                    ; preds = %9488, %9407, %9242, %9224, %9222
  %9528 = phi float [ %9251, %9242 ], [ %9410, %9407 ], [ %9492, %9488 ], [ 0.000000e+00, %9222 ], [ 0.000000e+00, %9224 ]
  %9529 = phi float [ %9285, %9242 ], [ %9444, %9407 ], [ %9526, %9488 ], [ 0.000000e+00, %9222 ], [ 0.000000e+00, %9224 ]
  %9530 = phi float [ %9272, %9242 ], [ %9431, %9407 ], [ %9513, %9488 ], [ 0.000000e+00, %9222 ], [ 0.000000e+00, %9224 ]
  %9531 = phi float [ %9273, %9242 ], [ %9432, %9407 ], [ %9514, %9488 ], [ 0.000000e+00, %9222 ], [ 0.000000e+00, %9224 ]
  %9532 = phi float [ %9274, %9242 ], [ %9433, %9407 ], [ %9515, %9488 ], [ 0.000000e+00, %9222 ], [ 0.000000e+00, %9224 ]
  %9533 = fmul fast float %9165, %9529
  %9534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.f32 %9534, 2
  %9536 = fsub fast float %9172, %9535
  %9537 = fcmp fast olt float %9533, -2.000000e+01
  %9538 = call float @dx.op.unary.f32(i32 21, float %9533)  ; Exp(value)
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 2
  %9541 = extractvalue %dx.types.CBufRet.f32 %9539, 3
  %9542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9543 = extractvalue %dx.types.CBufRet.f32 %9542, 2
  %9544 = fmul fast float %9541, %9536
  %9545 = call float @dx.op.unary.f32(i32 7, float %9544)  ; Saturate(value)
  %9546 = fsub fast float 1.000000e+00, %9545
  %9547 = fmul fast float %9157, 5.000000e-01
  %9548 = fadd fast float %9547, 5.000000e-01
  %9549 = call float @dx.op.unary.f32(i32 7, float %9548)  ; Saturate(value)
  %9550 = fsub fast float 1.000000e+00, %9549
  %9551 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9546)  ; FMax(a,b)
  %9552 = fdiv fast float %9550, %9551
  %9553 = fsub fast float %9536, %9114
  %9554 = call float @dx.op.unary.f32(i32 6, float %9553)  ; FAbs(value)
  %9555 = fmul fast float %9554, %9540
  %9556 = call float @dx.op.unary.f32(i32 7, float %9552)  ; Saturate(value)
  %9557 = fsub fast float 1.000000e+00, %9555
  %9558 = fmul fast float %9557, %9556
  %9559 = fadd fast float %9558, %9555
  %9560 = fmul fast float %9543, %9536
  %9561 = call float @dx.op.unary.f32(i32 7, float %9560)  ; Saturate(value)
  %9562 = fsub fast float 1.000000e+00, %9559
  %9563 = fmul fast float %9562, %9561
  %9564 = fadd fast float %9563, %9559
  %9565 = call float @dx.op.unary.f32(i32 7, float %9564)  ; Saturate(value)
  %9566 = fadd fast float %9538, -1.000000e+00
  %9567 = select i1 %9537, float -1.000000e+00, float %9566
  %9568 = fmul fast float %9565, %9567
  %9569 = fadd fast float %9568, 1.000000e+00
  %9570 = fsub fast float -0.000000e+00, %9568
  %9571 = fmul fast float %9530, %9570
  %9572 = fmul fast float %9531, %9570
  %9573 = fmul fast float %9532, %9570
  br label %9574

; <label>:9574                                    ; preds = %9527, %9123
  %9575 = phi float [ %9528, %9527 ], [ 0.000000e+00, %9123 ]
  %9576 = phi float [ %9569, %9527 ], [ 1.000000e+00, %9123 ]
  %9577 = phi float [ %9571, %9527 ], [ 0.000000e+00, %9123 ]
  %9578 = phi float [ %9572, %9527 ], [ 0.000000e+00, %9123 ]
  %9579 = phi float [ %9573, %9527 ], [ 0.000000e+00, %9123 ]
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 1
  %9582 = fsub fast float 1.000000e+00, %9576
  %9583 = fmul fast float %9582, %9158
  %9584 = fmul fast float %9583, %9581
  %9585 = fsub fast float %9158, %9584
  br i1 %9151, label %9586, label %9615, !dx.controlflow.hints !178

; <label>:9586                                    ; preds = %9574
  %9587 = fmul fast float %9159, %9148
  %9588 = fadd fast float %9587, %9149
  %9589 = call float @dx.op.unary.f32(i32 7, float %9588)  ; Saturate(value)
  %9590 = fmul fast float %9130, %9585
  %9591 = fsub fast float -0.000000e+00, %9590
  %9592 = fmul fast float %9131, %9585
  %9593 = fsub fast float -0.000000e+00, %9592
  %9594 = call float @dx.op.unary.f32(i32 21, float %9591)  ; Exp(value)
  %9595 = call float @dx.op.unary.f32(i32 21, float %9593)  ; Exp(value)
  %9596 = call float @dx.op.binary.f32(i32 35, float %9138, float %9594)  ; FMax(a,b)
  %9597 = call float @dx.op.binary.f32(i32 35, float %9138, float %9595)  ; FMax(a,b)
  %9598 = fsub fast float %9597, %9596
  %9599 = fmul fast float %9598, %9589
  %9600 = fadd fast float %9599, %9596
  %9601 = call float @dx.op.unary.f32(i32 7, float %9600)  ; Saturate(value)
  %9602 = fsub fast float %9135, %9140
  %9603 = fsub fast float %9136, %9141
  %9604 = fsub fast float %9137, %9142
  %9605 = fmul fast float %9589, %9602
  %9606 = fmul fast float %9589, %9603
  %9607 = fmul fast float %9589, %9604
  %9608 = fadd fast float %9605, %9140
  %9609 = fadd fast float %9606, %9141
  %9610 = fadd fast float %9607, %9142
  %9611 = fsub fast float 1.000000e+00, %9601
  %9612 = fmul fast float %9611, %9608
  %9613 = fmul fast float %9611, %9609
  %9614 = fmul fast float %9611, %9610
  br label %9674

; <label>:9615                                    ; preds = %9574
  %9616 = fmul fast float %9585, %9147
  %9617 = call float @dx.op.unary.f32(i32 7, float %9616)  ; Saturate(value)
  %9618 = fsub fast float 2.000000e+00, %9617
  %9619 = fmul fast float %9617, 9.921875e-01
  %9620 = fmul fast float %9619, %9618
  %9621 = fadd fast float %9620, 3.906250e-03
  %9622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %9621, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9623 = extractvalue %dx.types.ResRet.f32 %9622, 0
  %9624 = fsub fast float %9617, %9623
  %9625 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9624)  ; FMax(a,b)
  %9626 = fmul fast float %9133, %9114
  %9627 = call float @dx.op.unary.f32(i32 6, float %9626)  ; FAbs(value)
  %9628 = fcmp fast ogt float %9627, 0x3EB0C6F7A0000000
  br i1 %9628, label %9629, label %9635, !dx.controlflow.hints !179

; <label>:9629                                    ; preds = %9615
  %9630 = fmul fast float %9626, 0xBFF7154760000000
  %9631 = call float @dx.op.unary.f32(i32 21, float %9630)  ; Exp(value)
  %9632 = fsub fast float 1.000000e+00, %9631
  %9633 = fdiv fast float %9632, %9626
  %9634 = fmul fast float %9633, %9143
  br label %9635

; <label>:9635                                    ; preds = %9629, %9615
  %9636 = phi float [ %9634, %9629 ], [ %9143, %9615 ]
  %9637 = fadd fast float %9636, %9145
  %9638 = fmul fast float %9637, %9625
  %9639 = fmul fast float %9130, %9638
  %9640 = fsub fast float -0.000000e+00, %9639
  %9641 = fmul fast float %9131, %9638
  %9642 = fsub fast float -0.000000e+00, %9641
  %9643 = fmul fast float %9132, %9638
  %9644 = fsub fast float -0.000000e+00, %9643
  %9645 = call float @dx.op.unary.f32(i32 21, float %9640)  ; Exp(value)
  %9646 = call float @dx.op.unary.f32(i32 21, float %9642)  ; Exp(value)
  %9647 = call float @dx.op.unary.f32(i32 21, float %9644)  ; Exp(value)
  %9648 = fmul fast float %9159, %9159
  %9649 = fadd fast float %9648, 1.000000e+00
  %9650 = fmul fast float %9649, 0x3FAE8EC8A0000000
  %9651 = fmul fast float %9650, %9140
  %9652 = fmul fast float %9650, %9141
  %9653 = fmul fast float %9650, %9142
  %9654 = fmul fast float %9159, %9138
  %9655 = fsub fast float 1.000000e+00, %9654
  %9656 = fmul fast float %9138, %9138
  %9657 = fsub fast float 1.000000e+00, %9656
  %9658 = fmul fast float %9657, 0x3FB45F3060000000
  %9659 = fmul fast float %9655, %9655
  %9660 = fdiv fast float 1.000000e+00, %9659
  %9661 = fmul fast float %9658, %9660
  %9662 = fmul fast float %9661, %9135
  %9663 = fmul fast float %9661, %9136
  %9664 = fmul fast float %9661, %9137
  %9665 = fadd fast float %9662, %9651
  %9666 = fadd fast float %9663, %9652
  %9667 = fadd fast float %9664, %9653
  %9668 = fsub fast float 1.000000e+00, %9645
  %9669 = fsub fast float 1.000000e+00, %9646
  %9670 = fsub fast float 1.000000e+00, %9647
  %9671 = fmul fast float %9665, %9668
  %9672 = fmul fast float %9666, %9669
  %9673 = fmul fast float %9667, %9670
  br label %9674

; <label>:9674                                    ; preds = %9635, %9586
  %9675 = phi float [ %9612, %9586 ], [ %9671, %9635 ]
  %9676 = phi float [ %9613, %9586 ], [ %9672, %9635 ]
  %9677 = phi float [ %9614, %9586 ], [ %9673, %9635 ]
  %9678 = phi float [ %9601, %9586 ], [ %9645, %9635 ]
  %9679 = phi float [ %9601, %9586 ], [ %9646, %9635 ]
  %9680 = phi float [ %9601, %9586 ], [ %9647, %9635 ]
  br i1 %9167, label %9681, label %9879, !dx.controlflow.hints !180

; <label>:9681                                    ; preds = %9674
  %9682 = extractvalue %dx.types.CBufRet.f32 %9580, 0
  %9683 = fmul fast float %9682, %9582
  %9684 = fsub fast float %9577, %9675
  %9685 = fsub fast float %9578, %9676
  %9686 = fsub fast float %9579, %9677
  %9687 = fmul fast float %9683, %9684
  %9688 = fmul fast float %9683, %9685
  %9689 = fmul fast float %9683, %9686
  %9690 = fadd fast float %9687, %9675
  %9691 = fadd fast float %9688, %9676
  %9692 = fadd fast float %9689, %9677
  %9693 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9678)  ; FMax(a,b)
  %9694 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9679)  ; FMax(a,b)
  %9695 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9680)  ; FMax(a,b)
  %9696 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9576)  ; FMax(a,b)
  %9697 = call float @dx.op.binary.f32(i32 35, float %9575, float %9585)  ; FMax(a,b)
  %9698 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9697)  ; FMax(a,b)
  %9699 = fdiv fast float %9575, %9698
  %9700 = call float @dx.op.unary.f32(i32 7, float %9699)  ; Saturate(value)
  %9701 = fdiv fast float %9585, %9698
  %9702 = call float @dx.op.unary.f32(i32 7, float %9701)  ; Saturate(value)
  %9703 = fcmp fast une float %9696, 1.000000e+00
  br i1 %9703, label %9704, label %9717, !dx.controlflow.hints !181

; <label>:9704                                    ; preds = %9681
  %9705 = call float @dx.op.unary.f32(i32 23, float %9696)  ; Log(value)
  %9706 = fmul fast float %9705, 0x3FE62E4300000000
  %9707 = fmul fast float %9577, %9706
  %9708 = fsub fast float -0.000000e+00, %9707
  %9709 = fmul fast float %9578, %9706
  %9710 = fsub fast float -0.000000e+00, %9709
  %9711 = fmul fast float %9579, %9706
  %9712 = fsub fast float -0.000000e+00, %9711
  %9713 = fsub fast float 1.000000e+00, %9696
  %9714 = fdiv fast float %9708, %9713
  %9715 = fdiv fast float %9710, %9713
  %9716 = fdiv fast float %9712, %9713
  br label %9717

; <label>:9717                                    ; preds = %9704, %9681
  %9718 = phi float [ %9714, %9704 ], [ %9577, %9681 ]
  %9719 = phi float [ %9715, %9704 ], [ %9578, %9681 ]
  %9720 = phi float [ %9716, %9704 ], [ %9579, %9681 ]
  %9721 = phi float [ %9706, %9704 ], [ 0.000000e+00, %9681 ]
  %9722 = fcmp fast une float %9693, 1.000000e+00
  br i1 %9722, label %9723, label %9730, !dx.controlflow.hints !182

; <label>:9723                                    ; preds = %9717
  %9724 = call float @dx.op.unary.f32(i32 23, float %9693)  ; Log(value)
  %9725 = fmul fast float %9724, 0x3FE62E4300000000
  %9726 = fmul fast float %9690, %9725
  %9727 = fsub fast float -0.000000e+00, %9726
  %9728 = fsub fast float 1.000000e+00, %9693
  %9729 = fdiv fast float %9727, %9728
  br label %9730

; <label>:9730                                    ; preds = %9723, %9717
  %9731 = phi float [ %9729, %9723 ], [ %9690, %9717 ]
  %9732 = phi float [ %9725, %9723 ], [ 0.000000e+00, %9717 ]
  %9733 = fcmp fast une float %9694, 1.000000e+00
  br i1 %9733, label %9734, label %9741, !dx.controlflow.hints !182

; <label>:9734                                    ; preds = %9730
  %9735 = call float @dx.op.unary.f32(i32 23, float %9694)  ; Log(value)
  %9736 = fmul fast float %9735, 0x3FE62E4300000000
  %9737 = fmul fast float %9691, %9736
  %9738 = fsub fast float -0.000000e+00, %9737
  %9739 = fsub fast float 1.000000e+00, %9694
  %9740 = fdiv fast float %9738, %9739
  br label %9741

; <label>:9741                                    ; preds = %9734, %9730
  %9742 = phi float [ %9740, %9734 ], [ %9691, %9730 ]
  %9743 = phi float [ %9736, %9734 ], [ 0.000000e+00, %9730 ]
  %9744 = fcmp fast une float %9695, 1.000000e+00
  br i1 %9744, label %9745, label %9752, !dx.controlflow.hints !182

; <label>:9745                                    ; preds = %9741
  %9746 = call float @dx.op.unary.f32(i32 23, float %9695)  ; Log(value)
  %9747 = fmul fast float %9746, 0x3FE62E4300000000
  %9748 = fmul fast float %9692, %9747
  %9749 = fsub fast float -0.000000e+00, %9748
  %9750 = fsub fast float 1.000000e+00, %9695
  %9751 = fdiv fast float %9749, %9750
  br label %9752

; <label>:9752                                    ; preds = %9745, %9741
  %9753 = phi float [ %9751, %9745 ], [ %9692, %9741 ]
  %9754 = phi float [ %9747, %9745 ], [ 0.000000e+00, %9741 ]
  %9755 = fmul fast float %9718, %9702
  %9756 = fmul fast float %9719, %9702
  %9757 = fmul fast float %9720, %9702
  %9758 = fmul fast float %9721, %9702
  %9759 = fmul fast float %9731, %9700
  %9760 = fmul fast float %9742, %9700
  %9761 = fmul fast float %9753, %9700
  %9762 = fmul fast float %9732, %9700
  %9763 = fmul fast float %9743, %9700
  %9764 = fmul fast float %9754, %9700
  %9765 = fadd fast float %9759, %9755
  %9766 = fadd fast float %9760, %9756
  %9767 = fadd fast float %9761, %9757
  %9768 = fadd fast float %9762, %9758
  %9769 = fadd fast float %9763, %9758
  %9770 = fadd fast float %9764, %9758
  %9771 = fcmp fast une float %9768, 0.000000e+00
  br i1 %9771, label %9772, label %9779, !dx.controlflow.hints !183

; <label>:9772                                    ; preds = %9752
  %9773 = fmul fast float %9768, 0x3FF7154760000000
  %9774 = call float @dx.op.unary.f32(i32 21, float %9773)  ; Exp(value)
  %9775 = fsub fast float 1.000000e+00, %9774
  %9776 = fmul fast float %9765, %9775
  %9777 = fsub fast float -0.000000e+00, %9776
  %9778 = fdiv fast float %9777, %9768
  br label %9779

; <label>:9779                                    ; preds = %9772, %9752
  %9780 = phi float [ %9774, %9772 ], [ 1.000000e+00, %9752 ]
  %9781 = phi float [ %9778, %9772 ], [ %9765, %9752 ]
  %9782 = fcmp fast une float %9769, 0.000000e+00
  br i1 %9782, label %9783, label %9790, !dx.controlflow.hints !183

; <label>:9783                                    ; preds = %9779
  %9784 = fmul fast float %9769, 0x3FF7154760000000
  %9785 = call float @dx.op.unary.f32(i32 21, float %9784)  ; Exp(value)
  %9786 = fsub fast float 1.000000e+00, %9785
  %9787 = fmul fast float %9766, %9786
  %9788 = fsub fast float -0.000000e+00, %9787
  %9789 = fdiv fast float %9788, %9769
  br label %9790

; <label>:9790                                    ; preds = %9783, %9779
  %9791 = phi float [ %9785, %9783 ], [ 1.000000e+00, %9779 ]
  %9792 = phi float [ %9789, %9783 ], [ %9766, %9779 ]
  %9793 = fcmp fast une float %9770, 0.000000e+00
  br i1 %9793, label %9794, label %9801, !dx.controlflow.hints !183

; <label>:9794                                    ; preds = %9790
  %9795 = fmul fast float %9770, 0x3FF7154760000000
  %9796 = call float @dx.op.unary.f32(i32 21, float %9795)  ; Exp(value)
  %9797 = fsub fast float 1.000000e+00, %9796
  %9798 = fmul fast float %9767, %9797
  %9799 = fsub fast float -0.000000e+00, %9798
  %9800 = fdiv fast float %9799, %9770
  br label %9801

; <label>:9801                                    ; preds = %9794, %9790
  %9802 = phi float [ %9796, %9794 ], [ 1.000000e+00, %9790 ]
  %9803 = phi float [ %9800, %9794 ], [ %9767, %9790 ]
  %9804 = fcmp fast ogt float %9700, %9702
  br i1 %9804, label %9805, label %9825

; <label>:9805                                    ; preds = %9801
  %9806 = fsub fast float 1.000000e+00, %9702
  %9807 = fmul fast float %9718, %9806
  %9808 = fmul fast float %9719, %9806
  %9809 = fmul fast float %9720, %9806
  %9810 = fmul fast float %9721, %9806
  %9811 = fcmp fast une float %9810, 0.000000e+00
  br i1 %9811, label %9812, label %9863, !dx.controlflow.hints !184

; <label>:9812                                    ; preds = %9805
  %9813 = fmul fast float %9810, 0x3FF7154760000000
  %9814 = call float @dx.op.unary.f32(i32 21, float %9813)  ; Exp(value)
  %9815 = fsub fast float 1.000000e+00, %9814
  %9816 = fmul fast float %9807, %9815
  %9817 = fsub fast float -0.000000e+00, %9816
  %9818 = fmul fast float %9808, %9815
  %9819 = fsub fast float -0.000000e+00, %9818
  %9820 = fmul fast float %9809, %9815
  %9821 = fsub fast float -0.000000e+00, %9820
  %9822 = fdiv fast float %9817, %9810
  %9823 = fdiv fast float %9819, %9810
  %9824 = fdiv fast float %9821, %9810
  br label %9863

; <label>:9825                                    ; preds = %9801
  %9826 = fsub fast float 1.000000e+00, %9700
  %9827 = fmul fast float %9731, %9826
  %9828 = fmul fast float %9742, %9826
  %9829 = fmul fast float %9753, %9826
  %9830 = fmul fast float %9732, %9826
  %9831 = fmul fast float %9743, %9826
  %9832 = fmul fast float %9754, %9826
  %9833 = fcmp fast une float %9830, 0.000000e+00
  br i1 %9833, label %9834, label %9841, !dx.controlflow.hints !183

; <label>:9834                                    ; preds = %9825
  %9835 = fmul fast float %9830, 0x3FF7154760000000
  %9836 = call float @dx.op.unary.f32(i32 21, float %9835)  ; Exp(value)
  %9837 = fsub fast float 1.000000e+00, %9836
  %9838 = fmul fast float %9827, %9837
  %9839 = fsub fast float -0.000000e+00, %9838
  %9840 = fdiv fast float %9839, %9830
  br label %9841

; <label>:9841                                    ; preds = %9834, %9825
  %9842 = phi float [ %9840, %9834 ], [ %9827, %9825 ]
  %9843 = phi float [ %9836, %9834 ], [ 1.000000e+00, %9825 ]
  %9844 = fcmp fast une float %9831, 0.000000e+00
  br i1 %9844, label %9845, label %9852, !dx.controlflow.hints !183

; <label>:9845                                    ; preds = %9841
  %9846 = fmul fast float %9831, 0x3FF7154760000000
  %9847 = call float @dx.op.unary.f32(i32 21, float %9846)  ; Exp(value)
  %9848 = fsub fast float 1.000000e+00, %9847
  %9849 = fmul fast float %9828, %9848
  %9850 = fsub fast float -0.000000e+00, %9849
  %9851 = fdiv fast float %9850, %9831
  br label %9852

; <label>:9852                                    ; preds = %9845, %9841
  %9853 = phi float [ %9851, %9845 ], [ %9828, %9841 ]
  %9854 = phi float [ %9847, %9845 ], [ 1.000000e+00, %9841 ]
  %9855 = fcmp fast une float %9832, 0.000000e+00
  br i1 %9855, label %9856, label %9863, !dx.controlflow.hints !183

; <label>:9856                                    ; preds = %9852
  %9857 = fmul fast float %9832, 0x3FF7154760000000
  %9858 = call float @dx.op.unary.f32(i32 21, float %9857)  ; Exp(value)
  %9859 = fsub fast float 1.000000e+00, %9858
  %9860 = fmul fast float %9829, %9859
  %9861 = fsub fast float -0.000000e+00, %9860
  %9862 = fdiv fast float %9861, %9832
  br label %9863

; <label>:9863                                    ; preds = %9856, %9852, %9812, %9805
  %9864 = phi float [ %9862, %9856 ], [ %9824, %9812 ], [ %9809, %9805 ], [ %9829, %9852 ]
  %9865 = phi float [ %9853, %9856 ], [ %9823, %9812 ], [ %9808, %9805 ], [ %9853, %9852 ]
  %9866 = phi float [ %9842, %9856 ], [ %9822, %9812 ], [ %9807, %9805 ], [ %9842, %9852 ]
  %9867 = phi float [ %9858, %9856 ], [ %9814, %9812 ], [ 1.000000e+00, %9805 ], [ 1.000000e+00, %9852 ]
  %9868 = phi float [ %9854, %9856 ], [ %9814, %9812 ], [ 1.000000e+00, %9805 ], [ %9854, %9852 ]
  %9869 = phi float [ %9843, %9856 ], [ %9814, %9812 ], [ 1.000000e+00, %9805 ], [ %9843, %9852 ]
  %9870 = fmul fast float %9869, %9781
  %9871 = fmul fast float %9868, %9792
  %9872 = fmul fast float %9867, %9803
  %9873 = fadd fast float %9870, %9866
  %9874 = fadd fast float %9871, %9865
  %9875 = fadd fast float %9872, %9864
  %9876 = fmul fast float %9869, %9780
  %9877 = fmul fast float %9868, %9791
  %9878 = fmul fast float %9867, %9802
  br label %9879

; <label>:9879                                    ; preds = %9863, %9674
  %9880 = phi float [ %9878, %9863 ], [ %9680, %9674 ]
  %9881 = phi float [ %9877, %9863 ], [ %9679, %9674 ]
  %9882 = phi float [ %9876, %9863 ], [ %9678, %9674 ]
  %9883 = phi float [ %9875, %9863 ], [ %9677, %9674 ]
  %9884 = phi float [ %9874, %9863 ], [ %9676, %9674 ]
  %9885 = phi float [ %9873, %9863 ], [ %9675, %9674 ]
  %9886 = fmul fast float %9885, %8831
  %9887 = fmul fast float %9884, %8831
  %9888 = fmul fast float %9883, %8831
  %9889 = fmul fast float %9882, %9122
  %9890 = call float @dx.op.dot3.f32(i32 55, float %9882, float %9881, float %9880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9891 = call float @dx.op.dot3.f32(i32 55, float %9886, float %9887, float %9888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9892 = select i1 %281, float %9890, float %9882
  %9893 = select i1 %281, float %9890, float %9881
  %9894 = select i1 %281, float 1.000000e+00, float %9880
  %9895 = select i1 %281, float %9891, float %9886
  %9896 = select i1 %281, float 0.000000e+00, float %9887
  %9897 = select i1 %281, float 0.000000e+00, float %9888
  %9898 = fmul fast float %9892, %9116
  %9899 = fmul fast float %9893, %9117
  %9900 = fmul fast float %9894, %9118
  %9901 = fadd fast float %9898, %9895
  %9902 = fadd fast float %9899, %9896
  %9903 = fadd fast float %9897, %9900
  %9904 = fmul fast float %9892, %9119
  %9905 = fmul fast float %9893, %9120
  %9906 = fmul fast float %9894, %9121
  %9907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9908 = extractvalue %dx.types.CBufRet.i32 %9907, 0
  %9909 = icmp eq i32 %9908, 0
  br i1 %9909, label %10277, label %9910, !dx.controlflow.hints !185

; <label>:9910                                    ; preds = %9879
  %9911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9912 = extractvalue %dx.types.CBufRet.f32 %9911, 2
  %9913 = extractvalue %dx.types.CBufRet.f32 %9911, 3
  %9914 = fmul fast float %9912, %126
  %9915 = fmul fast float %9913, %127
  %9916 = fmul fast float %9914, 2.000000e+00
  %9917 = fmul fast float %9915, 2.000000e+00
  %9918 = fsub fast float 1.000000e+00, %9916
  %9919 = fsub fast float 1.000000e+00, %9917
  %9920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9921 = extractvalue %dx.types.CBufRet.f32 %9920, 0
  %9922 = extractvalue %dx.types.CBufRet.f32 %9920, 1
  %9923 = extractvalue %dx.types.CBufRet.f32 %9920, 2
  %9924 = fmul fast float %9918, %9921
  %9925 = fmul fast float %9918, %9922
  %9926 = fmul fast float %9918, %9923
  %9927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9928 = extractvalue %dx.types.CBufRet.f32 %9927, 0
  %9929 = extractvalue %dx.types.CBufRet.f32 %9927, 1
  %9930 = extractvalue %dx.types.CBufRet.f32 %9927, 2
  %9931 = fmul fast float %9919, %9928
  %9932 = fmul fast float %9919, %9929
  %9933 = fmul fast float %9919, %9930
  %9934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9935 = extractvalue %dx.types.CBufRet.f32 %9934, 0
  %9936 = extractvalue %dx.types.CBufRet.f32 %9934, 1
  %9937 = extractvalue %dx.types.CBufRet.f32 %9934, 2
  %9938 = fadd fast float %9931, %9935
  %9939 = fadd fast float %9938, %9924
  %9940 = fadd fast float %9932, %9936
  %9941 = fadd fast float %9940, %9925
  %9942 = fadd fast float %9933, %9937
  %9943 = fadd fast float %9942, %9926
  %9944 = fmul fast float %9939, %9115
  %9945 = fmul fast float %9941, %9115
  %9946 = fmul fast float %9943, %9115
  %9947 = fmul fast float %9944, %9944
  %9948 = fmul fast float %9945, %9945
  %9949 = fadd fast float %9947, %9948
  %9950 = fmul fast float %9946, %9946
  %9951 = fadd fast float %9949, %9950
  %9952 = call float @dx.op.unary.f32(i32 24, float %9951)  ; Sqrt(value)
  %9953 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %9954 = fsub fast float %9952, %9953
  %9955 = extractvalue %dx.types.CBufRet.f32 %8842, 2
  %9956 = fmul fast float %9954, %9955
  %9957 = call float @dx.op.unary.f32(i32 7, float %9956)  ; Saturate(value)
  %9958 = fadd fast float %9957, -5.000000e-01
  %9959 = fmul fast float %9958, 2.000000e+00
  %9960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9961 = extractvalue %dx.types.CBufRet.f32 %9960, 2
  %9962 = call float @dx.op.binary.f32(i32 36, float %9961, float %9959)  ; FMin(a,b)
  %9963 = fsub fast float -0.000000e+00, %9961
  %9964 = fcmp fast ogt float %9962, %9963
  br i1 %9964, label %9965, label %10277, !dx.controlflow.hints !186

; <label>:9965                                    ; preds = %9910
  %9966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9967 = extractvalue %dx.types.CBufRet.f32 %9966, 3
  %9968 = fcmp fast ogt float %9967, 0.000000e+00
  br i1 %9968, label %9969, label %10044, !dx.controlflow.hints !187

; <label>:9969                                    ; preds = %9965
  %9970 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9971 = extractvalue %dx.types.Dimensions %9970, 0
  %9972 = sitofp i32 %9971 to float
  %9973 = extractvalue %dx.types.Dimensions %9970, 1
  %9974 = sitofp i32 %9973 to float
  %9975 = fmul fast float %9914, %9972
  %9976 = fmul fast float %9915, %9974
  %9977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9978 = extractvalue %dx.types.CBufRet.f32 %9977, 1
  %9979 = fsub fast float -0.000000e+00, %9978
  %9980 = fptoui float %9979 to i32
  %9981 = fptoui float %9975 to i32
  %9982 = fptoui float %9976 to i32
  %9983 = and i32 %9980, 31
  %9984 = lshr i32 %9981, %9983
  %9985 = lshr i32 %9982, %9983
  %9986 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9980, i32 %9984, i32 %9985, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9987 = extractvalue %dx.types.ResRet.f32 %9986, 0
  %9988 = fcmp fast olt float %9987, -1.000000e+00
  %9989 = fcmp fast ogt float %9987, -1.000000e+00
  %9990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9991 = extractvalue %dx.types.CBufRet.f32 %9990, 1
  %9992 = select i1 %9989, float %9991, float 1.000000e+00
  %9993 = fadd fast float %9987, 1.000000e+00
  %9994 = fmul fast float %9992, %9993
  %9995 = call float @dx.op.unary.f32(i32 6, float %9994)  ; FAbs(value)
  %9996 = extractvalue %dx.types.CBufRet.f32 %9990, 3
  %9997 = fcmp fast oge float %9995, %9996
  %9998 = select i1 %9997, float 0x4197782600000000, float %9995
  %9999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10000 = extractvalue %dx.types.CBufRet.f32 %9999, 0
  %10001 = extractvalue %dx.types.CBufRet.f32 %9999, 1
  %10002 = extractvalue %dx.types.CBufRet.f32 %9999, 2
  %10003 = select i1 %9988, float %10000, float %9921
  %10004 = select i1 %9988, float %10001, float %9922
  %10005 = select i1 %9988, float %10002, float %9923
  %10006 = fmul fast float %10003, %9918
  %10007 = fmul fast float %10004, %9918
  %10008 = fmul fast float %10005, %9918
  %10009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10010 = extractvalue %dx.types.CBufRet.f32 %10009, 0
  %10011 = extractvalue %dx.types.CBufRet.f32 %10009, 1
  %10012 = extractvalue %dx.types.CBufRet.f32 %10009, 2
  %10013 = select i1 %9988, float %10010, float %9928
  %10014 = select i1 %9988, float %10011, float %9929
  %10015 = select i1 %9988, float %10012, float %9930
  %10016 = fmul fast float %10013, %9919
  %10017 = fmul fast float %10014, %9919
  %10018 = fmul fast float %10015, %9919
  %10019 = fadd fast float %10016, %10006
  %10020 = fadd fast float %10017, %10007
  %10021 = fadd fast float %10018, %10008
  %10022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10023 = extractvalue %dx.types.CBufRet.f32 %10022, 0
  %10024 = extractvalue %dx.types.CBufRet.f32 %10022, 1
  %10025 = extractvalue %dx.types.CBufRet.f32 %10022, 2
  %10026 = select i1 %9988, float %10023, float %9935
  %10027 = select i1 %9988, float %10024, float %9936
  %10028 = select i1 %9988, float %10025, float %9937
  %10029 = fadd fast float %10019, %10026
  %10030 = fadd fast float %10020, %10027
  %10031 = fadd fast float %10021, %10028
  %10032 = fmul fast float %10029, %9998
  %10033 = fmul fast float %10030, %9998
  %10034 = fmul fast float %10031, %9998
  %10035 = fmul fast float %10032, %10032
  %10036 = fmul fast float %10033, %10033
  %10037 = fadd fast float %10035, %10036
  %10038 = fmul fast float %10034, %10034
  %10039 = fadd fast float %10037, %10038
  %10040 = call float @dx.op.unary.f32(i32 24, float %10039)  ; Sqrt(value)
  %10041 = fsub fast float %10040, %9953
  %10042 = fmul fast float %10041, %9955
  %10043 = call float @dx.op.unary.f32(i32 7, float %10042)  ; Saturate(value)
  br label %10044

; <label>:10044                                   ; preds = %9969, %9965
  %10045 = phi float [ %10043, %9969 ], [ 1.000000e+00, %9965 ]
  %10046 = fmul fast float %9962, 5.000000e-01
  %10047 = fadd fast float %10046, 5.000000e-01
  %10048 = call float @dx.op.unary.f32(i32 22, float %10047)  ; Frc(value)
  %10049 = call float @dx.op.unary.f32(i32 27, float %10048)  ; Round_ni(value)
  %10050 = call float @dx.op.unary.f32(i32 22, float %10048)  ; Frc(value)
  %10051 = fmul fast float %10050, 2.000000e+00
  %10052 = fadd fast float %10051, -1.000000e+00
  %10053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %9914, float %9915, float %10049, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10054 = extractvalue %dx.types.ResRet.f32 %10053, 0
  %10055 = extractvalue %dx.types.ResRet.f32 %10053, 1
  %10056 = extractvalue %dx.types.ResRet.f32 %10053, 2
  %10057 = extractvalue %dx.types.ResRet.f32 %10053, 3
  %10058 = fadd fast float %10054, -5.000000e-01
  %10059 = fadd fast float %10056, -5.000000e-01
  %10060 = fmul fast float %10058, 0xBFD5555560000000
  %10061 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10059, float %10060)  ; FMad(a,b,c)
  %10062 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10055, float 0.000000e+00)  ; FMad(a,b,c)
  %10063 = fadd fast float %10062, %10057
  %10064 = fmul fast float %10058, -7.500000e-01
  %10065 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10059, float %10064)  ; FMad(a,b,c)
  %10066 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10055, float 0.000000e+00)  ; FMad(a,b,c)
  %10067 = fadd fast float %10066, %10057
  %10068 = call float @dx.op.binary.f32(i32 35, float %10061, float -1.000000e+00)  ; FMax(a,b)
  %10069 = call float @dx.op.binary.f32(i32 35, float %10063, float -1.000000e+00)  ; FMax(a,b)
  %10070 = call float @dx.op.binary.f32(i32 35, float %10065, float -1.000000e+00)  ; FMax(a,b)
  %10071 = call float @dx.op.binary.f32(i32 35, float %10067, float -1.000000e+00)  ; FMax(a,b)
  %10072 = call float @dx.op.binary.f32(i32 36, float %10068, float 1.000000e+00)  ; FMin(a,b)
  %10073 = call float @dx.op.binary.f32(i32 36, float %10069, float 1.000000e+00)  ; FMin(a,b)
  %10074 = call float @dx.op.binary.f32(i32 36, float %10070, float 1.000000e+00)  ; FMin(a,b)
  %10075 = call float @dx.op.binary.f32(i32 36, float %10071, float 1.000000e+00)  ; FMin(a,b)
  %10076 = fcmp fast olt float %10072, 0x3FEFFF8020000000
  br i1 %10076, label %10077, label %10192, !dx.controlflow.hints !188

; <label>:10077                                   ; preds = %10044
  %10078 = extractvalue %dx.types.CBufRet.f32 %9960, 3
  %10079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10080 = extractvalue %dx.types.CBufRet.f32 %10079, 0
  %10081 = extractvalue %dx.types.CBufRet.f32 %10079, 1
  %10082 = extractvalue %dx.types.CBufRet.f32 %10079, 2
  %10083 = extractvalue %dx.types.CBufRet.f32 %10079, 3
  %10084 = fsub fast float %10080, %10072
  %10085 = fsub fast float %10081, %10073
  %10086 = fsub fast float %10082, %10074
  %10087 = fsub fast float %10083, %10075
  %10088 = fmul fast float %10084, %10078
  %10089 = fmul fast float %10085, %10078
  %10090 = fmul fast float %10086, %10078
  %10091 = fmul fast float %10087, %10078
  %10092 = fadd fast float %10088, %10072
  %10093 = fadd fast float %10089, %10073
  %10094 = fsub fast float -0.000000e+00, %10093
  %10095 = fadd fast float %10090, %10074
  %10096 = fadd fast float %10091, %10075
  %10097 = fmul fast float %10092, %10092
  %10098 = fsub fast float %10093, %10097
  %10099 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10098)  ; FMax(a,b)
  %10100 = fdiv fast float 1.000000e+00, %10099
  %10101 = fmul fast float %10093, %10092
  %10102 = fsub fast float %10095, %10101
  %10103 = fsub fast float %10052, %10092
  %10104 = fmul fast float %10052, %10052
  %10105 = fsub fast float %10104, %10093
  %10106 = fmul fast float %10103, %10100
  %10107 = fmul fast float %10106, %10102
  %10108 = fsub fast float %10105, %10107
  %10109 = fmul fast float %10093, %10093
  %10110 = fsub fast float %10096, %10109
  %10111 = fmul fast float %10102, %10102
  %10112 = fmul fast float %10111, %10100
  %10113 = fsub fast float %10110, %10112
  %10114 = fdiv fast float %10108, %10113
  %10115 = fmul fast float %10102, %10114
  %10116 = fsub fast float %10103, %10115
  %10117 = fmul fast float %10116, %10100
  %10118 = fmul fast float %10117, %10092
  %10119 = fsub fast float 1.000000e+00, %10118
  %10120 = fmul fast float %10093, %10114
  %10121 = fsub fast float %10119, %10120
  %10122 = fmul fast float %10117, %10117
  %10123 = fmul fast float %10114, 4.000000e+00
  %10124 = fmul fast float %10123, %10121
  %10125 = fsub fast float %10122, %10124
  %10126 = call float @dx.op.unary.f32(i32 24, float %10125)  ; Sqrt(value)
  %10127 = fcmp fast oge float %10117, 0.000000e+00
  %10128 = fsub fast float -0.000000e+00, %10126
  %10129 = select i1 %10127, float %10128, float %10126
  %10130 = fsub fast float %10129, %10117
  %10131 = fdiv fast float %10130, %10114
  %10132 = fdiv fast float %10121, %10130
  %10133 = fmul fast float %10131, 5.000000e-01
  %10134 = fmul fast float %10132, 2.000000e+00
  %10135 = select i1 %10127, float %10133, float %10134
  %10136 = select i1 %10127, float %10134, float %10133
  %10137 = call float @dx.op.binary.f32(i32 35, float %10135, float %10136)  ; FMax(a,b)
  %10138 = call float @dx.op.binary.f32(i32 36, float %10135, float %10136)  ; FMin(a,b)
  %10139 = fcmp fast ogt float %10052, %10138
  br i1 %10139, label %10140, label %10150

; <label>:10140                                   ; preds = %10077
  %10141 = fsub fast float %10052, %10138
  %10142 = fsub fast float %10137, %10138
  %10143 = fmul fast float %10141, %10142
  %10144 = fmul fast float %10137, %10052
  %10145 = fadd fast float %10137, %10052
  %10146 = fmul fast float %10145, %10092
  %10147 = fadd fast float %10144, %10093
  %10148 = fsub fast float %10147, %10146
  %10149 = fdiv fast float %10148, %10143
  br label %10150

; <label>:10150                                   ; preds = %10140, %10077
  %10151 = phi float [ %10149, %10140 ], [ 0.000000e+00, %10077 ]
  %10152 = fcmp fast ogt float %10052, %10137
  %10153 = fsub fast float %10052, %10137
  br i1 %10152, label %10154, label %10164

; <label>:10154                                   ; preds = %10150
  %10155 = fsub fast float %10137, %10138
  %10156 = fmul fast float %10155, %10153
  %10157 = fmul fast float %10138, %10052
  %10158 = fadd fast float %10138, %10052
  %10159 = fmul fast float %10158, %10092
  %10160 = fsub fast float %10094, %10157
  %10161 = fadd fast float %10160, %10159
  %10162 = fdiv fast float %10161, %10156
  %10163 = fadd fast float %10162, %10151
  br label %10164

; <label>:10164                                   ; preds = %10154, %10150
  %10165 = phi float [ %10163, %10154 ], [ %10151, %10150 ]
  %10166 = fsub fast float %10052, %10138
  %10167 = fmul fast float %10166, %10153
  %10168 = fmul fast float %10138, %10137
  %10169 = fadd fast float %10138, %10137
  %10170 = fmul fast float %10169, %10092
  %10171 = fadd fast float %10168, %10093
  %10172 = fsub fast float %10171, %10170
  %10173 = fdiv fast float %10172, %10167
  %10174 = call float @dx.op.unary.f32(i32 7, float %10165)  ; Saturate(value)
  %10175 = fcmp fast oeq float %8843, 0.000000e+00
  %10176 = extractvalue %dx.types.CBufRet.f32 %9960, 0
  %10177 = fcmp fast oeq float %10176, 0.000000e+00
  %10178 = or i1 %10175, %10177
  %10179 = fmul fast float %10176, 2.000000e+00
  %10180 = fadd fast float %9961, %9962
  %10181 = fdiv fast float %10180, %10179
  %10182 = call float @dx.op.unary.f32(i32 7, float %10181)  ; Saturate(value)
  %10183 = fmul fast float %10182, 2.000000e+00
  %10184 = fsub fast float 3.000000e+00, %10183
  %10185 = fmul fast float %10182, %10182
  %10186 = fmul fast float %10185, %10184
  %10187 = select i1 %10178, float 1.000000e+00, float %10186
  %10188 = fmul fast float %10173, %8843
  %10189 = fadd fast float %10174, %10188
  %10190 = call float @dx.op.unary.f32(i32 7, float %10189)  ; Saturate(value)
  %10191 = fmul fast float %10187, %10190
  br label %10192

; <label>:10192                                   ; preds = %10164, %10044
  %10193 = phi float [ %10191, %10164 ], [ 0.000000e+00, %10044 ]
  %10194 = fsub fast float 1.000000e+00, %10193
  %10195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %9914, float %9915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10196 = extractvalue %dx.types.ResRet.f32 %10195, 0
  %10197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10198 = extractvalue %dx.types.CBufRet.i32 %10197, 2
  %10199 = icmp eq i32 %10198, 0
  br i1 %10199, label %10205, label %10200

; <label>:10200                                   ; preds = %10192
  %10201 = call float @dx.op.unary.f32(i32 7, float %10193)  ; Saturate(value)
  %10202 = fadd fast float %10196, -1.000000e+00
  %10203 = fmul fast float %10201, %10202
  %10204 = fadd fast float %10203, 1.000000e+00
  br label %10205

; <label>:10205                                   ; preds = %10200, %10192
  %10206 = phi float [ %10204, %10200 ], [ %10194, %10192 ]
  br i1 %9968, label %10207, label %10225

; <label>:10207                                   ; preds = %10205
  %10208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10209 = extractvalue %dx.types.CBufRet.f32 %10208, 1
  %10210 = fsub fast float %10045, %10209
  %10211 = call float @dx.op.unary.f32(i32 7, float %10210)  ; Saturate(value)
  %10212 = fsub fast float %10045, %9967
  %10213 = call float @dx.op.unary.f32(i32 7, float %10212)  ; Saturate(value)
  %10214 = fsub fast float %10211, %10213
  %10215 = fsub fast float %10047, %10213
  %10216 = fdiv fast float %10215, %10214
  %10217 = call float @dx.op.unary.f32(i32 7, float %10216)  ; Saturate(value)
  %10218 = fmul fast float %10217, 2.000000e+00
  %10219 = fsub fast float 3.000000e+00, %10218
  %10220 = fsub fast float %10196, %10206
  %10221 = fmul fast float %10217, %10217
  %10222 = fmul fast float %10221, %10220
  %10223 = fmul fast float %10222, %10219
  %10224 = fadd fast float %10223, %10206
  br label %10225

; <label>:10225                                   ; preds = %10207, %10205
  %10226 = phi float [ %10224, %10207 ], [ %10206, %10205 ]
  %10227 = call float @dx.op.binary.f32(i32 35, float %10196, float %10226)  ; FMax(a,b)
  %10228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10229 = extractvalue %dx.types.CBufRet.i32 %10228, 2
  %10230 = and i32 %10229, 1
  %10231 = icmp eq i32 %10230, 0
  %10232 = fcmp fast une float %10227, 1.000000e+00
  %10233 = and i1 %10232, %10231
  br i1 %10233, label %10234, label %10253

; <label>:10234                                   ; preds = %10225
  %10235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %9914, float %9915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10236 = extractvalue %dx.types.ResRet.f32 %10235, 0
  %10237 = extractvalue %dx.types.ResRet.f32 %10235, 1
  %10238 = extractvalue %dx.types.ResRet.f32 %10235, 2
  %10239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10240 = extractvalue %dx.types.CBufRet.f32 %10239, 1
  %10241 = fmul fast float %10240, %10236
  %10242 = fmul fast float %10240, %10237
  %10243 = fmul fast float %10240, %10238
  %10244 = fcmp fast ogt float %10196, 0x3FEFFF2E40000000
  %10245 = fsub fast float 1.000000e+00, %10227
  %10246 = fsub fast float 1.000000e+00, %10196
  %10247 = fdiv fast float %10245, %10246
  %10248 = call float @dx.op.unary.f32(i32 7, float %10247)  ; Saturate(value)
  %10249 = select i1 %10244, float 0.000000e+00, float %10248
  %10250 = fmul fast float %10241, %10249
  %10251 = fmul fast float %10242, %10249
  %10252 = fmul fast float %10243, %10249
  br label %10253

; <label>:10253                                   ; preds = %10234, %10225
  %10254 = phi float [ 0.000000e+00, %10225 ], [ %10250, %10234 ]
  %10255 = phi float [ 0.000000e+00, %10225 ], [ %10251, %10234 ]
  %10256 = phi float [ 0.000000e+00, %10225 ], [ %10252, %10234 ]
  %10257 = fmul fast float %10254, %8831
  %10258 = fmul fast float %10255, %8831
  %10259 = fmul fast float %10256, %8831
  %10260 = fmul fast float %10227, %9889
  %10261 = call float @dx.op.dot3.f32(i32 55, float %10227, float %10227, float %10227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10262 = call float @dx.op.dot3.f32(i32 55, float %10257, float %10258, float %10259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10263 = select i1 %281, float %10261, float %10227
  %10264 = select i1 %281, float 1.000000e+00, float %10227
  %10265 = select i1 %281, float %10262, float %10257
  %10266 = select i1 %281, float 0.000000e+00, float %10258
  %10267 = select i1 %281, float 0.000000e+00, float %10259
  %10268 = fmul fast float %10263, %9901
  %10269 = fmul fast float %10263, %9902
  %10270 = fmul fast float %10264, %9903
  %10271 = fadd fast float %10268, %10265
  %10272 = fadd fast float %10269, %10266
  %10273 = fadd fast float %10267, %10270
  %10274 = fmul fast float %10263, %9904
  %10275 = fmul fast float %10263, %9905
  %10276 = fmul fast float %10264, %9906
  br label %10277

; <label>:10277                                   ; preds = %10253, %9910, %9879, %9111
  %10278 = phi float [ %9116, %9111 ], [ %9901, %9879 ], [ %10271, %10253 ], [ %9901, %9910 ]
  %10279 = phi float [ %9117, %9111 ], [ %9902, %9879 ], [ %10272, %10253 ], [ %9902, %9910 ]
  %10280 = phi float [ %9118, %9111 ], [ %9903, %9879 ], [ %10273, %10253 ], [ %9903, %9910 ]
  %10281 = phi float [ %9119, %9111 ], [ %9904, %9879 ], [ %10274, %10253 ], [ %9904, %9910 ]
  %10282 = phi float [ %9120, %9111 ], [ %9905, %9879 ], [ %10275, %10253 ], [ %9905, %9910 ]
  %10283 = phi float [ %9121, %9111 ], [ %9906, %9879 ], [ %10276, %10253 ], [ %9906, %9910 ]
  %10284 = phi float [ %9122, %9111 ], [ %9889, %9879 ], [ %10260, %10253 ], [ %9889, %9910 ]
  %10285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10286 = extractvalue %dx.types.CBufRet.f32 %10285, 2
  %10287 = extractvalue %dx.types.CBufRet.f32 %10285, 3
  %10288 = fmul fast float %10286, %126
  %10289 = fmul fast float %10287, %127
  %10290 = call float @dx.op.unary.f32(i32 7, float %10288)  ; Saturate(value)
  %10291 = call float @dx.op.unary.f32(i32 7, float %10289)  ; Saturate(value)
  %10292 = select i1 %8853, i32 2, i32 0
  %10293 = or i32 %10292, 1
  %10294 = uitofp i32 %10293 to float
  %10295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10290, float %10291, float %10294, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10296 = extractvalue %dx.types.ResRet.f32 %10295, 0
  %10297 = extractvalue %dx.types.ResRet.f32 %10295, 1
  %10298 = extractvalue %dx.types.ResRet.f32 %10295, 2
  %10299 = extractvalue %dx.types.ResRet.f32 %10295, 3
  %10300 = add nuw nsw i32 %10292, 2
  %10301 = uitofp i32 %10300 to float
  %10302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10290, float %10291, float %10301, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10303 = extractvalue %dx.types.ResRet.f32 %10302, 0
  %10304 = extractvalue %dx.types.ResRet.f32 %10302, 1
  %10305 = extractvalue %dx.types.ResRet.f32 %10302, 2
  %10306 = extractvalue %dx.types.ResRet.f32 %10302, 3
  %10307 = call float @dx.op.binary.f32(i32 35, float %10297, float %10298)  ; FMax(a,b)
  %10308 = call float @dx.op.binary.f32(i32 35, float %10296, float %10307)  ; FMax(a,b)
  %10309 = call float @dx.op.binary.f32(i32 35, float %10308, float %10299)  ; FMax(a,b)
  %10310 = call float @dx.op.binary.f32(i32 36, float %10304, float %10305)  ; FMin(a,b)
  %10311 = call float @dx.op.binary.f32(i32 36, float %10303, float %10310)  ; FMin(a,b)
  %10312 = call float @dx.op.binary.f32(i32 36, float %10311, float %10306)  ; FMin(a,b)
  %10313 = fmul fast float %10309, 2.550000e+02
  %10314 = fadd fast float %10313, 0x3F70101020000000
  %10315 = fptoui float %10314 to i32
  %10316 = fmul fast float %10312, 2.550000e+02
  %10317 = fadd fast float %10316, 0x3F70101020000000
  %10318 = fptoui float %10317 to i32
  %10319 = icmp ult i32 %10315, %10318
  br i1 %10319, label %10320, label %10489

; <label>:10320                                   ; preds = %10277
  %10321 = fcmp fast ogt float %112, 9.843750e-01
  %10322 = fadd fast float %9115, -4.000000e+00
  %10323 = select i1 %10321, float -4.000000e+00, float %10322
  %10324 = call float @dx.op.binary.f32(i32 35, float %10323, float 0.000000e+00)  ; FMax(a,b)
  %10325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10326 = extractvalue %dx.types.CBufRet.f32 %10325, 0
  %10327 = fadd fast float %10326, %10324
  %10328 = extractvalue %dx.types.CBufRet.f32 %10325, 2
  %10329 = fmul fast float %10327, %10328
  %10330 = call float @dx.op.unary.f32(i32 23, float %10329)  ; Log(value)
  %10331 = extractvalue %dx.types.CBufRet.f32 %10325, 3
  %10332 = fmul fast float %10331, %10330
  %10333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10334 = extractvalue %dx.types.CBufRet.f32 %10333, 2
  %10335 = fmul fast float %10332, %10334
  %10336 = call float @dx.op.unary.f32(i32 7, float %10335)  ; Saturate(value)
  %10337 = uitofp i32 %10315 to float
  %10338 = uitofp i32 %10318 to float
  %10339 = fadd fast float %10337, 5.000000e-01
  %10340 = fadd fast float %10338, 5.000000e-01
  %10341 = fmul fast float %10334, %10339
  %10342 = fmul fast float %10334, %10340
  %10343 = fadd fast float %10341, 0x3F0FFB4800000000
  %10344 = fadd fast float %10342, 0xBF0FFB4800000000
  %10345 = call float @dx.op.binary.f32(i32 35, float %10336, float %10343)  ; FMax(a,b)
  %10346 = call float @dx.op.binary.f32(i32 36, float %10345, float %10344)  ; FMin(a,b)
  %10347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10348 = extractvalue %dx.types.CBufRet.f32 %10347, 1
  %10349 = extractvalue %dx.types.CBufRet.f32 %10347, 2
  %10350 = extractvalue %dx.types.CBufRet.f32 %10347, 0
  %10351 = select i1 %8853, float %10350, float 0.000000e+00
  %10352 = fmul fast float %10348, %10346
  %10353 = fadd fast float %10351, %10352
  %10354 = fadd fast float %10351, %10349
  %10355 = fsub fast float %10348, %10349
  %10356 = fadd fast float %10355, %10351
  %10357 = call float @dx.op.binary.f32(i32 35, float %10353, float %10354)  ; FMax(a,b)
  %10358 = call float @dx.op.binary.f32(i32 36, float %10357, float %10356)  ; FMin(a,b)
  %10359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10290, float %10291, float %10358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10360 = extractvalue %dx.types.ResRet.f32 %10359, 0
  %10361 = extractvalue %dx.types.ResRet.f32 %10359, 1
  %10362 = extractvalue %dx.types.ResRet.f32 %10359, 2
  %10363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10364 = extractvalue %dx.types.CBufRet.i32 %10363, 0
  %10365 = extractvalue %dx.types.CBufRet.i32 %10363, 1
  %10366 = uitofp i32 %10364 to float
  %10367 = uitofp i32 %10365 to float
  %10368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10369 = extractvalue %dx.types.CBufRet.f32 %10368, 0
  %10370 = extractvalue %dx.types.CBufRet.f32 %10368, 1
  %10371 = fmul fast float %10366, %10290
  %10372 = fmul fast float %10367, %10291
  %10373 = fadd fast float %10371, -5.000000e-01
  %10374 = fadd fast float %10372, -5.000000e-01
  %10375 = call float @dx.op.unary.f32(i32 22, float %10373)  ; Frc(value)
  %10376 = call float @dx.op.unary.f32(i32 22, float %10374)  ; Frc(value)
  %10377 = fmul fast float %10375, %10375
  %10378 = fmul fast float %10377, %10375
  %10379 = fsub fast float 3.000000e+00, %10375
  %10380 = fmul fast float %10377, %10379
  %10381 = fmul fast float %10375, 3.000000e+00
  %10382 = fmul fast float %10378, 3.000000e+00
  %10383 = fmul fast float %10377, 6.000000e+00
  %10384 = fsub fast float %10382, %10383
  %10385 = fadd fast float %10384, 4.000000e+00
  %10386 = fmul fast float %10385, 0x3FC5555560000000
  %10387 = fmul fast float %10378, -3.000000e+00
  %10388 = fadd fast float %10377, %10375
  %10389 = fmul fast float %10388, 3.000000e+00
  %10390 = fadd fast float %10387, 1.000000e+00
  %10391 = fadd fast float %10390, %10389
  %10392 = fmul fast float %10378, 0x3FC5555560000000
  %10393 = fmul fast float %10376, %10376
  %10394 = fmul fast float %10393, %10376
  %10395 = fsub fast float 3.000000e+00, %10376
  %10396 = fmul fast float %10393, %10395
  %10397 = fmul fast float %10376, 3.000000e+00
  %10398 = fmul fast float %10394, 3.000000e+00
  %10399 = fmul fast float %10393, 6.000000e+00
  %10400 = fsub fast float %10398, %10399
  %10401 = fadd fast float %10400, 4.000000e+00
  %10402 = fmul fast float %10401, 0x3FC5555560000000
  %10403 = fmul fast float %10394, -3.000000e+00
  %10404 = fadd fast float %10393, %10376
  %10405 = fmul fast float %10404, 3.000000e+00
  %10406 = fadd fast float %10403, 1.000000e+00
  %10407 = fadd fast float %10406, %10405
  %10408 = fmul fast float %10394, 0x3FC5555560000000
  %10409 = fadd fast float %10375, 1.000000e+00
  %10410 = fsub fast float 1.000000e+00, %10381
  %10411 = fadd fast float %10410, %10380
  %10412 = fadd fast float %10411, %10385
  %10413 = fmul fast float %10412, 0x3FC5555560000000
  %10414 = fdiv fast float %10386, %10413
  %10415 = fsub fast float %10409, %10414
  %10416 = fsub fast float 1.000000e+00, %10375
  %10417 = fadd fast float %10391, %10378
  %10418 = fmul fast float %10417, 0x3FC5555560000000
  %10419 = fdiv fast float %10392, %10418
  %10420 = fadd fast float %10416, %10419
  %10421 = fadd fast float %10376, 1.000000e+00
  %10422 = fsub fast float 1.000000e+00, %10397
  %10423 = fadd fast float %10422, %10396
  %10424 = fadd fast float %10423, %10401
  %10425 = fmul fast float %10424, 0x3FC5555560000000
  %10426 = fdiv fast float %10402, %10425
  %10427 = fsub fast float %10421, %10426
  %10428 = fsub fast float 1.000000e+00, %10376
  %10429 = fadd fast float %10407, %10394
  %10430 = fmul fast float %10429, 0x3FC5555560000000
  %10431 = fdiv fast float %10408, %10430
  %10432 = fadd fast float %10431, %10428
  %10433 = fmul fast float %10415, %10369
  %10434 = fsub fast float %10290, %10433
  %10435 = fmul fast float %10420, %10369
  %10436 = fadd fast float %10435, %10290
  %10437 = fmul fast float %10432, %10370
  %10438 = fadd fast float %10437, %10291
  %10439 = fmul fast float %10427, %10370
  %10440 = fsub fast float %10291, %10439
  %10441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10434, float %10440, float %10358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10442 = extractvalue %dx.types.ResRet.f32 %10441, 0
  %10443 = extractvalue %dx.types.ResRet.f32 %10441, 1
  %10444 = extractvalue %dx.types.ResRet.f32 %10441, 2
  %10445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10436, float %10440, float %10358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10446 = extractvalue %dx.types.ResRet.f32 %10445, 0
  %10447 = extractvalue %dx.types.ResRet.f32 %10445, 1
  %10448 = extractvalue %dx.types.ResRet.f32 %10445, 2
  %10449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10434, float %10438, float %10358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10450 = extractvalue %dx.types.ResRet.f32 %10449, 0
  %10451 = extractvalue %dx.types.ResRet.f32 %10449, 1
  %10452 = extractvalue %dx.types.ResRet.f32 %10449, 2
  %10453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10436, float %10438, float %10358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10454 = extractvalue %dx.types.ResRet.f32 %10453, 0
  %10455 = extractvalue %dx.types.ResRet.f32 %10453, 1
  %10456 = extractvalue %dx.types.ResRet.f32 %10453, 2
  %10457 = fsub fast float %10450, %10442
  %10458 = fsub fast float %10451, %10443
  %10459 = fsub fast float %10452, %10444
  %10460 = fmul fast float %10457, %10430
  %10461 = fmul fast float %10458, %10430
  %10462 = fmul fast float %10459, %10430
  %10463 = fadd fast float %10460, %10442
  %10464 = fadd fast float %10461, %10443
  %10465 = fadd fast float %10462, %10444
  %10466 = fsub fast float %10454, %10446
  %10467 = fsub fast float %10455, %10447
  %10468 = fsub fast float %10456, %10448
  %10469 = fmul fast float %10466, %10430
  %10470 = fmul fast float %10467, %10430
  %10471 = fmul fast float %10468, %10430
  %10472 = fsub fast float %10446, %10463
  %10473 = fadd fast float %10472, %10469
  %10474 = fsub fast float %10447, %10464
  %10475 = fadd fast float %10474, %10470
  %10476 = fsub fast float %10448, %10465
  %10477 = fadd fast float %10476, %10471
  %10478 = fmul fast float %10473, %10418
  %10479 = fmul fast float %10475, %10418
  %10480 = fmul fast float %10477, %10418
  %10481 = fadd fast float %10478, %10463
  %10482 = fadd fast float %10479, %10464
  %10483 = fadd fast float %10480, %10465
  %10484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10485 = extractvalue %dx.types.CBufRet.f32 %10484, 1
  %10486 = fmul fast float %10481, %10485
  %10487 = fmul fast float %10482, %10485
  %10488 = fmul fast float %10483, %10485
  br label %10489

; <label>:10489                                   ; preds = %10320, %10277
  %10490 = phi float [ %10360, %10320 ], [ 1.000000e+00, %10277 ]
  %10491 = phi float [ %10361, %10320 ], [ 1.000000e+00, %10277 ]
  %10492 = phi float [ %10362, %10320 ], [ 1.000000e+00, %10277 ]
  %10493 = phi float [ %10486, %10320 ], [ 0.000000e+00, %10277 ]
  %10494 = phi float [ %10487, %10320 ], [ 0.000000e+00, %10277 ]
  %10495 = phi float [ %10488, %10320 ], [ 0.000000e+00, %10277 ]
  %10496 = fmul fast float %10493, %8831
  %10497 = fmul fast float %10494, %8831
  %10498 = fmul fast float %10495, %8831
  %10499 = fmul fast float %10490, %10284
  %10500 = call float @dx.op.dot3.f32(i32 55, float %10490, float %10491, float %10492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10501 = call float @dx.op.dot3.f32(i32 55, float %10496, float %10497, float %10498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10502 = select i1 %281, float %10500, float %10490
  %10503 = select i1 %281, float %10500, float %10491
  %10504 = select i1 %281, float 1.000000e+00, float %10492
  %10505 = select i1 %281, float %10501, float %10496
  %10506 = select i1 %281, float 0.000000e+00, float %10497
  %10507 = select i1 %281, float 0.000000e+00, float %10498
  %10508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10509 = extractvalue %dx.types.CBufRet.i32 %10508, 3
  %10510 = and i32 %10509, 3
  %10511 = icmp ne i32 %10510, 0
  %10512 = and i32 %10509, 4
  %10513 = icmp ne i32 %10512, 0
  %10514 = and i1 %10511, %10513
  %10515 = and i1 %281, %10514
  br i1 %10515, label %10516, label %10522

; <label>:10516                                   ; preds = %10489
  %10517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10518 = extractvalue %dx.types.CBufRet.f32 %10517, 1
  %10519 = fadd fast float %10499, -1.000000e+00
  %10520 = fmul fast float %10518, %10519
  %10521 = fadd fast float %10520, 1.000000e+00
  br label %10522

; <label>:10522                                   ; preds = %10516, %10489
  %10523 = phi float [ %10521, %10516 ], [ %10499, %10489 ]
  %10524 = fadd fast float %10281, %10278
  %10525 = fmul fast float %10502, %10524
  %10526 = fadd fast float %10525, %10505
  %10527 = fadd fast float %10282, %10279
  %10528 = fmul fast float %10503, %10527
  %10529 = fadd fast float %10528, %10506
  %10530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10531 = extractvalue %dx.types.CBufRet.f32 %10530, 0
  br i1 %281, label %10532, label %10555

; <label>:10532                                   ; preds = %10522
  %10533 = fadd fast float %10526, %10529
  %10534 = fmul fast float %10531, %10533
  %10535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10536 = extractvalue %dx.types.CBufRet.f32 %10535, 3
  %10537 = extractvalue %dx.types.CBufRet.f32 %8835, 1
  %10538 = fsub fast float %8840, %8834
  %10539 = fadd fast float %10538, %8841
  %10540 = fsub fast float %10539, %10537
  %10541 = extractvalue %dx.types.CBufRet.f32 %8835, 2
  %10542 = fmul fast float %10540, %10541
  %10543 = call float @dx.op.unary.f32(i32 7, float %10542)  ; Saturate(value)
  %10544 = fsub fast float %10543, %10536
  %10545 = fmul fast float %10544, %10523
  %10546 = fadd fast float %10545, %10536
  %10547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10548 = extractvalue %dx.types.CBufRet.f32 %10547, 0
  %10549 = fsub fast float %10546, %10548
  %10550 = fmul fast float %10549, 1.000000e+01
  %10551 = call float @dx.op.unary.f32(i32 7, float %10550)  ; Saturate(value)
  %10552 = fmul fast float %10551, %8830
  %10553 = fadd fast float %10552, %8831
  %10554 = fmul fast float %10553, %10546
  br label %10579

; <label>:10555                                   ; preds = %10522
  %10556 = fadd fast float %10283, %10280
  %10557 = fmul fast float %10504, %10556
  %10558 = fadd fast float %10557, %10507
  %10559 = fmul fast float %10531, %10526
  %10560 = fmul fast float %10531, %10529
  %10561 = fmul fast float %10531, %10558
  %10562 = call float @dx.op.binary.f32(i32 35, float %10560, float %10561)  ; FMax(a,b)
  %10563 = call float @dx.op.binary.f32(i32 35, float %10559, float %10562)  ; FMax(a,b)
  %10564 = call float @dx.op.binary.f32(i32 35, float %10563, float %8831)  ; FMax(a,b)
  %10565 = fcmp fast ugt float %10564, 0x3F10000000000000
  br i1 %10565, label %10567, label %10566

; <label>:10566                                   ; preds = %10555
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10567

; <label>:10567                                   ; preds = %10566, %10555
  %10568 = add i32 %64, 356
  %10569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10568, i32 undef)  ; BufferLoad(srv,index,wot)
  %10570 = extractvalue %dx.types.ResRet.i32 %10569, 0
  %10571 = and i32 %10570, 32
  %10572 = icmp eq i32 %10571, 0
  br i1 %10572, label %10579, label %10573

; <label>:10573                                   ; preds = %10567
  %10574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10575 = extractvalue %dx.types.CBufRet.f32 %10574, 0
  %10576 = fmul fast float %10575, 0x3FE99999A0000000
  %10577 = fadd fast float %10575, %10559
  %10578 = fadd fast float %10576, %10561
  br label %10579

; <label>:10579                                   ; preds = %10573, %10567, %10532
  %10580 = phi float [ %10534, %10532 ], [ %10577, %10573 ], [ %10559, %10567 ]
  %10581 = phi float [ %10554, %10532 ], [ %10560, %10573 ], [ %10560, %10567 ]
  %10582 = phi float [ %10553, %10532 ], [ %10578, %10573 ], [ %10561, %10567 ]
  %10583 = phi float [ %10553, %10532 ], [ %8831, %10573 ], [ %8831, %10567 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10584 = call float @dx.op.binary.f32(i32 36, float %10580, float 3.225500e+04)  ; FMin(a,b)
  %10585 = call float @dx.op.binary.f32(i32 36, float %10581, float 3.225500e+04)  ; FMin(a,b)
  %10586 = call float @dx.op.binary.f32(i32 36, float %10582, float 3.225500e+04)  ; FMin(a,b)
  %10587 = call float @dx.op.binary.f32(i32 36, float %10583, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

