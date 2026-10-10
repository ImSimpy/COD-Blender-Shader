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
; shader hash: 643317aa06e9dbe9adda578052c6225d
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
;                                   texture     f32          2d     T19     t59,space2     1
;                                   texture     f32          2d     T20     t60,space2     1
;                                   texture    byte         r/o     T21     t45,space1     1
;                                   texture    byte         r/o     T22     t46,space1     1
;                                   texture    byte         r/o     T23     t47,space1     1
;                                   texture    byte         r/o     T24     t48,space1     1
;                                   texture     f32          2d     T25     t57,space2     1
;                                   texture    byte         r/o     T26     t69,space1     1
;                                   texture     u32          2d     T27     t56,space2     1
;                                   texture     f32     2darray     T28     t35,space2     1
;                                   texture     f32          2d     T29     t34,space2     1
;                                   texture     f32          3d     T30     t31,space2     1
;                                   texture    byte         r/o     T31     t10,space1     1
;                                   texture    byte         r/o     T32      t1,space1     1
;                                   texture     f32          1d     T33     t32,space2     1
;                                   texture     f32     2darray     T34      t8,space2     1
;                                   texture     f32          2d     T35      t1,space2     1
;                                   texture     f32          2d     T36      t2,space2     1
;                                   texture     f32          2d     T37      t3,space2     1
;                                   texture     f32          2d     T38      t4,space2     1
;                                   textureunorm_f32     2darray     T39     t80,space2     1
;                                   texture    byte         r/o     T40     t67,space1     1
;                                   texture     f32          2d     T41      t7,space2     1
;                                   texture     f32          2d     T42      t6,space2     1
;                                   texture     f32          2d     T43      t5,space2     1
;                                   texture     f32          2d     T44     t38,space2     1
;                                   texture    byte         r/o     T45     t12,space1     1
;                                   texture    byte         r/o     T46     t13,space1     1
;                                   texture     f32          1d     T47     t30,space2     1
;                                   texture     f32          3d     T48     t44,space2     1
;                                   texture     f32          3d     T49     t45,space2     1
;                                   texture     f32     2darray     T50     t47,space2     1
;                                   textureunorm_f32     2darray     T51     t85,space2     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = alloca [4 x i32], align 4
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = icmp ne i32 %61, 0
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %111 = alloca [12 x float], align 4
  %112 = alloca [12 x float], align 4
  %113 = alloca [4 x float], align 4
  %114 = alloca [4 x float], align 4
  %115 = alloca [4 x float], align 4
  %116 = alloca [4 x float], align 4
  %117 = alloca [3 x float], align 4
  %118 = alloca [3 x float], align 4
  %119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = fmul fast float %122, %107
  %124 = fmul fast float %122, %108
  %125 = select i1 %62, float 1.000000e+00, float -1.000000e+00
  %126 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %98, %125
  %132 = fmul fast float %131, %130
  %133 = fmul fast float %99, %125
  %134 = fmul fast float %133, %130
  %135 = fmul fast float %100, %125
  %136 = fmul fast float %135, %130
  %137 = fmul fast float %99, %96
  %138 = fmul fast float %100, %95
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %100, %94
  %141 = fmul fast float %98, %96
  %142 = fsub fast float %140, %141
  %143 = fmul fast float %98, %95
  %144 = fmul fast float %99, %94
  %145 = fsub fast float %143, %144
  %146 = fmul fast float %139, %97
  %147 = fmul fast float %142, %97
  %148 = fmul fast float %145, %97
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = fcmp fast une float %150, 0.000000e+00
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %155 = fmul fast float %123, 2.000000e+00
  %156 = fmul fast float %155, %153
  %157 = fmul fast float %124, 2.000000e+00
  %158 = fmul fast float %157, %154
  %159 = fsub fast float 1.000000e+00, %156
  %160 = fsub fast float 1.000000e+00, %158
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = select i1 %151, float %162, float %166
  %170 = select i1 %151, float %163, float %167
  %171 = select i1 %151, float %164, float %168
  %172 = fmul fast float %169, %159
  %173 = fmul fast float %170, %159
  %174 = fmul fast float %171, %159
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = select i1 %151, float %176, float %180
  %184 = select i1 %151, float %177, float %181
  %185 = select i1 %151, float %178, float %182
  %186 = fmul fast float %183, %160
  %187 = fmul fast float %184, %160
  %188 = fmul fast float %185, %160
  %189 = fadd fast float %186, %172
  %190 = fadd fast float %187, %173
  %191 = fadd fast float %188, %174
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = select i1 %151, float %193, float %197
  %201 = select i1 %151, float %194, float %198
  %202 = select i1 %151, float %195, float %199
  %203 = fadd fast float %189, %200
  %204 = fadd fast float %190, %201
  %205 = fadd fast float %191, %202
  %206 = fmul fast float %203, %110
  %207 = fmul fast float %204, %110
  %208 = fmul fast float %205, %110
  %209 = shl i32 %64, 5
  %210 = add i32 %209, 4194304
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = extractvalue %dx.types.ResRet.i32 %211, 1
  %214 = extractvalue %dx.types.ResRet.i32 %211, 2
  %215 = extractvalue %dx.types.ResRet.i32 %211, 3
  %216 = add i32 %209, 4194320
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = extractvalue %dx.types.ResRet.i32 %217, 1
  %220 = bitcast i32 %218 to float
  %221 = bitcast i32 %219 to float
  %222 = fmul fast float %123, 5.000000e-01
  %223 = fmul fast float %124, 5.000000e-01
  %224 = fptosi float %222 to i32
  %225 = fptosi float %223 to i32
  %226 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 18
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F4C00EBA0000000
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fadd fast float %231, -1.000000e+00
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = sitofp i32 %234 to float
  %236 = extractvalue %dx.types.Dimensions %233, 1
  %237 = sitofp i32 %236 to float
  %238 = fcmp fast oge float %222, %235
  %239 = fcmp fast oge float %223, %237
  %240 = or i1 %238, %239
  %241 = select i1 %240, float 0x4197782600000000, float %232
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %245 = fmul fast float %243, %123
  %246 = fmul fast float %244, %124
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 114688
  %250 = icmp ne i32 %249, 0
  %251 = select i1 %250, float %245, float 0.000000e+00
  %252 = select i1 %250, float %246, float 0.000000e+00
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fmul fast float %254, 2.550000e+02
  %256 = fptoui float %255 to i32
  %257 = select i1 %250, i32 %256, i32 0
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 3
  %260 = and i32 %259, 3
  %261 = icmp ne i32 %260, 0
  %262 = and i32 %259, 4
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %261, %263
  br i1 %264, label %265, label %274

; <label>:265                                     ; preds = %0
  %266 = fmul fast float %154, %124
  %267 = fmul fast float %153, %123
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %267, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fsub fast float 1.000000e+00, %269
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = fcmp fast olt float %270, %272
  br label %277

; <label>:274                                     ; preds = %0
  %275 = icmp eq i32 %262, 0
  %276 = and i1 %261, %275
  br label %277

; <label>:277                                     ; preds = %274, %265
  %278 = phi i1 [ %273, %265 ], [ %276, %274 ]
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %281 = fmul fast float %280, 0x3FE3C6EF40000000
  %282 = frem fast float %123, 2.560000e+02
  %283 = frem fast float %124, 2.560000e+02
  %284 = fptoui float %282 to i32
  %285 = fptoui float %283 to i32
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %284, i32 %285, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fadd fast float %287, %281
  %289 = call float @dx.op.unary.f32(i32 22, float %288)  ; Frc(value)
  %290 = add i32 %63, 156
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %292, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %292, 22
  %300 = shl nuw nsw i32 %299, 5
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %63, 216
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %304, 8
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %304, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = add i32 %63, 36
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %63, 288
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %327, 0x3F50624DE0000000
  %331 = fmul fast float %329, 0x3F50624DE0000000
  %332 = add i32 %63, 172
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = shl i32 %334, 4
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %334, 7
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %334, 22
  %342 = shl nuw nsw i32 %341, 5
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %63, 232
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %346, 8
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %346, 16
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = add i32 %63, 52
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %63, 304
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = fmul fast float %369, 0x3F50624DE0000000
  %373 = fmul fast float %371, 0x3F50624DE0000000
  %374 = add i32 %63, 188
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = shl i32 %376, 4
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %376, 7
  %381 = and i32 %380, 32752
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %376, 22
  %384 = shl nuw nsw i32 %383, 5
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %63, 248
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = lshr i32 %388, 8
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = lshr i32 %388, 16
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = add i32 %63, 68
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %402, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = add i32 %63, 320
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %409, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = fmul fast float %411, 0x3F50624DE0000000
  %415 = fmul fast float %413, 0x3F50624DE0000000
  %416 = add i32 %63, 204
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = shl i32 %418, 4
  %420 = and i32 %419, 32752
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %418, 7
  %423 = and i32 %422, 32752
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %418, 22
  %426 = shl nuw nsw i32 %425, 5
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %63, 264
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 255
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3F70101020000000
  %434 = lshr i32 %430, 8
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = lshr i32 %430, 16
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = add i32 %63, 84
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 65535
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %444, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %63, 336
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 65535
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %451, 16
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = fmul fast float %453, 0x3F50624DE0000000
  %457 = fmul fast float %455, 0x3F50624DE0000000
  %458 = add i32 %63, 364
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 32
  %462 = icmp eq i32 %461, 0
  %463 = and i32 %460, 64
  %464 = icmp eq i32 %463, 0
  %465 = and i32 %460, 128
  %466 = icmp eq i32 %465, 0
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %486, label %471

; <label>:471                                     ; preds = %277
  %472 = add i32 %63, 524
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = add i32 %474, 0
  %476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %476, %dx.types.Handle %120, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = fmul fast float %481, %103
  %483 = fmul fast float %478, %104
  %484 = fmul fast float %479, %105
  %485 = fmul fast float %480, %106
  br label %486

; <label>:486                                     ; preds = %471, %277
  %487 = phi float [ %106, %277 ], [ %485, %471 ]
  %488 = phi float [ %105, %277 ], [ %484, %471 ]
  %489 = phi float [ %104, %277 ], [ %483, %471 ]
  %490 = phi float [ %103, %277 ], [ %482, %471 ]
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 2
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %514, label %495

; <label>:495                                     ; preds = %486
  %496 = add i32 %63, 44
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = and i32 %498, 1
  %500 = icmp ne i32 %499, 0
  %501 = select i1 %500, float %489, float 1.000000e+00
  %502 = add i32 %63, 60
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = and i32 %504, 1
  %506 = icmp ne i32 %505, 0
  %507 = select i1 %506, float %488, float 1.000000e+00
  %508 = add i32 %63, 76
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 1
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %487, float 1.000000e+00
  br label %514

; <label>:514                                     ; preds = %495, %486
  %515 = phi float [ %487, %486 ], [ %513, %495 ]
  %516 = phi float [ %488, %486 ], [ %507, %495 ]
  %517 = phi float [ %489, %486 ], [ %501, %495 ]
  %518 = lshr i32 %492, 20
  %519 = and i32 %518, 3
  %520 = add nuw nsw i32 %519, 1
  %521 = add i32 %63, 24
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = add i32 %63, 28
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = or i32 %526, %523
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %1164, label %529

; <label>:529                                     ; preds = %514
  %530 = and i32 %523, 262144
  %531 = icmp ne i32 %530, 0
  %532 = select i1 %531, float %69, float 1.000000e+00
  %533 = select i1 %531, float %70, float 0.000000e+00
  %534 = select i1 %531, float %71, float 0.000000e+00
  %535 = select i1 %531, float %72, float 1.000000e+00
  %536 = select i1 %531, float %73, float %101
  %537 = select i1 %531, float %74, float %102
  %538 = add i32 %63, 284
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = lshr i32 %540, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = fmul fast float %542, 0x3F50624DE0000000
  %544 = add i32 %63, 88
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 16
  %548 = and i32 %547, 255
  %549 = lshr i32 %546, 24
  %550 = add i32 %63, 292
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 65535
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %552, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = add i32 %63, 32
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = lshr i32 %559, 22
  %561 = shl nuw nsw i32 %560, 5
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = shl i32 %559, 4
  %564 = and i32 %563, 32752
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %559, 7
  %567 = and i32 %566, 32752
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %571 = fmul fast float %570, 1.000000e+03
  %572 = fmul fast float %330, %571
  %573 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %574 = fadd fast float %573, %320
  %575 = fmul fast float %331, %571
  %576 = call float @dx.op.unary.f32(i32 22, float %575)  ; Frc(value)
  %577 = fadd fast float %576, %322
  %578 = fmul fast float %543, %571
  %579 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %580 = fmul fast float %579, 0x401921FB60000000
  %581 = fadd fast float %580, %562
  %582 = call float @dx.op.unary.f32(i32 13, float %581)  ; Sin(value)
  %583 = call float @dx.op.unary.f32(i32 12, float %581)  ; Cos(value)
  %584 = fsub fast float -0.000000e+00, %582
  %585 = fadd fast float %536, -5.000000e-01
  %586 = fadd fast float %537, -5.000000e-01
  %587 = fmul fast float %554, %585
  %588 = fmul fast float %556, %586
  %589 = fadd fast float %587, 5.000000e-01
  %590 = fadd fast float %588, 5.000000e-01
  %591 = fmul fast float %565, %589
  %592 = fmul fast float %568, %590
  %593 = fmul fast float %583, %591
  %594 = call float @dx.op.tertiary.f32(i32 46, float %584, float %592, float %593)  ; FMad(a,b,c)
  %595 = fmul fast float %582, %591
  %596 = call float @dx.op.tertiary.f32(i32 46, float %583, float %592, float %595)  ; FMad(a,b,c)
  %597 = fadd fast float %574, %594
  %598 = fadd fast float %577, %596
  %599 = icmp ugt i32 %548, 1
  %600 = icmp ugt i32 %546, 33554431
  %601 = or i1 %600, %599
  br i1 %601, label %602, label %627

; <label>:602                                     ; preds = %529
  %603 = add i32 %63, 228
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = lshr i32 %605, 16
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = fmul fast float %570, %607
  %609 = call float @dx.op.unary.f32(i32 22, float %608)  ; Frc(value)
  %610 = mul nuw nsw i32 %548, %549
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %609, %611
  %613 = call float @dx.op.unary.f32(i32 27, float %612)  ; Round_ni(value)
  %614 = fptoui float %613 to i32
  %615 = urem i32 %614, %548
  %616 = udiv i32 %614, %549
  %617 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %618 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  %619 = uitofp i32 %615 to float
  %620 = uitofp i32 %616 to float
  %621 = fadd fast float %617, %619
  %622 = fadd fast float %618, %620
  %623 = uitofp i32 %548 to float
  %624 = uitofp i32 %549 to float
  %625 = fdiv fast float %621, %623
  %626 = fdiv fast float %622, %624
  br label %627

; <label>:627                                     ; preds = %602, %529
  %628 = phi float [ %625, %602 ], [ %597, %529 ]
  %629 = phi float [ %626, %602 ], [ %598, %529 ]
  %630 = and i32 %523, 256
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %678, label %632

; <label>:632                                     ; preds = %627
  %633 = add i32 %63, 456
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = add i32 %63, 100
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = shl i32 %642, 4
  %644 = and i32 %643, 32752
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %642, 7
  %647 = and i32 %646, 32752
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = fsub fast float 1.000000e+00, %490
  %650 = call float @dx.op.binary.f32(i32 35, float %649, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %651 = bitcast float %490 to i32
  %652 = sitofp i32 %651 to float
  %653 = fadd fast float %652, 0xC1CFBF8940000000
  %654 = fmul fast float %648, %653
  %655 = fadd fast float %654, 0x41CFBF8940000000
  %656 = fptosi float %655 to i32
  %657 = bitcast i32 %656 to float
  %658 = bitcast float %650 to i32
  %659 = sitofp i32 %658 to float
  %660 = fadd fast float %659, 0xC1CFBF8940000000
  %661 = fmul fast float %660, %648
  %662 = fadd fast float %661, 0x41CFBF8940000000
  %663 = fptosi float %662 to i32
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %657, %645
  %666 = fmul fast float %664, %645
  %667 = fsub fast float %650, %665
  %668 = fadd fast float %666, %650
  %669 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %670 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %671 = fsub fast float %639, %669
  %672 = fsub fast float %670, %669
  %673 = bitcast float %672 to i32
  %674 = sub nsw i32 2129859010, %673
  %675 = bitcast i32 %674 to float
  %676 = fmul fast float %675, %671
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  br label %678

; <label>:678                                     ; preds = %632, %627
  %679 = phi float [ %677, %632 ], [ %490, %627 ]
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 128
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %700, label %684

; <label>:684                                     ; preds = %678
  %685 = add i32 %63, 440
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = add i32 %687, 0
  %689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %689, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 524288
  %695 = icmp ne i32 %694, 0
  %696 = fcmp fast ogt float %691, 0x3FE0101020000000
  %697 = select i1 %696, float 1.000000e+00, float 0.000000e+00
  %698 = select i1 %695, float %697, float %691
  %699 = fmul fast float %698, %679
  br label %700

; <label>:700                                     ; preds = %684, %678
  %701 = phi float [ %699, %684 ], [ %679, %678 ]
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 16
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %904, label %706

; <label>:706                                     ; preds = %700
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %63, 392
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %119, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = extractvalue %dx.types.ResRet.f32 %714, 3
  %719 = and i32 %708, 255
  %720 = uitofp i32 %719 to float
  %721 = lshr i32 %708, 8
  %722 = and i32 %721, 255
  %723 = uitofp i32 %722 to float
  %724 = fmul fast float %718, %720
  %725 = fadd fast float %724, %723
  %726 = fmul fast float %725, 0x3F70101000000000
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 512
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %739, label %731

; <label>:731                                     ; preds = %706
  %732 = add i32 %63, 476
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %734, 0
  %736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %736, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  br label %739

; <label>:739                                     ; preds = %731, %706
  %740 = phi float [ %738, %731 ], [ 1.000000e+00, %706 ]
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 33554432
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %851, label %745

; <label>:745                                     ; preds = %739
  %746 = add i32 %63, 224
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 65535
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = lshr i32 %748, 16
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = add i32 %63, 228
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 65535
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = lshr i32 %759, 24
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = and i32 %759, 255
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = lshr i32 %759, 8
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = lshr i32 %759, 16
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = add i32 %63, 220
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = lshr i32 %776, 24
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = and i32 %776, 255
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %781, 0x3F70101020000000
  %783 = lshr i32 %776, 8
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %776, 16
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = bitcast float %715 to i32
  %792 = ashr i32 %791, 1
  %793 = sub nsw i32 1597463174, %792
  %794 = bitcast i32 %793 to float
  %795 = fmul fast float %715, 5.000000e-01
  %796 = fmul fast float %794, %794
  %797 = fmul fast float %796, %795
  %798 = fsub fast float 1.500000e+00, %797
  %799 = fmul fast float %794, %715
  %800 = fmul fast float %799, %798
  %801 = bitcast float %716 to i32
  %802 = ashr i32 %801, 1
  %803 = sub nsw i32 1597463174, %802
  %804 = bitcast i32 %803 to float
  %805 = fmul fast float %716, 5.000000e-01
  %806 = fmul fast float %804, %804
  %807 = fmul fast float %806, %805
  %808 = fsub fast float 1.500000e+00, %807
  %809 = fmul fast float %804, %716
  %810 = fmul fast float %809, %808
  %811 = bitcast float %717 to i32
  %812 = ashr i32 %811, 1
  %813 = sub nsw i32 1597463174, %812
  %814 = bitcast i32 %813 to float
  %815 = fmul fast float %717, 5.000000e-01
  %816 = fmul fast float %814, %814
  %817 = fmul fast float %816, %815
  %818 = fsub fast float 1.500000e+00, %817
  %819 = fmul fast float %814, %717
  %820 = fmul fast float %819, %818
  %821 = fsub fast float %800, %782
  %822 = fsub fast float %810, %786
  %823 = fsub fast float %820, %790
  %824 = fmul fast float %821, %750
  %825 = fmul fast float %822, %752
  %826 = fmul fast float %823, %757
  %827 = fadd fast float %824, %765
  %828 = fadd fast float %825, %769
  %829 = fadd fast float %826, %773
  %830 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %831 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %833 = fmul fast float %830, %830
  %834 = fmul fast float %831, %831
  %835 = fmul fast float %832, %832
  %836 = fsub fast float %833, %715
  %837 = fsub fast float %834, %716
  %838 = fsub fast float %835, %717
  %839 = fmul fast float %836, %740
  %840 = fmul fast float %837, %740
  %841 = fmul fast float %838, %740
  %842 = fadd fast float %839, %715
  %843 = fadd fast float %840, %716
  %844 = fadd fast float %841, %717
  %845 = fadd fast float %762, %726
  %846 = fsub fast float %845, %779
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %848 = fsub fast float %847, %726
  %849 = fmul fast float %848, %740
  %850 = fadd fast float %849, %726
  br label %904

; <label>:851                                     ; preds = %739
  %852 = and i32 %742, 134217728
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %888, label %854

; <label>:854                                     ; preds = %851
  %855 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %856 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %857 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %858 = fadd fast float %855, -5.000000e-01
  %859 = fadd fast float %856, -5.000000e-01
  %860 = fadd fast float %857, -5.000000e-01
  %861 = fmul fast float %858, %740
  %862 = fmul fast float %859, %740
  %863 = fmul fast float %860, %740
  %864 = fadd fast float %861, 5.000000e-01
  %865 = fadd fast float %862, 5.000000e-01
  %866 = fadd fast float %863, 5.000000e-01
  %867 = call float @dx.op.unary.f32(i32 24, float %715)  ; Sqrt(value)
  %868 = call float @dx.op.unary.f32(i32 24, float %716)  ; Sqrt(value)
  %869 = call float @dx.op.unary.f32(i32 24, float %717)  ; Sqrt(value)
  %870 = fmul fast float %864, 2.000000e+00
  %871 = fsub fast float 1.000000e+00, %870
  %872 = fmul fast float %871, %867
  %873 = fadd fast float %872, %870
  %874 = fmul fast float %873, %867
  %875 = fmul fast float %865, 2.000000e+00
  %876 = fsub fast float 1.000000e+00, %875
  %877 = fmul fast float %876, %868
  %878 = fadd fast float %877, %875
  %879 = fmul fast float %878, %868
  %880 = fmul fast float %866, 2.000000e+00
  %881 = fsub fast float 1.000000e+00, %880
  %882 = fmul fast float %881, %869
  %883 = fadd fast float %882, %880
  %884 = fmul fast float %883, %869
  %885 = fmul fast float %874, %874
  %886 = fmul fast float %879, %879
  %887 = fmul fast float %884, %884
  br label %904

; <label>:888                                     ; preds = %851
  %889 = fmul fast float %307, %307
  %890 = fmul fast float %311, %311
  %891 = fmul fast float %315, %315
  %892 = fadd fast float %889, -1.000000e+00
  %893 = fadd fast float %890, -1.000000e+00
  %894 = fadd fast float %891, -1.000000e+00
  %895 = fmul fast float %740, %892
  %896 = fmul fast float %740, %893
  %897 = fmul fast float %740, %894
  %898 = fadd fast float %895, 1.000000e+00
  %899 = fadd fast float %896, 1.000000e+00
  %900 = fadd fast float %897, 1.000000e+00
  %901 = fmul fast float %898, %715
  %902 = fmul fast float %899, %716
  %903 = fmul fast float %900, %717
  br label %904

; <label>:904                                     ; preds = %888, %854, %745, %700
  %905 = phi float [ %850, %745 ], [ %726, %854 ], [ %726, %888 ], [ 0x3FA23C0BE0000000, %700 ]
  %906 = phi float [ %842, %745 ], [ %885, %854 ], [ %901, %888 ], [ 1.000000e+00, %700 ]
  %907 = phi float [ %843, %745 ], [ %886, %854 ], [ %902, %888 ], [ 1.000000e+00, %700 ]
  %908 = phi float [ %844, %745 ], [ %887, %854 ], [ %903, %888 ], [ 1.000000e+00, %700 ]
  %909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.i32 %909, 1
  %911 = and i32 %910, 1
  %912 = icmp ne i32 %911, 0
  %913 = add i32 %63, 372
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 32
  %917 = icmp ne i32 %916, 0
  %918 = and i1 %912, %917
  %919 = select i1 %918, float 1.000000e+00, float %906
  %920 = select i1 %918, float 0x3FD3333340000000, float %907
  %921 = select i1 %918, float 0x3FD3333340000000, float %908
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 32
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %998, label %926

; <label>:926                                     ; preds = %904
  %927 = add i32 %63, 92
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = add i32 %63, 408
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = add i32 %932, 0
  %934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %934, %dx.types.Handle %119, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = extractvalue %dx.types.ResRet.f32 %935, 3
  %940 = and i32 %929, 255
  %941 = uitofp i32 %940 to float
  %942 = lshr i32 %929, 8
  %943 = and i32 %942, 255
  %944 = uitofp i32 %943 to float
  %945 = lshr i32 %929, 16
  %946 = and i32 %945, 255
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3F70101000000000
  %949 = fmul fast float %936, %941
  %950 = fadd fast float %949, %944
  %951 = fmul fast float %950, 0x3F70101000000000
  %952 = fadd fast float %937, -5.000000e-01
  %953 = fadd fast float %939, -5.000000e-01
  %954 = fmul fast float %952, %948
  %955 = fmul fast float %953, %948
  %956 = fadd fast float %954, 5.000000e-01
  %957 = fadd fast float %955, 5.000000e-01
  %958 = fmul fast float %956, 2.000000e+00
  %959 = fadd fast float %958, -1.000000e+00
  %960 = fmul fast float %957, 2.000000e+00
  %961 = fadd fast float %960, -1.000000e+00
  %962 = fadd fast float %959, %961
  %963 = fmul fast float %962, 5.000000e-01
  %964 = fsub fast float %959, %961
  %965 = fmul fast float %964, 5.000000e-01
  %966 = call float @dx.op.unary.f32(i32 6, float %963)  ; FAbs(value)
  %967 = fsub fast float 1.000000e+00, %966
  %968 = call float @dx.op.unary.f32(i32 6, float %965)  ; FAbs(value)
  %969 = fsub fast float %967, %968
  %970 = call float @dx.op.dot3.f32(i32 55, float %963, float %965, float %969, float %963, float %965, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = call float @dx.op.unary.f32(i32 25, float %970)  ; Rsqrt(value)
  %972 = fmul fast float %963, %971
  %973 = fmul fast float %965, %971
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 67108864
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %994, label %978

; <label>:978                                     ; preds = %926
  %979 = add i32 %63, 280
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 65535
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = lshr i32 %981, 16
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = fsub fast float %951, %989
  %991 = fmul fast float %990, %983
  %992 = fadd fast float %991, %987
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  br label %994

; <label>:994                                     ; preds = %978, %926
  %995 = phi float [ %993, %978 ], [ %951, %926 ]
  %996 = call float @dx.op.dot2.f32(i32 54, float %972, float %973, float %532, float %533)  ; Dot2(ax,ay,bx,by)
  %997 = call float @dx.op.dot2.f32(i32 54, float %972, float %973, float %534, float %535)  ; Dot2(ax,ay,bx,by)
  br label %998

; <label>:998                                     ; preds = %994, %904
  %999 = phi float [ %995, %994 ], [ 0x3FD6666660000000, %904 ]
  %1000 = phi float [ %996, %994 ], [ 0.000000e+00, %904 ]
  %1001 = phi float [ %997, %994 ], [ 0.000000e+00, %904 ]
  %1002 = phi float [ %938, %994 ], [ 1.000000e+00, %904 ]
  %1003 = add i32 %63, 160
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = lshr i32 %1005, 22
  %1007 = shl nuw nsw i32 %1006, 5
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 64
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1046, label %1013

; <label>:1013                                    ; preds = %998
  %1014 = add i32 %63, 424
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = add i32 %1016, 0
  %1018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 131072
  %1022 = icmp eq i32 %1021, 0
  %1023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1018, %dx.types.Handle %119, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = fmul fast float %1024, %295
  %1028 = fmul fast float %1025, %298
  %1029 = fmul fast float %1026, %301
  br i1 %1022, label %1036, label %1030

; <label>:1030                                    ; preds = %1013
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = fmul fast float %1032, %1027
  %1034 = fmul fast float %1032, %1028
  %1035 = fmul fast float %1032, %1029
  br label %1036

; <label>:1036                                    ; preds = %1030, %1013
  %1037 = phi float [ %1033, %1030 ], [ %1027, %1013 ]
  %1038 = phi float [ %1034, %1030 ], [ %1028, %1013 ]
  %1039 = phi float [ %1035, %1030 ], [ %1029, %1013 ]
  %1040 = fmul fast float %1037, %1008
  %1041 = select i1 %278, float %1040, float %1037
  %1042 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1038, float %1039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = select i1 %278, float 0.000000e+00, float %1037
  %1044 = select i1 %278, float %1042, float %1038
  %1045 = select i1 %278, float 0.000000e+00, float %1039
  br label %1046

; <label>:1046                                    ; preds = %1036, %998
  %1047 = phi float [ %1043, %1036 ], [ 0.000000e+00, %998 ]
  %1048 = phi float [ %1044, %1036 ], [ 0.000000e+00, %998 ]
  %1049 = phi float [ %1045, %1036 ], [ 0.000000e+00, %998 ]
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = and i32 %1051, 1024
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1084, label %1054

; <label>:1054                                    ; preds = %1046
  %1055 = add i32 %63, 152
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = fmul fast float %1059, 0x3F70101020000000
  %1061 = lshr i32 %1057, 8
  %1062 = and i32 %1061, 255
  %1063 = uitofp i32 %1062 to float
  %1064 = fmul fast float %1063, 0x3F70101020000000
  %1065 = lshr i32 %1057, 16
  %1066 = and i32 %1065, 255
  %1067 = uitofp i32 %1066 to float
  %1068 = fmul fast float %1067, 0x3F70101020000000
  %1069 = fmul fast float %1060, %1060
  %1070 = fmul fast float %1064, %1064
  %1071 = fmul fast float %1068, %1068
  %1072 = add i32 %63, 492
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = add i32 %1074, 0
  %1076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1076, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = fmul fast float %1069, %1078
  %1082 = fmul fast float %1070, %1079
  %1083 = fmul fast float %1071, %1080
  br label %1084

; <label>:1084                                    ; preds = %1054, %1046
  %1085 = phi float [ %1081, %1054 ], [ 0.000000e+00, %1046 ]
  %1086 = phi float [ %1082, %1054 ], [ 0.000000e+00, %1046 ]
  %1087 = phi float [ %1083, %1054 ], [ 0.000000e+00, %1046 ]
  %1088 = fcmp fast ogt float %1085, 0.000000e+00
  %1089 = fcmp fast ogt float %1086, 0.000000e+00
  %1090 = fcmp fast ogt float %1087, 0.000000e+00
  %1091 = call float @dx.op.unary.f32(i32 23, float %1085)  ; Log(value)
  %1092 = call float @dx.op.unary.f32(i32 23, float %1086)  ; Log(value)
  %1093 = call float @dx.op.unary.f32(i32 23, float %1087)  ; Log(value)
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = lshr i32 %1095, 7
  %1097 = and i32 %1096, 32752
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = fmul fast float %1091, 0xBFE62E4300000000
  %1100 = fmul fast float %1099, %1098
  %1101 = fmul fast float %1092, 0xBFE62E4300000000
  %1102 = fmul fast float %1101, %1098
  %1103 = fmul fast float %1093, 0xBFE62E4300000000
  %1104 = fmul fast float %1103, %1098
  %1105 = select i1 %1088, float %1100, float 1.270000e+02
  %1106 = select i1 %1089, float %1102, float 1.270000e+02
  %1107 = select i1 %1090, float %1104, float 1.270000e+02
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 26624
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1148, label %1112

; <label>:1112                                    ; preds = %1084
  %1113 = add i32 %63, 508
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = add i32 %1115, 0
  %1117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1117, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 1048576
  %1123 = icmp ne i32 %1122, 0
  %1124 = and i32 %1121, 2048
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1135, label %1126

; <label>:1126                                    ; preds = %1112
  %1127 = extractvalue %dx.types.ResRet.f32 %1118, 3
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = shl i32 %1129, 4
  %1131 = and i32 %1130, 32752
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = fmul fast float %1132, %1127
  %1134 = call float @dx.op.binary.f32(i32 35, float %1133, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1135

; <label>:1135                                    ; preds = %1126, %1112
  %1136 = phi float [ %1134, %1126 ], [ 0x3F70101020000000, %1112 ]
  %1137 = and i32 %1121, 16384
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1148, label %1139

; <label>:1139                                    ; preds = %1135
  %1140 = add i32 %63, 96
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = lshr i32 %1142, 24
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1119, 0x3F70101020000000
  %1146 = select i1 %1123, float 0x3F70101020000000, float %1145
  %1147 = fmul fast float %1146, %1144
  br label %1148

; <label>:1148                                    ; preds = %1139, %1135, %1084
  %1149 = phi float [ %1136, %1139 ], [ %1136, %1135 ], [ 0x3F70101020000000, %1084 ]
  %1150 = phi float [ %1147, %1139 ], [ 0.000000e+00, %1135 ], [ 0.000000e+00, %1084 ]
  %1151 = add i32 %63, 96
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = lshr i32 %1153, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = call float @dx.op.dot3.f32(i32 55, float %919, float %920, float %921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = fmul fast float %1158, %1159
  %1161 = fadd fast float %1160, %1155
  %1162 = fmul fast float %1161, 0x3F70101020000000
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  br label %1164

; <label>:1164                                    ; preds = %1148, %514
  %1165 = phi float [ 0.000000e+00, %514 ], [ %1000, %1148 ]
  %1166 = phi float [ 0.000000e+00, %514 ], [ %1001, %1148 ]
  %1167 = phi float [ 0.000000e+00, %514 ], [ %1105, %1148 ]
  %1168 = phi float [ 0.000000e+00, %514 ], [ %1106, %1148 ]
  %1169 = phi float [ 0.000000e+00, %514 ], [ %1107, %1148 ]
  %1170 = phi float [ 0.000000e+00, %514 ], [ %919, %1148 ]
  %1171 = phi float [ 0.000000e+00, %514 ], [ %920, %1148 ]
  %1172 = phi float [ 0.000000e+00, %514 ], [ %921, %1148 ]
  %1173 = phi float [ 0.000000e+00, %514 ], [ %1047, %1148 ]
  %1174 = phi float [ 0.000000e+00, %514 ], [ %1048, %1148 ]
  %1175 = phi float [ 0.000000e+00, %514 ], [ %1049, %1148 ]
  %1176 = phi float [ 0.000000e+00, %514 ], [ %905, %1148 ]
  %1177 = phi float [ 0.000000e+00, %514 ], [ %701, %1148 ]
  %1178 = phi float [ 0.000000e+00, %514 ], [ %999, %1148 ]
  %1179 = phi float [ 0.000000e+00, %514 ], [ %1002, %1148 ]
  %1180 = phi float [ 0.000000e+00, %514 ], [ %1149, %1148 ]
  %1181 = phi float [ 0.000000e+00, %514 ], [ %1150, %1148 ]
  %1182 = phi float [ 0.000000e+00, %514 ], [ %1163, %1148 ]
  br i1 %462, label %2081, label %1183

; <label>:1183                                    ; preds = %1164
  %1184 = icmp ult i32 %520, 2
  %1185 = add i32 %63, 40
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = add i32 %63, 44
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = or i32 %1190, %1187
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %2081, label %1193

; <label>:1193                                    ; preds = %1183
  %1194 = and i32 %1187, 262144
  %1195 = icmp ne i32 %1194, 0
  %1196 = select i1 %1195, float %69, float 1.000000e+00
  %1197 = select i1 %1195, float %70, float 0.000000e+00
  %1198 = select i1 %1195, float %71, float 0.000000e+00
  %1199 = select i1 %1195, float %72, float 1.000000e+00
  %1200 = select i1 %1195, float %73, float %101
  %1201 = select i1 %1195, float %74, float %102
  %1202 = add i32 %63, 300
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = lshr i32 %1204, 16
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = fmul fast float %1206, 0x3F50624DE0000000
  %1208 = add i32 %63, 104
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = lshr i32 %1210, 16
  %1212 = and i32 %1211, 255
  %1213 = lshr i32 %1210, 24
  %1214 = add i32 %63, 308
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 65535
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = lshr i32 %1216, 16
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = add i32 %63, 48
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 22
  %1225 = shl nuw nsw i32 %1224, 5
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = shl i32 %1223, 4
  %1228 = and i32 %1227, 32752
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = lshr i32 %1223, 7
  %1231 = and i32 %1230, 32752
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 3
  %1235 = fmul fast float %1234, 1.000000e+03
  %1236 = fmul fast float %372, %1235
  %1237 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1238 = fadd fast float %1237, %362
  %1239 = fmul fast float %373, %1235
  %1240 = call float @dx.op.unary.f32(i32 22, float %1239)  ; Frc(value)
  %1241 = fadd fast float %1240, %364
  %1242 = fmul fast float %1207, %1235
  %1243 = call float @dx.op.unary.f32(i32 22, float %1242)  ; Frc(value)
  %1244 = fmul fast float %1243, 0x401921FB60000000
  %1245 = fadd fast float %1244, %1226
  %1246 = call float @dx.op.unary.f32(i32 13, float %1245)  ; Sin(value)
  %1247 = call float @dx.op.unary.f32(i32 12, float %1245)  ; Cos(value)
  %1248 = fsub fast float -0.000000e+00, %1246
  %1249 = fadd fast float %1200, -5.000000e-01
  %1250 = fadd fast float %1201, -5.000000e-01
  %1251 = fmul fast float %1218, %1249
  %1252 = fmul fast float %1220, %1250
  %1253 = fadd fast float %1251, 5.000000e-01
  %1254 = fadd fast float %1252, 5.000000e-01
  %1255 = fmul fast float %1229, %1253
  %1256 = fmul fast float %1232, %1254
  %1257 = fmul fast float %1247, %1255
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1256, float %1257)  ; FMad(a,b,c)
  %1259 = fmul fast float %1246, %1255
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %1256, float %1259)  ; FMad(a,b,c)
  %1261 = fadd fast float %1238, %1258
  %1262 = fadd fast float %1241, %1260
  %1263 = icmp ugt i32 %1212, 1
  %1264 = icmp ugt i32 %1210, 33554431
  %1265 = or i1 %1264, %1263
  br i1 %1265, label %1266, label %1291

; <label>:1266                                    ; preds = %1193
  %1267 = add i32 %63, 244
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = lshr i32 %1269, 16
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = fmul fast float %1234, %1271
  %1273 = call float @dx.op.unary.f32(i32 22, float %1272)  ; Frc(value)
  %1274 = mul nuw nsw i32 %1212, %1213
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1273, %1275
  %1277 = call float @dx.op.unary.f32(i32 27, float %1276)  ; Round_ni(value)
  %1278 = fptoui float %1277 to i32
  %1279 = urem i32 %1278, %1212
  %1280 = udiv i32 %1278, %1213
  %1281 = call float @dx.op.unary.f32(i32 22, float %1261)  ; Frc(value)
  %1282 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1283 = uitofp i32 %1279 to float
  %1284 = uitofp i32 %1280 to float
  %1285 = fadd fast float %1281, %1283
  %1286 = fadd fast float %1282, %1284
  %1287 = uitofp i32 %1212 to float
  %1288 = uitofp i32 %1213 to float
  %1289 = fdiv fast float %1285, %1287
  %1290 = fdiv fast float %1286, %1288
  br label %1291

; <label>:1291                                    ; preds = %1266, %1193
  %1292 = phi float [ %1289, %1266 ], [ %1261, %1193 ]
  %1293 = phi float [ %1290, %1266 ], [ %1262, %1193 ]
  %1294 = and i32 %1187, 256
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1342, label %1296

; <label>:1296                                    ; preds = %1291
  %1297 = add i32 %63, 460
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = add i32 %1299, 0
  %1301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1301, %dx.types.Handle %120, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = add i32 %63, 116
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = shl i32 %1306, 4
  %1308 = and i32 %1307, 32752
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = lshr i32 %1306, 7
  %1311 = and i32 %1310, 32752
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = fsub fast float 1.000000e+00, %517
  %1314 = call float @dx.op.binary.f32(i32 35, float %1313, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1315 = bitcast float %517 to i32
  %1316 = sitofp i32 %1315 to float
  %1317 = fadd fast float %1316, 0xC1CFBF8940000000
  %1318 = fmul fast float %1312, %1317
  %1319 = fadd fast float %1318, 0x41CFBF8940000000
  %1320 = fptosi float %1319 to i32
  %1321 = bitcast i32 %1320 to float
  %1322 = bitcast float %1314 to i32
  %1323 = sitofp i32 %1322 to float
  %1324 = fadd fast float %1323, 0xC1CFBF8940000000
  %1325 = fmul fast float %1324, %1312
  %1326 = fadd fast float %1325, 0x41CFBF8940000000
  %1327 = fptosi float %1326 to i32
  %1328 = bitcast i32 %1327 to float
  %1329 = fmul fast float %1321, %1309
  %1330 = fmul fast float %1328, %1309
  %1331 = fsub fast float %1314, %1329
  %1332 = fadd fast float %1330, %1314
  %1333 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1334 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1335 = fsub fast float %1303, %1333
  %1336 = fsub fast float %1334, %1333
  %1337 = bitcast float %1336 to i32
  %1338 = sub nsw i32 2129859010, %1337
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1339, %1335
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  br label %1342

; <label>:1342                                    ; preds = %1296, %1291
  %1343 = phi float [ %1341, %1296 ], [ %517, %1291 ]
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = and i32 %1345, 128
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1364, label %1348

; <label>:1348                                    ; preds = %1342
  %1349 = add i32 %63, 444
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = add i32 %1351, 0
  %1353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1354 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1353, %dx.types.Handle %120, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1355 = extractvalue %dx.types.ResRet.f32 %1354, 0
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = and i32 %1357, 524288
  %1359 = icmp ne i32 %1358, 0
  %1360 = fcmp fast ogt float %1355, 0x3FE0101020000000
  %1361 = select i1 %1360, float 1.000000e+00, float 0.000000e+00
  %1362 = select i1 %1359, float %1361, float %1355
  %1363 = fmul fast float %1362, %1343
  br label %1364

; <label>:1364                                    ; preds = %1348, %1342
  %1365 = phi float [ %1363, %1348 ], [ %1343, %1342 ]
  %1366 = fcmp fast ult float %1365, 0x3F70101020000000
  br i1 %1366, label %2081, label %1367

; <label>:1367                                    ; preds = %1364
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = and i32 %1369, 16
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1570, label %1372

; <label>:1372                                    ; preds = %1367
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = add i32 %63, 396
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = add i32 %1377, 0
  %1379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1379, %dx.types.Handle %119, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = extractvalue %dx.types.ResRet.f32 %1380, 3
  %1385 = and i32 %1374, 255
  %1386 = uitofp i32 %1385 to float
  %1387 = lshr i32 %1374, 8
  %1388 = and i32 %1387, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = fmul fast float %1384, %1386
  %1391 = fadd fast float %1390, %1389
  %1392 = fmul fast float %1391, 0x3F70101000000000
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 512
  %1396 = icmp eq i32 %1395, 0
  br i1 %1396, label %1405, label %1397

; <label>:1397                                    ; preds = %1372
  %1398 = add i32 %63, 480
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %1400, 0
  %1402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1402, %dx.types.Handle %120, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  br label %1405

; <label>:1405                                    ; preds = %1397, %1372
  %1406 = phi float [ %1404, %1397 ], [ 1.000000e+00, %1372 ]
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = and i32 %1408, 33554432
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1517, label %1411

; <label>:1411                                    ; preds = %1405
  %1412 = add i32 %63, 240
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 65535
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = lshr i32 %1414, 16
  %1418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1417)  ; LegacyF16ToF32(value)
  %1419 = add i32 %63, 244
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 65535
  %1423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1422)  ; LegacyF16ToF32(value)
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = lshr i32 %1425, 24
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101020000000
  %1429 = and i32 %1425, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = lshr i32 %1425, 8
  %1433 = and i32 %1432, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = lshr i32 %1425, 16
  %1437 = and i32 %1436, 255
  %1438 = uitofp i32 %1437 to float
  %1439 = fmul fast float %1438, 0x3F70101020000000
  %1440 = add i32 %63, 236
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = lshr i32 %1442, 24
  %1444 = uitofp i32 %1443 to float
  %1445 = fmul fast float %1444, 0x3F70101020000000
  %1446 = and i32 %1442, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, 0x3F70101020000000
  %1449 = lshr i32 %1442, 8
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1451, 0x3F70101020000000
  %1453 = lshr i32 %1442, 16
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1455, 0x3F70101020000000
  %1457 = bitcast float %1381 to i32
  %1458 = ashr i32 %1457, 1
  %1459 = sub nsw i32 1597463174, %1458
  %1460 = bitcast i32 %1459 to float
  %1461 = fmul fast float %1381, 5.000000e-01
  %1462 = fmul fast float %1460, %1460
  %1463 = fmul fast float %1462, %1461
  %1464 = fsub fast float 1.500000e+00, %1463
  %1465 = fmul fast float %1460, %1381
  %1466 = fmul fast float %1465, %1464
  %1467 = bitcast float %1382 to i32
  %1468 = ashr i32 %1467, 1
  %1469 = sub nsw i32 1597463174, %1468
  %1470 = bitcast i32 %1469 to float
  %1471 = fmul fast float %1382, 5.000000e-01
  %1472 = fmul fast float %1470, %1470
  %1473 = fmul fast float %1472, %1471
  %1474 = fsub fast float 1.500000e+00, %1473
  %1475 = fmul fast float %1470, %1382
  %1476 = fmul fast float %1475, %1474
  %1477 = bitcast float %1383 to i32
  %1478 = ashr i32 %1477, 1
  %1479 = sub nsw i32 1597463174, %1478
  %1480 = bitcast i32 %1479 to float
  %1481 = fmul fast float %1383, 5.000000e-01
  %1482 = fmul fast float %1480, %1480
  %1483 = fmul fast float %1482, %1481
  %1484 = fsub fast float 1.500000e+00, %1483
  %1485 = fmul fast float %1480, %1383
  %1486 = fmul fast float %1485, %1484
  %1487 = fsub fast float %1466, %1448
  %1488 = fsub fast float %1476, %1452
  %1489 = fsub fast float %1486, %1456
  %1490 = fmul fast float %1487, %1416
  %1491 = fmul fast float %1488, %1418
  %1492 = fmul fast float %1489, %1423
  %1493 = fadd fast float %1490, %1431
  %1494 = fadd fast float %1491, %1435
  %1495 = fadd fast float %1492, %1439
  %1496 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1497 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1498 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1499 = fmul fast float %1496, %1496
  %1500 = fmul fast float %1497, %1497
  %1501 = fmul fast float %1498, %1498
  %1502 = fsub fast float %1499, %1381
  %1503 = fsub fast float %1500, %1382
  %1504 = fsub fast float %1501, %1383
  %1505 = fmul fast float %1502, %1406
  %1506 = fmul fast float %1503, %1406
  %1507 = fmul fast float %1504, %1406
  %1508 = fadd fast float %1505, %1381
  %1509 = fadd fast float %1506, %1382
  %1510 = fadd fast float %1507, %1383
  %1511 = fadd fast float %1428, %1392
  %1512 = fsub fast float %1511, %1445
  %1513 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1514 = fsub fast float %1513, %1392
  %1515 = fmul fast float %1514, %1406
  %1516 = fadd fast float %1515, %1392
  br label %1570

; <label>:1517                                    ; preds = %1405
  %1518 = and i32 %1408, 134217728
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1554, label %1520

; <label>:1520                                    ; preds = %1517
  %1521 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %1522 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1523 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %1524 = fadd fast float %1521, -5.000000e-01
  %1525 = fadd fast float %1522, -5.000000e-01
  %1526 = fadd fast float %1523, -5.000000e-01
  %1527 = fmul fast float %1524, %1406
  %1528 = fmul fast float %1525, %1406
  %1529 = fmul fast float %1526, %1406
  %1530 = fadd fast float %1527, 5.000000e-01
  %1531 = fadd fast float %1528, 5.000000e-01
  %1532 = fadd fast float %1529, 5.000000e-01
  %1533 = call float @dx.op.unary.f32(i32 24, float %1381)  ; Sqrt(value)
  %1534 = call float @dx.op.unary.f32(i32 24, float %1382)  ; Sqrt(value)
  %1535 = call float @dx.op.unary.f32(i32 24, float %1383)  ; Sqrt(value)
  %1536 = fmul fast float %1530, 2.000000e+00
  %1537 = fsub fast float 1.000000e+00, %1536
  %1538 = fmul fast float %1537, %1533
  %1539 = fadd fast float %1538, %1536
  %1540 = fmul fast float %1539, %1533
  %1541 = fmul fast float %1531, 2.000000e+00
  %1542 = fsub fast float 1.000000e+00, %1541
  %1543 = fmul fast float %1542, %1534
  %1544 = fadd fast float %1543, %1541
  %1545 = fmul fast float %1544, %1534
  %1546 = fmul fast float %1532, 2.000000e+00
  %1547 = fsub fast float 1.000000e+00, %1546
  %1548 = fmul fast float %1547, %1535
  %1549 = fadd fast float %1548, %1546
  %1550 = fmul fast float %1549, %1535
  %1551 = fmul fast float %1540, %1540
  %1552 = fmul fast float %1545, %1545
  %1553 = fmul fast float %1550, %1550
  br label %1570

; <label>:1554                                    ; preds = %1517
  %1555 = fmul fast float %349, %349
  %1556 = fmul fast float %353, %353
  %1557 = fmul fast float %357, %357
  %1558 = fadd fast float %1555, -1.000000e+00
  %1559 = fadd fast float %1556, -1.000000e+00
  %1560 = fadd fast float %1557, -1.000000e+00
  %1561 = fmul fast float %1406, %1558
  %1562 = fmul fast float %1406, %1559
  %1563 = fmul fast float %1406, %1560
  %1564 = fadd fast float %1561, 1.000000e+00
  %1565 = fadd fast float %1562, 1.000000e+00
  %1566 = fadd fast float %1563, 1.000000e+00
  %1567 = fmul fast float %1564, %1381
  %1568 = fmul fast float %1565, %1382
  %1569 = fmul fast float %1566, %1383
  br label %1570

; <label>:1570                                    ; preds = %1554, %1520, %1411, %1367
  %1571 = phi float [ %1516, %1411 ], [ %1392, %1520 ], [ %1392, %1554 ], [ 0x3FA23C0BE0000000, %1367 ]
  %1572 = phi float [ %1508, %1411 ], [ %1551, %1520 ], [ %1567, %1554 ], [ 1.000000e+00, %1367 ]
  %1573 = phi float [ %1509, %1411 ], [ %1552, %1520 ], [ %1568, %1554 ], [ 1.000000e+00, %1367 ]
  %1574 = phi float [ %1510, %1411 ], [ %1553, %1520 ], [ %1569, %1554 ], [ 1.000000e+00, %1367 ]
  %1575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.i32 %1575, 1
  %1577 = and i32 %1576, 1
  %1578 = icmp ne i32 %1577, 0
  %1579 = add i32 %63, 372
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 32
  %1583 = icmp ne i32 %1582, 0
  %1584 = and i1 %1578, %1583
  %1585 = select i1 %1584, float 1.000000e+00, float %1572
  %1586 = select i1 %1584, float 0x3FD3333340000000, float %1573
  %1587 = select i1 %1584, float 0x3FD3333340000000, float %1574
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 32
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1664, label %1592

; <label>:1592                                    ; preds = %1570
  %1593 = add i32 %63, 108
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %63, 412
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = add i32 %1598, 0
  %1600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1600, %dx.types.Handle %119, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = extractvalue %dx.types.ResRet.f32 %1601, 3
  %1606 = and i32 %1595, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = lshr i32 %1595, 8
  %1609 = and i32 %1608, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = lshr i32 %1595, 16
  %1612 = and i32 %1611, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F70101000000000
  %1615 = fmul fast float %1602, %1607
  %1616 = fadd fast float %1615, %1610
  %1617 = fmul fast float %1616, 0x3F70101000000000
  %1618 = fadd fast float %1603, -5.000000e-01
  %1619 = fadd fast float %1605, -5.000000e-01
  %1620 = fmul fast float %1618, %1614
  %1621 = fmul fast float %1619, %1614
  %1622 = fadd fast float %1620, 5.000000e-01
  %1623 = fadd fast float %1621, 5.000000e-01
  %1624 = fmul fast float %1622, 2.000000e+00
  %1625 = fadd fast float %1624, -1.000000e+00
  %1626 = fmul fast float %1623, 2.000000e+00
  %1627 = fadd fast float %1626, -1.000000e+00
  %1628 = fadd fast float %1625, %1627
  %1629 = fmul fast float %1628, 5.000000e-01
  %1630 = fsub fast float %1625, %1627
  %1631 = fmul fast float %1630, 5.000000e-01
  %1632 = call float @dx.op.unary.f32(i32 6, float %1629)  ; FAbs(value)
  %1633 = fsub fast float 1.000000e+00, %1632
  %1634 = call float @dx.op.unary.f32(i32 6, float %1631)  ; FAbs(value)
  %1635 = fsub fast float %1633, %1634
  %1636 = call float @dx.op.dot3.f32(i32 55, float %1629, float %1631, float %1635, float %1629, float %1631, float %1635)  ; Dot3(ax,ay,az,bx,by,bz)
  %1637 = call float @dx.op.unary.f32(i32 25, float %1636)  ; Rsqrt(value)
  %1638 = fmul fast float %1629, %1637
  %1639 = fmul fast float %1631, %1637
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, 67108864
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1660, label %1644

; <label>:1644                                    ; preds = %1592
  %1645 = add i32 %63, 296
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 65535
  %1649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1648)  ; LegacyF16ToF32(value)
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 65535
  %1653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1652)  ; LegacyF16ToF32(value)
  %1654 = lshr i32 %1647, 16
  %1655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1654)  ; LegacyF16ToF32(value)
  %1656 = fsub fast float %1617, %1655
  %1657 = fmul fast float %1656, %1649
  %1658 = fadd fast float %1657, %1653
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  br label %1660

; <label>:1660                                    ; preds = %1644, %1592
  %1661 = phi float [ %1659, %1644 ], [ %1617, %1592 ]
  %1662 = call float @dx.op.dot2.f32(i32 54, float %1638, float %1639, float %1196, float %1197)  ; Dot2(ax,ay,bx,by)
  %1663 = call float @dx.op.dot2.f32(i32 54, float %1638, float %1639, float %1198, float %1199)  ; Dot2(ax,ay,bx,by)
  br label %1664

; <label>:1664                                    ; preds = %1660, %1570
  %1665 = phi float [ %1661, %1660 ], [ 0x3FD6666660000000, %1570 ]
  %1666 = phi float [ %1662, %1660 ], [ 0.000000e+00, %1570 ]
  %1667 = phi float [ %1663, %1660 ], [ 0.000000e+00, %1570 ]
  %1668 = phi float [ %1604, %1660 ], [ 1.000000e+00, %1570 ]
  %1669 = add i32 %63, 176
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = lshr i32 %1671, 22
  %1673 = shl nuw nsw i32 %1672, 5
  %1674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1673)  ; LegacyF16ToF32(value)
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = and i32 %1676, 64
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1712, label %1679

; <label>:1679                                    ; preds = %1664
  %1680 = add i32 %63, 428
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = add i32 %1682, 0
  %1684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = and i32 %1686, 131072
  %1688 = icmp eq i32 %1687, 0
  %1689 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1684, %dx.types.Handle %119, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1690 = extractvalue %dx.types.ResRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.ResRet.f32 %1689, 1
  %1692 = extractvalue %dx.types.ResRet.f32 %1689, 2
  %1693 = fmul fast float %1690, %337
  %1694 = fmul fast float %1691, %340
  %1695 = fmul fast float %1692, %343
  br i1 %1688, label %1702, label %1696

; <label>:1696                                    ; preds = %1679
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 0
  %1699 = fmul fast float %1698, %1693
  %1700 = fmul fast float %1698, %1694
  %1701 = fmul fast float %1698, %1695
  br label %1702

; <label>:1702                                    ; preds = %1696, %1679
  %1703 = phi float [ %1699, %1696 ], [ %1693, %1679 ]
  %1704 = phi float [ %1700, %1696 ], [ %1694, %1679 ]
  %1705 = phi float [ %1701, %1696 ], [ %1695, %1679 ]
  %1706 = fmul fast float %1703, %1674
  %1707 = select i1 %278, float %1706, float %1703
  %1708 = call float @dx.op.dot3.f32(i32 55, float %1707, float %1704, float %1705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1709 = select i1 %278, float 0.000000e+00, float %1703
  %1710 = select i1 %278, float %1708, float %1704
  %1711 = select i1 %278, float 0.000000e+00, float %1705
  br label %1712

; <label>:1712                                    ; preds = %1702, %1664
  %1713 = phi float [ %1709, %1702 ], [ 0.000000e+00, %1664 ]
  %1714 = phi float [ %1710, %1702 ], [ 0.000000e+00, %1664 ]
  %1715 = phi float [ %1711, %1702 ], [ 0.000000e+00, %1664 ]
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 1024
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1750, label %1720

; <label>:1720                                    ; preds = %1712
  %1721 = add i32 %63, 168
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 255
  %1725 = uitofp i32 %1724 to float
  %1726 = fmul fast float %1725, 0x3F70101020000000
  %1727 = lshr i32 %1723, 8
  %1728 = and i32 %1727, 255
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1729, 0x3F70101020000000
  %1731 = lshr i32 %1723, 16
  %1732 = and i32 %1731, 255
  %1733 = uitofp i32 %1732 to float
  %1734 = fmul fast float %1733, 0x3F70101020000000
  %1735 = fmul fast float %1726, %1726
  %1736 = fmul fast float %1730, %1730
  %1737 = fmul fast float %1734, %1734
  %1738 = add i32 %63, 496
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = add i32 %1740, 0
  %1742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1742, %dx.types.Handle %120, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.ResRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.ResRet.f32 %1743, 2
  %1747 = fmul fast float %1735, %1744
  %1748 = fmul fast float %1736, %1745
  %1749 = fmul fast float %1737, %1746
  br label %1750

; <label>:1750                                    ; preds = %1720, %1712
  %1751 = phi float [ %1747, %1720 ], [ 0.000000e+00, %1712 ]
  %1752 = phi float [ %1748, %1720 ], [ 0.000000e+00, %1712 ]
  %1753 = phi float [ %1749, %1720 ], [ 0.000000e+00, %1712 ]
  %1754 = fcmp fast ogt float %1751, 0.000000e+00
  %1755 = fcmp fast ogt float %1752, 0.000000e+00
  %1756 = fcmp fast ogt float %1753, 0.000000e+00
  %1757 = call float @dx.op.unary.f32(i32 23, float %1751)  ; Log(value)
  %1758 = call float @dx.op.unary.f32(i32 23, float %1752)  ; Log(value)
  %1759 = call float @dx.op.unary.f32(i32 23, float %1753)  ; Log(value)
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = lshr i32 %1761, 7
  %1763 = and i32 %1762, 32752
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = fmul fast float %1757, 0xBFE62E4300000000
  %1766 = fmul fast float %1765, %1764
  %1767 = fmul fast float %1758, 0xBFE62E4300000000
  %1768 = fmul fast float %1767, %1764
  %1769 = fmul fast float %1759, 0xBFE62E4300000000
  %1770 = fmul fast float %1769, %1764
  %1771 = select i1 %1754, float %1766, float 1.270000e+02
  %1772 = select i1 %1755, float %1768, float 1.270000e+02
  %1773 = select i1 %1756, float %1770, float 1.270000e+02
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 26624
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1814, label %1778

; <label>:1778                                    ; preds = %1750
  %1779 = add i32 %63, 512
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = add i32 %1781, 0
  %1783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1784 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1783, %dx.types.Handle %120, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1785 = extractvalue %dx.types.ResRet.f32 %1784, 0
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = and i32 %1787, 1048576
  %1789 = icmp ne i32 %1788, 0
  %1790 = and i32 %1787, 2048
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1801, label %1792

; <label>:1792                                    ; preds = %1778
  %1793 = extractvalue %dx.types.ResRet.f32 %1784, 3
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = shl i32 %1795, 4
  %1797 = and i32 %1796, 32752
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = fmul fast float %1798, %1793
  %1800 = call float @dx.op.binary.f32(i32 35, float %1799, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1801

; <label>:1801                                    ; preds = %1792, %1778
  %1802 = phi float [ %1800, %1792 ], [ 0x3F70101020000000, %1778 ]
  %1803 = and i32 %1787, 16384
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1814, label %1805

; <label>:1805                                    ; preds = %1801
  %1806 = add i32 %63, 112
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = lshr i32 %1808, 24
  %1810 = uitofp i32 %1809 to float
  %1811 = fmul fast float %1785, 0x3F70101020000000
  %1812 = select i1 %1789, float 0x3F70101020000000, float %1811
  %1813 = fmul fast float %1812, %1810
  br label %1814

; <label>:1814                                    ; preds = %1805, %1801, %1750
  %1815 = phi float [ %1802, %1805 ], [ %1802, %1801 ], [ 0x3F70101020000000, %1750 ]
  %1816 = phi float [ %1813, %1805 ], [ 0.000000e+00, %1801 ], [ 0.000000e+00, %1750 ]
  %1817 = add i32 %63, 112
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = and i32 %1819, 255
  %1821 = uitofp i32 %1820 to float
  %1822 = lshr i32 %1819, 8
  %1823 = and i32 %1822, 255
  %1824 = uitofp i32 %1823 to float
  %1825 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1586, float %1587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1826 = fmul fast float %1824, %1825
  %1827 = fadd fast float %1826, %1821
  %1828 = fmul fast float %1827, 0x3F70101020000000
  %1829 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  br i1 %1184, label %1830, label %1865

; <label>:1830                                    ; preds = %1814
  %1831 = fmul fast float %1815, 2.000000e+00
  %1832 = fcmp fast olt float %1771, 1.270000e+02
  %1833 = fcmp fast olt float %1772, 1.270000e+02
  %1834 = fcmp fast olt float %1773, 1.270000e+02
  %1835 = fmul fast float %1771, 0xBFF7154760000000
  %1836 = fmul fast float %1835, %1831
  %1837 = fmul fast float %1772, 0xBFF7154760000000
  %1838 = fmul fast float %1837, %1831
  %1839 = fmul fast float %1773, 0xBFF7154760000000
  %1840 = fmul fast float %1839, %1831
  %1841 = call float @dx.op.unary.f32(i32 21, float %1836)  ; Exp(value)
  %1842 = call float @dx.op.unary.f32(i32 21, float %1838)  ; Exp(value)
  %1843 = call float @dx.op.unary.f32(i32 21, float %1840)  ; Exp(value)
  %1844 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1845 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1846 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1847 = fadd fast float %1844, -1.000000e+00
  %1848 = select i1 %1832, float %1847, float -1.000000e+00
  %1849 = fadd fast float %1845, -1.000000e+00
  %1850 = select i1 %1833, float %1849, float -1.000000e+00
  %1851 = fadd fast float %1846, -1.000000e+00
  %1852 = select i1 %1834, float %1851, float -1.000000e+00
  %1853 = fmul fast float %1848, %1365
  %1854 = fmul fast float %1850, %1365
  %1855 = fmul fast float %1852, %1365
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fmul fast float %1856, %1170
  %1860 = fmul fast float %1857, %1171
  %1861 = fmul fast float %1858, %1172
  %1862 = fmul fast float %1856, %1173
  %1863 = fmul fast float %1857, %1174
  %1864 = fmul fast float %1858, %1175
  br label %1865

; <label>:1865                                    ; preds = %1830, %1814
  %1866 = phi float [ %1859, %1830 ], [ %1170, %1814 ]
  %1867 = phi float [ %1860, %1830 ], [ %1171, %1814 ]
  %1868 = phi float [ %1861, %1830 ], [ %1172, %1814 ]
  %1869 = phi float [ %1862, %1830 ], [ %1173, %1814 ]
  %1870 = phi float [ %1863, %1830 ], [ %1174, %1814 ]
  %1871 = phi float [ %1864, %1830 ], [ %1175, %1814 ]
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 3
  %1875 = icmp eq i32 %1874, 3
  br i1 %1875, label %1954, label %1876

; <label>:1876                                    ; preds = %1865
  %1877 = and i32 %1873, 16
  %1878 = icmp ne i32 %1877, 0
  %1879 = select i1 %1878, float %1365, float 0.000000e+00
  %1880 = icmp eq i32 %1874, 0
  br i1 %1880, label %1881, label %1909

; <label>:1881                                    ; preds = %1876
  %1882 = and i32 %1873, 64
  %1883 = icmp ne i32 %1882, 0
  %1884 = select i1 %1883, float %1365, float 0.000000e+00
  %1885 = fsub fast float %1585, %1866
  %1886 = fsub fast float %1586, %1867
  %1887 = fsub fast float %1587, %1868
  %1888 = fmul fast float %1879, %1885
  %1889 = fmul fast float %1879, %1886
  %1890 = fmul fast float %1879, %1887
  %1891 = fadd fast float %1888, %1866
  %1892 = fadd fast float %1889, %1867
  %1893 = fadd fast float %1890, %1868
  %1894 = fsub fast float %1571, %1176
  %1895 = fmul fast float %1879, %1894
  %1896 = fadd fast float %1895, %1176
  %1897 = fsub fast float %1713, %1869
  %1898 = fsub fast float %1714, %1870
  %1899 = fsub fast float %1715, %1871
  %1900 = fmul fast float %1884, %1897
  %1901 = fmul fast float %1884, %1898
  %1902 = fmul fast float %1884, %1899
  %1903 = fadd fast float %1900, %1869
  %1904 = fadd fast float %1901, %1870
  %1905 = fadd fast float %1902, %1871
  %1906 = fsub fast float %1829, %1182
  %1907 = fmul fast float %1879, %1906
  %1908 = fadd fast float %1907, %1182
  br label %1954

; <label>:1909                                    ; preds = %1876
  %1910 = icmp eq i32 %1874, 1
  br i1 %1910, label %1911, label %1924

; <label>:1911                                    ; preds = %1909
  %1912 = fadd fast float %1585, -1.000000e+00
  %1913 = fadd fast float %1586, -1.000000e+00
  %1914 = fadd fast float %1587, -1.000000e+00
  %1915 = fmul fast float %1879, %1912
  %1916 = fmul fast float %1879, %1913
  %1917 = fmul fast float %1879, %1914
  %1918 = fadd fast float %1915, 1.000000e+00
  %1919 = fadd fast float %1916, 1.000000e+00
  %1920 = fadd fast float %1917, 1.000000e+00
  %1921 = fmul fast float %1918, %1866
  %1922 = fmul fast float %1919, %1867
  %1923 = fmul fast float %1920, %1868
  br label %1954

; <label>:1924                                    ; preds = %1909
  %1925 = icmp eq i32 %1874, 2
  br i1 %1925, label %1926, label %1954

; <label>:1926                                    ; preds = %1924
  %1927 = call float @dx.op.unary.f32(i32 24, float %1585)  ; Sqrt(value)
  %1928 = call float @dx.op.unary.f32(i32 24, float %1586)  ; Sqrt(value)
  %1929 = call float @dx.op.unary.f32(i32 24, float %1587)  ; Sqrt(value)
  %1930 = fadd fast float %1927, -5.000000e-01
  %1931 = fadd fast float %1928, -5.000000e-01
  %1932 = fadd fast float %1929, -5.000000e-01
  %1933 = fmul fast float %1930, %1879
  %1934 = fmul fast float %1931, %1879
  %1935 = fmul fast float %1932, %1879
  %1936 = fadd fast float %1933, 5.000000e-01
  %1937 = fadd fast float %1934, 5.000000e-01
  %1938 = fadd fast float %1935, 5.000000e-01
  %1939 = fmul fast float %1936, 2.000000e+00
  %1940 = fsub fast float 1.000000e+00, %1939
  %1941 = fmul fast float %1940, %1866
  %1942 = fadd fast float %1941, %1939
  %1943 = fmul fast float %1942, %1866
  %1944 = fmul fast float %1937, 2.000000e+00
  %1945 = fsub fast float 1.000000e+00, %1944
  %1946 = fmul fast float %1945, %1867
  %1947 = fadd fast float %1946, %1944
  %1948 = fmul fast float %1947, %1867
  %1949 = fmul fast float %1938, 2.000000e+00
  %1950 = fsub fast float 1.000000e+00, %1949
  %1951 = fmul fast float %1950, %1868
  %1952 = fadd fast float %1951, %1949
  %1953 = fmul fast float %1952, %1868
  br label %1954

; <label>:1954                                    ; preds = %1926, %1924, %1911, %1881, %1865
  %1955 = phi float [ %1866, %1865 ], [ %1943, %1926 ], [ %1866, %1924 ], [ %1921, %1911 ], [ %1891, %1881 ]
  %1956 = phi float [ %1867, %1865 ], [ %1948, %1926 ], [ %1867, %1924 ], [ %1922, %1911 ], [ %1892, %1881 ]
  %1957 = phi float [ %1868, %1865 ], [ %1953, %1926 ], [ %1868, %1924 ], [ %1923, %1911 ], [ %1893, %1881 ]
  %1958 = phi float [ %1869, %1865 ], [ %1869, %1926 ], [ %1869, %1924 ], [ %1869, %1911 ], [ %1903, %1881 ]
  %1959 = phi float [ %1870, %1865 ], [ %1870, %1926 ], [ %1870, %1924 ], [ %1870, %1911 ], [ %1904, %1881 ]
  %1960 = phi float [ %1871, %1865 ], [ %1871, %1926 ], [ %1871, %1924 ], [ %1871, %1911 ], [ %1905, %1881 ]
  %1961 = phi float [ %1176, %1865 ], [ %1176, %1926 ], [ %1176, %1924 ], [ %1176, %1911 ], [ %1896, %1881 ]
  %1962 = phi float [ %1182, %1865 ], [ %1182, %1926 ], [ %1182, %1924 ], [ %1182, %1911 ], [ %1908, %1881 ]
  %1963 = and i32 %1873, 12
  %1964 = icmp eq i32 %1963, 12
  br i1 %1964, label %2081, label %1965

; <label>:1965                                    ; preds = %1954
  %1966 = and i32 %1873, 2097184
  %1967 = icmp eq i32 %1966, 2097184
  %1968 = select i1 %1967, float %1365, float 0.000000e+00
  %1969 = and i32 %1873, 4194336
  %1970 = icmp eq i32 %1969, 4194336
  %1971 = select i1 %1970, float %1365, float 0.000000e+00
  %1972 = and i32 %1873, 8388640
  %1973 = icmp eq i32 %1972, 8388640
  %1974 = select i1 %1973, float %1365, float 0.000000e+00
  %1975 = and i32 %1873, 1024
  %1976 = icmp ne i32 %1975, 0
  %1977 = select i1 %1976, float %1365, float 0.000000e+00
  %1978 = and i32 %1873, 2048
  %1979 = icmp ne i32 %1978, 0
  %1980 = select i1 %1979, float %1365, float 0.000000e+00
  %1981 = and i32 %1873, 16384
  %1982 = icmp ne i32 %1981, 0
  %1983 = select i1 %1982, float %1365, float 0.000000e+00
  %1984 = icmp eq i32 %1963, 0
  br i1 %1984, label %1985, label %2013

; <label>:1985                                    ; preds = %1965
  %1986 = fsub fast float %1666, %1165
  %1987 = fsub fast float %1667, %1166
  %1988 = fmul fast float %1968, %1986
  %1989 = fmul fast float %1968, %1987
  %1990 = fadd fast float %1988, %1165
  %1991 = fadd fast float %1989, %1166
  %1992 = fsub fast float %1668, %1179
  %1993 = fmul fast float %1971, %1992
  %1994 = fadd fast float %1993, %1179
  %1995 = fsub fast float %1665, %1178
  %1996 = fmul fast float %1974, %1995
  %1997 = fadd fast float %1996, %1178
  %1998 = fsub fast float %1771, %1167
  %1999 = fsub fast float %1772, %1168
  %2000 = fsub fast float %1773, %1169
  %2001 = fmul fast float %1977, %1998
  %2002 = fmul fast float %1977, %1999
  %2003 = fmul fast float %1977, %2000
  %2004 = fadd fast float %2001, %1167
  %2005 = fadd fast float %2002, %1168
  %2006 = fadd fast float %2003, %1169
  %2007 = fsub fast float %1815, %1180
  %2008 = fmul fast float %1980, %2007
  %2009 = fadd fast float %2008, %1180
  %2010 = fsub fast float %1816, %1181
  %2011 = fmul fast float %1983, %2010
  %2012 = fadd fast float %2011, %1181
  br label %2081

; <label>:2013                                    ; preds = %1965
  %2014 = icmp eq i32 %1963, 4
  br i1 %2014, label %2015, label %2057

; <label>:2015                                    ; preds = %2013
  %2016 = fmul fast float %1968, %1666
  %2017 = fmul fast float %1968, %1667
  %2018 = fadd fast float %2016, %1165
  %2019 = fadd fast float %2017, %1166
  %2020 = call float @dx.op.binary.f32(i32 36, float %1179, float %1668)  ; FMin(a,b)
  %2021 = fsub fast float %2020, %1179
  %2022 = fmul fast float %2021, %1971
  %2023 = fadd fast float %2022, %1179
  %2024 = fadd fast float %1665, %1178
  %2025 = fmul fast float %2024, 0x3FF337FAE0000000
  %2026 = fmul fast float %1178, %1178
  %2027 = fmul fast float %1665, %1665
  %2028 = fadd fast float %2027, %2026
  %2029 = fmul fast float %2028, 0x3FE5152B00000000
  %2030 = fmul fast float %1178, 0xBFCC1F85E0000000
  %2031 = fmul fast float %2030, %1665
  %2032 = fadd fast float %2031, 0xBFE1363700000000
  %2033 = fadd fast float %2032, %2025
  %2034 = fsub fast float %2033, %2029
  %2035 = fmul fast float %2024, 0x3FBA6F0D00000000
  %2036 = fmul fast float %2028, 0x3FD0432880000000
  %2037 = fmul fast float %1178, 0xBFEF110800000000
  %2038 = fmul fast float %2037, %1665
  %2039 = fadd fast float %2038, 1.000000e+00
  %2040 = fsub fast float %2039, %2035
  %2041 = fadd fast float %2040, %2036
  %2042 = fdiv fast float %2034, %2041
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fsub fast float %2043, %1178
  %2045 = fmul fast float %2044, %1974
  %2046 = fadd fast float %2045, %1178
  %2047 = fmul fast float %1977, %1771
  %2048 = fmul fast float %1977, %1772
  %2049 = fmul fast float %1977, %1773
  %2050 = fadd fast float %2047, %1167
  %2051 = fadd fast float %2048, %1168
  %2052 = fadd fast float %2049, %1169
  %2053 = fmul fast float %1980, %1815
  %2054 = fadd fast float %2053, %1180
  %2055 = fmul fast float %1983, %1816
  %2056 = fadd fast float %2055, %1181
  br label %2081

; <label>:2057                                    ; preds = %2013
  %2058 = icmp eq i32 %1963, 8
  br i1 %2058, label %2059, label %2081

; <label>:2059                                    ; preds = %2057
  %2060 = fmul fast float %1968, %1666
  %2061 = fmul fast float %1968, %1667
  %2062 = fadd fast float %2060, %1165
  %2063 = fadd fast float %2061, %1166
  %2064 = call float @dx.op.binary.f32(i32 36, float %1179, float %1668)  ; FMin(a,b)
  %2065 = fsub fast float %2064, %1179
  %2066 = fmul fast float %2065, %1971
  %2067 = fadd fast float %2066, %1179
  %2068 = fsub fast float %1665, %1178
  %2069 = fmul fast float %1974, %2068
  %2070 = fadd fast float %2069, %1178
  %2071 = fmul fast float %1977, %1771
  %2072 = fmul fast float %1977, %1772
  %2073 = fmul fast float %1977, %1773
  %2074 = fadd fast float %2071, %1167
  %2075 = fadd fast float %2072, %1168
  %2076 = fadd fast float %2073, %1169
  %2077 = fmul fast float %1980, %1815
  %2078 = fadd fast float %2077, %1180
  %2079 = fmul fast float %1983, %1816
  %2080 = fadd fast float %2079, %1181
  br label %2081

; <label>:2081                                    ; preds = %2059, %2057, %2015, %1985, %1954, %1364, %1183, %1164
  %2082 = phi float [ %1165, %1954 ], [ %1165, %1364 ], [ %1165, %1164 ], [ %2062, %2059 ], [ %1165, %2057 ], [ %2018, %2015 ], [ %1990, %1985 ], [ %1165, %1183 ]
  %2083 = phi float [ %1166, %1954 ], [ %1166, %1364 ], [ %1166, %1164 ], [ %2063, %2059 ], [ %1166, %2057 ], [ %2019, %2015 ], [ %1991, %1985 ], [ %1166, %1183 ]
  %2084 = phi float [ %1167, %1954 ], [ %1167, %1364 ], [ %1167, %1164 ], [ %2074, %2059 ], [ %1167, %2057 ], [ %2050, %2015 ], [ %2004, %1985 ], [ %1167, %1183 ]
  %2085 = phi float [ %1168, %1954 ], [ %1168, %1364 ], [ %1168, %1164 ], [ %2075, %2059 ], [ %1168, %2057 ], [ %2051, %2015 ], [ %2005, %1985 ], [ %1168, %1183 ]
  %2086 = phi float [ %1169, %1954 ], [ %1169, %1364 ], [ %1169, %1164 ], [ %2076, %2059 ], [ %1169, %2057 ], [ %2052, %2015 ], [ %2006, %1985 ], [ %1169, %1183 ]
  %2087 = phi float [ %1955, %1954 ], [ %1170, %1364 ], [ %1170, %1164 ], [ %1955, %2059 ], [ %1955, %2057 ], [ %1955, %2015 ], [ %1955, %1985 ], [ %1170, %1183 ]
  %2088 = phi float [ %1956, %1954 ], [ %1171, %1364 ], [ %1171, %1164 ], [ %1956, %2059 ], [ %1956, %2057 ], [ %1956, %2015 ], [ %1956, %1985 ], [ %1171, %1183 ]
  %2089 = phi float [ %1957, %1954 ], [ %1172, %1364 ], [ %1172, %1164 ], [ %1957, %2059 ], [ %1957, %2057 ], [ %1957, %2015 ], [ %1957, %1985 ], [ %1172, %1183 ]
  %2090 = phi float [ %1958, %1954 ], [ %1173, %1364 ], [ %1173, %1164 ], [ %1958, %2059 ], [ %1958, %2057 ], [ %1958, %2015 ], [ %1958, %1985 ], [ %1173, %1183 ]
  %2091 = phi float [ %1959, %1954 ], [ %1174, %1364 ], [ %1174, %1164 ], [ %1959, %2059 ], [ %1959, %2057 ], [ %1959, %2015 ], [ %1959, %1985 ], [ %1174, %1183 ]
  %2092 = phi float [ %1960, %1954 ], [ %1175, %1364 ], [ %1175, %1164 ], [ %1960, %2059 ], [ %1960, %2057 ], [ %1960, %2015 ], [ %1960, %1985 ], [ %1175, %1183 ]
  %2093 = phi float [ %1961, %1954 ], [ %1176, %1364 ], [ %1176, %1164 ], [ %1961, %2059 ], [ %1961, %2057 ], [ %1961, %2015 ], [ %1961, %1985 ], [ %1176, %1183 ]
  %2094 = phi float [ %1178, %1954 ], [ %1178, %1364 ], [ %1178, %1164 ], [ %2070, %2059 ], [ %1178, %2057 ], [ %2046, %2015 ], [ %1997, %1985 ], [ %1178, %1183 ]
  %2095 = phi float [ %1179, %1954 ], [ %1179, %1364 ], [ %1179, %1164 ], [ %2067, %2059 ], [ %1179, %2057 ], [ %2023, %2015 ], [ %1994, %1985 ], [ %1179, %1183 ]
  %2096 = phi float [ %1180, %1954 ], [ %1180, %1364 ], [ %1180, %1164 ], [ %2078, %2059 ], [ %1180, %2057 ], [ %2054, %2015 ], [ %2009, %1985 ], [ %1180, %1183 ]
  %2097 = phi float [ %1181, %1954 ], [ %1181, %1364 ], [ %1181, %1164 ], [ %2080, %2059 ], [ %1181, %2057 ], [ %2056, %2015 ], [ %2012, %1985 ], [ %1181, %1183 ]
  %2098 = phi float [ %1962, %1954 ], [ %1182, %1364 ], [ %1182, %1164 ], [ %1962, %2059 ], [ %1962, %2057 ], [ %1962, %2015 ], [ %1962, %1985 ], [ %1182, %1183 ]
  br i1 %464, label %2997, label %2099

; <label>:2099                                    ; preds = %2081
  %2100 = icmp ult i32 %520, 3
  %2101 = add i32 %63, 56
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = add i32 %63, 60
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = or i32 %2106, %2103
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2997, label %2109

; <label>:2109                                    ; preds = %2099
  %2110 = and i32 %2103, 262144
  %2111 = icmp ne i32 %2110, 0
  %2112 = select i1 %2111, float %69, float 1.000000e+00
  %2113 = select i1 %2111, float %70, float 0.000000e+00
  %2114 = select i1 %2111, float %71, float 0.000000e+00
  %2115 = select i1 %2111, float %72, float 1.000000e+00
  %2116 = select i1 %2111, float %73, float %101
  %2117 = select i1 %2111, float %74, float %102
  %2118 = add i32 %63, 316
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = lshr i32 %2120, 16
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = fmul fast float %2122, 0x3F50624DE0000000
  %2124 = add i32 %63, 120
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = lshr i32 %2126, 16
  %2128 = and i32 %2127, 255
  %2129 = lshr i32 %2126, 24
  %2130 = add i32 %63, 324
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 65535
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = lshr i32 %2132, 16
  %2136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2135)  ; LegacyF16ToF32(value)
  %2137 = add i32 %63, 64
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = lshr i32 %2139, 22
  %2141 = shl nuw nsw i32 %2140, 5
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = shl i32 %2139, 4
  %2144 = and i32 %2143, 32752
  %2145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2144)  ; LegacyF16ToF32(value)
  %2146 = lshr i32 %2139, 7
  %2147 = and i32 %2146, 32752
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 3
  %2151 = fmul fast float %2150, 1.000000e+03
  %2152 = fmul fast float %414, %2151
  %2153 = call float @dx.op.unary.f32(i32 22, float %2152)  ; Frc(value)
  %2154 = fadd fast float %2153, %404
  %2155 = fmul fast float %415, %2151
  %2156 = call float @dx.op.unary.f32(i32 22, float %2155)  ; Frc(value)
  %2157 = fadd fast float %2156, %406
  %2158 = fmul fast float %2123, %2151
  %2159 = call float @dx.op.unary.f32(i32 22, float %2158)  ; Frc(value)
  %2160 = fmul fast float %2159, 0x401921FB60000000
  %2161 = fadd fast float %2160, %2142
  %2162 = call float @dx.op.unary.f32(i32 13, float %2161)  ; Sin(value)
  %2163 = call float @dx.op.unary.f32(i32 12, float %2161)  ; Cos(value)
  %2164 = fsub fast float -0.000000e+00, %2162
  %2165 = fadd fast float %2116, -5.000000e-01
  %2166 = fadd fast float %2117, -5.000000e-01
  %2167 = fmul fast float %2134, %2165
  %2168 = fmul fast float %2136, %2166
  %2169 = fadd fast float %2167, 5.000000e-01
  %2170 = fadd fast float %2168, 5.000000e-01
  %2171 = fmul fast float %2145, %2169
  %2172 = fmul fast float %2148, %2170
  %2173 = fmul fast float %2163, %2171
  %2174 = call float @dx.op.tertiary.f32(i32 46, float %2164, float %2172, float %2173)  ; FMad(a,b,c)
  %2175 = fmul fast float %2162, %2171
  %2176 = call float @dx.op.tertiary.f32(i32 46, float %2163, float %2172, float %2175)  ; FMad(a,b,c)
  %2177 = fadd fast float %2154, %2174
  %2178 = fadd fast float %2157, %2176
  %2179 = icmp ugt i32 %2128, 1
  %2180 = icmp ugt i32 %2126, 33554431
  %2181 = or i1 %2180, %2179
  br i1 %2181, label %2182, label %2207

; <label>:2182                                    ; preds = %2109
  %2183 = add i32 %63, 260
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = lshr i32 %2185, 16
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = fmul fast float %2150, %2187
  %2189 = call float @dx.op.unary.f32(i32 22, float %2188)  ; Frc(value)
  %2190 = mul nuw nsw i32 %2128, %2129
  %2191 = uitofp i32 %2190 to float
  %2192 = fmul fast float %2189, %2191
  %2193 = call float @dx.op.unary.f32(i32 27, float %2192)  ; Round_ni(value)
  %2194 = fptoui float %2193 to i32
  %2195 = urem i32 %2194, %2128
  %2196 = udiv i32 %2194, %2129
  %2197 = call float @dx.op.unary.f32(i32 22, float %2177)  ; Frc(value)
  %2198 = call float @dx.op.unary.f32(i32 22, float %2178)  ; Frc(value)
  %2199 = uitofp i32 %2195 to float
  %2200 = uitofp i32 %2196 to float
  %2201 = fadd fast float %2197, %2199
  %2202 = fadd fast float %2198, %2200
  %2203 = uitofp i32 %2128 to float
  %2204 = uitofp i32 %2129 to float
  %2205 = fdiv fast float %2201, %2203
  %2206 = fdiv fast float %2202, %2204
  br label %2207

; <label>:2207                                    ; preds = %2182, %2109
  %2208 = phi float [ %2205, %2182 ], [ %2177, %2109 ]
  %2209 = phi float [ %2206, %2182 ], [ %2178, %2109 ]
  %2210 = and i32 %2103, 256
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2258, label %2212

; <label>:2212                                    ; preds = %2207
  %2213 = add i32 %63, 464
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = add i32 %2215, 0
  %2217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2217, %dx.types.Handle %120, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = add i32 %63, 132
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = shl i32 %2222, 4
  %2224 = and i32 %2223, 32752
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = lshr i32 %2222, 7
  %2227 = and i32 %2226, 32752
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = fsub fast float 1.000000e+00, %516
  %2230 = call float @dx.op.binary.f32(i32 35, float %2229, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2231 = bitcast float %516 to i32
  %2232 = sitofp i32 %2231 to float
  %2233 = fadd fast float %2232, 0xC1CFBF8940000000
  %2234 = fmul fast float %2228, %2233
  %2235 = fadd fast float %2234, 0x41CFBF8940000000
  %2236 = fptosi float %2235 to i32
  %2237 = bitcast i32 %2236 to float
  %2238 = bitcast float %2230 to i32
  %2239 = sitofp i32 %2238 to float
  %2240 = fadd fast float %2239, 0xC1CFBF8940000000
  %2241 = fmul fast float %2240, %2228
  %2242 = fadd fast float %2241, 0x41CFBF8940000000
  %2243 = fptosi float %2242 to i32
  %2244 = bitcast i32 %2243 to float
  %2245 = fmul fast float %2237, %2225
  %2246 = fmul fast float %2244, %2225
  %2247 = fsub fast float %2230, %2245
  %2248 = fadd fast float %2246, %2230
  %2249 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2250 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2251 = fsub fast float %2219, %2249
  %2252 = fsub fast float %2250, %2249
  %2253 = bitcast float %2252 to i32
  %2254 = sub nsw i32 2129859010, %2253
  %2255 = bitcast i32 %2254 to float
  %2256 = fmul fast float %2255, %2251
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  br label %2258

; <label>:2258                                    ; preds = %2212, %2207
  %2259 = phi float [ %2257, %2212 ], [ %516, %2207 ]
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 128
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2280, label %2264

; <label>:2264                                    ; preds = %2258
  %2265 = add i32 %63, 448
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %120, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 524288
  %2275 = icmp ne i32 %2274, 0
  %2276 = fcmp fast ogt float %2271, 0x3FE0101020000000
  %2277 = select i1 %2276, float 1.000000e+00, float 0.000000e+00
  %2278 = select i1 %2275, float %2277, float %2271
  %2279 = fmul fast float %2278, %2259
  br label %2280

; <label>:2280                                    ; preds = %2264, %2258
  %2281 = phi float [ %2279, %2264 ], [ %2259, %2258 ]
  %2282 = fcmp fast ult float %2281, 0x3F70101020000000
  br i1 %2282, label %2997, label %2283

; <label>:2283                                    ; preds = %2280
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 16
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2486, label %2288

; <label>:2288                                    ; preds = %2283
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %63, 400
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = add i32 %2293, 0
  %2295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2295, %dx.types.Handle %119, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = extractvalue %dx.types.ResRet.f32 %2296, 3
  %2301 = and i32 %2290, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2290, 8
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2300, %2302
  %2307 = fadd fast float %2306, %2305
  %2308 = fmul fast float %2307, 0x3F70101000000000
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 512
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2321, label %2313

; <label>:2313                                    ; preds = %2288
  %2314 = add i32 %63, 484
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = add i32 %2316, 0
  %2318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2318, %dx.types.Handle %120, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  br label %2321

; <label>:2321                                    ; preds = %2313, %2288
  %2322 = phi float [ %2320, %2313 ], [ 1.000000e+00, %2288 ]
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 33554432
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2433, label %2327

; <label>:2327                                    ; preds = %2321
  %2328 = add i32 %63, 256
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = lshr i32 %2330, 16
  %2334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2333)  ; LegacyF16ToF32(value)
  %2335 = add i32 %63, 260
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = lshr i32 %2341, 24
  %2343 = uitofp i32 %2342 to float
  %2344 = fmul fast float %2343, 0x3F70101020000000
  %2345 = and i32 %2341, 255
  %2346 = uitofp i32 %2345 to float
  %2347 = fmul fast float %2346, 0x3F70101020000000
  %2348 = lshr i32 %2341, 8
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = lshr i32 %2341, 16
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = add i32 %63, 252
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = lshr i32 %2358, 24
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = and i32 %2358, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = lshr i32 %2358, 8
  %2366 = and i32 %2365, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = lshr i32 %2358, 16
  %2370 = and i32 %2369, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = bitcast float %2297 to i32
  %2374 = ashr i32 %2373, 1
  %2375 = sub nsw i32 1597463174, %2374
  %2376 = bitcast i32 %2375 to float
  %2377 = fmul fast float %2297, 5.000000e-01
  %2378 = fmul fast float %2376, %2376
  %2379 = fmul fast float %2378, %2377
  %2380 = fsub fast float 1.500000e+00, %2379
  %2381 = fmul fast float %2376, %2297
  %2382 = fmul fast float %2381, %2380
  %2383 = bitcast float %2298 to i32
  %2384 = ashr i32 %2383, 1
  %2385 = sub nsw i32 1597463174, %2384
  %2386 = bitcast i32 %2385 to float
  %2387 = fmul fast float %2298, 5.000000e-01
  %2388 = fmul fast float %2386, %2386
  %2389 = fmul fast float %2388, %2387
  %2390 = fsub fast float 1.500000e+00, %2389
  %2391 = fmul fast float %2386, %2298
  %2392 = fmul fast float %2391, %2390
  %2393 = bitcast float %2299 to i32
  %2394 = ashr i32 %2393, 1
  %2395 = sub nsw i32 1597463174, %2394
  %2396 = bitcast i32 %2395 to float
  %2397 = fmul fast float %2299, 5.000000e-01
  %2398 = fmul fast float %2396, %2396
  %2399 = fmul fast float %2398, %2397
  %2400 = fsub fast float 1.500000e+00, %2399
  %2401 = fmul fast float %2396, %2299
  %2402 = fmul fast float %2401, %2400
  %2403 = fsub fast float %2382, %2364
  %2404 = fsub fast float %2392, %2368
  %2405 = fsub fast float %2402, %2372
  %2406 = fmul fast float %2403, %2332
  %2407 = fmul fast float %2404, %2334
  %2408 = fmul fast float %2405, %2339
  %2409 = fadd fast float %2406, %2347
  %2410 = fadd fast float %2407, %2351
  %2411 = fadd fast float %2408, %2355
  %2412 = call float @dx.op.unary.f32(i32 7, float %2409)  ; Saturate(value)
  %2413 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  %2414 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2415 = fmul fast float %2412, %2412
  %2416 = fmul fast float %2413, %2413
  %2417 = fmul fast float %2414, %2414
  %2418 = fsub fast float %2415, %2297
  %2419 = fsub fast float %2416, %2298
  %2420 = fsub fast float %2417, %2299
  %2421 = fmul fast float %2418, %2322
  %2422 = fmul fast float %2419, %2322
  %2423 = fmul fast float %2420, %2322
  %2424 = fadd fast float %2421, %2297
  %2425 = fadd fast float %2422, %2298
  %2426 = fadd fast float %2423, %2299
  %2427 = fadd fast float %2344, %2308
  %2428 = fsub fast float %2427, %2361
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = fsub fast float %2429, %2308
  %2431 = fmul fast float %2430, %2322
  %2432 = fadd fast float %2431, %2308
  br label %2486

; <label>:2433                                    ; preds = %2321
  %2434 = and i32 %2324, 134217728
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2470, label %2436

; <label>:2436                                    ; preds = %2433
  %2437 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %2438 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %2439 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %2440 = fadd fast float %2437, -5.000000e-01
  %2441 = fadd fast float %2438, -5.000000e-01
  %2442 = fadd fast float %2439, -5.000000e-01
  %2443 = fmul fast float %2440, %2322
  %2444 = fmul fast float %2441, %2322
  %2445 = fmul fast float %2442, %2322
  %2446 = fadd fast float %2443, 5.000000e-01
  %2447 = fadd fast float %2444, 5.000000e-01
  %2448 = fadd fast float %2445, 5.000000e-01
  %2449 = call float @dx.op.unary.f32(i32 24, float %2297)  ; Sqrt(value)
  %2450 = call float @dx.op.unary.f32(i32 24, float %2298)  ; Sqrt(value)
  %2451 = call float @dx.op.unary.f32(i32 24, float %2299)  ; Sqrt(value)
  %2452 = fmul fast float %2446, 2.000000e+00
  %2453 = fsub fast float 1.000000e+00, %2452
  %2454 = fmul fast float %2453, %2449
  %2455 = fadd fast float %2454, %2452
  %2456 = fmul fast float %2455, %2449
  %2457 = fmul fast float %2447, 2.000000e+00
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = fmul fast float %2458, %2450
  %2460 = fadd fast float %2459, %2457
  %2461 = fmul fast float %2460, %2450
  %2462 = fmul fast float %2448, 2.000000e+00
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = fmul fast float %2463, %2451
  %2465 = fadd fast float %2464, %2462
  %2466 = fmul fast float %2465, %2451
  %2467 = fmul fast float %2456, %2456
  %2468 = fmul fast float %2461, %2461
  %2469 = fmul fast float %2466, %2466
  br label %2486

; <label>:2470                                    ; preds = %2433
  %2471 = fmul fast float %391, %391
  %2472 = fmul fast float %395, %395
  %2473 = fmul fast float %399, %399
  %2474 = fadd fast float %2471, -1.000000e+00
  %2475 = fadd fast float %2472, -1.000000e+00
  %2476 = fadd fast float %2473, -1.000000e+00
  %2477 = fmul fast float %2322, %2474
  %2478 = fmul fast float %2322, %2475
  %2479 = fmul fast float %2322, %2476
  %2480 = fadd fast float %2477, 1.000000e+00
  %2481 = fadd fast float %2478, 1.000000e+00
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fmul fast float %2480, %2297
  %2484 = fmul fast float %2481, %2298
  %2485 = fmul fast float %2482, %2299
  br label %2486

; <label>:2486                                    ; preds = %2470, %2436, %2327, %2283
  %2487 = phi float [ %2432, %2327 ], [ %2308, %2436 ], [ %2308, %2470 ], [ 0x3FA23C0BE0000000, %2283 ]
  %2488 = phi float [ %2424, %2327 ], [ %2467, %2436 ], [ %2483, %2470 ], [ 1.000000e+00, %2283 ]
  %2489 = phi float [ %2425, %2327 ], [ %2468, %2436 ], [ %2484, %2470 ], [ 1.000000e+00, %2283 ]
  %2490 = phi float [ %2426, %2327 ], [ %2469, %2436 ], [ %2485, %2470 ], [ 1.000000e+00, %2283 ]
  %2491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.i32 %2491, 1
  %2493 = and i32 %2492, 1
  %2494 = icmp ne i32 %2493, 0
  %2495 = add i32 %63, 372
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = and i32 %2497, 32
  %2499 = icmp ne i32 %2498, 0
  %2500 = and i1 %2494, %2499
  %2501 = select i1 %2500, float 1.000000e+00, float %2488
  %2502 = select i1 %2500, float 0x3FD3333340000000, float %2489
  %2503 = select i1 %2500, float 0x3FD3333340000000, float %2490
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 32
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2580, label %2508

; <label>:2508                                    ; preds = %2486
  %2509 = add i32 %63, 124
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = add i32 %63, 416
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = add i32 %2514, 0
  %2516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2516, %dx.types.Handle %119, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2518 = extractvalue %dx.types.ResRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.ResRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.ResRet.f32 %2517, 2
  %2521 = extractvalue %dx.types.ResRet.f32 %2517, 3
  %2522 = and i32 %2511, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = lshr i32 %2511, 8
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = lshr i32 %2511, 16
  %2528 = and i32 %2527, 255
  %2529 = uitofp i32 %2528 to float
  %2530 = fmul fast float %2529, 0x3F70101000000000
  %2531 = fmul fast float %2518, %2523
  %2532 = fadd fast float %2531, %2526
  %2533 = fmul fast float %2532, 0x3F70101000000000
  %2534 = fadd fast float %2519, -5.000000e-01
  %2535 = fadd fast float %2521, -5.000000e-01
  %2536 = fmul fast float %2534, %2530
  %2537 = fmul fast float %2535, %2530
  %2538 = fadd fast float %2536, 5.000000e-01
  %2539 = fadd fast float %2537, 5.000000e-01
  %2540 = fmul fast float %2538, 2.000000e+00
  %2541 = fadd fast float %2540, -1.000000e+00
  %2542 = fmul fast float %2539, 2.000000e+00
  %2543 = fadd fast float %2542, -1.000000e+00
  %2544 = fadd fast float %2541, %2543
  %2545 = fmul fast float %2544, 5.000000e-01
  %2546 = fsub fast float %2541, %2543
  %2547 = fmul fast float %2546, 5.000000e-01
  %2548 = call float @dx.op.unary.f32(i32 6, float %2545)  ; FAbs(value)
  %2549 = fsub fast float 1.000000e+00, %2548
  %2550 = call float @dx.op.unary.f32(i32 6, float %2547)  ; FAbs(value)
  %2551 = fsub fast float %2549, %2550
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2545, float %2547, float %2551, float %2545, float %2547, float %2551)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = call float @dx.op.unary.f32(i32 25, float %2552)  ; Rsqrt(value)
  %2554 = fmul fast float %2545, %2553
  %2555 = fmul fast float %2547, %2553
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 67108864
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2576, label %2560

; <label>:2560                                    ; preds = %2508
  %2561 = add i32 %63, 312
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 65535
  %2565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2564)  ; LegacyF16ToF32(value)
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 65535
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = lshr i32 %2563, 16
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = fsub fast float %2533, %2571
  %2573 = fmul fast float %2572, %2565
  %2574 = fadd fast float %2573, %2569
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  br label %2576

; <label>:2576                                    ; preds = %2560, %2508
  %2577 = phi float [ %2575, %2560 ], [ %2533, %2508 ]
  %2578 = call float @dx.op.dot2.f32(i32 54, float %2554, float %2555, float %2112, float %2113)  ; Dot2(ax,ay,bx,by)
  %2579 = call float @dx.op.dot2.f32(i32 54, float %2554, float %2555, float %2114, float %2115)  ; Dot2(ax,ay,bx,by)
  br label %2580

; <label>:2580                                    ; preds = %2576, %2486
  %2581 = phi float [ %2577, %2576 ], [ 0x3FD6666660000000, %2486 ]
  %2582 = phi float [ %2578, %2576 ], [ 0.000000e+00, %2486 ]
  %2583 = phi float [ %2579, %2576 ], [ 0.000000e+00, %2486 ]
  %2584 = phi float [ %2520, %2576 ], [ 1.000000e+00, %2486 ]
  %2585 = add i32 %63, 192
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = lshr i32 %2587, 22
  %2589 = shl nuw nsw i32 %2588, 5
  %2590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2589)  ; LegacyF16ToF32(value)
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 64
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2628, label %2595

; <label>:2595                                    ; preds = %2580
  %2596 = add i32 %63, 432
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %2598, 0
  %2600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 131072
  %2604 = icmp eq i32 %2603, 0
  %2605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2600, %dx.types.Handle %119, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.ResRet.f32 %2605, 2
  %2609 = fmul fast float %2606, %379
  %2610 = fmul fast float %2607, %382
  %2611 = fmul fast float %2608, %385
  br i1 %2604, label %2618, label %2612

; <label>:2612                                    ; preds = %2595
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 0
  %2615 = fmul fast float %2614, %2609
  %2616 = fmul fast float %2614, %2610
  %2617 = fmul fast float %2614, %2611
  br label %2618

; <label>:2618                                    ; preds = %2612, %2595
  %2619 = phi float [ %2615, %2612 ], [ %2609, %2595 ]
  %2620 = phi float [ %2616, %2612 ], [ %2610, %2595 ]
  %2621 = phi float [ %2617, %2612 ], [ %2611, %2595 ]
  %2622 = fmul fast float %2619, %2590
  %2623 = select i1 %278, float %2622, float %2619
  %2624 = call float @dx.op.dot3.f32(i32 55, float %2623, float %2620, float %2621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2625 = select i1 %278, float 0.000000e+00, float %2619
  %2626 = select i1 %278, float %2624, float %2620
  %2627 = select i1 %278, float 0.000000e+00, float %2621
  br label %2628

; <label>:2628                                    ; preds = %2618, %2580
  %2629 = phi float [ %2625, %2618 ], [ 0.000000e+00, %2580 ]
  %2630 = phi float [ %2626, %2618 ], [ 0.000000e+00, %2580 ]
  %2631 = phi float [ %2627, %2618 ], [ 0.000000e+00, %2580 ]
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 1024
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2666, label %2636

; <label>:2636                                    ; preds = %2628
  %2637 = add i32 %63, 184
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 255
  %2641 = uitofp i32 %2640 to float
  %2642 = fmul fast float %2641, 0x3F70101020000000
  %2643 = lshr i32 %2639, 8
  %2644 = and i32 %2643, 255
  %2645 = uitofp i32 %2644 to float
  %2646 = fmul fast float %2645, 0x3F70101020000000
  %2647 = lshr i32 %2639, 16
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = fmul fast float %2649, 0x3F70101020000000
  %2651 = fmul fast float %2642, %2642
  %2652 = fmul fast float %2646, %2646
  %2653 = fmul fast float %2650, %2650
  %2654 = add i32 %63, 500
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = add i32 %2656, 0
  %2658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2658, %dx.types.Handle %120, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2663 = fmul fast float %2651, %2660
  %2664 = fmul fast float %2652, %2661
  %2665 = fmul fast float %2653, %2662
  br label %2666

; <label>:2666                                    ; preds = %2636, %2628
  %2667 = phi float [ %2663, %2636 ], [ 0.000000e+00, %2628 ]
  %2668 = phi float [ %2664, %2636 ], [ 0.000000e+00, %2628 ]
  %2669 = phi float [ %2665, %2636 ], [ 0.000000e+00, %2628 ]
  %2670 = fcmp fast ogt float %2667, 0.000000e+00
  %2671 = fcmp fast ogt float %2668, 0.000000e+00
  %2672 = fcmp fast ogt float %2669, 0.000000e+00
  %2673 = call float @dx.op.unary.f32(i32 23, float %2667)  ; Log(value)
  %2674 = call float @dx.op.unary.f32(i32 23, float %2668)  ; Log(value)
  %2675 = call float @dx.op.unary.f32(i32 23, float %2669)  ; Log(value)
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = lshr i32 %2677, 7
  %2679 = and i32 %2678, 32752
  %2680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2679)  ; LegacyF16ToF32(value)
  %2681 = fmul fast float %2673, 0xBFE62E4300000000
  %2682 = fmul fast float %2681, %2680
  %2683 = fmul fast float %2674, 0xBFE62E4300000000
  %2684 = fmul fast float %2683, %2680
  %2685 = fmul fast float %2675, 0xBFE62E4300000000
  %2686 = fmul fast float %2685, %2680
  %2687 = select i1 %2670, float %2682, float 1.270000e+02
  %2688 = select i1 %2671, float %2684, float 1.270000e+02
  %2689 = select i1 %2672, float %2686, float 1.270000e+02
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 26624
  %2693 = icmp eq i32 %2692, 0
  br i1 %2693, label %2730, label %2694

; <label>:2694                                    ; preds = %2666
  %2695 = add i32 %63, 516
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = add i32 %2697, 0
  %2699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2699, %dx.types.Handle %120, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2701 = extractvalue %dx.types.ResRet.f32 %2700, 0
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = and i32 %2703, 1048576
  %2705 = icmp ne i32 %2704, 0
  %2706 = and i32 %2703, 2048
  %2707 = icmp eq i32 %2706, 0
  br i1 %2707, label %2717, label %2708

; <label>:2708                                    ; preds = %2694
  %2709 = extractvalue %dx.types.ResRet.f32 %2700, 3
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = shl i32 %2711, 4
  %2713 = and i32 %2712, 32752
  %2714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2713)  ; LegacyF16ToF32(value)
  %2715 = fmul fast float %2714, %2709
  %2716 = call float @dx.op.binary.f32(i32 35, float %2715, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2717

; <label>:2717                                    ; preds = %2708, %2694
  %2718 = phi float [ %2716, %2708 ], [ 0x3F70101020000000, %2694 ]
  %2719 = and i32 %2703, 16384
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2730, label %2721

; <label>:2721                                    ; preds = %2717
  %2722 = add i32 %63, 128
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = lshr i32 %2724, 24
  %2726 = uitofp i32 %2725 to float
  %2727 = fmul fast float %2701, 0x3F70101020000000
  %2728 = select i1 %2705, float 0x3F70101020000000, float %2727
  %2729 = fmul fast float %2728, %2726
  br label %2730

; <label>:2730                                    ; preds = %2721, %2717, %2666
  %2731 = phi float [ %2718, %2721 ], [ %2718, %2717 ], [ 0x3F70101020000000, %2666 ]
  %2732 = phi float [ %2729, %2721 ], [ 0.000000e+00, %2717 ], [ 0.000000e+00, %2666 ]
  %2733 = add i32 %63, 128
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 255
  %2737 = uitofp i32 %2736 to float
  %2738 = lshr i32 %2735, 8
  %2739 = and i32 %2738, 255
  %2740 = uitofp i32 %2739 to float
  %2741 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2502, float %2503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2742 = fmul fast float %2740, %2741
  %2743 = fadd fast float %2742, %2737
  %2744 = fmul fast float %2743, 0x3F70101020000000
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  br i1 %2100, label %2746, label %2781

; <label>:2746                                    ; preds = %2730
  %2747 = fmul fast float %2731, 2.000000e+00
  %2748 = fcmp fast olt float %2687, 1.270000e+02
  %2749 = fcmp fast olt float %2688, 1.270000e+02
  %2750 = fcmp fast olt float %2689, 1.270000e+02
  %2751 = fmul fast float %2687, 0xBFF7154760000000
  %2752 = fmul fast float %2751, %2747
  %2753 = fmul fast float %2688, 0xBFF7154760000000
  %2754 = fmul fast float %2753, %2747
  %2755 = fmul fast float %2689, 0xBFF7154760000000
  %2756 = fmul fast float %2755, %2747
  %2757 = call float @dx.op.unary.f32(i32 21, float %2752)  ; Exp(value)
  %2758 = call float @dx.op.unary.f32(i32 21, float %2754)  ; Exp(value)
  %2759 = call float @dx.op.unary.f32(i32 21, float %2756)  ; Exp(value)
  %2760 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  %2761 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2762 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2763 = fadd fast float %2760, -1.000000e+00
  %2764 = select i1 %2748, float %2763, float -1.000000e+00
  %2765 = fadd fast float %2761, -1.000000e+00
  %2766 = select i1 %2749, float %2765, float -1.000000e+00
  %2767 = fadd fast float %2762, -1.000000e+00
  %2768 = select i1 %2750, float %2767, float -1.000000e+00
  %2769 = fmul fast float %2764, %2281
  %2770 = fmul fast float %2766, %2281
  %2771 = fmul fast float %2768, %2281
  %2772 = fadd fast float %2769, 1.000000e+00
  %2773 = fadd fast float %2770, 1.000000e+00
  %2774 = fadd fast float %2771, 1.000000e+00
  %2775 = fmul fast float %2772, %2087
  %2776 = fmul fast float %2773, %2088
  %2777 = fmul fast float %2774, %2089
  %2778 = fmul fast float %2772, %2090
  %2779 = fmul fast float %2773, %2091
  %2780 = fmul fast float %2774, %2092
  br label %2781

; <label>:2781                                    ; preds = %2746, %2730
  %2782 = phi float [ %2775, %2746 ], [ %2087, %2730 ]
  %2783 = phi float [ %2776, %2746 ], [ %2088, %2730 ]
  %2784 = phi float [ %2777, %2746 ], [ %2089, %2730 ]
  %2785 = phi float [ %2778, %2746 ], [ %2090, %2730 ]
  %2786 = phi float [ %2779, %2746 ], [ %2091, %2730 ]
  %2787 = phi float [ %2780, %2746 ], [ %2092, %2730 ]
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = and i32 %2789, 3
  %2791 = icmp eq i32 %2790, 3
  br i1 %2791, label %2870, label %2792

; <label>:2792                                    ; preds = %2781
  %2793 = and i32 %2789, 16
  %2794 = icmp ne i32 %2793, 0
  %2795 = select i1 %2794, float %2281, float 0.000000e+00
  %2796 = icmp eq i32 %2790, 0
  br i1 %2796, label %2797, label %2825

; <label>:2797                                    ; preds = %2792
  %2798 = and i32 %2789, 64
  %2799 = icmp ne i32 %2798, 0
  %2800 = select i1 %2799, float %2281, float 0.000000e+00
  %2801 = fsub fast float %2501, %2782
  %2802 = fsub fast float %2502, %2783
  %2803 = fsub fast float %2503, %2784
  %2804 = fmul fast float %2795, %2801
  %2805 = fmul fast float %2795, %2802
  %2806 = fmul fast float %2795, %2803
  %2807 = fadd fast float %2804, %2782
  %2808 = fadd fast float %2805, %2783
  %2809 = fadd fast float %2806, %2784
  %2810 = fsub fast float %2487, %2093
  %2811 = fmul fast float %2795, %2810
  %2812 = fadd fast float %2811, %2093
  %2813 = fsub fast float %2629, %2785
  %2814 = fsub fast float %2630, %2786
  %2815 = fsub fast float %2631, %2787
  %2816 = fmul fast float %2800, %2813
  %2817 = fmul fast float %2800, %2814
  %2818 = fmul fast float %2800, %2815
  %2819 = fadd fast float %2816, %2785
  %2820 = fadd fast float %2817, %2786
  %2821 = fadd fast float %2818, %2787
  %2822 = fsub fast float %2745, %2098
  %2823 = fmul fast float %2795, %2822
  %2824 = fadd fast float %2823, %2098
  br label %2870

; <label>:2825                                    ; preds = %2792
  %2826 = icmp eq i32 %2790, 1
  br i1 %2826, label %2827, label %2840

; <label>:2827                                    ; preds = %2825
  %2828 = fadd fast float %2501, -1.000000e+00
  %2829 = fadd fast float %2502, -1.000000e+00
  %2830 = fadd fast float %2503, -1.000000e+00
  %2831 = fmul fast float %2795, %2828
  %2832 = fmul fast float %2795, %2829
  %2833 = fmul fast float %2795, %2830
  %2834 = fadd fast float %2831, 1.000000e+00
  %2835 = fadd fast float %2832, 1.000000e+00
  %2836 = fadd fast float %2833, 1.000000e+00
  %2837 = fmul fast float %2834, %2782
  %2838 = fmul fast float %2835, %2783
  %2839 = fmul fast float %2836, %2784
  br label %2870

; <label>:2840                                    ; preds = %2825
  %2841 = icmp eq i32 %2790, 2
  br i1 %2841, label %2842, label %2870

; <label>:2842                                    ; preds = %2840
  %2843 = call float @dx.op.unary.f32(i32 24, float %2501)  ; Sqrt(value)
  %2844 = call float @dx.op.unary.f32(i32 24, float %2502)  ; Sqrt(value)
  %2845 = call float @dx.op.unary.f32(i32 24, float %2503)  ; Sqrt(value)
  %2846 = fadd fast float %2843, -5.000000e-01
  %2847 = fadd fast float %2844, -5.000000e-01
  %2848 = fadd fast float %2845, -5.000000e-01
  %2849 = fmul fast float %2846, %2795
  %2850 = fmul fast float %2847, %2795
  %2851 = fmul fast float %2848, %2795
  %2852 = fadd fast float %2849, 5.000000e-01
  %2853 = fadd fast float %2850, 5.000000e-01
  %2854 = fadd fast float %2851, 5.000000e-01
  %2855 = fmul fast float %2852, 2.000000e+00
  %2856 = fsub fast float 1.000000e+00, %2855
  %2857 = fmul fast float %2856, %2782
  %2858 = fadd fast float %2857, %2855
  %2859 = fmul fast float %2858, %2782
  %2860 = fmul fast float %2853, 2.000000e+00
  %2861 = fsub fast float 1.000000e+00, %2860
  %2862 = fmul fast float %2861, %2783
  %2863 = fadd fast float %2862, %2860
  %2864 = fmul fast float %2863, %2783
  %2865 = fmul fast float %2854, 2.000000e+00
  %2866 = fsub fast float 1.000000e+00, %2865
  %2867 = fmul fast float %2866, %2784
  %2868 = fadd fast float %2867, %2865
  %2869 = fmul fast float %2868, %2784
  br label %2870

; <label>:2870                                    ; preds = %2842, %2840, %2827, %2797, %2781
  %2871 = phi float [ %2782, %2781 ], [ %2859, %2842 ], [ %2782, %2840 ], [ %2837, %2827 ], [ %2807, %2797 ]
  %2872 = phi float [ %2783, %2781 ], [ %2864, %2842 ], [ %2783, %2840 ], [ %2838, %2827 ], [ %2808, %2797 ]
  %2873 = phi float [ %2784, %2781 ], [ %2869, %2842 ], [ %2784, %2840 ], [ %2839, %2827 ], [ %2809, %2797 ]
  %2874 = phi float [ %2785, %2781 ], [ %2785, %2842 ], [ %2785, %2840 ], [ %2785, %2827 ], [ %2819, %2797 ]
  %2875 = phi float [ %2786, %2781 ], [ %2786, %2842 ], [ %2786, %2840 ], [ %2786, %2827 ], [ %2820, %2797 ]
  %2876 = phi float [ %2787, %2781 ], [ %2787, %2842 ], [ %2787, %2840 ], [ %2787, %2827 ], [ %2821, %2797 ]
  %2877 = phi float [ %2093, %2781 ], [ %2093, %2842 ], [ %2093, %2840 ], [ %2093, %2827 ], [ %2812, %2797 ]
  %2878 = phi float [ %2098, %2781 ], [ %2098, %2842 ], [ %2098, %2840 ], [ %2098, %2827 ], [ %2824, %2797 ]
  %2879 = and i32 %2789, 12
  %2880 = icmp eq i32 %2879, 12
  br i1 %2880, label %2997, label %2881

; <label>:2881                                    ; preds = %2870
  %2882 = and i32 %2789, 2097184
  %2883 = icmp eq i32 %2882, 2097184
  %2884 = select i1 %2883, float %2281, float 0.000000e+00
  %2885 = and i32 %2789, 4194336
  %2886 = icmp eq i32 %2885, 4194336
  %2887 = select i1 %2886, float %2281, float 0.000000e+00
  %2888 = and i32 %2789, 8388640
  %2889 = icmp eq i32 %2888, 8388640
  %2890 = select i1 %2889, float %2281, float 0.000000e+00
  %2891 = and i32 %2789, 1024
  %2892 = icmp ne i32 %2891, 0
  %2893 = select i1 %2892, float %2281, float 0.000000e+00
  %2894 = and i32 %2789, 2048
  %2895 = icmp ne i32 %2894, 0
  %2896 = select i1 %2895, float %2281, float 0.000000e+00
  %2897 = and i32 %2789, 16384
  %2898 = icmp ne i32 %2897, 0
  %2899 = select i1 %2898, float %2281, float 0.000000e+00
  %2900 = icmp eq i32 %2879, 0
  br i1 %2900, label %2901, label %2929

; <label>:2901                                    ; preds = %2881
  %2902 = fsub fast float %2582, %2082
  %2903 = fsub fast float %2583, %2083
  %2904 = fmul fast float %2884, %2902
  %2905 = fmul fast float %2884, %2903
  %2906 = fadd fast float %2904, %2082
  %2907 = fadd fast float %2905, %2083
  %2908 = fsub fast float %2584, %2095
  %2909 = fmul fast float %2887, %2908
  %2910 = fadd fast float %2909, %2095
  %2911 = fsub fast float %2581, %2094
  %2912 = fmul fast float %2890, %2911
  %2913 = fadd fast float %2912, %2094
  %2914 = fsub fast float %2687, %2084
  %2915 = fsub fast float %2688, %2085
  %2916 = fsub fast float %2689, %2086
  %2917 = fmul fast float %2893, %2914
  %2918 = fmul fast float %2893, %2915
  %2919 = fmul fast float %2893, %2916
  %2920 = fadd fast float %2917, %2084
  %2921 = fadd fast float %2918, %2085
  %2922 = fadd fast float %2919, %2086
  %2923 = fsub fast float %2731, %2096
  %2924 = fmul fast float %2896, %2923
  %2925 = fadd fast float %2924, %2096
  %2926 = fsub fast float %2732, %2097
  %2927 = fmul fast float %2899, %2926
  %2928 = fadd fast float %2927, %2097
  br label %2997

; <label>:2929                                    ; preds = %2881
  %2930 = icmp eq i32 %2879, 4
  br i1 %2930, label %2931, label %2973

; <label>:2931                                    ; preds = %2929
  %2932 = fmul fast float %2884, %2582
  %2933 = fmul fast float %2884, %2583
  %2934 = fadd fast float %2932, %2082
  %2935 = fadd fast float %2933, %2083
  %2936 = call float @dx.op.binary.f32(i32 36, float %2095, float %2584)  ; FMin(a,b)
  %2937 = fsub fast float %2936, %2095
  %2938 = fmul fast float %2937, %2887
  %2939 = fadd fast float %2938, %2095
  %2940 = fadd fast float %2581, %2094
  %2941 = fmul fast float %2940, 0x3FF337FAE0000000
  %2942 = fmul fast float %2094, %2094
  %2943 = fmul fast float %2581, %2581
  %2944 = fadd fast float %2943, %2942
  %2945 = fmul fast float %2944, 0x3FE5152B00000000
  %2946 = fmul fast float %2094, 0xBFCC1F85E0000000
  %2947 = fmul fast float %2946, %2581
  %2948 = fadd fast float %2947, 0xBFE1363700000000
  %2949 = fadd fast float %2948, %2941
  %2950 = fsub fast float %2949, %2945
  %2951 = fmul fast float %2940, 0x3FBA6F0D00000000
  %2952 = fmul fast float %2944, 0x3FD0432880000000
  %2953 = fmul fast float %2094, 0xBFEF110800000000
  %2954 = fmul fast float %2953, %2581
  %2955 = fadd fast float %2954, 1.000000e+00
  %2956 = fsub fast float %2955, %2951
  %2957 = fadd fast float %2956, %2952
  %2958 = fdiv fast float %2950, %2957
  %2959 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2960 = fsub fast float %2959, %2094
  %2961 = fmul fast float %2960, %2890
  %2962 = fadd fast float %2961, %2094
  %2963 = fmul fast float %2893, %2687
  %2964 = fmul fast float %2893, %2688
  %2965 = fmul fast float %2893, %2689
  %2966 = fadd fast float %2963, %2084
  %2967 = fadd fast float %2964, %2085
  %2968 = fadd fast float %2965, %2086
  %2969 = fmul fast float %2896, %2731
  %2970 = fadd fast float %2969, %2096
  %2971 = fmul fast float %2899, %2732
  %2972 = fadd fast float %2971, %2097
  br label %2997

; <label>:2973                                    ; preds = %2929
  %2974 = icmp eq i32 %2879, 8
  br i1 %2974, label %2975, label %2997

; <label>:2975                                    ; preds = %2973
  %2976 = fmul fast float %2884, %2582
  %2977 = fmul fast float %2884, %2583
  %2978 = fadd fast float %2976, %2082
  %2979 = fadd fast float %2977, %2083
  %2980 = call float @dx.op.binary.f32(i32 36, float %2095, float %2584)  ; FMin(a,b)
  %2981 = fsub fast float %2980, %2095
  %2982 = fmul fast float %2981, %2887
  %2983 = fadd fast float %2982, %2095
  %2984 = fsub fast float %2581, %2094
  %2985 = fmul fast float %2890, %2984
  %2986 = fadd fast float %2985, %2094
  %2987 = fmul fast float %2893, %2687
  %2988 = fmul fast float %2893, %2688
  %2989 = fmul fast float %2893, %2689
  %2990 = fadd fast float %2987, %2084
  %2991 = fadd fast float %2988, %2085
  %2992 = fadd fast float %2989, %2086
  %2993 = fmul fast float %2896, %2731
  %2994 = fadd fast float %2993, %2096
  %2995 = fmul fast float %2899, %2732
  %2996 = fadd fast float %2995, %2097
  br label %2997

; <label>:2997                                    ; preds = %2975, %2973, %2931, %2901, %2870, %2280, %2099, %2081
  %2998 = phi float [ %2082, %2870 ], [ %2082, %2280 ], [ %2082, %2081 ], [ %2978, %2975 ], [ %2082, %2973 ], [ %2934, %2931 ], [ %2906, %2901 ], [ %2082, %2099 ]
  %2999 = phi float [ %2083, %2870 ], [ %2083, %2280 ], [ %2083, %2081 ], [ %2979, %2975 ], [ %2083, %2973 ], [ %2935, %2931 ], [ %2907, %2901 ], [ %2083, %2099 ]
  %3000 = phi float [ %2084, %2870 ], [ %2084, %2280 ], [ %2084, %2081 ], [ %2990, %2975 ], [ %2084, %2973 ], [ %2966, %2931 ], [ %2920, %2901 ], [ %2084, %2099 ]
  %3001 = phi float [ %2085, %2870 ], [ %2085, %2280 ], [ %2085, %2081 ], [ %2991, %2975 ], [ %2085, %2973 ], [ %2967, %2931 ], [ %2921, %2901 ], [ %2085, %2099 ]
  %3002 = phi float [ %2086, %2870 ], [ %2086, %2280 ], [ %2086, %2081 ], [ %2992, %2975 ], [ %2086, %2973 ], [ %2968, %2931 ], [ %2922, %2901 ], [ %2086, %2099 ]
  %3003 = phi float [ %2871, %2870 ], [ %2087, %2280 ], [ %2087, %2081 ], [ %2871, %2975 ], [ %2871, %2973 ], [ %2871, %2931 ], [ %2871, %2901 ], [ %2087, %2099 ]
  %3004 = phi float [ %2872, %2870 ], [ %2088, %2280 ], [ %2088, %2081 ], [ %2872, %2975 ], [ %2872, %2973 ], [ %2872, %2931 ], [ %2872, %2901 ], [ %2088, %2099 ]
  %3005 = phi float [ %2873, %2870 ], [ %2089, %2280 ], [ %2089, %2081 ], [ %2873, %2975 ], [ %2873, %2973 ], [ %2873, %2931 ], [ %2873, %2901 ], [ %2089, %2099 ]
  %3006 = phi float [ %2874, %2870 ], [ %2090, %2280 ], [ %2090, %2081 ], [ %2874, %2975 ], [ %2874, %2973 ], [ %2874, %2931 ], [ %2874, %2901 ], [ %2090, %2099 ]
  %3007 = phi float [ %2875, %2870 ], [ %2091, %2280 ], [ %2091, %2081 ], [ %2875, %2975 ], [ %2875, %2973 ], [ %2875, %2931 ], [ %2875, %2901 ], [ %2091, %2099 ]
  %3008 = phi float [ %2876, %2870 ], [ %2092, %2280 ], [ %2092, %2081 ], [ %2876, %2975 ], [ %2876, %2973 ], [ %2876, %2931 ], [ %2876, %2901 ], [ %2092, %2099 ]
  %3009 = phi float [ %2877, %2870 ], [ %2093, %2280 ], [ %2093, %2081 ], [ %2877, %2975 ], [ %2877, %2973 ], [ %2877, %2931 ], [ %2877, %2901 ], [ %2093, %2099 ]
  %3010 = phi float [ %2094, %2870 ], [ %2094, %2280 ], [ %2094, %2081 ], [ %2986, %2975 ], [ %2094, %2973 ], [ %2962, %2931 ], [ %2913, %2901 ], [ %2094, %2099 ]
  %3011 = phi float [ %2095, %2870 ], [ %2095, %2280 ], [ %2095, %2081 ], [ %2983, %2975 ], [ %2095, %2973 ], [ %2939, %2931 ], [ %2910, %2901 ], [ %2095, %2099 ]
  %3012 = phi float [ %2096, %2870 ], [ %2096, %2280 ], [ %2096, %2081 ], [ %2994, %2975 ], [ %2096, %2973 ], [ %2970, %2931 ], [ %2925, %2901 ], [ %2096, %2099 ]
  %3013 = phi float [ %2097, %2870 ], [ %2097, %2280 ], [ %2097, %2081 ], [ %2996, %2975 ], [ %2097, %2973 ], [ %2972, %2931 ], [ %2928, %2901 ], [ %2097, %2099 ]
  %3014 = phi float [ %2878, %2870 ], [ %2098, %2280 ], [ %2098, %2081 ], [ %2878, %2975 ], [ %2878, %2973 ], [ %2878, %2931 ], [ %2878, %2901 ], [ %2098, %2099 ]
  br i1 %466, label %3913, label %3015

; <label>:3015                                    ; preds = %2997
  %3016 = icmp ult i32 %520, 4
  %3017 = add i32 %63, 72
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %63, 76
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = or i32 %3022, %3019
  %3024 = icmp eq i32 %3023, 0
  br i1 %3024, label %3913, label %3025

; <label>:3025                                    ; preds = %3015
  %3026 = and i32 %3019, 262144
  %3027 = icmp ne i32 %3026, 0
  %3028 = select i1 %3027, float %69, float 1.000000e+00
  %3029 = select i1 %3027, float %70, float 0.000000e+00
  %3030 = select i1 %3027, float %71, float 0.000000e+00
  %3031 = select i1 %3027, float %72, float 1.000000e+00
  %3032 = select i1 %3027, float %73, float %101
  %3033 = select i1 %3027, float %74, float %102
  %3034 = add i32 %63, 332
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = lshr i32 %3036, 16
  %3038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3037)  ; LegacyF16ToF32(value)
  %3039 = fmul fast float %3038, 0x3F50624DE0000000
  %3040 = add i32 %63, 136
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = lshr i32 %3042, 16
  %3044 = and i32 %3043, 255
  %3045 = lshr i32 %3042, 24
  %3046 = add i32 %63, 340
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 65535
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = lshr i32 %3048, 16
  %3052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3051)  ; LegacyF16ToF32(value)
  %3053 = add i32 %63, 80
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = lshr i32 %3055, 22
  %3057 = shl nuw nsw i32 %3056, 5
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = shl i32 %3055, 4
  %3060 = and i32 %3059, 32752
  %3061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3060)  ; LegacyF16ToF32(value)
  %3062 = lshr i32 %3055, 7
  %3063 = and i32 %3062, 32752
  %3064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3063)  ; LegacyF16ToF32(value)
  %3065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3066 = extractvalue %dx.types.CBufRet.f32 %3065, 3
  %3067 = fmul fast float %3066, 1.000000e+03
  %3068 = fmul fast float %456, %3067
  %3069 = call float @dx.op.unary.f32(i32 22, float %3068)  ; Frc(value)
  %3070 = fadd fast float %3069, %446
  %3071 = fmul fast float %457, %3067
  %3072 = call float @dx.op.unary.f32(i32 22, float %3071)  ; Frc(value)
  %3073 = fadd fast float %3072, %448
  %3074 = fmul fast float %3039, %3067
  %3075 = call float @dx.op.unary.f32(i32 22, float %3074)  ; Frc(value)
  %3076 = fmul fast float %3075, 0x401921FB60000000
  %3077 = fadd fast float %3076, %3058
  %3078 = call float @dx.op.unary.f32(i32 13, float %3077)  ; Sin(value)
  %3079 = call float @dx.op.unary.f32(i32 12, float %3077)  ; Cos(value)
  %3080 = fsub fast float -0.000000e+00, %3078
  %3081 = fadd fast float %3032, -5.000000e-01
  %3082 = fadd fast float %3033, -5.000000e-01
  %3083 = fmul fast float %3050, %3081
  %3084 = fmul fast float %3052, %3082
  %3085 = fadd fast float %3083, 5.000000e-01
  %3086 = fadd fast float %3084, 5.000000e-01
  %3087 = fmul fast float %3061, %3085
  %3088 = fmul fast float %3064, %3086
  %3089 = fmul fast float %3079, %3087
  %3090 = call float @dx.op.tertiary.f32(i32 46, float %3080, float %3088, float %3089)  ; FMad(a,b,c)
  %3091 = fmul fast float %3078, %3087
  %3092 = call float @dx.op.tertiary.f32(i32 46, float %3079, float %3088, float %3091)  ; FMad(a,b,c)
  %3093 = fadd fast float %3070, %3090
  %3094 = fadd fast float %3073, %3092
  %3095 = icmp ugt i32 %3044, 1
  %3096 = icmp ugt i32 %3042, 33554431
  %3097 = or i1 %3096, %3095
  br i1 %3097, label %3098, label %3123

; <label>:3098                                    ; preds = %3025
  %3099 = add i32 %63, 276
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = lshr i32 %3101, 16
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = fmul fast float %3066, %3103
  %3105 = call float @dx.op.unary.f32(i32 22, float %3104)  ; Frc(value)
  %3106 = mul nuw nsw i32 %3044, %3045
  %3107 = uitofp i32 %3106 to float
  %3108 = fmul fast float %3105, %3107
  %3109 = call float @dx.op.unary.f32(i32 27, float %3108)  ; Round_ni(value)
  %3110 = fptoui float %3109 to i32
  %3111 = urem i32 %3110, %3044
  %3112 = udiv i32 %3110, %3045
  %3113 = call float @dx.op.unary.f32(i32 22, float %3093)  ; Frc(value)
  %3114 = call float @dx.op.unary.f32(i32 22, float %3094)  ; Frc(value)
  %3115 = uitofp i32 %3111 to float
  %3116 = uitofp i32 %3112 to float
  %3117 = fadd fast float %3113, %3115
  %3118 = fadd fast float %3114, %3116
  %3119 = uitofp i32 %3044 to float
  %3120 = uitofp i32 %3045 to float
  %3121 = fdiv fast float %3117, %3119
  %3122 = fdiv fast float %3118, %3120
  br label %3123

; <label>:3123                                    ; preds = %3098, %3025
  %3124 = phi float [ %3121, %3098 ], [ %3093, %3025 ]
  %3125 = phi float [ %3122, %3098 ], [ %3094, %3025 ]
  %3126 = and i32 %3019, 256
  %3127 = icmp eq i32 %3126, 0
  br i1 %3127, label %3174, label %3128

; <label>:3128                                    ; preds = %3123
  %3129 = add i32 %63, 468
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = add i32 %3131, 0
  %3133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3133, %dx.types.Handle %120, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  %3136 = add i32 %63, 148
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = shl i32 %3138, 4
  %3140 = and i32 %3139, 32752
  %3141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3140)  ; LegacyF16ToF32(value)
  %3142 = lshr i32 %3138, 7
  %3143 = and i32 %3142, 32752
  %3144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3143)  ; LegacyF16ToF32(value)
  %3145 = fsub fast float 1.000000e+00, %515
  %3146 = call float @dx.op.binary.f32(i32 35, float %3145, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3147 = bitcast float %515 to i32
  %3148 = sitofp i32 %3147 to float
  %3149 = fadd fast float %3148, 0xC1CFBF8940000000
  %3150 = fmul fast float %3144, %3149
  %3151 = fadd fast float %3150, 0x41CFBF8940000000
  %3152 = fptosi float %3151 to i32
  %3153 = bitcast i32 %3152 to float
  %3154 = bitcast float %3146 to i32
  %3155 = sitofp i32 %3154 to float
  %3156 = fadd fast float %3155, 0xC1CFBF8940000000
  %3157 = fmul fast float %3156, %3144
  %3158 = fadd fast float %3157, 0x41CFBF8940000000
  %3159 = fptosi float %3158 to i32
  %3160 = bitcast i32 %3159 to float
  %3161 = fmul fast float %3153, %3141
  %3162 = fmul fast float %3160, %3141
  %3163 = fsub fast float %3146, %3161
  %3164 = fadd fast float %3162, %3146
  %3165 = call float @dx.op.unary.f32(i32 7, float %3163)  ; Saturate(value)
  %3166 = call float @dx.op.unary.f32(i32 7, float %3164)  ; Saturate(value)
  %3167 = fsub fast float %3135, %3165
  %3168 = fsub fast float %3166, %3165
  %3169 = bitcast float %3168 to i32
  %3170 = sub nsw i32 2129859010, %3169
  %3171 = bitcast i32 %3170 to float
  %3172 = fmul fast float %3171, %3167
  %3173 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  br label %3174

; <label>:3174                                    ; preds = %3128, %3123
  %3175 = phi float [ %3173, %3128 ], [ %515, %3123 ]
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = and i32 %3177, 128
  %3179 = icmp eq i32 %3178, 0
  br i1 %3179, label %3196, label %3180

; <label>:3180                                    ; preds = %3174
  %3181 = add i32 %63, 452
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = add i32 %3183, 0
  %3185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3185, %dx.types.Handle %120, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, 524288
  %3191 = icmp ne i32 %3190, 0
  %3192 = fcmp fast ogt float %3187, 0x3FE0101020000000
  %3193 = select i1 %3192, float 1.000000e+00, float 0.000000e+00
  %3194 = select i1 %3191, float %3193, float %3187
  %3195 = fmul fast float %3194, %3175
  br label %3196

; <label>:3196                                    ; preds = %3180, %3174
  %3197 = phi float [ %3195, %3180 ], [ %3175, %3174 ]
  %3198 = fcmp fast ult float %3197, 0x3F70101020000000
  br i1 %3198, label %3913, label %3199

; <label>:3199                                    ; preds = %3196
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 16
  %3203 = icmp eq i32 %3202, 0
  br i1 %3203, label %3402, label %3204

; <label>:3204                                    ; preds = %3199
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %63, 404
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = add i32 %3209, 0
  %3211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3211, %dx.types.Handle %119, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = extractvalue %dx.types.ResRet.f32 %3212, 3
  %3217 = and i32 %3206, 255
  %3218 = uitofp i32 %3217 to float
  %3219 = lshr i32 %3206, 8
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3216, %3218
  %3223 = fadd fast float %3222, %3221
  %3224 = fmul fast float %3223, 0x3F70101000000000
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 512
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3237, label %3229

; <label>:3229                                    ; preds = %3204
  %3230 = add i32 %63, 488
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = add i32 %3232, 0
  %3234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3234, %dx.types.Handle %120, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  br label %3237

; <label>:3237                                    ; preds = %3229, %3204
  %3238 = phi float [ %3236, %3229 ], [ 1.000000e+00, %3204 ]
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 33554432
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3349, label %3243

; <label>:3243                                    ; preds = %3237
  %3244 = add i32 %63, 272
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %3246, 65535
  %3248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3247)  ; LegacyF16ToF32(value)
  %3249 = lshr i32 %3246, 16
  %3250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3249)  ; LegacyF16ToF32(value)
  %3251 = add i32 %63, 276
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = and i32 %3253, 65535
  %3255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3254)  ; LegacyF16ToF32(value)
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = lshr i32 %3257, 24
  %3259 = uitofp i32 %3258 to float
  %3260 = fmul fast float %3259, 0x3F70101020000000
  %3261 = and i32 %3257, 255
  %3262 = uitofp i32 %3261 to float
  %3263 = fmul fast float %3262, 0x3F70101020000000
  %3264 = lshr i32 %3257, 8
  %3265 = and i32 %3264, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = fmul fast float %3266, 0x3F70101020000000
  %3268 = lshr i32 %3257, 16
  %3269 = and i32 %3268, 255
  %3270 = uitofp i32 %3269 to float
  %3271 = fmul fast float %3270, 0x3F70101020000000
  %3272 = add i32 %63, 268
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = lshr i32 %3274, 24
  %3276 = uitofp i32 %3275 to float
  %3277 = fmul fast float %3276, 0x3F70101020000000
  %3278 = and i32 %3274, 255
  %3279 = uitofp i32 %3278 to float
  %3280 = fmul fast float %3279, 0x3F70101020000000
  %3281 = lshr i32 %3274, 8
  %3282 = and i32 %3281, 255
  %3283 = uitofp i32 %3282 to float
  %3284 = fmul fast float %3283, 0x3F70101020000000
  %3285 = lshr i32 %3274, 16
  %3286 = and i32 %3285, 255
  %3287 = uitofp i32 %3286 to float
  %3288 = fmul fast float %3287, 0x3F70101020000000
  %3289 = bitcast float %3213 to i32
  %3290 = ashr i32 %3289, 1
  %3291 = sub nsw i32 1597463174, %3290
  %3292 = bitcast i32 %3291 to float
  %3293 = fmul fast float %3213, 5.000000e-01
  %3294 = fmul fast float %3292, %3292
  %3295 = fmul fast float %3294, %3293
  %3296 = fsub fast float 1.500000e+00, %3295
  %3297 = fmul fast float %3292, %3213
  %3298 = fmul fast float %3297, %3296
  %3299 = bitcast float %3214 to i32
  %3300 = ashr i32 %3299, 1
  %3301 = sub nsw i32 1597463174, %3300
  %3302 = bitcast i32 %3301 to float
  %3303 = fmul fast float %3214, 5.000000e-01
  %3304 = fmul fast float %3302, %3302
  %3305 = fmul fast float %3304, %3303
  %3306 = fsub fast float 1.500000e+00, %3305
  %3307 = fmul fast float %3302, %3214
  %3308 = fmul fast float %3307, %3306
  %3309 = bitcast float %3215 to i32
  %3310 = ashr i32 %3309, 1
  %3311 = sub nsw i32 1597463174, %3310
  %3312 = bitcast i32 %3311 to float
  %3313 = fmul fast float %3215, 5.000000e-01
  %3314 = fmul fast float %3312, %3312
  %3315 = fmul fast float %3314, %3313
  %3316 = fsub fast float 1.500000e+00, %3315
  %3317 = fmul fast float %3312, %3215
  %3318 = fmul fast float %3317, %3316
  %3319 = fsub fast float %3298, %3280
  %3320 = fsub fast float %3308, %3284
  %3321 = fsub fast float %3318, %3288
  %3322 = fmul fast float %3319, %3248
  %3323 = fmul fast float %3320, %3250
  %3324 = fmul fast float %3321, %3255
  %3325 = fadd fast float %3322, %3263
  %3326 = fadd fast float %3323, %3267
  %3327 = fadd fast float %3324, %3271
  %3328 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  %3329 = call float @dx.op.unary.f32(i32 7, float %3326)  ; Saturate(value)
  %3330 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3331 = fmul fast float %3328, %3328
  %3332 = fmul fast float %3329, %3329
  %3333 = fmul fast float %3330, %3330
  %3334 = fsub fast float %3331, %3213
  %3335 = fsub fast float %3332, %3214
  %3336 = fsub fast float %3333, %3215
  %3337 = fmul fast float %3334, %3238
  %3338 = fmul fast float %3335, %3238
  %3339 = fmul fast float %3336, %3238
  %3340 = fadd fast float %3337, %3213
  %3341 = fadd fast float %3338, %3214
  %3342 = fadd fast float %3339, %3215
  %3343 = fadd fast float %3260, %3224
  %3344 = fsub fast float %3343, %3277
  %3345 = call float @dx.op.unary.f32(i32 7, float %3344)  ; Saturate(value)
  %3346 = fsub fast float %3345, %3224
  %3347 = fmul fast float %3346, %3238
  %3348 = fadd fast float %3347, %3224
  br label %3402

; <label>:3349                                    ; preds = %3237
  %3350 = and i32 %3240, 134217728
  %3351 = icmp eq i32 %3350, 0
  br i1 %3351, label %3386, label %3352

; <label>:3352                                    ; preds = %3349
  %3353 = call float @dx.op.unary.f32(i32 24, float %433)  ; Sqrt(value)
  %3354 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %3355 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fadd fast float %3355, -5.000000e-01
  %3359 = fmul fast float %3356, %3238
  %3360 = fmul fast float %3357, %3238
  %3361 = fmul fast float %3358, %3238
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fadd fast float %3361, 5.000000e-01
  %3365 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3366 = call float @dx.op.unary.f32(i32 24, float %3214)  ; Sqrt(value)
  %3367 = call float @dx.op.unary.f32(i32 24, float %3215)  ; Sqrt(value)
  %3368 = fmul fast float %3362, 2.000000e+00
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3369, %3365
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %3365
  %3373 = fmul fast float %3363, 2.000000e+00
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = fmul fast float %3374, %3366
  %3376 = fadd fast float %3375, %3373
  %3377 = fmul fast float %3376, %3366
  %3378 = fmul fast float %3364, 2.000000e+00
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = fmul fast float %3379, %3367
  %3381 = fadd fast float %3380, %3378
  %3382 = fmul fast float %3381, %3367
  %3383 = fmul fast float %3372, %3372
  %3384 = fmul fast float %3377, %3377
  %3385 = fmul fast float %3382, %3382
  br label %3402

; <label>:3386                                    ; preds = %3349
  %3387 = fmul fast float %433, %433
  %3388 = fmul fast float %437, %437
  %3389 = fmul fast float %441, %441
  %3390 = fadd fast float %3387, -1.000000e+00
  %3391 = fadd fast float %3388, -1.000000e+00
  %3392 = fadd fast float %3389, -1.000000e+00
  %3393 = fmul fast float %3238, %3390
  %3394 = fmul fast float %3238, %3391
  %3395 = fmul fast float %3238, %3392
  %3396 = fadd fast float %3393, 1.000000e+00
  %3397 = fadd fast float %3394, 1.000000e+00
  %3398 = fadd fast float %3395, 1.000000e+00
  %3399 = fmul fast float %3396, %3213
  %3400 = fmul fast float %3397, %3214
  %3401 = fmul fast float %3398, %3215
  br label %3402

; <label>:3402                                    ; preds = %3386, %3352, %3243, %3199
  %3403 = phi float [ %3348, %3243 ], [ %3224, %3352 ], [ %3224, %3386 ], [ 0x3FA23C0BE0000000, %3199 ]
  %3404 = phi float [ %3340, %3243 ], [ %3383, %3352 ], [ %3399, %3386 ], [ 1.000000e+00, %3199 ]
  %3405 = phi float [ %3341, %3243 ], [ %3384, %3352 ], [ %3400, %3386 ], [ 1.000000e+00, %3199 ]
  %3406 = phi float [ %3342, %3243 ], [ %3385, %3352 ], [ %3401, %3386 ], [ 1.000000e+00, %3199 ]
  %3407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.i32 %3407, 1
  %3409 = and i32 %3408, 1
  %3410 = icmp ne i32 %3409, 0
  %3411 = add i32 %63, 372
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = and i32 %3413, 32
  %3415 = icmp ne i32 %3414, 0
  %3416 = and i1 %3410, %3415
  %3417 = select i1 %3416, float 1.000000e+00, float %3404
  %3418 = select i1 %3416, float 0x3FD3333340000000, float %3405
  %3419 = select i1 %3416, float 0x3FD3333340000000, float %3406
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 32
  %3423 = icmp eq i32 %3422, 0
  br i1 %3423, label %3496, label %3424

; <label>:3424                                    ; preds = %3402
  %3425 = add i32 %63, 140
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = add i32 %63, 420
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = add i32 %3430, 0
  %3432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3432, %dx.types.Handle %119, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = extractvalue %dx.types.ResRet.f32 %3433, 3
  %3438 = and i32 %3427, 255
  %3439 = uitofp i32 %3438 to float
  %3440 = lshr i32 %3427, 8
  %3441 = and i32 %3440, 255
  %3442 = uitofp i32 %3441 to float
  %3443 = lshr i32 %3427, 16
  %3444 = and i32 %3443, 255
  %3445 = uitofp i32 %3444 to float
  %3446 = fmul fast float %3445, 0x3F70101000000000
  %3447 = fmul fast float %3434, %3439
  %3448 = fadd fast float %3447, %3442
  %3449 = fmul fast float %3448, 0x3F70101000000000
  %3450 = fadd fast float %3435, -5.000000e-01
  %3451 = fadd fast float %3437, -5.000000e-01
  %3452 = fmul fast float %3450, %3446
  %3453 = fmul fast float %3451, %3446
  %3454 = fadd fast float %3452, 5.000000e-01
  %3455 = fadd fast float %3453, 5.000000e-01
  %3456 = fmul fast float %3454, 2.000000e+00
  %3457 = fadd fast float %3456, -1.000000e+00
  %3458 = fmul fast float %3455, 2.000000e+00
  %3459 = fadd fast float %3458, -1.000000e+00
  %3460 = fadd fast float %3457, %3459
  %3461 = fmul fast float %3460, 5.000000e-01
  %3462 = fsub fast float %3457, %3459
  %3463 = fmul fast float %3462, 5.000000e-01
  %3464 = call float @dx.op.unary.f32(i32 6, float %3461)  ; FAbs(value)
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = call float @dx.op.unary.f32(i32 6, float %3463)  ; FAbs(value)
  %3467 = fsub fast float %3465, %3466
  %3468 = call float @dx.op.dot3.f32(i32 55, float %3461, float %3463, float %3467, float %3461, float %3463, float %3467)  ; Dot3(ax,ay,az,bx,by,bz)
  %3469 = call float @dx.op.unary.f32(i32 25, float %3468)  ; Rsqrt(value)
  %3470 = fmul fast float %3461, %3469
  %3471 = fmul fast float %3463, %3469
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = and i32 %3473, 67108864
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3492, label %3476

; <label>:3476                                    ; preds = %3424
  %3477 = add i32 %63, 328
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = and i32 %3479, 65535
  %3481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3480)  ; LegacyF16ToF32(value)
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = and i32 %3483, 65535
  %3485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3484)  ; LegacyF16ToF32(value)
  %3486 = lshr i32 %3479, 16
  %3487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3486)  ; LegacyF16ToF32(value)
  %3488 = fsub fast float %3449, %3487
  %3489 = fmul fast float %3488, %3481
  %3490 = fadd fast float %3489, %3485
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  br label %3492

; <label>:3492                                    ; preds = %3476, %3424
  %3493 = phi float [ %3491, %3476 ], [ %3449, %3424 ]
  %3494 = call float @dx.op.dot2.f32(i32 54, float %3470, float %3471, float %3028, float %3029)  ; Dot2(ax,ay,bx,by)
  %3495 = call float @dx.op.dot2.f32(i32 54, float %3470, float %3471, float %3030, float %3031)  ; Dot2(ax,ay,bx,by)
  br label %3496

; <label>:3496                                    ; preds = %3492, %3402
  %3497 = phi float [ %3493, %3492 ], [ 0x3FD6666660000000, %3402 ]
  %3498 = phi float [ %3494, %3492 ], [ 0.000000e+00, %3402 ]
  %3499 = phi float [ %3495, %3492 ], [ 0.000000e+00, %3402 ]
  %3500 = phi float [ %3436, %3492 ], [ 1.000000e+00, %3402 ]
  %3501 = add i32 %63, 208
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = lshr i32 %3503, 22
  %3505 = shl nuw nsw i32 %3504, 5
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = and i32 %3508, 64
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3544, label %3511

; <label>:3511                                    ; preds = %3496
  %3512 = add i32 %63, 436
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = add i32 %3514, 0
  %3516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.i32 %3517, 0
  %3519 = and i32 %3518, 131072
  %3520 = icmp eq i32 %3519, 0
  %3521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3516, %dx.types.Handle %119, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3525 = fmul fast float %3522, %421
  %3526 = fmul fast float %3523, %424
  %3527 = fmul fast float %3524, %427
  br i1 %3520, label %3534, label %3528

; <label>:3528                                    ; preds = %3511
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 0
  %3531 = fmul fast float %3530, %3525
  %3532 = fmul fast float %3530, %3526
  %3533 = fmul fast float %3530, %3527
  br label %3534

; <label>:3534                                    ; preds = %3528, %3511
  %3535 = phi float [ %3531, %3528 ], [ %3525, %3511 ]
  %3536 = phi float [ %3532, %3528 ], [ %3526, %3511 ]
  %3537 = phi float [ %3533, %3528 ], [ %3527, %3511 ]
  %3538 = fmul fast float %3535, %3506
  %3539 = select i1 %278, float %3538, float %3535
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3536, float %3537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = select i1 %278, float 0.000000e+00, float %3535
  %3542 = select i1 %278, float %3540, float %3536
  %3543 = select i1 %278, float 0.000000e+00, float %3537
  br label %3544

; <label>:3544                                    ; preds = %3534, %3496
  %3545 = phi float [ %3541, %3534 ], [ 0.000000e+00, %3496 ]
  %3546 = phi float [ %3542, %3534 ], [ 0.000000e+00, %3496 ]
  %3547 = phi float [ %3543, %3534 ], [ 0.000000e+00, %3496 ]
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, 1024
  %3551 = icmp eq i32 %3550, 0
  br i1 %3551, label %3582, label %3552

; <label>:3552                                    ; preds = %3544
  %3553 = add i32 %63, 200
  %3554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3553, i32 undef)  ; BufferLoad(srv,index,wot)
  %3555 = extractvalue %dx.types.ResRet.i32 %3554, 0
  %3556 = and i32 %3555, 255
  %3557 = uitofp i32 %3556 to float
  %3558 = fmul fast float %3557, 0x3F70101020000000
  %3559 = lshr i32 %3555, 8
  %3560 = and i32 %3559, 255
  %3561 = uitofp i32 %3560 to float
  %3562 = fmul fast float %3561, 0x3F70101020000000
  %3563 = lshr i32 %3555, 16
  %3564 = and i32 %3563, 255
  %3565 = uitofp i32 %3564 to float
  %3566 = fmul fast float %3565, 0x3F70101020000000
  %3567 = fmul fast float %3558, %3558
  %3568 = fmul fast float %3562, %3562
  %3569 = fmul fast float %3566, %3566
  %3570 = add i32 %63, 504
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = add i32 %3572, 0
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3574, %dx.types.Handle %120, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = fmul fast float %3567, %3576
  %3580 = fmul fast float %3568, %3577
  %3581 = fmul fast float %3569, %3578
  br label %3582

; <label>:3582                                    ; preds = %3552, %3544
  %3583 = phi float [ %3579, %3552 ], [ 0.000000e+00, %3544 ]
  %3584 = phi float [ %3580, %3552 ], [ 0.000000e+00, %3544 ]
  %3585 = phi float [ %3581, %3552 ], [ 0.000000e+00, %3544 ]
  %3586 = fcmp fast ogt float %3583, 0.000000e+00
  %3587 = fcmp fast ogt float %3584, 0.000000e+00
  %3588 = fcmp fast ogt float %3585, 0.000000e+00
  %3589 = call float @dx.op.unary.f32(i32 23, float %3583)  ; Log(value)
  %3590 = call float @dx.op.unary.f32(i32 23, float %3584)  ; Log(value)
  %3591 = call float @dx.op.unary.f32(i32 23, float %3585)  ; Log(value)
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = lshr i32 %3593, 7
  %3595 = and i32 %3594, 32752
  %3596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3595)  ; LegacyF16ToF32(value)
  %3597 = fmul fast float %3589, 0xBFE62E4300000000
  %3598 = fmul fast float %3597, %3596
  %3599 = fmul fast float %3590, 0xBFE62E4300000000
  %3600 = fmul fast float %3599, %3596
  %3601 = fmul fast float %3591, 0xBFE62E4300000000
  %3602 = fmul fast float %3601, %3596
  %3603 = select i1 %3586, float %3598, float 1.270000e+02
  %3604 = select i1 %3587, float %3600, float 1.270000e+02
  %3605 = select i1 %3588, float %3602, float 1.270000e+02
  %3606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.i32 %3606, 0
  %3608 = and i32 %3607, 26624
  %3609 = icmp eq i32 %3608, 0
  br i1 %3609, label %3646, label %3610

; <label>:3610                                    ; preds = %3582
  %3611 = add i32 %63, 520
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = add i32 %3613, 0
  %3615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3615, %dx.types.Handle %120, float %3124, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.i32 %3618, 0
  %3620 = and i32 %3619, 1048576
  %3621 = icmp ne i32 %3620, 0
  %3622 = and i32 %3619, 2048
  %3623 = icmp eq i32 %3622, 0
  br i1 %3623, label %3633, label %3624

; <label>:3624                                    ; preds = %3610
  %3625 = extractvalue %dx.types.ResRet.f32 %3616, 3
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = shl i32 %3627, 4
  %3629 = and i32 %3628, 32752
  %3630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3629)  ; LegacyF16ToF32(value)
  %3631 = fmul fast float %3630, %3625
  %3632 = call float @dx.op.binary.f32(i32 35, float %3631, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3633

; <label>:3633                                    ; preds = %3624, %3610
  %3634 = phi float [ %3632, %3624 ], [ 0x3F70101020000000, %3610 ]
  %3635 = and i32 %3619, 16384
  %3636 = icmp eq i32 %3635, 0
  br i1 %3636, label %3646, label %3637

; <label>:3637                                    ; preds = %3633
  %3638 = add i32 %63, 144
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = lshr i32 %3640, 24
  %3642 = uitofp i32 %3641 to float
  %3643 = fmul fast float %3617, 0x3F70101020000000
  %3644 = select i1 %3621, float 0x3F70101020000000, float %3643
  %3645 = fmul fast float %3644, %3642
  br label %3646

; <label>:3646                                    ; preds = %3637, %3633, %3582
  %3647 = phi float [ %3634, %3637 ], [ %3634, %3633 ], [ 0x3F70101020000000, %3582 ]
  %3648 = phi float [ %3645, %3637 ], [ 0.000000e+00, %3633 ], [ 0.000000e+00, %3582 ]
  %3649 = add i32 %63, 144
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = and i32 %3651, 255
  %3653 = uitofp i32 %3652 to float
  %3654 = lshr i32 %3651, 8
  %3655 = and i32 %3654, 255
  %3656 = uitofp i32 %3655 to float
  %3657 = call float @dx.op.dot3.f32(i32 55, float %3417, float %3418, float %3419, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3658 = fmul fast float %3656, %3657
  %3659 = fadd fast float %3658, %3653
  %3660 = fmul fast float %3659, 0x3F70101020000000
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  br i1 %3016, label %3662, label %3697

; <label>:3662                                    ; preds = %3646
  %3663 = fmul fast float %3647, 2.000000e+00
  %3664 = fcmp fast olt float %3603, 1.270000e+02
  %3665 = fcmp fast olt float %3604, 1.270000e+02
  %3666 = fcmp fast olt float %3605, 1.270000e+02
  %3667 = fmul fast float %3603, 0xBFF7154760000000
  %3668 = fmul fast float %3667, %3663
  %3669 = fmul fast float %3604, 0xBFF7154760000000
  %3670 = fmul fast float %3669, %3663
  %3671 = fmul fast float %3605, 0xBFF7154760000000
  %3672 = fmul fast float %3671, %3663
  %3673 = call float @dx.op.unary.f32(i32 21, float %3668)  ; Exp(value)
  %3674 = call float @dx.op.unary.f32(i32 21, float %3670)  ; Exp(value)
  %3675 = call float @dx.op.unary.f32(i32 21, float %3672)  ; Exp(value)
  %3676 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3677 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3678 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3679 = fadd fast float %3676, -1.000000e+00
  %3680 = select i1 %3664, float %3679, float -1.000000e+00
  %3681 = fadd fast float %3677, -1.000000e+00
  %3682 = select i1 %3665, float %3681, float -1.000000e+00
  %3683 = fadd fast float %3678, -1.000000e+00
  %3684 = select i1 %3666, float %3683, float -1.000000e+00
  %3685 = fmul fast float %3680, %3197
  %3686 = fmul fast float %3682, %3197
  %3687 = fmul fast float %3684, %3197
  %3688 = fadd fast float %3685, 1.000000e+00
  %3689 = fadd fast float %3686, 1.000000e+00
  %3690 = fadd fast float %3687, 1.000000e+00
  %3691 = fmul fast float %3688, %3003
  %3692 = fmul fast float %3689, %3004
  %3693 = fmul fast float %3690, %3005
  %3694 = fmul fast float %3688, %3006
  %3695 = fmul fast float %3689, %3007
  %3696 = fmul fast float %3690, %3008
  br label %3697

; <label>:3697                                    ; preds = %3662, %3646
  %3698 = phi float [ %3691, %3662 ], [ %3003, %3646 ]
  %3699 = phi float [ %3692, %3662 ], [ %3004, %3646 ]
  %3700 = phi float [ %3693, %3662 ], [ %3005, %3646 ]
  %3701 = phi float [ %3694, %3662 ], [ %3006, %3646 ]
  %3702 = phi float [ %3695, %3662 ], [ %3007, %3646 ]
  %3703 = phi float [ %3696, %3662 ], [ %3008, %3646 ]
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = and i32 %3705, 3
  %3707 = icmp eq i32 %3706, 3
  br i1 %3707, label %3786, label %3708

; <label>:3708                                    ; preds = %3697
  %3709 = and i32 %3705, 16
  %3710 = icmp ne i32 %3709, 0
  %3711 = select i1 %3710, float %3197, float 0.000000e+00
  %3712 = icmp eq i32 %3706, 0
  br i1 %3712, label %3713, label %3741

; <label>:3713                                    ; preds = %3708
  %3714 = and i32 %3705, 64
  %3715 = icmp ne i32 %3714, 0
  %3716 = select i1 %3715, float %3197, float 0.000000e+00
  %3717 = fsub fast float %3417, %3698
  %3718 = fsub fast float %3418, %3699
  %3719 = fsub fast float %3419, %3700
  %3720 = fmul fast float %3711, %3717
  %3721 = fmul fast float %3711, %3718
  %3722 = fmul fast float %3711, %3719
  %3723 = fadd fast float %3720, %3698
  %3724 = fadd fast float %3721, %3699
  %3725 = fadd fast float %3722, %3700
  %3726 = fsub fast float %3403, %3009
  %3727 = fmul fast float %3711, %3726
  %3728 = fadd fast float %3727, %3009
  %3729 = fsub fast float %3545, %3701
  %3730 = fsub fast float %3546, %3702
  %3731 = fsub fast float %3547, %3703
  %3732 = fmul fast float %3716, %3729
  %3733 = fmul fast float %3716, %3730
  %3734 = fmul fast float %3716, %3731
  %3735 = fadd fast float %3732, %3701
  %3736 = fadd fast float %3733, %3702
  %3737 = fadd fast float %3734, %3703
  %3738 = fsub fast float %3661, %3014
  %3739 = fmul fast float %3711, %3738
  %3740 = fadd fast float %3739, %3014
  br label %3786

; <label>:3741                                    ; preds = %3708
  %3742 = icmp eq i32 %3706, 1
  br i1 %3742, label %3743, label %3756

; <label>:3743                                    ; preds = %3741
  %3744 = fadd fast float %3417, -1.000000e+00
  %3745 = fadd fast float %3418, -1.000000e+00
  %3746 = fadd fast float %3419, -1.000000e+00
  %3747 = fmul fast float %3711, %3744
  %3748 = fmul fast float %3711, %3745
  %3749 = fmul fast float %3711, %3746
  %3750 = fadd fast float %3747, 1.000000e+00
  %3751 = fadd fast float %3748, 1.000000e+00
  %3752 = fadd fast float %3749, 1.000000e+00
  %3753 = fmul fast float %3750, %3698
  %3754 = fmul fast float %3751, %3699
  %3755 = fmul fast float %3752, %3700
  br label %3786

; <label>:3756                                    ; preds = %3741
  %3757 = icmp eq i32 %3706, 2
  br i1 %3757, label %3758, label %3786

; <label>:3758                                    ; preds = %3756
  %3759 = call float @dx.op.unary.f32(i32 24, float %3417)  ; Sqrt(value)
  %3760 = call float @dx.op.unary.f32(i32 24, float %3418)  ; Sqrt(value)
  %3761 = call float @dx.op.unary.f32(i32 24, float %3419)  ; Sqrt(value)
  %3762 = fadd fast float %3759, -5.000000e-01
  %3763 = fadd fast float %3760, -5.000000e-01
  %3764 = fadd fast float %3761, -5.000000e-01
  %3765 = fmul fast float %3762, %3711
  %3766 = fmul fast float %3763, %3711
  %3767 = fmul fast float %3764, %3711
  %3768 = fadd fast float %3765, 5.000000e-01
  %3769 = fadd fast float %3766, 5.000000e-01
  %3770 = fadd fast float %3767, 5.000000e-01
  %3771 = fmul fast float %3768, 2.000000e+00
  %3772 = fsub fast float 1.000000e+00, %3771
  %3773 = fmul fast float %3772, %3698
  %3774 = fadd fast float %3773, %3771
  %3775 = fmul fast float %3774, %3698
  %3776 = fmul fast float %3769, 2.000000e+00
  %3777 = fsub fast float 1.000000e+00, %3776
  %3778 = fmul fast float %3777, %3699
  %3779 = fadd fast float %3778, %3776
  %3780 = fmul fast float %3779, %3699
  %3781 = fmul fast float %3770, 2.000000e+00
  %3782 = fsub fast float 1.000000e+00, %3781
  %3783 = fmul fast float %3782, %3700
  %3784 = fadd fast float %3783, %3781
  %3785 = fmul fast float %3784, %3700
  br label %3786

; <label>:3786                                    ; preds = %3758, %3756, %3743, %3713, %3697
  %3787 = phi float [ %3698, %3697 ], [ %3775, %3758 ], [ %3698, %3756 ], [ %3753, %3743 ], [ %3723, %3713 ]
  %3788 = phi float [ %3699, %3697 ], [ %3780, %3758 ], [ %3699, %3756 ], [ %3754, %3743 ], [ %3724, %3713 ]
  %3789 = phi float [ %3700, %3697 ], [ %3785, %3758 ], [ %3700, %3756 ], [ %3755, %3743 ], [ %3725, %3713 ]
  %3790 = phi float [ %3701, %3697 ], [ %3701, %3758 ], [ %3701, %3756 ], [ %3701, %3743 ], [ %3735, %3713 ]
  %3791 = phi float [ %3702, %3697 ], [ %3702, %3758 ], [ %3702, %3756 ], [ %3702, %3743 ], [ %3736, %3713 ]
  %3792 = phi float [ %3703, %3697 ], [ %3703, %3758 ], [ %3703, %3756 ], [ %3703, %3743 ], [ %3737, %3713 ]
  %3793 = phi float [ %3009, %3697 ], [ %3009, %3758 ], [ %3009, %3756 ], [ %3009, %3743 ], [ %3728, %3713 ]
  %3794 = phi float [ %3014, %3697 ], [ %3014, %3758 ], [ %3014, %3756 ], [ %3014, %3743 ], [ %3740, %3713 ]
  %3795 = and i32 %3705, 12
  %3796 = icmp eq i32 %3795, 12
  br i1 %3796, label %3913, label %3797

; <label>:3797                                    ; preds = %3786
  %3798 = and i32 %3705, 2097184
  %3799 = icmp eq i32 %3798, 2097184
  %3800 = select i1 %3799, float %3197, float 0.000000e+00
  %3801 = and i32 %3705, 4194336
  %3802 = icmp eq i32 %3801, 4194336
  %3803 = select i1 %3802, float %3197, float 0.000000e+00
  %3804 = and i32 %3705, 8388640
  %3805 = icmp eq i32 %3804, 8388640
  %3806 = select i1 %3805, float %3197, float 0.000000e+00
  %3807 = and i32 %3705, 1024
  %3808 = icmp ne i32 %3807, 0
  %3809 = select i1 %3808, float %3197, float 0.000000e+00
  %3810 = and i32 %3705, 2048
  %3811 = icmp ne i32 %3810, 0
  %3812 = select i1 %3811, float %3197, float 0.000000e+00
  %3813 = and i32 %3705, 16384
  %3814 = icmp ne i32 %3813, 0
  %3815 = select i1 %3814, float %3197, float 0.000000e+00
  %3816 = icmp eq i32 %3795, 0
  br i1 %3816, label %3817, label %3845

; <label>:3817                                    ; preds = %3797
  %3818 = fsub fast float %3498, %2998
  %3819 = fsub fast float %3499, %2999
  %3820 = fmul fast float %3800, %3818
  %3821 = fmul fast float %3800, %3819
  %3822 = fadd fast float %3820, %2998
  %3823 = fadd fast float %3821, %2999
  %3824 = fsub fast float %3500, %3011
  %3825 = fmul fast float %3803, %3824
  %3826 = fadd fast float %3825, %3011
  %3827 = fsub fast float %3497, %3010
  %3828 = fmul fast float %3806, %3827
  %3829 = fadd fast float %3828, %3010
  %3830 = fsub fast float %3603, %3000
  %3831 = fsub fast float %3604, %3001
  %3832 = fsub fast float %3605, %3002
  %3833 = fmul fast float %3809, %3830
  %3834 = fmul fast float %3809, %3831
  %3835 = fmul fast float %3809, %3832
  %3836 = fadd fast float %3833, %3000
  %3837 = fadd fast float %3834, %3001
  %3838 = fadd fast float %3835, %3002
  %3839 = fsub fast float %3647, %3012
  %3840 = fmul fast float %3812, %3839
  %3841 = fadd fast float %3840, %3012
  %3842 = fsub fast float %3648, %3013
  %3843 = fmul fast float %3815, %3842
  %3844 = fadd fast float %3843, %3013
  br label %3913

; <label>:3845                                    ; preds = %3797
  %3846 = icmp eq i32 %3795, 4
  br i1 %3846, label %3847, label %3889

; <label>:3847                                    ; preds = %3845
  %3848 = fmul fast float %3800, %3498
  %3849 = fmul fast float %3800, %3499
  %3850 = fadd fast float %3848, %2998
  %3851 = fadd fast float %3849, %2999
  %3852 = call float @dx.op.binary.f32(i32 36, float %3011, float %3500)  ; FMin(a,b)
  %3853 = fsub fast float %3852, %3011
  %3854 = fmul fast float %3853, %3803
  %3855 = fadd fast float %3854, %3011
  %3856 = fadd fast float %3497, %3010
  %3857 = fmul fast float %3856, 0x3FF337FAE0000000
  %3858 = fmul fast float %3010, %3010
  %3859 = fmul fast float %3497, %3497
  %3860 = fadd fast float %3859, %3858
  %3861 = fmul fast float %3860, 0x3FE5152B00000000
  %3862 = fmul fast float %3010, 0xBFCC1F85E0000000
  %3863 = fmul fast float %3862, %3497
  %3864 = fadd fast float %3863, 0xBFE1363700000000
  %3865 = fadd fast float %3864, %3857
  %3866 = fsub fast float %3865, %3861
  %3867 = fmul fast float %3856, 0x3FBA6F0D00000000
  %3868 = fmul fast float %3860, 0x3FD0432880000000
  %3869 = fmul fast float %3010, 0xBFEF110800000000
  %3870 = fmul fast float %3869, %3497
  %3871 = fadd fast float %3870, 1.000000e+00
  %3872 = fsub fast float %3871, %3867
  %3873 = fadd fast float %3872, %3868
  %3874 = fdiv fast float %3866, %3873
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fsub fast float %3875, %3010
  %3877 = fmul fast float %3876, %3806
  %3878 = fadd fast float %3877, %3010
  %3879 = fmul fast float %3809, %3603
  %3880 = fmul fast float %3809, %3604
  %3881 = fmul fast float %3809, %3605
  %3882 = fadd fast float %3879, %3000
  %3883 = fadd fast float %3880, %3001
  %3884 = fadd fast float %3881, %3002
  %3885 = fmul fast float %3812, %3647
  %3886 = fadd fast float %3885, %3012
  %3887 = fmul fast float %3815, %3648
  %3888 = fadd fast float %3887, %3013
  br label %3913

; <label>:3889                                    ; preds = %3845
  %3890 = icmp eq i32 %3795, 8
  br i1 %3890, label %3891, label %3913

; <label>:3891                                    ; preds = %3889
  %3892 = fmul fast float %3800, %3498
  %3893 = fmul fast float %3800, %3499
  %3894 = fadd fast float %3892, %2998
  %3895 = fadd fast float %3893, %2999
  %3896 = call float @dx.op.binary.f32(i32 36, float %3011, float %3500)  ; FMin(a,b)
  %3897 = fsub fast float %3896, %3011
  %3898 = fmul fast float %3897, %3803
  %3899 = fadd fast float %3898, %3011
  %3900 = fsub fast float %3497, %3010
  %3901 = fmul fast float %3806, %3900
  %3902 = fadd fast float %3901, %3010
  %3903 = fmul fast float %3809, %3603
  %3904 = fmul fast float %3809, %3604
  %3905 = fmul fast float %3809, %3605
  %3906 = fadd fast float %3903, %3000
  %3907 = fadd fast float %3904, %3001
  %3908 = fadd fast float %3905, %3002
  %3909 = fmul fast float %3812, %3647
  %3910 = fadd fast float %3909, %3012
  %3911 = fmul fast float %3815, %3648
  %3912 = fadd fast float %3911, %3013
  br label %3913

; <label>:3913                                    ; preds = %3891, %3889, %3847, %3817, %3786, %3196, %3015, %2997
  %3914 = phi float [ %2998, %3786 ], [ %2998, %3196 ], [ %2998, %2997 ], [ %2998, %3015 ], [ %3822, %3817 ], [ %3850, %3847 ], [ %2998, %3889 ], [ %3894, %3891 ]
  %3915 = phi float [ %2999, %3786 ], [ %2999, %3196 ], [ %2999, %2997 ], [ %2999, %3015 ], [ %3823, %3817 ], [ %3851, %3847 ], [ %2999, %3889 ], [ %3895, %3891 ]
  %3916 = phi float [ %3000, %3786 ], [ %3000, %3196 ], [ %3000, %2997 ], [ %3000, %3015 ], [ %3836, %3817 ], [ %3882, %3847 ], [ %3000, %3889 ], [ %3906, %3891 ]
  %3917 = phi float [ %3001, %3786 ], [ %3001, %3196 ], [ %3001, %2997 ], [ %3001, %3015 ], [ %3837, %3817 ], [ %3883, %3847 ], [ %3001, %3889 ], [ %3907, %3891 ]
  %3918 = phi float [ %3002, %3786 ], [ %3002, %3196 ], [ %3002, %2997 ], [ %3002, %3015 ], [ %3838, %3817 ], [ %3884, %3847 ], [ %3002, %3889 ], [ %3908, %3891 ]
  %3919 = phi float [ %3787, %3786 ], [ %3003, %3196 ], [ %3003, %2997 ], [ %3003, %3015 ], [ %3787, %3817 ], [ %3787, %3847 ], [ %3787, %3889 ], [ %3787, %3891 ]
  %3920 = phi float [ %3788, %3786 ], [ %3004, %3196 ], [ %3004, %2997 ], [ %3004, %3015 ], [ %3788, %3817 ], [ %3788, %3847 ], [ %3788, %3889 ], [ %3788, %3891 ]
  %3921 = phi float [ %3789, %3786 ], [ %3005, %3196 ], [ %3005, %2997 ], [ %3005, %3015 ], [ %3789, %3817 ], [ %3789, %3847 ], [ %3789, %3889 ], [ %3789, %3891 ]
  %3922 = phi float [ %3790, %3786 ], [ %3006, %3196 ], [ %3006, %2997 ], [ %3006, %3015 ], [ %3790, %3817 ], [ %3790, %3847 ], [ %3790, %3889 ], [ %3790, %3891 ]
  %3923 = phi float [ %3791, %3786 ], [ %3007, %3196 ], [ %3007, %2997 ], [ %3007, %3015 ], [ %3791, %3817 ], [ %3791, %3847 ], [ %3791, %3889 ], [ %3791, %3891 ]
  %3924 = phi float [ %3792, %3786 ], [ %3008, %3196 ], [ %3008, %2997 ], [ %3008, %3015 ], [ %3792, %3817 ], [ %3792, %3847 ], [ %3792, %3889 ], [ %3792, %3891 ]
  %3925 = phi float [ %3793, %3786 ], [ %3009, %3196 ], [ %3009, %2997 ], [ %3009, %3015 ], [ %3793, %3817 ], [ %3793, %3847 ], [ %3793, %3889 ], [ %3793, %3891 ]
  %3926 = phi float [ %3010, %3786 ], [ %3010, %3196 ], [ %3010, %2997 ], [ %3010, %3015 ], [ %3829, %3817 ], [ %3878, %3847 ], [ %3010, %3889 ], [ %3902, %3891 ]
  %3927 = phi float [ %3011, %3786 ], [ %3011, %3196 ], [ %3011, %2997 ], [ %3011, %3015 ], [ %3826, %3817 ], [ %3855, %3847 ], [ %3011, %3889 ], [ %3899, %3891 ]
  %3928 = phi float [ %3012, %3786 ], [ %3012, %3196 ], [ %3012, %2997 ], [ %3012, %3015 ], [ %3841, %3817 ], [ %3886, %3847 ], [ %3012, %3889 ], [ %3910, %3891 ]
  %3929 = phi float [ %3013, %3786 ], [ %3013, %3196 ], [ %3013, %2997 ], [ %3013, %3015 ], [ %3844, %3817 ], [ %3888, %3847 ], [ %3013, %3889 ], [ %3912, %3891 ]
  %3930 = phi float [ %3794, %3786 ], [ %3014, %3196 ], [ %3014, %2997 ], [ %3014, %3015 ], [ %3794, %3817 ], [ %3794, %3847 ], [ %3794, %3889 ], [ %3794, %3891 ]
  %3931 = add i32 %63, 376
  %3932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.i32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.i32 %3932, 1
  %3935 = bitcast i32 %3933 to float
  %3936 = bitcast i32 %3934 to float
  %3937 = fcmp fast oge float %3935, 0.000000e+00
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = select i1 %3937, float %3935, float %3939
  %3941 = fadd fast float %3940, %220
  %3942 = fmul fast float %3936, %221
  %3943 = add i32 %63, 472
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = add i32 %3945, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3946, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3947, %dx.types.Handle %120, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = fmul fast float %3942, %3949
  %3951 = fadd fast float %3941, %3950
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3954 = and i32 %212, 65535
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = lshr i32 %212, 16
  %3957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3956)  ; LegacyF16ToF32(value)
  %3958 = and i32 %213, 65535
  %3959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3958)  ; LegacyF16ToF32(value)
  %3960 = fmul fast float %3955, %3919
  %3961 = fmul fast float %3957, %3920
  %3962 = fmul fast float %3959, %3921
  %3963 = shl i32 %214, 4
  %3964 = and i32 %3963, 32752
  %3965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3964)  ; LegacyF16ToF32(value)
  %3966 = lshr i32 %214, 7
  %3967 = and i32 %3966, 32752
  %3968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3967)  ; LegacyF16ToF32(value)
  %3969 = lshr i32 %214, 22
  %3970 = shl nuw nsw i32 %3969, 5
  %3971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3970)  ; LegacyF16ToF32(value)
  %3972 = and i32 %215, 65535
  %3973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3972)  ; LegacyF16ToF32(value)
  %3974 = fmul fast float %3953, %3922
  %3975 = fmul fast float %3974, %3965
  %3976 = fmul fast float %3975, %3973
  %3977 = fmul fast float %3953, %3923
  %3978 = fmul fast float %3977, %3968
  %3979 = fmul fast float %3978, %3973
  %3980 = fmul fast float %3953, %3924
  %3981 = fmul fast float %3980, %3971
  %3982 = fmul fast float %3981, %3973
  %3983 = call float @dx.op.dot2.f32(i32 54, float %3914, float %3915, float %3914, float %3915)  ; Dot2(ax,ay,bx,by)
  %3984 = fmul fast float %3983, 0x3FE3333340000000
  %3985 = fsub fast float 1.000000e+00, %3984
  %3986 = call float @dx.op.dot3.f32(i32 55, float %3914, float %3915, float %3985, float %3914, float %3915, float %3985)  ; Dot3(ax,ay,az,bx,by,bz)
  %3987 = call float @dx.op.unary.f32(i32 25, float %3986)  ; Rsqrt(value)
  %3988 = fmul fast float %3987, %3914
  %3989 = fmul fast float %3987, %3915
  %3990 = fmul fast float %3985, %3987
  %3991 = fmul fast float %3990, %132
  %3992 = fmul fast float %3990, %134
  %3993 = fmul fast float %3990, %136
  %3994 = fmul fast float %3988, %94
  %3995 = fmul fast float %3988, %95
  %3996 = fmul fast float %3988, %96
  %3997 = fadd fast float %3991, %3994
  %3998 = fadd fast float %3992, %3995
  %3999 = fadd fast float %3993, %3996
  %4000 = fmul fast float %146, %3989
  %4001 = fmul fast float %147, %3989
  %4002 = fmul fast float %148, %3989
  %4003 = fadd fast float %3997, %4000
  %4004 = fadd fast float %3998, %4001
  %4005 = fadd fast float %3999, %4002
  %4006 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = call float @dx.op.unary.f32(i32 25, float %4006)  ; Rsqrt(value)
  %4008 = fmul fast float %4003, %4007
  %4009 = fmul fast float %4004, %4007
  %4010 = fmul fast float %4005, %4007
  %4011 = icmp eq i32 %65, 65535
  br i1 %4011, label %4561, label %4012

; <label>:4012                                    ; preds = %3913
  %4013 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %4014 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %4015 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %4016 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %4017 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %4018 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %4019 = fadd fast float %4013, %66
  %4020 = fadd fast float %4014, %67
  %4021 = fadd fast float %4015, %68
  %4022 = fadd fast float %4016, %66
  %4023 = fadd fast float %4017, %67
  %4024 = fadd fast float %4018, %68
  %4025 = mul i32 %65, 48
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = add i32 %4025, 16
  %4031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.ResRet.f32 %4031, 1
  %4034 = extractvalue %dx.types.ResRet.f32 %4031, 2
  %4035 = add i32 %4025, 32
  %4036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = extractvalue %dx.types.ResRet.f32 %4036, 3
  %4041 = bitcast float %4040 to i32
  %4042 = fmul fast float %4027, %66
  %4043 = fmul fast float %4028, %67
  %4044 = fmul fast float %4029, %68
  %4045 = fsub fast float %4042, %4032
  %4046 = fsub fast float %4043, %4033
  %4047 = fsub fast float %4044, %4034
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = fmul fast float %4048, %4037
  %4052 = fmul fast float %4049, %4038
  %4053 = fmul fast float %4050, %4039
  %4054 = fadd fast float %4037, -1.000000e+00
  %4055 = fadd fast float %4038, -1.000000e+00
  %4056 = fadd fast float %4039, -1.000000e+00
  %4057 = call float @dx.op.unary.f32(i32 27, float %4051)  ; Round_ni(value)
  %4058 = call float @dx.op.unary.f32(i32 27, float %4052)  ; Round_ni(value)
  %4059 = call float @dx.op.unary.f32(i32 27, float %4053)  ; Round_ni(value)
  %4060 = call float @dx.op.binary.f32(i32 36, float %4057, float %4054)  ; FMin(a,b)
  %4061 = call float @dx.op.binary.f32(i32 36, float %4058, float %4055)  ; FMin(a,b)
  %4062 = call float @dx.op.binary.f32(i32 36, float %4059, float %4056)  ; FMin(a,b)
  %4063 = fmul fast float %4062, %4038
  %4064 = fadd fast float %4063, %4061
  %4065 = fmul fast float %4064, %4037
  %4066 = fadd fast float %4065, %4060
  %4067 = fptosi float %4066 to i32
  %4068 = add nsw i32 %4067, %4041
  %4069 = shl nsw i32 %4068, 2
  %4070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4069, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.i32 %4070, 0
  %4072 = lshr i32 %4071, 16
  %4073 = icmp eq i32 %4072, 0
  br i1 %4073, label %4526, label %4074

; <label>:4074                                    ; preds = %4012
  br label %4075

; <label>:4075                                    ; preds = %4200, %4074
  %4076 = phi i32 [ %4102, %4200 ], [ %4072, %4074 ]
  %4077 = phi float [ %4201, %4200 ], [ 0.000000e+00, %4074 ]
  %4078 = phi float [ %4202, %4200 ], [ %1177, %4074 ]
  %4079 = phi float [ %4203, %4200 ], [ %3951, %4074 ]
  %4080 = phi float [ %4204, %4200 ], [ %3930, %4074 ]
  %4081 = phi float [ %4205, %4200 ], [ %3916, %4074 ]
  %4082 = phi float [ %4206, %4200 ], [ %3917, %4074 ]
  %4083 = phi float [ %4207, %4200 ], [ %3918, %4074 ]
  %4084 = phi float [ %4208, %4200 ], [ %3929, %4074 ]
  %4085 = phi float [ %4209, %4200 ], [ 0.000000e+00, %4074 ]
  %4086 = phi float [ %4210, %4200 ], [ %3976, %4074 ]
  %4087 = phi float [ %4211, %4200 ], [ %3979, %4074 ]
  %4088 = phi float [ %4212, %4200 ], [ %3982, %4074 ]
  %4089 = phi float [ %4213, %4200 ], [ %4008, %4074 ]
  %4090 = phi float [ %4214, %4200 ], [ %4009, %4074 ]
  %4091 = phi float [ %4215, %4200 ], [ %4010, %4074 ]
  %4092 = phi float [ %4216, %4200 ], [ %3927, %4074 ]
  %4093 = phi float [ %4217, %4200 ], [ %3926, %4074 ]
  %4094 = phi float [ %4218, %4200 ], [ 0.000000e+00, %4074 ]
  %4095 = phi float [ %4219, %4200 ], [ %3925, %4074 ]
  %4096 = phi float [ %4220, %4200 ], [ %3960, %4074 ]
  %4097 = phi float [ %4221, %4200 ], [ %3961, %4074 ]
  %4098 = phi float [ %4222, %4200 ], [ %3962, %4074 ]
  %4099 = shl nuw nsw i32 %4076, 2
  %4100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.i32 %4100, 0
  %4102 = lshr i32 %4101, 16
  %4103 = shl i32 %4101, 8
  %4104 = and i32 %4103, 16776960
  %4105 = or i32 %4104, 48
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = or i32 %4104, 64
  %4111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4110, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.i32 %4111, 0
  %4113 = extractvalue %dx.types.ResRet.i32 %4111, 1
  %4114 = or i32 %4104, 80
  %4115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 3
  %4118 = or i32 %4104, 96
  %4119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = extractvalue %dx.types.ResRet.f32 %4119, 1
  %4122 = extractvalue %dx.types.ResRet.f32 %4119, 2
  %4123 = extractvalue %dx.types.ResRet.f32 %4119, 3
  %4124 = or i32 %4104, 112
  %4125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4127 = or i32 %4104, 128
  %4128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = extractvalue %dx.types.ResRet.f32 %4128, 3
  %4133 = or i32 %4104, 144
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4139 = or i32 %4104, 160
  %4140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4139, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = extractvalue %dx.types.ResRet.f32 %4140, 3
  %4145 = or i32 %4104, 192
  %4146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = or i32 %4104, 208
  %4149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = or i32 %4104, 248
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.ResRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.ResRet.f32 %4155, 2
  %4159 = extractvalue %dx.types.ResRet.f32 %4155, 3
  %4160 = call float @dx.op.dot4.f32(i32 56, float %4156, float %4157, float %4158, float %4159, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4161 = or i32 %4104, 16
  %4162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = extractvalue %dx.types.ResRet.f32 %4162, 1
  %4165 = extractvalue %dx.types.ResRet.f32 %4162, 2
  %4166 = extractvalue %dx.types.ResRet.f32 %4162, 3
  %4167 = call float @dx.op.dot4.f32(i32 56, float %4163, float %4164, float %4165, float %4166, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4168 = or i32 %4104, 32
  %4169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = call float @dx.op.dot4.f32(i32 56, float %4170, float %4171, float %4172, float %4173, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4175 = call float @dx.op.unary.f32(i32 27, float %4160)  ; Round_ni(value)
  %4176 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4177 = call float @dx.op.unary.f32(i32 27, float %4167)  ; Round_ni(value)
  %4178 = call float @dx.op.unary.f32(i32 6, float %4177)  ; FAbs(value)
  %4179 = call float @dx.op.unary.f32(i32 6, float %4174)  ; FAbs(value)
  %4180 = call float @dx.op.unary.f32(i32 27, float %4179)  ; Round_ni(value)
  %4181 = fadd fast float %4178, %4176
  %4182 = fadd fast float %4181, %4180
  %4183 = fcmp fast oeq float %4182, 0.000000e+00
  %4184 = call float @dx.op.dot4.f32(i32 56, float %4156, float %4157, float %4158, float %4159, float %4019, float %4020, float %4021, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4185 = call float @dx.op.dot4.f32(i32 56, float %4163, float %4164, float %4165, float %4166, float %4019, float %4020, float %4021, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4186 = call float @dx.op.dot4.f32(i32 56, float %4156, float %4157, float %4158, float %4159, float %4022, float %4023, float %4024, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4187 = call float @dx.op.dot4.f32(i32 56, float %4163, float %4164, float %4165, float %4166, float %4022, float %4023, float %4024, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4188 = fsub fast float %4184, %4160
  %4189 = fsub fast float %4186, %4160
  %4190 = fsub fast float %4185, %4167
  %4191 = fsub fast float %4187, %4167
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4107, float %4108, float %4109, float %132, float %134, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4195 = fadd fast float %4194, %4192
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4198 = fcmp fast ogt float %4196, %4197
  %4199 = and i1 %4183, %4198
  br i1 %4199, label %4224, label %4200

; <label>:4200                                    ; preds = %4512, %4307, %4224, %4075
  %4201 = phi float [ %4077, %4224 ], [ %4310, %4307 ], [ %4310, %4512 ], [ %4077, %4075 ]
  %4202 = phi float [ %4078, %4224 ], [ %4078, %4307 ], [ %4488, %4512 ], [ %4078, %4075 ]
  %4203 = phi float [ %4079, %4224 ], [ %4079, %4307 ], [ %4487, %4512 ], [ %4079, %4075 ]
  %4204 = phi float [ %4080, %4224 ], [ %4080, %4307 ], [ %4485, %4512 ], [ %4080, %4075 ]
  %4205 = phi float [ %4081, %4224 ], [ %4081, %4307 ], [ %4463, %4512 ], [ %4081, %4075 ]
  %4206 = phi float [ %4082, %4224 ], [ %4082, %4307 ], [ %4464, %4512 ], [ %4082, %4075 ]
  %4207 = phi float [ %4083, %4224 ], [ %4083, %4307 ], [ %4465, %4512 ], [ %4083, %4075 ]
  %4208 = phi float [ %4084, %4224 ], [ %4084, %4307 ], [ %4434, %4512 ], [ %4084, %4075 ]
  %4209 = phi float [ %4085, %4224 ], [ %4085, %4307 ], [ %4432, %4512 ], [ %4085, %4075 ]
  %4210 = phi float [ %4086, %4224 ], [ %4086, %4307 ], [ %4522, %4512 ], [ %4086, %4075 ]
  %4211 = phi float [ %4087, %4224 ], [ %4087, %4307 ], [ %4523, %4512 ], [ %4087, %4075 ]
  %4212 = phi float [ %4088, %4224 ], [ %4088, %4307 ], [ %4524, %4512 ], [ %4088, %4075 ]
  %4213 = phi float [ %4089, %4224 ], [ %4089, %4307 ], [ %4413, %4512 ], [ %4089, %4075 ]
  %4214 = phi float [ %4090, %4224 ], [ %4090, %4307 ], [ %4414, %4512 ], [ %4090, %4075 ]
  %4215 = phi float [ %4091, %4224 ], [ %4091, %4307 ], [ %4415, %4512 ], [ %4091, %4075 ]
  %4216 = phi float [ %4092, %4224 ], [ %4092, %4307 ], [ %4443, %4512 ], [ %4092, %4075 ]
  %4217 = phi float [ %4093, %4224 ], [ %4093, %4307 ], [ %4440, %4512 ], [ %4093, %4075 ]
  %4218 = phi float [ %4094, %4224 ], [ %4094, %4307 ], [ %4437, %4512 ], [ %4094, %4075 ]
  %4219 = phi float [ %4095, %4224 ], [ %4095, %4307 ], [ %4430, %4512 ], [ %4095, %4075 ]
  %4220 = phi float [ %4096, %4224 ], [ %4096, %4307 ], [ %4425, %4512 ], [ %4096, %4075 ]
  %4221 = phi float [ %4097, %4224 ], [ %4097, %4307 ], [ %4426, %4512 ], [ %4097, %4075 ]
  %4222 = phi float [ %4098, %4224 ], [ %4098, %4307 ], [ %4427, %4512 ], [ %4098, %4075 ]
  %4223 = icmp eq i32 %4102, 0
  br i1 %4223, label %4525, label %4075

; <label>:4224                                    ; preds = %4075
  %4225 = extractvalue %dx.types.ResRet.f32 %4106, 3
  %4226 = extractvalue %dx.types.ResRet.f32 %4125, 3
  %4227 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4228 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4229 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4230 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4231 = extractvalue %dx.types.ResRet.i32 %4111, 3
  %4232 = extractvalue %dx.types.ResRet.i32 %4111, 2
  %4233 = bitcast float %4225 to i32
  %4234 = add i32 %4231, 0
  %4235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4234, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4237 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4235, %dx.types.Handle %4236, float %4160, float %4167, float undef, float undef, i32 0, i32 0, i32 undef, float %4188, float %4190, float undef, float %4189, float %4191, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = fmul fast float %4238, %4230
  %4240 = fadd fast float %4239, %4229
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = fmul fast float %4160, %4120
  %4243 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4167, float %4242)  ; FMad(a,b,c)
  %4244 = fadd fast float %4243, %4228
  %4245 = fmul fast float %4160, %4122
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %4123, float %4167, float %4245)  ; FMad(a,b,c)
  %4247 = fadd fast float %4246, %4227
  %4248 = fmul fast float %4188, %4120
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4190, float %4248)  ; FMad(a,b,c)
  %4250 = fmul fast float %4188, %4122
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4123, float %4190, float %4250)  ; FMad(a,b,c)
  %4252 = fmul fast float %4189, %4120
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4191, float %4252)  ; FMad(a,b,c)
  %4254 = fmul fast float %4189, %4122
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %4123, float %4191, float %4254)  ; FMad(a,b,c)
  %4256 = add i32 %4232, 0
  %4257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4258 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4257, %dx.types.Handle %4236, float %4244, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4251, float undef, float %4253, float %4255, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = and i32 %4233, 1024
  %4261 = icmp ne i32 %4260, 0
  %4262 = fcmp fast ogt float %4259, 0x3FE0101020000000
  %4263 = uitofp i1 %4262 to float
  %4264 = select i1 %4261, float %4263, float %4259
  %4265 = and i32 %4233, 8192
  %4266 = icmp ne i32 %4265, 0
  %4267 = select i1 %4266, float %4226, float 1.000000e+00
  %4268 = fmul fast float %4160, 2.000000e+00
  %4269 = fadd fast float %4268, -1.000000e+00
  %4270 = call float @dx.op.unary.f32(i32 6, float %4269)  ; FAbs(value)
  %4271 = fmul fast float %4270, %4153
  %4272 = fsub fast float %4271, %4153
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fmul fast float %4167, 2.000000e+00
  %4275 = fadd fast float %4274, -1.000000e+00
  %4276 = call float @dx.op.unary.f32(i32 6, float %4275)  ; FAbs(value)
  %4277 = fmul fast float %4276, %4154
  %4278 = fsub fast float %4277, %4154
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = fmul fast float %4179, %4116
  %4281 = fsub fast float %4280, %4116
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fmul fast float %4241, %4267
  %4284 = fmul fast float %4283, %4238
  %4285 = fmul fast float %4284, %4273
  %4286 = fmul fast float %4285, %4264
  %4287 = fmul fast float %4286, %4279
  %4288 = fmul fast float %4287, %4282
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4292 = fsub fast float %4196, %4291
  %4293 = fmul fast float %4292, %4290
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = fmul fast float %4288, %4117
  %4296 = fadd fast float %4288, %4117
  %4297 = fmul fast float %4296, %4126
  %4298 = fsub fast float %4297, %4126
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = and i32 %4233, 128
  %4301 = icmp ne i32 %4300, 0
  %4302 = select i1 %4301, float %4299, float %4295
  %4303 = fmul fast float %4302, %4294
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = fcmp fast ugt float %4303, %4305
  br i1 %4306, label %4307, label %4200

; <label>:4307                                    ; preds = %4224
  %4308 = select i1 %4266, float %4303, float 0.000000e+00
  %4309 = fadd fast float %4308, %4077
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  br i1 %4266, label %4200, label %4311

; <label>:4311                                    ; preds = %4307
  %4312 = and i32 %4233, 4
  %4313 = and i32 %4233, 8
  %4314 = add i32 %4112, 0
  %4315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4314, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4315, %dx.types.Handle %4316, float %4244, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4251, float undef, float %4253, float %4255, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.ResRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.ResRet.f32 %4317, 2
  %4321 = extractvalue %dx.types.ResRet.f32 %4317, 3
  %4322 = bitcast float %4138 to i32
  %4323 = and i32 %4322, 255
  %4324 = uitofp i32 %4323 to float
  %4325 = lshr i32 %4322, 8
  %4326 = and i32 %4325, 255
  %4327 = uitofp i32 %4326 to float
  %4328 = fmul fast float %4321, %4324
  %4329 = fadd fast float %4328, %4327
  %4330 = fmul fast float %4329, 0x3F70101000000000
  %4331 = add i32 %4113, 0
  %4332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4332, %dx.types.Handle %4316, float %4244, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4251, float undef, float %4253, float %4255, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.ResRet.f32 %4333, 2
  %4337 = extractvalue %dx.types.ResRet.f32 %4333, 3
  %4338 = bitcast float %4132 to i32
  %4339 = and i32 %4338, 255
  %4340 = uitofp i32 %4339 to float
  %4341 = lshr i32 %4338, 8
  %4342 = and i32 %4341, 255
  %4343 = uitofp i32 %4342 to float
  %4344 = lshr i32 %4338, 16
  %4345 = and i32 %4344, 255
  %4346 = uitofp i32 %4345 to float
  %4347 = fmul fast float %4346, 0x3F70101000000000
  %4348 = fmul fast float %4334, %4340
  %4349 = fadd fast float %4348, %4343
  %4350 = fmul fast float %4349, 0x3F70101000000000
  %4351 = fadd fast float %4335, -5.000000e-01
  %4352 = fadd fast float %4337, -5.000000e-01
  %4353 = fmul fast float %4351, %4347
  %4354 = fmul fast float %4352, %4347
  %4355 = fadd fast float %4353, 5.000000e-01
  %4356 = fadd fast float %4354, 5.000000e-01
  %4357 = fmul fast float %4318, %4141
  %4358 = fmul fast float %4319, %4142
  %4359 = fmul fast float %4320, %4143
  %4360 = fmul fast float %4355, 2.000000e+00
  %4361 = fadd fast float %4360, -1.000000e+00
  %4362 = fmul fast float %4356, 2.000000e+00
  %4363 = fadd fast float %4362, -1.000000e+00
  %4364 = fadd fast float %4361, %4363
  %4365 = fmul fast float %4364, 5.000000e-01
  %4366 = fsub fast float %4361, %4363
  %4367 = fmul fast float %4366, 5.000000e-01
  %4368 = call float @dx.op.unary.f32(i32 6, float %4365)  ; FAbs(value)
  %4369 = fsub fast float 1.000000e+00, %4368
  %4370 = call float @dx.op.unary.f32(i32 6, float %4367)  ; FAbs(value)
  %4371 = fsub fast float %4369, %4370
  %4372 = call float @dx.op.dot3.f32(i32 55, float %4365, float %4367, float %4371, float %4365, float %4367, float %4371)  ; Dot3(ax,ay,az,bx,by,bz)
  %4373 = call float @dx.op.unary.f32(i32 25, float %4372)  ; Rsqrt(value)
  %4374 = fmul fast float %4365, %4373
  %4375 = fmul fast float %4367, %4373
  %4376 = fmul fast float %4373, %4371
  %4377 = fmul fast float %4376, %4107
  %4378 = fmul fast float %4376, %4108
  %4379 = fmul fast float %4376, %4109
  %4380 = fmul fast float %4374, %4129
  %4381 = fmul fast float %4374, %4130
  %4382 = fmul fast float %4374, %4131
  %4383 = fadd fast float %4380, %4377
  %4384 = fadd fast float %4381, %4378
  %4385 = fadd fast float %4382, %4379
  %4386 = fmul fast float %4375, %4135
  %4387 = fmul fast float %4375, %4136
  %4388 = fmul fast float %4375, %4137
  %4389 = fadd fast float %4383, %4386
  %4390 = fadd fast float %4384, %4387
  %4391 = fadd fast float %4385, %4388
  %4392 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4391, float %4389, float %4390, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.unary.f32(i32 25, float %4392)  ; Rsqrt(value)
  %4394 = fmul fast float %4389, %4393
  %4395 = fmul fast float %4390, %4393
  %4396 = fmul fast float %4391, %4393
  %4397 = icmp ne i32 %4313, 0
  %4398 = select i1 %4397, float 1.000000e+00, float 0.000000e+00
  %4399 = fmul fast float %4303, %4398
  %4400 = and i32 %4233, 1
  %4401 = icmp eq i32 %4400, 0
  br i1 %4401, label %4402, label %4406

; <label>:4402                                    ; preds = %4311
  %4403 = fsub fast float %4394, %4089
  %4404 = fsub fast float %4395, %4090
  %4405 = fsub fast float %4396, %4091
  br label %4406

; <label>:4406                                    ; preds = %4402, %4311
  %4407 = phi float [ %4403, %4402 ], [ %4394, %4311 ]
  %4408 = phi float [ %4404, %4402 ], [ %4395, %4311 ]
  %4409 = phi float [ %4405, %4402 ], [ %4396, %4311 ]
  %4410 = fmul float %4409, %4399
  %4411 = fmul float %4408, %4399
  %4412 = fmul float %4407, %4399
  %4413 = fadd fast float %4412, %4089
  %4414 = fadd fast float %4411, %4090
  %4415 = fadd fast float %4410, %4091
  %4416 = icmp ne i32 %4312, 0
  %4417 = select i1 %4416, float 1.000000e+00, float 0.000000e+00
  %4418 = fmul fast float %4303, %4417
  %4419 = fsub fast float %4357, %4096
  %4420 = fsub fast float %4358, %4097
  %4421 = fsub fast float %4359, %4098
  %4422 = fmul fast float %4419, %4418
  %4423 = fmul fast float %4420, %4418
  %4424 = fmul fast float %4421, %4418
  %4425 = fadd fast float %4422, %4096
  %4426 = fadd fast float %4423, %4097
  %4427 = fadd fast float %4424, %4098
  %4428 = fsub fast float %4330, %4095
  %4429 = fmul fast float %4428, %4418
  %4430 = fadd fast float %4429, %4095
  %4431 = fmul fast float %4418, %4085
  %4432 = fsub fast float %4085, %4431
  %4433 = fmul fast float %4418, %4084
  %4434 = fsub fast float %4084, %4433
  %4435 = bitcast float %4150 to i32
  %4436 = fadd fast float %4303, %4094
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fsub fast float %4350, %4093
  %4439 = fmul fast float %4438, %4399
  %4440 = fadd fast float %4439, %4093
  %4441 = fsub fast float %4336, %4092
  %4442 = fmul fast float %4441, %4399
  %4443 = fadd fast float %4442, %4092
  br i1 %4401, label %4452, label %4444

; <label>:4444                                    ; preds = %4406
  %4445 = and i32 %4233, 32768
  %4446 = icmp eq i32 %4445, 0
  br i1 %4446, label %4462, label %4447

; <label>:4447                                    ; preds = %4444
  %4448 = fmul fast float %4399, 1.270000e+02
  %4449 = fadd fast float %4448, %4081
  %4450 = fadd fast float %4448, %4082
  %4451 = fadd fast float %4448, %4083
  br label %4462

; <label>:4452                                    ; preds = %4406
  %4453 = fsub fast float 1.270000e+02, %4081
  %4454 = fsub fast float 1.270000e+02, %4082
  %4455 = fsub fast float 1.270000e+02, %4083
  %4456 = fmul fast float %4399, %4453
  %4457 = fmul fast float %4399, %4454
  %4458 = fmul fast float %4399, %4455
  %4459 = fadd fast float %4456, %4081
  %4460 = fadd fast float %4457, %4082
  %4461 = fadd fast float %4458, %4083
  br label %4462

; <label>:4462                                    ; preds = %4452, %4447, %4444
  %4463 = phi float [ %4449, %4447 ], [ %4081, %4444 ], [ %4459, %4452 ]
  %4464 = phi float [ %4450, %4447 ], [ %4082, %4444 ], [ %4460, %4452 ]
  %4465 = phi float [ %4451, %4447 ], [ %4083, %4444 ], [ %4461, %4452 ]
  %4466 = call float @dx.op.dot3.f32(i32 55, float %4357, float %4358, float %4359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4470 = fmul fast float %4469, %4466
  %4471 = fadd fast float %4470, %4468
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = bitcast float %4144 to i32
  %4474 = and i32 %4473, 65535
  %4475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4474)  ; LegacyF16ToF32(value)
  %4476 = lshr i32 %4473, 16
  %4477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4476)  ; LegacyF16ToF32(value)
  %4478 = fcmp fast oge float %4475, 0.000000e+00
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 0
  %4481 = select i1 %4478, float %4475, float %4480
  %4482 = fadd fast float %4481, %4477
  %4483 = fsub fast float %4472, %4080
  %4484 = fmul fast float %4483, %4303
  %4485 = fadd fast float %4484, %4080
  %4486 = fmul fast float %4482, %4303
  %4487 = call float @dx.op.binary.f32(i32 35, float %4079, float %4486)  ; FMax(a,b)
  %4488 = call float @dx.op.binary.f32(i32 35, float %4078, float %4303)  ; FMax(a,b)
  %4489 = and i32 %4233, 16
  %4490 = icmp eq i32 %4489, 0
  br i1 %4490, label %4512, label %4491

; <label>:4491                                    ; preds = %4462
  %4492 = add i32 %4147, 0
  %4493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4492, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4494 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4493, %dx.types.Handle %4316, float %4244, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4251, float undef, float %4253, float %4255, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = extractvalue %dx.types.ResRet.f32 %4494, 1
  %4497 = extractvalue %dx.types.ResRet.f32 %4494, 2
  %4498 = and i32 %4435, 65535
  %4499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4498)  ; LegacyF16ToF32(value)
  %4500 = fmul fast float %4495, %4141
  %4501 = fmul fast float %4496, %4142
  %4502 = fmul fast float %4497, %4143
  %4503 = and i32 %4233, 16384
  %4504 = icmp ne i32 %4503, 0
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 0
  %4507 = select i1 %4504, float %4506, float 1.000000e+00
  %4508 = fmul fast float %4507, %4499
  %4509 = fmul fast float %4500, %4508
  %4510 = fmul fast float %4501, %4508
  %4511 = fmul fast float %4502, %4508
  br label %4512

; <label>:4512                                    ; preds = %4491, %4462
  %4513 = phi float [ %4509, %4491 ], [ 0.000000e+00, %4462 ]
  %4514 = phi float [ %4510, %4491 ], [ 0.000000e+00, %4462 ]
  %4515 = phi float [ %4511, %4491 ], [ 0.000000e+00, %4462 ]
  %4516 = fsub fast float %4513, %4086
  %4517 = fsub fast float %4514, %4087
  %4518 = fsub fast float %4515, %4088
  %4519 = fmul fast float %4516, %4303
  %4520 = fmul fast float %4517, %4303
  %4521 = fmul fast float %4518, %4303
  %4522 = fadd fast float %4519, %4086
  %4523 = fadd fast float %4520, %4087
  %4524 = fadd fast float %4521, %4088
  br label %4200

; <label>:4525                                    ; preds = %4200
  br label %4526

; <label>:4526                                    ; preds = %4525, %4012
  %4527 = phi float [ 0.000000e+00, %4012 ], [ %4201, %4525 ]
  %4528 = phi float [ %1177, %4012 ], [ %4202, %4525 ]
  %4529 = phi float [ %3951, %4012 ], [ %4203, %4525 ]
  %4530 = phi float [ %3930, %4012 ], [ %4204, %4525 ]
  %4531 = phi float [ %3916, %4012 ], [ %4205, %4525 ]
  %4532 = phi float [ %3917, %4012 ], [ %4206, %4525 ]
  %4533 = phi float [ %3918, %4012 ], [ %4207, %4525 ]
  %4534 = phi float [ %3929, %4012 ], [ %4208, %4525 ]
  %4535 = phi float [ 0.000000e+00, %4012 ], [ %4209, %4525 ]
  %4536 = phi float [ %3976, %4012 ], [ %4210, %4525 ]
  %4537 = phi float [ %3979, %4012 ], [ %4211, %4525 ]
  %4538 = phi float [ %3982, %4012 ], [ %4212, %4525 ]
  %4539 = phi float [ %4008, %4012 ], [ %4213, %4525 ]
  %4540 = phi float [ %4009, %4012 ], [ %4214, %4525 ]
  %4541 = phi float [ %4010, %4012 ], [ %4215, %4525 ]
  %4542 = phi float [ %3927, %4012 ], [ %4216, %4525 ]
  %4543 = phi float [ %3926, %4012 ], [ %4217, %4525 ]
  %4544 = phi float [ 0.000000e+00, %4012 ], [ %4218, %4525 ]
  %4545 = phi float [ %3925, %4012 ], [ %4219, %4525 ]
  %4546 = phi float [ %3960, %4012 ], [ %4220, %4525 ]
  %4547 = phi float [ %3961, %4012 ], [ %4221, %4525 ]
  %4548 = phi float [ %3962, %4012 ], [ %4222, %4525 ]
  %4549 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float %4539, float %4540, float %4541)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = call float @dx.op.unary.f32(i32 25, float %4549)  ; Rsqrt(value)
  %4551 = fmul fast float %4550, %4539
  %4552 = fmul fast float %4550, %4540
  %4553 = fmul fast float %4550, %4541
  %4554 = fadd fast float %4544, %1177
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4551, float %4552, float %4553, float %4551, float %4552, float %4553)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = call float @dx.op.unary.f32(i32 25, float %4556)  ; Rsqrt(value)
  %4558 = fmul fast float %4557, %4551
  %4559 = fmul fast float %4557, %4552
  %4560 = fmul fast float %4557, %4553
  br label %4561

; <label>:4561                                    ; preds = %4526, %3913
  %4562 = phi float [ %4558, %4526 ], [ %4008, %3913 ]
  %4563 = phi float [ %4559, %4526 ], [ %4009, %3913 ]
  %4564 = phi float [ %4560, %4526 ], [ %4010, %3913 ]
  %4565 = phi float [ %4546, %4526 ], [ %3960, %3913 ]
  %4566 = phi float [ %4547, %4526 ], [ %3961, %3913 ]
  %4567 = phi float [ %4548, %4526 ], [ %3962, %3913 ]
  %4568 = phi float [ %4536, %4526 ], [ %3976, %3913 ]
  %4569 = phi float [ %4537, %4526 ], [ %3979, %3913 ]
  %4570 = phi float [ %4538, %4526 ], [ %3982, %3913 ]
  %4571 = phi float [ %4531, %4526 ], [ %3916, %3913 ]
  %4572 = phi float [ %4532, %4526 ], [ %3917, %3913 ]
  %4573 = phi float [ %4533, %4526 ], [ %3918, %3913 ]
  %4574 = phi float [ %4545, %4526 ], [ %3925, %3913 ]
  %4575 = phi float [ %4555, %4526 ], [ %1177, %3913 ]
  %4576 = phi float [ %4543, %4526 ], [ %3926, %3913 ]
  %4577 = phi float [ %4542, %4526 ], [ %3927, %3913 ]
  %4578 = phi float [ %4535, %4526 ], [ 0.000000e+00, %3913 ]
  %4579 = phi float [ %4534, %4526 ], [ %3929, %3913 ]
  %4580 = phi float [ %4527, %4526 ], [ 0.000000e+00, %3913 ]
  %4581 = phi float [ %4529, %4526 ], [ %3951, %3913 ]
  %4582 = phi float [ %4528, %4526 ], [ %1177, %3913 ]
  %4583 = phi float [ %4530, %4526 ], [ %3930, %3913 ]
  %4584 = fadd fast float %4574, 0xBFB99999A0000000
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %4585, 0x3FF1C71C80000000
  %4587 = call float @dx.op.binary.f32(i32 36, float %4574, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4588 = fsub fast float 1.000000e+00, %4586
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, %4565
  %4591 = fmul fast float %4589, %4566
  %4592 = fmul fast float %4589, %4567
  %4593 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4596 = fmul fast float %4586, %4565
  %4597 = fmul fast float %4586, %4566
  %4598 = fmul fast float %4586, %4567
  %4599 = fadd fast float %4596, %4587
  %4600 = fadd fast float %4597, %4587
  %4601 = fadd fast float %4598, %4587
  %4602 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4606 = call float @dx.op.binary.f32(i32 36, float %4571, float 1.270000e+02)  ; FMin(a,b)
  %4607 = call float @dx.op.binary.f32(i32 36, float %4572, float 1.270000e+02)  ; FMin(a,b)
  %4608 = call float @dx.op.binary.f32(i32 36, float %4573, float 1.270000e+02)  ; FMin(a,b)
  %4609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.i32 %4609, 3
  %4611 = and i32 %4610, 8
  %4612 = icmp ne i32 %4611, 0
  %4613 = call float @dx.op.binary.f32(i32 35, float %4593, float %4565)  ; FMax(a,b)
  %4614 = call float @dx.op.binary.f32(i32 35, float %4594, float %4565)  ; FMax(a,b)
  %4615 = call float @dx.op.binary.f32(i32 35, float %4595, float %4565)  ; FMax(a,b)
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4593, float %4594, float %4595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = select i1 %278, float %4565, float %4593
  %4618 = select i1 %278, float %4616, float %4594
  %4619 = select i1 %278, float 1.000000e+00, float %4595
  %4620 = select i1 %4612, float %4613, float %4617
  %4621 = select i1 %4612, float %4614, float %4618
  %4622 = select i1 %4612, float %4615, float %4619
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.CBufRet.f32 %4623, 2
  %4627 = fadd fast float %4624, %206
  %4628 = fadd fast float %4625, %207
  %4629 = fadd fast float %4626, %208
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.CBufRet.f32 %4630, 1
  %4633 = fsub fast float %4627, %4631
  %4634 = fsub fast float %4628, %4632
  %4635 = fmul fast float %4633, %4633
  %4636 = fmul fast float %4634, %4634
  %4637 = fadd fast float %4635, %4636
  %4638 = call float @dx.op.unary.f32(i32 24, float %4637)  ; Sqrt(value)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4630, 2
  %4640 = fcmp fast olt float %4638, %4639
  br i1 %4640, label %4641, label %4708

; <label>:4641                                    ; preds = %4561
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 0
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.CBufRet.f32 %4642, 1
  %4649 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4650 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4642, 3
  %4652 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4653 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4654 = fadd fast float %4651, %4627
  %4655 = fadd fast float %4652, %4628
  %4656 = fadd fast float %4653, %4629
  %4657 = fmul fast float %4654, %4643
  %4658 = call float @dx.op.tertiary.f32(i32 46, float %4655, float %4645, float %4657)  ; FMad(a,b,c)
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4656, float %4647, float %4658)  ; FMad(a,b,c)
  %4660 = fmul fast float %4654, %4648
  %4661 = call float @dx.op.tertiary.f32(i32 46, float %4655, float %4649, float %4660)  ; FMad(a,b,c)
  %4662 = call float @dx.op.tertiary.f32(i32 46, float %4656, float %4650, float %4661)  ; FMad(a,b,c)
  %4663 = fsub fast float %4659, %4651
  %4664 = fsub fast float %4662, %4652
  %4665 = fsub fast float %4663, %4631
  %4666 = fadd fast float %4665, %4639
  %4667 = fsub fast float %4664, %4632
  %4668 = fadd fast float %4667, %4639
  %4669 = extractvalue %dx.types.CBufRet.f32 %4630, 3
  %4670 = fmul fast float %4666, %4669
  %4671 = fmul fast float %4668, %4669
  %4672 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4673 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4674 = fsub fast float 1.000000e+00, %4672
  %4675 = fsub fast float 1.000000e+00, %4673
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %4674, float %4675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = fcmp fast ugt float %4677, 0.000000e+00
  br i1 %4678, label %4679, label %4982

; <label>:4679                                    ; preds = %4641
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 2
  %4682 = fmul fast float %4681, %4677
  %4683 = extractvalue %dx.types.CBufRet.f32 %4680, 3
  %4684 = fadd fast float %4683, %4682
  %4685 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4686 = fadd fast float %4684, %4653
  %4687 = fmul fast float %4659, %4647
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4650, float %4687)  ; FMad(a,b,c)
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4686, float %4685, float %4688)  ; FMad(a,b,c)
  %4690 = fsub fast float %4689, %4653
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 2
  %4693 = fsub fast float %4690, %4692
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4674, float %4675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4674, float %4675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4698, 2
  %4702 = fadd fast float %4699, %4695
  %4703 = fmul fast float %4702, 0x3F847AE140000000
  %4704 = fadd fast float %4700, %4696
  %4705 = fmul fast float %4704, 0x3F847AE140000000
  %4706 = fadd fast float %4701, %4697
  %4707 = fmul fast float %4706, 0x3F847AE140000000
  br label %4982

; <label>:4708                                    ; preds = %4561
  %4709 = and i32 %257, 1
  %4710 = icmp eq i32 %4709, 0
  br i1 %4710, label %4982, label %4711

; <label>:4711                                    ; preds = %4708
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.f32 %4712, 0
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4712, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4720 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4721 = extractvalue %dx.types.CBufRet.f32 %4712, 3
  %4722 = extractvalue %dx.types.CBufRet.f32 %4714, 3
  %4723 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4724 = fadd fast float %4721, %4627
  %4725 = fadd fast float %4722, %4628
  %4726 = fadd fast float %4723, %4629
  %4727 = fmul fast float %4724, %4713
  %4728 = call float @dx.op.tertiary.f32(i32 46, float %4725, float %4715, float %4727)  ; FMad(a,b,c)
  %4729 = call float @dx.op.tertiary.f32(i32 46, float %4726, float %4717, float %4728)  ; FMad(a,b,c)
  %4730 = fmul fast float %4724, %4718
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4725, float %4719, float %4730)  ; FMad(a,b,c)
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4726, float %4720, float %4731)  ; FMad(a,b,c)
  %4733 = fsub fast float %4729, %4721
  %4734 = fsub fast float %4732, %4722
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 0
  %4737 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4738 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4739 = extractvalue %dx.types.CBufRet.f32 %4735, 3
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 3
  %4742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.i32 %4742, 0
  %4744 = extractvalue %dx.types.CBufRet.i32 %4742, 1
  %4745 = udiv i32 %4744, %4743
  %4746 = fsub fast float %4733, %4736
  %4747 = fsub fast float %4734, %4737
  %4748 = call float @dx.op.binary.f32(i32 35, float %4746, float 0.000000e+00)  ; FMax(a,b)
  %4749 = call float @dx.op.binary.f32(i32 35, float %4747, float 0.000000e+00)  ; FMax(a,b)
  %4750 = call float @dx.op.binary.f32(i32 36, float %4748, float %4738)  ; FMin(a,b)
  %4751 = call float @dx.op.binary.f32(i32 36, float %4749, float %4739)  ; FMin(a,b)
  %4752 = add i32 %4743, -1
  %4753 = add i32 %4745, -1
  %4754 = fmul fast float %4750, %4741
  %4755 = fmul fast float %4751, %4741
  %4756 = fptoui float %4754 to i32
  %4757 = fptoui float %4755 to i32
  %4758 = call i32 @dx.op.binary.i32(i32 40, i32 %4756, i32 %4752)  ; UMin(a,b)
  %4759 = call i32 @dx.op.binary.i32(i32 40, i32 %4757, i32 %4753)  ; UMin(a,b)
  %4760 = mul i32 %4759, %4743
  %4761 = add i32 %4760, %4758
  %4762 = shl i32 %4761, 2
  %4763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4762, i32 undef)  ; BufferLoad(srv,index,wot)
  %4764 = extractvalue %dx.types.ResRet.i32 %4763, 0
  %4765 = icmp eq i32 %4764, -1
  br i1 %4765, label %4982, label %4766

; <label>:4766                                    ; preds = %4711
  %4767 = mul i32 %4764, 148
  %4768 = add i32 %4767, 4
  %4769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4768, i32 undef)  ; BufferLoad(srv,index,wot)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 0
  %4771 = add i32 %4767, 8
  %4772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4771, i32 undef)  ; BufferLoad(srv,index,wot)
  %4773 = extractvalue %dx.types.ResRet.f32 %4772, 0
  %4774 = add i32 %4767, 36
  %4775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4774, i32 undef)  ; BufferLoad(srv,index,wot)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 0
  %4777 = add i32 %4767, 60
  %4778 = add i32 %4767, 92
  %4779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4778, i32 undef)  ; BufferLoad(srv,index,wot)
  %4780 = extractvalue %dx.types.ResRet.i32 %4779, 0
  %4781 = add i32 %4767, 116
  %4782 = fsub fast float %4733, %4770
  %4783 = fsub fast float %4734, %4773
  %4784 = fmul fast float %4741, %4782
  %4785 = fmul fast float %4741, %4783
  %4786 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4788 = fsub fast float 1.000000e+00, %4787
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 2
  %4791 = call float @dx.op.unary.f32(i32 83, float %4786)  ; DerivCoarseX(value)
  %4792 = call float @dx.op.unary.f32(i32 83, float %4788)  ; DerivCoarseX(value)
  %4793 = call float @dx.op.unary.f32(i32 84, float %4786)  ; DerivCoarseY(value)
  %4794 = call float @dx.op.unary.f32(i32 84, float %4788)  ; DerivCoarseY(value)
  %4795 = fmul fast float %4791, %4790
  %4796 = fmul fast float %4792, %4790
  %4797 = fmul fast float %4793, %4790
  %4798 = fmul fast float %4794, %4790
  %4799 = call float @dx.op.dot2.f32(i32 54, float %4797, float %4798, float %4797, float %4798)  ; Dot2(ax,ay,bx,by)
  %4800 = call float @dx.op.dot2.f32(i32 54, float %4795, float %4796, float %4795, float %4796)  ; Dot2(ax,ay,bx,by)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4800, float %4799)  ; FMax(a,b)
  %4802 = call float @dx.op.unary.f32(i32 23, float %4801)  ; Log(value)
  %4803 = fmul fast float %4802, 5.000000e-01
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 1
  %4806 = fadd fast float %4805, %4803
  %4807 = call float @dx.op.binary.f32(i32 35, float %4806, float 0.000000e+00)  ; FMax(a,b)
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 3
  %4810 = fadd fast float %4809, %4807
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 3
  %4813 = fadd fast float %4810, %4812
  %4814 = add i32 %4780, 0
  %4815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4814, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4816 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4815, i32 0)  ; GetDimensions(handle,mipLevel)
  %4817 = extractvalue %dx.types.Dimensions %4816, 0
  %4818 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4817)  ; FirstbitLo(value)
  %4819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.i32 %4819, 1
  %4821 = sub nsw i32 %4820, %4818
  %4822 = sitofp i32 %4821 to float
  %4823 = fsub fast float %4813, %4822
  %4824 = call float @dx.op.binary.f32(i32 35, float %4823, float 0.000000e+00)  ; FMax(a,b)
  %4825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4815, %dx.types.Handle %53, float %4786, float %4788, float %4776, float undef, i32 0, i32 0, i32 undef, float %4824)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = fcmp ule float %4826, 0x3FE0101020000000
  %4828 = extractvalue %dx.types.CBufRet.i32 %4819, 0
  %4829 = and i32 %4828, 128
  %4830 = icmp ne i32 %4829, 0
  %4831 = and i1 %4827, %4830
  br i1 %4831, label %4982, label %4832

; <label>:4832                                    ; preds = %4766
  %4833 = add i32 %4767, 20
  %4834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4833, i32 undef)  ; BufferLoad(srv,index,wot)
  %4835 = extractvalue %dx.types.ResRet.f32 %4834, 0
  %4836 = add i32 %4767, 24
  %4837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4836, i32 undef)  ; BufferLoad(srv,index,wot)
  %4838 = extractvalue %dx.types.ResRet.f32 %4837, 0
  %4839 = add i32 %4767, 40
  %4840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4839, i32 undef)  ; BufferLoad(srv,index,wot)
  %4841 = extractvalue %dx.types.ResRet.f32 %4840, 0
  %4842 = add i32 %4767, 96
  %4843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4842, i32 undef)  ; BufferLoad(srv,index,wot)
  %4844 = extractvalue %dx.types.ResRet.i32 %4843, 0
  %4845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4845, 2
  %4847 = fmul fast float %4846, %4786
  %4848 = fmul fast float %4846, %4788
  %4849 = extractvalue %dx.types.CBufRet.f32 %4845, 3
  %4850 = fadd fast float %4847, %4849
  %4851 = fadd fast float %4848, %4849
  %4852 = add i32 %4844, 0
  %4853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4852, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4854 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4853, i32 0)  ; GetDimensions(handle,mipLevel)
  %4855 = extractvalue %dx.types.Dimensions %4854, 0
  %4856 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4855)  ; FirstbitLo(value)
  %4857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.i32 %4857, 1
  %4859 = sub nsw i32 %4858, %4856
  %4860 = sitofp i32 %4859 to float
  %4861 = fsub fast float %4810, %4860
  %4862 = call float @dx.op.binary.f32(i32 35, float %4861, float 0.000000e+00)  ; FMax(a,b)
  %4863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4853, %dx.types.Handle %53, float %4850, float %4851, float %4841, float undef, i32 0, i32 0, i32 undef, float %4862)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4864 = extractvalue %dx.types.ResRet.f32 %4863, 0
  %4865 = fmul fast float %4864, %4835
  %4866 = fadd fast float %4865, %4838
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 3
  %4875 = extractvalue %dx.types.CBufRet.f32 %4867, 3
  %4876 = fadd fast float %4872, %4733
  %4877 = fadd fast float %4874, %4734
  %4878 = fadd fast float %4866, %4875
  %4879 = fmul fast float %4876, %4868
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4877, float %4869, float %4879)  ; FMad(a,b,c)
  %4881 = call float @dx.op.tertiary.f32(i32 46, float %4878, float %4870, float %4880)  ; FMad(a,b,c)
  %4882 = fsub fast float %4881, %4875
  %4883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4883, 2
  %4885 = fsub fast float %4882, %4884
  %4886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.i32 %4886, 0
  %4888 = call i32 @dx.op.binary.i32(i32 40, i32 %4764, i32 %4887)  ; UMin(a,b)
  %4889 = mul i32 %4888, 36
  %4890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4889, i32 undef)  ; BufferLoad(srv,index,wot)
  %4891 = extractvalue %dx.types.ResRet.i32 %4890, 0
  %4892 = add i32 %4889, 4
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = fmul fast float %4894, %4786
  %4896 = fmul fast float %4894, %4788
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4898 = fadd fast float %4895, %4897
  %4899 = fadd fast float %4896, %4897
  %4900 = icmp eq i32 %4891, 0
  br i1 %4900, label %4969, label %4901

; <label>:4901                                    ; preds = %4832
  br label %4902

; <label>:4902                                    ; preds = %4959, %4901
  %4903 = phi float [ %4960, %4959 ], [ 0.000000e+00, %4901 ]
  %4904 = phi float [ %4961, %4959 ], [ 0.000000e+00, %4901 ]
  %4905 = phi float [ %4962, %4959 ], [ 0.000000e+00, %4901 ]
  %4906 = phi float [ %4963, %4959 ], [ 0.000000e+00, %4901 ]
  %4907 = phi float [ %4964, %4959 ], [ 0.000000e+00, %4901 ]
  %4908 = phi float [ %4965, %4959 ], [ 0.000000e+00, %4901 ]
  %4909 = phi i32 [ %4966, %4959 ], [ 0, %4901 ]
  %4910 = shl i32 %4909, 2
  %4911 = add i32 %4777, %4910
  %4912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4911, i32 undef)  ; BufferLoad(srv,index,wot)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = add i32 %4781, %4910
  %4915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4914, i32 undef)  ; BufferLoad(srv,index,wot)
  %4916 = extractvalue %dx.types.ResRet.i32 %4915, 0
  %4917 = add i32 %4916, 0
  %4918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4917, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4919 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4918, i32 0)  ; GetDimensions(handle,mipLevel)
  %4920 = extractvalue %dx.types.Dimensions %4919, 0
  %4921 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4920)  ; FirstbitLo(value)
  %4922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.i32 %4922, 1
  %4924 = sub nsw i32 %4923, %4921
  %4925 = sitofp i32 %4924 to float
  %4926 = fsub fast float %4810, %4925
  %4927 = call float @dx.op.binary.f32(i32 35, float %4926, float 0.000000e+00)  ; FMax(a,b)
  %4928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4918, %dx.types.Handle %53, float %4898, float %4899, float %4913, float undef, i32 0, i32 0, i32 undef, float %4927)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = fcmp fast ogt float %4929, 0.000000e+00
  br i1 %4930, label %4931, label %4959

; <label>:4931                                    ; preds = %4902
  %4932 = add i32 %4892, %4910
  %4933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4934 = extractvalue %dx.types.ResRet.i32 %4933, 0
  %4935 = and i32 %4934, 32767
  %4936 = mul nuw nsw i32 %4935, 928
  %4937 = add nuw nsw i32 %4936, 48
  %4938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4937, i32 undef)  ; BufferLoad(srv,index,wot)
  %4939 = extractvalue %dx.types.ResRet.f32 %4938, 0
  %4940 = extractvalue %dx.types.ResRet.f32 %4938, 1
  %4941 = extractvalue %dx.types.ResRet.f32 %4938, 2
  %4942 = add nuw nsw i32 %4936, 60
  %4943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4942, i32 undef)  ; BufferLoad(srv,index,wot)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.ResRet.f32 %4943, 1
  %4946 = extractvalue %dx.types.ResRet.f32 %4943, 2
  %4947 = fmul fast float %4939, %4929
  %4948 = fmul fast float %4940, %4929
  %4949 = fmul fast float %4941, %4929
  %4950 = fadd fast float %4947, %4903
  %4951 = fadd fast float %4948, %4904
  %4952 = fadd fast float %4949, %4905
  %4953 = fmul fast float %4944, %4929
  %4954 = fmul fast float %4945, %4929
  %4955 = fmul fast float %4946, %4929
  %4956 = fadd fast float %4953, %4906
  %4957 = fadd fast float %4954, %4907
  %4958 = fadd fast float %4955, %4908
  br label %4959

; <label>:4959                                    ; preds = %4931, %4902
  %4960 = phi float [ %4950, %4931 ], [ %4903, %4902 ]
  %4961 = phi float [ %4951, %4931 ], [ %4904, %4902 ]
  %4962 = phi float [ %4952, %4931 ], [ %4905, %4902 ]
  %4963 = phi float [ %4956, %4931 ], [ %4906, %4902 ]
  %4964 = phi float [ %4957, %4931 ], [ %4907, %4902 ]
  %4965 = phi float [ %4958, %4931 ], [ %4908, %4902 ]
  %4966 = add nuw i32 %4909, 1
  %4967 = icmp eq i32 %4966, %4891
  br i1 %4967, label %4968, label %4902

; <label>:4968                                    ; preds = %4959
  br label %4969

; <label>:4969                                    ; preds = %4968, %4832
  %4970 = phi float [ 0.000000e+00, %4832 ], [ %4960, %4968 ]
  %4971 = phi float [ 0.000000e+00, %4832 ], [ %4961, %4968 ]
  %4972 = phi float [ 0.000000e+00, %4832 ], [ %4962, %4968 ]
  %4973 = phi float [ 0.000000e+00, %4832 ], [ %4963, %4968 ]
  %4974 = phi float [ 0.000000e+00, %4832 ], [ %4964, %4968 ]
  %4975 = phi float [ 0.000000e+00, %4832 ], [ %4965, %4968 ]
  %4976 = fadd fast float %4973, %4970
  %4977 = fmul fast float %4976, 0x3F847AE140000000
  %4978 = fadd fast float %4974, %4971
  %4979 = fmul fast float %4978, 0x3F847AE140000000
  %4980 = fadd fast float %4975, %4972
  %4981 = fmul fast float %4980, 0x3F847AE140000000
  br label %4982

; <label>:4982                                    ; preds = %4969, %4766, %4711, %4708, %4679, %4641
  %4983 = phi float [ %4703, %4679 ], [ 0.000000e+00, %4641 ], [ %4977, %4969 ], [ 0.000000e+00, %4711 ], [ 0.000000e+00, %4766 ], [ 0.000000e+00, %4708 ]
  %4984 = phi float [ %4705, %4679 ], [ 0.000000e+00, %4641 ], [ %4979, %4969 ], [ 0.000000e+00, %4711 ], [ 0.000000e+00, %4766 ], [ 0.000000e+00, %4708 ]
  %4985 = phi float [ %4707, %4679 ], [ 0.000000e+00, %4641 ], [ %4981, %4969 ], [ 0.000000e+00, %4711 ], [ 0.000000e+00, %4766 ], [ 0.000000e+00, %4708 ]
  %4986 = phi float [ %4693, %4679 ], [ -1.310720e+05, %4641 ], [ %4885, %4969 ], [ -1.310720e+05, %4711 ], [ -1.310720e+05, %4766 ], [ -1.310720e+05, %4708 ]
  %4987 = phi i1 [ true, %4679 ], [ false, %4641 ], [ true, %4969 ], [ false, %4711 ], [ false, %4766 ], [ false, %4708 ]
  %4988 = and i32 %257, 3
  %4989 = icmp eq i32 %4988, 1
  %4990 = select i1 %4989, float 1.000000e+00, float 0.000000e+00
  %4991 = fsub fast float %4986, %208
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = select i1 %4987, float %4992, float 1.000000e+00
  %4994 = fmul fast float %4993, %4990
  %4995 = icmp eq i32 %4988, 3
  %4996 = select i1 %4995, float 1.000000e+00, float %4994
  %4997 = call float @dx.op.binary.f32(i32 35, float %4580, float %4996)  ; FMax(a,b)
  %4998 = fcmp fast olt float %4996, 1.000000e+00
  %4999 = fcmp uge float %79, 0.000000e+00
  %5000 = and i1 %4999, %4998
  br i1 %5000, label %5001, label %5011

; <label>:5001                                    ; preds = %4982
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %79, float %80, float %81, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.ResRet.f32 %5002, 1
  %5005 = extractvalue %dx.types.ResRet.f32 %5002, 2
  %5006 = fadd fast float %5003, %4997
  %5007 = fcmp ule float %78, 0.000000e+00
  %5008 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = select i1 %5007, float %5008, float 1.000000e+00
  %5010 = fmul fast float %5009, %5005
  br label %5011

; <label>:5011                                    ; preds = %5001, %4982
  %5012 = phi float [ %5006, %5001 ], [ %4997, %4982 ]
  %5013 = phi float [ %5004, %5001 ], [ 0.000000e+00, %4982 ]
  %5014 = phi float [ %5010, %5001 ], [ 0.000000e+00, %4982 ]
  %5015 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5016 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5017 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5018 = fcmp fast une float %5016, 0.000000e+00
  %5019 = fcmp fast une float %5017, 0.000000e+00
  %5020 = or i1 %5018, %5019
  br i1 %5020, label %5021, label %5580

; <label>:5021                                    ; preds = %5011
  br i1 %5018, label %5022, label %5295

; <label>:5022                                    ; preds = %5021
  %5023 = call float @dx.op.unary.f32(i32 23, float %4577)  ; Log(value)
  %5024 = fmul fast float %5023, 4.000000e+00
  %5025 = call float @dx.op.unary.f32(i32 21, float %5024)  ; Exp(value)
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 0
  %5028 = fmul fast float %5027, %66
  %5029 = fmul fast float %5027, %67
  %5030 = fmul fast float %5027, %68
  %5031 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %5032 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %5033 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5034 = call float @dx.op.unary.f32(i32 23, float %5031)  ; Log(value)
  %5035 = call float @dx.op.unary.f32(i32 23, float %5032)  ; Log(value)
  %5036 = call float @dx.op.unary.f32(i32 23, float %5033)  ; Log(value)
  %5037 = fmul fast float %5034, 4.000000e+00
  %5038 = fmul fast float %5035, 4.000000e+00
  %5039 = fmul fast float %5036, 4.000000e+00
  %5040 = call float @dx.op.unary.f32(i32 21, float %5037)  ; Exp(value)
  %5041 = call float @dx.op.unary.f32(i32 21, float %5038)  ; Exp(value)
  %5042 = call float @dx.op.unary.f32(i32 21, float %5039)  ; Exp(value)
  %5043 = fadd fast float %5041, %5040
  %5044 = fadd fast float %5043, %5042
  %5045 = fdiv fast float 1.000000e+00, %5044
  %5046 = fmul fast float %5045, %5040
  %5047 = fcmp fast ogt float %75, 0.000000e+00
  %5048 = fcmp fast ogt float %76, 0.000000e+00
  %5049 = fcmp fast ogt float %77, 0.000000e+00
  %5050 = fcmp fast olt float %75, 0.000000e+00
  %5051 = fcmp fast olt float %76, 0.000000e+00
  %5052 = fcmp fast olt float %77, 0.000000e+00
  %5053 = zext i1 %5047 to i32
  %5054 = zext i1 %5048 to i32
  %5055 = zext i1 %5049 to i32
  %5056 = zext i1 %5050 to i32
  %5057 = zext i1 %5051 to i32
  %5058 = zext i1 %5052 to i32
  %5059 = sub nsw i32 %5053, %5056
  %5060 = sub nsw i32 %5054, %5057
  %5061 = sub nsw i32 %5055, %5058
  %5062 = call float @dx.op.unary.f32(i32 83, float %5028)  ; DerivCoarseX(value)
  %5063 = call float @dx.op.unary.f32(i32 83, float %5029)  ; DerivCoarseX(value)
  %5064 = call float @dx.op.unary.f32(i32 83, float %5030)  ; DerivCoarseX(value)
  %5065 = call float @dx.op.unary.f32(i32 84, float %5028)  ; DerivCoarseY(value)
  %5066 = call float @dx.op.unary.f32(i32 84, float %5029)  ; DerivCoarseY(value)
  %5067 = call float @dx.op.unary.f32(i32 84, float %5030)  ; DerivCoarseY(value)
  %5068 = fcmp fast ole float %289, %5046
  %5069 = fmul fast float %5045, %5043
  %5070 = fcmp fast ole float %289, %5069
  %5071 = select i1 %5070, float %5030, float %5028
  %5072 = select i1 %5070, float %5028, float %5029
  %5073 = select i1 %5068, float %5029, float %5071
  %5074 = select i1 %5068, float %5030, float %5072
  %5075 = select i1 %5070, float %5064, float %5062
  %5076 = select i1 %5070, float %5062, float %5063
  %5077 = select i1 %5068, float %5063, float %5075
  %5078 = select i1 %5068, float %5064, float %5076
  %5079 = select i1 %5070, float %5067, float %5065
  %5080 = select i1 %5070, float %5065, float %5066
  %5081 = select i1 %5068, float %5066, float %5079
  %5082 = select i1 %5068, float %5067, float %5080
  %5083 = call float @dx.op.unary.f32(i32 27, float %5073)  ; Round_ni(value)
  %5084 = call float @dx.op.unary.f32(i32 27, float %5074)  ; Round_ni(value)
  %5085 = fptosi float %5083 to i32
  %5086 = fptosi float %5084 to i32
  %5087 = xor i32 %5086, %5085
  %5088 = sitofp i32 %5087 to float
  %5089 = fptosi float %5088 to i32
  %5090 = sitofp i32 %5089 to float
  %5091 = fmul fast float %5090, 0x3FE3C6EF40000000
  %5092 = frem fast float %5083, 2.560000e+02
  %5093 = frem fast float %5084, 2.560000e+02
  %5094 = fptoui float %5092 to i32
  %5095 = fptoui float %5093 to i32
  %5096 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5094, i32 %5095, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5097 = extractvalue %dx.types.ResRet.f32 %5096, 0
  %5098 = extractvalue %dx.types.ResRet.f32 %5096, 1
  %5099 = extractvalue %dx.types.ResRet.f32 %5096, 2
  %5100 = fadd fast float %5097, %5091
  %5101 = fadd fast float %5098, %5091
  %5102 = fadd fast float %5099, %5091
  %5103 = call float @dx.op.unary.f32(i32 22, float %5100)  ; Frc(value)
  %5104 = call float @dx.op.unary.f32(i32 22, float %5101)  ; Frc(value)
  %5105 = call float @dx.op.unary.f32(i32 22, float %5102)  ; Frc(value)
  %5106 = fmul fast float %5105, 0x401921FB60000000
  %5107 = call float @dx.op.unary.f32(i32 13, float %5106)  ; Sin(value)
  %5108 = call float @dx.op.unary.f32(i32 12, float %5106)  ; Cos(value)
  %5109 = fsub fast float -0.000000e+00, %5108
  %5110 = fmul fast float %5108, %5073
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5074, float %5110)  ; FMad(a,b,c)
  %5112 = fmul fast float %5107, %5073
  %5113 = call float @dx.op.tertiary.f32(i32 46, float %5109, float %5074, float %5112)  ; FMad(a,b,c)
  %5114 = fadd fast float %5111, %5103
  %5115 = fadd fast float %5113, %5104
  %5116 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5117 = bitcast float %5116 to i32
  %5118 = icmp eq i32 %5117, 0
  br i1 %5118, label %5157, label %5119

; <label>:5119                                    ; preds = %5022
  %5120 = add i32 %5117, 0
  %5121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5122 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5121, %dx.types.Handle %120, float %5114, float %5115, float undef, float undef, i32 0, i32 0, i32 undef, float %5077, float %5078, float undef, float %5081, float %5082, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 0
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5127 = fsub fast float 1.000000e+00, %5016
  %5128 = call float @dx.op.binary.f32(i32 35, float %5127, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5129 = bitcast float %5016 to i32
  %5130 = sitofp i32 %5129 to float
  %5131 = fadd fast float %5130, 0xC1CFBF8940000000
  %5132 = fmul fast float %5126, %5131
  %5133 = fadd fast float %5132, 0x41CFBF8940000000
  %5134 = fptosi float %5133 to i32
  %5135 = bitcast i32 %5134 to float
  %5136 = bitcast float %5128 to i32
  %5137 = sitofp i32 %5136 to float
  %5138 = fadd fast float %5137, 0xC1CFBF8940000000
  %5139 = fmul fast float %5138, %5126
  %5140 = fadd fast float %5139, 0x41CFBF8940000000
  %5141 = fptosi float %5140 to i32
  %5142 = bitcast i32 %5141 to float
  %5143 = fmul fast float %5135, %5125
  %5144 = fmul fast float %5142, %5125
  %5145 = fsub fast float %5128, %5143
  %5146 = fadd fast float %5144, %5128
  %5147 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5148 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5149 = fsub fast float %5123, %5147
  %5150 = fsub fast float %5148, %5147
  %5151 = bitcast float %5150 to i32
  %5152 = sub nsw i32 2129859010, %5151
  %5153 = bitcast i32 %5152 to float
  %5154 = fmul fast float %5153, %5149
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fcmp fast olt float %5155, 0x3F70101020000000
  br i1 %5156, label %5295, label %5157

; <label>:5157                                    ; preds = %5119, %5022
  %5158 = phi float [ %5155, %5119 ], [ %5016, %5022 ]
  %5159 = fmul fast float %5158, %5025
  %5160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.i32 %5160, 1
  %5162 = extractvalue %dx.types.CBufRet.i32 %5160, 0
  %5163 = add i32 %5162, 0
  %5164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5165 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5164, %dx.types.Handle %119, float %5114, float %5115, float undef, float undef, i32 0, i32 0, i32 undef, float %5077, float %5078, float undef, float %5081, float %5082, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5166 = extractvalue %dx.types.ResRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.ResRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.ResRet.f32 %5165, 2
  %5169 = extractvalue %dx.types.ResRet.f32 %5165, 3
  %5170 = and i32 %5161, 255
  %5171 = uitofp i32 %5170 to float
  %5172 = lshr i32 %5161, 8
  %5173 = and i32 %5172, 255
  %5174 = uitofp i32 %5173 to float
  %5175 = fmul fast float %5169, %5171
  %5176 = fadd fast float %5175, %5174
  %5177 = fmul fast float %5176, 0x3F70101000000000
  %5178 = fadd fast float %5177, 0xBFB99999A0000000
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fmul fast float %5179, 0x3FF1C71C80000000
  %5181 = call float @dx.op.binary.f32(i32 36, float %5177, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5182 = fsub fast float 1.000000e+00, %5180
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = fmul fast float %5183, %5166
  %5185 = fmul fast float %5183, %5167
  %5186 = fmul fast float %5183, %5168
  %5187 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5190 = fmul fast float %5180, %5166
  %5191 = fmul fast float %5180, %5167
  %5192 = fmul fast float %5180, %5168
  %5193 = fadd fast float %5190, %5181
  %5194 = fadd fast float %5191, %5181
  %5195 = fadd fast float %5192, %5181
  %5196 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5197 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.i32 %5199, 3
  %5201 = extractvalue %dx.types.CBufRet.i32 %5199, 2
  %5202 = add i32 %5201, 0
  %5203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5204 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5203, %dx.types.Handle %119, float %5114, float %5115, float undef, float undef, i32 0, i32 0, i32 undef, float %5077, float %5078, float undef, float %5081, float %5082, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5205 = extractvalue %dx.types.ResRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.ResRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.ResRet.f32 %5204, 2
  %5208 = extractvalue %dx.types.ResRet.f32 %5204, 3
  %5209 = and i32 %5200, 255
  %5210 = uitofp i32 %5209 to float
  %5211 = lshr i32 %5200, 8
  %5212 = and i32 %5211, 255
  %5213 = uitofp i32 %5212 to float
  %5214 = lshr i32 %5200, 16
  %5215 = and i32 %5214, 255
  %5216 = uitofp i32 %5215 to float
  %5217 = fmul fast float %5216, 0x3F70101000000000
  %5218 = fmul fast float %5205, %5210
  %5219 = fadd fast float %5218, %5213
  %5220 = fmul fast float %5219, 0x3F70101000000000
  %5221 = fadd fast float %5206, -5.000000e-01
  %5222 = fadd fast float %5208, -5.000000e-01
  %5223 = fmul fast float %5221, %5217
  %5224 = fmul fast float %5222, %5217
  %5225 = fadd fast float %5223, 5.000000e-01
  %5226 = fadd fast float %5224, 5.000000e-01
  %5227 = fmul fast float %5225, 2.000000e+00
  %5228 = fadd fast float %5227, -1.000000e+00
  %5229 = fmul fast float %5226, 2.000000e+00
  %5230 = fadd fast float %5229, -1.000000e+00
  %5231 = fadd fast float %5228, %5230
  %5232 = fmul fast float %5231, 5.000000e-01
  %5233 = fsub fast float %5228, %5230
  %5234 = fmul fast float %5233, 5.000000e-01
  %5235 = call float @dx.op.unary.f32(i32 6, float %5232)  ; FAbs(value)
  %5236 = fsub fast float 1.000000e+00, %5235
  %5237 = call float @dx.op.unary.f32(i32 6, float %5234)  ; FAbs(value)
  %5238 = fsub fast float %5236, %5237
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5234, float %5238, float %5232, float %5234, float %5238)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = call float @dx.op.unary.f32(i32 25, float %5239)  ; Rsqrt(value)
  %5241 = fmul fast float %5232, %5240
  %5242 = fmul fast float %5234, %5240
  %5243 = select i1 %5070, i32 %5060, i32 %5061
  %5244 = select i1 %5068, i32 %5059, i32 %5243
  %5245 = sitofp i32 %5244 to float
  %5246 = fmul fast float %5238, %5245
  %5247 = fmul fast float %5246, %5240
  %5248 = select i1 %5070, float %5247, float %5242
  %5249 = select i1 %5070, float %5242, float %5247
  %5250 = select i1 %5068, float %5247, float %5241
  %5251 = select i1 %5068, float %5242, float %5248
  %5252 = select i1 %5068, float %5241, float %5249
  %5253 = fsub fast float %5187, %4620
  %5254 = fsub fast float %5188, %4621
  %5255 = fsub fast float %5189, %4622
  %5256 = fmul fast float %5253, %5159
  %5257 = fmul fast float %5254, %5159
  %5258 = fmul fast float %5255, %5159
  %5259 = fadd fast float %5256, %4620
  %5260 = fadd fast float %5257, %4621
  %5261 = fadd fast float %5258, %4622
  %5262 = fsub fast float %5196, %4602
  %5263 = fsub fast float %5197, %4603
  %5264 = fsub fast float %5198, %4604
  %5265 = fmul fast float %5262, %5159
  %5266 = fmul fast float %5263, %5159
  %5267 = fmul fast float %5264, %5159
  %5268 = fadd fast float %5265, %4602
  %5269 = fadd fast float %5266, %4603
  %5270 = fadd fast float %5267, %4604
  %5271 = fadd fast float %5250, %4562
  %5272 = fadd fast float %5251, %4563
  %5273 = fadd fast float %5252, %4564
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5271, float %5272, float %5273, float %5271, float %5272, float %5273)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 25, float %5274)  ; Rsqrt(value)
  %5276 = fmul fast float %5271, %5275
  %5277 = fmul fast float %5272, %5275
  %5278 = fmul fast float %5273, %5275
  %5279 = fsub fast float %5276, %4562
  %5280 = fsub fast float %5277, %4563
  %5281 = fsub fast float %5278, %4564
  %5282 = fmul fast float %5279, %5159
  %5283 = fmul fast float %5280, %5159
  %5284 = fmul fast float %5281, %5159
  %5285 = fadd fast float %5282, %4562
  %5286 = fadd fast float %5283, %4563
  %5287 = fadd fast float %5284, %4564
  %5288 = call float @dx.op.binary.f32(i32 36, float %4577, float %5207)  ; FMin(a,b)
  %5289 = fsub fast float %5288, %4577
  %5290 = fmul fast float %5289, %5159
  %5291 = fadd fast float %5290, %4577
  %5292 = fsub fast float %5220, %4605
  %5293 = fmul fast float %5292, %5159
  %5294 = fadd fast float %5293, %4605
  br label %5295

; <label>:5295                                    ; preds = %5157, %5119, %5021
  %5296 = phi float [ %5259, %5157 ], [ %4620, %5119 ], [ %4620, %5021 ]
  %5297 = phi float [ %5260, %5157 ], [ %4621, %5119 ], [ %4621, %5021 ]
  %5298 = phi float [ %5261, %5157 ], [ %4622, %5119 ], [ %4622, %5021 ]
  %5299 = phi float [ %5268, %5157 ], [ %4602, %5119 ], [ %4602, %5021 ]
  %5300 = phi float [ %5269, %5157 ], [ %4603, %5119 ], [ %4603, %5021 ]
  %5301 = phi float [ %5270, %5157 ], [ %4604, %5119 ], [ %4604, %5021 ]
  %5302 = phi float [ %5285, %5157 ], [ %4562, %5119 ], [ %4562, %5021 ]
  %5303 = phi float [ %5286, %5157 ], [ %4563, %5119 ], [ %4563, %5021 ]
  %5304 = phi float [ %5287, %5157 ], [ %4564, %5119 ], [ %4564, %5021 ]
  %5305 = phi float [ %5294, %5157 ], [ %4605, %5119 ], [ %4605, %5021 ]
  %5306 = phi float [ %5291, %5157 ], [ %4577, %5119 ], [ %4577, %5021 ]
  br i1 %5019, label %5307, label %5580

; <label>:5307                                    ; preds = %5295
  %5308 = call float @dx.op.unary.f32(i32 23, float %5306)  ; Log(value)
  %5309 = fmul fast float %5308, 4.000000e+00
  %5310 = call float @dx.op.unary.f32(i32 21, float %5309)  ; Exp(value)
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5313 = fmul fast float %5312, %66
  %5314 = fmul fast float %5312, %67
  %5315 = fmul fast float %5312, %68
  %5316 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %5317 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %5318 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5319 = call float @dx.op.unary.f32(i32 23, float %5316)  ; Log(value)
  %5320 = call float @dx.op.unary.f32(i32 23, float %5317)  ; Log(value)
  %5321 = call float @dx.op.unary.f32(i32 23, float %5318)  ; Log(value)
  %5322 = fmul fast float %5319, 4.000000e+00
  %5323 = fmul fast float %5320, 4.000000e+00
  %5324 = fmul fast float %5321, 4.000000e+00
  %5325 = call float @dx.op.unary.f32(i32 21, float %5322)  ; Exp(value)
  %5326 = call float @dx.op.unary.f32(i32 21, float %5323)  ; Exp(value)
  %5327 = call float @dx.op.unary.f32(i32 21, float %5324)  ; Exp(value)
  %5328 = fadd fast float %5326, %5325
  %5329 = fadd fast float %5328, %5327
  %5330 = fdiv fast float 1.000000e+00, %5329
  %5331 = fmul fast float %5330, %5325
  %5332 = fcmp fast ogt float %75, 0.000000e+00
  %5333 = fcmp fast ogt float %76, 0.000000e+00
  %5334 = fcmp fast ogt float %77, 0.000000e+00
  %5335 = fcmp fast olt float %75, 0.000000e+00
  %5336 = fcmp fast olt float %76, 0.000000e+00
  %5337 = fcmp fast olt float %77, 0.000000e+00
  %5338 = zext i1 %5332 to i32
  %5339 = zext i1 %5333 to i32
  %5340 = zext i1 %5334 to i32
  %5341 = zext i1 %5335 to i32
  %5342 = zext i1 %5336 to i32
  %5343 = zext i1 %5337 to i32
  %5344 = sub nsw i32 %5338, %5341
  %5345 = sub nsw i32 %5339, %5342
  %5346 = sub nsw i32 %5340, %5343
  %5347 = call float @dx.op.unary.f32(i32 83, float %5313)  ; DerivCoarseX(value)
  %5348 = call float @dx.op.unary.f32(i32 83, float %5314)  ; DerivCoarseX(value)
  %5349 = call float @dx.op.unary.f32(i32 83, float %5315)  ; DerivCoarseX(value)
  %5350 = call float @dx.op.unary.f32(i32 84, float %5313)  ; DerivCoarseY(value)
  %5351 = call float @dx.op.unary.f32(i32 84, float %5314)  ; DerivCoarseY(value)
  %5352 = call float @dx.op.unary.f32(i32 84, float %5315)  ; DerivCoarseY(value)
  %5353 = fcmp fast ole float %289, %5331
  %5354 = fmul fast float %5330, %5328
  %5355 = fcmp fast ole float %289, %5354
  %5356 = select i1 %5355, float %5315, float %5313
  %5357 = select i1 %5355, float %5313, float %5314
  %5358 = select i1 %5353, float %5314, float %5356
  %5359 = select i1 %5353, float %5315, float %5357
  %5360 = select i1 %5355, float %5349, float %5347
  %5361 = select i1 %5355, float %5347, float %5348
  %5362 = select i1 %5353, float %5348, float %5360
  %5363 = select i1 %5353, float %5349, float %5361
  %5364 = select i1 %5355, float %5352, float %5350
  %5365 = select i1 %5355, float %5350, float %5351
  %5366 = select i1 %5353, float %5351, float %5364
  %5367 = select i1 %5353, float %5352, float %5365
  %5368 = call float @dx.op.unary.f32(i32 27, float %5358)  ; Round_ni(value)
  %5369 = call float @dx.op.unary.f32(i32 27, float %5359)  ; Round_ni(value)
  %5370 = fptosi float %5368 to i32
  %5371 = fptosi float %5369 to i32
  %5372 = xor i32 %5371, %5370
  %5373 = sitofp i32 %5372 to float
  %5374 = fptosi float %5373 to i32
  %5375 = sitofp i32 %5374 to float
  %5376 = fmul fast float %5375, 0x3FE3C6EF40000000
  %5377 = frem fast float %5368, 2.560000e+02
  %5378 = frem fast float %5369, 2.560000e+02
  %5379 = fptoui float %5377 to i32
  %5380 = fptoui float %5378 to i32
  %5381 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5379, i32 %5380, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.ResRet.f32 %5381, 2
  %5385 = fadd fast float %5382, %5376
  %5386 = fadd fast float %5383, %5376
  %5387 = fadd fast float %5384, %5376
  %5388 = call float @dx.op.unary.f32(i32 22, float %5385)  ; Frc(value)
  %5389 = call float @dx.op.unary.f32(i32 22, float %5386)  ; Frc(value)
  %5390 = call float @dx.op.unary.f32(i32 22, float %5387)  ; Frc(value)
  %5391 = fmul fast float %5390, 0x401921FB60000000
  %5392 = call float @dx.op.unary.f32(i32 13, float %5391)  ; Sin(value)
  %5393 = call float @dx.op.unary.f32(i32 12, float %5391)  ; Cos(value)
  %5394 = fsub fast float -0.000000e+00, %5393
  %5395 = fmul fast float %5393, %5358
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5359, float %5395)  ; FMad(a,b,c)
  %5397 = fmul fast float %5392, %5358
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5359, float %5397)  ; FMad(a,b,c)
  %5399 = fadd fast float %5396, %5388
  %5400 = fadd fast float %5398, %5389
  %5401 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5402 = bitcast float %5401 to i32
  %5403 = icmp eq i32 %5402, 0
  br i1 %5403, label %5442, label %5404

; <label>:5404                                    ; preds = %5307
  %5405 = add i32 %5402, 0
  %5406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5407 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5406, %dx.types.Handle %120, float %5399, float %5400, float undef, float undef, i32 0, i32 0, i32 undef, float %5362, float %5363, float undef, float %5366, float %5367, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5412 = fsub fast float 1.000000e+00, %5017
  %5413 = call float @dx.op.binary.f32(i32 35, float %5412, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5414 = bitcast float %5017 to i32
  %5415 = sitofp i32 %5414 to float
  %5416 = fadd fast float %5415, 0xC1CFBF8940000000
  %5417 = fmul fast float %5411, %5416
  %5418 = fadd fast float %5417, 0x41CFBF8940000000
  %5419 = fptosi float %5418 to i32
  %5420 = bitcast i32 %5419 to float
  %5421 = bitcast float %5413 to i32
  %5422 = sitofp i32 %5421 to float
  %5423 = fadd fast float %5422, 0xC1CFBF8940000000
  %5424 = fmul fast float %5423, %5411
  %5425 = fadd fast float %5424, 0x41CFBF8940000000
  %5426 = fptosi float %5425 to i32
  %5427 = bitcast i32 %5426 to float
  %5428 = fmul fast float %5420, %5410
  %5429 = fmul fast float %5427, %5410
  %5430 = fsub fast float %5413, %5428
  %5431 = fadd fast float %5429, %5413
  %5432 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5433 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5434 = fsub fast float %5408, %5432
  %5435 = fsub fast float %5433, %5432
  %5436 = bitcast float %5435 to i32
  %5437 = sub nsw i32 2129859010, %5436
  %5438 = bitcast i32 %5437 to float
  %5439 = fmul fast float %5438, %5434
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fcmp fast olt float %5440, 0x3F70101020000000
  br i1 %5441, label %5580, label %5442

; <label>:5442                                    ; preds = %5404, %5307
  %5443 = phi float [ %5440, %5404 ], [ %5017, %5307 ]
  %5444 = fmul fast float %5443, %5310
  %5445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.i32 %5445, 1
  %5447 = extractvalue %dx.types.CBufRet.i32 %5445, 0
  %5448 = add i32 %5447, 0
  %5449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5450 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5449, %dx.types.Handle %119, float %5399, float %5400, float undef, float undef, i32 0, i32 0, i32 undef, float %5362, float %5363, float undef, float %5366, float %5367, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.ResRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.ResRet.f32 %5450, 2
  %5454 = extractvalue %dx.types.ResRet.f32 %5450, 3
  %5455 = and i32 %5446, 255
  %5456 = uitofp i32 %5455 to float
  %5457 = lshr i32 %5446, 8
  %5458 = and i32 %5457, 255
  %5459 = uitofp i32 %5458 to float
  %5460 = fmul fast float %5454, %5456
  %5461 = fadd fast float %5460, %5459
  %5462 = fmul fast float %5461, 0x3F70101000000000
  %5463 = fadd fast float %5462, 0xBFB99999A0000000
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = fmul fast float %5464, 0x3FF1C71C80000000
  %5466 = call float @dx.op.binary.f32(i32 36, float %5462, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5467 = fsub fast float 1.000000e+00, %5465
  %5468 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5469 = fmul fast float %5468, %5451
  %5470 = fmul fast float %5468, %5452
  %5471 = fmul fast float %5468, %5453
  %5472 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5474 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5475 = fmul fast float %5465, %5451
  %5476 = fmul fast float %5465, %5452
  %5477 = fmul fast float %5465, %5453
  %5478 = fadd fast float %5475, %5466
  %5479 = fadd fast float %5476, %5466
  %5480 = fadd fast float %5477, %5466
  %5481 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.i32 %5484, 3
  %5486 = extractvalue %dx.types.CBufRet.i32 %5484, 2
  %5487 = add i32 %5486, 0
  %5488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5489 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5488, %dx.types.Handle %119, float %5399, float %5400, float undef, float undef, i32 0, i32 0, i32 undef, float %5362, float %5363, float undef, float %5366, float %5367, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.ResRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.ResRet.f32 %5489, 2
  %5493 = extractvalue %dx.types.ResRet.f32 %5489, 3
  %5494 = and i32 %5485, 255
  %5495 = uitofp i32 %5494 to float
  %5496 = lshr i32 %5485, 8
  %5497 = and i32 %5496, 255
  %5498 = uitofp i32 %5497 to float
  %5499 = lshr i32 %5485, 16
  %5500 = and i32 %5499, 255
  %5501 = uitofp i32 %5500 to float
  %5502 = fmul fast float %5501, 0x3F70101000000000
  %5503 = fmul fast float %5490, %5495
  %5504 = fadd fast float %5503, %5498
  %5505 = fmul fast float %5504, 0x3F70101000000000
  %5506 = fadd fast float %5491, -5.000000e-01
  %5507 = fadd fast float %5493, -5.000000e-01
  %5508 = fmul fast float %5506, %5502
  %5509 = fmul fast float %5507, %5502
  %5510 = fadd fast float %5508, 5.000000e-01
  %5511 = fadd fast float %5509, 5.000000e-01
  %5512 = fmul fast float %5510, 2.000000e+00
  %5513 = fadd fast float %5512, -1.000000e+00
  %5514 = fmul fast float %5511, 2.000000e+00
  %5515 = fadd fast float %5514, -1.000000e+00
  %5516 = fadd fast float %5513, %5515
  %5517 = fmul fast float %5516, 5.000000e-01
  %5518 = fsub fast float %5513, %5515
  %5519 = fmul fast float %5518, 5.000000e-01
  %5520 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5523 = fsub fast float %5521, %5522
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5519, float %5523, float %5517, float %5519, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = call float @dx.op.unary.f32(i32 25, float %5524)  ; Rsqrt(value)
  %5526 = fmul fast float %5517, %5525
  %5527 = fmul fast float %5519, %5525
  %5528 = select i1 %5355, i32 %5345, i32 %5346
  %5529 = select i1 %5353, i32 %5344, i32 %5528
  %5530 = sitofp i32 %5529 to float
  %5531 = fmul fast float %5523, %5530
  %5532 = fmul fast float %5531, %5525
  %5533 = select i1 %5355, float %5532, float %5527
  %5534 = select i1 %5355, float %5527, float %5532
  %5535 = select i1 %5353, float %5532, float %5526
  %5536 = select i1 %5353, float %5527, float %5533
  %5537 = select i1 %5353, float %5526, float %5534
  %5538 = fsub fast float %5472, %5296
  %5539 = fsub fast float %5473, %5297
  %5540 = fsub fast float %5474, %5298
  %5541 = fmul fast float %5538, %5444
  %5542 = fmul fast float %5539, %5444
  %5543 = fmul fast float %5540, %5444
  %5544 = fadd fast float %5541, %5296
  %5545 = fadd fast float %5542, %5297
  %5546 = fadd fast float %5543, %5298
  %5547 = fsub fast float %5481, %5299
  %5548 = fsub fast float %5482, %5300
  %5549 = fsub fast float %5483, %5301
  %5550 = fmul fast float %5547, %5444
  %5551 = fmul fast float %5548, %5444
  %5552 = fmul fast float %5549, %5444
  %5553 = fadd fast float %5550, %5299
  %5554 = fadd fast float %5551, %5300
  %5555 = fadd fast float %5552, %5301
  %5556 = fadd fast float %5535, %5302
  %5557 = fadd fast float %5536, %5303
  %5558 = fadd fast float %5537, %5304
  %5559 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5556, float %5557, float %5558)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = call float @dx.op.unary.f32(i32 25, float %5559)  ; Rsqrt(value)
  %5561 = fmul fast float %5556, %5560
  %5562 = fmul fast float %5557, %5560
  %5563 = fmul fast float %5558, %5560
  %5564 = fsub fast float %5561, %5302
  %5565 = fsub fast float %5562, %5303
  %5566 = fsub fast float %5563, %5304
  %5567 = fmul fast float %5564, %5444
  %5568 = fmul fast float %5565, %5444
  %5569 = fmul fast float %5566, %5444
  %5570 = fadd fast float %5567, %5302
  %5571 = fadd fast float %5568, %5303
  %5572 = fadd fast float %5569, %5304
  %5573 = call float @dx.op.binary.f32(i32 36, float %5306, float %5492)  ; FMin(a,b)
  %5574 = fsub fast float %5573, %5306
  %5575 = fmul fast float %5574, %5444
  %5576 = fadd fast float %5575, %5306
  %5577 = fsub fast float %5505, %5305
  %5578 = fmul fast float %5577, %5444
  %5579 = fadd fast float %5578, %5305
  br label %5580

; <label>:5580                                    ; preds = %5442, %5404, %5295, %5011
  %5581 = phi float [ %5544, %5442 ], [ %5296, %5404 ], [ %5296, %5295 ], [ %4620, %5011 ]
  %5582 = phi float [ %5545, %5442 ], [ %5297, %5404 ], [ %5297, %5295 ], [ %4621, %5011 ]
  %5583 = phi float [ %5546, %5442 ], [ %5298, %5404 ], [ %5298, %5295 ], [ %4622, %5011 ]
  %5584 = phi float [ %5553, %5442 ], [ %5299, %5404 ], [ %5299, %5295 ], [ %4602, %5011 ]
  %5585 = phi float [ %5554, %5442 ], [ %5300, %5404 ], [ %5300, %5295 ], [ %4603, %5011 ]
  %5586 = phi float [ %5555, %5442 ], [ %5301, %5404 ], [ %5301, %5295 ], [ %4604, %5011 ]
  %5587 = phi float [ %5570, %5442 ], [ %5302, %5404 ], [ %5302, %5295 ], [ %4562, %5011 ]
  %5588 = phi float [ %5571, %5442 ], [ %5303, %5404 ], [ %5303, %5295 ], [ %4563, %5011 ]
  %5589 = phi float [ %5572, %5442 ], [ %5304, %5404 ], [ %5304, %5295 ], [ %4564, %5011 ]
  %5590 = phi float [ %5579, %5442 ], [ %5305, %5404 ], [ %5305, %5295 ], [ %4605, %5011 ]
  %5591 = phi float [ %5576, %5442 ], [ %5306, %5404 ], [ %5306, %5295 ], [ %4577, %5011 ]
  %5592 = fcmp fast une float %5015, 0.000000e+00
  %5593 = call float @dx.op.dot3.f32(i32 55, float %206, float %207, float %208, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = call float @dx.op.unary.f32(i32 25, float %5593)  ; Rsqrt(value)
  br i1 %5592, label %5602, label %5595

; <label>:5595                                    ; preds = %5580
  %5596 = fmul fast float %5594, %206
  %5597 = fmul fast float %5594, %207
  %5598 = fmul fast float %5594, %208
  %5599 = fsub fast float -0.000000e+00, %5596
  %5600 = fsub fast float -0.000000e+00, %5597
  %5601 = fsub fast float -0.000000e+00, %5598
  br label %5769

; <label>:5602                                    ; preds = %5580
  %5603 = fmul fast float %206, %5594
  %5604 = fsub fast float -0.000000e+00, %5603
  %5605 = fmul fast float %207, %5594
  %5606 = fsub fast float -0.000000e+00, %5605
  %5607 = fmul fast float %208, %5594
  %5608 = fsub fast float -0.000000e+00, %5607
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5606, float %5608, float %132, float %134, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = fmul fast float %5015, 2.500000e+00
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = fmul fast float %5015, 0x4013FFFFE0000000
  %5613 = fadd fast float %5612, 0xBFFFFFFFE0000000
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fmul fast float %5015, 0x4004000020000000
  %5616 = fadd fast float %5615, 0xBFF8000040000000
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fmul fast float %4584, 1.000000e+01
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fmul fast float %5619, 2.000000e+00
  %5621 = fsub fast float 3.000000e+00, %5620
  %5622 = fmul fast float %5619, %5619
  %5623 = fmul fast float %5622, %5621
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = fsub fast float 0x3FE3333340000000, %5590
  %5626 = fmul fast float %5625, 0x400AAAAAA0000000
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fmul fast float %5624, %5627
  %5629 = fmul fast float %5581, 0x3FEA2B8620000000
  %5630 = fmul fast float %5582, 0x3FEA2B8620000000
  %5631 = fmul fast float %5583, 0x3FEA2B8620000000
  %5632 = fadd fast float %5629, 0x3FC81DFBA0000000
  %5633 = fmul fast float %5632, %5581
  %5634 = fadd fast float %5633, 0x3F910E6020000000
  %5635 = fadd fast float %5630, 0x3FC81DFBA0000000
  %5636 = fmul fast float %5635, %5582
  %5637 = fadd fast float %5636, 0x3F910E6020000000
  %5638 = fadd fast float %5631, 0x3FC81DFBA0000000
  %5639 = fmul fast float %5638, %5583
  %5640 = fadd fast float %5639, 0x3F910E6020000000
  %5641 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5642 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5643 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5644 = fsub fast float %5641, %5581
  %5645 = fsub fast float %5642, %5582
  %5646 = fsub fast float %5643, %5583
  %5647 = fmul fast float %5644, %5611
  %5648 = fmul fast float %5647, %5628
  %5649 = fmul fast float %5645, %5611
  %5650 = fmul fast float %5649, %5628
  %5651 = fmul fast float %5646, %5611
  %5652 = fmul fast float %5651, %5628
  %5653 = fadd fast float %5648, %5581
  %5654 = fadd fast float %5650, %5582
  %5655 = fadd fast float %5652, %5583
  %5656 = fmul fast float %5591, %5591
  %5657 = fmul fast float %5656, %5656
  %5658 = fadd fast float %5614, 1.000000e+00
  %5659 = fsub fast float %5658, %5628
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = call float @dx.op.dot3.f32(i32 55, float %132, float %134, float %136, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fsub fast float 1.000000e+00, %5657
  %5664 = call float @dx.op.binary.f32(i32 36, float %5660, float %5663)  ; FMin(a,b)
  %5665 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5666 = call float @dx.op.binary.f32(i32 35, float %5664, float %5665)  ; FMax(a,b)
  %5667 = fadd fast float %5662, 0xBFE4CCCCC0000000
  %5668 = fmul fast float %5667, 0x4006DB6DA0000000
  %5669 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5670 = fmul fast float %5669, 2.000000e+00
  %5671 = fsub fast float 3.000000e+00, %5670
  %5672 = bitcast float %5584 to i32
  %5673 = ashr i32 %5672, 1
  %5674 = add nsw i32 %5673, 532487669
  %5675 = bitcast i32 %5674 to float
  %5676 = fsub fast float 1.000000e+00, %5675
  %5677 = bitcast float %5676 to i32
  %5678 = sub nsw i32 2129859010, %5677
  %5679 = bitcast i32 %5678 to float
  %5680 = fmul fast float %5679, 2.000000e+00
  %5681 = bitcast float %5585 to i32
  %5682 = ashr i32 %5681, 1
  %5683 = add nsw i32 %5682, 532487669
  %5684 = bitcast i32 %5683 to float
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = fmul fast float %5688, 2.000000e+00
  %5690 = bitcast float %5586 to i32
  %5691 = ashr i32 %5690, 1
  %5692 = add nsw i32 %5691, 532487669
  %5693 = bitcast i32 %5692 to float
  %5694 = fsub fast float 1.000000e+00, %5693
  %5695 = bitcast float %5694 to i32
  %5696 = sub nsw i32 2129859010, %5695
  %5697 = bitcast i32 %5696 to float
  %5698 = fmul fast float %5697, 2.000000e+00
  %5699 = fsub fast float 0x4002A9FBE0000000, %5680
  %5700 = fadd fast float %5680, 0x3FD54FDF00000000
  %5701 = bitcast float %5700 to i32
  %5702 = sub nsw i32 2129859010, %5701
  %5703 = bitcast i32 %5702 to float
  %5704 = fmul fast float %5703, %5699
  %5705 = fmul fast float %5704, %5704
  %5706 = fsub fast float 0x4002A9FBE0000000, %5689
  %5707 = fadd fast float %5689, 0x3FD54FDF00000000
  %5708 = bitcast float %5707 to i32
  %5709 = sub nsw i32 2129859010, %5708
  %5710 = bitcast i32 %5709 to float
  %5711 = fmul fast float %5710, %5706
  %5712 = fmul fast float %5711, %5711
  %5713 = fsub fast float 0x4002A9FBE0000000, %5698
  %5714 = fadd fast float %5698, 0x3FD54FDF00000000
  %5715 = bitcast float %5714 to i32
  %5716 = sub nsw i32 2129859010, %5715
  %5717 = bitcast i32 %5716 to float
  %5718 = fmul fast float %5717, %5713
  %5719 = fmul fast float %5718, %5718
  %5720 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5705)  ; FMax(a,b)
  %5721 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5712)  ; FMax(a,b)
  %5722 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5719)  ; FMax(a,b)
  %5723 = fsub fast float 1.000000e+00, %5609
  %5724 = fadd fast float %5723, %5624
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = fsub fast float 1.000000e+00, %4996
  %5727 = fmul fast float %5666, %5726
  %5728 = fmul fast float %5669, %5669
  %5729 = fmul fast float %5728, %5727
  %5730 = fmul fast float %5729, %5671
  %5731 = fmul fast float %5726, 0xBFE99999A0000000
  %5732 = fmul fast float %5731, %5611
  %5733 = fmul fast float %5732, %5628
  %5734 = fadd fast float %5733, 1.000000e+00
  %5735 = fadd fast float %5590, -1.000000e+00
  %5736 = fmul fast float %5734, %5735
  %5737 = fadd fast float %5736, 1.000000e+00
  %5738 = fsub fast float %5720, %5584
  %5739 = fsub fast float %5721, %5585
  %5740 = fsub fast float %5722, %5586
  %5741 = fmul fast float %5730, %5738
  %5742 = fmul fast float %5730, %5739
  %5743 = fmul fast float %5730, %5740
  %5744 = fadd fast float %5741, %5584
  %5745 = fadd fast float %5742, %5585
  %5746 = fadd fast float %5743, %5586
  %5747 = fsub fast float %132, %5587
  %5748 = fsub fast float %134, %5588
  %5749 = fsub fast float %136, %5589
  %5750 = fmul fast float %5730, %5747
  %5751 = fmul fast float %5730, %5748
  %5752 = fmul fast float %5730, %5749
  %5753 = fadd fast float %5750, %5587
  %5754 = fadd fast float %5751, %5588
  %5755 = fadd fast float %5752, %5589
  %5756 = fmul fast float %5730, %5725
  %5757 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5758 = fsub fast float 1.000000e+00, %5757
  %5759 = fmul fast float %5756, %5758
  %5760 = fadd fast float %5759, %5757
  %5761 = fsub fast float 1.000000e+00, %5591
  %5762 = fmul fast float %5730, %5761
  %5763 = fadd fast float %5762, %5591
  %5764 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5765 = call float @dx.op.unary.f32(i32 25, float %5764)  ; Rsqrt(value)
  %5766 = fmul fast float %5753, %5765
  %5767 = fmul fast float %5754, %5765
  %5768 = fmul fast float %5755, %5765
  br label %5769

; <label>:5769                                    ; preds = %5602, %5595
  %5770 = phi float [ %5601, %5595 ], [ %5608, %5602 ]
  %5771 = phi float [ %5600, %5595 ], [ %5606, %5602 ]
  %5772 = phi float [ %5599, %5595 ], [ %5604, %5602 ]
  %5773 = phi float [ %5598, %5595 ], [ %5607, %5602 ]
  %5774 = phi float [ %5597, %5595 ], [ %5605, %5602 ]
  %5775 = phi float [ %5596, %5595 ], [ %5603, %5602 ]
  %5776 = phi float [ %5581, %5595 ], [ %5653, %5602 ]
  %5777 = phi float [ %5582, %5595 ], [ %5654, %5602 ]
  %5778 = phi float [ %5583, %5595 ], [ %5655, %5602 ]
  %5779 = phi float [ %5584, %5595 ], [ %5744, %5602 ]
  %5780 = phi float [ %5585, %5595 ], [ %5745, %5602 ]
  %5781 = phi float [ %5586, %5595 ], [ %5746, %5602 ]
  %5782 = phi float [ %5587, %5595 ], [ %5766, %5602 ]
  %5783 = phi float [ %5588, %5595 ], [ %5767, %5602 ]
  %5784 = phi float [ %5589, %5595 ], [ %5768, %5602 ]
  %5785 = phi float [ %5590, %5595 ], [ %5760, %5602 ]
  %5786 = phi float [ %5591, %5595 ], [ %5763, %5602 ]
  %5787 = fsub fast float -0.000000e+00, %208
  %5788 = select i1 %278, float 0.000000e+00, float %5781
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %5772, float %5771, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5774, float %5773, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fmul fast float %5791, 2.000000e+00
  %5793 = fmul fast float %5792, %5782
  %5794 = fmul fast float %5792, %5783
  %5795 = fmul fast float %5792, %5784
  %5796 = fsub fast float %5775, %5793
  %5797 = fsub fast float %5774, %5794
  %5798 = fsub fast float %5773, %5795
  %5799 = call float @dx.op.binary.f32(i32 36, float %5786, float 1.000000e+00)  ; FMin(a,b)
  %5800 = fsub fast float 1.000000e+00, %5799
  %5801 = bitcast float %5800 to i32
  %5802 = ashr i32 %5801, 1
  %5803 = add nsw i32 %5802, 532487669
  %5804 = bitcast i32 %5803 to float
  %5805 = fsub fast float 1.000000e+00, %5785
  %5806 = call float @dx.op.binary.f32(i32 35, float %5805, float 0x3F847AE140000000)  ; FMax(a,b)
  %5807 = fmul fast float %5806, %5806
  %5808 = fmul fast float %5807, %5807
  %5809 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5804, float %5808, float %5809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = fsub fast float 1.000000e+00, %5786
  %5813 = bitcast float %5812 to i32
  %5814 = sub nsw i32 2129859010, %5813
  %5815 = call float @dx.op.dot3.f32(i32 55, float %90, float %86, float %82, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = fmul fast float %5815, 0x3FD20DD760000000
  %5817 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %90)  ; FMax(a,b)
  %5818 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = fcmp fast oeq float %5818, 0.000000e+00
  %5820 = fcmp fast oeq float %5817, 0.000000e+00
  %5821 = or i1 %5820, %5819
  br i1 %5821, label %5851, label %5822

; <label>:5822                                    ; preds = %5769
  %5823 = fsub fast float -0.000000e+00, %93
  %5824 = fsub fast float -0.000000e+00, %91
  %5825 = call float @dx.op.unary.f32(i32 24, float %5818)  ; Sqrt(value)
  %5826 = fdiv fast float %5825, %5817
  %5827 = fcmp fast ogt float %5826, 0x3FFB6F8900000000
  %5828 = select i1 %5827, float 0x3FFB6F8900000000, float %5826
  %5829 = fmul fast float %5828, 0x3FE8A23460000000
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5831 = call float @dx.op.binary.f32(i32 35, float %5828, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5832 = fmul fast float %5830, %5817
  %5833 = fmul fast float %5831, 0x3FF279A740000000
  %5834 = fadd fast float %5833, -1.000000e+00
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %92, float %5823, float %5824, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = call float @dx.op.unary.f32(i32 25, float %5835)  ; Rsqrt(value)
  %5837 = fmul fast float %5836, %5823
  %5838 = fmul fast float %5836, %5824
  %5839 = fmul fast float %5836, %92
  %5840 = fmul fast float %5834, %5834
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = fmul fast float %5831, 0x40005F8BE0000000
  %5843 = fsub fast float 0x400C5BF8A0000000, %5842
  %5844 = fdiv fast float %5832, %5843
  %5845 = fmul fast float %5844, 0x3FEE31C3C0000000
  %5846 = fmul fast float %5845, %5841
  %5847 = fmul fast float %5831, 0x3FDACB7480000000
  %5848 = fadd fast float %5847, 0xBFD7347680000000
  %5849 = fmul fast float %5848, %5844
  %5850 = fmul fast float %5849, %5841
  br label %5851

; <label>:5851                                    ; preds = %5822, %5769
  %5852 = phi float [ %5837, %5822 ], [ 0.000000e+00, %5769 ]
  %5853 = phi float [ %5838, %5822 ], [ 0.000000e+00, %5769 ]
  %5854 = phi float [ %5839, %5822 ], [ 0.000000e+00, %5769 ]
  %5855 = phi float [ %5846, %5822 ], [ 0.000000e+00, %5769 ]
  %5856 = phi float [ %5850, %5822 ], [ 0.000000e+00, %5769 ]
  %5857 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = fmul fast float %5857, %5857
  %5859 = fmul fast float %5858, 0x3FEE471020000000
  %5860 = fadd fast float %5859, 0xBFD42F6020000000
  %5861 = fmul fast float %5817, 0x3FD20DD760000000
  %5862 = fmul fast float %5860, %5856
  %5863 = fmul fast float %5855, 0x3FDF454380000000
  %5864 = fmul fast float %5863, %5857
  %5865 = fadd fast float %5864, %5861
  %5866 = fadd fast float %5865, %5862
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float %5796, float %5797, float %5798)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = fmul fast float %5867, 0x3FDF454380000000
  %5869 = fmul fast float %5867, %5867
  %5870 = fmul fast float %5869, 0x3FEE471020000000
  %5871 = fadd fast float %5870, 0xBFD42F6020000000
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5817, float %5855, float %5856, float 0x3FD20DD760000000, float %5868, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5874 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = fcmp fast oeq float %5874, 0.000000e+00
  %5876 = fcmp fast oeq float %5873, 0.000000e+00
  %5877 = or i1 %5876, %5875
  br i1 %5877, label %5907, label %5878

; <label>:5878                                    ; preds = %5851
  %5879 = fsub fast float -0.000000e+00, %89
  %5880 = fsub fast float -0.000000e+00, %87
  %5881 = call float @dx.op.unary.f32(i32 24, float %5874)  ; Sqrt(value)
  %5882 = fdiv fast float %5881, %5873
  %5883 = fcmp fast ogt float %5882, 0x3FFB6F8900000000
  %5884 = select i1 %5883, float 0x3FFB6F8900000000, float %5882
  %5885 = fmul fast float %5884, 0x3FE8A23460000000
  %5886 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5887 = call float @dx.op.binary.f32(i32 35, float %5884, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5888 = fmul fast float %5886, %5873
  %5889 = fmul fast float %5887, 0x3FF279A740000000
  %5890 = fadd fast float %5889, -1.000000e+00
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5879, float %5880, float %88, float %5879, float %5880, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call float @dx.op.unary.f32(i32 25, float %5891)  ; Rsqrt(value)
  %5893 = fmul fast float %5892, %5879
  %5894 = fmul fast float %5892, %5880
  %5895 = fmul fast float %5892, %88
  %5896 = fmul fast float %5890, %5890
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5887, 0x40005F8BE0000000
  %5899 = fsub fast float 0x400C5BF8A0000000, %5898
  %5900 = fdiv fast float %5888, %5899
  %5901 = fmul fast float %5900, 0x3FEE31C3C0000000
  %5902 = fmul fast float %5901, %5897
  %5903 = fmul fast float %5887, 0x3FDACB7480000000
  %5904 = fadd fast float %5903, 0xBFD7347680000000
  %5905 = fmul fast float %5904, %5900
  %5906 = fmul fast float %5905, %5897
  br label %5907

; <label>:5907                                    ; preds = %5878, %5851
  %5908 = phi float [ %5893, %5878 ], [ 0.000000e+00, %5851 ]
  %5909 = phi float [ %5894, %5878 ], [ 0.000000e+00, %5851 ]
  %5910 = phi float [ %5895, %5878 ], [ 0.000000e+00, %5851 ]
  %5911 = phi float [ %5902, %5878 ], [ 0.000000e+00, %5851 ]
  %5912 = phi float [ %5906, %5878 ], [ 0.000000e+00, %5851 ]
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = fmul fast float %5913, %5913
  %5915 = fmul fast float %5914, 0x3FEE471020000000
  %5916 = fadd fast float %5915, 0xBFD42F6020000000
  %5917 = fmul fast float %5873, 0x3FD20DD760000000
  %5918 = fmul fast float %5916, %5912
  %5919 = fmul fast float %5911, 0x3FDF454380000000
  %5920 = fmul fast float %5919, %5913
  %5921 = fadd fast float %5920, %5917
  %5922 = fadd fast float %5921, %5918
  %5923 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %5796, float %5797, float %5798)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = fmul fast float %5923, 0x3FDF454380000000
  %5925 = fmul fast float %5923, %5923
  %5926 = fmul fast float %5925, 0x3FEE471020000000
  %5927 = fadd fast float %5926, 0xBFD42F6020000000
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5911, float %5912, float 0x3FD20DD760000000, float %5924, float %5927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5930 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = fcmp fast oeq float %5930, 0.000000e+00
  %5932 = fcmp fast oeq float %5929, 0.000000e+00
  %5933 = or i1 %5932, %5931
  br i1 %5933, label %5963, label %5934

; <label>:5934                                    ; preds = %5907
  %5935 = fsub fast float -0.000000e+00, %85
  %5936 = fsub fast float -0.000000e+00, %83
  %5937 = call float @dx.op.unary.f32(i32 24, float %5930)  ; Sqrt(value)
  %5938 = fdiv fast float %5937, %5929
  %5939 = fcmp fast ogt float %5938, 0x3FFB6F8900000000
  %5940 = select i1 %5939, float 0x3FFB6F8900000000, float %5938
  %5941 = fmul fast float %5940, 0x3FE8A23460000000
  %5942 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5943 = call float @dx.op.binary.f32(i32 35, float %5940, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5944 = fmul fast float %5942, %5929
  %5945 = fmul fast float %5943, 0x3FF279A740000000
  %5946 = fadd fast float %5945, -1.000000e+00
  %5947 = call float @dx.op.dot3.f32(i32 55, float %5935, float %5936, float %84, float %5935, float %5936, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5948 = call float @dx.op.unary.f32(i32 25, float %5947)  ; Rsqrt(value)
  %5949 = fmul fast float %5948, %5935
  %5950 = fmul fast float %5948, %5936
  %5951 = fmul fast float %5948, %84
  %5952 = fmul fast float %5946, %5946
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5943, 0x40005F8BE0000000
  %5955 = fsub fast float 0x400C5BF8A0000000, %5954
  %5956 = fdiv fast float %5944, %5955
  %5957 = fmul fast float %5956, 0x3FEE31C3C0000000
  %5958 = fmul fast float %5957, %5953
  %5959 = fmul fast float %5943, 0x3FDACB7480000000
  %5960 = fadd fast float %5959, 0xBFD7347680000000
  %5961 = fmul fast float %5960, %5956
  %5962 = fmul fast float %5961, %5953
  br label %5963

; <label>:5963                                    ; preds = %5934, %5907
  %5964 = phi float [ %5949, %5934 ], [ 0.000000e+00, %5907 ]
  %5965 = phi float [ %5950, %5934 ], [ 0.000000e+00, %5907 ]
  %5966 = phi float [ %5951, %5934 ], [ 0.000000e+00, %5907 ]
  %5967 = phi float [ %5958, %5934 ], [ 0.000000e+00, %5907 ]
  %5968 = phi float [ %5962, %5934 ], [ 0.000000e+00, %5907 ]
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %5966, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = fmul fast float %5969, %5969
  %5971 = fmul fast float %5970, 0x3FEE471020000000
  %5972 = fadd fast float %5971, 0xBFD42F6020000000
  %5973 = fmul fast float %5929, 0x3FD20DD760000000
  %5974 = fmul fast float %5972, %5968
  %5975 = fmul fast float %5967, 0x3FDF454380000000
  %5976 = fmul fast float %5975, %5969
  %5977 = fadd fast float %5976, %5973
  %5978 = fadd fast float %5977, %5974
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %5966, float %5796, float %5797, float %5798)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = fmul fast float %5979, 0x3FDF454380000000
  %5981 = fmul fast float %5979, %5979
  %5982 = fmul fast float %5981, 0x3FEE471020000000
  %5983 = fadd fast float %5982, 0xBFD42F6020000000
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5967, float %5968, float 0x3FD20DD760000000, float %5980, float %5983)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = call float @dx.op.binary.f32(i32 35, float %5866, float 0.000000e+00)  ; FMax(a,b)
  %5986 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5987 = call float @dx.op.binary.f32(i32 35, float %5978, float 0.000000e+00)  ; FMax(a,b)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5872, float 0.000000e+00)  ; FMax(a,b)
  %5989 = call float @dx.op.binary.f32(i32 35, float %5928, float 0.000000e+00)  ; FMax(a,b)
  %5990 = call float @dx.op.binary.f32(i32 35, float %5984, float 0.000000e+00)  ; FMax(a,b)
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = call float @dx.op.binary.f32(i32 36, float %5776, float %5992)  ; FMin(a,b)
  %5994 = fmul fast float %5993, %5800
  %5995 = fsub fast float 1.000000e+00, %5994
  %5996 = bitcast float %5995 to i32
  %5997 = sub nsw i32 2129859010, %5996
  %5998 = bitcast i32 %5997 to float
  %5999 = call float @dx.op.binary.f32(i32 36, float %5777, float %5992)  ; FMin(a,b)
  %6000 = fmul fast float %5999, %5800
  %6001 = fsub fast float 1.000000e+00, %6000
  %6002 = bitcast float %6001 to i32
  %6003 = sub nsw i32 2129859010, %6002
  %6004 = bitcast i32 %6003 to float
  %6005 = call float @dx.op.binary.f32(i32 36, float %5778, float %5992)  ; FMin(a,b)
  %6006 = fmul fast float %6005, %5800
  %6007 = fsub fast float 1.000000e+00, %6006
  %6008 = bitcast float %6007 to i32
  %6009 = sub nsw i32 2129859010, %6008
  %6010 = bitcast i32 %6009 to float
  %6011 = fmul fast float %5985, %5799
  %6012 = fmul fast float %6011, %5998
  %6013 = fmul fast float %5986, %5799
  %6014 = fmul fast float %6013, %6004
  %6015 = fmul fast float %5987, %5799
  %6016 = fmul fast float %6015, %6010
  %6017 = call float @dx.op.binary.f32(i32 36, float %5779, float %5992)  ; FMin(a,b)
  %6018 = fmul fast float %6017, %5800
  %6019 = fsub fast float 1.000000e+00, %6018
  %6020 = bitcast float %6019 to i32
  %6021 = sub nsw i32 2129859010, %6020
  %6022 = bitcast i32 %6021 to float
  %6023 = call float @dx.op.binary.f32(i32 36, float %5780, float %5992)  ; FMin(a,b)
  %6024 = fmul fast float %6023, %5800
  %6025 = fsub fast float 1.000000e+00, %6024
  %6026 = bitcast float %6025 to i32
  %6027 = sub nsw i32 2129859010, %6026
  %6028 = bitcast i32 %6027 to float
  %6029 = call float @dx.op.binary.f32(i32 36, float %5788, float %5992)  ; FMin(a,b)
  %6030 = fmul fast float %6029, %5800
  %6031 = fsub fast float 1.000000e+00, %6030
  %6032 = bitcast float %6031 to i32
  %6033 = sub nsw i32 2129859010, %6032
  %6034 = bitcast i32 %6033 to float
  %6035 = fmul fast float %5988, %5799
  %6036 = fmul fast float %6035, %6022
  %6037 = fmul fast float %5989, %5799
  %6038 = fmul fast float %6037, %6028
  %6039 = fmul fast float %5990, %5799
  %6040 = fmul fast float %6039, %6034
  %6041 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6014, float %6016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = select i1 %278, float 0.000000e+00, float %6012
  %6043 = select i1 %278, float %6041, float %6014
  %6044 = select i1 %278, float 0.000000e+00, float %6016
  %6045 = call float @dx.op.dot3.f32(i32 55, float %6036, float %6038, float %6040, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6046 = select i1 %278, float 0.000000e+00, float %6036
  %6047 = select i1 %278, float %6045, float %6038
  %6048 = select i1 %278, float 0.000000e+00, float %6040
  %6049 = fmul fast float %3928, %3928
  %6050 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  %6051 = fmul fast float %5790, 9.843750e-01
  %6052 = fmul fast float %5785, 9.843750e-01
  %6053 = fadd fast float %6051, 7.812500e-03
  %6054 = fadd fast float %6052, 7.812500e-03
  %6055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %6053, float %6054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.ResRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.ResRet.f32 %6055, 2
  %6059 = extractvalue %dx.types.ResRet.f32 %6055, 3
  %6060 = fsub fast float 1.000000e+00, %6050
  %6061 = fsub fast float %6058, %6056
  %6062 = fsub fast float %6059, %6057
  %6063 = fmul fast float %6061, %6060
  %6064 = fmul fast float %6062, %6060
  %6065 = fadd fast float %6063, %6056
  %6066 = fadd fast float %6064, %6057
  %6067 = fmul fast float %6065, %5779
  %6068 = fmul fast float %6065, %5780
  %6069 = fmul fast float %6065, %5788
  %6070 = fadd fast float %6067, %6066
  %6071 = fadd fast float %6068, %6066
  %6072 = fadd fast float %6069, %6066
  %6073 = fcmp fast ogt float %4578, 0.000000e+00
  br i1 %6073, label %6074, label %6100

; <label>:6074                                    ; preds = %5963
  %6075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4578, float %5790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6076 = extractvalue %dx.types.ResRet.f32 %6075, 0
  %6077 = extractvalue %dx.types.ResRet.f32 %6075, 1
  %6078 = extractvalue %dx.types.ResRet.f32 %6075, 2
  %6079 = fadd fast float %6076, -5.000000e-01
  %6080 = fadd fast float %6077, -5.000000e-01
  %6081 = fadd fast float %6078, -5.000000e-01
  %6082 = fsub fast float 1.000000e+00, %5779
  %6083 = fsub fast float 1.000000e+00, %5780
  %6084 = fsub fast float 1.000000e+00, %5788
  %6085 = fmul fast float %5779, 4.000000e+00
  %6086 = fmul fast float %6085, %6082
  %6087 = fmul fast float %6086, %6079
  %6088 = fmul fast float %5780, 4.000000e+00
  %6089 = fmul fast float %6088, %6083
  %6090 = fmul fast float %6089, %6080
  %6091 = fmul fast float %5788, 4.000000e+00
  %6092 = fmul fast float %6091, %6084
  %6093 = fmul fast float %6092, %6081
  %6094 = fadd fast float %6087, %6070
  %6095 = fadd fast float %6090, %6071
  %6096 = fadd fast float %6093, %6072
  %6097 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6098 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6099 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  br label %6100

; <label>:6100                                    ; preds = %6074, %5963
  %6101 = phi float [ %6097, %6074 ], [ %6070, %5963 ]
  %6102 = phi float [ %6098, %6074 ], [ %6071, %5963 ]
  %6103 = phi float [ %6099, %6074 ], [ %6072, %5963 ]
  %6104 = call float @dx.op.binary.f32(i32 35, float %6102, float %6103)  ; FMax(a,b)
  %6105 = call float @dx.op.binary.f32(i32 35, float %6101, float %6104)  ; FMax(a,b)
  %6106 = fsub fast float 1.000000e+00, %6105
  %6107 = fmul fast float %6105, %5785
  %6108 = fadd fast float %6107, %5785
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 3
  %6112 = fmul fast float %6108, %6110
  %6113 = fadd fast float %6112, %6111
  %6114 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6115 = fsub fast float 1.000000e+00, %5811
  %6116 = fadd fast float %6115, %6114
  %6117 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6118 = fcmp fast olt float %6117, 1.000000e+00
  br i1 %6118, label %6119, label %6595

; <label>:6119                                    ; preds = %6100
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 2
  %6122 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6123 = fmul fast float %6121, %123
  %6124 = fmul fast float %6122, %124
  %6125 = fptoui float %6123 to i32
  %6126 = fptoui float %6124 to i32
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 3
  %6131 = fadd fast float %110, -4.000000e+00
  %6132 = call float @dx.op.binary.f32(i32 35, float %6131, float 0.000000e+00)  ; FMax(a,b)
  %6133 = fadd fast float %6132, %6128
  %6134 = fmul fast float %6133, %6129
  %6135 = call float @dx.op.unary.f32(i32 23, float %6134)  ; Log(value)
  %6136 = fmul fast float %6135, %6130
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6139 = fmul fast float %6136, %6138
  %6140 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  %6141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.i32 %6141, 1
  %6143 = add i32 %6142, -1
  %6144 = uitofp i32 %6142 to float
  %6145 = fmul fast float %6144, %6140
  %6146 = fptoui float %6145 to i32
  %6147 = call i32 @dx.op.binary.i32(i32 40, i32 %6146, i32 %6143)  ; UMin(a,b)
  %6148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.i32 %6148, 2
  %6150 = extractvalue %dx.types.CBufRet.i32 %6148, 3
  %6151 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6126, i32 %6149, i32 %6125)  ; UMad(a,b,c)
  %6152 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6147, i32 %6150, i32 %6151)  ; UMad(a,b,c)
  %6153 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %6154 = fptoui float %6153 to i32
  %6155 = lshr i32 %6154, 5
  %6156 = call i32 @dx.op.binary.i32(i32 40, i32 %6155, i32 8191)  ; UMin(a,b)
  %6157 = fsub fast float %4986, %208
  %6158 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6159 = fcmp fast ogt float %6158, 0.000000e+00
  %6160 = fcmp fast ogt float %5798, 0.000000e+00
  %6161 = and i1 %6160, %6159
  br i1 %6161, label %6162, label %6191

; <label>:6162                                    ; preds = %6119
  %6163 = call float @dx.op.dot3.f32(i32 55, float %5796, float %5797, float %5798, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6164 = call float @dx.op.binary.f32(i32 35, float %6163, float -1.000000e+00)  ; FMax(a,b)
  %6165 = call float @dx.op.binary.f32(i32 36, float %6164, float 1.000000e+00)  ; FMin(a,b)
  %6166 = fmul fast float %6165, %6165
  %6167 = fsub fast float 1.000000e+00, %6166
  %6168 = fmul fast float %6167, 0x3FFC6E2300000000
  %6169 = fsub fast float 1.000000e+00, %6168
  %6170 = fcmp fast ogt float %6169, 0.000000e+00
  %6171 = call float @dx.op.unary.f32(i32 24, float %6169)  ; Sqrt(value)
  %6172 = fsub fast float 1.000000e+00, %6171
  %6173 = call float @dx.op.unary.f32(i32 23, float %6172)  ; Log(value)
  %6174 = fmul fast float %6173, 5.000000e+00
  %6175 = call float @dx.op.unary.f32(i32 21, float %6174)  ; Exp(value)
  %6176 = fmul fast float %6175, 0x3FEF591A60000000
  %6177 = fadd fast float %6176, 0x3F94DCB540000000
  %6178 = select i1 %6170, float %6177, float 1.000000e+00
  %6179 = fcmp fast oge float %6178, 1.000000e+00
  %6180 = fmul fast float %6163, 2.000000e+00
  %6181 = fadd fast float %6180, %5798
  %6182 = select i1 %6179, float %6181, float %5798
  %6183 = fsub fast float %6182, %5798
  %6184 = fmul fast float %6183, %6158
  %6185 = fadd fast float %6184, %5798
  %6186 = call float @dx.op.dot3.f32(i32 55, float %5796, float %5797, float %6185, float %5796, float %5797, float %6185)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = call float @dx.op.unary.f32(i32 25, float %6186)  ; Rsqrt(value)
  %6188 = fmul fast float %6187, %5796
  %6189 = fmul fast float %6187, %5797
  %6190 = fmul fast float %6185, %6187
  br label %6191

; <label>:6191                                    ; preds = %6162, %6119
  %6192 = phi float [ %6188, %6162 ], [ %5796, %6119 ]
  %6193 = phi float [ %6189, %6162 ], [ %5797, %6119 ]
  %6194 = phi float [ %6190, %6162 ], [ %5798, %6119 ]
  %6195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.i32 %6195, 2
  %6197 = add nsw i32 %6196, -1
  %6198 = call i32 @dx.op.binary.i32(i32 37, i32 %6197, i32 0)  ; IMax(a,b)
  %6199 = shl i32 %6156, 2
  %6200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %6199, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.i32 %6200, 0
  %6202 = lshr i32 %6201, 16
  %6203 = and i32 %6201, 65535
  %6204 = lshr i32 %6201, 21
  %6205 = lshr i32 %6203, 5
  %6206 = call i32 @dx.op.binary.i32(i32 40, i32 %6205, i32 %6198)  ; UMin(a,b)
  %6207 = icmp ugt i32 %6204, %6206
  br i1 %6207, label %6571, label %6208

; <label>:6208                                    ; preds = %6191
  br label %6209

; <label>:6209                                    ; preds = %6563, %6208
  %6210 = phi float [ %6564, %6563 ], [ 0.000000e+00, %6208 ]
  %6211 = phi float [ %6565, %6563 ], [ 0.000000e+00, %6208 ]
  %6212 = phi float [ %6566, %6563 ], [ 0.000000e+00, %6208 ]
  %6213 = phi float [ %6567, %6563 ], [ 1.000000e+00, %6208 ]
  %6214 = phi i32 [ %6568, %6563 ], [ %6204, %6208 ]
  %6215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.i32 %6215, 2
  %6217 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6152, i32 %6216, i32 %6214)  ; UMad(a,b,c)
  %6218 = shl i32 %6217, 2
  %6219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6218, i32 undef)  ; BufferLoad(srv,index,wot)
  %6220 = extractvalue %dx.types.ResRet.i32 %6219, 0
  %6221 = shl i32 %6214, 5
  %6222 = sub nsw i32 %6202, %6221
  %6223 = call i32 @dx.op.binary.i32(i32 37, i32 %6222, i32 0)  ; IMax(a,b)
  %6224 = call i32 @dx.op.binary.i32(i32 38, i32 %6223, i32 31)  ; IMin(a,b)
  %6225 = sub nsw i32 1, %6202
  %6226 = add nsw i32 %6225, %6203
  %6227 = call i32 @dx.op.binary.i32(i32 37, i32 %6226, i32 0)  ; IMax(a,b)
  %6228 = call i32 @dx.op.binary.i32(i32 38, i32 %6227, i32 32)  ; IMin(a,b)
  %6229 = and i32 %6228, 31
  %6230 = shl i32 -1, %6229
  %6231 = xor i32 %6230, -1
  %6232 = and i32 %6224, 31
  %6233 = shl i32 %6231, %6232
  %6234 = icmp eq i32 %6228, 32
  %6235 = select i1 %6234, i32 -1, i32 %6233
  %6236 = and i32 %6235, %6220
  %6237 = icmp eq i32 %6236, 0
  br i1 %6237, label %6563, label %6238

; <label>:6238                                    ; preds = %6209
  br label %6239

; <label>:6239                                    ; preds = %6346, %6238
  %6240 = phi float [ %6347, %6346 ], [ %6210, %6238 ]
  %6241 = phi float [ %6348, %6346 ], [ %6211, %6238 ]
  %6242 = phi float [ %6349, %6346 ], [ %6212, %6238 ]
  %6243 = phi float [ %6350, %6346 ], [ %6213, %6238 ]
  %6244 = phi i32 [ %6249, %6346 ], [ %6236, %6238 ]
  %6245 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6244)  ; FirstbitLo(value)
  %6246 = add i32 %6245, %6221
  %6247 = and i32 %6245, 31
  %6248 = shl i32 1, %6247
  %6249 = xor i32 %6248, %6244
  %6250 = mul i32 %6246, 72
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.ResRet.f32 %6251, 2
  %6255 = add i32 %6250, 12
  %6256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6255, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.i32 %6256, 0
  %6258 = add i32 %6250, 16
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = add i32 %6250, 28
  %6264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6263, i32 undef)  ; BufferLoad(srv,index,wot)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  %6266 = add i32 %6250, 32
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.ResRet.f32 %6267, 3
  %6272 = add i32 %6250, 48
  %6273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = add i32 %6250, 56
  %6277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6276, i32 undef)  ; BufferLoad(srv,index,wot)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 1
  %6280 = add i32 %6250, 64
  %6281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6280, i32 undef)  ; BufferLoad(srv,index,wot)
  %6282 = extractvalue %dx.types.ResRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.ResRet.f32 %6281, 1
  %6284 = mul i32 %6246, 60
  %6285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6284, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.ResRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.ResRet.f32 %6285, 2
  %6289 = add i32 %6284, 12
  %6290 = add i32 %6284, 48
  %6291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = and i32 %6257, 32767
  %6296 = bitcast float %6252 to i32
  %6297 = icmp eq i32 %6296, -1
  %6298 = bitcast float %6253 to i32
  %6299 = and i32 %6257, 32768
  %6300 = icmp ne i32 %6299, 0
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6305 = fsub fast float %6286, %6302
  %6306 = fsub fast float %6287, %6303
  %6307 = fsub fast float %6288, %6304
  %6308 = fsub fast float %206, %6305
  %6309 = fsub fast float %207, %6306
  %6310 = fsub fast float %208, %6307
  %6311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6289, i32 undef)  ; BufferLoad(srv,index,wot)
  %6312 = extractvalue %dx.types.ResRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.ResRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.ResRet.f32 %6311, 2
  %6315 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6312, float %6313, float %6314)  ; Dot3(ax,ay,az,bx,by,bz)
  %6316 = add i32 %6284, 24
  %6317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6316, i32 undef)  ; BufferLoad(srv,index,wot)
  %6318 = extractvalue %dx.types.ResRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.ResRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.ResRet.f32 %6317, 2
  %6321 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6318, float %6319, float %6320)  ; Dot3(ax,ay,az,bx,by,bz)
  %6322 = add i32 %6284, 36
  %6323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6322, i32 undef)  ; BufferLoad(srv,index,wot)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.ResRet.f32 %6323, 2
  %6327 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6324, float %6325, float %6326)  ; Dot3(ax,ay,az,bx,by,bz)
  %6328 = call float @dx.op.unary.f32(i32 6, float %6315)  ; FAbs(value)
  %6329 = call float @dx.op.unary.f32(i32 6, float %6321)  ; FAbs(value)
  %6330 = call float @dx.op.unary.f32(i32 6, float %6327)  ; FAbs(value)
  %6331 = fsub fast float %6292, %6328
  %6332 = fsub fast float %6293, %6329
  %6333 = fsub fast float %6294, %6330
  %6334 = fmul fast float %6331, %6260
  %6335 = fmul fast float %6332, %6261
  %6336 = fmul fast float %6333, %6262
  %6337 = call float @dx.op.binary.f32(i32 36, float %6335, float %6336)  ; FMin(a,b)
  %6338 = call float @dx.op.binary.f32(i32 36, float %6334, float %6337)  ; FMin(a,b)
  %6339 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6340 = call float @dx.op.binary.f32(i32 36, float %6243, float %6339)  ; FMin(a,b)
  %6341 = uitofp i1 %6300 to float
  %6342 = fadd fast float %6158, 1.000000e+00
  %6343 = fsub fast float %6342, %6341
  %6344 = fmul fast float %6340, %6343
  %6345 = fcmp fast ogt float %6344, 0.000000e+00
  br i1 %6345, label %6352, label %6346

; <label>:6346                                    ; preds = %6494, %6239
  %6347 = phi float [ %6558, %6494 ], [ %6240, %6239 ]
  %6348 = phi float [ %6559, %6494 ], [ %6241, %6239 ]
  %6349 = phi float [ %6560, %6494 ], [ %6242, %6239 ]
  %6350 = phi float [ %6561, %6494 ], [ %6243, %6239 ]
  %6351 = icmp eq i32 %6244, %6248
  br i1 %6351, label %6562, label %6239

; <label>:6352                                    ; preds = %6239
  br i1 %6297, label %6410, label %6353

; <label>:6353                                    ; preds = %6352
  %6354 = fsub fast float -0.000000e+00, %6312
  %6355 = fsub fast float -0.000000e+00, %6313
  %6356 = fsub fast float -0.000000e+00, %6314
  %6357 = call float @dx.op.dot3.f32(i32 55, float %6192, float %6193, float %6194, float %6354, float %6355, float %6356)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = fsub fast float -0.000000e+00, %6357
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6354, float %6355, float %6356)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = fadd fast float %6359, %6275
  %6361 = fadd fast float %6274, %6359
  %6362 = fsub fast float -0.000000e+00, %6361
  %6363 = fcmp ogt float %6357, -0.000000e+00
  %6364 = select i1 %6363, float %6362, float %6360
  %6365 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6366 = fdiv fast float 1.000000e+00, %6365
  %6367 = fmul fast float %6364, %6366
  %6368 = call float @dx.op.binary.f32(i32 35, float %6367, float 0.000000e+00)  ; FMax(a,b)
  %6369 = fsub fast float -0.000000e+00, %6318
  %6370 = fsub fast float -0.000000e+00, %6319
  %6371 = fsub fast float -0.000000e+00, %6320
  %6372 = call float @dx.op.dot3.f32(i32 55, float %6192, float %6193, float %6194, float %6369, float %6370, float %6371)  ; Dot3(ax,ay,az,bx,by,bz)
  %6373 = fsub fast float -0.000000e+00, %6372
  %6374 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6369, float %6370, float %6371)  ; Dot3(ax,ay,az,bx,by,bz)
  %6375 = fadd fast float %6374, %6279
  %6376 = fadd fast float %6278, %6374
  %6377 = fsub fast float -0.000000e+00, %6376
  %6378 = fcmp ogt float %6372, -0.000000e+00
  %6379 = select i1 %6378, float %6377, float %6375
  %6380 = call float @dx.op.unary.f32(i32 6, float %6373)  ; FAbs(value)
  %6381 = fdiv fast float 1.000000e+00, %6380
  %6382 = fmul fast float %6379, %6381
  %6383 = call float @dx.op.binary.f32(i32 35, float %6382, float 0.000000e+00)  ; FMax(a,b)
  %6384 = fsub fast float -0.000000e+00, %6324
  %6385 = fsub fast float -0.000000e+00, %6325
  %6386 = fsub fast float -0.000000e+00, %6326
  %6387 = call float @dx.op.dot3.f32(i32 55, float %6192, float %6193, float %6194, float %6384, float %6385, float %6386)  ; Dot3(ax,ay,az,bx,by,bz)
  %6388 = fsub fast float -0.000000e+00, %6387
  %6389 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6384, float %6385, float %6386)  ; Dot3(ax,ay,az,bx,by,bz)
  %6390 = fadd fast float %6389, %6283
  %6391 = fadd fast float %6282, %6389
  %6392 = fsub fast float -0.000000e+00, %6391
  %6393 = fcmp ogt float %6387, -0.000000e+00
  %6394 = select i1 %6393, float %6392, float %6390
  %6395 = call float @dx.op.unary.f32(i32 6, float %6388)  ; FAbs(value)
  %6396 = fdiv fast float 1.000000e+00, %6395
  %6397 = fmul fast float %6394, %6396
  %6398 = call float @dx.op.binary.f32(i32 35, float %6397, float 0.000000e+00)  ; FMax(a,b)
  %6399 = call float @dx.op.binary.f32(i32 36, float %6383, float %6398)  ; FMin(a,b)
  %6400 = call float @dx.op.binary.f32(i32 36, float %6368, float %6399)  ; FMin(a,b)
  %6401 = fmul fast float %6400, %6192
  %6402 = fmul fast float %6400, %6193
  %6403 = fmul fast float %6400, %6194
  %6404 = fadd fast float %6401, %206
  %6405 = fadd fast float %6402, %207
  %6406 = fadd fast float %6403, %208
  %6407 = fsub fast float %6404, %6252
  %6408 = fsub fast float %6405, %6253
  %6409 = fsub fast float %6406, %6254
  br label %6417

; <label>:6410                                    ; preds = %6352
  %6411 = fmul fast float %6192, 8.096000e+03
  %6412 = fmul fast float %6193, 8.096000e+03
  %6413 = fmul fast float %6194, 8.096000e+03
  %6414 = fadd fast float %6411, %206
  %6415 = fadd fast float %6412, %207
  %6416 = fadd fast float %6413, %208
  br label %6417

; <label>:6417                                    ; preds = %6410, %6353
  %6418 = phi float [ %6192, %6410 ], [ %6407, %6353 ]
  %6419 = phi float [ %6193, %6410 ], [ %6408, %6353 ]
  %6420 = phi float [ %6194, %6410 ], [ %6409, %6353 ]
  %6421 = phi float [ %6414, %6410 ], [ %6404, %6353 ]
  %6422 = phi float [ %6415, %6410 ], [ %6405, %6353 ]
  %6423 = phi float [ %6416, %6410 ], [ %6406, %6353 ]
  %6424 = fcmp fast olt float %6271, 1.000000e+00
  br i1 %6424, label %6425, label %6456, !dx.controlflow.hints !104

; <label>:6425                                    ; preds = %6417
  %6426 = fmul fast float %6420, %6269
  %6427 = fmul fast float %6419, %6270
  %6428 = fsub fast float %6426, %6427
  %6429 = fmul fast float %6418, %6270
  %6430 = fmul fast float %6420, %6268
  %6431 = fsub fast float %6429, %6430
  %6432 = fmul fast float %6419, %6268
  %6433 = fmul fast float %6418, %6269
  %6434 = fsub fast float %6432, %6433
  %6435 = fmul fast float %6428, 2.000000e+00
  %6436 = fmul fast float %6431, 2.000000e+00
  %6437 = fmul fast float %6434, 2.000000e+00
  %6438 = fmul fast float %6435, %6271
  %6439 = fmul fast float %6436, %6271
  %6440 = fmul fast float %6437, %6271
  %6441 = fmul fast float %6437, %6269
  %6442 = fmul fast float %6436, %6270
  %6443 = fmul fast float %6435, %6270
  %6444 = fmul fast float %6437, %6268
  %6445 = fmul fast float %6436, %6268
  %6446 = fmul fast float %6435, %6269
  %6447 = fadd fast float %6441, %6418
  %6448 = fadd fast float %6447, %6438
  %6449 = fsub fast float %6448, %6442
  %6450 = fsub fast float %6419, %6444
  %6451 = fadd fast float %6450, %6439
  %6452 = fadd fast float %6451, %6443
  %6453 = fadd fast float %6440, %6420
  %6454 = fsub fast float %6453, %6446
  %6455 = fadd fast float %6454, %6445
  br label %6456

; <label>:6456                                    ; preds = %6425, %6417
  %6457 = phi float [ %6449, %6425 ], [ %6418, %6417 ]
  %6458 = phi float [ %6452, %6425 ], [ %6419, %6417 ]
  %6459 = phi float [ %6455, %6425 ], [ %6420, %6417 ]
  br i1 %6297, label %6491, label %6460

; <label>:6460                                    ; preds = %6456
  %6461 = fmul fast float %5785, 0x400187C840000000
  %6462 = fadd fast float %6461, 0xC00EFC2120000000
  %6463 = fmul fast float %6462, %5785
  %6464 = fadd fast float %6463, 0x3FE5D16340000000
  %6465 = fmul fast float %6464, %5785
  %6466 = fadd fast float %6465, 1.000000e+00
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6468 = fsub fast float %6421, %206
  %6469 = fsub fast float %6422, %207
  %6470 = fsub fast float %6423, %208
  %6471 = fsub fast float %6421, %6252
  %6472 = fsub fast float %6422, %6253
  %6473 = fsub fast float %6423, %6254
  %6474 = call float @dx.op.dot3.f32(i32 55, float %6468, float %6469, float %6470, float %6468, float %6469, float %6470)  ; Dot3(ax,ay,az,bx,by,bz)
  %6475 = call float @dx.op.dot3.f32(i32 55, float %6471, float %6472, float %6473, float %6471, float %6472, float %6473)  ; Dot3(ax,ay,az,bx,by,bz)
  %6476 = fadd fast float %6475, 0x3EE4F8B580000000
  %6477 = fdiv fast float %6474, %6476
  %6478 = bitcast float %6477 to i32
  %6479 = ashr i32 %6478, 1
  %6480 = add nsw i32 %6479, 532487669
  %6481 = bitcast i32 %6480 to float
  %6482 = fmul fast float %6481, %6467
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = fmul fast float %6483, 0x4009981AE0000000
  %6485 = fsub fast float 0x40111BBD80000000, %6484
  %6486 = fmul fast float %6485, %6483
  %6487 = fadd fast float %6486, 0xC0009F6020000000
  %6488 = fmul fast float %6487, %6483
  %6489 = fadd fast float %6488, 1.000000e+00
  %6490 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  br label %6494

; <label>:6491                                    ; preds = %6456
  %6492 = icmp ne i32 %6298, -1
  %6493 = zext i1 %6492 to i32
  br label %6494

; <label>:6494                                    ; preds = %6491, %6460
  %6495 = phi float [ %5785, %6491 ], [ %6490, %6460 ]
  %6496 = phi i32 [ %6493, %6491 ], [ 0, %6460 ]
  %6497 = fmul float %6495, 5.000000e+00
  %6498 = fsub float 5.000000e+00, %6497
  %6499 = icmp ne i32 %6496, 0
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 3
  %6502 = fadd fast float %6501, %6498
  %6503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6502)  ; FMax(a,b)
  %6504 = call float @dx.op.unary.f32(i32 6, float %6457)  ; FAbs(value)
  %6505 = call float @dx.op.unary.f32(i32 6, float %6458)  ; FAbs(value)
  %6506 = fadd fast float %6505, %6504
  %6507 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6508 = fadd fast float %6506, %6507
  %6509 = fcmp fast oeq float %6508, 0.000000e+00
  %6510 = fdiv fast float 1.000000e+00, %6508
  %6511 = select i1 %6509, float 1.000000e+00, float %6510
  %6512 = fmul fast float %6511, %6457
  %6513 = fmul fast float %6511, %6458
  %6514 = call float @dx.op.unary.f32(i32 6, float %6513)  ; FAbs(value)
  %6515 = call float @dx.op.unary.f32(i32 6, float %6512)  ; FAbs(value)
  %6516 = fsub fast float 1.000000e+00, %6514
  %6517 = fsub fast float 1.000000e+00, %6515
  %6518 = fcmp fast oge float %6512, 0.000000e+00
  %6519 = fcmp fast oge float %6513, 0.000000e+00
  %6520 = select i1 %6518, float 1.000000e+00, float -1.000000e+00
  %6521 = select i1 %6519, float 1.000000e+00, float -1.000000e+00
  %6522 = fcmp fast ole float %6459, 0.000000e+00
  %6523 = fmul fast float %6520, %6516
  %6524 = fmul fast float %6521, %6517
  %6525 = select i1 %6522, float %6523, float %6512
  %6526 = select i1 %6522, float %6524, float %6513
  %6527 = fmul fast float %6525, 5.000000e-01
  %6528 = fmul fast float %6526, 5.000000e-01
  %6529 = fadd fast float %6527, 5.000000e-01
  %6530 = fadd fast float %6528, 5.000000e-01
  %6531 = uitofp i32 %6295 to float
  %6532 = call float @dx.op.binary.f32(i32 36, float %6503, float 3.000000e+00)  ; FMin(a,b)
  %6533 = fadd fast float %6532, 2.000000e+00
  %6534 = call float @dx.op.unary.f32(i32 21, float %6533)  ; Exp(value)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6536 = fmul fast float %6535, %6534
  %6537 = fmul fast float %6536, 2.000000e+00
  %6538 = fsub fast float 1.000000e+00, %6537
  %6539 = fmul fast float %6529, %6538
  %6540 = fmul fast float %6530, %6538
  %6541 = fadd fast float %6539, %6536
  %6542 = fadd fast float %6540, %6536
  %6543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %6541, float %6542, float %6531, float undef, i32 0, i32 0, i32 undef, float %6503)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6544 = extractvalue %dx.types.ResRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.ResRet.f32 %6543, 1
  %6546 = extractvalue %dx.types.ResRet.f32 %6543, 2
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 3
  %6549 = fmul fast float %6548, %6265
  %6550 = call float @dx.op.binary.f32(i32 36, float %5816, float %6549)  ; FMin(a,b)
  %6551 = select i1 %6499, float %6550, float %6549
  %6552 = fmul fast float %6544, %6344
  %6553 = fmul fast float %6552, %6551
  %6554 = fmul fast float %6545, %6344
  %6555 = fmul fast float %6554, %6551
  %6556 = fmul fast float %6546, %6344
  %6557 = fmul fast float %6556, %6551
  %6558 = fadd fast float %6553, %6240
  %6559 = fadd fast float %6555, %6241
  %6560 = fadd fast float %6557, %6242
  %6561 = fsub fast float %6243, %6344
  br label %6346

; <label>:6562                                    ; preds = %6346
  br label %6563

; <label>:6563                                    ; preds = %6562, %6209
  %6564 = phi float [ %6210, %6209 ], [ %6347, %6562 ]
  %6565 = phi float [ %6211, %6209 ], [ %6348, %6562 ]
  %6566 = phi float [ %6212, %6209 ], [ %6349, %6562 ]
  %6567 = phi float [ %6213, %6209 ], [ %6350, %6562 ]
  %6568 = add i32 %6214, 1
  %6569 = icmp ugt i32 %6568, %6206
  br i1 %6569, label %6570, label %6209, !llvm.loop !105

; <label>:6570                                    ; preds = %6563
  br label %6571

; <label>:6571                                    ; preds = %6570, %6191
  %6572 = phi float [ 0.000000e+00, %6191 ], [ %6564, %6570 ]
  %6573 = phi float [ 0.000000e+00, %6191 ], [ %6565, %6570 ]
  %6574 = phi float [ 0.000000e+00, %6191 ], [ %6566, %6570 ]
  %6575 = call float @dx.op.dot3.f32(i32 55, float %6572, float %6573, float %6574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6576 = select i1 %278, float 0.000000e+00, float %6572
  %6577 = select i1 %278, float %6575, float %6573
  %6578 = select i1 %278, float 0.000000e+00, float %6574
  %6579 = fcmp fast olt float %6117, 0.000000e+00
  %6580 = call float @dx.op.unary.f32(i32 6, float %6117)  ; FAbs(value)
  %6581 = fmul fast float %6580, %6046
  %6582 = fmul fast float %6580, %6047
  %6583 = fmul fast float %6580, %6048
  %6584 = select i1 %6579, float %6046, float %6581
  %6585 = select i1 %6579, float %6047, float %6582
  %6586 = select i1 %6579, float %6048, float %6583
  %6587 = fsub fast float 1.000000e+00, %6580
  %6588 = call float @dx.op.unary.f32(i32 7, float %6587)  ; Saturate(value)
  %6589 = fmul fast float %6588, %6576
  %6590 = fmul fast float %6588, %6577
  %6591 = fmul fast float %6588, %6578
  %6592 = fadd fast float %6584, %6589
  %6593 = fadd fast float %6585, %6590
  %6594 = fadd fast float %6586, %6591
  br label %6595

; <label>:6595                                    ; preds = %6571, %6100
  %6596 = phi float [ %6046, %6100 ], [ %6592, %6571 ]
  %6597 = phi float [ %6047, %6100 ], [ %6593, %6571 ]
  %6598 = phi float [ %6048, %6100 ], [ %6594, %6571 ]
  %6599 = fmul fast float %6106, %6042
  %6600 = fmul fast float %6106, %6043
  %6601 = fmul fast float %6106, %6044
  %6602 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6603 = fcmp fast ogt float %6602, 0x3E7FF19E20000000
  %6604 = fdiv fast float 1.000000e+00, %6602
  %6605 = select i1 %6603, float %6604, float 0.000000e+00
  %6606 = fmul fast float %6605, %5776
  %6607 = fmul fast float %6605, %5777
  %6608 = fmul fast float %6605, %5778
  %6609 = fadd fast float %6606, -1.000000e+00
  %6610 = fadd fast float %6607, -1.000000e+00
  %6611 = fadd fast float %6608, -1.000000e+00
  %6612 = fmul fast float %6609, 5.000000e-01
  %6613 = fmul fast float %6610, 5.000000e-01
  %6614 = fmul fast float %6611, 5.000000e-01
  %6615 = fadd fast float %6612, 1.000000e+00
  %6616 = fadd fast float %6613, 1.000000e+00
  %6617 = fadd fast float %6614, 1.000000e+00
  %6618 = call float @dx.op.binary.f32(i32 35, float %5790, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6619 = fdiv fast float %3928, %6618
  %6620 = fcmp fast olt float %4606, 1.270000e+02
  %6621 = fcmp fast olt float %4607, 1.270000e+02
  %6622 = fcmp fast olt float %4608, 1.270000e+02
  %6623 = fmul fast float %4606, 0xBFF7154760000000
  %6624 = fmul fast float %6623, %6619
  %6625 = fmul fast float %4607, 0xBFF7154760000000
  %6626 = fmul fast float %6625, %6619
  %6627 = fmul fast float %4608, 0xBFF7154760000000
  %6628 = fmul fast float %6627, %6619
  %6629 = call float @dx.op.unary.f32(i32 21, float %6624)  ; Exp(value)
  %6630 = call float @dx.op.unary.f32(i32 21, float %6626)  ; Exp(value)
  %6631 = call float @dx.op.unary.f32(i32 21, float %6628)  ; Exp(value)
  %6632 = call float @dx.op.unary.f32(i32 7, float %6629)  ; Saturate(value)
  %6633 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  %6634 = call float @dx.op.unary.f32(i32 7, float %6631)  ; Saturate(value)
  %6635 = select i1 %6620, float %6632, float 0.000000e+00
  %6636 = select i1 %6621, float %6633, float 0.000000e+00
  %6637 = select i1 %6622, float %6634, float 0.000000e+00
  %6638 = fmul fast float %6635, %6106
  %6639 = fmul fast float %6636, %6106
  %6640 = fmul fast float %6637, %6106
  %6641 = fadd fast float %6638, -1.000000e+00
  %6642 = fadd fast float %6639, -1.000000e+00
  %6643 = fadd fast float %6640, -1.000000e+00
  %6644 = fmul fast float %6596, %6101
  %6645 = fmul fast float %6597, %6102
  %6646 = fmul fast float %6598, %6103
  %6647 = fsub fast float 1.000000e+00, %5790
  %6648 = bitcast float %6647 to i32
  %6649 = sitofp i32 %6648 to float
  %6650 = fmul fast float %6649, 5.000000e+00
  %6651 = fadd fast float %6650, 0xC1EFBF8940000000
  %6652 = fptosi float %6651 to i32
  %6653 = bitcast i32 %6652 to float
  %6654 = fmul fast float %6653, %4579
  %6655 = fmul fast float %6042, %6654
  %6656 = fmul fast float %6655, %6106
  %6657 = fmul fast float %6656, %6615
  %6658 = fmul fast float %6043, %6654
  %6659 = fmul fast float %6658, %6106
  %6660 = fmul fast float %6659, %6616
  %6661 = fmul fast float %6044, %6654
  %6662 = fmul fast float %6661, %6106
  %6663 = fmul fast float %6662, %6617
  %6664 = fmul fast float %6599, %4575
  %6665 = fmul fast float %6600, %4575
  %6666 = fmul fast float %6601, %4575
  %6667 = fadd fast float %6644, %4568
  %6668 = fadd fast float %6667, %6657
  %6669 = fmul fast float %6668, %4575
  %6670 = fadd fast float %6645, %4569
  %6671 = fadd fast float %6670, %6660
  %6672 = fmul fast float %6671, %4575
  %6673 = fadd fast float %6646, %4570
  %6674 = fadd fast float %6673, %6663
  %6675 = fmul fast float %6674, %4575
  %6676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.f32 %6676, 3
  %6678 = fcmp fast oeq float %6677, 0.000000e+00
  br i1 %6678, label %8395, label %6679

; <label>:6679                                    ; preds = %6595
  %6680 = extractvalue %dx.types.CBufRet.f32 %6676, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6676, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6676, 2
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = extractvalue %dx.types.CBufRet.f32 %6683, 1
  %6686 = extractvalue %dx.types.CBufRet.f32 %6683, 2
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 0
  %6689 = extractvalue %dx.types.CBufRet.f32 %6687, 1
  %6690 = call float @dx.op.dot3.f32(i32 55, float %6684, float %6685, float %6686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6691 = select i1 %278, float %6688, float %6684
  %6692 = select i1 %278, float %6690, float %6685
  %6693 = select i1 %278, float %6689, float %6686
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6696 = fmul fast float %6695, %132
  %6697 = fmul fast float %6695, %134
  %6698 = fmul fast float %6695, %136
  %6699 = fadd fast float %6696, %206
  %6700 = fadd fast float %6697, %207
  %6701 = fadd fast float %6698, %208
  %6702 = fcmp fast olt float %6677, 0.000000e+00
  br i1 %6702, label %7960, label %6703

; <label>:6703                                    ; preds = %6679
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 0
  %6706 = extractvalue %dx.types.CBufRet.f32 %6704, 1
  %6707 = extractvalue %dx.types.CBufRet.f32 %6704, 2
  %6708 = extractvalue %dx.types.CBufRet.f32 %6704, 3
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6712 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6713 = extractvalue %dx.types.CBufRet.f32 %6709, 3
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6718 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6719 = fmul fast float %6705, %6699
  %6720 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6706, float %6719)  ; FMad(a,b,c)
  %6721 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6707, float %6720)  ; FMad(a,b,c)
  %6722 = fadd fast float %6721, %6708
  %6723 = fmul fast float %6710, %6699
  %6724 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6711, float %6723)  ; FMad(a,b,c)
  %6725 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6712, float %6724)  ; FMad(a,b,c)
  %6726 = fadd fast float %6725, %6713
  %6727 = fmul fast float %6715, %6699
  %6728 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6716, float %6727)  ; FMad(a,b,c)
  %6729 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6717, float %6728)  ; FMad(a,b,c)
  %6730 = fadd fast float %6729, %6718
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6733 = fcmp fast une float %6732, 0.000000e+00
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.CBufRet.f32 %6734, 3
  %6738 = fmul fast float %6737, %6722
  %6739 = fmul fast float %6737, %6726
  %6740 = fadd fast float %6738, %6735
  %6741 = fadd fast float %6739, %6736
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.CBufRet.f32 %6742, 3
  %6746 = fmul fast float %6745, %6722
  %6747 = fmul fast float %6745, %6726
  %6748 = fadd fast float %6746, %6743
  %6749 = fadd fast float %6747, %6744
  %6750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.f32 %6750, 1
  %6752 = fsub fast float %6751, %6730
  %6753 = extractvalue %dx.types.CBufRet.f32 %6750, 2
  %6754 = fmul fast float %6752, %6753
  %6755 = fsub fast float 1.000000e+00, %6754
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  br i1 %6733, label %6817, label %6757

; <label>:6757                                    ; preds = %6703
  %6758 = extractvalue %dx.types.CBufRet.f32 %6742, 2
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6761 = fadd fast float %6760, %6758
  %6762 = fcmp fast ogt float %6761, 0.000000e+00
  br i1 %6762, label %6763, label %6787

; <label>:6763                                    ; preds = %6757
  %6764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6764, 0
  %6766 = extractvalue %dx.types.CBufRet.f32 %6764, 1
  %6767 = fsub fast float %6748, %6765
  %6768 = fsub fast float %6749, %6766
  %6769 = fcmp fast olt float %6767, 0.000000e+00
  %6770 = fcmp fast olt float %6768, 0.000000e+00
  %6771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6772 = extractvalue %dx.types.CBufRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.CBufRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.CBufRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.CBufRet.f32 %6771, 3
  %6776 = select i1 %6769, float %6772, float %6774
  %6777 = select i1 %6770, float %6773, float %6775
  %6778 = fmul fast float %6776, %6767
  %6779 = fmul fast float %6777, %6768
  %6780 = call float @dx.op.unary.f32(i32 6, float %6778)  ; FAbs(value)
  %6781 = call float @dx.op.unary.f32(i32 6, float %6779)  ; FAbs(value)
  %6782 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6783 = call float @dx.op.binary.f32(i32 35, float %6780, float %6781)  ; FMax(a,b)
  %6784 = fsub fast float %6782, %6783
  %6785 = call float @dx.op.unary.f32(i32 7, float %6784)  ; Saturate(value)
  %6786 = fmul fast float %6785, %6756
  br label %6787

; <label>:6787                                    ; preds = %6763, %6757
  %6788 = phi float [ %6786, %6763 ], [ 0.000000e+00, %6757 ]
  %6789 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6790 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6791 = fadd fast float %6790, %6789
  %6792 = fcmp fast ogt float %6791, 0.000000e+00
  br i1 %6792, label %6793, label %6817

; <label>:6793                                    ; preds = %6787
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.CBufRet.f32 %6794, 1
  %6797 = fsub fast float %6740, %6795
  %6798 = fsub fast float %6741, %6796
  %6799 = fcmp fast olt float %6797, 0.000000e+00
  %6800 = fcmp fast olt float %6798, 0.000000e+00
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6805 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6806 = select i1 %6799, float %6802, float %6804
  %6807 = select i1 %6800, float %6803, float %6805
  %6808 = fmul fast float %6806, %6797
  %6809 = fmul fast float %6807, %6798
  %6810 = call float @dx.op.unary.f32(i32 6, float %6808)  ; FAbs(value)
  %6811 = call float @dx.op.unary.f32(i32 6, float %6809)  ; FAbs(value)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6813 = call float @dx.op.binary.f32(i32 35, float %6810, float %6811)  ; FMax(a,b)
  %6814 = fsub fast float %6812, %6813
  %6815 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  %6816 = fmul fast float %6815, %6756
  br label %6817

; <label>:6817                                    ; preds = %6793, %6787, %6703
  %6818 = phi float [ 0.000000e+00, %6703 ], [ %6816, %6793 ], [ 0.000000e+00, %6787 ]
  %6819 = phi float [ 0.000000e+00, %6703 ], [ %6788, %6793 ], [ %6788, %6787 ]
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6822 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  %6823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.f32 %6823, 0
  %6825 = extractvalue %dx.types.CBufRet.f32 %6823, 1
  %6826 = fsub fast float %6722, %6824
  %6827 = fsub fast float %6726, %6825
  %6828 = fcmp fast olt float %6826, 0.000000e+00
  %6829 = fcmp fast olt float %6827, 0.000000e+00
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.CBufRet.f32 %6830, 1
  %6833 = extractvalue %dx.types.CBufRet.f32 %6830, 2
  %6834 = extractvalue %dx.types.CBufRet.f32 %6830, 3
  %6835 = select i1 %6828, float %6831, float %6833
  %6836 = select i1 %6829, float %6832, float %6834
  %6837 = fmul fast float %6835, %6826
  %6838 = fmul fast float %6836, %6827
  %6839 = call float @dx.op.unary.f32(i32 6, float %6837)  ; FAbs(value)
  %6840 = call float @dx.op.unary.f32(i32 6, float %6838)  ; FAbs(value)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6842 = call float @dx.op.binary.f32(i32 35, float %6839, float %6840)  ; FMax(a,b)
  %6843 = fsub fast float %6841, %6842
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6845 = call float @dx.op.binary.f32(i32 36, float %6844, float %6822)  ; FMin(a,b)
  %6846 = fmul fast float %6845, %6756
  %6847 = fsub fast float %6818, %6846
  %6848 = fsub fast float %6819, %6818
  %6849 = fsub fast float %6848, %6846
  %6850 = call float @dx.op.binary.f32(i32 35, float %6818, float %6819)  ; FMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 35, float %6846, float %6850)  ; FMax(a,b)
  %6852 = fcmp fast olt float %6851, 1.000000e+00
  br i1 %6852, label %6853, label %7251, !dx.controlflow.hints !107

; <label>:6853                                    ; preds = %6817
  %6854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6855 = extractvalue %dx.types.CBufRet.f32 %6854, 0
  %6856 = fcmp fast une float %6855, 0.000000e+00
  br i1 %6856, label %6857, label %7251, !dx.controlflow.hints !108

; <label>:6857                                    ; preds = %6853
  %6858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.CBufRet.f32 %6858, 1
  %6861 = extractvalue %dx.types.CBufRet.f32 %6858, 2
  %6862 = extractvalue %dx.types.CBufRet.f32 %6858, 3
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6867 = extractvalue %dx.types.CBufRet.f32 %6863, 3
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6872 = extractvalue %dx.types.CBufRet.f32 %6868, 3
  %6873 = fmul fast float %6859, %6699
  %6874 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6860, float %6873)  ; FMad(a,b,c)
  %6875 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6861, float %6874)  ; FMad(a,b,c)
  %6876 = fadd fast float %6875, %6862
  %6877 = fmul fast float %6864, %6699
  %6878 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6865, float %6877)  ; FMad(a,b,c)
  %6879 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6866, float %6878)  ; FMad(a,b,c)
  %6880 = fadd fast float %6879, %6867
  %6881 = fmul fast float %6869, %6699
  %6882 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6870, float %6881)  ; FMad(a,b,c)
  %6883 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6871, float %6882)  ; FMad(a,b,c)
  %6884 = fadd fast float %6883, %6872
  %6885 = fcmp fast oge float %6876, 1.000000e+00
  %6886 = fcmp fast oge float %6880, 1.000000e+00
  %6887 = or i1 %6885, %6886
  %6888 = fcmp fast olt float %6876, 0.000000e+00
  %6889 = fcmp fast olt float %6880, 0.000000e+00
  %6890 = or i1 %6888, %6889
  %6891 = or i1 %6887, %6890
  br i1 %6891, label %7251, label %6892, !dx.controlflow.hints !109

; <label>:6892                                    ; preds = %6857
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.i32 %6897, 2
  %6899 = uitofp i32 %6898 to float
  %6900 = extractvalue %dx.types.CBufRet.i32 %6897, 3
  %6901 = uitofp i32 %6900 to float
  %6902 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6903 = fmul fast float %6902, 2.000000e+00
  %6904 = fsub fast float %6876, %6894
  %6905 = fsub fast float %6880, %6895
  %6906 = fmul fast float %6903, %6904
  %6907 = fmul fast float %6903, %6905
  %6908 = fdiv fast float 1.000000e+00, %6682
  %6909 = fmul fast float %6907, %6908
  %6910 = call float @dx.op.unary.f32(i32 6, float %6909)  ; FAbs(value)
  %6911 = fmul fast float %6896, %6701
  %6912 = fmul fast float %6911, %6903
  %6913 = call float @dx.op.unary.f32(i32 6, float %6912)  ; FAbs(value)
  %6914 = call float @dx.op.unary.f32(i32 6, float %6906)  ; FAbs(value)
  %6915 = call float @dx.op.binary.f32(i32 35, float %6913, float %6910)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6914, float %6915)  ; FMax(a,b)
  %6917 = fmul fast float %6916, 2.000000e+00
  %6918 = call float @dx.op.unary.f32(i32 23, float %6917)  ; Log(value)
  %6919 = call float @dx.op.binary.f32(i32 35, float %6918, float %6899)  ; FMax(a,b)
  %6920 = call float @dx.op.unary.f32(i32 22, float %6919)  ; Frc(value)
  %6921 = fadd fast float %6920, 0xBFEA666660000000
  %6922 = fmul fast float %6921, 8.000000e+00
  %6923 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6924 = call float @dx.op.unary.f32(i32 27, float %6919)  ; Round_ni(value)
  %6925 = fadd fast float %6924, %6923
  %6926 = call float @dx.op.binary.f32(i32 36, float %6925, float %6901)  ; FMin(a,b)
  %6927 = call float @dx.op.unary.f32(i32 27, float %6926)  ; Round_ni(value)
  %6928 = fsub fast float -0.000000e+00, %6927
  %6929 = call float @dx.op.unary.f32(i32 21, float %6928)  ; Exp(value)
  %6930 = fmul fast float %6929, %6903
  %6931 = fmul fast float %6930, %6876
  %6932 = fmul fast float %6930, %6880
  %6933 = fmul fast float %6931, 2.500000e-01
  %6934 = fmul fast float %6932, 2.500000e-01
  %6935 = fadd fast float %6933, 5.000000e-01
  %6936 = fadd fast float %6934, 5.000000e-01
  %6937 = fsub fast float %6901, %6899
  %6938 = fptoui float %6937 to i32
  %6939 = add i32 %6938, 320
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6939)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6943 = fcmp fast une float %6926, %6901
  %6944 = fsub fast float %6876, %6941
  %6945 = fsub fast float %6880, %6942
  %6946 = call float @dx.op.unary.f32(i32 6, float %6944)  ; FAbs(value)
  %6947 = call float @dx.op.unary.f32(i32 6, float %6945)  ; FAbs(value)
  %6948 = fmul fast float %6946, %6930
  %6949 = fmul fast float %6947, %6930
  %6950 = fcmp fast olt float %6948, 1.000000e+00
  %6951 = fcmp fast olt float %6949, 1.000000e+00
  %6952 = and i1 %6950, %6951
  %6953 = or i1 %6943, %6952
  br i1 %6953, label %6954, label %7251, !dx.controlflow.hints !110

; <label>:6954                                    ; preds = %6892
  %6955 = fmul fast float %6932, 5.000000e-01
  %6956 = fmul fast float %6931, 5.000000e-01
  %6957 = fadd fast float %6955, 5.000000e-01
  %6958 = fadd fast float %6956, 5.000000e-01
  %6959 = sitofp i32 %6898 to float
  %6960 = fsub fast float %6926, %6959
  %6961 = call float @dx.op.unary.f32(i32 27, float %6960)  ; Round_ni(value)
  %6962 = call float @dx.op.unary.f32(i32 22, float %6926)  ; Frc(value)
  %6963 = call float @dx.op.unary.f32(i32 22, float %6958)  ; Frc(value)
  %6964 = call float @dx.op.unary.f32(i32 22, float %6957)  ; Frc(value)
  %6965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6963, float %6964, float %6961, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.ResRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.ResRet.f32 %6965, 2
  %6969 = extractvalue %dx.types.ResRet.f32 %6965, 3
  %6970 = fcmp fast ogt float %6962, 0.000000e+00
  br i1 %6970, label %6971, label %6992, !dx.controlflow.hints !111

; <label>:6971                                    ; preds = %6954
  %6972 = fadd fast float %6961, 1.000000e+00
  %6973 = call float @dx.op.unary.f32(i32 22, float %6935)  ; Frc(value)
  %6974 = call float @dx.op.unary.f32(i32 22, float %6936)  ; Frc(value)
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6973, float %6974, float %6972, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.ResRet.f32 %6975, 3
  %6980 = fsub fast float %6976, %6966
  %6981 = fsub fast float %6977, %6967
  %6982 = fsub fast float %6978, %6968
  %6983 = fsub fast float %6979, %6969
  %6984 = fmul fast float %6980, %6962
  %6985 = fmul fast float %6981, %6962
  %6986 = fmul fast float %6982, %6962
  %6987 = fmul fast float %6983, %6962
  %6988 = fadd fast float %6984, %6966
  %6989 = fadd fast float %6985, %6967
  %6990 = fadd fast float %6986, %6968
  %6991 = fadd fast float %6987, %6969
  br label %6992

; <label>:6992                                    ; preds = %6971, %6954
  %6993 = phi float [ %6988, %6971 ], [ %6966, %6954 ]
  %6994 = phi float [ %6989, %6971 ], [ %6967, %6954 ]
  %6995 = phi float [ %6990, %6971 ], [ %6968, %6954 ]
  %6996 = phi float [ %6991, %6971 ], [ %6969, %6954 ]
  %6997 = fadd fast float %6993, -5.000000e-01
  %6998 = fadd fast float %6995, -5.000000e-01
  %6999 = fmul fast float %6997, 0xBFD5555560000000
  %7000 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6998, float %6999)  ; FMad(a,b,c)
  %7001 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6994, float 0.000000e+00)  ; FMad(a,b,c)
  %7002 = fadd fast float %7001, %6996
  %7003 = fmul fast float %6997, -7.500000e-01
  %7004 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6998, float %7003)  ; FMad(a,b,c)
  %7005 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6994, float 0.000000e+00)  ; FMad(a,b,c)
  %7006 = fadd fast float %7005, %6996
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7013 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7014 = fsub fast float %7010, %7000
  %7015 = fsub fast float %7011, %7002
  %7016 = fsub fast float %7012, %7004
  %7017 = fsub fast float %7013, %7006
  %7018 = fmul fast float %7014, %7008
  %7019 = fmul fast float %7015, %7008
  %7020 = fmul fast float %7016, %7008
  %7021 = fmul fast float %7017, %7008
  %7022 = fadd fast float %7018, %7000
  %7023 = fadd fast float %7019, %7002
  %7024 = fadd fast float %7020, %7004
  %7025 = fadd fast float %7021, %7006
  %7026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7027 = extractvalue %dx.types.ResRet.i32 %7026, 0
  %7028 = and i32 %7027, 536870911
  %7029 = uitofp i32 %7028 to float
  %7030 = fmul fast float %7029, %6876
  %7031 = fmul fast float %7029, %6880
  %7032 = fptoui float %7030 to i32
  %7033 = fptoui float %7031 to i32
  %7034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.i32 %7034, 0
  %7036 = and i32 %7035, 31
  %7037 = lshr i32 %7032, %7036
  %7038 = lshr i32 %7033, %7036
  %7039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7040 = extractvalue %dx.types.ResRet.i32 %7039, 0
  %7041 = and i32 %7040, 31
  %7042 = shl i32 1, %7041
  %7043 = call i32 @dx.op.binary.i32(i32 40, i32 %7042, i32 4)  ; UMin(a,b)
  %7044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7045 = extractvalue %dx.types.ResRet.i32 %7044, 0
  %7046 = extractvalue %dx.types.ResRet.i32 %7044, 1
  %7047 = icmp eq i32 %7043, 0
  br i1 %7047, label %7089, label %7048

; <label>:7048                                    ; preds = %6992
  br label %7049

; <label>:7049                                    ; preds = %7077, %7048
  %7050 = phi i32 [ %7080, %7077 ], [ 0, %7048 ]
  %7051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7052 = extractvalue %dx.types.ResRet.i32 %7051, 0
  %7053 = lshr i32 %7052, 16
  %7054 = and i32 %7053, 31
  %7055 = shl i32 %7038, %7054
  %7056 = add i32 %7055, %7037
  %7057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7058 = extractvalue %dx.types.ResRet.i32 %7057, 0
  %7059 = and i32 %7058, 31
  %7060 = shl i32 %7056, %7059
  %7061 = add i32 %7060, %7050
  %7062 = shl i32 %7061, 2
  %7063 = add i32 %7062, 32
  %7064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7063, i32 undef)  ; BufferLoad(srv,index,wot)
  %7065 = extractvalue %dx.types.ResRet.i32 %7064, 0
  %7066 = icmp slt i32 %7065, 0
  %7067 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %7050
  %7068 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %7050
  %7069 = bitcast float* %7067 to i32*
  %7070 = bitcast float* %7068 to i32*
  br i1 %7066, label %7071, label %7077

; <label>:7071                                    ; preds = %7049
  %7072 = and i32 %7065, 1073741823
  %7073 = add nuw nsw i32 %7072, 20
  %7074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7073, i32 undef)  ; BufferLoad(srv,index,wot)
  %7075 = extractvalue %dx.types.ResRet.i32 %7074, 0
  %7076 = extractvalue %dx.types.ResRet.i32 %7074, 1
  br label %7077

; <label>:7077                                    ; preds = %7071, %7049
  %7078 = phi i32 [ %7075, %7071 ], [ %7045, %7049 ]
  %7079 = phi i32 [ %7076, %7071 ], [ %7046, %7049 ]
  store i32 %7078, i32* %7069, align 4
  store i32 %7079, i32* %7070, align 4
  %7080 = add nuw i32 %7050, 1
  %7081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.i32 %7081, 2
  %7083 = icmp eq i32 %7082, 0
  %7084 = icmp ugt i32 %7065, -1073741825
  %7085 = and i1 %7084, %7083
  %7086 = icmp ult i32 %7080, %7043
  %7087 = and i1 %7085, %7086
  br i1 %7087, label %7049, label %7088

; <label>:7088                                    ; preds = %7077
  br label %7089

; <label>:7089                                    ; preds = %7088, %6992
  %7090 = phi i32 [ 0, %6992 ], [ %7080, %7088 ]
  %7091 = extractvalue %dx.types.CBufRet.f32 %6854, 2
  %7092 = fptoui float %7091 to i32
  %7093 = icmp eq i32 %7092, 0
  br i1 %7093, label %7145, label %7094

; <label>:7094                                    ; preds = %7089
  br label %7095

; <label>:7095                                    ; preds = %7140, %7094
  %7096 = phi i32 [ %7141, %7140 ], [ %7090, %7094 ]
  %7097 = phi i32 [ %7142, %7140 ], [ 0, %7094 ]
  %7098 = lshr i32 %7097, 2
  %7099 = and i32 %7097, 3
  %7100 = add nuw nsw i32 %7098, 83
  %7101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %7100)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.i32 %7101, 0
  %7103 = extractvalue %dx.types.CBufRet.i32 %7101, 1
  %7104 = extractvalue %dx.types.CBufRet.i32 %7101, 2
  %7105 = extractvalue %dx.types.CBufRet.i32 %7101, 3
  %7106 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %7102, i32* %7106, align 4
  %7107 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %7103, i32* %7107, align 4
  %7108 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %7104, i32* %7108, align 4
  %7109 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %7105, i32* %7109, align 4
  %7110 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %7099
  %7111 = load i32, i32* %7110, align 4, !tbaa !112, !noalias !116
  %7112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7113 = extractvalue %dx.types.ResRet.i32 %7112, 0
  %7114 = lshr i32 %7113, 16
  %7115 = and i32 %7114, 31
  %7116 = shl i32 %7038, %7115
  %7117 = add i32 %7116, %7037
  %7118 = shl i32 %7117, 2
  %7119 = add i32 %7118, %7111
  %7120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7119, i32 undef)  ; BufferLoad(srv,index,wot)
  %7121 = extractvalue %dx.types.ResRet.i32 %7120, 0
  %7122 = icmp eq i32 %7121, 0
  br i1 %7122, label %7140, label %7123

; <label>:7123                                    ; preds = %7095
  %7124 = icmp slt i32 %7121, 0
  %7125 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %7096
  %7126 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %7096
  %7127 = bitcast float* %7125 to i32*
  %7128 = bitcast float* %7126 to i32*
  br i1 %7124, label %7129, label %7136

; <label>:7129                                    ; preds = %7123
  %7130 = and i32 %7121, 1073741823
  %7131 = add i32 %7111, 20
  %7132 = add i32 %7131, %7130
  %7133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7132, i32 undef)  ; BufferLoad(srv,index,wot)
  %7134 = extractvalue %dx.types.ResRet.i32 %7133, 0
  %7135 = extractvalue %dx.types.ResRet.i32 %7133, 1
  br label %7136

; <label>:7136                                    ; preds = %7129, %7123
  %7137 = phi i32 [ %7134, %7129 ], [ %7045, %7123 ]
  %7138 = phi i32 [ %7135, %7129 ], [ %7046, %7123 ]
  store i32 %7137, i32* %7127, align 4
  store i32 %7138, i32* %7128, align 4
  %7139 = add i32 %7096, 1
  br label %7140

; <label>:7140                                    ; preds = %7136, %7095
  %7141 = phi i32 [ %7096, %7095 ], [ %7139, %7136 ]
  %7142 = add nuw i32 %7097, 1
  %7143 = icmp eq i32 %7142, %7092
  br i1 %7143, label %7144, label %7095

; <label>:7144                                    ; preds = %7140
  br label %7145

; <label>:7145                                    ; preds = %7144, %7089
  %7146 = phi i32 [ %7090, %7089 ], [ %7141, %7144 ]
  %7147 = icmp eq i32 %7146, 1
  %7148 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 0
  %7149 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 0
  br i1 %7147, label %7150, label %7153

; <label>:7150                                    ; preds = %7145
  %7151 = load float, float* %7148, align 4
  %7152 = load float, float* %7149, align 4
  br label %7180

; <label>:7153                                    ; preds = %7145
  %7154 = load float, float* %7148, align 4
  %7155 = load float, float* %7149, align 4
  %7156 = fdiv fast float 1.000000e+00, %7155
  %7157 = fsub fast float %7154, %7156
  %7158 = icmp ugt i32 %7146, 1
  br i1 %7158, label %7159, label %7175

; <label>:7159                                    ; preds = %7153
  br label %7160

; <label>:7160                                    ; preds = %7160, %7159
  %7161 = phi float [ %7170, %7160 ], [ %7157, %7159 ]
  %7162 = phi float [ %7171, %7160 ], [ %7154, %7159 ]
  %7163 = phi i32 [ %7172, %7160 ], [ 1, %7159 ]
  %7164 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %7163
  %7165 = load float, float* %7164, align 4
  %7166 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %7163
  %7167 = load float, float* %7166, align 4
  %7168 = fdiv fast float 1.000000e+00, %7167
  %7169 = fsub fast float %7165, %7168
  %7170 = call float @dx.op.binary.f32(i32 36, float %7161, float %7169)  ; FMin(a,b)
  %7171 = call float @dx.op.binary.f32(i32 35, float %7162, float %7165)  ; FMax(a,b)
  %7172 = add nuw i32 %7163, 1
  %7173 = icmp eq i32 %7172, %7146
  br i1 %7173, label %7174, label %7160

; <label>:7174                                    ; preds = %7160
  br label %7175

; <label>:7175                                    ; preds = %7174, %7153
  %7176 = phi float [ %7157, %7153 ], [ %7170, %7174 ]
  %7177 = phi float [ %7154, %7153 ], [ %7171, %7174 ]
  %7178 = fsub fast float %7177, %7176
  %7179 = fdiv fast float 1.000000e+00, %7178
  br label %7180

; <label>:7180                                    ; preds = %7175, %7150
  %7181 = phi float [ %7151, %7150 ], [ %7177, %7175 ]
  %7182 = phi float [ %7152, %7150 ], [ %7179, %7175 ]
  %7183 = fadd fast float %6884, %7181
  %7184 = fmul fast float %7183, %7182
  %7185 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7186 = fmul fast float %7185, 2.000000e+00
  %7187 = fsub fast float 1.000000e+00, %7186
  %7188 = fmul fast float %7022, %7022
  %7189 = fsub fast float %7023, %7188
  %7190 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7189)  ; FMax(a,b)
  %7191 = fdiv fast float 1.000000e+00, %7190
  %7192 = fmul fast float %7023, %7022
  %7193 = fsub fast float %7024, %7192
  %7194 = fsub fast float %7187, %7022
  %7195 = fmul fast float %7187, %7187
  %7196 = fsub fast float %7195, %7023
  %7197 = fmul fast float %7191, %7193
  %7198 = fmul fast float %7197, %7194
  %7199 = fsub fast float %7196, %7198
  %7200 = fmul fast float %7023, %7023
  %7201 = fsub fast float %7025, %7200
  %7202 = fmul fast float %7193, %7193
  %7203 = fmul fast float %7202, %7191
  %7204 = fsub fast float %7201, %7203
  %7205 = fdiv fast float %7199, %7204
  %7206 = fmul fast float %7205, %7193
  %7207 = fsub fast float %7194, %7206
  %7208 = fmul fast float %7207, %7191
  %7209 = fmul fast float %7208, %7022
  %7210 = fsub fast float 1.000000e+00, %7209
  %7211 = fmul fast float %7205, %7023
  %7212 = fsub fast float %7210, %7211
  %7213 = fmul fast float %7208, %7208
  %7214 = fmul fast float %7205, 4.000000e+00
  %7215 = fmul fast float %7214, %7212
  %7216 = fsub fast float %7213, %7215
  %7217 = call float @dx.op.unary.f32(i32 24, float %7216)  ; Sqrt(value)
  %7218 = fcmp fast oge float %7208, 0.000000e+00
  %7219 = fsub fast float -0.000000e+00, %7217
  %7220 = select i1 %7218, float %7219, float %7217
  %7221 = fsub fast float %7220, %7208
  %7222 = fdiv fast float %7221, %7205
  %7223 = fdiv fast float %7212, %7221
  %7224 = fmul fast float %7222, 5.000000e-01
  %7225 = fmul fast float %7223, 2.000000e+00
  %7226 = select i1 %7218, float %7224, float %7225
  %7227 = select i1 %7218, float %7225, float %7224
  %7228 = call float @dx.op.binary.f32(i32 35, float %7226, float %7227)  ; FMax(a,b)
  %7229 = call float @dx.op.binary.f32(i32 36, float %7226, float %7227)  ; FMin(a,b)
  %7230 = fcmp fast ogt float %7187, %7228
  %7231 = fsub fast float %7187, %7229
  %7232 = fsub fast float %7187, %7228
  %7233 = fsub fast float %7228, %7229
  %7234 = select i1 %7230, float %7232, float %7233
  %7235 = fmul float %7231, %7234
  %7236 = select i1 %7230, float %7229, float %7187
  %7237 = fcmp fast ogt float %7187, %7229
  %7238 = fmul fast float %7236, %7228
  %7239 = fadd fast float %7236, %7228
  %7240 = fmul fast float %7239, %7022
  %7241 = fadd fast float %7238, %7023
  %7242 = fsub fast float %7241, %7240
  %7243 = fdiv fast float %7242, %7235
  %7244 = select i1 %7237, float %7243, float 0.000000e+00
  %7245 = fsub fast float 1.000000e+00, %7244
  %7246 = select i1 %7230, float %7245, float %7244
  %7247 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7248 = extractvalue %dx.types.CBufRet.f32 %7007, 3
  %7249 = fmul fast float %7248, %7247
  %7250 = fsub fast float 1.000000e+00, %7249
  br label %7251

; <label>:7251                                    ; preds = %7180, %6892, %6857, %6853, %6817
  %7252 = phi float [ 1.000000e+00, %6817 ], [ %7250, %7180 ], [ 1.000000e+00, %6857 ], [ 1.000000e+00, %6892 ], [ 1.000000e+00, %6853 ]
  %7253 = fcmp fast ogt float %6849, 0.000000e+00
  br i1 %7253, label %7254, label %7418, !dx.controlflow.hints !125

; <label>:7254                                    ; preds = %7251
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7257 = fadd fast float %7256, %6730
  %7258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7259 = extractvalue %dx.types.CBufRet.f32 %7258, 2
  %7260 = extractvalue %dx.types.CBufRet.f32 %7258, 3
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 2
  %7263 = call float @dx.op.binary.f32(i32 35, float %7257, float 0.000000e+00)  ; FMax(a,b)
  %7264 = fadd fast float %7263, 0x3F10000000000000
  %7265 = fcmp fast oeq float %7262, 0.000000e+00
  br i1 %7265, label %7266, label %7333

; <label>:7266                                    ; preds = %7254
  %7267 = extractvalue %dx.types.CBufRet.f32 %7258, 1
  %7268 = extractvalue %dx.types.CBufRet.f32 %7258, 0
  %7269 = fmul fast float %7268, %6748
  %7270 = fmul fast float %7267, %6749
  %7271 = fadd fast float %7269, 5.000000e-01
  %7272 = call float @dx.op.unary.f32(i32 27, float %7271)  ; Round_ni(value)
  %7273 = fadd fast float %7270, 5.000000e-01
  %7274 = call float @dx.op.unary.f32(i32 27, float %7273)  ; Round_ni(value)
  %7275 = fsub fast float %7271, %7272
  %7276 = fsub fast float %7273, %7274
  %7277 = fadd fast float %7272, -5.000000e-01
  %7278 = fadd fast float %7274, -5.000000e-01
  %7279 = fmul fast float %7275, 2.000000e+00
  %7280 = fsub fast float 3.000000e+00, %7279
  %7281 = fadd fast float %7279, 1.000000e+00
  %7282 = fsub fast float 2.000000e+00, %7275
  %7283 = bitcast float %7280 to i32
  %7284 = sub nsw i32 2129859010, %7283
  %7285 = bitcast i32 %7284 to float
  %7286 = fmul fast float %7285, %7282
  %7287 = fadd fast float %7286, -1.000000e+00
  %7288 = bitcast float %7281 to i32
  %7289 = sub nsw i32 2129859010, %7288
  %7290 = bitcast i32 %7289 to float
  %7291 = fmul fast float %7290, %7275
  %7292 = fadd fast float %7291, 1.000000e+00
  %7293 = fmul fast float %7276, 2.000000e+00
  %7294 = fsub fast float 3.000000e+00, %7293
  %7295 = fadd fast float %7293, 1.000000e+00
  %7296 = fsub fast float 2.000000e+00, %7276
  %7297 = bitcast float %7294 to i32
  %7298 = sub nsw i32 2129859010, %7297
  %7299 = bitcast i32 %7298 to float
  %7300 = fmul fast float %7299, %7296
  %7301 = fadd fast float %7300, -1.000000e+00
  %7302 = bitcast float %7295 to i32
  %7303 = sub nsw i32 2129859010, %7302
  %7304 = bitcast i32 %7303 to float
  %7305 = fmul fast float %7304, %7276
  %7306 = fadd fast float %7305, 1.000000e+00
  %7307 = fadd fast float %7287, %7277
  %7308 = fmul fast float %7307, %7259
  %7309 = fadd fast float %7301, %7278
  %7310 = fmul fast float %7309, %7260
  %7311 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7308, float %7310, float undef, float undef, i32 0, i32 0, i32 undef, float %7264)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7312 = extractvalue %dx.types.ResRet.f32 %7311, 0
  %7313 = fmul fast float %7312, %7280
  %7314 = fadd fast float %7292, %7277
  %7315 = fmul fast float %7314, %7259
  %7316 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7315, float %7310, float undef, float undef, i32 0, i32 0, i32 undef, float %7264)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7317 = extractvalue %dx.types.ResRet.f32 %7316, 0
  %7318 = fmul fast float %7317, %7281
  %7319 = fadd fast float %7306, %7278
  %7320 = fmul fast float %7319, %7260
  %7321 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7308, float %7320, float undef, float undef, i32 0, i32 0, i32 undef, float %7264)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7322 = extractvalue %dx.types.ResRet.f32 %7321, 0
  %7323 = fmul fast float %7322, %7280
  %7324 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7315, float %7320, float undef, float undef, i32 0, i32 0, i32 undef, float %7264)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7325 = extractvalue %dx.types.ResRet.f32 %7324, 0
  %7326 = fmul fast float %7325, %7281
  %7327 = fadd fast float %7326, %7323
  %7328 = fmul fast float %7327, %7295
  %7329 = fadd fast float %7318, %7313
  %7330 = fmul fast float %7329, %7294
  %7331 = fadd fast float %7330, %7328
  %7332 = fmul fast float %7331, 6.250000e-02
  br label %7418

; <label>:7333                                    ; preds = %7254
  %7334 = fmul fast float %289, 0x401921FB60000000
  %7335 = call float @dx.op.unary.f32(i32 13, float %7334)  ; Sin(value)
  %7336 = call float @dx.op.unary.f32(i32 12, float %7334)  ; Cos(value)
  %7337 = fsub fast float -0.000000e+00, %7335
  br label %7338

; <label>:7338                                    ; preds = %7387, %7333
  %7339 = phi float [ 0.000000e+00, %7333 ], [ %7382, %7387 ]
  %7340 = phi float [ 0.000000e+00, %7333 ], [ %7384, %7387 ]
  %7341 = phi i32 [ 0, %7333 ], [ %7388, %7387 ]
  %7342 = mul i32 %7341, 2
  %7343 = add i32 0, %7342
  %7344 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7343
  %7345 = load float, float* %7344, align 4
  %7346 = mul i32 %7341, 2
  %7347 = add i32 1, %7346
  %7348 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7347
  %7349 = load float, float* %7348, align 4
  %7350 = fmul fast float %7345, %7336
  %7351 = call float @dx.op.tertiary.f32(i32 46, float %7349, float %7337, float %7350)  ; FMad(a,b,c)
  %7352 = fmul fast float %7345, %7335
  %7353 = call float @dx.op.tertiary.f32(i32 46, float %7349, float %7336, float %7352)  ; FMad(a,b,c)
  %7354 = fmul fast float %7351, %7262
  %7355 = fmul fast float %7353, %7262
  %7356 = fadd fast float %7354, %6748
  %7357 = fadd fast float %7355, %6749
  %7358 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %7356, float %7357, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.ResRet.f32 %7358, 1
  %7361 = extractvalue %dx.types.ResRet.f32 %7358, 2
  %7362 = extractvalue %dx.types.ResRet.f32 %7358, 3
  %7363 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 0
  store float %7359, float* %7363, align 4
  %7364 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 1
  store float %7360, float* %7364, align 4
  %7365 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 2
  store float %7361, float* %7365, align 4
  %7366 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 3
  store float %7362, float* %7366, align 4
  %7367 = fsub fast float %7359, %7264
  %7368 = fcmp fast olt float %7367, 0.000000e+00
  %7369 = select i1 %7368, float 0.000000e+00, float 1.000000e+00
  %7370 = fadd fast float %7369, %7339
  %7371 = fmul fast float %7369, %7367
  %7372 = fadd fast float %7371, %7340
  br label %7373

; <label>:7373                                    ; preds = %7373, %7338
  %7374 = phi i32 [ 1, %7338 ], [ %7385, %7373 ]
  %7375 = phi float [ %7372, %7338 ], [ %7384, %7373 ]
  %7376 = phi float [ %7370, %7338 ], [ %7382, %7373 ]
  %7377 = getelementptr [4 x float], [4 x float]* %116, i32 0, i32 %7374
  %7378 = load float, float* %7377, align 4, !tbaa !126, !noalias !116
  %7379 = fsub fast float %7378, %7264
  %7380 = fcmp fast olt float %7379, 0.000000e+00
  %7381 = select i1 %7380, float 0.000000e+00, float 1.000000e+00
  %7382 = fadd fast float %7381, %7376
  %7383 = fmul fast float %7381, %7379
  %7384 = fadd fast float %7383, %7375
  %7385 = add nuw nsw i32 %7374, 1
  %7386 = icmp eq i32 %7385, 4
  br i1 %7386, label %7387, label %7373, !llvm.loop !128

; <label>:7387                                    ; preds = %7373
  %7388 = add nuw nsw i32 %7341, 1
  %7389 = icmp eq i32 %7388, 8
  br i1 %7389, label %7390, label %7338, !llvm.loop !129

; <label>:7390                                    ; preds = %7387
  %7391 = fdiv fast float 1.000000e+00, %7382
  %7392 = fmul fast float %7391, %7384
  %7393 = fdiv fast float 1.000000e+00, %7264
  %7394 = fmul fast float %7392, %7393
  %7395 = call float @dx.op.unary.f32(i32 7, float %7394)  ; Saturate(value)
  %7396 = call float @dx.op.binary.f32(i32 35, float %7395, float 0.000000e+00)  ; FMax(a,b)
  %7397 = fmul fast float %7382, 3.125000e-02
  %7398 = call float @dx.op.unary.f32(i32 7, float %7397)  ; Saturate(value)
  %7399 = fmul fast float %7398, 2.000000e+00
  %7400 = fadd fast float %7399, -1.000000e+00
  %7401 = fcmp fast ogt float %7400, 0.000000e+00
  %7402 = fcmp fast olt float %7400, 0.000000e+00
  %7403 = zext i1 %7401 to i32
  %7404 = zext i1 %7402 to i32
  %7405 = sub nsw i32 %7403, %7404
  %7406 = sitofp i32 %7405 to float
  %7407 = fmul fast float %7406, %7400
  %7408 = fsub fast float 1.000000e+00, %7407
  %7409 = fmul fast float %7408, %7408
  %7410 = fmul fast float %7409, %7408
  %7411 = fsub fast float %7408, %7410
  %7412 = fmul fast float %7411, %7396
  %7413 = fsub fast float 1.000000e+00, %7410
  %7414 = fsub fast float %7413, %7412
  %7415 = fmul fast float %7406, 5.000000e-01
  %7416 = fmul fast float %7415, %7414
  %7417 = fsub fast float 5.000000e-01, %7416
  br label %7418

; <label>:7418                                    ; preds = %7390, %7266, %7251
  %7419 = phi float [ 1.000000e+00, %7251 ], [ %7332, %7266 ], [ %7417, %7390 ]
  %7420 = fcmp fast ogt float %6847, 0.000000e+00
  br i1 %7420, label %7421, label %7585, !dx.controlflow.hints !130

; <label>:7421                                    ; preds = %7418
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 1
  %7424 = fadd fast float %7423, %6730
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 2
  %7427 = extractvalue %dx.types.CBufRet.f32 %7425, 3
  %7428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7429 = extractvalue %dx.types.CBufRet.f32 %7428, 1
  %7430 = call float @dx.op.binary.f32(i32 35, float %7424, float 0.000000e+00)  ; FMax(a,b)
  %7431 = fadd fast float %7430, 0x3F10000000000000
  %7432 = fcmp fast oeq float %7429, 0.000000e+00
  br i1 %7432, label %7433, label %7500

; <label>:7433                                    ; preds = %7421
  %7434 = extractvalue %dx.types.CBufRet.f32 %7425, 1
  %7435 = extractvalue %dx.types.CBufRet.f32 %7425, 0
  %7436 = fmul fast float %7435, %6740
  %7437 = fmul fast float %7434, %6741
  %7438 = fadd fast float %7436, 5.000000e-01
  %7439 = call float @dx.op.unary.f32(i32 27, float %7438)  ; Round_ni(value)
  %7440 = fadd fast float %7437, 5.000000e-01
  %7441 = call float @dx.op.unary.f32(i32 27, float %7440)  ; Round_ni(value)
  %7442 = fsub fast float %7438, %7439
  %7443 = fsub fast float %7440, %7441
  %7444 = fadd fast float %7439, -5.000000e-01
  %7445 = fadd fast float %7441, -5.000000e-01
  %7446 = fmul fast float %7442, 2.000000e+00
  %7447 = fsub fast float 3.000000e+00, %7446
  %7448 = fadd fast float %7446, 1.000000e+00
  %7449 = fsub fast float 2.000000e+00, %7442
  %7450 = bitcast float %7447 to i32
  %7451 = sub nsw i32 2129859010, %7450
  %7452 = bitcast i32 %7451 to float
  %7453 = fmul fast float %7452, %7449
  %7454 = fadd fast float %7453, -1.000000e+00
  %7455 = bitcast float %7448 to i32
  %7456 = sub nsw i32 2129859010, %7455
  %7457 = bitcast i32 %7456 to float
  %7458 = fmul fast float %7457, %7442
  %7459 = fadd fast float %7458, 1.000000e+00
  %7460 = fmul fast float %7443, 2.000000e+00
  %7461 = fsub fast float 3.000000e+00, %7460
  %7462 = fadd fast float %7460, 1.000000e+00
  %7463 = fsub fast float 2.000000e+00, %7443
  %7464 = bitcast float %7461 to i32
  %7465 = sub nsw i32 2129859010, %7464
  %7466 = bitcast i32 %7465 to float
  %7467 = fmul fast float %7466, %7463
  %7468 = fadd fast float %7467, -1.000000e+00
  %7469 = bitcast float %7462 to i32
  %7470 = sub nsw i32 2129859010, %7469
  %7471 = bitcast i32 %7470 to float
  %7472 = fmul fast float %7471, %7443
  %7473 = fadd fast float %7472, 1.000000e+00
  %7474 = fadd fast float %7454, %7444
  %7475 = fmul fast float %7474, %7426
  %7476 = fadd fast float %7468, %7445
  %7477 = fmul fast float %7476, %7427
  %7478 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7475, float %7477, float undef, float undef, i32 0, i32 0, i32 undef, float %7431)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7479 = extractvalue %dx.types.ResRet.f32 %7478, 0
  %7480 = fmul fast float %7479, %7447
  %7481 = fadd fast float %7459, %7444
  %7482 = fmul fast float %7481, %7426
  %7483 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7482, float %7477, float undef, float undef, i32 0, i32 0, i32 undef, float %7431)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7484 = extractvalue %dx.types.ResRet.f32 %7483, 0
  %7485 = fmul fast float %7484, %7448
  %7486 = fadd fast float %7473, %7445
  %7487 = fmul fast float %7486, %7427
  %7488 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7475, float %7487, float undef, float undef, i32 0, i32 0, i32 undef, float %7431)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = fmul fast float %7489, %7447
  %7491 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7482, float %7487, float undef, float undef, i32 0, i32 0, i32 undef, float %7431)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7492 = extractvalue %dx.types.ResRet.f32 %7491, 0
  %7493 = fmul fast float %7492, %7448
  %7494 = fadd fast float %7493, %7490
  %7495 = fmul fast float %7494, %7462
  %7496 = fadd fast float %7485, %7480
  %7497 = fmul fast float %7496, %7461
  %7498 = fadd fast float %7497, %7495
  %7499 = fmul fast float %7498, 6.250000e-02
  br label %7585

; <label>:7500                                    ; preds = %7421
  %7501 = fmul fast float %289, 0x401921FB60000000
  %7502 = call float @dx.op.unary.f32(i32 13, float %7501)  ; Sin(value)
  %7503 = call float @dx.op.unary.f32(i32 12, float %7501)  ; Cos(value)
  %7504 = fsub fast float -0.000000e+00, %7502
  br label %7505

; <label>:7505                                    ; preds = %7554, %7500
  %7506 = phi float [ 0.000000e+00, %7500 ], [ %7549, %7554 ]
  %7507 = phi float [ 0.000000e+00, %7500 ], [ %7551, %7554 ]
  %7508 = phi i32 [ 0, %7500 ], [ %7555, %7554 ]
  %7509 = mul i32 %7508, 2
  %7510 = add i32 0, %7509
  %7511 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7510
  %7512 = load float, float* %7511, align 4
  %7513 = mul i32 %7508, 2
  %7514 = add i32 1, %7513
  %7515 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7514
  %7516 = load float, float* %7515, align 4
  %7517 = fmul fast float %7512, %7503
  %7518 = call float @dx.op.tertiary.f32(i32 46, float %7516, float %7504, float %7517)  ; FMad(a,b,c)
  %7519 = fmul fast float %7512, %7502
  %7520 = call float @dx.op.tertiary.f32(i32 46, float %7516, float %7503, float %7519)  ; FMad(a,b,c)
  %7521 = fmul fast float %7518, %7429
  %7522 = fmul fast float %7520, %7429
  %7523 = fadd fast float %7521, %6740
  %7524 = fadd fast float %7522, %6741
  %7525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %7523, float %7524, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7526 = extractvalue %dx.types.ResRet.f32 %7525, 0
  %7527 = extractvalue %dx.types.ResRet.f32 %7525, 1
  %7528 = extractvalue %dx.types.ResRet.f32 %7525, 2
  %7529 = extractvalue %dx.types.ResRet.f32 %7525, 3
  %7530 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 0
  store float %7526, float* %7530, align 4
  %7531 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 1
  store float %7527, float* %7531, align 4
  %7532 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 2
  store float %7528, float* %7532, align 4
  %7533 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 3
  store float %7529, float* %7533, align 4
  %7534 = fsub fast float %7526, %7431
  %7535 = fcmp fast olt float %7534, 0.000000e+00
  %7536 = select i1 %7535, float 0.000000e+00, float 1.000000e+00
  %7537 = fadd fast float %7536, %7506
  %7538 = fmul fast float %7536, %7534
  %7539 = fadd fast float %7538, %7507
  br label %7540

; <label>:7540                                    ; preds = %7540, %7505
  %7541 = phi i32 [ 1, %7505 ], [ %7552, %7540 ]
  %7542 = phi float [ %7539, %7505 ], [ %7551, %7540 ]
  %7543 = phi float [ %7537, %7505 ], [ %7549, %7540 ]
  %7544 = getelementptr [4 x float], [4 x float]* %115, i32 0, i32 %7541
  %7545 = load float, float* %7544, align 4, !tbaa !126, !noalias !116
  %7546 = fsub fast float %7545, %7431
  %7547 = fcmp fast olt float %7546, 0.000000e+00
  %7548 = select i1 %7547, float 0.000000e+00, float 1.000000e+00
  %7549 = fadd fast float %7548, %7543
  %7550 = fmul fast float %7548, %7546
  %7551 = fadd fast float %7550, %7542
  %7552 = add nuw nsw i32 %7541, 1
  %7553 = icmp eq i32 %7552, 4
  br i1 %7553, label %7554, label %7540, !llvm.loop !128

; <label>:7554                                    ; preds = %7540
  %7555 = add nuw nsw i32 %7508, 1
  %7556 = icmp eq i32 %7555, 8
  br i1 %7556, label %7557, label %7505, !llvm.loop !129

; <label>:7557                                    ; preds = %7554
  %7558 = fdiv fast float 1.000000e+00, %7549
  %7559 = fmul fast float %7558, %7551
  %7560 = fdiv fast float 1.000000e+00, %7431
  %7561 = fmul fast float %7559, %7560
  %7562 = call float @dx.op.unary.f32(i32 7, float %7561)  ; Saturate(value)
  %7563 = call float @dx.op.binary.f32(i32 35, float %7562, float 0.000000e+00)  ; FMax(a,b)
  %7564 = fmul fast float %7549, 3.125000e-02
  %7565 = call float @dx.op.unary.f32(i32 7, float %7564)  ; Saturate(value)
  %7566 = fmul fast float %7565, 2.000000e+00
  %7567 = fadd fast float %7566, -1.000000e+00
  %7568 = fcmp fast ogt float %7567, 0.000000e+00
  %7569 = fcmp fast olt float %7567, 0.000000e+00
  %7570 = zext i1 %7568 to i32
  %7571 = zext i1 %7569 to i32
  %7572 = sub nsw i32 %7570, %7571
  %7573 = sitofp i32 %7572 to float
  %7574 = fmul fast float %7573, %7567
  %7575 = fsub fast float 1.000000e+00, %7574
  %7576 = fmul fast float %7575, %7575
  %7577 = fmul fast float %7576, %7575
  %7578 = fsub fast float %7575, %7577
  %7579 = fmul fast float %7578, %7563
  %7580 = fsub fast float 1.000000e+00, %7577
  %7581 = fsub fast float %7580, %7579
  %7582 = fmul fast float %7573, 5.000000e-01
  %7583 = fmul fast float %7582, %7581
  %7584 = fsub fast float 5.000000e-01, %7583
  br label %7585

; <label>:7585                                    ; preds = %7557, %7433, %7418
  %7586 = phi float [ 1.000000e+00, %7418 ], [ %7499, %7433 ], [ %7584, %7557 ]
  %7587 = fcmp fast ogt float %6846, 0.000000e+00
  br i1 %7587, label %7588, label %7906, !dx.controlflow.hints !131

; <label>:7588                                    ; preds = %7585
  %7589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.f32 %7589, 0
  %7591 = fadd fast float %7590, %6730
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 3
  %7595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.f32 %7595, 0
  %7597 = call float @dx.op.binary.f32(i32 35, float %7591, float 0.000000e+00)  ; FMax(a,b)
  %7598 = fadd fast float %7597, 0x3F10000000000000
  %7599 = fcmp fast oeq float %7596, 0.000000e+00
  br i1 %6733, label %7600, label %7753, !dx.controlflow.hints !132

; <label>:7600                                    ; preds = %7588
  br i1 %7599, label %7601, label %7668

; <label>:7601                                    ; preds = %7600
  %7602 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7603 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7604 = fmul fast float %7603, %6722
  %7605 = fmul fast float %7602, %6726
  %7606 = fadd fast float %7604, 5.000000e-01
  %7607 = call float @dx.op.unary.f32(i32 27, float %7606)  ; Round_ni(value)
  %7608 = fadd fast float %7605, 5.000000e-01
  %7609 = call float @dx.op.unary.f32(i32 27, float %7608)  ; Round_ni(value)
  %7610 = fsub fast float %7606, %7607
  %7611 = fsub fast float %7608, %7609
  %7612 = fadd fast float %7607, -5.000000e-01
  %7613 = fadd fast float %7609, -5.000000e-01
  %7614 = fmul fast float %7610, 2.000000e+00
  %7615 = fsub fast float 3.000000e+00, %7614
  %7616 = fadd fast float %7614, 1.000000e+00
  %7617 = fsub fast float 2.000000e+00, %7610
  %7618 = bitcast float %7615 to i32
  %7619 = sub nsw i32 2129859010, %7618
  %7620 = bitcast i32 %7619 to float
  %7621 = fmul fast float %7620, %7617
  %7622 = fadd fast float %7621, -1.000000e+00
  %7623 = bitcast float %7616 to i32
  %7624 = sub nsw i32 2129859010, %7623
  %7625 = bitcast i32 %7624 to float
  %7626 = fmul fast float %7625, %7610
  %7627 = fadd fast float %7626, 1.000000e+00
  %7628 = fmul fast float %7611, 2.000000e+00
  %7629 = fsub fast float 3.000000e+00, %7628
  %7630 = fadd fast float %7628, 1.000000e+00
  %7631 = fsub fast float 2.000000e+00, %7611
  %7632 = bitcast float %7629 to i32
  %7633 = sub nsw i32 2129859010, %7632
  %7634 = bitcast i32 %7633 to float
  %7635 = fmul fast float %7634, %7631
  %7636 = fadd fast float %7635, -1.000000e+00
  %7637 = bitcast float %7630 to i32
  %7638 = sub nsw i32 2129859010, %7637
  %7639 = bitcast i32 %7638 to float
  %7640 = fmul fast float %7639, %7611
  %7641 = fadd fast float %7640, 1.000000e+00
  %7642 = fadd fast float %7622, %7612
  %7643 = fmul fast float %7642, %7593
  %7644 = fadd fast float %7636, %7613
  %7645 = fmul fast float %7644, %7594
  %7646 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7643, float %7645, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = fmul fast float %7647, %7615
  %7649 = fadd fast float %7627, %7612
  %7650 = fmul fast float %7649, %7593
  %7651 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7650, float %7645, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 0
  %7653 = fmul fast float %7652, %7616
  %7654 = fadd fast float %7641, %7613
  %7655 = fmul fast float %7654, %7594
  %7656 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7643, float %7655, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7657 = extractvalue %dx.types.ResRet.f32 %7656, 0
  %7658 = fmul fast float %7657, %7615
  %7659 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7650, float %7655, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = fmul fast float %7660, %7616
  %7662 = fadd fast float %7661, %7658
  %7663 = fmul fast float %7662, %7630
  %7664 = fadd fast float %7653, %7648
  %7665 = fmul fast float %7664, %7629
  %7666 = fadd fast float %7665, %7663
  %7667 = fmul fast float %7666, 6.250000e-02
  br label %7906

; <label>:7668                                    ; preds = %7600
  %7669 = fmul fast float %289, 0x401921FB60000000
  %7670 = call float @dx.op.unary.f32(i32 13, float %7669)  ; Sin(value)
  %7671 = call float @dx.op.unary.f32(i32 12, float %7669)  ; Cos(value)
  %7672 = fsub fast float -0.000000e+00, %7670
  br label %7673

; <label>:7673                                    ; preds = %7722, %7668
  %7674 = phi float [ 0.000000e+00, %7668 ], [ %7717, %7722 ]
  %7675 = phi float [ 0.000000e+00, %7668 ], [ %7719, %7722 ]
  %7676 = phi i32 [ 0, %7668 ], [ %7723, %7722 ]
  %7677 = mul i32 %7676, 2
  %7678 = add i32 0, %7677
  %7679 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7678
  %7680 = load float, float* %7679, align 4
  %7681 = mul i32 %7676, 2
  %7682 = add i32 1, %7681
  %7683 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7682
  %7684 = load float, float* %7683, align 4
  %7685 = fmul fast float %7680, %7671
  %7686 = call float @dx.op.tertiary.f32(i32 46, float %7684, float %7672, float %7685)  ; FMad(a,b,c)
  %7687 = fmul fast float %7680, %7670
  %7688 = call float @dx.op.tertiary.f32(i32 46, float %7684, float %7671, float %7687)  ; FMad(a,b,c)
  %7689 = fmul fast float %7686, %7596
  %7690 = fmul fast float %7688, %7596
  %7691 = fadd fast float %7689, %6722
  %7692 = fadd fast float %7690, %6726
  %7693 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %7691, float %7692, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7694 = extractvalue %dx.types.ResRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.ResRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.ResRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.ResRet.f32 %7693, 3
  %7698 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %7694, float* %7698, align 4
  %7699 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %7695, float* %7699, align 4
  %7700 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %7696, float* %7700, align 4
  %7701 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %7697, float* %7701, align 4
  %7702 = fsub fast float %7694, %7598
  %7703 = fcmp fast olt float %7702, 0.000000e+00
  %7704 = select i1 %7703, float 0.000000e+00, float 1.000000e+00
  %7705 = fadd fast float %7704, %7674
  %7706 = fmul fast float %7704, %7702
  %7707 = fadd fast float %7706, %7675
  br label %7708

; <label>:7708                                    ; preds = %7708, %7673
  %7709 = phi i32 [ 1, %7673 ], [ %7720, %7708 ]
  %7710 = phi float [ %7707, %7673 ], [ %7719, %7708 ]
  %7711 = phi float [ %7705, %7673 ], [ %7717, %7708 ]
  %7712 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %7709
  %7713 = load float, float* %7712, align 4, !tbaa !126, !noalias !116
  %7714 = fsub fast float %7713, %7598
  %7715 = fcmp fast olt float %7714, 0.000000e+00
  %7716 = select i1 %7715, float 0.000000e+00, float 1.000000e+00
  %7717 = fadd fast float %7716, %7711
  %7718 = fmul fast float %7716, %7714
  %7719 = fadd fast float %7718, %7710
  %7720 = add nuw nsw i32 %7709, 1
  %7721 = icmp eq i32 %7720, 4
  br i1 %7721, label %7722, label %7708, !llvm.loop !128

; <label>:7722                                    ; preds = %7708
  %7723 = add nuw nsw i32 %7676, 1
  %7724 = icmp eq i32 %7723, 8
  br i1 %7724, label %7725, label %7673, !llvm.loop !129

; <label>:7725                                    ; preds = %7722
  %7726 = fdiv fast float 1.000000e+00, %7717
  %7727 = fmul fast float %7726, %7719
  %7728 = fdiv fast float 1.000000e+00, %7598
  %7729 = fmul fast float %7727, %7728
  %7730 = call float @dx.op.unary.f32(i32 7, float %7729)  ; Saturate(value)
  %7731 = call float @dx.op.binary.f32(i32 35, float %7730, float 0.000000e+00)  ; FMax(a,b)
  %7732 = fmul fast float %7717, 3.125000e-02
  %7733 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7734 = fmul fast float %7733, 2.000000e+00
  %7735 = fadd fast float %7734, -1.000000e+00
  %7736 = fcmp fast ogt float %7735, 0.000000e+00
  %7737 = fcmp fast olt float %7735, 0.000000e+00
  %7738 = zext i1 %7736 to i32
  %7739 = zext i1 %7737 to i32
  %7740 = sub nsw i32 %7738, %7739
  %7741 = sitofp i32 %7740 to float
  %7742 = fmul fast float %7741, %7735
  %7743 = fsub fast float 1.000000e+00, %7742
  %7744 = fmul fast float %7743, %7743
  %7745 = fmul fast float %7744, %7743
  %7746 = fsub fast float %7743, %7745
  %7747 = fmul fast float %7746, %7731
  %7748 = fsub fast float 1.000000e+00, %7745
  %7749 = fsub fast float %7748, %7747
  %7750 = fmul fast float %7741, 5.000000e-01
  %7751 = fmul fast float %7750, %7749
  %7752 = fsub fast float 5.000000e-01, %7751
  br label %7906

; <label>:7753                                    ; preds = %7588
  br i1 %7599, label %7754, label %7821

; <label>:7754                                    ; preds = %7753
  %7755 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7756 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7757 = fmul fast float %7756, %6722
  %7758 = fmul fast float %7755, %6726
  %7759 = fadd fast float %7757, 5.000000e-01
  %7760 = call float @dx.op.unary.f32(i32 27, float %7759)  ; Round_ni(value)
  %7761 = fadd fast float %7758, 5.000000e-01
  %7762 = call float @dx.op.unary.f32(i32 27, float %7761)  ; Round_ni(value)
  %7763 = fsub fast float %7759, %7760
  %7764 = fsub fast float %7761, %7762
  %7765 = fadd fast float %7760, -5.000000e-01
  %7766 = fadd fast float %7762, -5.000000e-01
  %7767 = fmul fast float %7763, 2.000000e+00
  %7768 = fsub fast float 3.000000e+00, %7767
  %7769 = fadd fast float %7767, 1.000000e+00
  %7770 = fsub fast float 2.000000e+00, %7763
  %7771 = bitcast float %7768 to i32
  %7772 = sub nsw i32 2129859010, %7771
  %7773 = bitcast i32 %7772 to float
  %7774 = fmul fast float %7773, %7770
  %7775 = fadd fast float %7774, -1.000000e+00
  %7776 = bitcast float %7769 to i32
  %7777 = sub nsw i32 2129859010, %7776
  %7778 = bitcast i32 %7777 to float
  %7779 = fmul fast float %7778, %7763
  %7780 = fadd fast float %7779, 1.000000e+00
  %7781 = fmul fast float %7764, 2.000000e+00
  %7782 = fsub fast float 3.000000e+00, %7781
  %7783 = fadd fast float %7781, 1.000000e+00
  %7784 = fsub fast float 2.000000e+00, %7764
  %7785 = bitcast float %7782 to i32
  %7786 = sub nsw i32 2129859010, %7785
  %7787 = bitcast i32 %7786 to float
  %7788 = fmul fast float %7787, %7784
  %7789 = fadd fast float %7788, -1.000000e+00
  %7790 = bitcast float %7783 to i32
  %7791 = sub nsw i32 2129859010, %7790
  %7792 = bitcast i32 %7791 to float
  %7793 = fmul fast float %7792, %7764
  %7794 = fadd fast float %7793, 1.000000e+00
  %7795 = fadd fast float %7775, %7765
  %7796 = fmul fast float %7795, %7593
  %7797 = fadd fast float %7789, %7766
  %7798 = fmul fast float %7797, %7594
  %7799 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7796, float %7798, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = fmul fast float %7800, %7768
  %7802 = fadd fast float %7780, %7765
  %7803 = fmul fast float %7802, %7593
  %7804 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7803, float %7798, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7805 = extractvalue %dx.types.ResRet.f32 %7804, 0
  %7806 = fmul fast float %7805, %7769
  %7807 = fadd fast float %7794, %7766
  %7808 = fmul fast float %7807, %7594
  %7809 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7796, float %7808, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7810 = extractvalue %dx.types.ResRet.f32 %7809, 0
  %7811 = fmul fast float %7810, %7768
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7803, float %7808, float undef, float undef, i32 0, i32 0, i32 undef, float %7598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = fmul fast float %7813, %7769
  %7815 = fadd fast float %7814, %7811
  %7816 = fmul fast float %7815, %7783
  %7817 = fadd fast float %7806, %7801
  %7818 = fmul fast float %7817, %7782
  %7819 = fadd fast float %7818, %7816
  %7820 = fmul fast float %7819, 6.250000e-02
  br label %7906

; <label>:7821                                    ; preds = %7753
  %7822 = fmul fast float %289, 0x401921FB60000000
  %7823 = call float @dx.op.unary.f32(i32 13, float %7822)  ; Sin(value)
  %7824 = call float @dx.op.unary.f32(i32 12, float %7822)  ; Cos(value)
  %7825 = fsub fast float -0.000000e+00, %7823
  br label %7826

; <label>:7826                                    ; preds = %7875, %7821
  %7827 = phi float [ 0.000000e+00, %7821 ], [ %7870, %7875 ]
  %7828 = phi float [ 0.000000e+00, %7821 ], [ %7872, %7875 ]
  %7829 = phi i32 [ 0, %7821 ], [ %7876, %7875 ]
  %7830 = mul i32 %7829, 2
  %7831 = add i32 0, %7830
  %7832 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7831
  %7833 = load float, float* %7832, align 4
  %7834 = mul i32 %7829, 2
  %7835 = add i32 1, %7834
  %7836 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7835
  %7837 = load float, float* %7836, align 4
  %7838 = fmul fast float %7833, %7824
  %7839 = call float @dx.op.tertiary.f32(i32 46, float %7837, float %7825, float %7838)  ; FMad(a,b,c)
  %7840 = fmul fast float %7833, %7823
  %7841 = call float @dx.op.tertiary.f32(i32 46, float %7837, float %7824, float %7840)  ; FMad(a,b,c)
  %7842 = fmul fast float %7839, %7596
  %7843 = fmul fast float %7841, %7596
  %7844 = fadd fast float %7842, %6722
  %7845 = fadd fast float %7843, %6726
  %7846 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7844, float %7845, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7847 = extractvalue %dx.types.ResRet.f32 %7846, 0
  %7848 = extractvalue %dx.types.ResRet.f32 %7846, 1
  %7849 = extractvalue %dx.types.ResRet.f32 %7846, 2
  %7850 = extractvalue %dx.types.ResRet.f32 %7846, 3
  %7851 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %7847, float* %7851, align 4
  %7852 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %7848, float* %7852, align 4
  %7853 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %7849, float* %7853, align 4
  %7854 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %7850, float* %7854, align 4
  %7855 = fsub fast float %7847, %7598
  %7856 = fcmp fast olt float %7855, 0.000000e+00
  %7857 = select i1 %7856, float 0.000000e+00, float 1.000000e+00
  %7858 = fadd fast float %7857, %7827
  %7859 = fmul fast float %7857, %7855
  %7860 = fadd fast float %7859, %7828
  br label %7861

; <label>:7861                                    ; preds = %7861, %7826
  %7862 = phi i32 [ 1, %7826 ], [ %7873, %7861 ]
  %7863 = phi float [ %7860, %7826 ], [ %7872, %7861 ]
  %7864 = phi float [ %7858, %7826 ], [ %7870, %7861 ]
  %7865 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %7862
  %7866 = load float, float* %7865, align 4, !tbaa !126, !noalias !116
  %7867 = fsub fast float %7866, %7598
  %7868 = fcmp fast olt float %7867, 0.000000e+00
  %7869 = select i1 %7868, float 0.000000e+00, float 1.000000e+00
  %7870 = fadd fast float %7869, %7864
  %7871 = fmul fast float %7869, %7867
  %7872 = fadd fast float %7871, %7863
  %7873 = add nuw nsw i32 %7862, 1
  %7874 = icmp eq i32 %7873, 4
  br i1 %7874, label %7875, label %7861, !llvm.loop !128

; <label>:7875                                    ; preds = %7861
  %7876 = add nuw nsw i32 %7829, 1
  %7877 = icmp eq i32 %7876, 8
  br i1 %7877, label %7878, label %7826, !llvm.loop !129

; <label>:7878                                    ; preds = %7875
  %7879 = fdiv fast float 1.000000e+00, %7870
  %7880 = fmul fast float %7879, %7872
  %7881 = fdiv fast float 1.000000e+00, %7598
  %7882 = fmul fast float %7880, %7881
  %7883 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7884 = call float @dx.op.binary.f32(i32 35, float %7883, float 0.000000e+00)  ; FMax(a,b)
  %7885 = fmul fast float %7870, 3.125000e-02
  %7886 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7887 = fmul fast float %7886, 2.000000e+00
  %7888 = fadd fast float %7887, -1.000000e+00
  %7889 = fcmp fast ogt float %7888, 0.000000e+00
  %7890 = fcmp fast olt float %7888, 0.000000e+00
  %7891 = zext i1 %7889 to i32
  %7892 = zext i1 %7890 to i32
  %7893 = sub nsw i32 %7891, %7892
  %7894 = sitofp i32 %7893 to float
  %7895 = fmul fast float %7894, %7888
  %7896 = fsub fast float 1.000000e+00, %7895
  %7897 = fmul fast float %7896, %7896
  %7898 = fmul fast float %7897, %7896
  %7899 = fsub fast float %7896, %7898
  %7900 = fmul fast float %7899, %7884
  %7901 = fsub fast float 1.000000e+00, %7898
  %7902 = fsub fast float %7901, %7900
  %7903 = fmul fast float %7894, 5.000000e-01
  %7904 = fmul fast float %7903, %7902
  %7905 = fsub fast float 5.000000e-01, %7904
  br label %7906

; <label>:7906                                    ; preds = %7878, %7754, %7725, %7601, %7585
  %7907 = phi float [ 1.000000e+00, %7585 ], [ %7667, %7601 ], [ %7752, %7725 ], [ %7820, %7754 ], [ %7905, %7878 ]
  %7908 = fsub fast float %7419, %7252
  %7909 = fmul fast float %7908, %6819
  %7910 = fadd fast float %7909, %7252
  %7911 = fsub fast float %7586, %7910
  %7912 = fmul fast float %7911, %6818
  %7913 = fadd fast float %7912, %7910
  %7914 = fsub fast float %7907, %7913
  %7915 = fmul fast float %7914, %6846
  %7916 = fadd fast float %7915, %7913
  %7917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7918 = extractvalue %dx.types.CBufRet.f32 %7917, 2
  %7919 = fcmp fast ogt float %7918, 0.000000e+00
  br i1 %7919, label %7920, label %7960, !dx.controlflow.hints !133

; <label>:7920                                    ; preds = %7906
  %7921 = fcmp fast ugt float %7918, 0.000000e+00
  br i1 %7921, label %7922, label %7957

; <label>:7922                                    ; preds = %7920
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.CBufRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.CBufRet.f32 %7923, 2
  %7927 = extractvalue %dx.types.CBufRet.f32 %7923, 3
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7931 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7932 = extractvalue %dx.types.CBufRet.f32 %7928, 3
  %7933 = extractvalue %dx.types.CBufRet.f32 %7917, 0
  %7934 = extractvalue %dx.types.CBufRet.f32 %7917, 1
  %7935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7935, 0
  %7937 = extractvalue %dx.types.CBufRet.f32 %7935, 1
  %7938 = extractvalue %dx.types.CBufRet.f32 %7935, 2
  %7939 = fadd fast float %7936, %6699
  %7940 = fadd fast float %7937, %6700
  %7941 = fadd fast float %7938, %6701
  %7942 = fmul fast float %7939, %7924
  %7943 = call float @dx.op.tertiary.f32(i32 46, float %7925, float %7940, float %7942)  ; FMad(a,b,c)
  %7944 = call float @dx.op.tertiary.f32(i32 46, float %7926, float %7941, float %7943)  ; FMad(a,b,c)
  %7945 = fadd fast float %7944, %7927
  %7946 = fmul fast float %7939, %7929
  %7947 = call float @dx.op.tertiary.f32(i32 46, float %7930, float %7940, float %7946)  ; FMad(a,b,c)
  %7948 = call float @dx.op.tertiary.f32(i32 46, float %7931, float %7941, float %7947)  ; FMad(a,b,c)
  %7949 = fadd fast float %7948, %7932
  %7950 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7945, float %7949, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7951 = extractvalue %dx.types.ResRet.f32 %7950, 0
  %7952 = fmul fast float %7951, %7934
  %7953 = fadd fast float %7952, %7933
  %7954 = call float @dx.op.unary.f32(i32 7, float %7953)  ; Saturate(value)
  %7955 = fmul fast float %7954, %7918
  %7956 = fsub fast float 1.000000e+00, %7955
  br label %7957

; <label>:7957                                    ; preds = %7922, %7920
  %7958 = phi float [ %7956, %7922 ], [ 1.000000e+00, %7920 ]
  %7959 = fmul fast float %7958, %7916
  br label %7960

; <label>:7960                                    ; preds = %7957, %7906, %6679
  %7961 = phi float [ 1.000000e+00, %6679 ], [ %7959, %7957 ], [ %7916, %7906 ]
  %7962 = call float @dx.op.binary.f32(i32 36, float %7961, float %7961)  ; FMin(a,b)
  %7963 = call float @dx.op.binary.f32(i32 36, float %7961, float %7962)  ; FMin(a,b)
  %7964 = fcmp fast ogt float %7963, 0.000000e+00
  br i1 %7964, label %7965, label %8130, !dx.controlflow.hints !134

; <label>:7965                                    ; preds = %7960
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 0
  %7968 = extractvalue %dx.types.CBufRet.f32 %7966, 1
  %7969 = extractvalue %dx.types.CBufRet.f32 %7966, 2
  %7970 = extractvalue %dx.types.CBufRet.f32 %7966, 3
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.CBufRet.f32 %7971, 1
  %7974 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7975 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %7980 = extractvalue %dx.types.CBufRet.f32 %7976, 3
  %7981 = fmul fast float %7967, %6699
  %7982 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %7968, float %7981)  ; FMad(a,b,c)
  %7983 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %7969, float %7982)  ; FMad(a,b,c)
  %7984 = fadd fast float %7983, %7970
  %7985 = fmul fast float %7972, %6699
  %7986 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %7973, float %7985)  ; FMad(a,b,c)
  %7987 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %7974, float %7986)  ; FMad(a,b,c)
  %7988 = fadd fast float %7987, %7975
  %7989 = fmul fast float %7977, %6699
  %7990 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %7978, float %7989)  ; FMad(a,b,c)
  %7991 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %7979, float %7990)  ; FMad(a,b,c)
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %7995 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7996 = fmul fast float %7995, %7984
  %7997 = fmul fast float %7995, %7988
  %7998 = fadd fast float %7996, %7993
  %7999 = fadd fast float %7997, %7994
  %8000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8001 = extractvalue %dx.types.CBufRet.f32 %8000, 0
  %8002 = extractvalue %dx.types.CBufRet.f32 %8000, 1
  %8003 = fsub fast float %7998, %8001
  %8004 = fsub fast float %7999, %8002
  %8005 = fcmp fast olt float %8003, 0.000000e+00
  %8006 = fcmp fast olt float %8004, 0.000000e+00
  %8007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.CBufRet.f32 %8007, 1
  %8010 = extractvalue %dx.types.CBufRet.f32 %8007, 2
  %8011 = extractvalue %dx.types.CBufRet.f32 %8007, 3
  %8012 = select i1 %8005, float %8008, float %8010
  %8013 = select i1 %8006, float %8009, float %8011
  %8014 = fmul fast float %8012, %8003
  %8015 = fmul fast float %8013, %8004
  %8016 = call float @dx.op.unary.f32(i32 6, float %8014)  ; FAbs(value)
  %8017 = call float @dx.op.unary.f32(i32 6, float %8015)  ; FAbs(value)
  %8018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8019 = extractvalue %dx.types.CBufRet.f32 %8018, 0
  %8020 = call float @dx.op.binary.f32(i32 35, float %8016, float %8017)  ; FMax(a,b)
  %8021 = fsub fast float %8019, %8020
  %8022 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8023 = fcmp fast ogt float %8022, 0.000000e+00
  br i1 %8023, label %8024, label %8065, !dx.controlflow.hints !135

; <label>:8024                                    ; preds = %7965
  %8025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7998, float %7999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8026 = extractvalue %dx.types.ResRet.f32 %8025, 1
  %8027 = fcmp fast ogt float %8026, 0.000000e+00
  br i1 %8027, label %8028, label %8060

; <label>:8028                                    ; preds = %8024
  %8029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7998, float %7999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.ResRet.f32 %8029, 2
  %8033 = extractvalue %dx.types.ResRet.f32 %8029, 3
  %8034 = fsub fast float 1.000000e+00, %7980
  %8035 = fsub fast float %8034, %7991
  %8036 = fmul fast float %8035, 0x400921FB60000000
  %8037 = fadd fast float %8036, 0x3FF921FB60000000
  %8038 = call float @dx.op.unary.f32(i32 13, float %8037)  ; Sin(value)
  %8039 = fadd fast float %8038, -1.000000e+00
  %8040 = fmul fast float %8039, 0x3FD45F3060000000
  %8041 = fmul fast float %8035, 0x401921FB60000000
  %8042 = fadd fast float %8041, 0x400921FB60000000
  %8043 = call float @dx.op.unary.f32(i32 13, float %8042)  ; Sin(value)
  %8044 = fadd fast float %8043, 0x3E7777A5C0000000
  %8045 = fmul fast float %8044, 0x3FC45F3060000000
  %8046 = fmul fast float %8035, 0x4022D97C80000000
  %8047 = fadd fast float %8046, 0x4012D97C80000000
  %8048 = call float @dx.op.unary.f32(i32 13, float %8047)  ; Sin(value)
  %8049 = fadd fast float %8048, 1.000000e+00
  %8050 = fmul fast float %8049, 0x3FBB2995E0000000
  %8051 = fmul fast float %8035, 0x402921FB60000000
  %8052 = fadd fast float %8051, 0x401921FB60000000
  %8053 = call float @dx.op.unary.f32(i32 13, float %8052)  ; Sin(value)
  %8054 = fadd fast float %8053, 0xBE8777A5C0000000
  %8055 = fmul fast float %8054, 0x3FB45F3060000000
  %8056 = call float @dx.op.dot4.f32(i32 56, float %8030, float %8031, float %8032, float %8033, float %8040, float %8045, float %8050, float %8055)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8057 = fmul fast float %8056, 0xBFF7154760000000
  %8058 = call float @dx.op.unary.f32(i32 21, float %8057)  ; Exp(value)
  %8059 = call float @dx.op.unary.f32(i32 7, float %8058)  ; Saturate(value)
  br label %8060

; <label>:8060                                    ; preds = %8028, %8024
  %8061 = phi float [ %8059, %8028 ], [ 1.000000e+00, %8024 ]
  %8062 = fadd fast float %8061, -1.000000e+00
  %8063 = fmul fast float %8062, %8022
  %8064 = fadd fast float %8063, 1.000000e+00
  br label %8065

; <label>:8065                                    ; preds = %8060, %7965
  %8066 = phi float [ %8064, %8060 ], [ 1.000000e+00, %7965 ]
  %8067 = fmul fast float %8066, %7961
  %8068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8069 = extractvalue %dx.types.CBufRet.f32 %8068, 0
  %8070 = extractvalue %dx.types.CBufRet.f32 %8068, 1
  %8071 = extractvalue %dx.types.CBufRet.f32 %8068, 2
  %8072 = fadd fast float %8069, %206
  %8073 = fadd fast float %8070, %207
  %8074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8075 = extractvalue %dx.types.CBufRet.f32 %8074, 1
  %8076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.CBufRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.CBufRet.f32 %8076, 2
  %8080 = fsub fast float -0.000000e+00, %8072
  %8081 = fsub fast float -0.000000e+00, %8073
  %8082 = fsub fast float %5787, %8071
  %8083 = fadd fast float %8082, %8075
  %8084 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8080, float %8081, float %8083)  ; Dot3(ax,ay,az,bx,by,bz)
  %8085 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8077, float %8078, float %8079)  ; Dot3(ax,ay,az,bx,by,bz)
  %8086 = fdiv fast float 1.000000e+00, %8085
  %8087 = fmul fast float %8086, %8084
  %8088 = fmul fast float %8077, %8087
  %8089 = fmul fast float %8078, %8087
  %8090 = fadd fast float %8088, %8072
  %8091 = fadd fast float %8089, %8073
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8095 = fsub fast float %8090, %8093
  %8096 = fsub fast float %8091, %8094
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 2
  %8099 = extractvalue %dx.types.CBufRet.f32 %8097, 3
  %8100 = fmul fast float %8095, %8098
  %8101 = fmul fast float %8096, %8099
  %8102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.i32 %8102, 3
  %8104 = icmp eq i32 %8103, 0
  br i1 %8104, label %8110, label %8105

; <label>:8105                                    ; preds = %8065
  %8106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %8100, float %8101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8107 = extractvalue %dx.types.ResRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.ResRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.ResRet.f32 %8106, 2
  br label %8115

; <label>:8110                                    ; preds = %8065
  %8111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %8100, float %8101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8112 = extractvalue %dx.types.ResRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.ResRet.f32 %8111, 1
  %8114 = extractvalue %dx.types.ResRet.f32 %8111, 2
  br label %8115

; <label>:8115                                    ; preds = %8110, %8105
  %8116 = phi float [ %8107, %8105 ], [ %8112, %8110 ]
  %8117 = phi float [ %8108, %8105 ], [ %8113, %8110 ]
  %8118 = phi float [ %8109, %8105 ], [ %8114, %8110 ]
  %8119 = extractvalue %dx.types.CBufRet.f32 %8074, 2
  %8120 = fmul fast float %8119, %8116
  %8121 = extractvalue %dx.types.CBufRet.f32 %8074, 0
  %8122 = fsub fast float %8087, %8121
  %8123 = fsub fast float %8122, %8120
  %8124 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8123)  ; FMax(a,b)
  %8125 = fmul fast float %8124, %8117
  %8126 = call float @dx.op.binary.f32(i32 36, float %8118, float %8125)  ; FMin(a,b)
  %8127 = fmul fast float %8126, 0xBFF7154760000000
  %8128 = call float @dx.op.unary.f32(i32 21, float %8127)  ; Exp(value)
  %8129 = fmul fast float %8067, %8128
  br label %8130

; <label>:8130                                    ; preds = %8115, %7960
  %8131 = phi float [ %8129, %8115 ], [ %7961, %7960 ]
  %8132 = call float @dx.op.binary.f32(i32 36, float %8131, float %8131)  ; FMin(a,b)
  %8133 = call float @dx.op.binary.f32(i32 36, float %8131, float %8132)  ; FMin(a,b)
  %8134 = fcmp fast ogt float %8133, 0.000000e+00
  br i1 %8134, label %8135, label %8395, !dx.controlflow.hints !136

; <label>:8135                                    ; preds = %8130
  %8136 = fmul fast float %8131, %6691
  %8137 = fmul fast float %8131, %6692
  %8138 = fmul fast float %8131, %6693
  %8139 = fsub fast float %208, %4986
  %8140 = fcmp fast ogt float %8139, 0.000000e+00
  %8141 = fmul fast float %6680, 5.120000e+02
  %8142 = fmul fast float %6681, 5.120000e+02
  %8143 = fmul fast float %6682, 5.120000e+02
  %8144 = fadd fast float %8143, %208
  %8145 = fsub fast float %4986, %8144
  %8146 = fmul fast float %8145, 2.000000e+00
  %8147 = fadd fast float %8146, %8144
  %8148 = select i1 %8140, float %8147, float %8144
  %8149 = fsub fast float %8148, %208
  %8150 = call float @dx.op.dot3.f32(i32 55, float %8141, float %8142, float %8149, float %8141, float %8142, float %8149)  ; Dot3(ax,ay,az,bx,by,bz)
  %8151 = call float @dx.op.unary.f32(i32 25, float %8150)  ; Rsqrt(value)
  %8152 = fmul fast float %8151, %8141
  %8153 = fmul fast float %8151, %8142
  %8154 = fmul fast float %8151, %8149
  %8155 = fsub fast float %4986, %208
  %8156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8155)  ; Dot3(ax,ay,az,bx,by,bz)
  %8157 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8152, float %8153, float %8154)  ; Dot3(ax,ay,az,bx,by,bz)
  %8158 = fdiv fast float 1.000000e+00, %8157
  %8159 = fmul fast float %8158, %8156
  %8160 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8139, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8161 = fcmp fast ogt float %8160, 0.000000e+00
  %8162 = fcmp fast olt float %8160, 0.000000e+00
  %8163 = zext i1 %8161 to i32
  %8164 = zext i1 %8162 to i32
  %8165 = sub nsw i32 %8163, %8164
  %8166 = sitofp i32 %8165 to float
  %8167 = fsub fast float %8148, %4986
  %8168 = call float @dx.op.dot3.f32(i32 55, float %8141, float %8142, float %8167, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = fcmp fast ogt float %8168, 0.000000e+00
  %8170 = fcmp fast olt float %8168, 0.000000e+00
  %8171 = zext i1 %8169 to i32
  %8172 = zext i1 %8170 to i32
  %8173 = sub nsw i32 %8171, %8172
  %8174 = sitofp i32 %8173 to float
  %8175 = fcmp fast une float %8166, %8174
  br i1 %8175, label %8176, label %8186

; <label>:8176                                    ; preds = %8135
  %8177 = fmul fast float %8159, %8154
  %8178 = fmul fast float %8159, %8153
  %8179 = fmul fast float %8159, %8152
  %8180 = fmul fast float %8179, %8179
  %8181 = fmul fast float %8178, %8178
  %8182 = fadd fast float %8180, %8181
  %8183 = fmul fast float %8177, %8177
  %8184 = fadd fast float %8182, %8183
  %8185 = call float @dx.op.unary.f32(i32 24, float %8184)  ; Sqrt(value)
  br label %8196

; <label>:8186                                    ; preds = %8135
  %8187 = icmp slt i32 %8165, 0
  br i1 %8187, label %8188, label %8196

; <label>:8188                                    ; preds = %8186
  %8189 = fsub fast float %208, %8148
  %8190 = fmul fast float %8141, %8141
  %8191 = fmul fast float %8142, %8142
  %8192 = fadd fast float %8190, %8191
  %8193 = fmul fast float %8189, %8189
  %8194 = fadd fast float %8192, %8193
  %8195 = call float @dx.op.unary.f32(i32 24, float %8194)  ; Sqrt(value)
  br label %8196

; <label>:8196                                    ; preds = %8188, %8186, %8176
  %8197 = phi float [ %8185, %8176 ], [ %8195, %8188 ], [ 0.000000e+00, %8186 ]
  %8198 = fsub fast float -0.000000e+00, %8197
  %8199 = select i1 %8140, float -0.000000e+00, float %8198
  %8200 = fmul fast float %4983, 0x3FF7154760000000
  %8201 = fmul fast float %8200, %8199
  %8202 = fmul fast float %4984, 0x3FF7154760000000
  %8203 = fmul fast float %8202, %8199
  %8204 = fmul fast float %4985, 0x3FF7154760000000
  %8205 = fmul fast float %8204, %8199
  %8206 = call float @dx.op.unary.f32(i32 21, float %8201)  ; Exp(value)
  %8207 = call float @dx.op.unary.f32(i32 21, float %8203)  ; Exp(value)
  %8208 = call float @dx.op.unary.f32(i32 21, float %8205)  ; Exp(value)
  %8209 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8210 = call float @dx.op.unary.f32(i32 7, float %8207)  ; Saturate(value)
  %8211 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8212 = fmul fast float %8136, %8209
  %8213 = fmul fast float %8137, %8210
  %8214 = fmul fast float %8138, %8211
  %8215 = fsub fast float %6680, %5775
  %8216 = fsub fast float %6681, %5774
  %8217 = fsub fast float %6682, %5773
  %8218 = call float @dx.op.dot3.f32(i32 55, float %8215, float %8216, float %8217, float %8215, float %8216, float %8217)  ; Dot3(ax,ay,az,bx,by,bz)
  %8219 = call float @dx.op.unary.f32(i32 25, float %8218)  ; Rsqrt(value)
  %8220 = fmul fast float %8219, %8215
  %8221 = fmul fast float %8219, %8216
  %8222 = fmul fast float %8219, %8217
  %8223 = call float @dx.op.dot3.f32(i32 55, float %6680, float %6681, float %6682, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %8224 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5771, float %5770, float %8220, float %8221, float %8222)  ; Dot3(ax,ay,az,bx,by,bz)
  %8225 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8226 = bitcast i32 %5814 to float
  %8227 = fmul fast float %8225, %8225
  %8228 = fmul fast float %8227, %8226
  %8229 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  %8230 = fmul fast float %8229, %8225
  %8231 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %8220, float %8221, float %8222)  ; Dot3(ax,ay,az,bx,by,bz)
  %8232 = fmul fast float %8231, %8231
  %8233 = call float @dx.op.unary.f32(i32 6, float %8223)  ; FAbs(value)
  %8234 = fsub fast float 1.000000e+00, %5808
  %8235 = fmul fast float %5790, %5790
  %8236 = fmul fast float %8235, %8234
  %8237 = fadd fast float %8236, %5808
  %8238 = bitcast float %8237 to i32
  %8239 = ashr i32 %8238, 1
  %8240 = add nsw i32 %8239, 532487669
  %8241 = bitcast i32 %8240 to float
  %8242 = fadd fast float %8241, %5790
  %8243 = fmul fast float %5808, %8232
  %8244 = fsub fast float 1.000000e+00, %8232
  %8245 = fadd fast float %8244, %8243
  %8246 = fmul fast float %8233, %8233
  %8247 = fmul fast float %8246, %8234
  %8248 = fadd fast float %8247, %5808
  %8249 = bitcast float %8248 to i32
  %8250 = ashr i32 %8249, 1
  %8251 = add nsw i32 %8250, 532487669
  %8252 = bitcast i32 %8251 to float
  %8253 = fadd fast float %8252, %8233
  %8254 = fmul fast float %8245, %8245
  %8255 = fmul fast float %8254, %8242
  %8256 = fmul fast float %8255, %8253
  %8257 = fdiv fast float 0x3FF0A00000000000, %8256
  %8258 = fmul fast float %8257, %5808
  %8259 = fmul fast float %6050, 0x3FF9999980000000
  %8260 = fsub fast float 5.000000e+00, %8259
  %8261 = call float @dx.op.unary.f32(i32 6, float %8224)  ; FAbs(value)
  %8262 = fsub fast float 1.000000e+00, %8261
  %8263 = fmul fast float %6050, 0x41D9660740000000
  %8264 = fadd fast float %8263, 0xC1EFBF8940000000
  %8265 = bitcast float %8262 to i32
  %8266 = sitofp i32 %8265 to float
  %8267 = fmul fast float %8266, %8260
  %8268 = fadd fast float %8264, %8267
  %8269 = fptosi float %8268 to i32
  %8270 = bitcast i32 %8269 to float
  %8271 = fsub fast float 1.000000e+00, %5779
  %8272 = fsub fast float 1.000000e+00, %5780
  %8273 = fsub fast float 1.000000e+00, %5788
  %8274 = fmul fast float %8270, %8271
  %8275 = fmul fast float %8270, %8272
  %8276 = fmul fast float %8270, %8273
  %8277 = fadd fast float %8274, %5779
  %8278 = fadd fast float %8275, %5780
  %8279 = fadd fast float %8276, %5788
  br i1 %6073, label %8280, label %8303

; <label>:8280                                    ; preds = %8196
  %8281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4578, float %8261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8282 = extractvalue %dx.types.ResRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.ResRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.ResRet.f32 %8281, 2
  %8285 = fadd fast float %8282, -5.000000e-01
  %8286 = fadd fast float %8283, -5.000000e-01
  %8287 = fadd fast float %8284, -5.000000e-01
  %8288 = fmul fast float %5779, 4.000000e+00
  %8289 = fmul fast float %8288, %8271
  %8290 = fmul fast float %8289, %8285
  %8291 = fmul fast float %5780, 4.000000e+00
  %8292 = fmul fast float %8291, %8272
  %8293 = fmul fast float %8292, %8286
  %8294 = fmul fast float %5788, 4.000000e+00
  %8295 = fmul fast float %8294, %8273
  %8296 = fmul fast float %8295, %8287
  %8297 = fadd fast float %8290, %8277
  %8298 = fadd fast float %8293, %8278
  %8299 = fadd fast float %8296, %8279
  %8300 = call float @dx.op.unary.f32(i32 7, float %8297)  ; Saturate(value)
  %8301 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8302 = call float @dx.op.unary.f32(i32 7, float %8299)  ; Saturate(value)
  br label %8303

; <label>:8303                                    ; preds = %8280, %8196
  %8304 = phi float [ %8300, %8280 ], [ %8277, %8196 ]
  %8305 = phi float [ %8301, %8280 ], [ %8278, %8196 ]
  %8306 = phi float [ %8302, %8280 ], [ %8279, %8196 ]
  %8307 = fmul fast float %8223, 9.843750e-01
  %8308 = fadd fast float %8307, 7.812500e-03
  %8309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8308, float %6054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8310 = extractvalue %dx.types.ResRet.f32 %8309, 0
  %8311 = extractvalue %dx.types.ResRet.f32 %8309, 1
  %8312 = extractvalue %dx.types.ResRet.f32 %8309, 2
  %8313 = extractvalue %dx.types.ResRet.f32 %8309, 3
  %8314 = fsub fast float %8312, %8310
  %8315 = fsub fast float %8313, %8311
  %8316 = fmul fast float %8314, %6060
  %8317 = fmul fast float %8315, %6060
  %8318 = fadd fast float %8316, %8310
  %8319 = fadd fast float %8317, %8311
  %8320 = fmul fast float %8318, %5779
  %8321 = fmul fast float %8318, %5780
  %8322 = fmul fast float %8318, %5788
  %8323 = fadd fast float %8320, %8319
  %8324 = fadd fast float %8321, %8319
  %8325 = fadd fast float %8322, %8319
  br i1 %6073, label %8326, label %8349

; <label>:8326                                    ; preds = %8303
  %8327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4578, float %8223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8328 = extractvalue %dx.types.ResRet.f32 %8327, 0
  %8329 = extractvalue %dx.types.ResRet.f32 %8327, 1
  %8330 = extractvalue %dx.types.ResRet.f32 %8327, 2
  %8331 = fadd fast float %8328, -5.000000e-01
  %8332 = fadd fast float %8329, -5.000000e-01
  %8333 = fadd fast float %8330, -5.000000e-01
  %8334 = fmul fast float %5779, 4.000000e+00
  %8335 = fmul fast float %8334, %8271
  %8336 = fmul fast float %8335, %8331
  %8337 = fmul fast float %5780, 4.000000e+00
  %8338 = fmul fast float %8337, %8272
  %8339 = fmul fast float %8338, %8332
  %8340 = fmul fast float %5788, 4.000000e+00
  %8341 = fmul fast float %8340, %8273
  %8342 = fmul fast float %8341, %8333
  %8343 = fadd fast float %8336, %8323
  %8344 = fadd fast float %8339, %8324
  %8345 = fadd fast float %8342, %8325
  %8346 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8347 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8348 = call float @dx.op.unary.f32(i32 7, float %8345)  ; Saturate(value)
  br label %8349

; <label>:8349                                    ; preds = %8326, %8303
  %8350 = phi float [ %8346, %8326 ], [ %8323, %8303 ]
  %8351 = phi float [ %8347, %8326 ], [ %8324, %8303 ]
  %8352 = phi float [ %8348, %8326 ], [ %8325, %8303 ]
  %8353 = call float @dx.op.binary.f32(i32 35, float %8351, float %8352)  ; FMax(a,b)
  %8354 = call float @dx.op.binary.f32(i32 35, float %8350, float %8353)  ; FMax(a,b)
  %8355 = fsub fast float 1.000000e+00, %8354
  %8356 = fmul fast float %8304, %8258
  %8357 = fmul fast float %8305, %8258
  %8358 = fmul fast float %8306, %8258
  %8359 = fsub fast float 1.000000e+00, %8224
  %8360 = bitcast float %8359 to i32
  %8361 = sitofp i32 %8360 to float
  %8362 = fmul fast float %8361, 5.000000e+00
  %8363 = fadd fast float %8362, 0xC1EFBF8940000000
  %8364 = fptosi float %8363 to i32
  %8365 = bitcast i32 %8364 to float
  %8366 = fmul fast float %8365, %4579
  %8367 = fmul fast float %8355, %8366
  %8368 = fmul fast float %8367, %6615
  %8369 = fmul fast float %8367, %6616
  %8370 = fmul fast float %8367, %6617
  %8371 = fadd fast float %8368, %8356
  %8372 = fadd fast float %8369, %8357
  %8373 = fadd fast float %8370, %8358
  %8374 = fmul fast float %8230, %8212
  %8375 = fmul fast float %8374, %8355
  %8376 = fmul fast float %8230, %8213
  %8377 = fmul fast float %8376, %8355
  %8378 = fmul fast float %8230, %8214
  %8379 = fmul fast float %8378, %8355
  %8380 = fmul fast float %8374, %8371
  %8381 = fmul fast float %8376, %8372
  %8382 = fmul fast float %8378, %8373
  %8383 = fadd fast float %8375, %6599
  %8384 = fmul fast float %8383, %4575
  %8385 = fadd fast float %8377, %6600
  %8386 = fmul fast float %8385, %4575
  %8387 = fadd fast float %8379, %6601
  %8388 = fmul fast float %8387, %4575
  %8389 = fadd fast float %8380, %6668
  %8390 = fmul fast float %8389, %4575
  %8391 = fadd fast float %8381, %6671
  %8392 = fmul fast float %8391, %4575
  %8393 = fadd fast float %8382, %6674
  %8394 = fmul fast float %8393, %4575
  br label %8395

; <label>:8395                                    ; preds = %8349, %8130, %6595
  %8396 = phi float [ %6669, %6595 ], [ %6669, %8130 ], [ %8390, %8349 ]
  %8397 = phi float [ %6672, %6595 ], [ %6672, %8130 ], [ %8392, %8349 ]
  %8398 = phi float [ %6675, %6595 ], [ %6675, %8130 ], [ %8394, %8349 ]
  %8399 = phi float [ %6664, %6595 ], [ %6664, %8130 ], [ %8384, %8349 ]
  %8400 = phi float [ %6665, %6595 ], [ %6665, %8130 ], [ %8386, %8349 ]
  %8401 = phi float [ %6666, %6595 ], [ %6666, %8130 ], [ %8388, %8349 ]
  %8402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.i32 %8402, 0
  %8404 = icmp eq i32 %8403, 0
  br i1 %8404, label %9080, label %8405

; <label>:8405                                    ; preds = %8395
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8408 = extractvalue %dx.types.CBufRet.f32 %8406, 3
  %8409 = fmul fast float %8407, %123
  %8410 = fmul fast float %8408, %124
  %8411 = fptoui float %8409 to i32
  %8412 = fptoui float %8410 to i32
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.CBufRet.f32 %8413, 2
  %8416 = extractvalue %dx.types.CBufRet.f32 %8413, 3
  %8417 = fadd fast float %110, -4.000000e+00
  %8418 = call float @dx.op.binary.f32(i32 35, float %8417, float 0.000000e+00)  ; FMax(a,b)
  %8419 = fadd fast float %8418, %8414
  %8420 = fmul fast float %8419, %8415
  %8421 = call float @dx.op.unary.f32(i32 23, float %8420)  ; Log(value)
  %8422 = fmul fast float %8421, %8416
  %8423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8424 = extractvalue %dx.types.CBufRet.f32 %8423, 2
  %8425 = fmul fast float %8422, %8424
  %8426 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.i32 %8427, 1
  %8429 = add i32 %8428, -1
  %8430 = uitofp i32 %8428 to float
  %8431 = fmul fast float %8430, %8426
  %8432 = fptoui float %8431 to i32
  %8433 = call i32 @dx.op.binary.i32(i32 40, i32 %8432, i32 %8429)  ; UMin(a,b)
  %8434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.i32 %8434, 2
  %8436 = extractvalue %dx.types.CBufRet.i32 %8434, 3
  %8437 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8412, i32 %8435, i32 %8411)  ; UMad(a,b,c)
  %8438 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8433, i32 %8436, i32 %8437)  ; UMad(a,b,c)
  %8439 = add nsw i32 %8403, -1
  %8440 = call i32 @dx.op.binary.i32(i32 37, i32 %8439, i32 0)  ; IMax(a,b)
  %8441 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %8442 = fptoui float %8441 to i32
  %8443 = lshr i32 %8442, 5
  %8444 = call i32 @dx.op.binary.i32(i32 40, i32 %8443, i32 8191)  ; UMin(a,b)
  %8445 = shl i32 %8444, 2
  %8446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8445, i32 undef)  ; BufferLoad(srv,index,wot)
  %8447 = extractvalue %dx.types.ResRet.i32 %8446, 0
  %8448 = lshr i32 %8447, 16
  %8449 = and i32 %8447, 65535
  %8450 = lshr i32 %8447, 21
  %8451 = lshr i32 %8449, 5
  %8452 = call i32 @dx.op.binary.i32(i32 40, i32 %8451, i32 %8440)  ; UMin(a,b)
  %8453 = icmp ugt i32 %8450, %8452
  br i1 %8453, label %9080, label %8454

; <label>:8454                                    ; preds = %8405
  br label %8455

; <label>:8455                                    ; preds = %9070, %8454
  %8456 = phi i32 [ %9077, %9070 ], [ %8450, %8454 ]
  %8457 = phi float [ %9071, %9070 ], [ %8396, %8454 ]
  %8458 = phi float [ %9072, %9070 ], [ %8397, %8454 ]
  %8459 = phi float [ %9073, %9070 ], [ %8398, %8454 ]
  %8460 = phi float [ %9074, %9070 ], [ %8399, %8454 ]
  %8461 = phi float [ %9075, %9070 ], [ %8400, %8454 ]
  %8462 = phi float [ %9076, %9070 ], [ %8401, %8454 ]
  %8463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.i32 %8463, 0
  %8465 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8438, i32 %8464, i32 %8456)  ; UMad(a,b,c)
  %8466 = shl i32 %8465, 2
  %8467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8466, i32 undef)  ; BufferLoad(srv,index,wot)
  %8468 = extractvalue %dx.types.ResRet.i32 %8467, 0
  %8469 = shl i32 %8456, 5
  %8470 = sub nsw i32 %8448, %8469
  %8471 = call i32 @dx.op.binary.i32(i32 37, i32 %8470, i32 0)  ; IMax(a,b)
  %8472 = call i32 @dx.op.binary.i32(i32 38, i32 %8471, i32 31)  ; IMin(a,b)
  %8473 = sub nsw i32 1, %8448
  %8474 = add nsw i32 %8473, %8449
  %8475 = call i32 @dx.op.binary.i32(i32 37, i32 %8474, i32 0)  ; IMax(a,b)
  %8476 = call i32 @dx.op.binary.i32(i32 38, i32 %8475, i32 32)  ; IMin(a,b)
  %8477 = and i32 %8476, 31
  %8478 = shl i32 -1, %8477
  %8479 = xor i32 %8478, -1
  %8480 = and i32 %8472, 31
  %8481 = shl i32 %8479, %8480
  %8482 = icmp eq i32 %8476, 32
  %8483 = select i1 %8482, i32 -1, i32 %8481
  %8484 = and i32 %8483, %8468
  %8485 = icmp eq i32 %8484, 0
  br i1 %8485, label %9070, label %8486

; <label>:8486                                    ; preds = %8455
  br label %8487

; <label>:8487                                    ; preds = %8621, %8486
  %8488 = phi i32 [ %8499, %8621 ], [ %8484, %8486 ]
  %8489 = phi float [ %8622, %8621 ], [ %8457, %8486 ]
  %8490 = phi float [ %8623, %8621 ], [ %8458, %8486 ]
  %8491 = phi float [ %8624, %8621 ], [ %8459, %8486 ]
  %8492 = phi float [ %8625, %8621 ], [ %8460, %8486 ]
  %8493 = phi float [ %8626, %8621 ], [ %8461, %8486 ]
  %8494 = phi float [ %8627, %8621 ], [ %8462, %8486 ]
  %8495 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8488)  ; FirstbitLo(value)
  %8496 = add i32 %8495, %8469
  %8497 = and i32 %8495, 31
  %8498 = shl i32 1, %8497
  %8499 = xor i32 %8498, %8488
  %8500 = mul i32 %8496, 112
  %8501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8500, i32 undef)  ; BufferLoad(srv,index,wot)
  %8502 = extractvalue %dx.types.ResRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.ResRet.f32 %8501, 1
  %8504 = extractvalue %dx.types.ResRet.f32 %8501, 2
  %8505 = or i32 %8500, 12
  %8506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8505, i32 undef)  ; BufferLoad(srv,index,wot)
  %8507 = extractvalue %dx.types.ResRet.f32 %8506, 0
  %8508 = add i32 %8500, 16
  %8509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8508, i32 undef)  ; BufferLoad(srv,index,wot)
  %8510 = extractvalue %dx.types.ResRet.f32 %8509, 0
  %8511 = extractvalue %dx.types.ResRet.f32 %8509, 1
  %8512 = extractvalue %dx.types.ResRet.f32 %8509, 2
  %8513 = add i32 %8500, 28
  %8514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8513, i32 undef)  ; BufferLoad(srv,index,wot)
  %8515 = extractvalue %dx.types.ResRet.i32 %8514, 0
  %8516 = add i32 %8500, 44
  %8517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8516, i32 undef)  ; BufferLoad(srv,index,wot)
  %8518 = extractvalue %dx.types.ResRet.f32 %8517, 0
  %8519 = add i32 %8500, 48
  %8520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8519, i32 undef)  ; BufferLoad(srv,index,wot)
  %8521 = extractvalue %dx.types.ResRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.ResRet.f32 %8520, 1
  %8523 = extractvalue %dx.types.ResRet.f32 %8520, 2
  %8524 = extractvalue %dx.types.ResRet.f32 %8520, 3
  %8525 = add i32 %8500, 64
  %8526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8525, i32 undef)  ; BufferLoad(srv,index,wot)
  %8527 = extractvalue %dx.types.ResRet.f32 %8526, 0
  %8528 = extractvalue %dx.types.ResRet.f32 %8526, 1
  %8529 = extractvalue %dx.types.ResRet.f32 %8526, 2
  %8530 = extractvalue %dx.types.ResRet.f32 %8526, 3
  %8531 = add i32 %8500, 80
  %8532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8531, i32 undef)  ; BufferLoad(srv,index,wot)
  %8533 = extractvalue %dx.types.ResRet.f32 %8532, 1
  %8534 = extractvalue %dx.types.ResRet.f32 %8532, 2
  %8535 = add i32 %8500, 92
  %8536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8535, i32 undef)  ; BufferLoad(srv,index,wot)
  %8537 = extractvalue %dx.types.ResRet.i32 %8536, 0
  %8538 = call float @dx.op.dot3.f32(i32 55, float %8502, float %8503, float %8504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8539 = select i1 %278, float %8533, float %8502
  %8540 = select i1 %278, float %8538, float %8503
  %8541 = select i1 %278, float %8534, float %8504
  %8542 = and i32 %8537, 65535
  %8543 = uitofp i32 %8542 to float
  %8544 = lshr i32 %8537, 16
  %8545 = uitofp i32 %8544 to float
  %8546 = and i32 %8515, 65535
  %8547 = and i32 %8515, 50331648
  %8548 = icmp eq i32 %8547, 33554432
  %8549 = fsub fast float %8521, %206
  %8550 = fsub fast float %8522, %207
  %8551 = fsub fast float %8523, %208
  %8552 = call float @dx.op.dot3.f32(i32 55, float %8549, float %8550, float %8551, float %8549, float %8550, float %8551)  ; Dot3(ax,ay,az,bx,by,bz)
  %8553 = call float @dx.op.unary.f32(i32 24, float %8552)  ; Sqrt(value)
  %8554 = fdiv fast float 1.000000e+00, %8553
  %8555 = fmul fast float %8554, %8549
  %8556 = fmul fast float %8554, %8550
  %8557 = fmul fast float %8554, %8551
  %8558 = fadd fast float %8553, %8507
  %8559 = fdiv fast float 1.000000e+00, %8558
  %8560 = fmul float %8518, %8559
  %8561 = fmul float %8560, %8560
  %8562 = call float @dx.op.unary.f32(i32 7, float %8561)  ; Saturate(value)
  br i1 %8548, label %8563, label %8584

; <label>:8563                                    ; preds = %8487
  %8564 = fmul fast float %8529, %8510
  %8565 = fmul fast float %8529, %8511
  %8566 = fmul fast float %8529, %8512
  %8567 = fadd fast float %8549, %8564
  %8568 = fadd fast float %8550, %8565
  %8569 = fadd fast float %8551, %8566
  %8570 = call float @dx.op.dot3.f32(i32 55, float %8567, float %8568, float %8569, float %8567, float %8568, float %8569)  ; Dot3(ax,ay,az,bx,by,bz)
  %8571 = call float @dx.op.unary.f32(i32 25, float %8570)  ; Rsqrt(value)
  %8572 = fmul fast float %8571, %8567
  %8573 = fmul fast float %8571, %8568
  %8574 = fmul fast float %8571, %8569
  %8575 = fsub fast float %206, %8521
  %8576 = fsub fast float %207, %8522
  %8577 = fsub fast float %208, %8523
  %8578 = fsub fast float -0.000000e+00, %8575
  %8579 = fsub fast float -0.000000e+00, %8576
  %8580 = fsub fast float -0.000000e+00, %8577
  %8581 = call float @dx.op.dot3.f32(i32 55, float %8578, float %8579, float %8580, float %8510, float %8511, float %8512)  ; Dot3(ax,ay,az,bx,by,bz)
  %8582 = fcmp fast ogt float %8581, 0.000000e+00
  %8583 = uitofp i1 %8582 to float
  br label %8584

; <label>:8584                                    ; preds = %8563, %8487
  %8585 = phi float [ %8583, %8563 ], [ 1.000000e+00, %8487 ]
  %8586 = phi float [ %8572, %8563 ], [ %8555, %8487 ]
  %8587 = phi float [ %8573, %8563 ], [ %8556, %8487 ]
  %8588 = phi float [ %8574, %8563 ], [ %8557, %8487 ]
  %8589 = call float @dx.op.dot3.f32(i32 55, float %8510, float %8511, float %8512, float %8586, float %8587, float %8588)  ; Dot3(ax,ay,az,bx,by,bz)
  %8590 = fmul fast float %8589, %8589
  %8591 = call float @dx.op.unary.f32(i32 7, float %8590)  ; Saturate(value)
  %8592 = fsub fast float 1.000000e+00, %8591
  %8593 = fmul fast float %8592, 5.000000e-01
  %8594 = fcmp fast ogt float %8589, 0.000000e+00
  %8595 = fsub fast float 1.000000e+00, %8593
  %8596 = select i1 %8594, float %8593, float %8595
  %8597 = fmul fast float %8596, %8545
  %8598 = fadd fast float %8597, %8543
  %8599 = fmul fast float %8598, 0x3EF0001000000000
  %8600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %8599, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8601 = extractvalue %dx.types.ResRet.f32 %8600, 0
  %8602 = fmul fast float %8589, %8527
  %8603 = fadd fast float %8602, %8528
  %8604 = call float @dx.op.unary.f32(i32 7, float %8603)  ; Saturate(value)
  %8605 = select i1 %8548, float 1.000000e+00, float %8604
  %8606 = select i1 %8548, float %8604, float 1.000000e+00
  %8607 = fmul fast float %8553, %8524
  %8608 = fsub fast float 1.000000e+00, %8607
  %8609 = fmul fast float %8608, %8530
  %8610 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  %8611 = fmul fast float %8610, %8606
  %8612 = fmul fast float %8611, 2.000000e+00
  %8613 = fsub fast float 3.000000e+00, %8612
  %8614 = fmul fast float %8601, %8585
  %8615 = fmul fast float %8611, %8611
  %8616 = fmul fast float %8615, %8614
  %8617 = fmul fast float %8616, %8613
  %8618 = call float @dx.op.binary.f32(i32 36, float %8617, float %8617)  ; FMin(a,b)
  %8619 = call float @dx.op.binary.f32(i32 36, float %8617, float %8618)  ; FMin(a,b)
  %8620 = fcmp fast ogt float %8619, 0.000000e+00
  br i1 %8620, label %8629, label %8621, !dx.controlflow.hints !137

; <label>:8621                                    ; preds = %9026, %8775, %8584
  %8622 = phi float [ %8489, %8775 ], [ %8489, %8584 ], [ %9066, %9026 ]
  %8623 = phi float [ %8490, %8775 ], [ %8490, %8584 ], [ %9067, %9026 ]
  %8624 = phi float [ %8491, %8775 ], [ %8491, %8584 ], [ %9068, %9026 ]
  %8625 = phi float [ %8492, %8775 ], [ %8492, %8584 ], [ %9060, %9026 ]
  %8626 = phi float [ %8493, %8775 ], [ %8493, %8584 ], [ %9061, %9026 ]
  %8627 = phi float [ %8494, %8775 ], [ %8494, %8584 ], [ %9062, %9026 ]
  %8628 = icmp eq i32 %8488, %8498
  br i1 %8628, label %9069, label %8487

; <label>:8629                                    ; preds = %8584
  %8630 = icmp eq i32 %8546, 255
  br i1 %8630, label %8775, label %8631, !dx.controlflow.hints !138

; <label>:8631                                    ; preds = %8629
  %8632 = mul nuw nsw i32 %8546, 176
  %8633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8632, i32 undef)  ; BufferLoad(srv,index,wot)
  %8634 = extractvalue %dx.types.ResRet.f32 %8633, 0
  %8635 = extractvalue %dx.types.ResRet.f32 %8633, 1
  %8636 = extractvalue %dx.types.ResRet.f32 %8633, 2
  %8637 = extractvalue %dx.types.ResRet.f32 %8633, 3
  %8638 = add nuw nsw i32 %8632, 16
  %8639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8638, i32 undef)  ; BufferLoad(srv,index,wot)
  %8640 = extractvalue %dx.types.ResRet.f32 %8639, 0
  %8641 = extractvalue %dx.types.ResRet.f32 %8639, 1
  %8642 = add nuw nsw i32 %8632, 32
  %8643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8642, i32 undef)  ; BufferLoad(srv,index,wot)
  %8644 = extractvalue %dx.types.ResRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.ResRet.f32 %8643, 1
  %8646 = extractvalue %dx.types.ResRet.f32 %8643, 2
  %8647 = add nuw nsw i32 %8632, 48
  %8648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8647, i32 undef)  ; BufferLoad(srv,index,wot)
  %8649 = extractvalue %dx.types.ResRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.ResRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.ResRet.f32 %8648, 2
  %8652 = extractvalue %dx.types.ResRet.f32 %8648, 3
  %8653 = add nuw nsw i32 %8632, 64
  %8654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8653, i32 undef)  ; BufferLoad(srv,index,wot)
  %8655 = extractvalue %dx.types.ResRet.f32 %8654, 0
  %8656 = extractvalue %dx.types.ResRet.f32 %8654, 1
  %8657 = extractvalue %dx.types.ResRet.f32 %8654, 2
  %8658 = extractvalue %dx.types.ResRet.f32 %8654, 3
  %8659 = add nuw nsw i32 %8632, 80
  %8660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8659, i32 undef)  ; BufferLoad(srv,index,wot)
  %8661 = extractvalue %dx.types.ResRet.f32 %8660, 0
  %8662 = extractvalue %dx.types.ResRet.f32 %8660, 1
  %8663 = extractvalue %dx.types.ResRet.f32 %8660, 2
  %8664 = extractvalue %dx.types.ResRet.f32 %8660, 3
  %8665 = add nuw nsw i32 %8632, 96
  %8666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8665, i32 undef)  ; BufferLoad(srv,index,wot)
  %8667 = extractvalue %dx.types.ResRet.f32 %8666, 0
  %8668 = extractvalue %dx.types.ResRet.f32 %8666, 1
  %8669 = extractvalue %dx.types.ResRet.f32 %8666, 2
  %8670 = extractvalue %dx.types.ResRet.f32 %8666, 3
  %8671 = bitcast float %8641 to i32
  %8672 = fmul fast float %8646, %132
  %8673 = fmul fast float %8646, %134
  %8674 = fmul fast float %8646, %136
  %8675 = fadd fast float %8672, %206
  %8676 = fadd fast float %8673, %207
  %8677 = fadd fast float %8674, %208
  %8678 = fmul fast float %8675, %8649
  %8679 = call float @dx.op.tertiary.f32(i32 46, float %8676, float %8655, float %8678)  ; FMad(a,b,c)
  %8680 = call float @dx.op.tertiary.f32(i32 46, float %8677, float %8661, float %8679)  ; FMad(a,b,c)
  %8681 = fadd fast float %8680, %8667
  %8682 = fmul fast float %8675, %8650
  %8683 = call float @dx.op.tertiary.f32(i32 46, float %8676, float %8656, float %8682)  ; FMad(a,b,c)
  %8684 = call float @dx.op.tertiary.f32(i32 46, float %8677, float %8662, float %8683)  ; FMad(a,b,c)
  %8685 = fadd fast float %8684, %8668
  %8686 = fmul fast float %8675, %8651
  %8687 = call float @dx.op.tertiary.f32(i32 46, float %8676, float %8657, float %8686)  ; FMad(a,b,c)
  %8688 = call float @dx.op.tertiary.f32(i32 46, float %8677, float %8663, float %8687)  ; FMad(a,b,c)
  %8689 = fadd fast float %8688, %8669
  %8690 = fmul fast float %8675, %8652
  %8691 = call float @dx.op.tertiary.f32(i32 46, float %8676, float %8658, float %8690)  ; FMad(a,b,c)
  %8692 = call float @dx.op.tertiary.f32(i32 46, float %8677, float %8664, float %8691)  ; FMad(a,b,c)
  %8693 = fadd fast float %8692, %8670
  %8694 = fdiv fast float %8681, %8693
  %8695 = fdiv fast float %8685, %8693
  %8696 = fdiv fast float %8689, %8693
  %8697 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8696)  ; FMax(a,b)
  %8698 = fmul fast float %289, 0x401921FB60000000
  %8699 = call float @dx.op.unary.f32(i32 13, float %8698)  ; Sin(value)
  %8700 = call float @dx.op.unary.f32(i32 12, float %8698)  ; Cos(value)
  %8701 = fmul fast float %8700, %8645
  %8702 = call float @dx.op.tertiary.f32(i32 46, float %8699, float %8645, float 0.000000e+00)  ; FMad(a,b,c)
  %8703 = fmul fast float %8645, %8699
  %8704 = fsub fast float -0.000000e+00, %8703
  %8705 = call float @dx.op.tertiary.f32(i32 46, float %8700, float %8645, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8706

; <label>:8706                                    ; preds = %8706, %8631
  %8707 = phi float [ 0.000000e+00, %8631 ], [ %8739, %8706 ]
  %8708 = phi float [ 0.000000e+00, %8631 ], [ %8741, %8706 ]
  %8709 = phi i32 [ 0, %8631 ], [ %8742, %8706 ]
  %8710 = mul i32 %8709, 2
  %8711 = add i32 0, %8710
  %8712 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8711
  %8713 = load float, float* %8712, align 4
  %8714 = mul i32 %8709, 2
  %8715 = add i32 1, %8714
  %8716 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8715
  %8717 = load float, float* %8716, align 4
  %8718 = fmul fast float %8701, %8713
  %8719 = call float @dx.op.tertiary.f32(i32 46, float %8717, float %8704, float %8718)  ; FMad(a,b,c)
  %8720 = fmul fast float %8713, %8702
  %8721 = call float @dx.op.tertiary.f32(i32 46, float %8717, float %8705, float %8720)  ; FMad(a,b,c)
  %8722 = fadd fast float %8719, %8694
  %8723 = fadd fast float %8721, %8695
  %8724 = fmul fast float %8722, %8640
  %8725 = fmul fast float %8723, %8640
  %8726 = call float @dx.op.binary.f32(i32 35, float %8724, float %8636)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 35, float %8725, float %8636)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8726, float %8637)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8727, float %8637)  ; FMin(a,b)
  %8730 = fadd fast float %8728, %8634
  %8731 = fadd fast float %8729, %8635
  %8732 = uitofp i32 %8671 to float
  %8733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8730, float %8731, float %8732, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8734 = extractvalue %dx.types.ResRet.f32 %8733, 0
  %8735 = fsub fast float %8734, %8697
  %8736 = fsub fast float %8735, %8644
  %8737 = fcmp fast ogt float %8736, 0.000000e+00
  %8738 = select i1 %8737, float 1.000000e+00, float 0.000000e+00
  %8739 = fadd fast float %8738, %8707
  %8740 = select i1 %8737, float %8736, float 0.000000e+00
  %8741 = fadd fast float %8740, %8708
  %8742 = add nuw nsw i32 %8709, 1
  %8743 = icmp eq i32 %8742, 8
  br i1 %8743, label %8744, label %8706

; <label>:8744                                    ; preds = %8706
  %8745 = fdiv fast float 1.000000e+00, %8739
  %8746 = fmul fast float %8745, %8741
  %8747 = fdiv fast float 1.000000e+00, %8697
  %8748 = fmul fast float %8746, %8747
  %8749 = call float @dx.op.unary.f32(i32 7, float %8748)  ; Saturate(value)
  %8750 = call float @dx.op.binary.f32(i32 35, float %8749, float 0.000000e+00)  ; FMax(a,b)
  %8751 = fmul fast float %8739, 1.250000e-01
  %8752 = call float @dx.op.unary.f32(i32 7, float %8751)  ; Saturate(value)
  %8753 = fmul fast float %8752, 2.000000e+00
  %8754 = fadd fast float %8753, -1.000000e+00
  %8755 = fcmp fast ogt float %8754, 0.000000e+00
  %8756 = fcmp fast olt float %8754, 0.000000e+00
  %8757 = zext i1 %8755 to i32
  %8758 = zext i1 %8756 to i32
  %8759 = sub nsw i32 %8757, %8758
  %8760 = sitofp i32 %8759 to float
  %8761 = fmul fast float %8760, %8754
  %8762 = fsub fast float 1.000000e+00, %8761
  %8763 = fmul fast float %8762, %8762
  %8764 = fmul fast float %8763, %8762
  %8765 = fsub fast float %8762, %8764
  %8766 = fmul fast float %8765, %8750
  %8767 = fsub fast float 1.000000e+00, %8764
  %8768 = fsub fast float %8767, %8766
  %8769 = fmul fast float %8760, 5.000000e-01
  %8770 = fmul fast float %8769, %8768
  %8771 = fsub fast float -5.000000e-01, %8770
  %8772 = fmul fast float %8771, %8605
  %8773 = fadd fast float %8772, 1.000000e+00
  %8774 = fmul fast float %8773, %8617
  br label %8775

; <label>:8775                                    ; preds = %8744, %8629
  %8776 = phi float [ %8774, %8744 ], [ %8617, %8629 ]
  %8777 = call float @dx.op.binary.f32(i32 36, float %8776, float %8776)  ; FMin(a,b)
  %8778 = call float @dx.op.binary.f32(i32 36, float %8776, float %8777)  ; FMin(a,b)
  %8779 = fcmp fast ogt float %8778, 0.000000e+00
  br i1 %8779, label %8780, label %8621, !dx.controlflow.hints !139

; <label>:8780                                    ; preds = %8775
  %8781 = fmul fast float %8776, %8539
  %8782 = fmul fast float %8776, %8540
  %8783 = fmul fast float %8776, %8541
  %8784 = fsub fast float %8523, %4986
  %8785 = fcmp fast ogt float %8784, 0.000000e+00
  %8786 = fsub fast float %208, %4986
  %8787 = fcmp fast ogt float %8786, 0.000000e+00
  %8788 = xor i1 %8787, %8785
  %8789 = fsub fast float %4986, %8523
  %8790 = fmul fast float %8789, 2.000000e+00
  %8791 = fadd fast float %8790, %8523
  %8792 = select i1 %8788, float %8523, float %8791
  %8793 = fsub fast float %8792, %208
  %8794 = call float @dx.op.dot3.f32(i32 55, float %8549, float %8550, float %8793, float %8549, float %8550, float %8793)  ; Dot3(ax,ay,az,bx,by,bz)
  %8795 = call float @dx.op.unary.f32(i32 25, float %8794)  ; Rsqrt(value)
  %8796 = fmul fast float %8795, %8549
  %8797 = fmul fast float %8795, %8550
  %8798 = fmul fast float %8795, %8793
  %8799 = fsub fast float %4986, %208
  %8800 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8799)  ; Dot3(ax,ay,az,bx,by,bz)
  %8801 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8796, float %8797, float %8798)  ; Dot3(ax,ay,az,bx,by,bz)
  %8802 = fdiv fast float 1.000000e+00, %8801
  %8803 = fmul fast float %8802, %8800
  %8804 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8786, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8805 = fcmp fast ogt float %8804, 0.000000e+00
  %8806 = fcmp fast olt float %8804, 0.000000e+00
  %8807 = zext i1 %8805 to i32
  %8808 = zext i1 %8806 to i32
  %8809 = sub nsw i32 %8807, %8808
  %8810 = sitofp i32 %8809 to float
  %8811 = fsub fast float %8792, %4986
  %8812 = call float @dx.op.dot3.f32(i32 55, float %8549, float %8550, float %8811, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8813 = fcmp fast ogt float %8812, 0.000000e+00
  %8814 = fcmp fast olt float %8812, 0.000000e+00
  %8815 = zext i1 %8813 to i32
  %8816 = zext i1 %8814 to i32
  %8817 = sub nsw i32 %8815, %8816
  %8818 = sitofp i32 %8817 to float
  %8819 = fcmp fast une float %8810, %8818
  br i1 %8819, label %8820, label %8830

; <label>:8820                                    ; preds = %8780
  %8821 = fmul fast float %8803, %8798
  %8822 = fmul fast float %8803, %8797
  %8823 = fmul fast float %8803, %8796
  %8824 = fmul fast float %8823, %8823
  %8825 = fmul fast float %8822, %8822
  %8826 = fadd fast float %8824, %8825
  %8827 = fmul fast float %8821, %8821
  %8828 = fadd fast float %8826, %8827
  %8829 = call float @dx.op.unary.f32(i32 24, float %8828)  ; Sqrt(value)
  br label %8842

; <label>:8830                                    ; preds = %8780
  %8831 = icmp slt i32 %8809, 0
  br i1 %8831, label %8832, label %8842

; <label>:8832                                    ; preds = %8830
  %8833 = fsub fast float %206, %8521
  %8834 = fsub fast float %207, %8522
  %8835 = fsub fast float %208, %8792
  %8836 = fmul fast float %8833, %8833
  %8837 = fmul fast float %8834, %8834
  %8838 = fadd fast float %8836, %8837
  %8839 = fmul fast float %8835, %8835
  %8840 = fadd fast float %8838, %8839
  %8841 = call float @dx.op.unary.f32(i32 24, float %8840)  ; Sqrt(value)
  br label %8842

; <label>:8842                                    ; preds = %8832, %8830, %8820
  %8843 = phi float [ %8829, %8820 ], [ %8841, %8832 ], [ 0.000000e+00, %8830 ]
  %8844 = and i1 %8787, %8785
  %8845 = fsub fast float -0.000000e+00, %8843
  %8846 = select i1 %8844, float -0.000000e+00, float %8845
  %8847 = fmul fast float %4983, 0x3FF7154760000000
  %8848 = fmul fast float %8847, %8846
  %8849 = fmul fast float %4984, 0x3FF7154760000000
  %8850 = fmul fast float %8849, %8846
  %8851 = fmul fast float %4985, 0x3FF7154760000000
  %8852 = fmul fast float %8851, %8846
  %8853 = call float @dx.op.unary.f32(i32 21, float %8848)  ; Exp(value)
  %8854 = call float @dx.op.unary.f32(i32 21, float %8850)  ; Exp(value)
  %8855 = call float @dx.op.unary.f32(i32 21, float %8852)  ; Exp(value)
  %8856 = call float @dx.op.unary.f32(i32 7, float %8853)  ; Saturate(value)
  %8857 = call float @dx.op.unary.f32(i32 7, float %8854)  ; Saturate(value)
  %8858 = call float @dx.op.unary.f32(i32 7, float %8855)  ; Saturate(value)
  %8859 = fmul fast float %8781, %8856
  %8860 = fmul fast float %8782, %8857
  %8861 = fmul fast float %8783, %8858
  %8862 = fsub fast float %8555, %5775
  %8863 = fsub fast float %8556, %5774
  %8864 = fsub fast float %8557, %5773
  %8865 = call float @dx.op.dot3.f32(i32 55, float %8862, float %8863, float %8864, float %8862, float %8863, float %8864)  ; Dot3(ax,ay,az,bx,by,bz)
  %8866 = call float @dx.op.unary.f32(i32 25, float %8865)  ; Rsqrt(value)
  %8867 = fmul fast float %8866, %8862
  %8868 = fmul fast float %8866, %8863
  %8869 = fmul fast float %8866, %8864
  %8870 = call float @dx.op.dot3.f32(i32 55, float %8555, float %8556, float %8557, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %8871 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5771, float %5770, float %8867, float %8868, float %8869)  ; Dot3(ax,ay,az,bx,by,bz)
  %8872 = call float @dx.op.unary.f32(i32 7, float %8870)  ; Saturate(value)
  %8873 = fmul fast float %8872, %8562
  %8874 = bitcast i32 %5814 to float
  %8875 = fmul fast float %8872, %8872
  %8876 = fmul fast float %8875, %8874
  %8877 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8878 = fmul fast float %8873, %8877
  %8879 = bitcast float %8552 to i32
  %8880 = ashr i32 %8879, 1
  %8881 = sub nsw i32 1597463007, %8880
  %8882 = bitcast i32 %8881 to float
  %8883 = fmul fast float %8882, %8549
  %8884 = fmul fast float %8882, %8550
  %8885 = fmul fast float %8882, %8551
  %8886 = fsub fast float %8883, %5775
  %8887 = fsub fast float %8884, %5774
  %8888 = fsub fast float %8885, %5773
  %8889 = call float @dx.op.dot3.f32(i32 55, float %8886, float %8887, float %8888, float %8886, float %8887, float %8888)  ; Dot3(ax,ay,az,bx,by,bz)
  %8890 = call float @dx.op.unary.f32(i32 25, float %8889)  ; Rsqrt(value)
  %8891 = fmul fast float %8886, %8890
  %8892 = fmul fast float %8887, %8890
  %8893 = fmul fast float %8888, %8890
  %8894 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %8891, float %8892, float %8893)  ; Dot3(ax,ay,az,bx,by,bz)
  %8895 = fmul fast float %8894, %8894
  %8896 = call float @dx.op.unary.f32(i32 6, float %8870)  ; FAbs(value)
  %8897 = fsub fast float 1.000000e+00, %5808
  %8898 = fmul fast float %5790, %5790
  %8899 = fmul fast float %8898, %8897
  %8900 = fadd fast float %8899, %5808
  %8901 = bitcast float %8900 to i32
  %8902 = ashr i32 %8901, 1
  %8903 = add nsw i32 %8902, 532487669
  %8904 = bitcast i32 %8903 to float
  %8905 = fadd fast float %8904, %5790
  %8906 = fmul fast float %5808, %8895
  %8907 = fsub fast float 1.000000e+00, %8895
  %8908 = fadd fast float %8907, %8906
  %8909 = fmul fast float %8896, %8896
  %8910 = fmul fast float %8909, %8897
  %8911 = fadd fast float %8910, %5808
  %8912 = bitcast float %8911 to i32
  %8913 = ashr i32 %8912, 1
  %8914 = add nsw i32 %8913, 532487669
  %8915 = bitcast i32 %8914 to float
  %8916 = fadd fast float %8915, %8896
  %8917 = fmul fast float %8908, %8908
  %8918 = fmul fast float %8917, %8905
  %8919 = fmul fast float %8918, %8916
  %8920 = fdiv fast float 1.000000e+00, %8919
  %8921 = bitcast float %5808 to i32
  %8922 = sitofp i32 %8921 to float
  %8923 = fmul fast float %8922, 0x3FE7F73180000000
  %8924 = fadd fast float %8923, 0x41AFE27C40000000
  %8925 = fptosi float %8924 to i32
  %8926 = bitcast i32 %8925 to float
  %8927 = fmul fast float %8518, 0x3FD80E9D60000000
  %8928 = fmul fast float %8927, %8882
  %8929 = fadd fast float %8926, %8928
  %8930 = bitcast float %8929 to i32
  %8931 = sub nsw i32 2129859010, %8930
  %8932 = bitcast i32 %8931 to float
  %8933 = fmul fast float %5808, %8920
  %8934 = fmul fast float %8933, %8926
  %8935 = fmul fast float %8934, %8932
  %8936 = fmul fast float %6050, 0x3FF9999980000000
  %8937 = fsub fast float 5.000000e+00, %8936
  %8938 = call float @dx.op.unary.f32(i32 6, float %8871)  ; FAbs(value)
  %8939 = fsub fast float 1.000000e+00, %8938
  %8940 = fmul fast float %6050, 0x41D9660740000000
  %8941 = fadd fast float %8940, 0xC1EFBF8940000000
  %8942 = bitcast float %8939 to i32
  %8943 = sitofp i32 %8942 to float
  %8944 = fmul fast float %8943, %8937
  %8945 = fadd fast float %8941, %8944
  %8946 = fptosi float %8945 to i32
  %8947 = bitcast i32 %8946 to float
  %8948 = fsub fast float 1.000000e+00, %5779
  %8949 = fsub fast float 1.000000e+00, %5780
  %8950 = fsub fast float 1.000000e+00, %5788
  %8951 = fmul fast float %8947, %8948
  %8952 = fmul fast float %8947, %8949
  %8953 = fmul fast float %8947, %8950
  %8954 = fadd fast float %8951, %5779
  %8955 = fadd fast float %8952, %5780
  %8956 = fadd fast float %8953, %5788
  br i1 %6073, label %8957, label %8980

; <label>:8957                                    ; preds = %8842
  %8958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4578, float %8938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8959 = extractvalue %dx.types.ResRet.f32 %8958, 0
  %8960 = extractvalue %dx.types.ResRet.f32 %8958, 1
  %8961 = extractvalue %dx.types.ResRet.f32 %8958, 2
  %8962 = fadd fast float %8959, -5.000000e-01
  %8963 = fadd fast float %8960, -5.000000e-01
  %8964 = fadd fast float %8961, -5.000000e-01
  %8965 = fmul fast float %5779, 4.000000e+00
  %8966 = fmul fast float %8965, %8948
  %8967 = fmul fast float %8966, %8962
  %8968 = fmul fast float %5780, 4.000000e+00
  %8969 = fmul fast float %8968, %8949
  %8970 = fmul fast float %8969, %8963
  %8971 = fmul fast float %5788, 4.000000e+00
  %8972 = fmul fast float %8971, %8950
  %8973 = fmul fast float %8972, %8964
  %8974 = fadd fast float %8967, %8954
  %8975 = fadd fast float %8970, %8955
  %8976 = fadd fast float %8973, %8956
  %8977 = call float @dx.op.unary.f32(i32 7, float %8974)  ; Saturate(value)
  %8978 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8979 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  br label %8980

; <label>:8980                                    ; preds = %8957, %8842
  %8981 = phi float [ %8977, %8957 ], [ %8954, %8842 ]
  %8982 = phi float [ %8978, %8957 ], [ %8955, %8842 ]
  %8983 = phi float [ %8979, %8957 ], [ %8956, %8842 ]
  %8984 = fmul fast float %8870, 9.843750e-01
  %8985 = fadd fast float %8984, 7.812500e-03
  %8986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8985, float %6054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8987 = extractvalue %dx.types.ResRet.f32 %8986, 0
  %8988 = extractvalue %dx.types.ResRet.f32 %8986, 1
  %8989 = extractvalue %dx.types.ResRet.f32 %8986, 2
  %8990 = extractvalue %dx.types.ResRet.f32 %8986, 3
  %8991 = fsub fast float %8989, %8987
  %8992 = fsub fast float %8990, %8988
  %8993 = fmul fast float %8991, %6060
  %8994 = fmul fast float %8992, %6060
  %8995 = fadd fast float %8993, %8987
  %8996 = fadd fast float %8994, %8988
  %8997 = fmul fast float %8995, %5779
  %8998 = fmul fast float %8995, %5780
  %8999 = fmul fast float %8995, %5788
  %9000 = fadd fast float %8997, %8996
  %9001 = fadd fast float %8998, %8996
  %9002 = fadd fast float %8999, %8996
  br i1 %6073, label %9003, label %9026

; <label>:9003                                    ; preds = %8980
  %9004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4578, float %8870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9005 = extractvalue %dx.types.ResRet.f32 %9004, 0
  %9006 = extractvalue %dx.types.ResRet.f32 %9004, 1
  %9007 = extractvalue %dx.types.ResRet.f32 %9004, 2
  %9008 = fadd fast float %9005, -5.000000e-01
  %9009 = fadd fast float %9006, -5.000000e-01
  %9010 = fadd fast float %9007, -5.000000e-01
  %9011 = fmul fast float %5779, 4.000000e+00
  %9012 = fmul fast float %9011, %8948
  %9013 = fmul fast float %9012, %9008
  %9014 = fmul fast float %5780, 4.000000e+00
  %9015 = fmul fast float %9014, %8949
  %9016 = fmul fast float %9015, %9009
  %9017 = fmul fast float %5788, 4.000000e+00
  %9018 = fmul fast float %9017, %8950
  %9019 = fmul fast float %9018, %9010
  %9020 = fadd fast float %9013, %9000
  %9021 = fadd fast float %9016, %9001
  %9022 = fadd fast float %9019, %9002
  %9023 = call float @dx.op.unary.f32(i32 7, float %9020)  ; Saturate(value)
  %9024 = call float @dx.op.unary.f32(i32 7, float %9021)  ; Saturate(value)
  %9025 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  br label %9026

; <label>:9026                                    ; preds = %9003, %8980
  %9027 = phi float [ %9023, %9003 ], [ %9000, %8980 ]
  %9028 = phi float [ %9024, %9003 ], [ %9001, %8980 ]
  %9029 = phi float [ %9025, %9003 ], [ %9002, %8980 ]
  %9030 = call float @dx.op.binary.f32(i32 35, float %9028, float %9029)  ; FMax(a,b)
  %9031 = call float @dx.op.binary.f32(i32 35, float %9027, float %9030)  ; FMax(a,b)
  %9032 = fsub fast float 1.000000e+00, %9031
  %9033 = fmul fast float %8981, %8935
  %9034 = fmul fast float %8982, %8935
  %9035 = fmul fast float %8983, %8935
  %9036 = fsub fast float 1.000000e+00, %8871
  %9037 = bitcast float %9036 to i32
  %9038 = sitofp i32 %9037 to float
  %9039 = fmul fast float %9038, 5.000000e+00
  %9040 = fadd fast float %9039, 0xC1EFBF8940000000
  %9041 = fptosi float %9040 to i32
  %9042 = bitcast i32 %9041 to float
  %9043 = fmul fast float %9042, %4579
  %9044 = fmul fast float %9032, %9043
  %9045 = fmul fast float %9044, %6615
  %9046 = fmul fast float %9044, %6616
  %9047 = fmul fast float %9044, %6617
  %9048 = fadd fast float %9045, %9033
  %9049 = fadd fast float %9046, %9034
  %9050 = fadd fast float %9047, %9035
  %9051 = fmul fast float %8859, %4575
  %9052 = fmul fast float %9051, %8878
  %9053 = fmul fast float %9052, %9032
  %9054 = fmul fast float %8860, %4575
  %9055 = fmul fast float %9054, %8878
  %9056 = fmul fast float %9055, %9032
  %9057 = fmul fast float %8861, %4575
  %9058 = fmul fast float %9057, %8878
  %9059 = fmul fast float %9058, %9032
  %9060 = fadd fast float %9053, %8492
  %9061 = fadd fast float %9056, %8493
  %9062 = fadd fast float %9059, %8494
  %9063 = fmul fast float %9052, %9048
  %9064 = fmul fast float %9055, %9049
  %9065 = fmul fast float %9058, %9050
  %9066 = fadd fast float %9063, %8489
  %9067 = fadd fast float %9064, %8490
  %9068 = fadd fast float %9065, %8491
  br label %8621

; <label>:9069                                    ; preds = %8621
  br label %9070

; <label>:9070                                    ; preds = %9069, %8455
  %9071 = phi float [ %8457, %8455 ], [ %8622, %9069 ]
  %9072 = phi float [ %8458, %8455 ], [ %8623, %9069 ]
  %9073 = phi float [ %8459, %8455 ], [ %8624, %9069 ]
  %9074 = phi float [ %8460, %8455 ], [ %8625, %9069 ]
  %9075 = phi float [ %8461, %8455 ], [ %8626, %9069 ]
  %9076 = phi float [ %8462, %8455 ], [ %8627, %9069 ]
  %9077 = add i32 %8456, 1
  %9078 = icmp ugt i32 %9077, %8452
  br i1 %9078, label %9079, label %8455

; <label>:9079                                    ; preds = %9070
  br label %9080

; <label>:9080                                    ; preds = %9079, %8405, %8395
  %9081 = phi float [ %8396, %8395 ], [ %8396, %8405 ], [ %9071, %9079 ]
  %9082 = phi float [ %8397, %8395 ], [ %8397, %8405 ], [ %9072, %9079 ]
  %9083 = phi float [ %8398, %8395 ], [ %8398, %8405 ], [ %9073, %9079 ]
  %9084 = phi float [ %8399, %8395 ], [ %8399, %8405 ], [ %9074, %9079 ]
  %9085 = phi float [ %8400, %8395 ], [ %8400, %8405 ], [ %9075, %9079 ]
  %9086 = phi float [ %8401, %8395 ], [ %8401, %8405 ], [ %9076, %9079 ]
  %9087 = fmul fast float %4575, %4575
  %9088 = fmul fast float %9087, %6641
  %9089 = fmul fast float %9087, %6642
  %9090 = fmul fast float %9087, %6643
  %9091 = fadd fast float %9088, 1.000000e+00
  %9092 = fadd fast float %9089, 1.000000e+00
  %9093 = fadd fast float %9090, 1.000000e+00
  %9094 = call float @dx.op.dot3.f32(i32 55, float %9091, float %9092, float %9093, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9095 = fsub fast float 1.000000e+00, %9094
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9098 = fmul fast float %9097, %6647
  %9099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9100 = extractvalue %dx.types.CBufRet.f32 %9099, 3
  %9101 = fsub fast float 1.000000e+00, %4583
  %9102 = call float @dx.op.unary.f32(i32 7, float %9101)  ; Saturate(value)
  %9103 = fadd fast float %9086, %4581
  %9104 = fmul fast float %9103, %4583
  %9105 = fmul fast float %9102, %9100
  %9106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9107 = extractvalue %dx.types.CBufRet.f32 %9106, 3
  %9108 = fmul fast float %9084, %5776
  %9109 = fmul fast float %9085, %5777
  %9110 = fmul fast float %9086, %5778
  %9111 = fcmp fast ogt float %110, %241
  %9112 = and i1 %9111, %4989
  %9113 = or i1 %4995, %9112
  %9114 = icmp eq i32 %4988, 2
  %9115 = fcmp fast ole float %110, %241
  %9116 = and i1 %9115, %9114
  %9117 = or i1 %9116, %9113
  br i1 %9112, label %9118, label %9375

; <label>:9118                                    ; preds = %9080
  %9119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9119, 2
  %9121 = extractvalue %dx.types.CBufRet.f32 %9119, 3
  %9122 = fmul fast float %9120, %123
  %9123 = fmul fast float %9121, %124
  %9124 = call float @dx.op.unary.f32(i32 7, float %9122)  ; Saturate(value)
  %9125 = call float @dx.op.unary.f32(i32 7, float %9123)  ; Saturate(value)
  %9126 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9124, float %9125, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9127 = extractvalue %dx.types.ResRet.f32 %9126, 0
  %9128 = extractvalue %dx.types.ResRet.f32 %9126, 1
  %9129 = extractvalue %dx.types.ResRet.f32 %9126, 2
  %9130 = extractvalue %dx.types.ResRet.f32 %9126, 3
  %9131 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9124, float %9125, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9132 = extractvalue %dx.types.ResRet.f32 %9131, 0
  %9133 = extractvalue %dx.types.ResRet.f32 %9131, 1
  %9134 = extractvalue %dx.types.ResRet.f32 %9131, 2
  %9135 = extractvalue %dx.types.ResRet.f32 %9131, 3
  %9136 = call float @dx.op.binary.f32(i32 35, float %9128, float %9129)  ; FMax(a,b)
  %9137 = call float @dx.op.binary.f32(i32 35, float %9127, float %9136)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 35, float %9137, float %9130)  ; FMax(a,b)
  %9139 = call float @dx.op.binary.f32(i32 36, float %9133, float %9134)  ; FMin(a,b)
  %9140 = call float @dx.op.binary.f32(i32 36, float %9132, float %9139)  ; FMin(a,b)
  %9141 = call float @dx.op.binary.f32(i32 36, float %9140, float %9135)  ; FMin(a,b)
  %9142 = fmul fast float %9138, 2.550000e+02
  %9143 = fadd fast float %9142, 0x3F70101020000000
  %9144 = fptoui float %9143 to i32
  %9145 = fmul fast float %9141, 2.550000e+02
  %9146 = fadd fast float %9145, 0x3F70101020000000
  %9147 = fptoui float %9146 to i32
  %9148 = icmp ult i32 %9144, %9147
  br i1 %9148, label %9149, label %9317

; <label>:9149                                    ; preds = %9118
  %9150 = fcmp fast ogt float %109, 9.843750e-01
  %9151 = fadd fast float %110, -4.000000e+00
  %9152 = select i1 %9150, float -4.000000e+00, float %9151
  %9153 = call float @dx.op.binary.f32(i32 35, float %9152, float 0.000000e+00)  ; FMax(a,b)
  %9154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9155 = extractvalue %dx.types.CBufRet.f32 %9154, 0
  %9156 = fadd fast float %9155, %9153
  %9157 = extractvalue %dx.types.CBufRet.f32 %9154, 2
  %9158 = fmul fast float %9156, %9157
  %9159 = call float @dx.op.unary.f32(i32 23, float %9158)  ; Log(value)
  %9160 = extractvalue %dx.types.CBufRet.f32 %9154, 3
  %9161 = fmul fast float %9160, %9159
  %9162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9163 = extractvalue %dx.types.CBufRet.f32 %9162, 2
  %9164 = fmul fast float %9161, %9163
  %9165 = call float @dx.op.unary.f32(i32 7, float %9164)  ; Saturate(value)
  %9166 = uitofp i32 %9144 to float
  %9167 = uitofp i32 %9147 to float
  %9168 = fadd fast float %9166, 5.000000e-01
  %9169 = fadd fast float %9167, 5.000000e-01
  %9170 = fmul fast float %9163, %9168
  %9171 = fmul fast float %9163, %9169
  %9172 = fadd fast float %9170, 0x3F0FFB4800000000
  %9173 = fadd fast float %9171, 0xBF0FFB4800000000
  %9174 = call float @dx.op.binary.f32(i32 35, float %9165, float %9172)  ; FMax(a,b)
  %9175 = call float @dx.op.binary.f32(i32 36, float %9174, float %9173)  ; FMin(a,b)
  %9176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9176, 1
  %9178 = extractvalue %dx.types.CBufRet.f32 %9176, 2
  %9179 = extractvalue %dx.types.CBufRet.f32 %9176, 0
  %9180 = fmul fast float %9177, %9175
  %9181 = fadd fast float %9179, %9180
  %9182 = fadd fast float %9179, %9178
  %9183 = fsub fast float %9177, %9178
  %9184 = fadd fast float %9183, %9179
  %9185 = call float @dx.op.binary.f32(i32 35, float %9181, float %9182)  ; FMax(a,b)
  %9186 = call float @dx.op.binary.f32(i32 36, float %9185, float %9184)  ; FMin(a,b)
  %9187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9124, float %9125, float %9186, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9188 = extractvalue %dx.types.ResRet.f32 %9187, 0
  %9189 = extractvalue %dx.types.ResRet.f32 %9187, 1
  %9190 = extractvalue %dx.types.ResRet.f32 %9187, 2
  %9191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9192 = extractvalue %dx.types.CBufRet.i32 %9191, 0
  %9193 = extractvalue %dx.types.CBufRet.i32 %9191, 1
  %9194 = uitofp i32 %9192 to float
  %9195 = uitofp i32 %9193 to float
  %9196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9196, 0
  %9198 = extractvalue %dx.types.CBufRet.f32 %9196, 1
  %9199 = fmul fast float %9194, %9124
  %9200 = fmul fast float %9195, %9125
  %9201 = fadd fast float %9199, -5.000000e-01
  %9202 = fadd fast float %9200, -5.000000e-01
  %9203 = call float @dx.op.unary.f32(i32 22, float %9201)  ; Frc(value)
  %9204 = call float @dx.op.unary.f32(i32 22, float %9202)  ; Frc(value)
  %9205 = fmul fast float %9203, %9203
  %9206 = fmul fast float %9205, %9203
  %9207 = fsub fast float 3.000000e+00, %9203
  %9208 = fmul fast float %9205, %9207
  %9209 = fmul fast float %9203, 3.000000e+00
  %9210 = fmul fast float %9206, 3.000000e+00
  %9211 = fmul fast float %9205, 6.000000e+00
  %9212 = fsub fast float %9210, %9211
  %9213 = fadd fast float %9212, 4.000000e+00
  %9214 = fmul fast float %9213, 0x3FC5555560000000
  %9215 = fmul fast float %9206, -3.000000e+00
  %9216 = fadd fast float %9205, %9203
  %9217 = fmul fast float %9216, 3.000000e+00
  %9218 = fadd fast float %9215, 1.000000e+00
  %9219 = fadd fast float %9218, %9217
  %9220 = fmul fast float %9206, 0x3FC5555560000000
  %9221 = fmul fast float %9204, %9204
  %9222 = fmul fast float %9221, %9204
  %9223 = fsub fast float 3.000000e+00, %9204
  %9224 = fmul fast float %9221, %9223
  %9225 = fmul fast float %9204, 3.000000e+00
  %9226 = fmul fast float %9222, 3.000000e+00
  %9227 = fmul fast float %9221, 6.000000e+00
  %9228 = fsub fast float %9226, %9227
  %9229 = fadd fast float %9228, 4.000000e+00
  %9230 = fmul fast float %9229, 0x3FC5555560000000
  %9231 = fmul fast float %9222, -3.000000e+00
  %9232 = fadd fast float %9221, %9204
  %9233 = fmul fast float %9232, 3.000000e+00
  %9234 = fadd fast float %9231, 1.000000e+00
  %9235 = fadd fast float %9234, %9233
  %9236 = fmul fast float %9222, 0x3FC5555560000000
  %9237 = fadd fast float %9203, 1.000000e+00
  %9238 = fsub fast float 1.000000e+00, %9209
  %9239 = fadd fast float %9238, %9208
  %9240 = fadd fast float %9239, %9213
  %9241 = fmul fast float %9240, 0x3FC5555560000000
  %9242 = fdiv fast float %9214, %9241
  %9243 = fsub fast float %9237, %9242
  %9244 = fsub fast float 1.000000e+00, %9203
  %9245 = fadd fast float %9219, %9206
  %9246 = fmul fast float %9245, 0x3FC5555560000000
  %9247 = fdiv fast float %9220, %9246
  %9248 = fadd fast float %9244, %9247
  %9249 = fadd fast float %9204, 1.000000e+00
  %9250 = fsub fast float 1.000000e+00, %9225
  %9251 = fadd fast float %9250, %9224
  %9252 = fadd fast float %9251, %9229
  %9253 = fmul fast float %9252, 0x3FC5555560000000
  %9254 = fdiv fast float %9230, %9253
  %9255 = fsub fast float %9249, %9254
  %9256 = fsub fast float 1.000000e+00, %9204
  %9257 = fadd fast float %9235, %9222
  %9258 = fmul fast float %9257, 0x3FC5555560000000
  %9259 = fdiv fast float %9236, %9258
  %9260 = fadd fast float %9259, %9256
  %9261 = fmul fast float %9243, %9197
  %9262 = fsub fast float %9124, %9261
  %9263 = fmul fast float %9248, %9197
  %9264 = fadd fast float %9263, %9124
  %9265 = fmul fast float %9260, %9198
  %9266 = fadd fast float %9265, %9125
  %9267 = fmul fast float %9255, %9198
  %9268 = fsub fast float %9125, %9267
  %9269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9262, float %9268, float %9186, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9270 = extractvalue %dx.types.ResRet.f32 %9269, 0
  %9271 = extractvalue %dx.types.ResRet.f32 %9269, 1
  %9272 = extractvalue %dx.types.ResRet.f32 %9269, 2
  %9273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9264, float %9268, float %9186, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9274 = extractvalue %dx.types.ResRet.f32 %9273, 0
  %9275 = extractvalue %dx.types.ResRet.f32 %9273, 1
  %9276 = extractvalue %dx.types.ResRet.f32 %9273, 2
  %9277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9262, float %9266, float %9186, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9278 = extractvalue %dx.types.ResRet.f32 %9277, 0
  %9279 = extractvalue %dx.types.ResRet.f32 %9277, 1
  %9280 = extractvalue %dx.types.ResRet.f32 %9277, 2
  %9281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9264, float %9266, float %9186, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9282 = extractvalue %dx.types.ResRet.f32 %9281, 0
  %9283 = extractvalue %dx.types.ResRet.f32 %9281, 1
  %9284 = extractvalue %dx.types.ResRet.f32 %9281, 2
  %9285 = fsub fast float %9278, %9270
  %9286 = fsub fast float %9279, %9271
  %9287 = fsub fast float %9280, %9272
  %9288 = fmul fast float %9285, %9258
  %9289 = fmul fast float %9286, %9258
  %9290 = fmul fast float %9287, %9258
  %9291 = fadd fast float %9288, %9270
  %9292 = fadd fast float %9289, %9271
  %9293 = fadd fast float %9290, %9272
  %9294 = fsub fast float %9282, %9274
  %9295 = fsub fast float %9283, %9275
  %9296 = fsub fast float %9284, %9276
  %9297 = fmul fast float %9294, %9258
  %9298 = fmul fast float %9295, %9258
  %9299 = fmul fast float %9296, %9258
  %9300 = fsub fast float %9274, %9291
  %9301 = fadd fast float %9300, %9297
  %9302 = fsub fast float %9275, %9292
  %9303 = fadd fast float %9302, %9298
  %9304 = fsub fast float %9276, %9293
  %9305 = fadd fast float %9304, %9299
  %9306 = fmul fast float %9301, %9246
  %9307 = fmul fast float %9303, %9246
  %9308 = fmul fast float %9305, %9246
  %9309 = fadd fast float %9306, %9291
  %9310 = fadd fast float %9307, %9292
  %9311 = fadd fast float %9308, %9293
  %9312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9312, 1
  %9314 = fmul fast float %9309, %9313
  %9315 = fmul fast float %9310, %9313
  %9316 = fmul fast float %9311, %9313
  br label %9317

; <label>:9317                                    ; preds = %9149, %9118
  %9318 = phi float [ %9188, %9149 ], [ 1.000000e+00, %9118 ]
  %9319 = phi float [ %9189, %9149 ], [ 1.000000e+00, %9118 ]
  %9320 = phi float [ %9190, %9149 ], [ 1.000000e+00, %9118 ]
  %9321 = phi float [ %9314, %9149 ], [ 0.000000e+00, %9118 ]
  %9322 = phi float [ %9315, %9149 ], [ 0.000000e+00, %9118 ]
  %9323 = phi float [ %9316, %9149 ], [ 0.000000e+00, %9118 ]
  %9324 = fmul fast float %9321, %9095
  %9325 = fmul fast float %9322, %9095
  %9326 = fmul fast float %9323, %9095
  %9327 = call float @dx.op.dot3.f32(i32 55, float %9318, float %9319, float %9320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9328 = call float @dx.op.dot3.f32(i32 55, float %9324, float %9325, float %9326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9329 = select i1 %278, float %9327, float %9318
  %9330 = select i1 %278, float %9327, float %9319
  %9331 = select i1 %278, float 1.000000e+00, float %9320
  %9332 = select i1 %278, float %9328, float %9324
  %9333 = select i1 %278, float 0.000000e+00, float %9325
  %9334 = select i1 %278, float 0.000000e+00, float %9326
  %9335 = fmul fast float %9329, %9108
  %9336 = fmul fast float %9330, %9109
  %9337 = fmul fast float %9331, %9110
  %9338 = fadd fast float %9335, %9332
  %9339 = fadd fast float %9336, %9333
  %9340 = fadd fast float %9334, %9337
  %9341 = fmul fast float %9329, %9081
  %9342 = fmul fast float %9330, %9082
  %9343 = fmul fast float %9331, %9083
  %9344 = fmul fast float %155, %9120
  %9345 = fmul fast float %157, %9121
  %9346 = fsub fast float 1.000000e+00, %9344
  %9347 = fsub fast float 1.000000e+00, %9345
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 0
  %9350 = extractvalue %dx.types.CBufRet.f32 %9348, 1
  %9351 = extractvalue %dx.types.CBufRet.f32 %9348, 2
  %9352 = fmul fast float %9346, %9349
  %9353 = fmul fast float %9346, %9350
  %9354 = fmul fast float %9346, %9351
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 0
  %9357 = extractvalue %dx.types.CBufRet.f32 %9355, 1
  %9358 = extractvalue %dx.types.CBufRet.f32 %9355, 2
  %9359 = fmul fast float %9347, %9356
  %9360 = fmul fast float %9347, %9357
  %9361 = fmul fast float %9347, %9358
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 0
  %9364 = extractvalue %dx.types.CBufRet.f32 %9362, 1
  %9365 = extractvalue %dx.types.CBufRet.f32 %9362, 2
  %9366 = fadd fast float %9359, %9363
  %9367 = fadd fast float %9366, %9352
  %9368 = fadd fast float %9360, %9364
  %9369 = fadd fast float %9368, %9353
  %9370 = fadd fast float %9361, %9365
  %9371 = fadd fast float %9370, %9354
  %9372 = fmul fast float %9367, %241
  %9373 = fmul fast float %9369, %241
  %9374 = fmul fast float %9371, %241
  br label %9375

; <label>:9375                                    ; preds = %9317, %9080
  %9376 = phi float [ %9372, %9317 ], [ %206, %9080 ]
  %9377 = phi float [ %9373, %9317 ], [ %207, %9080 ]
  %9378 = phi float [ %9374, %9317 ], [ %208, %9080 ]
  %9379 = phi float [ %241, %9317 ], [ %110, %9080 ]
  %9380 = phi float [ %9338, %9317 ], [ %9108, %9080 ]
  %9381 = phi float [ %9339, %9317 ], [ %9109, %9080 ]
  %9382 = phi float [ %9340, %9317 ], [ %9110, %9080 ]
  %9383 = phi float [ %9341, %9317 ], [ %9081, %9080 ]
  %9384 = phi float [ %9342, %9317 ], [ %9082, %9080 ]
  %9385 = phi float [ %9343, %9317 ], [ %9083, %9080 ]
  %9386 = phi float [ %9318, %9317 ], [ 1.000000e+00, %9080 ]
  br i1 %9117, label %10541, label %9387

; <label>:9387                                    ; preds = %9375
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 0
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 1
  %9391 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9392 = extractvalue %dx.types.CBufRet.f32 %9388, 3
  %9393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9394 = extractvalue %dx.types.CBufRet.f32 %9393, 0
  %9395 = extractvalue %dx.types.CBufRet.f32 %9393, 1
  %9396 = extractvalue %dx.types.CBufRet.f32 %9393, 2
  %9397 = extractvalue %dx.types.CBufRet.f32 %9393, 3
  %9398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9399 = extractvalue %dx.types.CBufRet.f32 %9398, 0
  %9400 = extractvalue %dx.types.CBufRet.f32 %9398, 1
  %9401 = extractvalue %dx.types.CBufRet.f32 %9398, 2
  %9402 = extractvalue %dx.types.CBufRet.f32 %9398, 3
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 0
  %9405 = extractvalue %dx.types.CBufRet.f32 %9403, 1
  %9406 = extractvalue %dx.types.CBufRet.f32 %9403, 2
  %9407 = extractvalue %dx.types.CBufRet.f32 %9403, 3
  %9408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9409 = extractvalue %dx.types.CBufRet.f32 %9408, 3
  %9410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9411 = extractvalue %dx.types.CBufRet.f32 %9410, 3
  %9412 = extractvalue %dx.types.CBufRet.f32 %9410, 0
  %9413 = extractvalue %dx.types.CBufRet.f32 %9410, 1
  %9414 = extractvalue %dx.types.CBufRet.f32 %9410, 2
  %9415 = fcmp fast olt float %9414, -5.000000e-01
  %9416 = call float @dx.op.dot3.f32(i32 55, float %9376, float %9377, float %9378, float %9376, float %9377, float %9378)  ; Dot3(ax,ay,az,bx,by,bz)
  %9417 = call float @dx.op.unary.f32(i32 25, float %9416)  ; Rsqrt(value)
  %9418 = fmul fast float %9417, %9416
  %9419 = fmul fast float %9417, %9376
  %9420 = fmul fast float %9417, %9377
  %9421 = fmul fast float %9417, %9378
  %9422 = fadd fast float %9418, %9392
  %9423 = call float @dx.op.dot3.f32(i32 55, float %9419, float %9420, float %9421, float %9389, float %9390, float %9391)  ; Dot3(ax,ay,az,bx,by,bz)
  %9424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9425 = extractvalue %dx.types.CBufRet.i32 %9424, 1
  %9426 = and i32 %9425, 1
  %9427 = icmp ne i32 %9426, 0
  %9428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9429 = extractvalue %dx.types.CBufRet.f32 %9428, 2
  %9430 = fcmp fast ogt float %9429, 0.000000e+00
  %9431 = and i1 %9427, %9430
  br i1 %9431, label %9432, label %9838, !dx.controlflow.hints !140

; <label>:9432                                    ; preds = %9387
  %9433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9433, 3
  %9435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9435, 2
  %9437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9438 = extractvalue %dx.types.CBufRet.f32 %9437, 2
  %9439 = fsub fast float %9436, %9438
  %9440 = and i32 %9425, 2
  %9441 = extractvalue %dx.types.CBufRet.i32 %9424, 0
  %9442 = call i32 @dx.op.binary.i32(i32 40, i32 %9441, i32 3)  ; UMin(a,b)
  %9443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9444 = extractvalue %dx.types.CBufRet.f32 %9443, 0
  %9445 = extractvalue %dx.types.CBufRet.f32 %9443, 1
  %9446 = extractvalue %dx.types.CBufRet.f32 %9437, 0
  %9447 = extractvalue %dx.types.CBufRet.f32 %9437, 1
  %9448 = fsub fast float %9444, %9446
  %9449 = fsub fast float %9445, %9447
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 0
  %9452 = fcmp fast ogt float %9451, 0.000000e+00
  %9453 = fsub fast float -0.000000e+00, %9448
  %9454 = fsub fast float -0.000000e+00, %9449
  %9455 = call float @dx.op.dot2.f32(i32 54, float %9419, float %9420, float %9419, float %9420)  ; Dot2(ax,ay,bx,by)
  %9456 = call float @dx.op.dot2.f32(i32 54, float %9419, float %9420, float %9453, float %9454)  ; Dot2(ax,ay,bx,by)
  %9457 = fmul fast float %9456, 2.000000e+00
  %9458 = call float @dx.op.dot2.f32(i32 54, float %9453, float %9454, float %9453, float %9454)  ; Dot2(ax,ay,bx,by)
  %9459 = fmul fast float %9451, %9451
  %9460 = fsub fast float %9458, %9459
  %9461 = fmul fast float %9457, %9457
  %9462 = fmul fast float %9455, 4.000000e+00
  %9463 = fmul fast float %9462, %9460
  %9464 = fsub fast float %9461, %9463
  %9465 = fcmp fast ogt float %9464, 0.000000e+00
  br i1 %9465, label %9466, label %9481

; <label>:9466                                    ; preds = %9432
  %9467 = fcmp fast ogt float %9457, 0.000000e+00
  %9468 = call float @dx.op.unary.f32(i32 24, float %9464)  ; Sqrt(value)
  %9469 = fsub fast float -0.000000e+00, %9468
  %9470 = select i1 %9467, float %9468, float %9469
  %9471 = fadd fast float %9470, %9457
  %9472 = fmul float %9471, -5.000000e-01
  %9473 = fdiv fast float %9472, %9455
  %9474 = call float @dx.op.binary.f32(i32 35, float %9473, float 0.000000e+00)  ; FMax(a,b)
  %9475 = call float @dx.op.binary.f32(i32 36, float %9418, float %9474)  ; FMin(a,b)
  %9476 = fdiv fast float %9460, %9472
  %9477 = call float @dx.op.binary.f32(i32 35, float %9476, float 0.000000e+00)  ; FMax(a,b)
  %9478 = call float @dx.op.binary.f32(i32 36, float %9418, float %9477)  ; FMin(a,b)
  %9479 = call float @dx.op.binary.f32(i32 36, float %9475, float %9478)  ; FMin(a,b)
  %9480 = call float @dx.op.binary.f32(i32 35, float %9475, float %9478)  ; FMax(a,b)
  br label %9481

; <label>:9481                                    ; preds = %9466, %9432
  %9482 = phi float [ %9480, %9466 ], [ -1.000000e+00, %9432 ]
  %9483 = phi float [ %9479, %9466 ], [ -1.000000e+00, %9432 ]
  %9484 = phi i1 [ true, %9466 ], [ false, %9432 ]
  %9485 = and i1 %9452, %9484
  br i1 %9485, label %9486, label %9488

; <label>:9486                                    ; preds = %9481
  %9487 = fcmp fast oeq float %9483, %9482
  br i1 %9487, label %9791, label %9489

; <label>:9488                                    ; preds = %9481
  br i1 %9452, label %9791, label %9489

; <label>:9489                                    ; preds = %9488, %9486
  %9490 = phi float [ %9418, %9488 ], [ %9482, %9486 ]
  %9491 = phi float [ 0.000000e+00, %9488 ], [ %9483, %9486 ]
  %9492 = icmp ne i32 %9440, 0
  %9493 = fmul fast float %9490, %9421
  %9494 = fadd fast float %9493, %9434
  %9495 = fmul fast float %9494, %9490
  %9496 = select i1 %9492, float 0.000000e+00, float %9495
  %9497 = fcmp fast oeq float %9421, 0.000000e+00
  %9498 = fdiv fast float %9439, %9421
  %9499 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9498)  ; FMax(a,b)
  %9500 = select i1 %9497, float %9490, float %9499
  %9501 = call float @dx.op.binary.f32(i32 36, float %9490, float %9500)  ; FMin(a,b)
  %9502 = fcmp fast ogt float %9421, 0.000000e+00
  %9503 = fcmp fast olt float %9439, 0.000000e+00
  br i1 %9502, label %9504, label %9561

; <label>:9504                                    ; preds = %9489
  %9505 = icmp eq i32 %9440, 0
  br i1 %9503, label %9506, label %9550

; <label>:9506                                    ; preds = %9504
  %9507 = select i1 %9505, float %9490, float 0.000000e+00
  %9508 = fsub fast float -0.000000e+00, %9507
  %9509 = call float @dx.op.unary.f32(i32 6, float %9508)  ; FAbs(value)
  %9510 = fmul fast float %9507, %9421
  %9511 = fadd fast float %9510, %9434
  %9512 = fmul fast float %9509, %9511
  %9513 = fsub fast float %9496, %9512
  %9514 = fsub fast float %9490, %9509
  %9515 = select i1 %9505, float %9514, float 0.000000e+00
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 0
  %9518 = extractvalue %dx.types.CBufRet.f32 %9516, 1
  %9519 = extractvalue %dx.types.CBufRet.f32 %9516, 2
  %9520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.f32 %9520, 0
  %9522 = extractvalue %dx.types.CBufRet.f32 %9520, 1
  %9523 = extractvalue %dx.types.CBufRet.f32 %9520, 2
  %9524 = extractvalue %dx.types.CBufRet.f32 %9520, 3
  %9525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9526 = extractvalue %dx.types.CBufRet.f32 %9525, 3
  %9527 = call float @dx.op.binary.f32(i32 36, float %9513, float %9526)  ; FMin(a,b)
  %9528 = fmul fast float %9524, %9515
  %9529 = call float @dx.op.unary.f32(i32 7, float %9528)  ; Saturate(value)
  %9530 = fsub fast float %9521, %9517
  %9531 = fsub fast float %9522, %9518
  %9532 = fsub fast float %9523, %9519
  %9533 = fmul fast float %9529, %9530
  %9534 = fmul fast float %9529, %9531
  %9535 = fmul fast float %9529, %9532
  %9536 = fadd fast float %9533, %9517
  %9537 = fadd fast float %9534, %9518
  %9538 = fadd fast float %9535, %9519
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 0
  %9541 = extractvalue %dx.types.CBufRet.f32 %9539, 1
  %9542 = fadd fast float %9541, %9540
  %9543 = call float @dx.op.unary.f32(i32 7, float %9542)  ; Saturate(value)
  %9544 = extractvalue %dx.types.CBufRet.f32 %9539, 2
  %9545 = extractvalue %dx.types.CBufRet.f32 %9539, 3
  %9546 = fadd fast float %9545, %9544
  %9547 = call float @dx.op.unary.f32(i32 7, float %9546)  ; Saturate(value)
  %9548 = fmul fast float %9543, %9527
  %9549 = fmul fast float %9548, %9547
  br label %9791

; <label>:9550                                    ; preds = %9504
  br i1 %9505, label %9551, label %9572

; <label>:9551                                    ; preds = %9550
  %9552 = call float @dx.op.binary.f32(i32 36, float %9501, float %9491)  ; FMin(a,b)
  %9553 = fsub fast float %9501, %9552
  %9554 = fsub fast float %9553, %9490
  %9555 = call float @dx.op.unary.f32(i32 6, float %9554)  ; FAbs(value)
  %9556 = fadd fast float %9553, %9490
  %9557 = fmul fast float %9556, %9421
  %9558 = fadd fast float %9557, %9434
  %9559 = fmul fast float %9558, %9555
  %9560 = fsub fast float %9496, %9559
  br label %9572

; <label>:9561                                    ; preds = %9489
  br i1 %9503, label %9562, label %9572

; <label>:9562                                    ; preds = %9561
  %9563 = call float @dx.op.binary.f32(i32 35, float %9491, float %9501)  ; FMax(a,b)
  %9564 = icmp eq i32 %9440, 0
  %9565 = select i1 %9564, float %9501, float 0.000000e+00
  %9566 = fsub fast float -0.000000e+00, %9565
  %9567 = call float @dx.op.unary.f32(i32 6, float %9566)  ; FAbs(value)
  %9568 = fmul fast float %9565, %9421
  %9569 = fadd fast float %9568, %9434
  %9570 = fmul fast float %9567, %9569
  %9571 = fsub fast float %9496, %9570
  br label %9572

; <label>:9572                                    ; preds = %9562, %9561, %9551, %9550
  %9573 = phi float [ %9491, %9550 ], [ %9491, %9551 ], [ %9563, %9562 ], [ %9491, %9561 ]
  %9574 = phi float [ 0.000000e+00, %9550 ], [ %9555, %9551 ], [ %9567, %9562 ], [ 0.000000e+00, %9561 ]
  %9575 = phi float [ %9496, %9550 ], [ %9560, %9551 ], [ %9571, %9562 ], [ %9496, %9561 ]
  %9576 = phi float [ %9501, %9550 ], [ %9501, %9551 ], [ %9490, %9562 ], [ %9490, %9561 ]
  %9577 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 0
  store float -1.000000e+00, float* %9577, align 4, !tbaa !126, !noalias !141
  %9578 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 1
  store float -1.000000e+00, float* %9578, align 4, !tbaa !126, !noalias !141
  %9579 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 2
  store float -1.000000e+00, float* %9579, align 4, !tbaa !126, !noalias !141
  %9580 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 0
  store float -1.000000e+00, float* %9580, align 4, !tbaa !126, !noalias !141
  %9581 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 1
  store float -1.000000e+00, float* %9581, align 4, !tbaa !126, !noalias !141
  %9582 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 2
  store float -1.000000e+00, float* %9582, align 4, !tbaa !126, !noalias !141
  %9583 = icmp sgt i32 %9442, 0
  br i1 %9583, label %9584, label %9645

; <label>:9584                                    ; preds = %9572
  br label %9585

; <label>:9585                                    ; preds = %9634, %9584
  %9586 = phi i32 [ %9635, %9634 ], [ 0, %9584 ]
  %9587 = phi i32 [ %9636, %9634 ], [ 0, %9584 ]
  %9588 = add nuw i32 %9587, 171
  %9589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %9588)  ; CBufferLoadLegacy(handle,regIndex)
  %9590 = extractvalue %dx.types.CBufRet.f32 %9589, 0
  %9591 = extractvalue %dx.types.CBufRet.f32 %9589, 1
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.CBufRet.f32 %9592, 1
  %9595 = fsub fast float %9590, %9593
  %9596 = fsub fast float %9591, %9594
  %9597 = extractvalue %dx.types.CBufRet.f32 %9589, 2
  %9598 = fsub fast float -0.000000e+00, %9595
  %9599 = fsub fast float -0.000000e+00, %9596
  %9600 = call float @dx.op.dot2.f32(i32 54, float %9419, float %9420, float %9598, float %9599)  ; Dot2(ax,ay,bx,by)
  %9601 = fmul fast float %9600, 2.000000e+00
  %9602 = call float @dx.op.dot2.f32(i32 54, float %9598, float %9599, float %9598, float %9599)  ; Dot2(ax,ay,bx,by)
  %9603 = fmul fast float %9597, %9597
  %9604 = fsub fast float %9602, %9603
  %9605 = fmul fast float %9601, %9601
  %9606 = fmul fast float %9462, %9604
  %9607 = fsub fast float %9605, %9606
  %9608 = fcmp fast ogt float %9607, 0.000000e+00
  br i1 %9608, label %9609, label %9624

; <label>:9609                                    ; preds = %9585
  %9610 = fcmp fast ogt float %9601, 0.000000e+00
  %9611 = call float @dx.op.unary.f32(i32 24, float %9607)  ; Sqrt(value)
  %9612 = fsub fast float -0.000000e+00, %9611
  %9613 = select i1 %9610, float %9611, float %9612
  %9614 = fadd fast float %9613, %9601
  %9615 = fmul float %9614, -5.000000e-01
  %9616 = fdiv fast float %9615, %9455
  %9617 = call float @dx.op.binary.f32(i32 35, float %9616, float 0.000000e+00)  ; FMax(a,b)
  %9618 = call float @dx.op.binary.f32(i32 36, float %9490, float %9617)  ; FMin(a,b)
  %9619 = fdiv fast float %9604, %9615
  %9620 = call float @dx.op.binary.f32(i32 35, float %9619, float 0.000000e+00)  ; FMax(a,b)
  %9621 = call float @dx.op.binary.f32(i32 36, float %9490, float %9620)  ; FMin(a,b)
  %9622 = call float @dx.op.binary.f32(i32 36, float %9618, float %9621)  ; FMin(a,b)
  %9623 = call float @dx.op.binary.f32(i32 35, float %9618, float %9621)  ; FMax(a,b)
  br label %9624

; <label>:9624                                    ; preds = %9609, %9585
  %9625 = phi float [ %9623, %9609 ], [ -1.000000e+00, %9585 ]
  %9626 = phi float [ %9622, %9609 ], [ -1.000000e+00, %9585 ]
  %9627 = phi i1 [ true, %9609 ], [ false, %9585 ]
  br i1 %9627, label %9628, label %9634

; <label>:9628                                    ; preds = %9624
  %9629 = call float @dx.op.binary.f32(i32 35, float %9573, float %9626)  ; FMax(a,b)
  %9630 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %9587
  store float %9629, float* %9630, align 4, !tbaa !126, !noalias !141
  %9631 = call float @dx.op.binary.f32(i32 35, float %9573, float %9625)  ; FMax(a,b)
  %9632 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %9587
  store float %9631, float* %9632, align 4, !tbaa !126, !noalias !141
  %9633 = add nsw i32 %9586, 1
  br label %9634

; <label>:9634                                    ; preds = %9628, %9624
  %9635 = phi i32 [ %9633, %9628 ], [ %9586, %9624 ]
  %9636 = add nuw nsw i32 %9587, 1
  %9637 = icmp eq i32 %9636, %9442
  br i1 %9637, label %9638, label %9585

; <label>:9638                                    ; preds = %9634
  %9639 = load float, float* %9579, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9640 = load float, float* %9578, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %9641 = load float, float* %9577, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %9642 = load float, float* %9582, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9643 = load float, float* %9581, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %9644 = load float, float* %9580, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %9645

; <label>:9645                                    ; preds = %9638, %9572
  %9646 = phi float [ -1.000000e+00, %9572 ], [ %9644, %9638 ]
  %9647 = phi float [ -1.000000e+00, %9572 ], [ %9643, %9638 ]
  %9648 = phi float [ -1.000000e+00, %9572 ], [ %9642, %9638 ]
  %9649 = phi float [ -1.000000e+00, %9572 ], [ %9641, %9638 ]
  %9650 = phi float [ -1.000000e+00, %9572 ], [ %9640, %9638 ]
  %9651 = phi float [ -1.000000e+00, %9572 ], [ %9639, %9638 ]
  %9652 = phi i32 [ 0, %9572 ], [ %9635, %9638 ]
  %9653 = call float @dx.op.binary.f32(i32 36, float %9650, float %9651)  ; FMin(a,b)
  %9654 = call float @dx.op.binary.f32(i32 36, float %9649, float %9653)  ; FMin(a,b)
  %9655 = call float @dx.op.binary.f32(i32 35, float %9649, float %9650)  ; FMax(a,b)
  %9656 = call float @dx.op.binary.f32(i32 36, float %9655, float %9651)  ; FMin(a,b)
  %9657 = call float @dx.op.binary.f32(i32 36, float %9649, float %9650)  ; FMin(a,b)
  %9658 = call float @dx.op.binary.f32(i32 35, float %9657, float %9656)  ; FMax(a,b)
  %9659 = call float @dx.op.binary.f32(i32 35, float %9650, float %9651)  ; FMax(a,b)
  %9660 = call float @dx.op.binary.f32(i32 35, float %9649, float %9659)  ; FMax(a,b)
  store float %9654, float* %9577, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %9658, float* %9578, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %9660, float* %9579, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9661 = call float @dx.op.binary.f32(i32 36, float %9647, float %9648)  ; FMin(a,b)
  %9662 = call float @dx.op.binary.f32(i32 36, float %9646, float %9661)  ; FMin(a,b)
  %9663 = call float @dx.op.binary.f32(i32 35, float %9646, float %9647)  ; FMax(a,b)
  %9664 = call float @dx.op.binary.f32(i32 36, float %9663, float %9648)  ; FMin(a,b)
  %9665 = call float @dx.op.binary.f32(i32 36, float %9646, float %9647)  ; FMin(a,b)
  %9666 = call float @dx.op.binary.f32(i32 35, float %9665, float %9664)  ; FMax(a,b)
  %9667 = call float @dx.op.binary.f32(i32 35, float %9647, float %9648)  ; FMax(a,b)
  %9668 = call float @dx.op.binary.f32(i32 35, float %9646, float %9667)  ; FMax(a,b)
  store float %9662, float* %9580, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %9666, float* %9581, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %9668, float* %9582, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9669 = sub nsw i32 3, %9652
  %9670 = icmp sgt i32 %9669, 2
  br i1 %9670, label %9671, label %9709

; <label>:9671                                    ; preds = %9645
  %9672 = icmp eq i32 %9440, 0
  %9673 = fsub fast float %9490, %9574
  %9674 = select i1 %9672, float %9673, float %9574
  %9675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9676 = extractvalue %dx.types.CBufRet.f32 %9675, 0
  %9677 = extractvalue %dx.types.CBufRet.f32 %9675, 1
  %9678 = extractvalue %dx.types.CBufRet.f32 %9675, 2
  %9679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9680 = extractvalue %dx.types.CBufRet.f32 %9679, 0
  %9681 = extractvalue %dx.types.CBufRet.f32 %9679, 1
  %9682 = extractvalue %dx.types.CBufRet.f32 %9679, 2
  %9683 = extractvalue %dx.types.CBufRet.f32 %9679, 3
  %9684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9685 = extractvalue %dx.types.CBufRet.f32 %9684, 3
  %9686 = call float @dx.op.binary.f32(i32 36, float %9575, float %9685)  ; FMin(a,b)
  %9687 = fmul fast float %9683, %9674
  %9688 = call float @dx.op.unary.f32(i32 7, float %9687)  ; Saturate(value)
  %9689 = fsub fast float %9680, %9676
  %9690 = fsub fast float %9681, %9677
  %9691 = fsub fast float %9682, %9678
  %9692 = fmul fast float %9688, %9689
  %9693 = fmul fast float %9688, %9690
  %9694 = fmul fast float %9688, %9691
  %9695 = fadd fast float %9692, %9676
  %9696 = fadd fast float %9693, %9677
  %9697 = fadd fast float %9694, %9678
  %9698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9698, 0
  %9700 = extractvalue %dx.types.CBufRet.f32 %9698, 1
  %9701 = fadd fast float %9700, %9699
  %9702 = call float @dx.op.unary.f32(i32 7, float %9701)  ; Saturate(value)
  %9703 = extractvalue %dx.types.CBufRet.f32 %9698, 2
  %9704 = extractvalue %dx.types.CBufRet.f32 %9698, 3
  %9705 = fadd fast float %9704, %9703
  %9706 = call float @dx.op.unary.f32(i32 7, float %9705)  ; Saturate(value)
  %9707 = fmul fast float %9702, %9686
  %9708 = fmul fast float %9707, %9706
  br label %9791

; <label>:9709                                    ; preds = %9645
  %9710 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %9669
  %9711 = load float, float* %9710, align 4, !tbaa !126, !noalias !141
  %9712 = fcmp fast olt float %9711, %9576
  %9713 = icmp sgt i32 %9652, 0
  %9714 = and i1 %9713, %9712
  br i1 %9714, label %9715, label %9752

; <label>:9715                                    ; preds = %9709
  br label %9716

; <label>:9716                                    ; preds = %9745, %9715
  %9717 = phi float [ %9746, %9745 ], [ %9574, %9715 ]
  %9718 = phi float [ %9747, %9745 ], [ %9575, %9715 ]
  %9719 = phi float [ %9727, %9745 ], [ %9711, %9715 ]
  %9720 = phi i32 [ %9724, %9745 ], [ %9669, %9715 ]
  %9721 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %9720
  %9722 = load float, float* %9721, align 4, !tbaa !126, !noalias !141
  %9723 = icmp slt i32 %9720, 2
  %9724 = add nsw i32 %9720, 1
  %9725 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %9724
  %9726 = load float, float* %9725, align 4, !tbaa !126, !noalias !141
  %9727 = select i1 %9723, float %9726, float %9490
  %9728 = call float @dx.op.binary.f32(i32 36, float %9727, float %9722)  ; FMin(a,b)
  %9729 = call float @dx.op.binary.f32(i32 36, float %9576, float %9728)  ; FMin(a,b)
  %9730 = icmp eq i32 %9440, 0
  %9731 = fadd fast float %9729, %9719
  %9732 = fmul fast float %9731, %9421
  %9733 = fadd fast float %9732, %9434
  br i1 %9730, label %9739, label %9734

; <label>:9734                                    ; preds = %9716
  %9735 = fsub fast float %9729, %9719
  %9736 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9735)  ; FMax(a,b)
  %9737 = fmul fast float %9736, %9733
  %9738 = fadd fast float %9737, %9718
  br label %9745

; <label>:9739                                    ; preds = %9716
  %9740 = fsub fast float %9719, %9729
  %9741 = call float @dx.op.unary.f32(i32 6, float %9740)  ; FAbs(value)
  %9742 = fadd fast float %9741, %9717
  %9743 = fmul fast float %9741, %9733
  %9744 = fsub fast float %9718, %9743
  br label %9745

; <label>:9745                                    ; preds = %9739, %9734
  %9746 = phi float [ %9736, %9734 ], [ %9742, %9739 ]
  %9747 = phi float [ %9738, %9734 ], [ %9744, %9739 ]
  %9748 = fcmp fast olt float %9727, %9576
  %9749 = icmp slt i32 %9724, 3
  %9750 = and i1 %9749, %9748
  br i1 %9750, label %9716, label %9751

; <label>:9751                                    ; preds = %9745
  br label %9752

; <label>:9752                                    ; preds = %9751, %9709
  %9753 = phi float [ %9574, %9709 ], [ %9746, %9751 ]
  %9754 = phi float [ %9575, %9709 ], [ %9747, %9751 ]
  %9755 = fsub fast float %9490, %9753
  %9756 = select i1 %9492, float %9753, float %9755
  %9757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9758 = extractvalue %dx.types.CBufRet.f32 %9757, 0
  %9759 = extractvalue %dx.types.CBufRet.f32 %9757, 1
  %9760 = extractvalue %dx.types.CBufRet.f32 %9757, 2
  %9761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9762 = extractvalue %dx.types.CBufRet.f32 %9761, 0
  %9763 = extractvalue %dx.types.CBufRet.f32 %9761, 1
  %9764 = extractvalue %dx.types.CBufRet.f32 %9761, 2
  %9765 = extractvalue %dx.types.CBufRet.f32 %9761, 3
  %9766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9767 = extractvalue %dx.types.CBufRet.f32 %9766, 3
  %9768 = call float @dx.op.binary.f32(i32 36, float %9754, float %9767)  ; FMin(a,b)
  %9769 = fmul fast float %9765, %9756
  %9770 = call float @dx.op.unary.f32(i32 7, float %9769)  ; Saturate(value)
  %9771 = fsub fast float %9762, %9758
  %9772 = fsub fast float %9763, %9759
  %9773 = fsub fast float %9764, %9760
  %9774 = fmul fast float %9770, %9771
  %9775 = fmul fast float %9770, %9772
  %9776 = fmul fast float %9770, %9773
  %9777 = fadd fast float %9774, %9758
  %9778 = fadd fast float %9775, %9759
  %9779 = fadd fast float %9776, %9760
  %9780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9781 = extractvalue %dx.types.CBufRet.f32 %9780, 0
  %9782 = extractvalue %dx.types.CBufRet.f32 %9780, 1
  %9783 = fadd fast float %9782, %9781
  %9784 = call float @dx.op.unary.f32(i32 7, float %9783)  ; Saturate(value)
  %9785 = extractvalue %dx.types.CBufRet.f32 %9780, 2
  %9786 = extractvalue %dx.types.CBufRet.f32 %9780, 3
  %9787 = fadd fast float %9786, %9785
  %9788 = call float @dx.op.unary.f32(i32 7, float %9787)  ; Saturate(value)
  %9789 = fmul fast float %9784, %9768
  %9790 = fmul fast float %9789, %9788
  br label %9791

; <label>:9791                                    ; preds = %9752, %9671, %9506, %9488, %9486
  %9792 = phi float [ %9515, %9506 ], [ %9674, %9671 ], [ %9756, %9752 ], [ 0.000000e+00, %9486 ], [ 0.000000e+00, %9488 ]
  %9793 = phi float [ %9549, %9506 ], [ %9708, %9671 ], [ %9790, %9752 ], [ 0.000000e+00, %9486 ], [ 0.000000e+00, %9488 ]
  %9794 = phi float [ %9536, %9506 ], [ %9695, %9671 ], [ %9777, %9752 ], [ 0.000000e+00, %9486 ], [ 0.000000e+00, %9488 ]
  %9795 = phi float [ %9537, %9506 ], [ %9696, %9671 ], [ %9778, %9752 ], [ 0.000000e+00, %9486 ], [ 0.000000e+00, %9488 ]
  %9796 = phi float [ %9538, %9506 ], [ %9697, %9671 ], [ %9779, %9752 ], [ 0.000000e+00, %9486 ], [ 0.000000e+00, %9488 ]
  %9797 = fmul fast float %9429, %9793
  %9798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9798, 2
  %9800 = fsub fast float %9436, %9799
  %9801 = fcmp fast olt float %9797, -2.000000e+01
  %9802 = call float @dx.op.unary.f32(i32 21, float %9797)  ; Exp(value)
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 2
  %9805 = extractvalue %dx.types.CBufRet.f32 %9803, 3
  %9806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9807 = extractvalue %dx.types.CBufRet.f32 %9806, 2
  %9808 = fmul fast float %9805, %9800
  %9809 = call float @dx.op.unary.f32(i32 7, float %9808)  ; Saturate(value)
  %9810 = fsub fast float 1.000000e+00, %9809
  %9811 = fmul fast float %9421, 5.000000e-01
  %9812 = fadd fast float %9811, 5.000000e-01
  %9813 = call float @dx.op.unary.f32(i32 7, float %9812)  ; Saturate(value)
  %9814 = fsub fast float 1.000000e+00, %9813
  %9815 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9810)  ; FMax(a,b)
  %9816 = fdiv fast float %9814, %9815
  %9817 = fsub fast float %9800, %9378
  %9818 = call float @dx.op.unary.f32(i32 6, float %9817)  ; FAbs(value)
  %9819 = fmul fast float %9818, %9804
  %9820 = call float @dx.op.unary.f32(i32 7, float %9816)  ; Saturate(value)
  %9821 = fsub fast float 1.000000e+00, %9819
  %9822 = fmul fast float %9821, %9820
  %9823 = fadd fast float %9822, %9819
  %9824 = fmul fast float %9807, %9800
  %9825 = call float @dx.op.unary.f32(i32 7, float %9824)  ; Saturate(value)
  %9826 = fsub fast float 1.000000e+00, %9823
  %9827 = fmul fast float %9826, %9825
  %9828 = fadd fast float %9827, %9823
  %9829 = call float @dx.op.unary.f32(i32 7, float %9828)  ; Saturate(value)
  %9830 = fadd fast float %9802, -1.000000e+00
  %9831 = select i1 %9801, float -1.000000e+00, float %9830
  %9832 = fmul fast float %9829, %9831
  %9833 = fadd fast float %9832, 1.000000e+00
  %9834 = fsub fast float -0.000000e+00, %9832
  %9835 = fmul fast float %9794, %9834
  %9836 = fmul fast float %9795, %9834
  %9837 = fmul fast float %9796, %9834
  br label %9838

; <label>:9838                                    ; preds = %9791, %9387
  %9839 = phi float [ %9792, %9791 ], [ 0.000000e+00, %9387 ]
  %9840 = phi float [ %9833, %9791 ], [ 1.000000e+00, %9387 ]
  %9841 = phi float [ %9835, %9791 ], [ 0.000000e+00, %9387 ]
  %9842 = phi float [ %9836, %9791 ], [ 0.000000e+00, %9387 ]
  %9843 = phi float [ %9837, %9791 ], [ 0.000000e+00, %9387 ]
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 1
  %9846 = fsub fast float 1.000000e+00, %9840
  %9847 = fmul fast float %9846, %9422
  %9848 = fmul fast float %9847, %9845
  %9849 = fsub fast float %9422, %9848
  br i1 %9415, label %9850, label %9879, !dx.controlflow.hints !177

; <label>:9850                                    ; preds = %9838
  %9851 = fmul fast float %9423, %9412
  %9852 = fadd fast float %9851, %9413
  %9853 = call float @dx.op.unary.f32(i32 7, float %9852)  ; Saturate(value)
  %9854 = fmul fast float %9394, %9849
  %9855 = fsub fast float -0.000000e+00, %9854
  %9856 = fmul fast float %9395, %9849
  %9857 = fsub fast float -0.000000e+00, %9856
  %9858 = call float @dx.op.unary.f32(i32 21, float %9855)  ; Exp(value)
  %9859 = call float @dx.op.unary.f32(i32 21, float %9857)  ; Exp(value)
  %9860 = call float @dx.op.binary.f32(i32 35, float %9402, float %9858)  ; FMax(a,b)
  %9861 = call float @dx.op.binary.f32(i32 35, float %9402, float %9859)  ; FMax(a,b)
  %9862 = fsub fast float %9861, %9860
  %9863 = fmul fast float %9862, %9853
  %9864 = fadd fast float %9863, %9860
  %9865 = call float @dx.op.unary.f32(i32 7, float %9864)  ; Saturate(value)
  %9866 = fsub fast float %9399, %9404
  %9867 = fsub fast float %9400, %9405
  %9868 = fsub fast float %9401, %9406
  %9869 = fmul fast float %9853, %9866
  %9870 = fmul fast float %9853, %9867
  %9871 = fmul fast float %9853, %9868
  %9872 = fadd fast float %9869, %9404
  %9873 = fadd fast float %9870, %9405
  %9874 = fadd fast float %9871, %9406
  %9875 = fsub fast float 1.000000e+00, %9865
  %9876 = fmul fast float %9875, %9872
  %9877 = fmul fast float %9875, %9873
  %9878 = fmul fast float %9875, %9874
  br label %9938

; <label>:9879                                    ; preds = %9838
  %9880 = fmul fast float %9849, %9411
  %9881 = call float @dx.op.unary.f32(i32 7, float %9880)  ; Saturate(value)
  %9882 = fsub fast float 2.000000e+00, %9881
  %9883 = fmul fast float %9881, 9.921875e-01
  %9884 = fmul fast float %9883, %9882
  %9885 = fadd fast float %9884, 3.906250e-03
  %9886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9885, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9887 = extractvalue %dx.types.ResRet.f32 %9886, 0
  %9888 = fsub fast float %9881, %9887
  %9889 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9888)  ; FMax(a,b)
  %9890 = fmul fast float %9397, %9378
  %9891 = call float @dx.op.unary.f32(i32 6, float %9890)  ; FAbs(value)
  %9892 = fcmp fast ogt float %9891, 0x3EB0C6F7A0000000
  br i1 %9892, label %9893, label %9899, !dx.controlflow.hints !178

; <label>:9893                                    ; preds = %9879
  %9894 = fmul fast float %9890, 0xBFF7154760000000
  %9895 = call float @dx.op.unary.f32(i32 21, float %9894)  ; Exp(value)
  %9896 = fsub fast float 1.000000e+00, %9895
  %9897 = fdiv fast float %9896, %9890
  %9898 = fmul fast float %9897, %9407
  br label %9899

; <label>:9899                                    ; preds = %9893, %9879
  %9900 = phi float [ %9898, %9893 ], [ %9407, %9879 ]
  %9901 = fadd fast float %9900, %9409
  %9902 = fmul fast float %9901, %9889
  %9903 = fmul fast float %9394, %9902
  %9904 = fsub fast float -0.000000e+00, %9903
  %9905 = fmul fast float %9395, %9902
  %9906 = fsub fast float -0.000000e+00, %9905
  %9907 = fmul fast float %9396, %9902
  %9908 = fsub fast float -0.000000e+00, %9907
  %9909 = call float @dx.op.unary.f32(i32 21, float %9904)  ; Exp(value)
  %9910 = call float @dx.op.unary.f32(i32 21, float %9906)  ; Exp(value)
  %9911 = call float @dx.op.unary.f32(i32 21, float %9908)  ; Exp(value)
  %9912 = fmul fast float %9423, %9423
  %9913 = fadd fast float %9912, 1.000000e+00
  %9914 = fmul fast float %9913, 0x3FAE8EC8A0000000
  %9915 = fmul fast float %9914, %9404
  %9916 = fmul fast float %9914, %9405
  %9917 = fmul fast float %9914, %9406
  %9918 = fmul fast float %9423, %9402
  %9919 = fsub fast float 1.000000e+00, %9918
  %9920 = fmul fast float %9402, %9402
  %9921 = fsub fast float 1.000000e+00, %9920
  %9922 = fmul fast float %9921, 0x3FB45F3060000000
  %9923 = fmul fast float %9919, %9919
  %9924 = fdiv fast float 1.000000e+00, %9923
  %9925 = fmul fast float %9922, %9924
  %9926 = fmul fast float %9925, %9399
  %9927 = fmul fast float %9925, %9400
  %9928 = fmul fast float %9925, %9401
  %9929 = fadd fast float %9926, %9915
  %9930 = fadd fast float %9927, %9916
  %9931 = fadd fast float %9928, %9917
  %9932 = fsub fast float 1.000000e+00, %9909
  %9933 = fsub fast float 1.000000e+00, %9910
  %9934 = fsub fast float 1.000000e+00, %9911
  %9935 = fmul fast float %9929, %9932
  %9936 = fmul fast float %9930, %9933
  %9937 = fmul fast float %9931, %9934
  br label %9938

; <label>:9938                                    ; preds = %9899, %9850
  %9939 = phi float [ %9876, %9850 ], [ %9935, %9899 ]
  %9940 = phi float [ %9877, %9850 ], [ %9936, %9899 ]
  %9941 = phi float [ %9878, %9850 ], [ %9937, %9899 ]
  %9942 = phi float [ %9865, %9850 ], [ %9909, %9899 ]
  %9943 = phi float [ %9865, %9850 ], [ %9910, %9899 ]
  %9944 = phi float [ %9865, %9850 ], [ %9911, %9899 ]
  br i1 %9431, label %9945, label %10143, !dx.controlflow.hints !179

; <label>:9945                                    ; preds = %9938
  %9946 = extractvalue %dx.types.CBufRet.f32 %9844, 0
  %9947 = fmul fast float %9946, %9846
  %9948 = fsub fast float %9841, %9939
  %9949 = fsub fast float %9842, %9940
  %9950 = fsub fast float %9843, %9941
  %9951 = fmul fast float %9947, %9948
  %9952 = fmul fast float %9947, %9949
  %9953 = fmul fast float %9947, %9950
  %9954 = fadd fast float %9951, %9939
  %9955 = fadd fast float %9952, %9940
  %9956 = fadd fast float %9953, %9941
  %9957 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9942)  ; FMax(a,b)
  %9958 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9943)  ; FMax(a,b)
  %9959 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9944)  ; FMax(a,b)
  %9960 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9840)  ; FMax(a,b)
  %9961 = call float @dx.op.binary.f32(i32 35, float %9839, float %9849)  ; FMax(a,b)
  %9962 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9961)  ; FMax(a,b)
  %9963 = fdiv fast float %9839, %9962
  %9964 = call float @dx.op.unary.f32(i32 7, float %9963)  ; Saturate(value)
  %9965 = fdiv fast float %9849, %9962
  %9966 = call float @dx.op.unary.f32(i32 7, float %9965)  ; Saturate(value)
  %9967 = fcmp fast une float %9960, 1.000000e+00
  br i1 %9967, label %9968, label %9981, !dx.controlflow.hints !180

; <label>:9968                                    ; preds = %9945
  %9969 = call float @dx.op.unary.f32(i32 23, float %9960)  ; Log(value)
  %9970 = fmul fast float %9969, 0x3FE62E4300000000
  %9971 = fmul fast float %9841, %9970
  %9972 = fsub fast float -0.000000e+00, %9971
  %9973 = fmul fast float %9842, %9970
  %9974 = fsub fast float -0.000000e+00, %9973
  %9975 = fmul fast float %9843, %9970
  %9976 = fsub fast float -0.000000e+00, %9975
  %9977 = fsub fast float 1.000000e+00, %9960
  %9978 = fdiv fast float %9972, %9977
  %9979 = fdiv fast float %9974, %9977
  %9980 = fdiv fast float %9976, %9977
  br label %9981

; <label>:9981                                    ; preds = %9968, %9945
  %9982 = phi float [ %9978, %9968 ], [ %9841, %9945 ]
  %9983 = phi float [ %9979, %9968 ], [ %9842, %9945 ]
  %9984 = phi float [ %9980, %9968 ], [ %9843, %9945 ]
  %9985 = phi float [ %9970, %9968 ], [ 0.000000e+00, %9945 ]
  %9986 = fcmp fast une float %9957, 1.000000e+00
  br i1 %9986, label %9987, label %9994, !dx.controlflow.hints !181

; <label>:9987                                    ; preds = %9981
  %9988 = call float @dx.op.unary.f32(i32 23, float %9957)  ; Log(value)
  %9989 = fmul fast float %9988, 0x3FE62E4300000000
  %9990 = fmul fast float %9954, %9989
  %9991 = fsub fast float -0.000000e+00, %9990
  %9992 = fsub fast float 1.000000e+00, %9957
  %9993 = fdiv fast float %9991, %9992
  br label %9994

; <label>:9994                                    ; preds = %9987, %9981
  %9995 = phi float [ %9993, %9987 ], [ %9954, %9981 ]
  %9996 = phi float [ %9989, %9987 ], [ 0.000000e+00, %9981 ]
  %9997 = fcmp fast une float %9958, 1.000000e+00
  br i1 %9997, label %9998, label %10005, !dx.controlflow.hints !181

; <label>:9998                                    ; preds = %9994
  %9999 = call float @dx.op.unary.f32(i32 23, float %9958)  ; Log(value)
  %10000 = fmul fast float %9999, 0x3FE62E4300000000
  %10001 = fmul fast float %9955, %10000
  %10002 = fsub fast float -0.000000e+00, %10001
  %10003 = fsub fast float 1.000000e+00, %9958
  %10004 = fdiv fast float %10002, %10003
  br label %10005

; <label>:10005                                   ; preds = %9998, %9994
  %10006 = phi float [ %10004, %9998 ], [ %9955, %9994 ]
  %10007 = phi float [ %10000, %9998 ], [ 0.000000e+00, %9994 ]
  %10008 = fcmp fast une float %9959, 1.000000e+00
  br i1 %10008, label %10009, label %10016, !dx.controlflow.hints !181

; <label>:10009                                   ; preds = %10005
  %10010 = call float @dx.op.unary.f32(i32 23, float %9959)  ; Log(value)
  %10011 = fmul fast float %10010, 0x3FE62E4300000000
  %10012 = fmul fast float %9956, %10011
  %10013 = fsub fast float -0.000000e+00, %10012
  %10014 = fsub fast float 1.000000e+00, %9959
  %10015 = fdiv fast float %10013, %10014
  br label %10016

; <label>:10016                                   ; preds = %10009, %10005
  %10017 = phi float [ %10015, %10009 ], [ %9956, %10005 ]
  %10018 = phi float [ %10011, %10009 ], [ 0.000000e+00, %10005 ]
  %10019 = fmul fast float %9982, %9966
  %10020 = fmul fast float %9983, %9966
  %10021 = fmul fast float %9984, %9966
  %10022 = fmul fast float %9985, %9966
  %10023 = fmul fast float %9995, %9964
  %10024 = fmul fast float %10006, %9964
  %10025 = fmul fast float %10017, %9964
  %10026 = fmul fast float %9996, %9964
  %10027 = fmul fast float %10007, %9964
  %10028 = fmul fast float %10018, %9964
  %10029 = fadd fast float %10023, %10019
  %10030 = fadd fast float %10024, %10020
  %10031 = fadd fast float %10025, %10021
  %10032 = fadd fast float %10026, %10022
  %10033 = fadd fast float %10027, %10022
  %10034 = fadd fast float %10028, %10022
  %10035 = fcmp fast une float %10032, 0.000000e+00
  br i1 %10035, label %10036, label %10043, !dx.controlflow.hints !182

; <label>:10036                                   ; preds = %10016
  %10037 = fmul fast float %10032, 0x3FF7154760000000
  %10038 = call float @dx.op.unary.f32(i32 21, float %10037)  ; Exp(value)
  %10039 = fsub fast float 1.000000e+00, %10038
  %10040 = fmul fast float %10029, %10039
  %10041 = fsub fast float -0.000000e+00, %10040
  %10042 = fdiv fast float %10041, %10032
  br label %10043

; <label>:10043                                   ; preds = %10036, %10016
  %10044 = phi float [ %10038, %10036 ], [ 1.000000e+00, %10016 ]
  %10045 = phi float [ %10042, %10036 ], [ %10029, %10016 ]
  %10046 = fcmp fast une float %10033, 0.000000e+00
  br i1 %10046, label %10047, label %10054, !dx.controlflow.hints !182

; <label>:10047                                   ; preds = %10043
  %10048 = fmul fast float %10033, 0x3FF7154760000000
  %10049 = call float @dx.op.unary.f32(i32 21, float %10048)  ; Exp(value)
  %10050 = fsub fast float 1.000000e+00, %10049
  %10051 = fmul fast float %10030, %10050
  %10052 = fsub fast float -0.000000e+00, %10051
  %10053 = fdiv fast float %10052, %10033
  br label %10054

; <label>:10054                                   ; preds = %10047, %10043
  %10055 = phi float [ %10049, %10047 ], [ 1.000000e+00, %10043 ]
  %10056 = phi float [ %10053, %10047 ], [ %10030, %10043 ]
  %10057 = fcmp fast une float %10034, 0.000000e+00
  br i1 %10057, label %10058, label %10065, !dx.controlflow.hints !182

; <label>:10058                                   ; preds = %10054
  %10059 = fmul fast float %10034, 0x3FF7154760000000
  %10060 = call float @dx.op.unary.f32(i32 21, float %10059)  ; Exp(value)
  %10061 = fsub fast float 1.000000e+00, %10060
  %10062 = fmul fast float %10031, %10061
  %10063 = fsub fast float -0.000000e+00, %10062
  %10064 = fdiv fast float %10063, %10034
  br label %10065

; <label>:10065                                   ; preds = %10058, %10054
  %10066 = phi float [ %10060, %10058 ], [ 1.000000e+00, %10054 ]
  %10067 = phi float [ %10064, %10058 ], [ %10031, %10054 ]
  %10068 = fcmp fast ogt float %9964, %9966
  br i1 %10068, label %10069, label %10089

; <label>:10069                                   ; preds = %10065
  %10070 = fsub fast float 1.000000e+00, %9966
  %10071 = fmul fast float %9982, %10070
  %10072 = fmul fast float %9983, %10070
  %10073 = fmul fast float %9984, %10070
  %10074 = fmul fast float %9985, %10070
  %10075 = fcmp fast une float %10074, 0.000000e+00
  br i1 %10075, label %10076, label %10127, !dx.controlflow.hints !183

; <label>:10076                                   ; preds = %10069
  %10077 = fmul fast float %10074, 0x3FF7154760000000
  %10078 = call float @dx.op.unary.f32(i32 21, float %10077)  ; Exp(value)
  %10079 = fsub fast float 1.000000e+00, %10078
  %10080 = fmul fast float %10071, %10079
  %10081 = fsub fast float -0.000000e+00, %10080
  %10082 = fmul fast float %10072, %10079
  %10083 = fsub fast float -0.000000e+00, %10082
  %10084 = fmul fast float %10073, %10079
  %10085 = fsub fast float -0.000000e+00, %10084
  %10086 = fdiv fast float %10081, %10074
  %10087 = fdiv fast float %10083, %10074
  %10088 = fdiv fast float %10085, %10074
  br label %10127

; <label>:10089                                   ; preds = %10065
  %10090 = fsub fast float 1.000000e+00, %9964
  %10091 = fmul fast float %9995, %10090
  %10092 = fmul fast float %10006, %10090
  %10093 = fmul fast float %10017, %10090
  %10094 = fmul fast float %9996, %10090
  %10095 = fmul fast float %10007, %10090
  %10096 = fmul fast float %10018, %10090
  %10097 = fcmp fast une float %10094, 0.000000e+00
  br i1 %10097, label %10098, label %10105, !dx.controlflow.hints !182

; <label>:10098                                   ; preds = %10089
  %10099 = fmul fast float %10094, 0x3FF7154760000000
  %10100 = call float @dx.op.unary.f32(i32 21, float %10099)  ; Exp(value)
  %10101 = fsub fast float 1.000000e+00, %10100
  %10102 = fmul fast float %10091, %10101
  %10103 = fsub fast float -0.000000e+00, %10102
  %10104 = fdiv fast float %10103, %10094
  br label %10105

; <label>:10105                                   ; preds = %10098, %10089
  %10106 = phi float [ %10104, %10098 ], [ %10091, %10089 ]
  %10107 = phi float [ %10100, %10098 ], [ 1.000000e+00, %10089 ]
  %10108 = fcmp fast une float %10095, 0.000000e+00
  br i1 %10108, label %10109, label %10116, !dx.controlflow.hints !182

; <label>:10109                                   ; preds = %10105
  %10110 = fmul fast float %10095, 0x3FF7154760000000
  %10111 = call float @dx.op.unary.f32(i32 21, float %10110)  ; Exp(value)
  %10112 = fsub fast float 1.000000e+00, %10111
  %10113 = fmul fast float %10092, %10112
  %10114 = fsub fast float -0.000000e+00, %10113
  %10115 = fdiv fast float %10114, %10095
  br label %10116

; <label>:10116                                   ; preds = %10109, %10105
  %10117 = phi float [ %10115, %10109 ], [ %10092, %10105 ]
  %10118 = phi float [ %10111, %10109 ], [ 1.000000e+00, %10105 ]
  %10119 = fcmp fast une float %10096, 0.000000e+00
  br i1 %10119, label %10120, label %10127, !dx.controlflow.hints !182

; <label>:10120                                   ; preds = %10116
  %10121 = fmul fast float %10096, 0x3FF7154760000000
  %10122 = call float @dx.op.unary.f32(i32 21, float %10121)  ; Exp(value)
  %10123 = fsub fast float 1.000000e+00, %10122
  %10124 = fmul fast float %10093, %10123
  %10125 = fsub fast float -0.000000e+00, %10124
  %10126 = fdiv fast float %10125, %10096
  br label %10127

; <label>:10127                                   ; preds = %10120, %10116, %10076, %10069
  %10128 = phi float [ %10126, %10120 ], [ %10088, %10076 ], [ %10073, %10069 ], [ %10093, %10116 ]
  %10129 = phi float [ %10117, %10120 ], [ %10087, %10076 ], [ %10072, %10069 ], [ %10117, %10116 ]
  %10130 = phi float [ %10106, %10120 ], [ %10086, %10076 ], [ %10071, %10069 ], [ %10106, %10116 ]
  %10131 = phi float [ %10122, %10120 ], [ %10078, %10076 ], [ 1.000000e+00, %10069 ], [ 1.000000e+00, %10116 ]
  %10132 = phi float [ %10118, %10120 ], [ %10078, %10076 ], [ 1.000000e+00, %10069 ], [ %10118, %10116 ]
  %10133 = phi float [ %10107, %10120 ], [ %10078, %10076 ], [ 1.000000e+00, %10069 ], [ %10107, %10116 ]
  %10134 = fmul fast float %10133, %10045
  %10135 = fmul fast float %10132, %10056
  %10136 = fmul fast float %10131, %10067
  %10137 = fadd fast float %10134, %10130
  %10138 = fadd fast float %10135, %10129
  %10139 = fadd fast float %10136, %10128
  %10140 = fmul fast float %10133, %10044
  %10141 = fmul fast float %10132, %10055
  %10142 = fmul fast float %10131, %10066
  br label %10143

; <label>:10143                                   ; preds = %10127, %9938
  %10144 = phi float [ %10142, %10127 ], [ %9944, %9938 ]
  %10145 = phi float [ %10141, %10127 ], [ %9943, %9938 ]
  %10146 = phi float [ %10140, %10127 ], [ %9942, %9938 ]
  %10147 = phi float [ %10139, %10127 ], [ %9941, %9938 ]
  %10148 = phi float [ %10138, %10127 ], [ %9940, %9938 ]
  %10149 = phi float [ %10137, %10127 ], [ %9939, %9938 ]
  %10150 = fmul fast float %10149, %9095
  %10151 = fmul fast float %10148, %9095
  %10152 = fmul fast float %10147, %9095
  %10153 = fmul fast float %10146, %9386
  %10154 = call float @dx.op.dot3.f32(i32 55, float %10146, float %10145, float %10144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10155 = call float @dx.op.dot3.f32(i32 55, float %10150, float %10151, float %10152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10156 = select i1 %278, float %10154, float %10146
  %10157 = select i1 %278, float %10154, float %10145
  %10158 = select i1 %278, float 1.000000e+00, float %10144
  %10159 = select i1 %278, float %10155, float %10150
  %10160 = select i1 %278, float 0.000000e+00, float %10151
  %10161 = select i1 %278, float 0.000000e+00, float %10152
  %10162 = fmul fast float %10156, %9380
  %10163 = fmul fast float %10157, %9381
  %10164 = fmul fast float %10158, %9382
  %10165 = fadd fast float %10162, %10159
  %10166 = fadd fast float %10163, %10160
  %10167 = fadd fast float %10161, %10164
  %10168 = fmul fast float %10156, %9383
  %10169 = fmul fast float %10157, %9384
  %10170 = fmul fast float %10158, %9385
  %10171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10172 = extractvalue %dx.types.CBufRet.i32 %10171, 0
  %10173 = icmp eq i32 %10172, 0
  br i1 %10173, label %10541, label %10174, !dx.controlflow.hints !184

; <label>:10174                                   ; preds = %10143
  %10175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10176 = extractvalue %dx.types.CBufRet.f32 %10175, 2
  %10177 = extractvalue %dx.types.CBufRet.f32 %10175, 3
  %10178 = fmul fast float %10176, %123
  %10179 = fmul fast float %10177, %124
  %10180 = fmul fast float %10178, 2.000000e+00
  %10181 = fmul fast float %10179, 2.000000e+00
  %10182 = fsub fast float 1.000000e+00, %10180
  %10183 = fsub fast float 1.000000e+00, %10181
  %10184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10185 = extractvalue %dx.types.CBufRet.f32 %10184, 0
  %10186 = extractvalue %dx.types.CBufRet.f32 %10184, 1
  %10187 = extractvalue %dx.types.CBufRet.f32 %10184, 2
  %10188 = fmul fast float %10182, %10185
  %10189 = fmul fast float %10182, %10186
  %10190 = fmul fast float %10182, %10187
  %10191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10192 = extractvalue %dx.types.CBufRet.f32 %10191, 0
  %10193 = extractvalue %dx.types.CBufRet.f32 %10191, 1
  %10194 = extractvalue %dx.types.CBufRet.f32 %10191, 2
  %10195 = fmul fast float %10183, %10192
  %10196 = fmul fast float %10183, %10193
  %10197 = fmul fast float %10183, %10194
  %10198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10199 = extractvalue %dx.types.CBufRet.f32 %10198, 0
  %10200 = extractvalue %dx.types.CBufRet.f32 %10198, 1
  %10201 = extractvalue %dx.types.CBufRet.f32 %10198, 2
  %10202 = fadd fast float %10195, %10199
  %10203 = fadd fast float %10202, %10188
  %10204 = fadd fast float %10196, %10200
  %10205 = fadd fast float %10204, %10189
  %10206 = fadd fast float %10197, %10201
  %10207 = fadd fast float %10206, %10190
  %10208 = fmul fast float %10203, %9379
  %10209 = fmul fast float %10205, %9379
  %10210 = fmul fast float %10207, %9379
  %10211 = fmul fast float %10208, %10208
  %10212 = fmul fast float %10209, %10209
  %10213 = fadd fast float %10211, %10212
  %10214 = fmul fast float %10210, %10210
  %10215 = fadd fast float %10213, %10214
  %10216 = call float @dx.op.unary.f32(i32 24, float %10215)  ; Sqrt(value)
  %10217 = extractvalue %dx.types.CBufRet.f32 %9106, 0
  %10218 = fsub fast float %10216, %10217
  %10219 = extractvalue %dx.types.CBufRet.f32 %9106, 2
  %10220 = fmul fast float %10218, %10219
  %10221 = call float @dx.op.unary.f32(i32 7, float %10220)  ; Saturate(value)
  %10222 = fadd fast float %10221, -5.000000e-01
  %10223 = fmul fast float %10222, 2.000000e+00
  %10224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10225 = extractvalue %dx.types.CBufRet.f32 %10224, 2
  %10226 = call float @dx.op.binary.f32(i32 36, float %10225, float %10223)  ; FMin(a,b)
  %10227 = fsub fast float -0.000000e+00, %10225
  %10228 = fcmp fast ogt float %10226, %10227
  br i1 %10228, label %10229, label %10541, !dx.controlflow.hints !185

; <label>:10229                                   ; preds = %10174
  %10230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10231 = extractvalue %dx.types.CBufRet.f32 %10230, 3
  %10232 = fcmp fast ogt float %10231, 0.000000e+00
  br i1 %10232, label %10233, label %10308, !dx.controlflow.hints !186

; <label>:10233                                   ; preds = %10229
  %10234 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10235 = extractvalue %dx.types.Dimensions %10234, 0
  %10236 = sitofp i32 %10235 to float
  %10237 = extractvalue %dx.types.Dimensions %10234, 1
  %10238 = sitofp i32 %10237 to float
  %10239 = fmul fast float %10178, %10236
  %10240 = fmul fast float %10179, %10238
  %10241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10242 = extractvalue %dx.types.CBufRet.f32 %10241, 1
  %10243 = fsub fast float -0.000000e+00, %10242
  %10244 = fptoui float %10243 to i32
  %10245 = fptoui float %10239 to i32
  %10246 = fptoui float %10240 to i32
  %10247 = and i32 %10244, 31
  %10248 = lshr i32 %10245, %10247
  %10249 = lshr i32 %10246, %10247
  %10250 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10244, i32 %10248, i32 %10249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10251 = extractvalue %dx.types.ResRet.f32 %10250, 0
  %10252 = fcmp fast olt float %10251, -1.000000e+00
  %10253 = fcmp fast ogt float %10251, -1.000000e+00
  %10254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10255 = extractvalue %dx.types.CBufRet.f32 %10254, 1
  %10256 = select i1 %10253, float %10255, float 1.000000e+00
  %10257 = fadd fast float %10251, 1.000000e+00
  %10258 = fmul fast float %10256, %10257
  %10259 = call float @dx.op.unary.f32(i32 6, float %10258)  ; FAbs(value)
  %10260 = extractvalue %dx.types.CBufRet.f32 %10254, 3
  %10261 = fcmp fast oge float %10259, %10260
  %10262 = select i1 %10261, float 0x4197782600000000, float %10259
  %10263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10264 = extractvalue %dx.types.CBufRet.f32 %10263, 0
  %10265 = extractvalue %dx.types.CBufRet.f32 %10263, 1
  %10266 = extractvalue %dx.types.CBufRet.f32 %10263, 2
  %10267 = select i1 %10252, float %10264, float %10185
  %10268 = select i1 %10252, float %10265, float %10186
  %10269 = select i1 %10252, float %10266, float %10187
  %10270 = fmul fast float %10267, %10182
  %10271 = fmul fast float %10268, %10182
  %10272 = fmul fast float %10269, %10182
  %10273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10274 = extractvalue %dx.types.CBufRet.f32 %10273, 0
  %10275 = extractvalue %dx.types.CBufRet.f32 %10273, 1
  %10276 = extractvalue %dx.types.CBufRet.f32 %10273, 2
  %10277 = select i1 %10252, float %10274, float %10192
  %10278 = select i1 %10252, float %10275, float %10193
  %10279 = select i1 %10252, float %10276, float %10194
  %10280 = fmul fast float %10277, %10183
  %10281 = fmul fast float %10278, %10183
  %10282 = fmul fast float %10279, %10183
  %10283 = fadd fast float %10280, %10270
  %10284 = fadd fast float %10281, %10271
  %10285 = fadd fast float %10282, %10272
  %10286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10287 = extractvalue %dx.types.CBufRet.f32 %10286, 0
  %10288 = extractvalue %dx.types.CBufRet.f32 %10286, 1
  %10289 = extractvalue %dx.types.CBufRet.f32 %10286, 2
  %10290 = select i1 %10252, float %10287, float %10199
  %10291 = select i1 %10252, float %10288, float %10200
  %10292 = select i1 %10252, float %10289, float %10201
  %10293 = fadd fast float %10283, %10290
  %10294 = fadd fast float %10284, %10291
  %10295 = fadd fast float %10285, %10292
  %10296 = fmul fast float %10293, %10262
  %10297 = fmul fast float %10294, %10262
  %10298 = fmul fast float %10295, %10262
  %10299 = fmul fast float %10296, %10296
  %10300 = fmul fast float %10297, %10297
  %10301 = fadd fast float %10299, %10300
  %10302 = fmul fast float %10298, %10298
  %10303 = fadd fast float %10301, %10302
  %10304 = call float @dx.op.unary.f32(i32 24, float %10303)  ; Sqrt(value)
  %10305 = fsub fast float %10304, %10217
  %10306 = fmul fast float %10305, %10219
  %10307 = call float @dx.op.unary.f32(i32 7, float %10306)  ; Saturate(value)
  br label %10308

; <label>:10308                                   ; preds = %10233, %10229
  %10309 = phi float [ %10307, %10233 ], [ 1.000000e+00, %10229 ]
  %10310 = fmul fast float %10226, 5.000000e-01
  %10311 = fadd fast float %10310, 5.000000e-01
  %10312 = call float @dx.op.unary.f32(i32 22, float %10311)  ; Frc(value)
  %10313 = call float @dx.op.unary.f32(i32 27, float %10312)  ; Round_ni(value)
  %10314 = call float @dx.op.unary.f32(i32 22, float %10312)  ; Frc(value)
  %10315 = fmul fast float %10314, 2.000000e+00
  %10316 = fadd fast float %10315, -1.000000e+00
  %10317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %10178, float %10179, float %10313, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10318 = extractvalue %dx.types.ResRet.f32 %10317, 0
  %10319 = extractvalue %dx.types.ResRet.f32 %10317, 1
  %10320 = extractvalue %dx.types.ResRet.f32 %10317, 2
  %10321 = extractvalue %dx.types.ResRet.f32 %10317, 3
  %10322 = fadd fast float %10318, -5.000000e-01
  %10323 = fadd fast float %10320, -5.000000e-01
  %10324 = fmul fast float %10322, 0xBFD5555560000000
  %10325 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10323, float %10324)  ; FMad(a,b,c)
  %10326 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10319, float 0.000000e+00)  ; FMad(a,b,c)
  %10327 = fadd fast float %10326, %10321
  %10328 = fmul fast float %10322, -7.500000e-01
  %10329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10323, float %10328)  ; FMad(a,b,c)
  %10330 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10319, float 0.000000e+00)  ; FMad(a,b,c)
  %10331 = fadd fast float %10330, %10321
  %10332 = call float @dx.op.binary.f32(i32 35, float %10325, float -1.000000e+00)  ; FMax(a,b)
  %10333 = call float @dx.op.binary.f32(i32 35, float %10327, float -1.000000e+00)  ; FMax(a,b)
  %10334 = call float @dx.op.binary.f32(i32 35, float %10329, float -1.000000e+00)  ; FMax(a,b)
  %10335 = call float @dx.op.binary.f32(i32 35, float %10331, float -1.000000e+00)  ; FMax(a,b)
  %10336 = call float @dx.op.binary.f32(i32 36, float %10332, float 1.000000e+00)  ; FMin(a,b)
  %10337 = call float @dx.op.binary.f32(i32 36, float %10333, float 1.000000e+00)  ; FMin(a,b)
  %10338 = call float @dx.op.binary.f32(i32 36, float %10334, float 1.000000e+00)  ; FMin(a,b)
  %10339 = call float @dx.op.binary.f32(i32 36, float %10335, float 1.000000e+00)  ; FMin(a,b)
  %10340 = fcmp fast olt float %10336, 0x3FEFFF8020000000
  br i1 %10340, label %10341, label %10456, !dx.controlflow.hints !187

; <label>:10341                                   ; preds = %10308
  %10342 = extractvalue %dx.types.CBufRet.f32 %10224, 3
  %10343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10344 = extractvalue %dx.types.CBufRet.f32 %10343, 0
  %10345 = extractvalue %dx.types.CBufRet.f32 %10343, 1
  %10346 = extractvalue %dx.types.CBufRet.f32 %10343, 2
  %10347 = extractvalue %dx.types.CBufRet.f32 %10343, 3
  %10348 = fsub fast float %10344, %10336
  %10349 = fsub fast float %10345, %10337
  %10350 = fsub fast float %10346, %10338
  %10351 = fsub fast float %10347, %10339
  %10352 = fmul fast float %10348, %10342
  %10353 = fmul fast float %10349, %10342
  %10354 = fmul fast float %10350, %10342
  %10355 = fmul fast float %10351, %10342
  %10356 = fadd fast float %10352, %10336
  %10357 = fadd fast float %10353, %10337
  %10358 = fsub fast float -0.000000e+00, %10357
  %10359 = fadd fast float %10354, %10338
  %10360 = fadd fast float %10355, %10339
  %10361 = fmul fast float %10356, %10356
  %10362 = fsub fast float %10357, %10361
  %10363 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10362)  ; FMax(a,b)
  %10364 = fdiv fast float 1.000000e+00, %10363
  %10365 = fmul fast float %10357, %10356
  %10366 = fsub fast float %10359, %10365
  %10367 = fsub fast float %10316, %10356
  %10368 = fmul fast float %10316, %10316
  %10369 = fsub fast float %10368, %10357
  %10370 = fmul fast float %10367, %10364
  %10371 = fmul fast float %10370, %10366
  %10372 = fsub fast float %10369, %10371
  %10373 = fmul fast float %10357, %10357
  %10374 = fsub fast float %10360, %10373
  %10375 = fmul fast float %10366, %10366
  %10376 = fmul fast float %10375, %10364
  %10377 = fsub fast float %10374, %10376
  %10378 = fdiv fast float %10372, %10377
  %10379 = fmul fast float %10366, %10378
  %10380 = fsub fast float %10367, %10379
  %10381 = fmul fast float %10380, %10364
  %10382 = fmul fast float %10381, %10356
  %10383 = fsub fast float 1.000000e+00, %10382
  %10384 = fmul fast float %10357, %10378
  %10385 = fsub fast float %10383, %10384
  %10386 = fmul fast float %10381, %10381
  %10387 = fmul fast float %10378, 4.000000e+00
  %10388 = fmul fast float %10387, %10385
  %10389 = fsub fast float %10386, %10388
  %10390 = call float @dx.op.unary.f32(i32 24, float %10389)  ; Sqrt(value)
  %10391 = fcmp fast oge float %10381, 0.000000e+00
  %10392 = fsub fast float -0.000000e+00, %10390
  %10393 = select i1 %10391, float %10392, float %10390
  %10394 = fsub fast float %10393, %10381
  %10395 = fdiv fast float %10394, %10378
  %10396 = fdiv fast float %10385, %10394
  %10397 = fmul fast float %10395, 5.000000e-01
  %10398 = fmul fast float %10396, 2.000000e+00
  %10399 = select i1 %10391, float %10397, float %10398
  %10400 = select i1 %10391, float %10398, float %10397
  %10401 = call float @dx.op.binary.f32(i32 35, float %10399, float %10400)  ; FMax(a,b)
  %10402 = call float @dx.op.binary.f32(i32 36, float %10399, float %10400)  ; FMin(a,b)
  %10403 = fcmp fast ogt float %10316, %10402
  br i1 %10403, label %10404, label %10414

; <label>:10404                                   ; preds = %10341
  %10405 = fsub fast float %10316, %10402
  %10406 = fsub fast float %10401, %10402
  %10407 = fmul fast float %10405, %10406
  %10408 = fmul fast float %10401, %10316
  %10409 = fadd fast float %10401, %10316
  %10410 = fmul fast float %10409, %10356
  %10411 = fadd fast float %10408, %10357
  %10412 = fsub fast float %10411, %10410
  %10413 = fdiv fast float %10412, %10407
  br label %10414

; <label>:10414                                   ; preds = %10404, %10341
  %10415 = phi float [ %10413, %10404 ], [ 0.000000e+00, %10341 ]
  %10416 = fcmp fast ogt float %10316, %10401
  %10417 = fsub fast float %10316, %10401
  br i1 %10416, label %10418, label %10428

; <label>:10418                                   ; preds = %10414
  %10419 = fsub fast float %10401, %10402
  %10420 = fmul fast float %10419, %10417
  %10421 = fmul fast float %10402, %10316
  %10422 = fadd fast float %10402, %10316
  %10423 = fmul fast float %10422, %10356
  %10424 = fsub fast float %10358, %10421
  %10425 = fadd fast float %10424, %10423
  %10426 = fdiv fast float %10425, %10420
  %10427 = fadd fast float %10426, %10415
  br label %10428

; <label>:10428                                   ; preds = %10418, %10414
  %10429 = phi float [ %10427, %10418 ], [ %10415, %10414 ]
  %10430 = fsub fast float %10316, %10402
  %10431 = fmul fast float %10430, %10417
  %10432 = fmul fast float %10402, %10401
  %10433 = fadd fast float %10402, %10401
  %10434 = fmul fast float %10433, %10356
  %10435 = fadd fast float %10432, %10357
  %10436 = fsub fast float %10435, %10434
  %10437 = fdiv fast float %10436, %10431
  %10438 = call float @dx.op.unary.f32(i32 7, float %10429)  ; Saturate(value)
  %10439 = fcmp fast oeq float %9107, 0.000000e+00
  %10440 = extractvalue %dx.types.CBufRet.f32 %10224, 0
  %10441 = fcmp fast oeq float %10440, 0.000000e+00
  %10442 = or i1 %10439, %10441
  %10443 = fmul fast float %10440, 2.000000e+00
  %10444 = fadd fast float %10225, %10226
  %10445 = fdiv fast float %10444, %10443
  %10446 = call float @dx.op.unary.f32(i32 7, float %10445)  ; Saturate(value)
  %10447 = fmul fast float %10446, 2.000000e+00
  %10448 = fsub fast float 3.000000e+00, %10447
  %10449 = fmul fast float %10446, %10446
  %10450 = fmul fast float %10449, %10448
  %10451 = select i1 %10442, float 1.000000e+00, float %10450
  %10452 = fmul fast float %10437, %9107
  %10453 = fadd fast float %10438, %10452
  %10454 = call float @dx.op.unary.f32(i32 7, float %10453)  ; Saturate(value)
  %10455 = fmul fast float %10451, %10454
  br label %10456

; <label>:10456                                   ; preds = %10428, %10308
  %10457 = phi float [ %10455, %10428 ], [ 0.000000e+00, %10308 ]
  %10458 = fsub fast float 1.000000e+00, %10457
  %10459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %10178, float %10179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10460 = extractvalue %dx.types.ResRet.f32 %10459, 0
  %10461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10462 = extractvalue %dx.types.CBufRet.i32 %10461, 2
  %10463 = icmp eq i32 %10462, 0
  br i1 %10463, label %10469, label %10464

; <label>:10464                                   ; preds = %10456
  %10465 = call float @dx.op.unary.f32(i32 7, float %10457)  ; Saturate(value)
  %10466 = fadd fast float %10460, -1.000000e+00
  %10467 = fmul fast float %10465, %10466
  %10468 = fadd fast float %10467, 1.000000e+00
  br label %10469

; <label>:10469                                   ; preds = %10464, %10456
  %10470 = phi float [ %10468, %10464 ], [ %10458, %10456 ]
  br i1 %10232, label %10471, label %10489

; <label>:10471                                   ; preds = %10469
  %10472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10473 = extractvalue %dx.types.CBufRet.f32 %10472, 1
  %10474 = fsub fast float %10309, %10473
  %10475 = call float @dx.op.unary.f32(i32 7, float %10474)  ; Saturate(value)
  %10476 = fsub fast float %10309, %10231
  %10477 = call float @dx.op.unary.f32(i32 7, float %10476)  ; Saturate(value)
  %10478 = fsub fast float %10475, %10477
  %10479 = fsub fast float %10311, %10477
  %10480 = fdiv fast float %10479, %10478
  %10481 = call float @dx.op.unary.f32(i32 7, float %10480)  ; Saturate(value)
  %10482 = fmul fast float %10481, 2.000000e+00
  %10483 = fsub fast float 3.000000e+00, %10482
  %10484 = fsub fast float %10460, %10470
  %10485 = fmul fast float %10481, %10481
  %10486 = fmul fast float %10485, %10484
  %10487 = fmul fast float %10486, %10483
  %10488 = fadd fast float %10487, %10470
  br label %10489

; <label>:10489                                   ; preds = %10471, %10469
  %10490 = phi float [ %10488, %10471 ], [ %10470, %10469 ]
  %10491 = call float @dx.op.binary.f32(i32 35, float %10460, float %10490)  ; FMax(a,b)
  %10492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10493 = extractvalue %dx.types.CBufRet.i32 %10492, 2
  %10494 = and i32 %10493, 1
  %10495 = icmp eq i32 %10494, 0
  %10496 = fcmp fast une float %10491, 1.000000e+00
  %10497 = and i1 %10496, %10495
  br i1 %10497, label %10498, label %10517

; <label>:10498                                   ; preds = %10489
  %10499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %10178, float %10179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10500 = extractvalue %dx.types.ResRet.f32 %10499, 0
  %10501 = extractvalue %dx.types.ResRet.f32 %10499, 1
  %10502 = extractvalue %dx.types.ResRet.f32 %10499, 2
  %10503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10504 = extractvalue %dx.types.CBufRet.f32 %10503, 1
  %10505 = fmul fast float %10504, %10500
  %10506 = fmul fast float %10504, %10501
  %10507 = fmul fast float %10504, %10502
  %10508 = fcmp fast ogt float %10460, 0x3FEFFF2E40000000
  %10509 = fsub fast float 1.000000e+00, %10491
  %10510 = fsub fast float 1.000000e+00, %10460
  %10511 = fdiv fast float %10509, %10510
  %10512 = call float @dx.op.unary.f32(i32 7, float %10511)  ; Saturate(value)
  %10513 = select i1 %10508, float 0.000000e+00, float %10512
  %10514 = fmul fast float %10505, %10513
  %10515 = fmul fast float %10506, %10513
  %10516 = fmul fast float %10507, %10513
  br label %10517

; <label>:10517                                   ; preds = %10498, %10489
  %10518 = phi float [ 0.000000e+00, %10489 ], [ %10514, %10498 ]
  %10519 = phi float [ 0.000000e+00, %10489 ], [ %10515, %10498 ]
  %10520 = phi float [ 0.000000e+00, %10489 ], [ %10516, %10498 ]
  %10521 = fmul fast float %10518, %9095
  %10522 = fmul fast float %10519, %9095
  %10523 = fmul fast float %10520, %9095
  %10524 = fmul fast float %10491, %10153
  %10525 = call float @dx.op.dot3.f32(i32 55, float %10491, float %10491, float %10491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10526 = call float @dx.op.dot3.f32(i32 55, float %10521, float %10522, float %10523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10527 = select i1 %278, float %10525, float %10491
  %10528 = select i1 %278, float 1.000000e+00, float %10491
  %10529 = select i1 %278, float %10526, float %10521
  %10530 = select i1 %278, float 0.000000e+00, float %10522
  %10531 = select i1 %278, float 0.000000e+00, float %10523
  %10532 = fmul fast float %10527, %10165
  %10533 = fmul fast float %10527, %10166
  %10534 = fmul fast float %10528, %10167
  %10535 = fadd fast float %10532, %10529
  %10536 = fadd fast float %10533, %10530
  %10537 = fadd fast float %10531, %10534
  %10538 = fmul fast float %10527, %10168
  %10539 = fmul fast float %10527, %10169
  %10540 = fmul fast float %10528, %10170
  br label %10541

; <label>:10541                                   ; preds = %10517, %10174, %10143, %9375
  %10542 = phi float [ %9380, %9375 ], [ %10165, %10143 ], [ %10535, %10517 ], [ %10165, %10174 ]
  %10543 = phi float [ %9381, %9375 ], [ %10166, %10143 ], [ %10536, %10517 ], [ %10166, %10174 ]
  %10544 = phi float [ %9382, %9375 ], [ %10167, %10143 ], [ %10537, %10517 ], [ %10167, %10174 ]
  %10545 = phi float [ %9383, %9375 ], [ %10168, %10143 ], [ %10538, %10517 ], [ %10168, %10174 ]
  %10546 = phi float [ %9384, %9375 ], [ %10169, %10143 ], [ %10539, %10517 ], [ %10169, %10174 ]
  %10547 = phi float [ %9385, %9375 ], [ %10170, %10143 ], [ %10540, %10517 ], [ %10170, %10174 ]
  %10548 = phi float [ %9386, %9375 ], [ %10153, %10143 ], [ %10524, %10517 ], [ %10153, %10174 ]
  %10549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10550 = extractvalue %dx.types.CBufRet.f32 %10549, 2
  %10551 = extractvalue %dx.types.CBufRet.f32 %10549, 3
  %10552 = fmul fast float %10550, %123
  %10553 = fmul fast float %10551, %124
  %10554 = call float @dx.op.unary.f32(i32 7, float %10552)  ; Saturate(value)
  %10555 = call float @dx.op.unary.f32(i32 7, float %10553)  ; Saturate(value)
  %10556 = select i1 %9117, i32 2, i32 0
  %10557 = or i32 %10556, 1
  %10558 = uitofp i32 %10557 to float
  %10559 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10554, float %10555, float %10558, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10560 = extractvalue %dx.types.ResRet.f32 %10559, 0
  %10561 = extractvalue %dx.types.ResRet.f32 %10559, 1
  %10562 = extractvalue %dx.types.ResRet.f32 %10559, 2
  %10563 = extractvalue %dx.types.ResRet.f32 %10559, 3
  %10564 = add nuw nsw i32 %10556, 2
  %10565 = uitofp i32 %10564 to float
  %10566 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10554, float %10555, float %10565, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10567 = extractvalue %dx.types.ResRet.f32 %10566, 0
  %10568 = extractvalue %dx.types.ResRet.f32 %10566, 1
  %10569 = extractvalue %dx.types.ResRet.f32 %10566, 2
  %10570 = extractvalue %dx.types.ResRet.f32 %10566, 3
  %10571 = call float @dx.op.binary.f32(i32 35, float %10561, float %10562)  ; FMax(a,b)
  %10572 = call float @dx.op.binary.f32(i32 35, float %10560, float %10571)  ; FMax(a,b)
  %10573 = call float @dx.op.binary.f32(i32 35, float %10572, float %10563)  ; FMax(a,b)
  %10574 = call float @dx.op.binary.f32(i32 36, float %10568, float %10569)  ; FMin(a,b)
  %10575 = call float @dx.op.binary.f32(i32 36, float %10567, float %10574)  ; FMin(a,b)
  %10576 = call float @dx.op.binary.f32(i32 36, float %10575, float %10570)  ; FMin(a,b)
  %10577 = fmul fast float %10573, 2.550000e+02
  %10578 = fadd fast float %10577, 0x3F70101020000000
  %10579 = fptoui float %10578 to i32
  %10580 = fmul fast float %10576, 2.550000e+02
  %10581 = fadd fast float %10580, 0x3F70101020000000
  %10582 = fptoui float %10581 to i32
  %10583 = icmp ult i32 %10579, %10582
  br i1 %10583, label %10584, label %10753

; <label>:10584                                   ; preds = %10541
  %10585 = fcmp fast ogt float %109, 9.843750e-01
  %10586 = fadd fast float %9379, -4.000000e+00
  %10587 = select i1 %10585, float -4.000000e+00, float %10586
  %10588 = call float @dx.op.binary.f32(i32 35, float %10587, float 0.000000e+00)  ; FMax(a,b)
  %10589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10590 = extractvalue %dx.types.CBufRet.f32 %10589, 0
  %10591 = fadd fast float %10590, %10588
  %10592 = extractvalue %dx.types.CBufRet.f32 %10589, 2
  %10593 = fmul fast float %10591, %10592
  %10594 = call float @dx.op.unary.f32(i32 23, float %10593)  ; Log(value)
  %10595 = extractvalue %dx.types.CBufRet.f32 %10589, 3
  %10596 = fmul fast float %10595, %10594
  %10597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10598 = extractvalue %dx.types.CBufRet.f32 %10597, 2
  %10599 = fmul fast float %10596, %10598
  %10600 = call float @dx.op.unary.f32(i32 7, float %10599)  ; Saturate(value)
  %10601 = uitofp i32 %10579 to float
  %10602 = uitofp i32 %10582 to float
  %10603 = fadd fast float %10601, 5.000000e-01
  %10604 = fadd fast float %10602, 5.000000e-01
  %10605 = fmul fast float %10598, %10603
  %10606 = fmul fast float %10598, %10604
  %10607 = fadd fast float %10605, 0x3F0FFB4800000000
  %10608 = fadd fast float %10606, 0xBF0FFB4800000000
  %10609 = call float @dx.op.binary.f32(i32 35, float %10600, float %10607)  ; FMax(a,b)
  %10610 = call float @dx.op.binary.f32(i32 36, float %10609, float %10608)  ; FMin(a,b)
  %10611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10612 = extractvalue %dx.types.CBufRet.f32 %10611, 1
  %10613 = extractvalue %dx.types.CBufRet.f32 %10611, 2
  %10614 = extractvalue %dx.types.CBufRet.f32 %10611, 0
  %10615 = select i1 %9117, float %10614, float 0.000000e+00
  %10616 = fmul fast float %10612, %10610
  %10617 = fadd fast float %10615, %10616
  %10618 = fadd fast float %10615, %10613
  %10619 = fsub fast float %10612, %10613
  %10620 = fadd fast float %10619, %10615
  %10621 = call float @dx.op.binary.f32(i32 35, float %10617, float %10618)  ; FMax(a,b)
  %10622 = call float @dx.op.binary.f32(i32 36, float %10621, float %10620)  ; FMin(a,b)
  %10623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %10554, float %10555, float %10622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10624 = extractvalue %dx.types.ResRet.f32 %10623, 0
  %10625 = extractvalue %dx.types.ResRet.f32 %10623, 1
  %10626 = extractvalue %dx.types.ResRet.f32 %10623, 2
  %10627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10628 = extractvalue %dx.types.CBufRet.i32 %10627, 0
  %10629 = extractvalue %dx.types.CBufRet.i32 %10627, 1
  %10630 = uitofp i32 %10628 to float
  %10631 = uitofp i32 %10629 to float
  %10632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10633 = extractvalue %dx.types.CBufRet.f32 %10632, 0
  %10634 = extractvalue %dx.types.CBufRet.f32 %10632, 1
  %10635 = fmul fast float %10630, %10554
  %10636 = fmul fast float %10631, %10555
  %10637 = fadd fast float %10635, -5.000000e-01
  %10638 = fadd fast float %10636, -5.000000e-01
  %10639 = call float @dx.op.unary.f32(i32 22, float %10637)  ; Frc(value)
  %10640 = call float @dx.op.unary.f32(i32 22, float %10638)  ; Frc(value)
  %10641 = fmul fast float %10639, %10639
  %10642 = fmul fast float %10641, %10639
  %10643 = fsub fast float 3.000000e+00, %10639
  %10644 = fmul fast float %10641, %10643
  %10645 = fmul fast float %10639, 3.000000e+00
  %10646 = fmul fast float %10642, 3.000000e+00
  %10647 = fmul fast float %10641, 6.000000e+00
  %10648 = fsub fast float %10646, %10647
  %10649 = fadd fast float %10648, 4.000000e+00
  %10650 = fmul fast float %10649, 0x3FC5555560000000
  %10651 = fmul fast float %10642, -3.000000e+00
  %10652 = fadd fast float %10641, %10639
  %10653 = fmul fast float %10652, 3.000000e+00
  %10654 = fadd fast float %10651, 1.000000e+00
  %10655 = fadd fast float %10654, %10653
  %10656 = fmul fast float %10642, 0x3FC5555560000000
  %10657 = fmul fast float %10640, %10640
  %10658 = fmul fast float %10657, %10640
  %10659 = fsub fast float 3.000000e+00, %10640
  %10660 = fmul fast float %10657, %10659
  %10661 = fmul fast float %10640, 3.000000e+00
  %10662 = fmul fast float %10658, 3.000000e+00
  %10663 = fmul fast float %10657, 6.000000e+00
  %10664 = fsub fast float %10662, %10663
  %10665 = fadd fast float %10664, 4.000000e+00
  %10666 = fmul fast float %10665, 0x3FC5555560000000
  %10667 = fmul fast float %10658, -3.000000e+00
  %10668 = fadd fast float %10657, %10640
  %10669 = fmul fast float %10668, 3.000000e+00
  %10670 = fadd fast float %10667, 1.000000e+00
  %10671 = fadd fast float %10670, %10669
  %10672 = fmul fast float %10658, 0x3FC5555560000000
  %10673 = fadd fast float %10639, 1.000000e+00
  %10674 = fsub fast float 1.000000e+00, %10645
  %10675 = fadd fast float %10674, %10644
  %10676 = fadd fast float %10675, %10649
  %10677 = fmul fast float %10676, 0x3FC5555560000000
  %10678 = fdiv fast float %10650, %10677
  %10679 = fsub fast float %10673, %10678
  %10680 = fsub fast float 1.000000e+00, %10639
  %10681 = fadd fast float %10655, %10642
  %10682 = fmul fast float %10681, 0x3FC5555560000000
  %10683 = fdiv fast float %10656, %10682
  %10684 = fadd fast float %10680, %10683
  %10685 = fadd fast float %10640, 1.000000e+00
  %10686 = fsub fast float 1.000000e+00, %10661
  %10687 = fadd fast float %10686, %10660
  %10688 = fadd fast float %10687, %10665
  %10689 = fmul fast float %10688, 0x3FC5555560000000
  %10690 = fdiv fast float %10666, %10689
  %10691 = fsub fast float %10685, %10690
  %10692 = fsub fast float 1.000000e+00, %10640
  %10693 = fadd fast float %10671, %10658
  %10694 = fmul fast float %10693, 0x3FC5555560000000
  %10695 = fdiv fast float %10672, %10694
  %10696 = fadd fast float %10695, %10692
  %10697 = fmul fast float %10679, %10633
  %10698 = fsub fast float %10554, %10697
  %10699 = fmul fast float %10684, %10633
  %10700 = fadd fast float %10699, %10554
  %10701 = fmul fast float %10696, %10634
  %10702 = fadd fast float %10701, %10555
  %10703 = fmul fast float %10691, %10634
  %10704 = fsub fast float %10555, %10703
  %10705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10698, float %10704, float %10622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10706 = extractvalue %dx.types.ResRet.f32 %10705, 0
  %10707 = extractvalue %dx.types.ResRet.f32 %10705, 1
  %10708 = extractvalue %dx.types.ResRet.f32 %10705, 2
  %10709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10700, float %10704, float %10622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10710 = extractvalue %dx.types.ResRet.f32 %10709, 0
  %10711 = extractvalue %dx.types.ResRet.f32 %10709, 1
  %10712 = extractvalue %dx.types.ResRet.f32 %10709, 2
  %10713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10698, float %10702, float %10622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10714 = extractvalue %dx.types.ResRet.f32 %10713, 0
  %10715 = extractvalue %dx.types.ResRet.f32 %10713, 1
  %10716 = extractvalue %dx.types.ResRet.f32 %10713, 2
  %10717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10700, float %10702, float %10622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10718 = extractvalue %dx.types.ResRet.f32 %10717, 0
  %10719 = extractvalue %dx.types.ResRet.f32 %10717, 1
  %10720 = extractvalue %dx.types.ResRet.f32 %10717, 2
  %10721 = fsub fast float %10714, %10706
  %10722 = fsub fast float %10715, %10707
  %10723 = fsub fast float %10716, %10708
  %10724 = fmul fast float %10721, %10694
  %10725 = fmul fast float %10722, %10694
  %10726 = fmul fast float %10723, %10694
  %10727 = fadd fast float %10724, %10706
  %10728 = fadd fast float %10725, %10707
  %10729 = fadd fast float %10726, %10708
  %10730 = fsub fast float %10718, %10710
  %10731 = fsub fast float %10719, %10711
  %10732 = fsub fast float %10720, %10712
  %10733 = fmul fast float %10730, %10694
  %10734 = fmul fast float %10731, %10694
  %10735 = fmul fast float %10732, %10694
  %10736 = fsub fast float %10710, %10727
  %10737 = fadd fast float %10736, %10733
  %10738 = fsub fast float %10711, %10728
  %10739 = fadd fast float %10738, %10734
  %10740 = fsub fast float %10712, %10729
  %10741 = fadd fast float %10740, %10735
  %10742 = fmul fast float %10737, %10682
  %10743 = fmul fast float %10739, %10682
  %10744 = fmul fast float %10741, %10682
  %10745 = fadd fast float %10742, %10727
  %10746 = fadd fast float %10743, %10728
  %10747 = fadd fast float %10744, %10729
  %10748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10749 = extractvalue %dx.types.CBufRet.f32 %10748, 1
  %10750 = fmul fast float %10745, %10749
  %10751 = fmul fast float %10746, %10749
  %10752 = fmul fast float %10747, %10749
  br label %10753

; <label>:10753                                   ; preds = %10584, %10541
  %10754 = phi float [ %10624, %10584 ], [ 1.000000e+00, %10541 ]
  %10755 = phi float [ %10625, %10584 ], [ 1.000000e+00, %10541 ]
  %10756 = phi float [ %10626, %10584 ], [ 1.000000e+00, %10541 ]
  %10757 = phi float [ %10750, %10584 ], [ 0.000000e+00, %10541 ]
  %10758 = phi float [ %10751, %10584 ], [ 0.000000e+00, %10541 ]
  %10759 = phi float [ %10752, %10584 ], [ 0.000000e+00, %10541 ]
  %10760 = fmul fast float %10757, %9095
  %10761 = fmul fast float %10758, %9095
  %10762 = fmul fast float %10759, %9095
  %10763 = fmul fast float %10754, %10548
  %10764 = call float @dx.op.dot3.f32(i32 55, float %10754, float %10755, float %10756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10765 = call float @dx.op.dot3.f32(i32 55, float %10760, float %10761, float %10762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10766 = select i1 %278, float %10764, float %10754
  %10767 = select i1 %278, float %10764, float %10755
  %10768 = select i1 %278, float 1.000000e+00, float %10756
  %10769 = select i1 %278, float %10765, float %10760
  %10770 = select i1 %278, float 0.000000e+00, float %10761
  %10771 = select i1 %278, float 0.000000e+00, float %10762
  %10772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10773 = extractvalue %dx.types.CBufRet.i32 %10772, 3
  %10774 = and i32 %10773, 3
  %10775 = icmp ne i32 %10774, 0
  %10776 = and i32 %10773, 4
  %10777 = icmp ne i32 %10776, 0
  %10778 = and i1 %10775, %10777
  %10779 = and i1 %278, %10778
  br i1 %10779, label %10780, label %10786

; <label>:10780                                   ; preds = %10753
  %10781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10782 = extractvalue %dx.types.CBufRet.f32 %10781, 1
  %10783 = fadd fast float %10763, -1.000000e+00
  %10784 = fmul fast float %10782, %10783
  %10785 = fadd fast float %10784, 1.000000e+00
  br label %10786

; <label>:10786                                   ; preds = %10780, %10753
  %10787 = phi float [ %10785, %10780 ], [ %10763, %10753 ]
  %10788 = fadd fast float %10545, %10542
  %10789 = fmul fast float %10766, %10788
  %10790 = fadd fast float %10789, %10769
  %10791 = fadd fast float %10546, %10543
  %10792 = fmul fast float %10767, %10791
  %10793 = fadd fast float %10792, %10770
  %10794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10795 = extractvalue %dx.types.CBufRet.f32 %10794, 0
  br i1 %278, label %10796, label %10820

; <label>:10796                                   ; preds = %10786
  %10797 = fadd fast float %10790, %10793
  %10798 = fmul fast float %10795, %10797
  %10799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10800 = extractvalue %dx.types.CBufRet.f32 %10799, 3
  %10801 = extractvalue %dx.types.CBufRet.f32 %9099, 1
  %10802 = fsub fast float %9104, %9098
  %10803 = fadd fast float %10802, %9105
  %10804 = fsub fast float %10803, %10801
  %10805 = extractvalue %dx.types.CBufRet.f32 %9099, 2
  %10806 = fmul fast float %10804, %10805
  %10807 = call float @dx.op.unary.f32(i32 7, float %10806)  ; Saturate(value)
  %10808 = fsub fast float %10807, %10800
  %10809 = fmul fast float %10808, %10787
  %10810 = fadd fast float %10809, %10800
  %10811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10812 = extractvalue %dx.types.CBufRet.f32 %10811, 0
  %10813 = fsub fast float %10810, %10812
  %10814 = fmul fast float %10813, 1.000000e+01
  %10815 = call float @dx.op.unary.f32(i32 7, float %10814)  ; Saturate(value)
  %10816 = fsub fast float %4582, %9095
  %10817 = fmul fast float %10815, %10816
  %10818 = fadd fast float %10817, %9095
  %10819 = fmul fast float %10818, %10810
  br label %10844

; <label>:10820                                   ; preds = %10786
  %10821 = fadd fast float %10547, %10544
  %10822 = fmul fast float %10768, %10821
  %10823 = fadd fast float %10822, %10771
  %10824 = fmul fast float %10795, %10790
  %10825 = fmul fast float %10795, %10793
  %10826 = fmul fast float %10795, %10823
  %10827 = call float @dx.op.binary.f32(i32 35, float %10825, float %10826)  ; FMax(a,b)
  %10828 = call float @dx.op.binary.f32(i32 35, float %10824, float %10827)  ; FMax(a,b)
  %10829 = call float @dx.op.binary.f32(i32 35, float %10828, float %9095)  ; FMax(a,b)
  %10830 = fcmp fast ugt float %10829, 0x3F10000000000000
  br i1 %10830, label %10832, label %10831

; <label>:10831                                   ; preds = %10820
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10832

; <label>:10832                                   ; preds = %10831, %10820
  %10833 = add i32 %63, 372
  %10834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10833, i32 undef)  ; BufferLoad(srv,index,wot)
  %10835 = extractvalue %dx.types.ResRet.i32 %10834, 0
  %10836 = and i32 %10835, 32
  %10837 = icmp eq i32 %10836, 0
  br i1 %10837, label %10844, label %10838

; <label>:10838                                   ; preds = %10832
  %10839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10840 = extractvalue %dx.types.CBufRet.f32 %10839, 0
  %10841 = fmul fast float %10840, 0x3FE99999A0000000
  %10842 = fadd fast float %10840, %10824
  %10843 = fadd fast float %10841, %10826
  br label %10844

; <label>:10844                                   ; preds = %10838, %10832, %10796
  %10845 = phi float [ %10798, %10796 ], [ %10842, %10838 ], [ %10824, %10832 ]
  %10846 = phi float [ %10819, %10796 ], [ %10825, %10838 ], [ %10825, %10832 ]
  %10847 = phi float [ %10818, %10796 ], [ %10843, %10838 ], [ %10826, %10832 ]
  %10848 = phi float [ %10818, %10796 ], [ %9095, %10838 ], [ %9095, %10832 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10849 = call float @dx.op.binary.f32(i32 36, float %10845, float 3.225500e+04)  ; FMin(a,b)
  %10850 = call float @dx.op.binary.f32(i32 36, float %10846, float 3.225500e+04)  ; FMin(a,b)
  %10851 = call float @dx.op.binary.f32(i32 36, float %10847, float 3.225500e+04)  ; FMin(a,b)
  %10852 = call float @dx.op.binary.f32(i32 36, float %10848, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10849)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10850)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10851)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10852)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!74}
!dx.entryPoints = !{!75}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !66}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
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
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 27, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !35}
!35 = !{i32 0, i32 5}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !48}
!48 = !{i32 0, i32 14}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !48}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{!64, !65}
!64 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!65 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!68 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!69 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!70 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!71 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!72 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!73 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!74 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !103}
!76 = !{!77, !101, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !100}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"SH_RED", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 5, i8 0, !80}
!88 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 7, i8 0, !80}
!90 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 8, i8 0, !85}
!91 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 9, i8 0, !80}
!92 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 10, i8 0, !83}
!93 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 11, i8 0, !80}
!94 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 12, i8 0, !85}
!95 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !79, i8 1, i32 1, i8 1, i32 13, i8 0, !96}
!96 = !{i32 3, i32 1}
!97 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !79, i8 1, i32 1, i8 2, i32 13, i8 1, !96}
!98 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 14, i8 0, !96}
!99 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !79, i8 1, i32 1, i8 1, i32 13, i8 3, !96}
!100 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
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

