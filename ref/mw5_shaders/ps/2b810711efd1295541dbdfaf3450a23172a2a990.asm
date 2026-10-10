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
; shader hash: 37a134cc8fe1de087343c91dee50c713
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
;   [160 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T18             t1     1
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
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = alloca [4 x i32], align 4
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
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = fmul fast float %122, %107
  %124 = fmul fast float %122, %108
  %125 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %126 = bitcast float %125 to i32
  %127 = ashr i32 %126, 1
  %128 = sub nsw i32 1597250115, %127
  %129 = bitcast i32 %128 to float
  %130 = fmul fast float %129, %98
  %131 = fmul fast float %129, %99
  %132 = fmul fast float %129, %100
  %133 = fmul fast float %99, %96
  %134 = fmul fast float %100, %95
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %100, %94
  %137 = fmul fast float %98, %96
  %138 = fsub fast float %136, %137
  %139 = fmul fast float %98, %95
  %140 = fmul fast float %99, %94
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %135, %97
  %143 = fmul fast float %138, %97
  %144 = fmul fast float %141, %97
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = fcmp fast une float %146, 0.000000e+00
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %123, 2.000000e+00
  %152 = fmul fast float %151, %149
  %153 = fmul fast float %124, 2.000000e+00
  %154 = fmul fast float %153, %150
  %155 = fsub fast float 1.000000e+00, %152
  %156 = fsub fast float 1.000000e+00, %154
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = select i1 %147, float %158, float %162
  %166 = select i1 %147, float %159, float %163
  %167 = select i1 %147, float %160, float %164
  %168 = fmul fast float %165, %155
  %169 = fmul fast float %166, %155
  %170 = fmul fast float %167, %155
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = select i1 %147, float %172, float %176
  %180 = select i1 %147, float %173, float %177
  %181 = select i1 %147, float %174, float %178
  %182 = fmul fast float %179, %156
  %183 = fmul fast float %180, %156
  %184 = fmul fast float %181, %156
  %185 = fadd fast float %182, %168
  %186 = fadd fast float %183, %169
  %187 = fadd fast float %184, %170
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = select i1 %147, float %189, float %193
  %197 = select i1 %147, float %190, float %194
  %198 = select i1 %147, float %191, float %195
  %199 = fadd fast float %185, %196
  %200 = fadd fast float %186, %197
  %201 = fadd fast float %187, %198
  %202 = fmul fast float %199, %110
  %203 = fmul fast float %200, %110
  %204 = fmul fast float %201, %110
  %205 = shl i32 %64, 5
  %206 = add i32 %205, 4194304
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = extractvalue %dx.types.ResRet.i32 %207, 2
  %211 = extractvalue %dx.types.ResRet.i32 %207, 3
  %212 = add i32 %205, 4194320
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = extractvalue %dx.types.ResRet.i32 %213, 1
  %216 = bitcast i32 %214 to float
  %217 = bitcast i32 %215 to float
  %218 = add i32 %63, 360
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = extractvalue %dx.types.ResRet.i32 %219, 1
  %222 = extractvalue %dx.types.ResRet.i32 %219, 2
  %223 = extractvalue %dx.types.ResRet.i32 %219, 3
  %224 = bitcast i32 %220 to float
  %225 = bitcast i32 %221 to float
  %226 = bitcast i32 %222 to float
  %227 = bitcast i32 %223 to float
  %228 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = call float @dx.op.unary.f32(i32 25, float %228)  ; Rsqrt(value)
  %230 = fmul fast float %229, %130
  %231 = fmul fast float %229, %131
  %232 = fmul fast float %229, %132
  %233 = call float @dx.op.dot3.f32(i32 55, float %202, float %203, float %204, float %202, float %203, float %204)  ; Dot3(ax,ay,az,bx,by,bz)
  %234 = call float @dx.op.unary.f32(i32 25, float %233)  ; Rsqrt(value)
  %235 = fmul fast float %234, %202
  %236 = fmul fast float %234, %203
  %237 = fmul fast float %234, %204
  %238 = call float @dx.op.dot3.f32(i32 55, float %235, float %236, float %237, float %230, float %231, float %232)  ; Dot3(ax,ay,az,bx,by,bz)
  %239 = fmul fast float %238, %238
  %240 = fmul fast float %239, %226
  %241 = fadd fast float %240, %227
  %242 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %245 = fmul fast float %244, %233
  %246 = fsub fast float %224, %245
  %247 = fmul fast float %246, %225
  %248 = call float @dx.op.unary.f32(i32 7, float %247)  ; Saturate(value)
  %249 = fmul fast float %248, %242
  %250 = fmul fast float %123, 5.000000e-01
  %251 = fmul fast float %124, 5.000000e-01
  %252 = fptosi float %250 to i32
  %253 = fptosi float %251 to i32
  %254 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %252, i32 %253, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = lshr i32 %255, 18
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F4C00EBA0000000
  %259 = call float @dx.op.unary.f32(i32 21, float %258)  ; Exp(value)
  %260 = fadd fast float %259, -1.000000e+00
  %261 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %262 = extractvalue %dx.types.Dimensions %261, 0
  %263 = sitofp i32 %262 to float
  %264 = extractvalue %dx.types.Dimensions %261, 1
  %265 = sitofp i32 %264 to float
  %266 = fcmp fast oge float %250, %263
  %267 = fcmp fast oge float %251, %265
  %268 = or i1 %266, %267
  %269 = select i1 %268, float 0x4197782600000000, float %260
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %273 = fmul fast float %271, %123
  %274 = fmul fast float %272, %124
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 114688
  %278 = icmp ne i32 %277, 0
  %279 = select i1 %278, float %273, float 0.000000e+00
  %280 = select i1 %278, float %274, float 0.000000e+00
  %281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %279, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fmul fast float %282, 2.550000e+02
  %284 = fptoui float %283 to i32
  %285 = select i1 %278, i32 %284, i32 0
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 3
  %288 = and i32 %287, 3
  %289 = icmp ne i32 %288, 0
  %290 = and i32 %287, 4
  %291 = icmp ne i32 %290, 0
  %292 = and i1 %289, %291
  br i1 %292, label %293, label %302

; <label>:293                                     ; preds = %0
  %294 = fmul fast float %150, %124
  %295 = fmul fast float %149, %123
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %57, float %295, float %294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fsub fast float 1.000000e+00, %297
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = fcmp fast olt float %298, %300
  br label %305

; <label>:302                                     ; preds = %0
  %303 = icmp eq i32 %290, 0
  %304 = and i1 %289, %303
  br label %305

; <label>:305                                     ; preds = %302, %293
  %306 = phi i1 [ %301, %293 ], [ %304, %302 ]
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = fmul fast float %308, 0x3FE3C6EF40000000
  %310 = frem fast float %123, 2.560000e+02
  %311 = frem fast float %124, 2.560000e+02
  %312 = fptoui float %310 to i32
  %313 = fptoui float %311 to i32
  %314 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %312, i32 %313, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = extractvalue %dx.types.ResRet.f32 %314, 1
  %317 = fadd fast float %315, %309
  %318 = fadd fast float %316, %309
  %319 = call float @dx.op.unary.f32(i32 22, float %317)  ; Frc(value)
  %320 = call float @dx.op.unary.f32(i32 22, float %318)  ; Frc(value)
  %321 = add i32 %63, 156
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = shl i32 %323, 4
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %323, 7
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %323, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %63, 216
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %335, 8
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %335, 16
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = add i32 %63, 36
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %63, 288
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = fmul fast float %358, 0x3F50624DE0000000
  %362 = fmul fast float %360, 0x3F50624DE0000000
  %363 = add i32 %63, 172
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = shl i32 %365, 4
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %365, 7
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %365, 22
  %373 = shl nuw nsw i32 %372, 5
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = add i32 %63, 232
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = lshr i32 %377, 8
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = lshr i32 %377, 16
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = add i32 %63, 52
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = add i32 %63, 304
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = fmul fast float %400, 0x3F50624DE0000000
  %404 = fmul fast float %402, 0x3F50624DE0000000
  %405 = add i32 %63, 188
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = shl i32 %407, 4
  %409 = and i32 %408, 32752
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %407, 7
  %412 = and i32 %411, 32752
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %407, 22
  %415 = shl nuw nsw i32 %414, 5
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = add i32 %63, 248
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = lshr i32 %419, 8
  %424 = and i32 %423, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3F70101020000000
  %427 = lshr i32 %419, 16
  %428 = and i32 %427, 255
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %429, 0x3F70101020000000
  %431 = add i32 %63, 68
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %63, 320
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 65535
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %440, 16
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = fmul fast float %442, 0x3F50624DE0000000
  %446 = fmul fast float %444, 0x3F50624DE0000000
  %447 = add i32 %63, 204
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %459 = add i32 %63, 264
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %473 = add i32 %63, 84
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %475, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = add i32 %63, 336
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 65535
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %482, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %484, 0x3F50624DE0000000
  %488 = fmul fast float %486, 0x3F50624DE0000000
  %489 = add i32 %63, 348
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 32
  %493 = icmp eq i32 %492, 0
  %494 = and i32 %491, 64
  %495 = icmp eq i32 %494, 0
  %496 = and i32 %491, 128
  %497 = icmp eq i32 %496, 0
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 2
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %517, label %502

; <label>:502                                     ; preds = %305
  %503 = add i32 %63, 540
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = add i32 %505, 0
  %507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %507, %dx.types.Handle %120, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = fmul fast float %512, %103
  %514 = fmul fast float %509, %104
  %515 = fmul fast float %510, %105
  %516 = fmul fast float %511, %106
  br label %517

; <label>:517                                     ; preds = %502, %305
  %518 = phi float [ %106, %305 ], [ %516, %502 ]
  %519 = phi float [ %105, %305 ], [ %515, %502 ]
  %520 = phi float [ %104, %305 ], [ %514, %502 ]
  %521 = phi float [ %103, %305 ], [ %513, %502 ]
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 2
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %545, label %526

; <label>:526                                     ; preds = %517
  %527 = add i32 %63, 44
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 1
  %531 = icmp ne i32 %530, 0
  %532 = select i1 %531, float %520, float 1.000000e+00
  %533 = add i32 %63, 60
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 1
  %537 = icmp ne i32 %536, 0
  %538 = select i1 %537, float %519, float 1.000000e+00
  %539 = add i32 %63, 76
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 1
  %543 = icmp ne i32 %542, 0
  %544 = select i1 %543, float %518, float 1.000000e+00
  br label %545

; <label>:545                                     ; preds = %526, %517
  %546 = phi float [ %518, %517 ], [ %544, %526 ]
  %547 = phi float [ %519, %517 ], [ %538, %526 ]
  %548 = phi float [ %520, %517 ], [ %532, %526 ]
  %549 = lshr i32 %523, 20
  %550 = and i32 %549, 3
  %551 = add nuw nsw i32 %550, 1
  %552 = add i32 %63, 24
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = add i32 %63, 28
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = or i32 %557, %554
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %1147, label %560

; <label>:560                                     ; preds = %545
  %561 = and i32 %554, 262144
  %562 = icmp ne i32 %561, 0
  %563 = select i1 %562, float %69, float 1.000000e+00
  %564 = select i1 %562, float %70, float 0.000000e+00
  %565 = select i1 %562, float %71, float 0.000000e+00
  %566 = select i1 %562, float %72, float 1.000000e+00
  %567 = select i1 %562, float %73, float %101
  %568 = select i1 %562, float %74, float %102
  %569 = add i32 %63, 284
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = lshr i32 %571, 16
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = fmul fast float %573, 0x3F50624DE0000000
  %575 = add i32 %63, 88
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 16
  %579 = and i32 %578, 255
  %580 = lshr i32 %577, 24
  %581 = add i32 %63, 292
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 65535
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = lshr i32 %583, 16
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = add i32 %63, 32
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 22
  %592 = shl nuw nsw i32 %591, 5
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = shl i32 %590, 4
  %595 = and i32 %594, 32752
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %590, 7
  %598 = and i32 %597, 32752
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %602 = fmul fast float %601, 1.000000e+03
  %603 = fmul fast float %361, %602
  %604 = call float @dx.op.unary.f32(i32 22, float %603)  ; Frc(value)
  %605 = fadd fast float %604, %351
  %606 = fmul fast float %362, %602
  %607 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %608 = fadd fast float %607, %353
  %609 = fmul fast float %574, %602
  %610 = call float @dx.op.unary.f32(i32 22, float %609)  ; Frc(value)
  %611 = fmul fast float %610, 0x401921FB60000000
  %612 = fadd fast float %611, %593
  %613 = call float @dx.op.unary.f32(i32 13, float %612)  ; Sin(value)
  %614 = call float @dx.op.unary.f32(i32 12, float %612)  ; Cos(value)
  %615 = fsub fast float -0.000000e+00, %613
  %616 = fadd fast float %567, -5.000000e-01
  %617 = fadd fast float %568, -5.000000e-01
  %618 = fmul fast float %585, %616
  %619 = fmul fast float %587, %617
  %620 = fadd fast float %618, 5.000000e-01
  %621 = fadd fast float %619, 5.000000e-01
  %622 = fmul fast float %596, %620
  %623 = fmul fast float %599, %621
  %624 = fmul fast float %614, %622
  %625 = call float @dx.op.tertiary.f32(i32 46, float %615, float %623, float %624)  ; FMad(a,b,c)
  %626 = fmul fast float %613, %622
  %627 = call float @dx.op.tertiary.f32(i32 46, float %614, float %623, float %626)  ; FMad(a,b,c)
  %628 = fadd fast float %605, %625
  %629 = fadd fast float %608, %627
  %630 = icmp ugt i32 %579, 1
  %631 = icmp ugt i32 %577, 33554431
  %632 = or i1 %631, %630
  br i1 %632, label %633, label %658

; <label>:633                                     ; preds = %560
  %634 = add i32 %63, 228
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 16
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = fmul fast float %601, %638
  %640 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %641 = mul nuw nsw i32 %579, %580
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %640, %642
  %644 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %645 = fptoui float %644 to i32
  %646 = urem i32 %645, %579
  %647 = udiv i32 %645, %580
  %648 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %650 = uitofp i32 %646 to float
  %651 = uitofp i32 %647 to float
  %652 = fadd fast float %648, %650
  %653 = fadd fast float %649, %651
  %654 = uitofp i32 %579 to float
  %655 = uitofp i32 %580 to float
  %656 = fdiv fast float %652, %654
  %657 = fdiv fast float %653, %655
  br label %658

; <label>:658                                     ; preds = %633, %560
  %659 = phi float [ %656, %633 ], [ %628, %560 ]
  %660 = phi float [ %657, %633 ], [ %629, %560 ]
  %661 = and i32 %554, 256
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %709, label %663

; <label>:663                                     ; preds = %658
  %664 = add i32 %63, 488
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %120, float %659, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = add i32 %63, 100
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = shl i32 %673, 4
  %675 = and i32 %674, 32752
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = lshr i32 %673, 7
  %678 = and i32 %677, 32752
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = fsub fast float 1.000000e+00, %521
  %681 = call float @dx.op.binary.f32(i32 35, float %680, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %682 = bitcast float %521 to i32
  %683 = sitofp i32 %682 to float
  %684 = fadd fast float %683, 0xC1CFBF8940000000
  %685 = fmul fast float %679, %684
  %686 = fadd fast float %685, 0x41CFBF8940000000
  %687 = fptosi float %686 to i32
  %688 = bitcast i32 %687 to float
  %689 = bitcast float %681 to i32
  %690 = sitofp i32 %689 to float
  %691 = fadd fast float %690, 0xC1CFBF8940000000
  %692 = fmul fast float %691, %679
  %693 = fadd fast float %692, 0x41CFBF8940000000
  %694 = fptosi float %693 to i32
  %695 = bitcast i32 %694 to float
  %696 = fmul fast float %688, %676
  %697 = fmul fast float %695, %676
  %698 = fsub fast float %681, %696
  %699 = fadd fast float %697, %681
  %700 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %701 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %702 = fsub fast float %670, %700
  %703 = fsub fast float %701, %700
  %704 = bitcast float %703 to i32
  %705 = sub nsw i32 2129859010, %704
  %706 = bitcast i32 %705 to float
  %707 = fmul fast float %706, %702
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  br label %709

; <label>:709                                     ; preds = %663, %658
  %710 = phi float [ %708, %663 ], [ %521, %658 ]
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 128
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %731, label %715

; <label>:715                                     ; preds = %709
  %716 = add i32 %63, 472
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = add i32 %718, 0
  %720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %720, %dx.types.Handle %120, float %659, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 524288
  %726 = icmp ne i32 %725, 0
  %727 = fcmp fast ogt float %722, 0x3FE0101020000000
  %728 = select i1 %727, float 1.000000e+00, float 0.000000e+00
  %729 = select i1 %726, float %728, float %722
  %730 = fmul fast float %729, %710
  br label %731

; <label>:731                                     ; preds = %715, %709
  %732 = phi float [ %730, %715 ], [ %710, %709 ]
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 16
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %935, label %737

; <label>:737                                     ; preds = %731
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = add i32 %63, 424
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = add i32 %742, 0
  %744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %744, %dx.types.Handle %119, float %659, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = extractvalue %dx.types.ResRet.f32 %745, 3
  %750 = and i32 %739, 255
  %751 = uitofp i32 %750 to float
  %752 = lshr i32 %739, 8
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %749, %751
  %756 = fadd fast float %755, %754
  %757 = fmul fast float %756, 0x3F70101000000000
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 512
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %770, label %762

; <label>:762                                     ; preds = %737
  %763 = add i32 %63, 508
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %120, float %659, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  br label %770

; <label>:770                                     ; preds = %762, %737
  %771 = phi float [ %769, %762 ], [ 1.000000e+00, %737 ]
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 33554432
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %882, label %776

; <label>:776                                     ; preds = %770
  %777 = add i32 %63, 224
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 65535
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = lshr i32 %779, 16
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = add i32 %63, 228
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 65535
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = lshr i32 %790, 24
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101020000000
  %794 = and i32 %790, 255
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F70101020000000
  %797 = lshr i32 %790, 8
  %798 = and i32 %797, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = lshr i32 %790, 16
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = add i32 %63, 220
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = lshr i32 %807, 24
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F70101020000000
  %811 = and i32 %807, 255
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %812, 0x3F70101020000000
  %814 = lshr i32 %807, 8
  %815 = and i32 %814, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = lshr i32 %807, 16
  %819 = and i32 %818, 255
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = bitcast float %746 to i32
  %823 = ashr i32 %822, 1
  %824 = sub nsw i32 1597463174, %823
  %825 = bitcast i32 %824 to float
  %826 = fmul fast float %746, 5.000000e-01
  %827 = fmul fast float %825, %825
  %828 = fmul fast float %827, %826
  %829 = fsub fast float 1.500000e+00, %828
  %830 = fmul fast float %825, %746
  %831 = fmul fast float %830, %829
  %832 = bitcast float %747 to i32
  %833 = ashr i32 %832, 1
  %834 = sub nsw i32 1597463174, %833
  %835 = bitcast i32 %834 to float
  %836 = fmul fast float %747, 5.000000e-01
  %837 = fmul fast float %835, %835
  %838 = fmul fast float %837, %836
  %839 = fsub fast float 1.500000e+00, %838
  %840 = fmul fast float %835, %747
  %841 = fmul fast float %840, %839
  %842 = bitcast float %748 to i32
  %843 = ashr i32 %842, 1
  %844 = sub nsw i32 1597463174, %843
  %845 = bitcast i32 %844 to float
  %846 = fmul fast float %748, 5.000000e-01
  %847 = fmul fast float %845, %845
  %848 = fmul fast float %847, %846
  %849 = fsub fast float 1.500000e+00, %848
  %850 = fmul fast float %845, %748
  %851 = fmul fast float %850, %849
  %852 = fsub fast float %831, %813
  %853 = fsub fast float %841, %817
  %854 = fsub fast float %851, %821
  %855 = fmul fast float %852, %781
  %856 = fmul fast float %853, %783
  %857 = fmul fast float %854, %788
  %858 = fadd fast float %855, %796
  %859 = fadd fast float %856, %800
  %860 = fadd fast float %857, %804
  %861 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %862 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %863 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %864 = fmul fast float %861, %861
  %865 = fmul fast float %862, %862
  %866 = fmul fast float %863, %863
  %867 = fsub fast float %864, %746
  %868 = fsub fast float %865, %747
  %869 = fsub fast float %866, %748
  %870 = fmul fast float %867, %771
  %871 = fmul fast float %868, %771
  %872 = fmul fast float %869, %771
  %873 = fadd fast float %870, %746
  %874 = fadd fast float %871, %747
  %875 = fadd fast float %872, %748
  %876 = fadd fast float %793, %757
  %877 = fsub fast float %876, %810
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = fsub fast float %878, %757
  %880 = fmul fast float %879, %771
  %881 = fadd fast float %880, %757
  br label %935

; <label>:882                                     ; preds = %770
  %883 = and i32 %773, 134217728
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %919, label %885

; <label>:885                                     ; preds = %882
  %886 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %887 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %888 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %889 = fadd fast float %886, -5.000000e-01
  %890 = fadd fast float %887, -5.000000e-01
  %891 = fadd fast float %888, -5.000000e-01
  %892 = fmul fast float %889, %771
  %893 = fmul fast float %890, %771
  %894 = fmul fast float %891, %771
  %895 = fadd fast float %892, 5.000000e-01
  %896 = fadd fast float %893, 5.000000e-01
  %897 = fadd fast float %894, 5.000000e-01
  %898 = call float @dx.op.unary.f32(i32 24, float %746)  ; Sqrt(value)
  %899 = call float @dx.op.unary.f32(i32 24, float %747)  ; Sqrt(value)
  %900 = call float @dx.op.unary.f32(i32 24, float %748)  ; Sqrt(value)
  %901 = fmul fast float %895, 2.000000e+00
  %902 = fsub fast float 1.000000e+00, %901
  %903 = fmul fast float %902, %898
  %904 = fadd fast float %903, %901
  %905 = fmul fast float %904, %898
  %906 = fmul fast float %896, 2.000000e+00
  %907 = fsub fast float 1.000000e+00, %906
  %908 = fmul fast float %907, %899
  %909 = fadd fast float %908, %906
  %910 = fmul fast float %909, %899
  %911 = fmul fast float %897, 2.000000e+00
  %912 = fsub fast float 1.000000e+00, %911
  %913 = fmul fast float %912, %900
  %914 = fadd fast float %913, %911
  %915 = fmul fast float %914, %900
  %916 = fmul fast float %905, %905
  %917 = fmul fast float %910, %910
  %918 = fmul fast float %915, %915
  br label %935

; <label>:919                                     ; preds = %882
  %920 = fmul fast float %338, %338
  %921 = fmul fast float %342, %342
  %922 = fmul fast float %346, %346
  %923 = fadd fast float %920, -1.000000e+00
  %924 = fadd fast float %921, -1.000000e+00
  %925 = fadd fast float %922, -1.000000e+00
  %926 = fmul fast float %771, %923
  %927 = fmul fast float %771, %924
  %928 = fmul fast float %771, %925
  %929 = fadd fast float %926, 1.000000e+00
  %930 = fadd fast float %927, 1.000000e+00
  %931 = fadd fast float %928, 1.000000e+00
  %932 = fmul fast float %929, %746
  %933 = fmul fast float %930, %747
  %934 = fmul fast float %931, %748
  br label %935

; <label>:935                                     ; preds = %919, %885, %776, %731
  %936 = phi float [ %881, %776 ], [ %757, %885 ], [ %757, %919 ], [ 0x3FA23C0BE0000000, %731 ]
  %937 = phi float [ %873, %776 ], [ %916, %885 ], [ %932, %919 ], [ 1.000000e+00, %731 ]
  %938 = phi float [ %874, %776 ], [ %917, %885 ], [ %933, %919 ], [ 1.000000e+00, %731 ]
  %939 = phi float [ %875, %776 ], [ %918, %885 ], [ %934, %919 ], [ 1.000000e+00, %731 ]
  %940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.i32 %940, 1
  %942 = and i32 %941, 1
  %943 = icmp ne i32 %942, 0
  %944 = add i32 %63, 356
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 32
  %948 = icmp ne i32 %947, 0
  %949 = and i1 %943, %948
  %950 = select i1 %949, float 1.000000e+00, float %937
  %951 = select i1 %949, float 0x3FD3333340000000, float %938
  %952 = select i1 %949, float 0x3FD3333340000000, float %939
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 32
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %1029, label %957

; <label>:957                                     ; preds = %935
  %958 = add i32 %63, 92
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = add i32 %63, 440
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = add i32 %963, 0
  %965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %965, %dx.types.Handle %119, float %659, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  %971 = and i32 %960, 255
  %972 = uitofp i32 %971 to float
  %973 = lshr i32 %960, 8
  %974 = and i32 %973, 255
  %975 = uitofp i32 %974 to float
  %976 = lshr i32 %960, 16
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101000000000
  %980 = fmul fast float %967, %972
  %981 = fadd fast float %980, %975
  %982 = fmul fast float %981, 0x3F70101000000000
  %983 = fadd fast float %968, -5.000000e-01
  %984 = fadd fast float %970, -5.000000e-01
  %985 = fmul fast float %983, %979
  %986 = fmul fast float %984, %979
  %987 = fadd fast float %985, 5.000000e-01
  %988 = fadd fast float %986, 5.000000e-01
  %989 = fmul fast float %987, 2.000000e+00
  %990 = fadd fast float %989, -1.000000e+00
  %991 = fmul fast float %988, 2.000000e+00
  %992 = fadd fast float %991, -1.000000e+00
  %993 = fadd fast float %990, %992
  %994 = fmul fast float %993, 5.000000e-01
  %995 = fsub fast float %990, %992
  %996 = fmul fast float %995, 5.000000e-01
  %997 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %998 = fsub fast float 1.000000e+00, %997
  %999 = call float @dx.op.unary.f32(i32 6, float %996)  ; FAbs(value)
  %1000 = fsub fast float %998, %999
  %1001 = call float @dx.op.dot3.f32(i32 55, float %994, float %996, float %1000, float %994, float %996, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.unary.f32(i32 25, float %1001)  ; Rsqrt(value)
  %1003 = fmul fast float %994, %1002
  %1004 = fmul fast float %996, %1002
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 67108864
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1025, label %1009

; <label>:1009                                    ; preds = %957
  %1010 = add i32 %63, 280
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 65535
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 65535
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = lshr i32 %1012, 16
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = fsub fast float %982, %1020
  %1022 = fmul fast float %1021, %1014
  %1023 = fadd fast float %1022, %1018
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  br label %1025

; <label>:1025                                    ; preds = %1009, %957
  %1026 = phi float [ %1024, %1009 ], [ %982, %957 ]
  %1027 = call float @dx.op.dot2.f32(i32 54, float %1003, float %1004, float %563, float %564)  ; Dot2(ax,ay,bx,by)
  %1028 = call float @dx.op.dot2.f32(i32 54, float %1003, float %1004, float %565, float %566)  ; Dot2(ax,ay,bx,by)
  br label %1029

; <label>:1029                                    ; preds = %1025, %935
  %1030 = phi float [ %1026, %1025 ], [ 0x3FD6666660000000, %935 ]
  %1031 = phi float [ %1027, %1025 ], [ 0.000000e+00, %935 ]
  %1032 = phi float [ %1028, %1025 ], [ 0.000000e+00, %935 ]
  %1033 = phi float [ %969, %1025 ], [ 1.000000e+00, %935 ]
  %1034 = add i32 %63, 160
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = lshr i32 %1036, 22
  %1038 = shl nuw nsw i32 %1037, 5
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 64
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1077, label %1044

; <label>:1044                                    ; preds = %1029
  %1045 = add i32 %63, 456
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = add i32 %1047, 0
  %1049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = and i32 %1051, 131072
  %1053 = icmp eq i32 %1052, 0
  %1054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1049, %dx.types.Handle %119, float %659, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = fmul fast float %1055, %326
  %1059 = fmul fast float %1056, %329
  %1060 = fmul fast float %1057, %332
  br i1 %1053, label %1067, label %1061

; <label>:1061                                    ; preds = %1044
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = fmul fast float %1063, %1058
  %1065 = fmul fast float %1063, %1059
  %1066 = fmul fast float %1063, %1060
  br label %1067

; <label>:1067                                    ; preds = %1061, %1044
  %1068 = phi float [ %1064, %1061 ], [ %1058, %1044 ]
  %1069 = phi float [ %1065, %1061 ], [ %1059, %1044 ]
  %1070 = phi float [ %1066, %1061 ], [ %1060, %1044 ]
  %1071 = fmul fast float %1068, %1039
  %1072 = select i1 %306, float %1071, float %1068
  %1073 = call float @dx.op.dot3.f32(i32 55, float %1072, float %1069, float %1070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = select i1 %306, float 0.000000e+00, float %1068
  %1075 = select i1 %306, float %1073, float %1069
  %1076 = select i1 %306, float 0.000000e+00, float %1070
  br label %1077

; <label>:1077                                    ; preds = %1067, %1029
  %1078 = phi float [ %1074, %1067 ], [ 0.000000e+00, %1029 ]
  %1079 = phi float [ %1075, %1067 ], [ 0.000000e+00, %1029 ]
  %1080 = phi float [ %1076, %1067 ], [ 0.000000e+00, %1029 ]
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 10240
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1129, label %1085

; <label>:1085                                    ; preds = %1077
  %1086 = add i32 %63, 524
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = add i32 %1088, 0
  %1090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1090, %dx.types.Handle %120, float %659, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 3
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 1048576
  %1097 = icmp ne i32 %1096, 0
  %1098 = and i32 %1095, 8192
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1115, label %1100

; <label>:1100                                    ; preds = %1085
  %1101 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1102 = select i1 %1097, float %1101, float %1092
  %1103 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1104 = select i1 %1097, float %1103, float %1092
  %1105 = add i32 %63, 96
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = lshr i32 %1107, 16
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1110, 0x3F80101020000000
  %1112 = fmul fast float %1111, %1104
  %1113 = fmul fast float %1111, %1092
  %1114 = fmul fast float %1111, %1102
  br label %1115

; <label>:1115                                    ; preds = %1100, %1085
  %1116 = phi float [ %1112, %1100 ], [ 0.000000e+00, %1085 ]
  %1117 = phi float [ %1113, %1100 ], [ 0.000000e+00, %1085 ]
  %1118 = phi float [ %1114, %1100 ], [ 0.000000e+00, %1085 ]
  %1119 = and i32 %1095, 2048
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1129, label %1121

; <label>:1121                                    ; preds = %1115
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = shl i32 %1123, 4
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fmul fast float %1126, %1093
  %1128 = call float @dx.op.binary.f32(i32 35, float %1127, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1129

; <label>:1129                                    ; preds = %1121, %1115, %1077
  %1130 = phi float [ %1116, %1121 ], [ %1116, %1115 ], [ 0.000000e+00, %1077 ]
  %1131 = phi float [ %1117, %1121 ], [ %1117, %1115 ], [ 0.000000e+00, %1077 ]
  %1132 = phi float [ %1118, %1121 ], [ %1118, %1115 ], [ 0.000000e+00, %1077 ]
  %1133 = phi float [ %1128, %1121 ], [ 0x3F70101020000000, %1115 ], [ 0x3F70101020000000, %1077 ]
  %1134 = add i32 %63, 96
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = lshr i32 %1136, 8
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = call float @dx.op.dot3.f32(i32 55, float %950, float %951, float %952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = fmul fast float %1141, %1142
  %1144 = fadd fast float %1143, %1138
  %1145 = fmul fast float %1144, 0x3F70101020000000
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  br label %1147

; <label>:1147                                    ; preds = %1129, %545
  %1148 = phi float [ 0.000000e+00, %545 ], [ %1031, %1129 ]
  %1149 = phi float [ 0.000000e+00, %545 ], [ %1032, %1129 ]
  %1150 = phi float [ 0.000000e+00, %545 ], [ %950, %1129 ]
  %1151 = phi float [ 0.000000e+00, %545 ], [ %951, %1129 ]
  %1152 = phi float [ 0.000000e+00, %545 ], [ %952, %1129 ]
  %1153 = phi float [ 0.000000e+00, %545 ], [ %1078, %1129 ]
  %1154 = phi float [ 0.000000e+00, %545 ], [ %1079, %1129 ]
  %1155 = phi float [ 0.000000e+00, %545 ], [ %1080, %1129 ]
  %1156 = phi float [ 0.000000e+00, %545 ], [ %1130, %1129 ]
  %1157 = phi float [ 0.000000e+00, %545 ], [ %1131, %1129 ]
  %1158 = phi float [ 0.000000e+00, %545 ], [ %1132, %1129 ]
  %1159 = phi float [ 0.000000e+00, %545 ], [ %936, %1129 ]
  %1160 = phi float [ 0.000000e+00, %545 ], [ %732, %1129 ]
  %1161 = phi float [ 0.000000e+00, %545 ], [ %1030, %1129 ]
  %1162 = phi float [ 0.000000e+00, %545 ], [ %1033, %1129 ]
  %1163 = phi float [ 0.000000e+00, %545 ], [ %1133, %1129 ]
  %1164 = phi float [ 0.000000e+00, %545 ], [ %1146, %1129 ]
  br i1 %493, label %1978, label %1165

; <label>:1165                                    ; preds = %1147
  %1166 = icmp ult i32 %551, 2
  %1167 = add i32 %63, 40
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %63, 44
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = or i32 %1172, %1169
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1978, label %1175

; <label>:1175                                    ; preds = %1165
  %1176 = and i32 %1169, 262144
  %1177 = icmp ne i32 %1176, 0
  %1178 = select i1 %1177, float %69, float 1.000000e+00
  %1179 = select i1 %1177, float %70, float 0.000000e+00
  %1180 = select i1 %1177, float %71, float 0.000000e+00
  %1181 = select i1 %1177, float %72, float 1.000000e+00
  %1182 = select i1 %1177, float %73, float %101
  %1183 = select i1 %1177, float %74, float %102
  %1184 = add i32 %63, 300
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = lshr i32 %1186, 16
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = fmul fast float %1188, 0x3F50624DE0000000
  %1190 = add i32 %63, 104
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 16
  %1194 = and i32 %1193, 255
  %1195 = lshr i32 %1192, 24
  %1196 = add i32 %63, 308
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 65535
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1198, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = add i32 %63, 48
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = lshr i32 %1205, 22
  %1207 = shl nuw nsw i32 %1206, 5
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = shl i32 %1205, 4
  %1210 = and i32 %1209, 32752
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = lshr i32 %1205, 7
  %1213 = and i32 %1212, 32752
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1217 = fmul fast float %1216, 1.000000e+03
  %1218 = fmul fast float %403, %1217
  %1219 = call float @dx.op.unary.f32(i32 22, float %1218)  ; Frc(value)
  %1220 = fadd fast float %1219, %393
  %1221 = fmul fast float %404, %1217
  %1222 = call float @dx.op.unary.f32(i32 22, float %1221)  ; Frc(value)
  %1223 = fadd fast float %1222, %395
  %1224 = fmul fast float %1189, %1217
  %1225 = call float @dx.op.unary.f32(i32 22, float %1224)  ; Frc(value)
  %1226 = fmul fast float %1225, 0x401921FB60000000
  %1227 = fadd fast float %1226, %1208
  %1228 = call float @dx.op.unary.f32(i32 13, float %1227)  ; Sin(value)
  %1229 = call float @dx.op.unary.f32(i32 12, float %1227)  ; Cos(value)
  %1230 = fsub fast float -0.000000e+00, %1228
  %1231 = fadd fast float %1182, -5.000000e-01
  %1232 = fadd fast float %1183, -5.000000e-01
  %1233 = fmul fast float %1200, %1231
  %1234 = fmul fast float %1202, %1232
  %1235 = fadd fast float %1233, 5.000000e-01
  %1236 = fadd fast float %1234, 5.000000e-01
  %1237 = fmul fast float %1211, %1235
  %1238 = fmul fast float %1214, %1236
  %1239 = fmul fast float %1229, %1237
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1230, float %1238, float %1239)  ; FMad(a,b,c)
  %1241 = fmul fast float %1228, %1237
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %1229, float %1238, float %1241)  ; FMad(a,b,c)
  %1243 = fadd fast float %1220, %1240
  %1244 = fadd fast float %1223, %1242
  %1245 = icmp ugt i32 %1194, 1
  %1246 = icmp ugt i32 %1192, 33554431
  %1247 = or i1 %1246, %1245
  br i1 %1247, label %1248, label %1273

; <label>:1248                                    ; preds = %1175
  %1249 = add i32 %63, 244
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = lshr i32 %1251, 16
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = fmul fast float %1216, %1253
  %1255 = call float @dx.op.unary.f32(i32 22, float %1254)  ; Frc(value)
  %1256 = mul nuw nsw i32 %1194, %1195
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1255, %1257
  %1259 = call float @dx.op.unary.f32(i32 27, float %1258)  ; Round_ni(value)
  %1260 = fptoui float %1259 to i32
  %1261 = urem i32 %1260, %1194
  %1262 = udiv i32 %1260, %1195
  %1263 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1264 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1265 = uitofp i32 %1261 to float
  %1266 = uitofp i32 %1262 to float
  %1267 = fadd fast float %1263, %1265
  %1268 = fadd fast float %1264, %1266
  %1269 = uitofp i32 %1194 to float
  %1270 = uitofp i32 %1195 to float
  %1271 = fdiv fast float %1267, %1269
  %1272 = fdiv fast float %1268, %1270
  br label %1273

; <label>:1273                                    ; preds = %1248, %1175
  %1274 = phi float [ %1271, %1248 ], [ %1243, %1175 ]
  %1275 = phi float [ %1272, %1248 ], [ %1244, %1175 ]
  %1276 = and i32 %1169, 256
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1324, label %1278

; <label>:1278                                    ; preds = %1273
  %1279 = add i32 %63, 492
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %1281, 0
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1283, %dx.types.Handle %120, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = add i32 %63, 116
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = shl i32 %1288, 4
  %1290 = and i32 %1289, 32752
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = lshr i32 %1288, 7
  %1293 = and i32 %1292, 32752
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = fsub fast float 1.000000e+00, %548
  %1296 = call float @dx.op.binary.f32(i32 35, float %1295, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1297 = bitcast float %548 to i32
  %1298 = sitofp i32 %1297 to float
  %1299 = fadd fast float %1298, 0xC1CFBF8940000000
  %1300 = fmul fast float %1294, %1299
  %1301 = fadd fast float %1300, 0x41CFBF8940000000
  %1302 = fptosi float %1301 to i32
  %1303 = bitcast i32 %1302 to float
  %1304 = bitcast float %1296 to i32
  %1305 = sitofp i32 %1304 to float
  %1306 = fadd fast float %1305, 0xC1CFBF8940000000
  %1307 = fmul fast float %1306, %1294
  %1308 = fadd fast float %1307, 0x41CFBF8940000000
  %1309 = fptosi float %1308 to i32
  %1310 = bitcast i32 %1309 to float
  %1311 = fmul fast float %1303, %1291
  %1312 = fmul fast float %1310, %1291
  %1313 = fsub fast float %1296, %1311
  %1314 = fadd fast float %1312, %1296
  %1315 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1316 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1317 = fsub fast float %1285, %1315
  %1318 = fsub fast float %1316, %1315
  %1319 = bitcast float %1318 to i32
  %1320 = sub nsw i32 2129859010, %1319
  %1321 = bitcast i32 %1320 to float
  %1322 = fmul fast float %1321, %1317
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  br label %1324

; <label>:1324                                    ; preds = %1278, %1273
  %1325 = phi float [ %1323, %1278 ], [ %548, %1273 ]
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 128
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1346, label %1330

; <label>:1330                                    ; preds = %1324
  %1331 = add i32 %63, 476
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1335, %dx.types.Handle %120, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 524288
  %1341 = icmp ne i32 %1340, 0
  %1342 = fcmp fast ogt float %1337, 0x3FE0101020000000
  %1343 = select i1 %1342, float 1.000000e+00, float 0.000000e+00
  %1344 = select i1 %1341, float %1343, float %1337
  %1345 = fmul fast float %1344, %1325
  br label %1346

; <label>:1346                                    ; preds = %1330, %1324
  %1347 = phi float [ %1345, %1330 ], [ %1325, %1324 ]
  %1348 = fcmp fast ult float %1347, 0x3F70101020000000
  br i1 %1348, label %1978, label %1349

; <label>:1349                                    ; preds = %1346
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 16
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1552, label %1354

; <label>:1354                                    ; preds = %1349
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %63, 428
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = add i32 %1359, 0
  %1361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1361, %dx.types.Handle %119, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.ResRet.f32 %1362, 3
  %1367 = and i32 %1356, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = lshr i32 %1356, 8
  %1370 = and i32 %1369, 255
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1366, %1368
  %1373 = fadd fast float %1372, %1371
  %1374 = fmul fast float %1373, 0x3F70101000000000
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = and i32 %1376, 512
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1387, label %1379

; <label>:1379                                    ; preds = %1354
  %1380 = add i32 %63, 512
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = add i32 %1382, 0
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1384, %dx.types.Handle %120, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  br label %1387

; <label>:1387                                    ; preds = %1379, %1354
  %1388 = phi float [ %1386, %1379 ], [ 1.000000e+00, %1354 ]
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 33554432
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1499, label %1393

; <label>:1393                                    ; preds = %1387
  %1394 = add i32 %63, 240
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 65535
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1396, 16
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = add i32 %63, 244
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 65535
  %1405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1404)  ; LegacyF16ToF32(value)
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = lshr i32 %1407, 24
  %1409 = uitofp i32 %1408 to float
  %1410 = fmul fast float %1409, 0x3F70101020000000
  %1411 = and i32 %1407, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1412, 0x3F70101020000000
  %1414 = lshr i32 %1407, 8
  %1415 = and i32 %1414, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = lshr i32 %1407, 16
  %1419 = and i32 %1418, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = add i32 %63, 236
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = lshr i32 %1424, 24
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = and i32 %1424, 255
  %1429 = uitofp i32 %1428 to float
  %1430 = fmul fast float %1429, 0x3F70101020000000
  %1431 = lshr i32 %1424, 8
  %1432 = and i32 %1431, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = fmul fast float %1433, 0x3F70101020000000
  %1435 = lshr i32 %1424, 16
  %1436 = and i32 %1435, 255
  %1437 = uitofp i32 %1436 to float
  %1438 = fmul fast float %1437, 0x3F70101020000000
  %1439 = bitcast float %1363 to i32
  %1440 = ashr i32 %1439, 1
  %1441 = sub nsw i32 1597463174, %1440
  %1442 = bitcast i32 %1441 to float
  %1443 = fmul fast float %1363, 5.000000e-01
  %1444 = fmul fast float %1442, %1442
  %1445 = fmul fast float %1444, %1443
  %1446 = fsub fast float 1.500000e+00, %1445
  %1447 = fmul fast float %1442, %1363
  %1448 = fmul fast float %1447, %1446
  %1449 = bitcast float %1364 to i32
  %1450 = ashr i32 %1449, 1
  %1451 = sub nsw i32 1597463174, %1450
  %1452 = bitcast i32 %1451 to float
  %1453 = fmul fast float %1364, 5.000000e-01
  %1454 = fmul fast float %1452, %1452
  %1455 = fmul fast float %1454, %1453
  %1456 = fsub fast float 1.500000e+00, %1455
  %1457 = fmul fast float %1452, %1364
  %1458 = fmul fast float %1457, %1456
  %1459 = bitcast float %1365 to i32
  %1460 = ashr i32 %1459, 1
  %1461 = sub nsw i32 1597463174, %1460
  %1462 = bitcast i32 %1461 to float
  %1463 = fmul fast float %1365, 5.000000e-01
  %1464 = fmul fast float %1462, %1462
  %1465 = fmul fast float %1464, %1463
  %1466 = fsub fast float 1.500000e+00, %1465
  %1467 = fmul fast float %1462, %1365
  %1468 = fmul fast float %1467, %1466
  %1469 = fsub fast float %1448, %1430
  %1470 = fsub fast float %1458, %1434
  %1471 = fsub fast float %1468, %1438
  %1472 = fmul fast float %1469, %1398
  %1473 = fmul fast float %1470, %1400
  %1474 = fmul fast float %1471, %1405
  %1475 = fadd fast float %1472, %1413
  %1476 = fadd fast float %1473, %1417
  %1477 = fadd fast float %1474, %1421
  %1478 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = fmul fast float %1478, %1478
  %1482 = fmul fast float %1479, %1479
  %1483 = fmul fast float %1480, %1480
  %1484 = fsub fast float %1481, %1363
  %1485 = fsub fast float %1482, %1364
  %1486 = fsub fast float %1483, %1365
  %1487 = fmul fast float %1484, %1388
  %1488 = fmul fast float %1485, %1388
  %1489 = fmul fast float %1486, %1388
  %1490 = fadd fast float %1487, %1363
  %1491 = fadd fast float %1488, %1364
  %1492 = fadd fast float %1489, %1365
  %1493 = fadd fast float %1410, %1374
  %1494 = fsub fast float %1493, %1427
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fsub fast float %1495, %1374
  %1497 = fmul fast float %1496, %1388
  %1498 = fadd fast float %1497, %1374
  br label %1552

; <label>:1499                                    ; preds = %1387
  %1500 = and i32 %1390, 134217728
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1536, label %1502

; <label>:1502                                    ; preds = %1499
  %1503 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %1504 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %1505 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %1506 = fadd fast float %1503, -5.000000e-01
  %1507 = fadd fast float %1504, -5.000000e-01
  %1508 = fadd fast float %1505, -5.000000e-01
  %1509 = fmul fast float %1506, %1388
  %1510 = fmul fast float %1507, %1388
  %1511 = fmul fast float %1508, %1388
  %1512 = fadd fast float %1509, 5.000000e-01
  %1513 = fadd fast float %1510, 5.000000e-01
  %1514 = fadd fast float %1511, 5.000000e-01
  %1515 = call float @dx.op.unary.f32(i32 24, float %1363)  ; Sqrt(value)
  %1516 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %1517 = call float @dx.op.unary.f32(i32 24, float %1365)  ; Sqrt(value)
  %1518 = fmul fast float %1512, 2.000000e+00
  %1519 = fsub fast float 1.000000e+00, %1518
  %1520 = fmul fast float %1519, %1515
  %1521 = fadd fast float %1520, %1518
  %1522 = fmul fast float %1521, %1515
  %1523 = fmul fast float %1513, 2.000000e+00
  %1524 = fsub fast float 1.000000e+00, %1523
  %1525 = fmul fast float %1524, %1516
  %1526 = fadd fast float %1525, %1523
  %1527 = fmul fast float %1526, %1516
  %1528 = fmul fast float %1514, 2.000000e+00
  %1529 = fsub fast float 1.000000e+00, %1528
  %1530 = fmul fast float %1529, %1517
  %1531 = fadd fast float %1530, %1528
  %1532 = fmul fast float %1531, %1517
  %1533 = fmul fast float %1522, %1522
  %1534 = fmul fast float %1527, %1527
  %1535 = fmul fast float %1532, %1532
  br label %1552

; <label>:1536                                    ; preds = %1499
  %1537 = fmul fast float %380, %380
  %1538 = fmul fast float %384, %384
  %1539 = fmul fast float %388, %388
  %1540 = fadd fast float %1537, -1.000000e+00
  %1541 = fadd fast float %1538, -1.000000e+00
  %1542 = fadd fast float %1539, -1.000000e+00
  %1543 = fmul fast float %1388, %1540
  %1544 = fmul fast float %1388, %1541
  %1545 = fmul fast float %1388, %1542
  %1546 = fadd fast float %1543, 1.000000e+00
  %1547 = fadd fast float %1544, 1.000000e+00
  %1548 = fadd fast float %1545, 1.000000e+00
  %1549 = fmul fast float %1546, %1363
  %1550 = fmul fast float %1547, %1364
  %1551 = fmul fast float %1548, %1365
  br label %1552

; <label>:1552                                    ; preds = %1536, %1502, %1393, %1349
  %1553 = phi float [ %1498, %1393 ], [ %1374, %1502 ], [ %1374, %1536 ], [ 0x3FA23C0BE0000000, %1349 ]
  %1554 = phi float [ %1490, %1393 ], [ %1533, %1502 ], [ %1549, %1536 ], [ 1.000000e+00, %1349 ]
  %1555 = phi float [ %1491, %1393 ], [ %1534, %1502 ], [ %1550, %1536 ], [ 1.000000e+00, %1349 ]
  %1556 = phi float [ %1492, %1393 ], [ %1535, %1502 ], [ %1551, %1536 ], [ 1.000000e+00, %1349 ]
  %1557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.i32 %1557, 1
  %1559 = and i32 %1558, 1
  %1560 = icmp ne i32 %1559, 0
  %1561 = add i32 %63, 356
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 32
  %1565 = icmp ne i32 %1564, 0
  %1566 = and i1 %1560, %1565
  %1567 = select i1 %1566, float 1.000000e+00, float %1554
  %1568 = select i1 %1566, float 0x3FD3333340000000, float %1555
  %1569 = select i1 %1566, float 0x3FD3333340000000, float %1556
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 32
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1646, label %1574

; <label>:1574                                    ; preds = %1552
  %1575 = add i32 %63, 108
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = add i32 %63, 444
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = add i32 %1580, 0
  %1582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1582, %dx.types.Handle %119, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = extractvalue %dx.types.ResRet.f32 %1583, 3
  %1588 = and i32 %1577, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = lshr i32 %1577, 8
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = lshr i32 %1577, 16
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = fmul fast float %1595, 0x3F70101000000000
  %1597 = fmul fast float %1584, %1589
  %1598 = fadd fast float %1597, %1592
  %1599 = fmul fast float %1598, 0x3F70101000000000
  %1600 = fadd fast float %1585, -5.000000e-01
  %1601 = fadd fast float %1587, -5.000000e-01
  %1602 = fmul fast float %1600, %1596
  %1603 = fmul fast float %1601, %1596
  %1604 = fadd fast float %1602, 5.000000e-01
  %1605 = fadd fast float %1603, 5.000000e-01
  %1606 = fmul fast float %1604, 2.000000e+00
  %1607 = fadd fast float %1606, -1.000000e+00
  %1608 = fmul fast float %1605, 2.000000e+00
  %1609 = fadd fast float %1608, -1.000000e+00
  %1610 = fadd fast float %1607, %1609
  %1611 = fmul fast float %1610, 5.000000e-01
  %1612 = fsub fast float %1607, %1609
  %1613 = fmul fast float %1612, 5.000000e-01
  %1614 = call float @dx.op.unary.f32(i32 6, float %1611)  ; FAbs(value)
  %1615 = fsub fast float 1.000000e+00, %1614
  %1616 = call float @dx.op.unary.f32(i32 6, float %1613)  ; FAbs(value)
  %1617 = fsub fast float %1615, %1616
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1611, float %1613, float %1617, float %1611, float %1613, float %1617)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = call float @dx.op.unary.f32(i32 25, float %1618)  ; Rsqrt(value)
  %1620 = fmul fast float %1611, %1619
  %1621 = fmul fast float %1613, %1619
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 67108864
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1642, label %1626

; <label>:1626                                    ; preds = %1574
  %1627 = add i32 %63, 296
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = and i32 %1629, 65535
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = and i32 %1633, 65535
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = lshr i32 %1629, 16
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = fsub fast float %1599, %1637
  %1639 = fmul fast float %1638, %1631
  %1640 = fadd fast float %1639, %1635
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  br label %1642

; <label>:1642                                    ; preds = %1626, %1574
  %1643 = phi float [ %1641, %1626 ], [ %1599, %1574 ]
  %1644 = call float @dx.op.dot2.f32(i32 54, float %1620, float %1621, float %1178, float %1179)  ; Dot2(ax,ay,bx,by)
  %1645 = call float @dx.op.dot2.f32(i32 54, float %1620, float %1621, float %1180, float %1181)  ; Dot2(ax,ay,bx,by)
  br label %1646

; <label>:1646                                    ; preds = %1642, %1552
  %1647 = phi float [ %1643, %1642 ], [ 0x3FD6666660000000, %1552 ]
  %1648 = phi float [ %1644, %1642 ], [ 0.000000e+00, %1552 ]
  %1649 = phi float [ %1645, %1642 ], [ 0.000000e+00, %1552 ]
  %1650 = phi float [ %1586, %1642 ], [ 1.000000e+00, %1552 ]
  %1651 = add i32 %63, 176
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = lshr i32 %1653, 22
  %1655 = shl nuw nsw i32 %1654, 5
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 64
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1694, label %1661

; <label>:1661                                    ; preds = %1646
  %1662 = add i32 %63, 460
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = add i32 %1664, 0
  %1666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 131072
  %1670 = icmp eq i32 %1669, 0
  %1671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1666, %dx.types.Handle %119, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = fmul fast float %1672, %368
  %1676 = fmul fast float %1673, %371
  %1677 = fmul fast float %1674, %374
  br i1 %1670, label %1684, label %1678

; <label>:1678                                    ; preds = %1661
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = fmul fast float %1680, %1675
  %1682 = fmul fast float %1680, %1676
  %1683 = fmul fast float %1680, %1677
  br label %1684

; <label>:1684                                    ; preds = %1678, %1661
  %1685 = phi float [ %1681, %1678 ], [ %1675, %1661 ]
  %1686 = phi float [ %1682, %1678 ], [ %1676, %1661 ]
  %1687 = phi float [ %1683, %1678 ], [ %1677, %1661 ]
  %1688 = fmul fast float %1685, %1656
  %1689 = select i1 %306, float %1688, float %1685
  %1690 = call float @dx.op.dot3.f32(i32 55, float %1689, float %1686, float %1687, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1691 = select i1 %306, float 0.000000e+00, float %1685
  %1692 = select i1 %306, float %1690, float %1686
  %1693 = select i1 %306, float 0.000000e+00, float %1687
  br label %1694

; <label>:1694                                    ; preds = %1684, %1646
  %1695 = phi float [ %1691, %1684 ], [ 0.000000e+00, %1646 ]
  %1696 = phi float [ %1692, %1684 ], [ 0.000000e+00, %1646 ]
  %1697 = phi float [ %1693, %1684 ], [ 0.000000e+00, %1646 ]
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 10240
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1746, label %1702

; <label>:1702                                    ; preds = %1694
  %1703 = add i32 %63, 528
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = add i32 %1705, 0
  %1707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1707, %dx.types.Handle %120, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 3
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = and i32 %1712, 1048576
  %1714 = icmp ne i32 %1713, 0
  %1715 = and i32 %1712, 8192
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1732, label %1717

; <label>:1717                                    ; preds = %1702
  %1718 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1719 = select i1 %1714, float %1718, float %1709
  %1720 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1721 = select i1 %1714, float %1720, float %1709
  %1722 = add i32 %63, 112
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = lshr i32 %1724, 16
  %1726 = and i32 %1725, 255
  %1727 = uitofp i32 %1726 to float
  %1728 = fmul fast float %1727, 0x3F80101020000000
  %1729 = fmul fast float %1728, %1721
  %1730 = fmul fast float %1728, %1709
  %1731 = fmul fast float %1728, %1719
  br label %1732

; <label>:1732                                    ; preds = %1717, %1702
  %1733 = phi float [ %1729, %1717 ], [ 0.000000e+00, %1702 ]
  %1734 = phi float [ %1730, %1717 ], [ 0.000000e+00, %1702 ]
  %1735 = phi float [ %1731, %1717 ], [ 0.000000e+00, %1702 ]
  %1736 = and i32 %1712, 2048
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1746, label %1738

; <label>:1738                                    ; preds = %1732
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = shl i32 %1740, 4
  %1742 = and i32 %1741, 32752
  %1743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1742)  ; LegacyF16ToF32(value)
  %1744 = fmul fast float %1743, %1710
  %1745 = call float @dx.op.binary.f32(i32 35, float %1744, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1746

; <label>:1746                                    ; preds = %1738, %1732, %1694
  %1747 = phi float [ %1733, %1738 ], [ %1733, %1732 ], [ 0.000000e+00, %1694 ]
  %1748 = phi float [ %1734, %1738 ], [ %1734, %1732 ], [ 0.000000e+00, %1694 ]
  %1749 = phi float [ %1735, %1738 ], [ %1735, %1732 ], [ 0.000000e+00, %1694 ]
  %1750 = phi float [ %1745, %1738 ], [ 0x3F70101020000000, %1732 ], [ 0x3F70101020000000, %1694 ]
  %1751 = add i32 %63, 112
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 255
  %1755 = uitofp i32 %1754 to float
  %1756 = lshr i32 %1753, 8
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1568, float %1569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1760 = fmul fast float %1758, %1759
  %1761 = fadd fast float %1760, %1755
  %1762 = fmul fast float %1761, 0x3F70101020000000
  %1763 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  br i1 %1166, label %1764, label %1772

; <label>:1764                                    ; preds = %1746
  %1765 = fsub fast float 1.000000e+00, %1347
  %1766 = fmul fast float %1765, %1150
  %1767 = fmul fast float %1765, %1151
  %1768 = fmul fast float %1765, %1152
  %1769 = fmul fast float %1765, %1153
  %1770 = fmul fast float %1765, %1154
  %1771 = fmul fast float %1765, %1155
  br label %1772

; <label>:1772                                    ; preds = %1764, %1746
  %1773 = phi float [ %1766, %1764 ], [ %1150, %1746 ]
  %1774 = phi float [ %1767, %1764 ], [ %1151, %1746 ]
  %1775 = phi float [ %1768, %1764 ], [ %1152, %1746 ]
  %1776 = phi float [ %1769, %1764 ], [ %1153, %1746 ]
  %1777 = phi float [ %1770, %1764 ], [ %1154, %1746 ]
  %1778 = phi float [ %1771, %1764 ], [ %1155, %1746 ]
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = and i32 %1780, 3
  %1782 = icmp eq i32 %1781, 3
  br i1 %1782, label %1861, label %1783

; <label>:1783                                    ; preds = %1772
  %1784 = and i32 %1780, 16
  %1785 = icmp ne i32 %1784, 0
  %1786 = select i1 %1785, float %1347, float 0.000000e+00
  %1787 = icmp eq i32 %1781, 0
  br i1 %1787, label %1788, label %1816

; <label>:1788                                    ; preds = %1783
  %1789 = and i32 %1780, 64
  %1790 = icmp ne i32 %1789, 0
  %1791 = select i1 %1790, float %1347, float 0.000000e+00
  %1792 = fsub fast float %1567, %1773
  %1793 = fsub fast float %1568, %1774
  %1794 = fsub fast float %1569, %1775
  %1795 = fmul fast float %1786, %1792
  %1796 = fmul fast float %1786, %1793
  %1797 = fmul fast float %1786, %1794
  %1798 = fadd fast float %1795, %1773
  %1799 = fadd fast float %1796, %1774
  %1800 = fadd fast float %1797, %1775
  %1801 = fsub fast float %1553, %1159
  %1802 = fmul fast float %1786, %1801
  %1803 = fadd fast float %1802, %1159
  %1804 = fsub fast float %1695, %1776
  %1805 = fsub fast float %1696, %1777
  %1806 = fsub fast float %1697, %1778
  %1807 = fmul fast float %1791, %1804
  %1808 = fmul fast float %1791, %1805
  %1809 = fmul fast float %1791, %1806
  %1810 = fadd fast float %1807, %1776
  %1811 = fadd fast float %1808, %1777
  %1812 = fadd fast float %1809, %1778
  %1813 = fsub fast float %1763, %1164
  %1814 = fmul fast float %1786, %1813
  %1815 = fadd fast float %1814, %1164
  br label %1861

; <label>:1816                                    ; preds = %1783
  %1817 = icmp eq i32 %1781, 1
  br i1 %1817, label %1818, label %1831

; <label>:1818                                    ; preds = %1816
  %1819 = fadd fast float %1567, -1.000000e+00
  %1820 = fadd fast float %1568, -1.000000e+00
  %1821 = fadd fast float %1569, -1.000000e+00
  %1822 = fmul fast float %1786, %1819
  %1823 = fmul fast float %1786, %1820
  %1824 = fmul fast float %1786, %1821
  %1825 = fadd fast float %1822, 1.000000e+00
  %1826 = fadd fast float %1823, 1.000000e+00
  %1827 = fadd fast float %1824, 1.000000e+00
  %1828 = fmul fast float %1825, %1773
  %1829 = fmul fast float %1826, %1774
  %1830 = fmul fast float %1827, %1775
  br label %1861

; <label>:1831                                    ; preds = %1816
  %1832 = icmp eq i32 %1781, 2
  br i1 %1832, label %1833, label %1861

; <label>:1833                                    ; preds = %1831
  %1834 = call float @dx.op.unary.f32(i32 24, float %1567)  ; Sqrt(value)
  %1835 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1836 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1837 = fadd fast float %1834, -5.000000e-01
  %1838 = fadd fast float %1835, -5.000000e-01
  %1839 = fadd fast float %1836, -5.000000e-01
  %1840 = fmul fast float %1837, %1786
  %1841 = fmul fast float %1838, %1786
  %1842 = fmul fast float %1839, %1786
  %1843 = fadd fast float %1840, 5.000000e-01
  %1844 = fadd fast float %1841, 5.000000e-01
  %1845 = fadd fast float %1842, 5.000000e-01
  %1846 = fmul fast float %1843, 2.000000e+00
  %1847 = fsub fast float 1.000000e+00, %1846
  %1848 = fmul fast float %1847, %1773
  %1849 = fadd fast float %1848, %1846
  %1850 = fmul fast float %1849, %1773
  %1851 = fmul fast float %1844, 2.000000e+00
  %1852 = fsub fast float 1.000000e+00, %1851
  %1853 = fmul fast float %1852, %1774
  %1854 = fadd fast float %1853, %1851
  %1855 = fmul fast float %1854, %1774
  %1856 = fmul fast float %1845, 2.000000e+00
  %1857 = fsub fast float 1.000000e+00, %1856
  %1858 = fmul fast float %1857, %1775
  %1859 = fadd fast float %1858, %1856
  %1860 = fmul fast float %1859, %1775
  br label %1861

; <label>:1861                                    ; preds = %1833, %1831, %1818, %1788, %1772
  %1862 = phi float [ %1773, %1772 ], [ %1850, %1833 ], [ %1773, %1831 ], [ %1828, %1818 ], [ %1798, %1788 ]
  %1863 = phi float [ %1774, %1772 ], [ %1855, %1833 ], [ %1774, %1831 ], [ %1829, %1818 ], [ %1799, %1788 ]
  %1864 = phi float [ %1775, %1772 ], [ %1860, %1833 ], [ %1775, %1831 ], [ %1830, %1818 ], [ %1800, %1788 ]
  %1865 = phi float [ %1776, %1772 ], [ %1776, %1833 ], [ %1776, %1831 ], [ %1776, %1818 ], [ %1810, %1788 ]
  %1866 = phi float [ %1777, %1772 ], [ %1777, %1833 ], [ %1777, %1831 ], [ %1777, %1818 ], [ %1811, %1788 ]
  %1867 = phi float [ %1778, %1772 ], [ %1778, %1833 ], [ %1778, %1831 ], [ %1778, %1818 ], [ %1812, %1788 ]
  %1868 = phi float [ %1159, %1772 ], [ %1159, %1833 ], [ %1159, %1831 ], [ %1159, %1818 ], [ %1803, %1788 ]
  %1869 = phi float [ %1164, %1772 ], [ %1164, %1833 ], [ %1164, %1831 ], [ %1164, %1818 ], [ %1815, %1788 ]
  %1870 = and i32 %1780, 12
  %1871 = icmp eq i32 %1870, 12
  br i1 %1871, label %1978, label %1872

; <label>:1872                                    ; preds = %1861
  %1873 = and i32 %1780, 2097184
  %1874 = icmp eq i32 %1873, 2097184
  %1875 = select i1 %1874, float %1347, float 0.000000e+00
  %1876 = and i32 %1780, 4194336
  %1877 = icmp eq i32 %1876, 4194336
  %1878 = select i1 %1877, float %1347, float 0.000000e+00
  %1879 = and i32 %1780, 8388640
  %1880 = icmp eq i32 %1879, 8388640
  %1881 = select i1 %1880, float %1347, float 0.000000e+00
  %1882 = and i32 %1780, 2048
  %1883 = icmp ne i32 %1882, 0
  %1884 = select i1 %1883, float %1347, float 0.000000e+00
  %1885 = and i32 %1780, 8192
  %1886 = icmp ne i32 %1885, 0
  %1887 = select i1 %1886, float %1347, float 0.000000e+00
  %1888 = icmp eq i32 %1870, 0
  br i1 %1888, label %1889, label %1914

; <label>:1889                                    ; preds = %1872
  %1890 = fsub fast float %1648, %1148
  %1891 = fsub fast float %1649, %1149
  %1892 = fmul fast float %1875, %1890
  %1893 = fmul fast float %1875, %1891
  %1894 = fadd fast float %1892, %1148
  %1895 = fadd fast float %1893, %1149
  %1896 = fsub fast float %1650, %1162
  %1897 = fmul fast float %1878, %1896
  %1898 = fadd fast float %1897, %1162
  %1899 = fsub fast float %1647, %1161
  %1900 = fmul fast float %1881, %1899
  %1901 = fadd fast float %1900, %1161
  %1902 = fsub fast float %1750, %1163
  %1903 = fmul fast float %1884, %1902
  %1904 = fadd fast float %1903, %1163
  %1905 = fsub fast float %1747, %1156
  %1906 = fsub fast float %1748, %1157
  %1907 = fsub fast float %1749, %1158
  %1908 = fmul fast float %1887, %1905
  %1909 = fmul fast float %1887, %1906
  %1910 = fmul fast float %1887, %1907
  %1911 = fadd fast float %1908, %1156
  %1912 = fadd fast float %1909, %1157
  %1913 = fadd fast float %1910, %1158
  br label %1978

; <label>:1914                                    ; preds = %1872
  %1915 = icmp eq i32 %1870, 4
  br i1 %1915, label %1916, label %1956

; <label>:1916                                    ; preds = %1914
  %1917 = fmul fast float %1875, %1648
  %1918 = fmul fast float %1875, %1649
  %1919 = fadd fast float %1917, %1148
  %1920 = fadd fast float %1918, %1149
  %1921 = call float @dx.op.binary.f32(i32 36, float %1162, float %1650)  ; FMin(a,b)
  %1922 = fsub fast float %1921, %1162
  %1923 = fmul fast float %1922, %1878
  %1924 = fadd fast float %1923, %1162
  %1925 = fadd fast float %1647, %1161
  %1926 = fmul fast float %1925, 0x3FF337FAE0000000
  %1927 = fmul fast float %1161, %1161
  %1928 = fmul fast float %1647, %1647
  %1929 = fadd fast float %1928, %1927
  %1930 = fmul fast float %1929, 0x3FE5152B00000000
  %1931 = fmul fast float %1161, 0xBFCC1F85E0000000
  %1932 = fmul fast float %1931, %1647
  %1933 = fadd fast float %1932, 0xBFE1363700000000
  %1934 = fadd fast float %1933, %1926
  %1935 = fsub fast float %1934, %1930
  %1936 = fmul fast float %1925, 0x3FBA6F0D00000000
  %1937 = fmul fast float %1929, 0x3FD0432880000000
  %1938 = fmul fast float %1161, 0xBFEF110800000000
  %1939 = fmul fast float %1938, %1647
  %1940 = fadd fast float %1939, 1.000000e+00
  %1941 = fsub fast float %1940, %1936
  %1942 = fadd fast float %1941, %1937
  %1943 = fdiv fast float %1935, %1942
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = fsub fast float %1944, %1161
  %1946 = fmul fast float %1945, %1881
  %1947 = fadd fast float %1946, %1161
  %1948 = fmul fast float %1884, %1750
  %1949 = fadd fast float %1948, %1163
  %1950 = fmul fast float %1887, %1747
  %1951 = fmul fast float %1887, %1748
  %1952 = fmul fast float %1887, %1749
  %1953 = fadd fast float %1950, %1156
  %1954 = fadd fast float %1951, %1157
  %1955 = fadd fast float %1952, %1158
  br label %1978

; <label>:1956                                    ; preds = %1914
  %1957 = icmp eq i32 %1870, 8
  br i1 %1957, label %1958, label %1978

; <label>:1958                                    ; preds = %1956
  %1959 = fmul fast float %1875, %1648
  %1960 = fmul fast float %1875, %1649
  %1961 = fadd fast float %1959, %1148
  %1962 = fadd fast float %1960, %1149
  %1963 = call float @dx.op.binary.f32(i32 36, float %1162, float %1650)  ; FMin(a,b)
  %1964 = fsub fast float %1963, %1162
  %1965 = fmul fast float %1964, %1878
  %1966 = fadd fast float %1965, %1162
  %1967 = fsub fast float %1647, %1161
  %1968 = fmul fast float %1881, %1967
  %1969 = fadd fast float %1968, %1161
  %1970 = fmul fast float %1884, %1750
  %1971 = fadd fast float %1970, %1163
  %1972 = fmul fast float %1887, %1747
  %1973 = fmul fast float %1887, %1748
  %1974 = fmul fast float %1887, %1749
  %1975 = fadd fast float %1972, %1156
  %1976 = fadd fast float %1973, %1157
  %1977 = fadd fast float %1974, %1158
  br label %1978

; <label>:1978                                    ; preds = %1958, %1956, %1916, %1889, %1861, %1346, %1165, %1147
  %1979 = phi float [ %1148, %1861 ], [ %1148, %1346 ], [ %1148, %1147 ], [ %1961, %1958 ], [ %1148, %1956 ], [ %1919, %1916 ], [ %1894, %1889 ], [ %1148, %1165 ]
  %1980 = phi float [ %1149, %1861 ], [ %1149, %1346 ], [ %1149, %1147 ], [ %1962, %1958 ], [ %1149, %1956 ], [ %1920, %1916 ], [ %1895, %1889 ], [ %1149, %1165 ]
  %1981 = phi float [ %1862, %1861 ], [ %1150, %1346 ], [ %1150, %1147 ], [ %1862, %1958 ], [ %1862, %1956 ], [ %1862, %1916 ], [ %1862, %1889 ], [ %1150, %1165 ]
  %1982 = phi float [ %1863, %1861 ], [ %1151, %1346 ], [ %1151, %1147 ], [ %1863, %1958 ], [ %1863, %1956 ], [ %1863, %1916 ], [ %1863, %1889 ], [ %1151, %1165 ]
  %1983 = phi float [ %1864, %1861 ], [ %1152, %1346 ], [ %1152, %1147 ], [ %1864, %1958 ], [ %1864, %1956 ], [ %1864, %1916 ], [ %1864, %1889 ], [ %1152, %1165 ]
  %1984 = phi float [ %1865, %1861 ], [ %1153, %1346 ], [ %1153, %1147 ], [ %1865, %1958 ], [ %1865, %1956 ], [ %1865, %1916 ], [ %1865, %1889 ], [ %1153, %1165 ]
  %1985 = phi float [ %1866, %1861 ], [ %1154, %1346 ], [ %1154, %1147 ], [ %1866, %1958 ], [ %1866, %1956 ], [ %1866, %1916 ], [ %1866, %1889 ], [ %1154, %1165 ]
  %1986 = phi float [ %1867, %1861 ], [ %1155, %1346 ], [ %1155, %1147 ], [ %1867, %1958 ], [ %1867, %1956 ], [ %1867, %1916 ], [ %1867, %1889 ], [ %1155, %1165 ]
  %1987 = phi float [ %1156, %1861 ], [ %1156, %1346 ], [ %1156, %1147 ], [ %1975, %1958 ], [ %1156, %1956 ], [ %1953, %1916 ], [ %1911, %1889 ], [ %1156, %1165 ]
  %1988 = phi float [ %1157, %1861 ], [ %1157, %1346 ], [ %1157, %1147 ], [ %1976, %1958 ], [ %1157, %1956 ], [ %1954, %1916 ], [ %1912, %1889 ], [ %1157, %1165 ]
  %1989 = phi float [ %1158, %1861 ], [ %1158, %1346 ], [ %1158, %1147 ], [ %1977, %1958 ], [ %1158, %1956 ], [ %1955, %1916 ], [ %1913, %1889 ], [ %1158, %1165 ]
  %1990 = phi float [ %1868, %1861 ], [ %1159, %1346 ], [ %1159, %1147 ], [ %1868, %1958 ], [ %1868, %1956 ], [ %1868, %1916 ], [ %1868, %1889 ], [ %1159, %1165 ]
  %1991 = phi float [ %1161, %1861 ], [ %1161, %1346 ], [ %1161, %1147 ], [ %1969, %1958 ], [ %1161, %1956 ], [ %1947, %1916 ], [ %1901, %1889 ], [ %1161, %1165 ]
  %1992 = phi float [ %1162, %1861 ], [ %1162, %1346 ], [ %1162, %1147 ], [ %1966, %1958 ], [ %1162, %1956 ], [ %1924, %1916 ], [ %1898, %1889 ], [ %1162, %1165 ]
  %1993 = phi float [ %1163, %1861 ], [ %1163, %1346 ], [ %1163, %1147 ], [ %1971, %1958 ], [ %1163, %1956 ], [ %1949, %1916 ], [ %1904, %1889 ], [ %1163, %1165 ]
  %1994 = phi float [ %1869, %1861 ], [ %1164, %1346 ], [ %1164, %1147 ], [ %1869, %1958 ], [ %1869, %1956 ], [ %1869, %1916 ], [ %1869, %1889 ], [ %1164, %1165 ]
  br i1 %495, label %2808, label %1995

; <label>:1995                                    ; preds = %1978
  %1996 = icmp ult i32 %551, 3
  %1997 = add i32 %63, 56
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = add i32 %63, 60
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = or i32 %2002, %1999
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2808, label %2005

; <label>:2005                                    ; preds = %1995
  %2006 = and i32 %1999, 262144
  %2007 = icmp ne i32 %2006, 0
  %2008 = select i1 %2007, float %69, float 1.000000e+00
  %2009 = select i1 %2007, float %70, float 0.000000e+00
  %2010 = select i1 %2007, float %71, float 0.000000e+00
  %2011 = select i1 %2007, float %72, float 1.000000e+00
  %2012 = select i1 %2007, float %73, float %101
  %2013 = select i1 %2007, float %74, float %102
  %2014 = add i32 %63, 316
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = lshr i32 %2016, 16
  %2018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2017)  ; LegacyF16ToF32(value)
  %2019 = fmul fast float %2018, 0x3F50624DE0000000
  %2020 = add i32 %63, 120
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = lshr i32 %2022, 16
  %2024 = and i32 %2023, 255
  %2025 = lshr i32 %2022, 24
  %2026 = add i32 %63, 324
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 65535
  %2030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2029)  ; LegacyF16ToF32(value)
  %2031 = lshr i32 %2028, 16
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = add i32 %63, 64
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = lshr i32 %2035, 22
  %2037 = shl nuw nsw i32 %2036, 5
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = shl i32 %2035, 4
  %2040 = and i32 %2039, 32752
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = lshr i32 %2035, 7
  %2043 = and i32 %2042, 32752
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 3
  %2047 = fmul fast float %2046, 1.000000e+03
  %2048 = fmul fast float %445, %2047
  %2049 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2050 = fadd fast float %2049, %435
  %2051 = fmul fast float %446, %2047
  %2052 = call float @dx.op.unary.f32(i32 22, float %2051)  ; Frc(value)
  %2053 = fadd fast float %2052, %437
  %2054 = fmul fast float %2019, %2047
  %2055 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2056 = fmul fast float %2055, 0x401921FB60000000
  %2057 = fadd fast float %2056, %2038
  %2058 = call float @dx.op.unary.f32(i32 13, float %2057)  ; Sin(value)
  %2059 = call float @dx.op.unary.f32(i32 12, float %2057)  ; Cos(value)
  %2060 = fsub fast float -0.000000e+00, %2058
  %2061 = fadd fast float %2012, -5.000000e-01
  %2062 = fadd fast float %2013, -5.000000e-01
  %2063 = fmul fast float %2030, %2061
  %2064 = fmul fast float %2032, %2062
  %2065 = fadd fast float %2063, 5.000000e-01
  %2066 = fadd fast float %2064, 5.000000e-01
  %2067 = fmul fast float %2041, %2065
  %2068 = fmul fast float %2044, %2066
  %2069 = fmul fast float %2059, %2067
  %2070 = call float @dx.op.tertiary.f32(i32 46, float %2060, float %2068, float %2069)  ; FMad(a,b,c)
  %2071 = fmul fast float %2058, %2067
  %2072 = call float @dx.op.tertiary.f32(i32 46, float %2059, float %2068, float %2071)  ; FMad(a,b,c)
  %2073 = fadd fast float %2050, %2070
  %2074 = fadd fast float %2053, %2072
  %2075 = icmp ugt i32 %2024, 1
  %2076 = icmp ugt i32 %2022, 33554431
  %2077 = or i1 %2076, %2075
  br i1 %2077, label %2078, label %2103

; <label>:2078                                    ; preds = %2005
  %2079 = add i32 %63, 260
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = lshr i32 %2081, 16
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = fmul fast float %2046, %2083
  %2085 = call float @dx.op.unary.f32(i32 22, float %2084)  ; Frc(value)
  %2086 = mul nuw nsw i32 %2024, %2025
  %2087 = uitofp i32 %2086 to float
  %2088 = fmul fast float %2085, %2087
  %2089 = call float @dx.op.unary.f32(i32 27, float %2088)  ; Round_ni(value)
  %2090 = fptoui float %2089 to i32
  %2091 = urem i32 %2090, %2024
  %2092 = udiv i32 %2090, %2025
  %2093 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2094 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2095 = uitofp i32 %2091 to float
  %2096 = uitofp i32 %2092 to float
  %2097 = fadd fast float %2093, %2095
  %2098 = fadd fast float %2094, %2096
  %2099 = uitofp i32 %2024 to float
  %2100 = uitofp i32 %2025 to float
  %2101 = fdiv fast float %2097, %2099
  %2102 = fdiv fast float %2098, %2100
  br label %2103

; <label>:2103                                    ; preds = %2078, %2005
  %2104 = phi float [ %2101, %2078 ], [ %2073, %2005 ]
  %2105 = phi float [ %2102, %2078 ], [ %2074, %2005 ]
  %2106 = and i32 %1999, 256
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2154, label %2108

; <label>:2108                                    ; preds = %2103
  %2109 = add i32 %63, 496
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = add i32 %2111, 0
  %2113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2113, %dx.types.Handle %120, float %2104, float %2105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2115 = extractvalue %dx.types.ResRet.f32 %2114, 0
  %2116 = add i32 %63, 132
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = shl i32 %2118, 4
  %2120 = and i32 %2119, 32752
  %2121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2120)  ; LegacyF16ToF32(value)
  %2122 = lshr i32 %2118, 7
  %2123 = and i32 %2122, 32752
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = fsub fast float 1.000000e+00, %547
  %2126 = call float @dx.op.binary.f32(i32 35, float %2125, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2127 = bitcast float %547 to i32
  %2128 = sitofp i32 %2127 to float
  %2129 = fadd fast float %2128, 0xC1CFBF8940000000
  %2130 = fmul fast float %2124, %2129
  %2131 = fadd fast float %2130, 0x41CFBF8940000000
  %2132 = fptosi float %2131 to i32
  %2133 = bitcast i32 %2132 to float
  %2134 = bitcast float %2126 to i32
  %2135 = sitofp i32 %2134 to float
  %2136 = fadd fast float %2135, 0xC1CFBF8940000000
  %2137 = fmul fast float %2136, %2124
  %2138 = fadd fast float %2137, 0x41CFBF8940000000
  %2139 = fptosi float %2138 to i32
  %2140 = bitcast i32 %2139 to float
  %2141 = fmul fast float %2133, %2121
  %2142 = fmul fast float %2140, %2121
  %2143 = fsub fast float %2126, %2141
  %2144 = fadd fast float %2142, %2126
  %2145 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2146 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2147 = fsub fast float %2115, %2145
  %2148 = fsub fast float %2146, %2145
  %2149 = bitcast float %2148 to i32
  %2150 = sub nsw i32 2129859010, %2149
  %2151 = bitcast i32 %2150 to float
  %2152 = fmul fast float %2151, %2147
  %2153 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  br label %2154

; <label>:2154                                    ; preds = %2108, %2103
  %2155 = phi float [ %2153, %2108 ], [ %547, %2103 ]
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = and i32 %2157, 128
  %2159 = icmp eq i32 %2158, 0
  br i1 %2159, label %2176, label %2160

; <label>:2160                                    ; preds = %2154
  %2161 = add i32 %63, 480
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = add i32 %2163, 0
  %2165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2165, %dx.types.Handle %120, float %2104, float %2105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 524288
  %2171 = icmp ne i32 %2170, 0
  %2172 = fcmp fast ogt float %2167, 0x3FE0101020000000
  %2173 = select i1 %2172, float 1.000000e+00, float 0.000000e+00
  %2174 = select i1 %2171, float %2173, float %2167
  %2175 = fmul fast float %2174, %2155
  br label %2176

; <label>:2176                                    ; preds = %2160, %2154
  %2177 = phi float [ %2175, %2160 ], [ %2155, %2154 ]
  %2178 = fcmp fast ult float %2177, 0x3F70101020000000
  br i1 %2178, label %2808, label %2179

; <label>:2179                                    ; preds = %2176
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 16
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2382, label %2184

; <label>:2184                                    ; preds = %2179
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = add i32 %63, 432
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = add i32 %2189, 0
  %2191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2191, %dx.types.Handle %119, float %2104, float %2105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2193 = extractvalue %dx.types.ResRet.f32 %2192, 0
  %2194 = extractvalue %dx.types.ResRet.f32 %2192, 1
  %2195 = extractvalue %dx.types.ResRet.f32 %2192, 2
  %2196 = extractvalue %dx.types.ResRet.f32 %2192, 3
  %2197 = and i32 %2186, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = lshr i32 %2186, 8
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = fmul fast float %2196, %2198
  %2203 = fadd fast float %2202, %2201
  %2204 = fmul fast float %2203, 0x3F70101000000000
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = and i32 %2206, 512
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2217, label %2209

; <label>:2209                                    ; preds = %2184
  %2210 = add i32 %63, 516
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %2212, 0
  %2214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2214, %dx.types.Handle %120, float %2104, float %2105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  br label %2217

; <label>:2217                                    ; preds = %2209, %2184
  %2218 = phi float [ %2216, %2209 ], [ 1.000000e+00, %2184 ]
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 33554432
  %2222 = icmp eq i32 %2221, 0
  br i1 %2222, label %2329, label %2223

; <label>:2223                                    ; preds = %2217
  %2224 = add i32 %63, 256
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 65535
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = lshr i32 %2226, 16
  %2230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2229)  ; LegacyF16ToF32(value)
  %2231 = add i32 %63, 260
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 65535
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = lshr i32 %2237, 24
  %2239 = uitofp i32 %2238 to float
  %2240 = fmul fast float %2239, 0x3F70101020000000
  %2241 = and i32 %2237, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, 0x3F70101020000000
  %2244 = lshr i32 %2237, 8
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = lshr i32 %2237, 16
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = add i32 %63, 252
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = lshr i32 %2254, 24
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = and i32 %2254, 255
  %2259 = uitofp i32 %2258 to float
  %2260 = fmul fast float %2259, 0x3F70101020000000
  %2261 = lshr i32 %2254, 8
  %2262 = and i32 %2261, 255
  %2263 = uitofp i32 %2262 to float
  %2264 = fmul fast float %2263, 0x3F70101020000000
  %2265 = lshr i32 %2254, 16
  %2266 = and i32 %2265, 255
  %2267 = uitofp i32 %2266 to float
  %2268 = fmul fast float %2267, 0x3F70101020000000
  %2269 = bitcast float %2193 to i32
  %2270 = ashr i32 %2269, 1
  %2271 = sub nsw i32 1597463174, %2270
  %2272 = bitcast i32 %2271 to float
  %2273 = fmul fast float %2193, 5.000000e-01
  %2274 = fmul fast float %2272, %2272
  %2275 = fmul fast float %2274, %2273
  %2276 = fsub fast float 1.500000e+00, %2275
  %2277 = fmul fast float %2272, %2193
  %2278 = fmul fast float %2277, %2276
  %2279 = bitcast float %2194 to i32
  %2280 = ashr i32 %2279, 1
  %2281 = sub nsw i32 1597463174, %2280
  %2282 = bitcast i32 %2281 to float
  %2283 = fmul fast float %2194, 5.000000e-01
  %2284 = fmul fast float %2282, %2282
  %2285 = fmul fast float %2284, %2283
  %2286 = fsub fast float 1.500000e+00, %2285
  %2287 = fmul fast float %2282, %2194
  %2288 = fmul fast float %2287, %2286
  %2289 = bitcast float %2195 to i32
  %2290 = ashr i32 %2289, 1
  %2291 = sub nsw i32 1597463174, %2290
  %2292 = bitcast i32 %2291 to float
  %2293 = fmul fast float %2195, 5.000000e-01
  %2294 = fmul fast float %2292, %2292
  %2295 = fmul fast float %2294, %2293
  %2296 = fsub fast float 1.500000e+00, %2295
  %2297 = fmul fast float %2292, %2195
  %2298 = fmul fast float %2297, %2296
  %2299 = fsub fast float %2278, %2260
  %2300 = fsub fast float %2288, %2264
  %2301 = fsub fast float %2298, %2268
  %2302 = fmul fast float %2299, %2228
  %2303 = fmul fast float %2300, %2230
  %2304 = fmul fast float %2301, %2235
  %2305 = fadd fast float %2302, %2243
  %2306 = fadd fast float %2303, %2247
  %2307 = fadd fast float %2304, %2251
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2311 = fmul fast float %2308, %2308
  %2312 = fmul fast float %2309, %2309
  %2313 = fmul fast float %2310, %2310
  %2314 = fsub fast float %2311, %2193
  %2315 = fsub fast float %2312, %2194
  %2316 = fsub fast float %2313, %2195
  %2317 = fmul fast float %2314, %2218
  %2318 = fmul fast float %2315, %2218
  %2319 = fmul fast float %2316, %2218
  %2320 = fadd fast float %2317, %2193
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2319, %2195
  %2323 = fadd fast float %2240, %2204
  %2324 = fsub fast float %2323, %2257
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = fsub fast float %2325, %2204
  %2327 = fmul fast float %2326, %2218
  %2328 = fadd fast float %2327, %2204
  br label %2382

; <label>:2329                                    ; preds = %2217
  %2330 = and i32 %2220, 134217728
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2366, label %2332

; <label>:2332                                    ; preds = %2329
  %2333 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %2334 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %2335 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %2336 = fadd fast float %2333, -5.000000e-01
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fadd fast float %2335, -5.000000e-01
  %2339 = fmul fast float %2336, %2218
  %2340 = fmul fast float %2337, %2218
  %2341 = fmul fast float %2338, %2218
  %2342 = fadd fast float %2339, 5.000000e-01
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = fadd fast float %2341, 5.000000e-01
  %2345 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2348 = fmul fast float %2342, 2.000000e+00
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2349, %2345
  %2351 = fadd fast float %2350, %2348
  %2352 = fmul fast float %2351, %2345
  %2353 = fmul fast float %2343, 2.000000e+00
  %2354 = fsub fast float 1.000000e+00, %2353
  %2355 = fmul fast float %2354, %2346
  %2356 = fadd fast float %2355, %2353
  %2357 = fmul fast float %2356, %2346
  %2358 = fmul fast float %2344, 2.000000e+00
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2359, %2347
  %2361 = fadd fast float %2360, %2358
  %2362 = fmul fast float %2361, %2347
  %2363 = fmul fast float %2352, %2352
  %2364 = fmul fast float %2357, %2357
  %2365 = fmul fast float %2362, %2362
  br label %2382

; <label>:2366                                    ; preds = %2329
  %2367 = fmul fast float %422, %422
  %2368 = fmul fast float %426, %426
  %2369 = fmul fast float %430, %430
  %2370 = fadd fast float %2367, -1.000000e+00
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fadd fast float %2369, -1.000000e+00
  %2373 = fmul fast float %2218, %2370
  %2374 = fmul fast float %2218, %2371
  %2375 = fmul fast float %2218, %2372
  %2376 = fadd fast float %2373, 1.000000e+00
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fadd fast float %2375, 1.000000e+00
  %2379 = fmul fast float %2376, %2193
  %2380 = fmul fast float %2377, %2194
  %2381 = fmul fast float %2378, %2195
  br label %2382

; <label>:2382                                    ; preds = %2366, %2332, %2223, %2179
  %2383 = phi float [ %2328, %2223 ], [ %2204, %2332 ], [ %2204, %2366 ], [ 0x3FA23C0BE0000000, %2179 ]
  %2384 = phi float [ %2320, %2223 ], [ %2363, %2332 ], [ %2379, %2366 ], [ 1.000000e+00, %2179 ]
  %2385 = phi float [ %2321, %2223 ], [ %2364, %2332 ], [ %2380, %2366 ], [ 1.000000e+00, %2179 ]
  %2386 = phi float [ %2322, %2223 ], [ %2365, %2332 ], [ %2381, %2366 ], [ 1.000000e+00, %2179 ]
  %2387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.i32 %2387, 1
  %2389 = and i32 %2388, 1
  %2390 = icmp ne i32 %2389, 0
  %2391 = add i32 %63, 356
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = and i32 %2393, 32
  %2395 = icmp ne i32 %2394, 0
  %2396 = and i1 %2390, %2395
  %2397 = select i1 %2396, float 1.000000e+00, float %2384
  %2398 = select i1 %2396, float 0x3FD3333340000000, float %2385
  %2399 = select i1 %2396, float 0x3FD3333340000000, float %2386
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 32
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2476, label %2404

; <label>:2404                                    ; preds = %2382
  %2405 = add i32 %63, 124
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = add i32 %63, 448
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %2410, 0
  %2412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2412, %dx.types.Handle %119, float %2104, float %2105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.ResRet.f32 %2413, 1
  %2416 = extractvalue %dx.types.ResRet.f32 %2413, 2
  %2417 = extractvalue %dx.types.ResRet.f32 %2413, 3
  %2418 = and i32 %2407, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = lshr i32 %2407, 8
  %2421 = and i32 %2420, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = lshr i32 %2407, 16
  %2424 = and i32 %2423, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = fmul fast float %2425, 0x3F70101000000000
  %2427 = fmul fast float %2414, %2419
  %2428 = fadd fast float %2427, %2422
  %2429 = fmul fast float %2428, 0x3F70101000000000
  %2430 = fadd fast float %2415, -5.000000e-01
  %2431 = fadd fast float %2417, -5.000000e-01
  %2432 = fmul fast float %2430, %2426
  %2433 = fmul fast float %2431, %2426
  %2434 = fadd fast float %2432, 5.000000e-01
  %2435 = fadd fast float %2433, 5.000000e-01
  %2436 = fmul fast float %2434, 2.000000e+00
  %2437 = fadd fast float %2436, -1.000000e+00
  %2438 = fmul fast float %2435, 2.000000e+00
  %2439 = fadd fast float %2438, -1.000000e+00
  %2440 = fadd fast float %2437, %2439
  %2441 = fmul fast float %2440, 5.000000e-01
  %2442 = fsub fast float %2437, %2439
  %2443 = fmul fast float %2442, 5.000000e-01
  %2444 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = call float @dx.op.unary.f32(i32 6, float %2443)  ; FAbs(value)
  %2447 = fsub fast float %2445, %2446
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2441, float %2443, float %2447, float %2441, float %2443, float %2447)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = call float @dx.op.unary.f32(i32 25, float %2448)  ; Rsqrt(value)
  %2450 = fmul fast float %2441, %2449
  %2451 = fmul fast float %2443, %2449
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 67108864
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %2472, label %2456

; <label>:2456                                    ; preds = %2404
  %2457 = add i32 %63, 312
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 65535
  %2461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2460)  ; LegacyF16ToF32(value)
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 65535
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = lshr i32 %2459, 16
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = fsub fast float %2429, %2467
  %2469 = fmul fast float %2468, %2461
  %2470 = fadd fast float %2469, %2465
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  br label %2472

; <label>:2472                                    ; preds = %2456, %2404
  %2473 = phi float [ %2471, %2456 ], [ %2429, %2404 ]
  %2474 = call float @dx.op.dot2.f32(i32 54, float %2450, float %2451, float %2008, float %2009)  ; Dot2(ax,ay,bx,by)
  %2475 = call float @dx.op.dot2.f32(i32 54, float %2450, float %2451, float %2010, float %2011)  ; Dot2(ax,ay,bx,by)
  br label %2476

; <label>:2476                                    ; preds = %2472, %2382
  %2477 = phi float [ %2473, %2472 ], [ 0x3FD6666660000000, %2382 ]
  %2478 = phi float [ %2474, %2472 ], [ 0.000000e+00, %2382 ]
  %2479 = phi float [ %2475, %2472 ], [ 0.000000e+00, %2382 ]
  %2480 = phi float [ %2416, %2472 ], [ 1.000000e+00, %2382 ]
  %2481 = add i32 %63, 192
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = lshr i32 %2483, 22
  %2485 = shl nuw nsw i32 %2484, 5
  %2486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2485)  ; LegacyF16ToF32(value)
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 64
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2524, label %2491

; <label>:2491                                    ; preds = %2476
  %2492 = add i32 %63, 464
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = add i32 %2494, 0
  %2496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 131072
  %2500 = icmp eq i32 %2499, 0
  %2501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2496, %dx.types.Handle %119, float %2104, float %2105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2502 = extractvalue %dx.types.ResRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.ResRet.f32 %2501, 1
  %2504 = extractvalue %dx.types.ResRet.f32 %2501, 2
  %2505 = fmul fast float %2502, %410
  %2506 = fmul fast float %2503, %413
  %2507 = fmul fast float %2504, %416
  br i1 %2500, label %2514, label %2508

; <label>:2508                                    ; preds = %2491
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = fmul fast float %2510, %2505
  %2512 = fmul fast float %2510, %2506
  %2513 = fmul fast float %2510, %2507
  br label %2514

; <label>:2514                                    ; preds = %2508, %2491
  %2515 = phi float [ %2511, %2508 ], [ %2505, %2491 ]
  %2516 = phi float [ %2512, %2508 ], [ %2506, %2491 ]
  %2517 = phi float [ %2513, %2508 ], [ %2507, %2491 ]
  %2518 = fmul fast float %2515, %2486
  %2519 = select i1 %306, float %2518, float %2515
  %2520 = call float @dx.op.dot3.f32(i32 55, float %2519, float %2516, float %2517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2521 = select i1 %306, float 0.000000e+00, float %2515
  %2522 = select i1 %306, float %2520, float %2516
  %2523 = select i1 %306, float 0.000000e+00, float %2517
  br label %2524

; <label>:2524                                    ; preds = %2514, %2476
  %2525 = phi float [ %2521, %2514 ], [ 0.000000e+00, %2476 ]
  %2526 = phi float [ %2522, %2514 ], [ 0.000000e+00, %2476 ]
  %2527 = phi float [ %2523, %2514 ], [ 0.000000e+00, %2476 ]
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 10240
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2576, label %2532

; <label>:2532                                    ; preds = %2524
  %2533 = add i32 %63, 532
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = add i32 %2535, 0
  %2537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2537, %dx.types.Handle %120, float %2104, float %2105, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 1
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 3
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = and i32 %2542, 1048576
  %2544 = icmp ne i32 %2543, 0
  %2545 = and i32 %2542, 8192
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2562, label %2547

; <label>:2547                                    ; preds = %2532
  %2548 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2549 = select i1 %2544, float %2548, float %2539
  %2550 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2551 = select i1 %2544, float %2550, float %2539
  %2552 = add i32 %63, 128
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = lshr i32 %2554, 16
  %2556 = and i32 %2555, 255
  %2557 = uitofp i32 %2556 to float
  %2558 = fmul fast float %2557, 0x3F80101020000000
  %2559 = fmul fast float %2558, %2551
  %2560 = fmul fast float %2558, %2539
  %2561 = fmul fast float %2558, %2549
  br label %2562

; <label>:2562                                    ; preds = %2547, %2532
  %2563 = phi float [ %2559, %2547 ], [ 0.000000e+00, %2532 ]
  %2564 = phi float [ %2560, %2547 ], [ 0.000000e+00, %2532 ]
  %2565 = phi float [ %2561, %2547 ], [ 0.000000e+00, %2532 ]
  %2566 = and i32 %2542, 2048
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2576, label %2568

; <label>:2568                                    ; preds = %2562
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = shl i32 %2570, 4
  %2572 = and i32 %2571, 32752
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = fmul fast float %2573, %2540
  %2575 = call float @dx.op.binary.f32(i32 35, float %2574, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2576

; <label>:2576                                    ; preds = %2568, %2562, %2524
  %2577 = phi float [ %2563, %2568 ], [ %2563, %2562 ], [ 0.000000e+00, %2524 ]
  %2578 = phi float [ %2564, %2568 ], [ %2564, %2562 ], [ 0.000000e+00, %2524 ]
  %2579 = phi float [ %2565, %2568 ], [ %2565, %2562 ], [ 0.000000e+00, %2524 ]
  %2580 = phi float [ %2575, %2568 ], [ 0x3F70101020000000, %2562 ], [ 0x3F70101020000000, %2524 ]
  %2581 = add i32 %63, 128
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = lshr i32 %2583, 8
  %2587 = and i32 %2586, 255
  %2588 = uitofp i32 %2587 to float
  %2589 = call float @dx.op.dot3.f32(i32 55, float %2397, float %2398, float %2399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2590 = fmul fast float %2588, %2589
  %2591 = fadd fast float %2590, %2585
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  br i1 %1996, label %2594, label %2602

; <label>:2594                                    ; preds = %2576
  %2595 = fsub fast float 1.000000e+00, %2177
  %2596 = fmul fast float %2595, %1981
  %2597 = fmul fast float %2595, %1982
  %2598 = fmul fast float %2595, %1983
  %2599 = fmul fast float %2595, %1984
  %2600 = fmul fast float %2595, %1985
  %2601 = fmul fast float %2595, %1986
  br label %2602

; <label>:2602                                    ; preds = %2594, %2576
  %2603 = phi float [ %2596, %2594 ], [ %1981, %2576 ]
  %2604 = phi float [ %2597, %2594 ], [ %1982, %2576 ]
  %2605 = phi float [ %2598, %2594 ], [ %1983, %2576 ]
  %2606 = phi float [ %2599, %2594 ], [ %1984, %2576 ]
  %2607 = phi float [ %2600, %2594 ], [ %1985, %2576 ]
  %2608 = phi float [ %2601, %2594 ], [ %1986, %2576 ]
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 3
  %2612 = icmp eq i32 %2611, 3
  br i1 %2612, label %2691, label %2613

; <label>:2613                                    ; preds = %2602
  %2614 = and i32 %2610, 16
  %2615 = icmp ne i32 %2614, 0
  %2616 = select i1 %2615, float %2177, float 0.000000e+00
  %2617 = icmp eq i32 %2611, 0
  br i1 %2617, label %2618, label %2646

; <label>:2618                                    ; preds = %2613
  %2619 = and i32 %2610, 64
  %2620 = icmp ne i32 %2619, 0
  %2621 = select i1 %2620, float %2177, float 0.000000e+00
  %2622 = fsub fast float %2397, %2603
  %2623 = fsub fast float %2398, %2604
  %2624 = fsub fast float %2399, %2605
  %2625 = fmul fast float %2616, %2622
  %2626 = fmul fast float %2616, %2623
  %2627 = fmul fast float %2616, %2624
  %2628 = fadd fast float %2625, %2603
  %2629 = fadd fast float %2626, %2604
  %2630 = fadd fast float %2627, %2605
  %2631 = fsub fast float %2383, %1990
  %2632 = fmul fast float %2616, %2631
  %2633 = fadd fast float %2632, %1990
  %2634 = fsub fast float %2525, %2606
  %2635 = fsub fast float %2526, %2607
  %2636 = fsub fast float %2527, %2608
  %2637 = fmul fast float %2621, %2634
  %2638 = fmul fast float %2621, %2635
  %2639 = fmul fast float %2621, %2636
  %2640 = fadd fast float %2637, %2606
  %2641 = fadd fast float %2638, %2607
  %2642 = fadd fast float %2639, %2608
  %2643 = fsub fast float %2593, %1994
  %2644 = fmul fast float %2616, %2643
  %2645 = fadd fast float %2644, %1994
  br label %2691

; <label>:2646                                    ; preds = %2613
  %2647 = icmp eq i32 %2611, 1
  br i1 %2647, label %2648, label %2661

; <label>:2648                                    ; preds = %2646
  %2649 = fadd fast float %2397, -1.000000e+00
  %2650 = fadd fast float %2398, -1.000000e+00
  %2651 = fadd fast float %2399, -1.000000e+00
  %2652 = fmul fast float %2616, %2649
  %2653 = fmul fast float %2616, %2650
  %2654 = fmul fast float %2616, %2651
  %2655 = fadd fast float %2652, 1.000000e+00
  %2656 = fadd fast float %2653, 1.000000e+00
  %2657 = fadd fast float %2654, 1.000000e+00
  %2658 = fmul fast float %2655, %2603
  %2659 = fmul fast float %2656, %2604
  %2660 = fmul fast float %2657, %2605
  br label %2691

; <label>:2661                                    ; preds = %2646
  %2662 = icmp eq i32 %2611, 2
  br i1 %2662, label %2663, label %2691

; <label>:2663                                    ; preds = %2661
  %2664 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2665 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2666 = call float @dx.op.unary.f32(i32 24, float %2399)  ; Sqrt(value)
  %2667 = fadd fast float %2664, -5.000000e-01
  %2668 = fadd fast float %2665, -5.000000e-01
  %2669 = fadd fast float %2666, -5.000000e-01
  %2670 = fmul fast float %2667, %2616
  %2671 = fmul fast float %2668, %2616
  %2672 = fmul fast float %2669, %2616
  %2673 = fadd fast float %2670, 5.000000e-01
  %2674 = fadd fast float %2671, 5.000000e-01
  %2675 = fadd fast float %2672, 5.000000e-01
  %2676 = fmul fast float %2673, 2.000000e+00
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = fmul fast float %2677, %2603
  %2679 = fadd fast float %2678, %2676
  %2680 = fmul fast float %2679, %2603
  %2681 = fmul fast float %2674, 2.000000e+00
  %2682 = fsub fast float 1.000000e+00, %2681
  %2683 = fmul fast float %2682, %2604
  %2684 = fadd fast float %2683, %2681
  %2685 = fmul fast float %2684, %2604
  %2686 = fmul fast float %2675, 2.000000e+00
  %2687 = fsub fast float 1.000000e+00, %2686
  %2688 = fmul fast float %2687, %2605
  %2689 = fadd fast float %2688, %2686
  %2690 = fmul fast float %2689, %2605
  br label %2691

; <label>:2691                                    ; preds = %2663, %2661, %2648, %2618, %2602
  %2692 = phi float [ %2603, %2602 ], [ %2680, %2663 ], [ %2603, %2661 ], [ %2658, %2648 ], [ %2628, %2618 ]
  %2693 = phi float [ %2604, %2602 ], [ %2685, %2663 ], [ %2604, %2661 ], [ %2659, %2648 ], [ %2629, %2618 ]
  %2694 = phi float [ %2605, %2602 ], [ %2690, %2663 ], [ %2605, %2661 ], [ %2660, %2648 ], [ %2630, %2618 ]
  %2695 = phi float [ %2606, %2602 ], [ %2606, %2663 ], [ %2606, %2661 ], [ %2606, %2648 ], [ %2640, %2618 ]
  %2696 = phi float [ %2607, %2602 ], [ %2607, %2663 ], [ %2607, %2661 ], [ %2607, %2648 ], [ %2641, %2618 ]
  %2697 = phi float [ %2608, %2602 ], [ %2608, %2663 ], [ %2608, %2661 ], [ %2608, %2648 ], [ %2642, %2618 ]
  %2698 = phi float [ %1990, %2602 ], [ %1990, %2663 ], [ %1990, %2661 ], [ %1990, %2648 ], [ %2633, %2618 ]
  %2699 = phi float [ %1994, %2602 ], [ %1994, %2663 ], [ %1994, %2661 ], [ %1994, %2648 ], [ %2645, %2618 ]
  %2700 = and i32 %2610, 12
  %2701 = icmp eq i32 %2700, 12
  br i1 %2701, label %2808, label %2702

; <label>:2702                                    ; preds = %2691
  %2703 = and i32 %2610, 2097184
  %2704 = icmp eq i32 %2703, 2097184
  %2705 = select i1 %2704, float %2177, float 0.000000e+00
  %2706 = and i32 %2610, 4194336
  %2707 = icmp eq i32 %2706, 4194336
  %2708 = select i1 %2707, float %2177, float 0.000000e+00
  %2709 = and i32 %2610, 8388640
  %2710 = icmp eq i32 %2709, 8388640
  %2711 = select i1 %2710, float %2177, float 0.000000e+00
  %2712 = and i32 %2610, 2048
  %2713 = icmp ne i32 %2712, 0
  %2714 = select i1 %2713, float %2177, float 0.000000e+00
  %2715 = and i32 %2610, 8192
  %2716 = icmp ne i32 %2715, 0
  %2717 = select i1 %2716, float %2177, float 0.000000e+00
  %2718 = icmp eq i32 %2700, 0
  br i1 %2718, label %2719, label %2744

; <label>:2719                                    ; preds = %2702
  %2720 = fsub fast float %2478, %1979
  %2721 = fsub fast float %2479, %1980
  %2722 = fmul fast float %2705, %2720
  %2723 = fmul fast float %2705, %2721
  %2724 = fadd fast float %2722, %1979
  %2725 = fadd fast float %2723, %1980
  %2726 = fsub fast float %2480, %1992
  %2727 = fmul fast float %2708, %2726
  %2728 = fadd fast float %2727, %1992
  %2729 = fsub fast float %2477, %1991
  %2730 = fmul fast float %2711, %2729
  %2731 = fadd fast float %2730, %1991
  %2732 = fsub fast float %2580, %1993
  %2733 = fmul fast float %2714, %2732
  %2734 = fadd fast float %2733, %1993
  %2735 = fsub fast float %2577, %1987
  %2736 = fsub fast float %2578, %1988
  %2737 = fsub fast float %2579, %1989
  %2738 = fmul fast float %2717, %2735
  %2739 = fmul fast float %2717, %2736
  %2740 = fmul fast float %2717, %2737
  %2741 = fadd fast float %2738, %1987
  %2742 = fadd fast float %2739, %1988
  %2743 = fadd fast float %2740, %1989
  br label %2808

; <label>:2744                                    ; preds = %2702
  %2745 = icmp eq i32 %2700, 4
  br i1 %2745, label %2746, label %2786

; <label>:2746                                    ; preds = %2744
  %2747 = fmul fast float %2705, %2478
  %2748 = fmul fast float %2705, %2479
  %2749 = fadd fast float %2747, %1979
  %2750 = fadd fast float %2748, %1980
  %2751 = call float @dx.op.binary.f32(i32 36, float %1992, float %2480)  ; FMin(a,b)
  %2752 = fsub fast float %2751, %1992
  %2753 = fmul fast float %2752, %2708
  %2754 = fadd fast float %2753, %1992
  %2755 = fadd fast float %2477, %1991
  %2756 = fmul fast float %2755, 0x3FF337FAE0000000
  %2757 = fmul fast float %1991, %1991
  %2758 = fmul fast float %2477, %2477
  %2759 = fadd fast float %2758, %2757
  %2760 = fmul fast float %2759, 0x3FE5152B00000000
  %2761 = fmul fast float %1991, 0xBFCC1F85E0000000
  %2762 = fmul fast float %2761, %2477
  %2763 = fadd fast float %2762, 0xBFE1363700000000
  %2764 = fadd fast float %2763, %2756
  %2765 = fsub fast float %2764, %2760
  %2766 = fmul fast float %2755, 0x3FBA6F0D00000000
  %2767 = fmul fast float %2759, 0x3FD0432880000000
  %2768 = fmul fast float %1991, 0xBFEF110800000000
  %2769 = fmul fast float %2768, %2477
  %2770 = fadd fast float %2769, 1.000000e+00
  %2771 = fsub fast float %2770, %2766
  %2772 = fadd fast float %2771, %2767
  %2773 = fdiv fast float %2765, %2772
  %2774 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2775 = fsub fast float %2774, %1991
  %2776 = fmul fast float %2775, %2711
  %2777 = fadd fast float %2776, %1991
  %2778 = fmul fast float %2714, %2580
  %2779 = fadd fast float %2778, %1993
  %2780 = fmul fast float %2717, %2577
  %2781 = fmul fast float %2717, %2578
  %2782 = fmul fast float %2717, %2579
  %2783 = fadd fast float %2780, %1987
  %2784 = fadd fast float %2781, %1988
  %2785 = fadd fast float %2782, %1989
  br label %2808

; <label>:2786                                    ; preds = %2744
  %2787 = icmp eq i32 %2700, 8
  br i1 %2787, label %2788, label %2808

; <label>:2788                                    ; preds = %2786
  %2789 = fmul fast float %2705, %2478
  %2790 = fmul fast float %2705, %2479
  %2791 = fadd fast float %2789, %1979
  %2792 = fadd fast float %2790, %1980
  %2793 = call float @dx.op.binary.f32(i32 36, float %1992, float %2480)  ; FMin(a,b)
  %2794 = fsub fast float %2793, %1992
  %2795 = fmul fast float %2794, %2708
  %2796 = fadd fast float %2795, %1992
  %2797 = fsub fast float %2477, %1991
  %2798 = fmul fast float %2711, %2797
  %2799 = fadd fast float %2798, %1991
  %2800 = fmul fast float %2714, %2580
  %2801 = fadd fast float %2800, %1993
  %2802 = fmul fast float %2717, %2577
  %2803 = fmul fast float %2717, %2578
  %2804 = fmul fast float %2717, %2579
  %2805 = fadd fast float %2802, %1987
  %2806 = fadd fast float %2803, %1988
  %2807 = fadd fast float %2804, %1989
  br label %2808

; <label>:2808                                    ; preds = %2788, %2786, %2746, %2719, %2691, %2176, %1995, %1978
  %2809 = phi float [ %1979, %2691 ], [ %1979, %2176 ], [ %1979, %1978 ], [ %2791, %2788 ], [ %1979, %2786 ], [ %2749, %2746 ], [ %2724, %2719 ], [ %1979, %1995 ]
  %2810 = phi float [ %1980, %2691 ], [ %1980, %2176 ], [ %1980, %1978 ], [ %2792, %2788 ], [ %1980, %2786 ], [ %2750, %2746 ], [ %2725, %2719 ], [ %1980, %1995 ]
  %2811 = phi float [ %2692, %2691 ], [ %1981, %2176 ], [ %1981, %1978 ], [ %2692, %2788 ], [ %2692, %2786 ], [ %2692, %2746 ], [ %2692, %2719 ], [ %1981, %1995 ]
  %2812 = phi float [ %2693, %2691 ], [ %1982, %2176 ], [ %1982, %1978 ], [ %2693, %2788 ], [ %2693, %2786 ], [ %2693, %2746 ], [ %2693, %2719 ], [ %1982, %1995 ]
  %2813 = phi float [ %2694, %2691 ], [ %1983, %2176 ], [ %1983, %1978 ], [ %2694, %2788 ], [ %2694, %2786 ], [ %2694, %2746 ], [ %2694, %2719 ], [ %1983, %1995 ]
  %2814 = phi float [ %2695, %2691 ], [ %1984, %2176 ], [ %1984, %1978 ], [ %2695, %2788 ], [ %2695, %2786 ], [ %2695, %2746 ], [ %2695, %2719 ], [ %1984, %1995 ]
  %2815 = phi float [ %2696, %2691 ], [ %1985, %2176 ], [ %1985, %1978 ], [ %2696, %2788 ], [ %2696, %2786 ], [ %2696, %2746 ], [ %2696, %2719 ], [ %1985, %1995 ]
  %2816 = phi float [ %2697, %2691 ], [ %1986, %2176 ], [ %1986, %1978 ], [ %2697, %2788 ], [ %2697, %2786 ], [ %2697, %2746 ], [ %2697, %2719 ], [ %1986, %1995 ]
  %2817 = phi float [ %1987, %2691 ], [ %1987, %2176 ], [ %1987, %1978 ], [ %2805, %2788 ], [ %1987, %2786 ], [ %2783, %2746 ], [ %2741, %2719 ], [ %1987, %1995 ]
  %2818 = phi float [ %1988, %2691 ], [ %1988, %2176 ], [ %1988, %1978 ], [ %2806, %2788 ], [ %1988, %2786 ], [ %2784, %2746 ], [ %2742, %2719 ], [ %1988, %1995 ]
  %2819 = phi float [ %1989, %2691 ], [ %1989, %2176 ], [ %1989, %1978 ], [ %2807, %2788 ], [ %1989, %2786 ], [ %2785, %2746 ], [ %2743, %2719 ], [ %1989, %1995 ]
  %2820 = phi float [ %2698, %2691 ], [ %1990, %2176 ], [ %1990, %1978 ], [ %2698, %2788 ], [ %2698, %2786 ], [ %2698, %2746 ], [ %2698, %2719 ], [ %1990, %1995 ]
  %2821 = phi float [ %1991, %2691 ], [ %1991, %2176 ], [ %1991, %1978 ], [ %2799, %2788 ], [ %1991, %2786 ], [ %2777, %2746 ], [ %2731, %2719 ], [ %1991, %1995 ]
  %2822 = phi float [ %1992, %2691 ], [ %1992, %2176 ], [ %1992, %1978 ], [ %2796, %2788 ], [ %1992, %2786 ], [ %2754, %2746 ], [ %2728, %2719 ], [ %1992, %1995 ]
  %2823 = phi float [ %1993, %2691 ], [ %1993, %2176 ], [ %1993, %1978 ], [ %2801, %2788 ], [ %1993, %2786 ], [ %2779, %2746 ], [ %2734, %2719 ], [ %1993, %1995 ]
  %2824 = phi float [ %2699, %2691 ], [ %1994, %2176 ], [ %1994, %1978 ], [ %2699, %2788 ], [ %2699, %2786 ], [ %2699, %2746 ], [ %2699, %2719 ], [ %1994, %1995 ]
  br i1 %497, label %3638, label %2825

; <label>:2825                                    ; preds = %2808
  %2826 = icmp ult i32 %551, 4
  %2827 = add i32 %63, 72
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = add i32 %63, 76
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = or i32 %2832, %2829
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %3638, label %2835

; <label>:2835                                    ; preds = %2825
  %2836 = and i32 %2829, 262144
  %2837 = icmp ne i32 %2836, 0
  %2838 = select i1 %2837, float %69, float 1.000000e+00
  %2839 = select i1 %2837, float %70, float 0.000000e+00
  %2840 = select i1 %2837, float %71, float 0.000000e+00
  %2841 = select i1 %2837, float %72, float 1.000000e+00
  %2842 = select i1 %2837, float %73, float %101
  %2843 = select i1 %2837, float %74, float %102
  %2844 = add i32 %63, 332
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = lshr i32 %2846, 16
  %2848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2847)  ; LegacyF16ToF32(value)
  %2849 = fmul fast float %2848, 0x3F50624DE0000000
  %2850 = add i32 %63, 136
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = lshr i32 %2852, 16
  %2854 = and i32 %2853, 255
  %2855 = lshr i32 %2852, 24
  %2856 = add i32 %63, 340
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 65535
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = lshr i32 %2858, 16
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = add i32 %63, 80
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 22
  %2867 = shl nuw nsw i32 %2866, 5
  %2868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2867)  ; LegacyF16ToF32(value)
  %2869 = shl i32 %2865, 4
  %2870 = and i32 %2869, 32752
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = lshr i32 %2865, 7
  %2873 = and i32 %2872, 32752
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 3
  %2877 = fmul fast float %2876, 1.000000e+03
  %2878 = fmul fast float %487, %2877
  %2879 = call float @dx.op.unary.f32(i32 22, float %2878)  ; Frc(value)
  %2880 = fadd fast float %2879, %477
  %2881 = fmul fast float %488, %2877
  %2882 = call float @dx.op.unary.f32(i32 22, float %2881)  ; Frc(value)
  %2883 = fadd fast float %2882, %479
  %2884 = fmul fast float %2849, %2877
  %2885 = call float @dx.op.unary.f32(i32 22, float %2884)  ; Frc(value)
  %2886 = fmul fast float %2885, 0x401921FB60000000
  %2887 = fadd fast float %2886, %2868
  %2888 = call float @dx.op.unary.f32(i32 13, float %2887)  ; Sin(value)
  %2889 = call float @dx.op.unary.f32(i32 12, float %2887)  ; Cos(value)
  %2890 = fsub fast float -0.000000e+00, %2888
  %2891 = fadd fast float %2842, -5.000000e-01
  %2892 = fadd fast float %2843, -5.000000e-01
  %2893 = fmul fast float %2860, %2891
  %2894 = fmul fast float %2862, %2892
  %2895 = fadd fast float %2893, 5.000000e-01
  %2896 = fadd fast float %2894, 5.000000e-01
  %2897 = fmul fast float %2871, %2895
  %2898 = fmul fast float %2874, %2896
  %2899 = fmul fast float %2889, %2897
  %2900 = call float @dx.op.tertiary.f32(i32 46, float %2890, float %2898, float %2899)  ; FMad(a,b,c)
  %2901 = fmul fast float %2888, %2897
  %2902 = call float @dx.op.tertiary.f32(i32 46, float %2889, float %2898, float %2901)  ; FMad(a,b,c)
  %2903 = fadd fast float %2880, %2900
  %2904 = fadd fast float %2883, %2902
  %2905 = icmp ugt i32 %2854, 1
  %2906 = icmp ugt i32 %2852, 33554431
  %2907 = or i1 %2906, %2905
  br i1 %2907, label %2908, label %2933

; <label>:2908                                    ; preds = %2835
  %2909 = add i32 %63, 276
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = lshr i32 %2911, 16
  %2913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2912)  ; LegacyF16ToF32(value)
  %2914 = fmul fast float %2876, %2913
  %2915 = call float @dx.op.unary.f32(i32 22, float %2914)  ; Frc(value)
  %2916 = mul nuw nsw i32 %2854, %2855
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2915, %2917
  %2919 = call float @dx.op.unary.f32(i32 27, float %2918)  ; Round_ni(value)
  %2920 = fptoui float %2919 to i32
  %2921 = urem i32 %2920, %2854
  %2922 = udiv i32 %2920, %2855
  %2923 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2924 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2925 = uitofp i32 %2921 to float
  %2926 = uitofp i32 %2922 to float
  %2927 = fadd fast float %2923, %2925
  %2928 = fadd fast float %2924, %2926
  %2929 = uitofp i32 %2854 to float
  %2930 = uitofp i32 %2855 to float
  %2931 = fdiv fast float %2927, %2929
  %2932 = fdiv fast float %2928, %2930
  br label %2933

; <label>:2933                                    ; preds = %2908, %2835
  %2934 = phi float [ %2931, %2908 ], [ %2903, %2835 ]
  %2935 = phi float [ %2932, %2908 ], [ %2904, %2835 ]
  %2936 = and i32 %2829, 256
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %2984, label %2938

; <label>:2938                                    ; preds = %2933
  %2939 = add i32 %63, 500
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = add i32 %2941, 0
  %2943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2943, %dx.types.Handle %120, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = add i32 %63, 148
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = shl i32 %2948, 4
  %2950 = and i32 %2949, 32752
  %2951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2950)  ; LegacyF16ToF32(value)
  %2952 = lshr i32 %2948, 7
  %2953 = and i32 %2952, 32752
  %2954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2953)  ; LegacyF16ToF32(value)
  %2955 = fsub fast float 1.000000e+00, %546
  %2956 = call float @dx.op.binary.f32(i32 35, float %2955, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2957 = bitcast float %546 to i32
  %2958 = sitofp i32 %2957 to float
  %2959 = fadd fast float %2958, 0xC1CFBF8940000000
  %2960 = fmul fast float %2954, %2959
  %2961 = fadd fast float %2960, 0x41CFBF8940000000
  %2962 = fptosi float %2961 to i32
  %2963 = bitcast i32 %2962 to float
  %2964 = bitcast float %2956 to i32
  %2965 = sitofp i32 %2964 to float
  %2966 = fadd fast float %2965, 0xC1CFBF8940000000
  %2967 = fmul fast float %2966, %2954
  %2968 = fadd fast float %2967, 0x41CFBF8940000000
  %2969 = fptosi float %2968 to i32
  %2970 = bitcast i32 %2969 to float
  %2971 = fmul fast float %2963, %2951
  %2972 = fmul fast float %2970, %2951
  %2973 = fsub fast float %2956, %2971
  %2974 = fadd fast float %2972, %2956
  %2975 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  %2976 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2977 = fsub fast float %2945, %2975
  %2978 = fsub fast float %2976, %2975
  %2979 = bitcast float %2978 to i32
  %2980 = sub nsw i32 2129859010, %2979
  %2981 = bitcast i32 %2980 to float
  %2982 = fmul fast float %2981, %2977
  %2983 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  br label %2984

; <label>:2984                                    ; preds = %2938, %2933
  %2985 = phi float [ %2983, %2938 ], [ %546, %2933 ]
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = and i32 %2987, 128
  %2989 = icmp eq i32 %2988, 0
  br i1 %2989, label %3006, label %2990

; <label>:2990                                    ; preds = %2984
  %2991 = add i32 %63, 484
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = add i32 %2993, 0
  %2995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2995, %dx.types.Handle %120, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2997 = extractvalue %dx.types.ResRet.f32 %2996, 0
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = and i32 %2999, 524288
  %3001 = icmp ne i32 %3000, 0
  %3002 = fcmp fast ogt float %2997, 0x3FE0101020000000
  %3003 = select i1 %3002, float 1.000000e+00, float 0.000000e+00
  %3004 = select i1 %3001, float %3003, float %2997
  %3005 = fmul fast float %3004, %2985
  br label %3006

; <label>:3006                                    ; preds = %2990, %2984
  %3007 = phi float [ %3005, %2990 ], [ %2985, %2984 ]
  %3008 = fcmp fast ult float %3007, 0x3F70101020000000
  br i1 %3008, label %3638, label %3009

; <label>:3009                                    ; preds = %3006
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = and i32 %3011, 16
  %3013 = icmp eq i32 %3012, 0
  br i1 %3013, label %3212, label %3014

; <label>:3014                                    ; preds = %3009
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = add i32 %63, 436
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3021, %dx.types.Handle %119, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = extractvalue %dx.types.ResRet.f32 %3022, 3
  %3027 = and i32 %3016, 255
  %3028 = uitofp i32 %3027 to float
  %3029 = lshr i32 %3016, 8
  %3030 = and i32 %3029, 255
  %3031 = uitofp i32 %3030 to float
  %3032 = fmul fast float %3026, %3028
  %3033 = fadd fast float %3032, %3031
  %3034 = fmul fast float %3033, 0x3F70101000000000
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, 512
  %3038 = icmp eq i32 %3037, 0
  br i1 %3038, label %3047, label %3039

; <label>:3039                                    ; preds = %3014
  %3040 = add i32 %63, 520
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = add i32 %3042, 0
  %3044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3045 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3044, %dx.types.Handle %120, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3046 = extractvalue %dx.types.ResRet.f32 %3045, 0
  br label %3047

; <label>:3047                                    ; preds = %3039, %3014
  %3048 = phi float [ %3046, %3039 ], [ 1.000000e+00, %3014 ]
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 33554432
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3159, label %3053

; <label>:3053                                    ; preds = %3047
  %3054 = add i32 %63, 272
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = and i32 %3056, 65535
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = lshr i32 %3056, 16
  %3060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3059)  ; LegacyF16ToF32(value)
  %3061 = add i32 %63, 276
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 65535
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = lshr i32 %3067, 24
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F70101020000000
  %3071 = and i32 %3067, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = fmul fast float %3072, 0x3F70101020000000
  %3074 = lshr i32 %3067, 8
  %3075 = and i32 %3074, 255
  %3076 = uitofp i32 %3075 to float
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = lshr i32 %3067, 16
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = fmul fast float %3080, 0x3F70101020000000
  %3082 = add i32 %63, 268
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 24
  %3086 = uitofp i32 %3085 to float
  %3087 = fmul fast float %3086, 0x3F70101020000000
  %3088 = and i32 %3084, 255
  %3089 = uitofp i32 %3088 to float
  %3090 = fmul fast float %3089, 0x3F70101020000000
  %3091 = lshr i32 %3084, 8
  %3092 = and i32 %3091, 255
  %3093 = uitofp i32 %3092 to float
  %3094 = fmul fast float %3093, 0x3F70101020000000
  %3095 = lshr i32 %3084, 16
  %3096 = and i32 %3095, 255
  %3097 = uitofp i32 %3096 to float
  %3098 = fmul fast float %3097, 0x3F70101020000000
  %3099 = bitcast float %3023 to i32
  %3100 = ashr i32 %3099, 1
  %3101 = sub nsw i32 1597463174, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3023, 5.000000e-01
  %3104 = fmul fast float %3102, %3102
  %3105 = fmul fast float %3104, %3103
  %3106 = fsub fast float 1.500000e+00, %3105
  %3107 = fmul fast float %3102, %3023
  %3108 = fmul fast float %3107, %3106
  %3109 = bitcast float %3024 to i32
  %3110 = ashr i32 %3109, 1
  %3111 = sub nsw i32 1597463174, %3110
  %3112 = bitcast i32 %3111 to float
  %3113 = fmul fast float %3024, 5.000000e-01
  %3114 = fmul fast float %3112, %3112
  %3115 = fmul fast float %3114, %3113
  %3116 = fsub fast float 1.500000e+00, %3115
  %3117 = fmul fast float %3112, %3024
  %3118 = fmul fast float %3117, %3116
  %3119 = bitcast float %3025 to i32
  %3120 = ashr i32 %3119, 1
  %3121 = sub nsw i32 1597463174, %3120
  %3122 = bitcast i32 %3121 to float
  %3123 = fmul fast float %3025, 5.000000e-01
  %3124 = fmul fast float %3122, %3122
  %3125 = fmul fast float %3124, %3123
  %3126 = fsub fast float 1.500000e+00, %3125
  %3127 = fmul fast float %3122, %3025
  %3128 = fmul fast float %3127, %3126
  %3129 = fsub fast float %3108, %3090
  %3130 = fsub fast float %3118, %3094
  %3131 = fsub fast float %3128, %3098
  %3132 = fmul fast float %3129, %3058
  %3133 = fmul fast float %3130, %3060
  %3134 = fmul fast float %3131, %3065
  %3135 = fadd fast float %3132, %3073
  %3136 = fadd fast float %3133, %3077
  %3137 = fadd fast float %3134, %3081
  %3138 = call float @dx.op.unary.f32(i32 7, float %3135)  ; Saturate(value)
  %3139 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  %3140 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3141 = fmul fast float %3138, %3138
  %3142 = fmul fast float %3139, %3139
  %3143 = fmul fast float %3140, %3140
  %3144 = fsub fast float %3141, %3023
  %3145 = fsub fast float %3142, %3024
  %3146 = fsub fast float %3143, %3025
  %3147 = fmul fast float %3144, %3048
  %3148 = fmul fast float %3145, %3048
  %3149 = fmul fast float %3146, %3048
  %3150 = fadd fast float %3147, %3023
  %3151 = fadd fast float %3148, %3024
  %3152 = fadd fast float %3149, %3025
  %3153 = fadd fast float %3070, %3034
  %3154 = fsub fast float %3153, %3087
  %3155 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3156 = fsub fast float %3155, %3034
  %3157 = fmul fast float %3156, %3048
  %3158 = fadd fast float %3157, %3034
  br label %3212

; <label>:3159                                    ; preds = %3047
  %3160 = and i32 %3050, 134217728
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3196, label %3162

; <label>:3162                                    ; preds = %3159
  %3163 = call float @dx.op.unary.f32(i32 24, float %464)  ; Sqrt(value)
  %3164 = call float @dx.op.unary.f32(i32 24, float %468)  ; Sqrt(value)
  %3165 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %3166 = fadd fast float %3163, -5.000000e-01
  %3167 = fadd fast float %3164, -5.000000e-01
  %3168 = fadd fast float %3165, -5.000000e-01
  %3169 = fmul fast float %3166, %3048
  %3170 = fmul fast float %3167, %3048
  %3171 = fmul fast float %3168, %3048
  %3172 = fadd fast float %3169, 5.000000e-01
  %3173 = fadd fast float %3170, 5.000000e-01
  %3174 = fadd fast float %3171, 5.000000e-01
  %3175 = call float @dx.op.unary.f32(i32 24, float %3023)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %3024)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %3025)  ; Sqrt(value)
  %3178 = fmul fast float %3172, 2.000000e+00
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3179, %3175
  %3181 = fadd fast float %3180, %3178
  %3182 = fmul fast float %3181, %3175
  %3183 = fmul fast float %3173, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3184, %3176
  %3186 = fadd fast float %3185, %3183
  %3187 = fmul fast float %3186, %3176
  %3188 = fmul fast float %3174, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3177
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3177
  %3193 = fmul fast float %3182, %3182
  %3194 = fmul fast float %3187, %3187
  %3195 = fmul fast float %3192, %3192
  br label %3212

; <label>:3196                                    ; preds = %3159
  %3197 = fmul fast float %464, %464
  %3198 = fmul fast float %468, %468
  %3199 = fmul fast float %472, %472
  %3200 = fadd fast float %3197, -1.000000e+00
  %3201 = fadd fast float %3198, -1.000000e+00
  %3202 = fadd fast float %3199, -1.000000e+00
  %3203 = fmul fast float %3048, %3200
  %3204 = fmul fast float %3048, %3201
  %3205 = fmul fast float %3048, %3202
  %3206 = fadd fast float %3203, 1.000000e+00
  %3207 = fadd fast float %3204, 1.000000e+00
  %3208 = fadd fast float %3205, 1.000000e+00
  %3209 = fmul fast float %3206, %3023
  %3210 = fmul fast float %3207, %3024
  %3211 = fmul fast float %3208, %3025
  br label %3212

; <label>:3212                                    ; preds = %3196, %3162, %3053, %3009
  %3213 = phi float [ %3158, %3053 ], [ %3034, %3162 ], [ %3034, %3196 ], [ 0x3FA23C0BE0000000, %3009 ]
  %3214 = phi float [ %3150, %3053 ], [ %3193, %3162 ], [ %3209, %3196 ], [ 1.000000e+00, %3009 ]
  %3215 = phi float [ %3151, %3053 ], [ %3194, %3162 ], [ %3210, %3196 ], [ 1.000000e+00, %3009 ]
  %3216 = phi float [ %3152, %3053 ], [ %3195, %3162 ], [ %3211, %3196 ], [ 1.000000e+00, %3009 ]
  %3217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.i32 %3217, 1
  %3219 = and i32 %3218, 1
  %3220 = icmp ne i32 %3219, 0
  %3221 = add i32 %63, 356
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 32
  %3225 = icmp ne i32 %3224, 0
  %3226 = and i1 %3220, %3225
  %3227 = select i1 %3226, float 1.000000e+00, float %3214
  %3228 = select i1 %3226, float 0x3FD3333340000000, float %3215
  %3229 = select i1 %3226, float 0x3FD3333340000000, float %3216
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 32
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %3306, label %3234

; <label>:3234                                    ; preds = %3212
  %3235 = add i32 %63, 140
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = add i32 %63, 452
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = add i32 %3240, 0
  %3242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3242, %dx.types.Handle %119, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.ResRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.ResRet.f32 %3243, 2
  %3247 = extractvalue %dx.types.ResRet.f32 %3243, 3
  %3248 = and i32 %3237, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = lshr i32 %3237, 8
  %3251 = and i32 %3250, 255
  %3252 = uitofp i32 %3251 to float
  %3253 = lshr i32 %3237, 16
  %3254 = and i32 %3253, 255
  %3255 = uitofp i32 %3254 to float
  %3256 = fmul fast float %3255, 0x3F70101000000000
  %3257 = fmul fast float %3244, %3249
  %3258 = fadd fast float %3257, %3252
  %3259 = fmul fast float %3258, 0x3F70101000000000
  %3260 = fadd fast float %3245, -5.000000e-01
  %3261 = fadd fast float %3247, -5.000000e-01
  %3262 = fmul fast float %3260, %3256
  %3263 = fmul fast float %3261, %3256
  %3264 = fadd fast float %3262, 5.000000e-01
  %3265 = fadd fast float %3263, 5.000000e-01
  %3266 = fmul fast float %3264, 2.000000e+00
  %3267 = fadd fast float %3266, -1.000000e+00
  %3268 = fmul fast float %3265, 2.000000e+00
  %3269 = fadd fast float %3268, -1.000000e+00
  %3270 = fadd fast float %3267, %3269
  %3271 = fmul fast float %3270, 5.000000e-01
  %3272 = fsub fast float %3267, %3269
  %3273 = fmul fast float %3272, 5.000000e-01
  %3274 = call float @dx.op.unary.f32(i32 6, float %3271)  ; FAbs(value)
  %3275 = fsub fast float 1.000000e+00, %3274
  %3276 = call float @dx.op.unary.f32(i32 6, float %3273)  ; FAbs(value)
  %3277 = fsub fast float %3275, %3276
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3273, float %3277, float %3271, float %3273, float %3277)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = call float @dx.op.unary.f32(i32 25, float %3278)  ; Rsqrt(value)
  %3280 = fmul fast float %3271, %3279
  %3281 = fmul fast float %3273, %3279
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 67108864
  %3285 = icmp eq i32 %3284, 0
  br i1 %3285, label %3302, label %3286

; <label>:3286                                    ; preds = %3234
  %3287 = add i32 %63, 328
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = and i32 %3289, 65535
  %3291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3290)  ; LegacyF16ToF32(value)
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = and i32 %3293, 65535
  %3295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3294)  ; LegacyF16ToF32(value)
  %3296 = lshr i32 %3289, 16
  %3297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3296)  ; LegacyF16ToF32(value)
  %3298 = fsub fast float %3259, %3297
  %3299 = fmul fast float %3298, %3291
  %3300 = fadd fast float %3299, %3295
  %3301 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  br label %3302

; <label>:3302                                    ; preds = %3286, %3234
  %3303 = phi float [ %3301, %3286 ], [ %3259, %3234 ]
  %3304 = call float @dx.op.dot2.f32(i32 54, float %3280, float %3281, float %2838, float %2839)  ; Dot2(ax,ay,bx,by)
  %3305 = call float @dx.op.dot2.f32(i32 54, float %3280, float %3281, float %2840, float %2841)  ; Dot2(ax,ay,bx,by)
  br label %3306

; <label>:3306                                    ; preds = %3302, %3212
  %3307 = phi float [ %3303, %3302 ], [ 0x3FD6666660000000, %3212 ]
  %3308 = phi float [ %3304, %3302 ], [ 0.000000e+00, %3212 ]
  %3309 = phi float [ %3305, %3302 ], [ 0.000000e+00, %3212 ]
  %3310 = phi float [ %3246, %3302 ], [ 1.000000e+00, %3212 ]
  %3311 = add i32 %63, 208
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = lshr i32 %3313, 22
  %3315 = shl nuw nsw i32 %3314, 5
  %3316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3315)  ; LegacyF16ToF32(value)
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 64
  %3320 = icmp eq i32 %3319, 0
  br i1 %3320, label %3354, label %3321

; <label>:3321                                    ; preds = %3306
  %3322 = add i32 %63, 468
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = add i32 %3324, 0
  %3326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = and i32 %3328, 131072
  %3330 = icmp eq i32 %3329, 0
  %3331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3326, %dx.types.Handle %119, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = fmul fast float %3332, %452
  %3336 = fmul fast float %3333, %455
  %3337 = fmul fast float %3334, %458
  br i1 %3330, label %3344, label %3338

; <label>:3338                                    ; preds = %3321
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 0
  %3341 = fmul fast float %3340, %3335
  %3342 = fmul fast float %3340, %3336
  %3343 = fmul fast float %3340, %3337
  br label %3344

; <label>:3344                                    ; preds = %3338, %3321
  %3345 = phi float [ %3341, %3338 ], [ %3335, %3321 ]
  %3346 = phi float [ %3342, %3338 ], [ %3336, %3321 ]
  %3347 = phi float [ %3343, %3338 ], [ %3337, %3321 ]
  %3348 = fmul fast float %3345, %3316
  %3349 = select i1 %306, float %3348, float %3345
  %3350 = call float @dx.op.dot3.f32(i32 55, float %3349, float %3346, float %3347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3351 = select i1 %306, float 0.000000e+00, float %3345
  %3352 = select i1 %306, float %3350, float %3346
  %3353 = select i1 %306, float 0.000000e+00, float %3347
  br label %3354

; <label>:3354                                    ; preds = %3344, %3306
  %3355 = phi float [ %3351, %3344 ], [ 0.000000e+00, %3306 ]
  %3356 = phi float [ %3352, %3344 ], [ 0.000000e+00, %3306 ]
  %3357 = phi float [ %3353, %3344 ], [ 0.000000e+00, %3306 ]
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 10240
  %3361 = icmp eq i32 %3360, 0
  br i1 %3361, label %3406, label %3362

; <label>:3362                                    ; preds = %3354
  %3363 = add i32 %63, 536
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = add i32 %3365, 0
  %3367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3367, %dx.types.Handle %120, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3369 = extractvalue %dx.types.ResRet.f32 %3368, 1
  %3370 = extractvalue %dx.types.ResRet.f32 %3368, 3
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = and i32 %3372, 1048576
  %3374 = icmp ne i32 %3373, 0
  %3375 = and i32 %3372, 8192
  %3376 = icmp eq i32 %3375, 0
  br i1 %3376, label %3392, label %3377

; <label>:3377                                    ; preds = %3362
  %3378 = extractvalue %dx.types.ResRet.f32 %3368, 2
  %3379 = select i1 %3374, float %3378, float %3369
  %3380 = extractvalue %dx.types.ResRet.f32 %3368, 0
  %3381 = select i1 %3374, float %3380, float %3369
  %3382 = add i32 %63, 144
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = lshr i32 %3384, 16
  %3386 = and i32 %3385, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = fmul fast float %3387, 0x3F80101020000000
  %3389 = fmul fast float %3388, %3381
  %3390 = fmul fast float %3388, %3369
  %3391 = fmul fast float %3388, %3379
  br label %3392

; <label>:3392                                    ; preds = %3377, %3362
  %3393 = phi float [ %3389, %3377 ], [ 0.000000e+00, %3362 ]
  %3394 = phi float [ %3390, %3377 ], [ 0.000000e+00, %3362 ]
  %3395 = phi float [ %3391, %3377 ], [ 0.000000e+00, %3362 ]
  %3396 = and i32 %3372, 2048
  %3397 = icmp eq i32 %3396, 0
  br i1 %3397, label %3406, label %3398

; <label>:3398                                    ; preds = %3392
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = shl i32 %3400, 4
  %3402 = and i32 %3401, 32752
  %3403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3402)  ; LegacyF16ToF32(value)
  %3404 = fmul fast float %3403, %3370
  %3405 = call float @dx.op.binary.f32(i32 35, float %3404, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3406

; <label>:3406                                    ; preds = %3398, %3392, %3354
  %3407 = phi float [ %3393, %3398 ], [ %3393, %3392 ], [ 0.000000e+00, %3354 ]
  %3408 = phi float [ %3394, %3398 ], [ %3394, %3392 ], [ 0.000000e+00, %3354 ]
  %3409 = phi float [ %3395, %3398 ], [ %3395, %3392 ], [ 0.000000e+00, %3354 ]
  %3410 = phi float [ %3405, %3398 ], [ 0x3F70101020000000, %3392 ], [ 0x3F70101020000000, %3354 ]
  %3411 = add i32 %63, 144
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = and i32 %3413, 255
  %3415 = uitofp i32 %3414 to float
  %3416 = lshr i32 %3413, 8
  %3417 = and i32 %3416, 255
  %3418 = uitofp i32 %3417 to float
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3227, float %3228, float %3229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = fmul fast float %3418, %3419
  %3421 = fadd fast float %3420, %3415
  %3422 = fmul fast float %3421, 0x3F70101020000000
  %3423 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  br i1 %2826, label %3424, label %3432

; <label>:3424                                    ; preds = %3406
  %3425 = fsub fast float 1.000000e+00, %3007
  %3426 = fmul fast float %3425, %2811
  %3427 = fmul fast float %3425, %2812
  %3428 = fmul fast float %3425, %2813
  %3429 = fmul fast float %3425, %2814
  %3430 = fmul fast float %3425, %2815
  %3431 = fmul fast float %3425, %2816
  br label %3432

; <label>:3432                                    ; preds = %3424, %3406
  %3433 = phi float [ %3426, %3424 ], [ %2811, %3406 ]
  %3434 = phi float [ %3427, %3424 ], [ %2812, %3406 ]
  %3435 = phi float [ %3428, %3424 ], [ %2813, %3406 ]
  %3436 = phi float [ %3429, %3424 ], [ %2814, %3406 ]
  %3437 = phi float [ %3430, %3424 ], [ %2815, %3406 ]
  %3438 = phi float [ %3431, %3424 ], [ %2816, %3406 ]
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = and i32 %3440, 3
  %3442 = icmp eq i32 %3441, 3
  br i1 %3442, label %3521, label %3443

; <label>:3443                                    ; preds = %3432
  %3444 = and i32 %3440, 16
  %3445 = icmp ne i32 %3444, 0
  %3446 = select i1 %3445, float %3007, float 0.000000e+00
  %3447 = icmp eq i32 %3441, 0
  br i1 %3447, label %3448, label %3476

; <label>:3448                                    ; preds = %3443
  %3449 = and i32 %3440, 64
  %3450 = icmp ne i32 %3449, 0
  %3451 = select i1 %3450, float %3007, float 0.000000e+00
  %3452 = fsub fast float %3227, %3433
  %3453 = fsub fast float %3228, %3434
  %3454 = fsub fast float %3229, %3435
  %3455 = fmul fast float %3446, %3452
  %3456 = fmul fast float %3446, %3453
  %3457 = fmul fast float %3446, %3454
  %3458 = fadd fast float %3455, %3433
  %3459 = fadd fast float %3456, %3434
  %3460 = fadd fast float %3457, %3435
  %3461 = fsub fast float %3213, %2820
  %3462 = fmul fast float %3446, %3461
  %3463 = fadd fast float %3462, %2820
  %3464 = fsub fast float %3355, %3436
  %3465 = fsub fast float %3356, %3437
  %3466 = fsub fast float %3357, %3438
  %3467 = fmul fast float %3451, %3464
  %3468 = fmul fast float %3451, %3465
  %3469 = fmul fast float %3451, %3466
  %3470 = fadd fast float %3467, %3436
  %3471 = fadd fast float %3468, %3437
  %3472 = fadd fast float %3469, %3438
  %3473 = fsub fast float %3423, %2824
  %3474 = fmul fast float %3446, %3473
  %3475 = fadd fast float %3474, %2824
  br label %3521

; <label>:3476                                    ; preds = %3443
  %3477 = icmp eq i32 %3441, 1
  br i1 %3477, label %3478, label %3491

; <label>:3478                                    ; preds = %3476
  %3479 = fadd fast float %3227, -1.000000e+00
  %3480 = fadd fast float %3228, -1.000000e+00
  %3481 = fadd fast float %3229, -1.000000e+00
  %3482 = fmul fast float %3446, %3479
  %3483 = fmul fast float %3446, %3480
  %3484 = fmul fast float %3446, %3481
  %3485 = fadd fast float %3482, 1.000000e+00
  %3486 = fadd fast float %3483, 1.000000e+00
  %3487 = fadd fast float %3484, 1.000000e+00
  %3488 = fmul fast float %3485, %3433
  %3489 = fmul fast float %3486, %3434
  %3490 = fmul fast float %3487, %3435
  br label %3521

; <label>:3491                                    ; preds = %3476
  %3492 = icmp eq i32 %3441, 2
  br i1 %3492, label %3493, label %3521

; <label>:3493                                    ; preds = %3491
  %3494 = call float @dx.op.unary.f32(i32 24, float %3227)  ; Sqrt(value)
  %3495 = call float @dx.op.unary.f32(i32 24, float %3228)  ; Sqrt(value)
  %3496 = call float @dx.op.unary.f32(i32 24, float %3229)  ; Sqrt(value)
  %3497 = fadd fast float %3494, -5.000000e-01
  %3498 = fadd fast float %3495, -5.000000e-01
  %3499 = fadd fast float %3496, -5.000000e-01
  %3500 = fmul fast float %3497, %3446
  %3501 = fmul fast float %3498, %3446
  %3502 = fmul fast float %3499, %3446
  %3503 = fadd fast float %3500, 5.000000e-01
  %3504 = fadd fast float %3501, 5.000000e-01
  %3505 = fadd fast float %3502, 5.000000e-01
  %3506 = fmul fast float %3503, 2.000000e+00
  %3507 = fsub fast float 1.000000e+00, %3506
  %3508 = fmul fast float %3507, %3433
  %3509 = fadd fast float %3508, %3506
  %3510 = fmul fast float %3509, %3433
  %3511 = fmul fast float %3504, 2.000000e+00
  %3512 = fsub fast float 1.000000e+00, %3511
  %3513 = fmul fast float %3512, %3434
  %3514 = fadd fast float %3513, %3511
  %3515 = fmul fast float %3514, %3434
  %3516 = fmul fast float %3505, 2.000000e+00
  %3517 = fsub fast float 1.000000e+00, %3516
  %3518 = fmul fast float %3517, %3435
  %3519 = fadd fast float %3518, %3516
  %3520 = fmul fast float %3519, %3435
  br label %3521

; <label>:3521                                    ; preds = %3493, %3491, %3478, %3448, %3432
  %3522 = phi float [ %3433, %3432 ], [ %3510, %3493 ], [ %3433, %3491 ], [ %3488, %3478 ], [ %3458, %3448 ]
  %3523 = phi float [ %3434, %3432 ], [ %3515, %3493 ], [ %3434, %3491 ], [ %3489, %3478 ], [ %3459, %3448 ]
  %3524 = phi float [ %3435, %3432 ], [ %3520, %3493 ], [ %3435, %3491 ], [ %3490, %3478 ], [ %3460, %3448 ]
  %3525 = phi float [ %3436, %3432 ], [ %3436, %3493 ], [ %3436, %3491 ], [ %3436, %3478 ], [ %3470, %3448 ]
  %3526 = phi float [ %3437, %3432 ], [ %3437, %3493 ], [ %3437, %3491 ], [ %3437, %3478 ], [ %3471, %3448 ]
  %3527 = phi float [ %3438, %3432 ], [ %3438, %3493 ], [ %3438, %3491 ], [ %3438, %3478 ], [ %3472, %3448 ]
  %3528 = phi float [ %2820, %3432 ], [ %2820, %3493 ], [ %2820, %3491 ], [ %2820, %3478 ], [ %3463, %3448 ]
  %3529 = phi float [ %2824, %3432 ], [ %2824, %3493 ], [ %2824, %3491 ], [ %2824, %3478 ], [ %3475, %3448 ]
  %3530 = and i32 %3440, 12
  %3531 = icmp eq i32 %3530, 12
  br i1 %3531, label %3638, label %3532

; <label>:3532                                    ; preds = %3521
  %3533 = and i32 %3440, 2097184
  %3534 = icmp eq i32 %3533, 2097184
  %3535 = select i1 %3534, float %3007, float 0.000000e+00
  %3536 = and i32 %3440, 4194336
  %3537 = icmp eq i32 %3536, 4194336
  %3538 = select i1 %3537, float %3007, float 0.000000e+00
  %3539 = and i32 %3440, 8388640
  %3540 = icmp eq i32 %3539, 8388640
  %3541 = select i1 %3540, float %3007, float 0.000000e+00
  %3542 = and i32 %3440, 2048
  %3543 = icmp ne i32 %3542, 0
  %3544 = select i1 %3543, float %3007, float 0.000000e+00
  %3545 = and i32 %3440, 8192
  %3546 = icmp ne i32 %3545, 0
  %3547 = select i1 %3546, float %3007, float 0.000000e+00
  %3548 = icmp eq i32 %3530, 0
  br i1 %3548, label %3549, label %3574

; <label>:3549                                    ; preds = %3532
  %3550 = fsub fast float %3308, %2809
  %3551 = fsub fast float %3309, %2810
  %3552 = fmul fast float %3535, %3550
  %3553 = fmul fast float %3535, %3551
  %3554 = fadd fast float %3552, %2809
  %3555 = fadd fast float %3553, %2810
  %3556 = fsub fast float %3310, %2822
  %3557 = fmul fast float %3538, %3556
  %3558 = fadd fast float %3557, %2822
  %3559 = fsub fast float %3307, %2821
  %3560 = fmul fast float %3541, %3559
  %3561 = fadd fast float %3560, %2821
  %3562 = fsub fast float %3410, %2823
  %3563 = fmul fast float %3544, %3562
  %3564 = fadd fast float %3563, %2823
  %3565 = fsub fast float %3407, %2817
  %3566 = fsub fast float %3408, %2818
  %3567 = fsub fast float %3409, %2819
  %3568 = fmul fast float %3547, %3565
  %3569 = fmul fast float %3547, %3566
  %3570 = fmul fast float %3547, %3567
  %3571 = fadd fast float %3568, %2817
  %3572 = fadd fast float %3569, %2818
  %3573 = fadd fast float %3570, %2819
  br label %3638

; <label>:3574                                    ; preds = %3532
  %3575 = icmp eq i32 %3530, 4
  br i1 %3575, label %3576, label %3616

; <label>:3576                                    ; preds = %3574
  %3577 = fmul fast float %3535, %3308
  %3578 = fmul fast float %3535, %3309
  %3579 = fadd fast float %3577, %2809
  %3580 = fadd fast float %3578, %2810
  %3581 = call float @dx.op.binary.f32(i32 36, float %2822, float %3310)  ; FMin(a,b)
  %3582 = fsub fast float %3581, %2822
  %3583 = fmul fast float %3582, %3538
  %3584 = fadd fast float %3583, %2822
  %3585 = fadd fast float %3307, %2821
  %3586 = fmul fast float %3585, 0x3FF337FAE0000000
  %3587 = fmul fast float %2821, %2821
  %3588 = fmul fast float %3307, %3307
  %3589 = fadd fast float %3588, %3587
  %3590 = fmul fast float %3589, 0x3FE5152B00000000
  %3591 = fmul fast float %2821, 0xBFCC1F85E0000000
  %3592 = fmul fast float %3591, %3307
  %3593 = fadd fast float %3592, 0xBFE1363700000000
  %3594 = fadd fast float %3593, %3586
  %3595 = fsub fast float %3594, %3590
  %3596 = fmul fast float %3585, 0x3FBA6F0D00000000
  %3597 = fmul fast float %3589, 0x3FD0432880000000
  %3598 = fmul fast float %2821, 0xBFEF110800000000
  %3599 = fmul fast float %3598, %3307
  %3600 = fadd fast float %3599, 1.000000e+00
  %3601 = fsub fast float %3600, %3596
  %3602 = fadd fast float %3601, %3597
  %3603 = fdiv fast float %3595, %3602
  %3604 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  %3605 = fsub fast float %3604, %2821
  %3606 = fmul fast float %3605, %3541
  %3607 = fadd fast float %3606, %2821
  %3608 = fmul fast float %3544, %3410
  %3609 = fadd fast float %3608, %2823
  %3610 = fmul fast float %3547, %3407
  %3611 = fmul fast float %3547, %3408
  %3612 = fmul fast float %3547, %3409
  %3613 = fadd fast float %3610, %2817
  %3614 = fadd fast float %3611, %2818
  %3615 = fadd fast float %3612, %2819
  br label %3638

; <label>:3616                                    ; preds = %3574
  %3617 = icmp eq i32 %3530, 8
  br i1 %3617, label %3618, label %3638

; <label>:3618                                    ; preds = %3616
  %3619 = fmul fast float %3535, %3308
  %3620 = fmul fast float %3535, %3309
  %3621 = fadd fast float %3619, %2809
  %3622 = fadd fast float %3620, %2810
  %3623 = call float @dx.op.binary.f32(i32 36, float %2822, float %3310)  ; FMin(a,b)
  %3624 = fsub fast float %3623, %2822
  %3625 = fmul fast float %3624, %3538
  %3626 = fadd fast float %3625, %2822
  %3627 = fsub fast float %3307, %2821
  %3628 = fmul fast float %3541, %3627
  %3629 = fadd fast float %3628, %2821
  %3630 = fmul fast float %3544, %3410
  %3631 = fadd fast float %3630, %2823
  %3632 = fmul fast float %3547, %3407
  %3633 = fmul fast float %3547, %3408
  %3634 = fmul fast float %3547, %3409
  %3635 = fadd fast float %3632, %2817
  %3636 = fadd fast float %3633, %2818
  %3637 = fadd fast float %3634, %2819
  br label %3638

; <label>:3638                                    ; preds = %3618, %3616, %3576, %3549, %3521, %3006, %2825, %2808
  %3639 = phi float [ %2809, %3521 ], [ %2809, %3006 ], [ %2809, %2808 ], [ %2809, %2825 ], [ %3554, %3549 ], [ %3579, %3576 ], [ %2809, %3616 ], [ %3621, %3618 ]
  %3640 = phi float [ %2810, %3521 ], [ %2810, %3006 ], [ %2810, %2808 ], [ %2810, %2825 ], [ %3555, %3549 ], [ %3580, %3576 ], [ %2810, %3616 ], [ %3622, %3618 ]
  %3641 = phi float [ %3522, %3521 ], [ %2811, %3006 ], [ %2811, %2808 ], [ %2811, %2825 ], [ %3522, %3549 ], [ %3522, %3576 ], [ %3522, %3616 ], [ %3522, %3618 ]
  %3642 = phi float [ %3523, %3521 ], [ %2812, %3006 ], [ %2812, %2808 ], [ %2812, %2825 ], [ %3523, %3549 ], [ %3523, %3576 ], [ %3523, %3616 ], [ %3523, %3618 ]
  %3643 = phi float [ %3524, %3521 ], [ %2813, %3006 ], [ %2813, %2808 ], [ %2813, %2825 ], [ %3524, %3549 ], [ %3524, %3576 ], [ %3524, %3616 ], [ %3524, %3618 ]
  %3644 = phi float [ %3525, %3521 ], [ %2814, %3006 ], [ %2814, %2808 ], [ %2814, %2825 ], [ %3525, %3549 ], [ %3525, %3576 ], [ %3525, %3616 ], [ %3525, %3618 ]
  %3645 = phi float [ %3526, %3521 ], [ %2815, %3006 ], [ %2815, %2808 ], [ %2815, %2825 ], [ %3526, %3549 ], [ %3526, %3576 ], [ %3526, %3616 ], [ %3526, %3618 ]
  %3646 = phi float [ %3527, %3521 ], [ %2816, %3006 ], [ %2816, %2808 ], [ %2816, %2825 ], [ %3527, %3549 ], [ %3527, %3576 ], [ %3527, %3616 ], [ %3527, %3618 ]
  %3647 = phi float [ %2817, %3521 ], [ %2817, %3006 ], [ %2817, %2808 ], [ %2817, %2825 ], [ %3571, %3549 ], [ %3613, %3576 ], [ %2817, %3616 ], [ %3635, %3618 ]
  %3648 = phi float [ %2818, %3521 ], [ %2818, %3006 ], [ %2818, %2808 ], [ %2818, %2825 ], [ %3572, %3549 ], [ %3614, %3576 ], [ %2818, %3616 ], [ %3636, %3618 ]
  %3649 = phi float [ %2819, %3521 ], [ %2819, %3006 ], [ %2819, %2808 ], [ %2819, %2825 ], [ %3573, %3549 ], [ %3615, %3576 ], [ %2819, %3616 ], [ %3637, %3618 ]
  %3650 = phi float [ %3528, %3521 ], [ %2820, %3006 ], [ %2820, %2808 ], [ %2820, %2825 ], [ %3528, %3549 ], [ %3528, %3576 ], [ %3528, %3616 ], [ %3528, %3618 ]
  %3651 = phi float [ %2821, %3521 ], [ %2821, %3006 ], [ %2821, %2808 ], [ %2821, %2825 ], [ %3561, %3549 ], [ %3607, %3576 ], [ %2821, %3616 ], [ %3629, %3618 ]
  %3652 = phi float [ %2822, %3521 ], [ %2822, %3006 ], [ %2822, %2808 ], [ %2822, %2825 ], [ %3558, %3549 ], [ %3584, %3576 ], [ %2822, %3616 ], [ %3626, %3618 ]
  %3653 = phi float [ %2823, %3521 ], [ %2823, %3006 ], [ %2823, %2808 ], [ %2823, %2825 ], [ %3564, %3549 ], [ %3609, %3576 ], [ %2823, %3616 ], [ %3631, %3618 ]
  %3654 = phi float [ %3529, %3521 ], [ %2824, %3006 ], [ %2824, %2808 ], [ %2824, %2825 ], [ %3529, %3549 ], [ %3529, %3576 ], [ %3529, %3616 ], [ %3529, %3618 ]
  %3655 = add i32 %63, 408
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = extractvalue %dx.types.ResRet.i32 %3656, 1
  %3659 = bitcast i32 %3657 to float
  %3660 = bitcast i32 %3658 to float
  %3661 = fcmp fast oge float %3659, 0.000000e+00
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3664 = select i1 %3661, float %3659, float %3663
  %3665 = fadd fast float %3664, %216
  %3666 = fmul fast float %3660, %217
  %3667 = add i32 %63, 504
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = add i32 %3669, 0
  %3671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3671, %dx.types.Handle %120, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = fmul fast float %3666, %3673
  %3675 = fadd fast float %3665, %3674
  %3676 = and i32 %208, 65535
  %3677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3676)  ; LegacyF16ToF32(value)
  %3678 = lshr i32 %208, 16
  %3679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3678)  ; LegacyF16ToF32(value)
  %3680 = and i32 %209, 65535
  %3681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3680)  ; LegacyF16ToF32(value)
  %3682 = fmul fast float %3677, %3641
  %3683 = fmul fast float %3679, %3642
  %3684 = fmul fast float %3681, %3643
  %3685 = shl i32 %210, 4
  %3686 = and i32 %3685, 32752
  %3687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3686)  ; LegacyF16ToF32(value)
  %3688 = lshr i32 %210, 7
  %3689 = and i32 %3688, 32752
  %3690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3689)  ; LegacyF16ToF32(value)
  %3691 = lshr i32 %210, 22
  %3692 = shl nuw nsw i32 %3691, 5
  %3693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3692)  ; LegacyF16ToF32(value)
  %3694 = and i32 %211, 65535
  %3695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3694)  ; LegacyF16ToF32(value)
  %3696 = fmul fast float %3687, %3644
  %3697 = fmul fast float %3696, %3695
  %3698 = fmul fast float %3690, %3645
  %3699 = fmul fast float %3698, %3695
  %3700 = fmul fast float %3693, %3646
  %3701 = fmul fast float %3700, %3695
  %3702 = call float @dx.op.dot2.f32(i32 54, float %3639, float %3640, float %3639, float %3640)  ; Dot2(ax,ay,bx,by)
  %3703 = fmul fast float %3702, 0x3FE3333340000000
  %3704 = fsub fast float 1.000000e+00, %3703
  %3705 = call float @dx.op.dot3.f32(i32 55, float %3639, float %3640, float %3704, float %3639, float %3640, float %3704)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = call float @dx.op.unary.f32(i32 25, float %3705)  ; Rsqrt(value)
  %3707 = fmul fast float %3706, %3639
  %3708 = fmul fast float %3706, %3640
  %3709 = fmul fast float %3704, %3706
  %3710 = fmul fast float %3709, %130
  %3711 = fmul fast float %3709, %131
  %3712 = fmul fast float %3709, %132
  %3713 = fmul fast float %3707, %94
  %3714 = fmul fast float %3707, %95
  %3715 = fmul fast float %3707, %96
  %3716 = fadd fast float %3710, %3713
  %3717 = fadd fast float %3711, %3714
  %3718 = fadd fast float %3712, %3715
  %3719 = fmul fast float %142, %3708
  %3720 = fmul fast float %143, %3708
  %3721 = fmul fast float %144, %3708
  %3722 = fadd fast float %3716, %3719
  %3723 = fadd fast float %3717, %3720
  %3724 = fadd fast float %3718, %3721
  %3725 = call float @dx.op.dot3.f32(i32 55, float %3722, float %3723, float %3724, float %3722, float %3723, float %3724)  ; Dot3(ax,ay,az,bx,by,bz)
  %3726 = call float @dx.op.unary.f32(i32 25, float %3725)  ; Rsqrt(value)
  %3727 = fmul fast float %3722, %3726
  %3728 = fmul fast float %3723, %3726
  %3729 = fmul fast float %3724, %3726
  %3730 = icmp eq i32 %65, 65535
  br i1 %3730, label %4298, label %3731

; <label>:3731                                    ; preds = %3638
  %3732 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3733 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %3734 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3735 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3736 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %3737 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3738 = fadd fast float %3732, %66
  %3739 = fadd fast float %3733, %67
  %3740 = fadd fast float %3734, %68
  %3741 = fadd fast float %3735, %66
  %3742 = fadd fast float %3736, %67
  %3743 = fadd fast float %3737, %68
  %3744 = mul i32 %65, 48
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.ResRet.f32 %3745, 1
  %3748 = extractvalue %dx.types.ResRet.f32 %3745, 2
  %3749 = add i32 %3744, 16
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = add i32 %3744, 32
  %3755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = extractvalue %dx.types.ResRet.f32 %3755, 3
  %3760 = bitcast float %3759 to i32
  %3761 = fmul fast float %3746, %66
  %3762 = fmul fast float %3747, %67
  %3763 = fmul fast float %3748, %68
  %3764 = fsub fast float %3761, %3751
  %3765 = fsub fast float %3762, %3752
  %3766 = fsub fast float %3763, %3753
  %3767 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3770 = fmul fast float %3767, %3756
  %3771 = fmul fast float %3768, %3757
  %3772 = fmul fast float %3769, %3758
  %3773 = fadd fast float %3756, -1.000000e+00
  %3774 = fadd fast float %3757, -1.000000e+00
  %3775 = fadd fast float %3758, -1.000000e+00
  %3776 = call float @dx.op.unary.f32(i32 27, float %3770)  ; Round_ni(value)
  %3777 = call float @dx.op.unary.f32(i32 27, float %3771)  ; Round_ni(value)
  %3778 = call float @dx.op.unary.f32(i32 27, float %3772)  ; Round_ni(value)
  %3779 = call float @dx.op.binary.f32(i32 36, float %3776, float %3773)  ; FMin(a,b)
  %3780 = call float @dx.op.binary.f32(i32 36, float %3777, float %3774)  ; FMin(a,b)
  %3781 = call float @dx.op.binary.f32(i32 36, float %3778, float %3775)  ; FMin(a,b)
  %3782 = fmul fast float %3781, %3757
  %3783 = fadd fast float %3782, %3780
  %3784 = fmul fast float %3783, %3756
  %3785 = fadd fast float %3784, %3779
  %3786 = fptosi float %3785 to i32
  %3787 = add nsw i32 %3786, %3760
  %3788 = shl nsw i32 %3787, 2
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = lshr i32 %3790, 16
  %3792 = icmp eq i32 %3791, 0
  br i1 %3792, label %4264, label %3793

; <label>:3793                                    ; preds = %3731
  br label %3794

; <label>:3794                                    ; preds = %3918, %3793
  %3795 = phi i32 [ %3820, %3918 ], [ %3791, %3793 ]
  %3796 = phi float [ %3919, %3918 ], [ 0.000000e+00, %3793 ]
  %3797 = phi float [ %3920, %3918 ], [ %3675, %3793 ]
  %3798 = phi float [ %3921, %3918 ], [ %3654, %3793 ]
  %3799 = phi float [ %3922, %3918 ], [ 0.000000e+00, %3793 ]
  %3800 = phi float [ %3923, %3918 ], [ 0.000000e+00, %3793 ]
  %3801 = phi float [ %3924, %3918 ], [ %3647, %3793 ]
  %3802 = phi float [ %3925, %3918 ], [ %3648, %3793 ]
  %3803 = phi float [ %3926, %3918 ], [ %3649, %3793 ]
  %3804 = phi float [ %3927, %3918 ], [ %3697, %3793 ]
  %3805 = phi float [ %3928, %3918 ], [ %3699, %3793 ]
  %3806 = phi float [ %3929, %3918 ], [ %3701, %3793 ]
  %3807 = phi float [ %3930, %3918 ], [ %3727, %3793 ]
  %3808 = phi float [ %3931, %3918 ], [ %3728, %3793 ]
  %3809 = phi float [ %3932, %3918 ], [ %3729, %3793 ]
  %3810 = phi float [ %3933, %3918 ], [ %3652, %3793 ]
  %3811 = phi float [ %3934, %3918 ], [ %3651, %3793 ]
  %3812 = phi float [ %3935, %3918 ], [ 0.000000e+00, %3793 ]
  %3813 = phi float [ %3936, %3918 ], [ %3650, %3793 ]
  %3814 = phi float [ %3937, %3918 ], [ %3682, %3793 ]
  %3815 = phi float [ %3938, %3918 ], [ %3683, %3793 ]
  %3816 = phi float [ %3939, %3918 ], [ %3684, %3793 ]
  %3817 = shl nuw nsw i32 %3795, 2
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = lshr i32 %3819, 16
  %3821 = shl i32 %3819, 8
  %3822 = and i32 %3821, 16776960
  %3823 = or i32 %3822, 48
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = or i32 %3822, 64
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.i32 %3829, 1
  %3832 = or i32 %3822, 80
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3836 = or i32 %3822, 96
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = or i32 %3822, 112
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3845 = or i32 %3822, 128
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = or i32 %3822, 144
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = or i32 %3822, 160
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = or i32 %3822, 192
  %3864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.i32 %3864, 0
  %3866 = or i32 %3822, 208
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = or i32 %3822, 248
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = or i32 %3822, 16
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = call float @dx.op.dot4.f32(i32 56, float %3881, float %3882, float %3883, float %3884, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3886 = or i32 %3822, 32
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.ResRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.ResRet.f32 %3887, 3
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3888, float %3889, float %3890, float %3891, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3878)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 27, float %3885)  ; Round_ni(value)
  %3896 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3897 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3898 = call float @dx.op.unary.f32(i32 27, float %3897)  ; Round_ni(value)
  %3899 = fadd fast float %3896, %3894
  %3900 = fadd fast float %3899, %3898
  %3901 = fcmp fast oeq float %3900, 0.000000e+00
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.dot4.f32(i32 56, float %3881, float %3882, float %3883, float %3884, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3904 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %3741, float %3742, float %3743, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3905 = call float @dx.op.dot4.f32(i32 56, float %3881, float %3882, float %3883, float %3884, float %3741, float %3742, float %3743, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3906 = fsub fast float %3902, %3878
  %3907 = fsub fast float %3904, %3878
  %3908 = fsub fast float %3903, %3885
  %3909 = fsub fast float %3905, %3885
  %3910 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3913 = fadd fast float %3912, %3910
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3916 = fcmp fast ogt float %3914, %3915
  %3917 = and i1 %3901, %3916
  br i1 %3917, label %3941, label %3918

; <label>:3918                                    ; preds = %4250, %4024, %3941, %3794
  %3919 = phi float [ %3796, %3941 ], [ %4027, %4024 ], [ %4027, %4250 ], [ %3796, %3794 ]
  %3920 = phi float [ %3797, %3941 ], [ %3797, %4024 ], [ %4226, %4250 ], [ %3797, %3794 ]
  %3921 = phi float [ %3798, %3941 ], [ %3798, %4024 ], [ %4224, %4250 ], [ %3798, %3794 ]
  %3922 = phi float [ %3799, %3941 ], [ %3799, %4024 ], [ %4151, %4250 ], [ %3799, %3794 ]
  %3923 = phi float [ %3800, %3941 ], [ %3800, %4024 ], [ %4149, %4250 ], [ %3800, %3794 ]
  %3924 = phi float [ %3801, %3941 ], [ %3801, %4024 ], [ %4194, %4250 ], [ %3801, %3794 ]
  %3925 = phi float [ %3802, %3941 ], [ %3802, %4024 ], [ %4195, %4250 ], [ %3802, %3794 ]
  %3926 = phi float [ %3803, %3941 ], [ %3803, %4024 ], [ %4196, %4250 ], [ %3803, %3794 ]
  %3927 = phi float [ %3804, %3941 ], [ %3804, %4024 ], [ %4260, %4250 ], [ %3804, %3794 ]
  %3928 = phi float [ %3805, %3941 ], [ %3805, %4024 ], [ %4261, %4250 ], [ %3805, %3794 ]
  %3929 = phi float [ %3806, %3941 ], [ %3806, %4024 ], [ %4262, %4250 ], [ %3806, %3794 ]
  %3930 = phi float [ %3807, %3941 ], [ %3807, %4024 ], [ %4130, %4250 ], [ %3807, %3794 ]
  %3931 = phi float [ %3808, %3941 ], [ %3808, %4024 ], [ %4131, %4250 ], [ %3808, %3794 ]
  %3932 = phi float [ %3809, %3941 ], [ %3809, %4024 ], [ %4132, %4250 ], [ %3809, %3794 ]
  %3933 = phi float [ %3810, %3941 ], [ %3810, %4024 ], [ %4204, %4250 ], [ %3810, %3794 ]
  %3934 = phi float [ %3811, %3941 ], [ %3811, %4024 ], [ %4201, %4250 ], [ %3811, %3794 ]
  %3935 = phi float [ %3812, %3941 ], [ %3812, %4024 ], [ %4198, %4250 ], [ %3812, %3794 ]
  %3936 = phi float [ %3813, %3941 ], [ %3813, %4024 ], [ %4147, %4250 ], [ %3813, %3794 ]
  %3937 = phi float [ %3814, %3941 ], [ %3814, %4024 ], [ %4142, %4250 ], [ %3814, %3794 ]
  %3938 = phi float [ %3815, %3941 ], [ %3815, %4024 ], [ %4143, %4250 ], [ %3815, %3794 ]
  %3939 = phi float [ %3816, %3941 ], [ %3816, %4024 ], [ %4144, %4250 ], [ %3816, %3794 ]
  %3940 = icmp eq i32 %3820, 0
  br i1 %3940, label %4263, label %3794

; <label>:3941                                    ; preds = %3794
  %3942 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3943 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3944 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3946 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3948 = extractvalue %dx.types.ResRet.i32 %3829, 3
  %3949 = extractvalue %dx.types.ResRet.i32 %3829, 2
  %3950 = bitcast float %3942 to i32
  %3951 = add i32 %3948, 0
  %3952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3951, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3952, %dx.types.Handle %3953, float %3878, float %3885, float undef, float undef, i32 0, i32 0, i32 undef, float %3906, float %3908, float undef, float %3907, float %3909, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = fmul fast float %3955, %3947
  %3957 = fadd fast float %3956, %3946
  %3958 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3959 = fmul fast float %3878, %3838
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3839, float %3885, float %3959)  ; FMad(a,b,c)
  %3961 = fadd fast float %3960, %3945
  %3962 = fmul fast float %3878, %3840
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3885, float %3962)  ; FMad(a,b,c)
  %3964 = fadd fast float %3963, %3944
  %3965 = fmul fast float %3906, %3838
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3839, float %3908, float %3965)  ; FMad(a,b,c)
  %3967 = fmul fast float %3906, %3840
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3908, float %3967)  ; FMad(a,b,c)
  %3969 = fmul fast float %3907, %3838
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3839, float %3909, float %3969)  ; FMad(a,b,c)
  %3971 = fmul fast float %3907, %3840
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3909, float %3971)  ; FMad(a,b,c)
  %3973 = add i32 %3949, 0
  %3974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3975 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3974, %dx.types.Handle %3953, float %3961, float %3964, float undef, float undef, i32 0, i32 0, i32 undef, float %3966, float %3968, float undef, float %3970, float %3972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = and i32 %3950, 1024
  %3978 = icmp ne i32 %3977, 0
  %3979 = fcmp fast ogt float %3976, 0x3FE0101020000000
  %3980 = uitofp i1 %3979 to float
  %3981 = select i1 %3978, float %3980, float %3976
  %3982 = and i32 %3950, 8192
  %3983 = icmp ne i32 %3982, 0
  %3984 = select i1 %3983, float %3943, float 1.000000e+00
  %3985 = fmul fast float %3878, 2.000000e+00
  %3986 = fadd fast float %3985, -1.000000e+00
  %3987 = call float @dx.op.unary.f32(i32 6, float %3986)  ; FAbs(value)
  %3988 = fmul fast float %3987, %3871
  %3989 = fsub fast float %3988, %3871
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = fmul fast float %3885, 2.000000e+00
  %3992 = fadd fast float %3991, -1.000000e+00
  %3993 = call float @dx.op.unary.f32(i32 6, float %3992)  ; FAbs(value)
  %3994 = fmul fast float %3993, %3872
  %3995 = fsub fast float %3994, %3872
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3997 = fmul fast float %3897, %3834
  %3998 = fsub fast float %3997, %3834
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = fmul fast float %3958, %3984
  %4001 = fmul fast float %4000, %3955
  %4002 = fmul fast float %4001, %3990
  %4003 = fmul fast float %4002, %3981
  %4004 = fmul fast float %4003, %3996
  %4005 = fmul fast float %4004, %3999
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4008 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4009 = fsub fast float %3914, %4008
  %4010 = fmul fast float %4009, %4007
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = fmul fast float %4005, %3835
  %4013 = fadd fast float %4005, %3835
  %4014 = fmul fast float %4013, %3844
  %4015 = fsub fast float %4014, %3844
  %4016 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4017 = and i32 %3950, 128
  %4018 = icmp ne i32 %4017, 0
  %4019 = select i1 %4018, float %4016, float %4012
  %4020 = fmul fast float %4019, %4011
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = fcmp fast ugt float %4020, %4022
  br i1 %4023, label %4024, label %3918

; <label>:4024                                    ; preds = %3941
  %4025 = select i1 %3983, float %4020, float 0.000000e+00
  %4026 = fadd fast float %4025, %3796
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  br i1 %3983, label %3918, label %4028

; <label>:4028                                    ; preds = %4024
  %4029 = and i32 %3950, 4
  %4030 = and i32 %3950, 8
  %4031 = add i32 %3830, 0
  %4032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4031, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4034 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4032, %dx.types.Handle %4033, float %3961, float %3964, float undef, float undef, i32 0, i32 0, i32 undef, float %3966, float %3968, float undef, float %3970, float %3972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %4034, 2
  %4038 = extractvalue %dx.types.ResRet.f32 %4034, 3
  %4039 = bitcast float %3856 to i32
  %4040 = and i32 %4039, 255
  %4041 = uitofp i32 %4040 to float
  %4042 = lshr i32 %4039, 8
  %4043 = and i32 %4042, 255
  %4044 = uitofp i32 %4043 to float
  %4045 = fmul fast float %4038, %4041
  %4046 = fadd fast float %4045, %4044
  %4047 = fmul fast float %4046, 0x3F70101000000000
  %4048 = add i32 %3831, 0
  %4049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4048, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4050 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4049, %dx.types.Handle %4033, float %3961, float %3964, float undef, float undef, i32 0, i32 0, i32 undef, float %3966, float %3968, float undef, float %3970, float %3972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4054 = extractvalue %dx.types.ResRet.f32 %4050, 3
  %4055 = bitcast float %3850 to i32
  %4056 = and i32 %4055, 255
  %4057 = uitofp i32 %4056 to float
  %4058 = lshr i32 %4055, 8
  %4059 = and i32 %4058, 255
  %4060 = uitofp i32 %4059 to float
  %4061 = lshr i32 %4055, 16
  %4062 = and i32 %4061, 255
  %4063 = uitofp i32 %4062 to float
  %4064 = fmul fast float %4063, 0x3F70101000000000
  %4065 = fmul fast float %4051, %4057
  %4066 = fadd fast float %4065, %4060
  %4067 = fmul fast float %4066, 0x3F70101000000000
  %4068 = fadd fast float %4052, -5.000000e-01
  %4069 = fadd fast float %4054, -5.000000e-01
  %4070 = fmul fast float %4068, %4064
  %4071 = fmul fast float %4069, %4064
  %4072 = fadd fast float %4070, 5.000000e-01
  %4073 = fadd fast float %4071, 5.000000e-01
  %4074 = fmul fast float %4035, %3859
  %4075 = fmul fast float %4036, %3860
  %4076 = fmul fast float %4037, %3861
  %4077 = fmul fast float %4072, 2.000000e+00
  %4078 = fadd fast float %4077, -1.000000e+00
  %4079 = fmul fast float %4073, 2.000000e+00
  %4080 = fadd fast float %4079, -1.000000e+00
  %4081 = fadd fast float %4078, %4080
  %4082 = fmul fast float %4081, 5.000000e-01
  %4083 = fsub fast float %4078, %4080
  %4084 = fmul fast float %4083, 5.000000e-01
  %4085 = call float @dx.op.unary.f32(i32 6, float %4082)  ; FAbs(value)
  %4086 = fsub fast float 1.000000e+00, %4085
  %4087 = call float @dx.op.unary.f32(i32 6, float %4084)  ; FAbs(value)
  %4088 = fsub fast float %4086, %4087
  %4089 = call float @dx.op.dot3.f32(i32 55, float %4082, float %4084, float %4088, float %4082, float %4084, float %4088)  ; Dot3(ax,ay,az,bx,by,bz)
  %4090 = call float @dx.op.unary.f32(i32 25, float %4089)  ; Rsqrt(value)
  %4091 = fmul fast float %4082, %4090
  %4092 = fmul fast float %4084, %4090
  %4093 = fmul fast float %4090, %4088
  %4094 = fmul fast float %4093, %3825
  %4095 = fmul fast float %4093, %3826
  %4096 = fmul fast float %4093, %3827
  %4097 = fmul fast float %4091, %3847
  %4098 = fmul fast float %4091, %3848
  %4099 = fmul fast float %4091, %3849
  %4100 = fadd fast float %4097, %4094
  %4101 = fadd fast float %4098, %4095
  %4102 = fadd fast float %4099, %4096
  %4103 = fmul fast float %4092, %3853
  %4104 = fmul fast float %4092, %3854
  %4105 = fmul fast float %4092, %3855
  %4106 = fadd fast float %4100, %4103
  %4107 = fadd fast float %4101, %4104
  %4108 = fadd fast float %4102, %4105
  %4109 = call float @dx.op.dot3.f32(i32 55, float %4106, float %4107, float %4108, float %4106, float %4107, float %4108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4110 = call float @dx.op.unary.f32(i32 25, float %4109)  ; Rsqrt(value)
  %4111 = fmul fast float %4106, %4110
  %4112 = fmul fast float %4107, %4110
  %4113 = fmul fast float %4108, %4110
  %4114 = icmp ne i32 %4030, 0
  %4115 = select i1 %4114, float 1.000000e+00, float 0.000000e+00
  %4116 = fmul fast float %4020, %4115
  %4117 = and i32 %3950, 1
  %4118 = icmp eq i32 %4117, 0
  br i1 %4118, label %4119, label %4123

; <label>:4119                                    ; preds = %4028
  %4120 = fsub fast float %4111, %3807
  %4121 = fsub fast float %4112, %3808
  %4122 = fsub fast float %4113, %3809
  br label %4123

; <label>:4123                                    ; preds = %4119, %4028
  %4124 = phi float [ %4120, %4119 ], [ %4111, %4028 ]
  %4125 = phi float [ %4121, %4119 ], [ %4112, %4028 ]
  %4126 = phi float [ %4122, %4119 ], [ %4113, %4028 ]
  %4127 = fmul float %4126, %4116
  %4128 = fmul float %4125, %4116
  %4129 = fmul float %4124, %4116
  %4130 = fadd fast float %4129, %3807
  %4131 = fadd fast float %4128, %3808
  %4132 = fadd fast float %4127, %3809
  %4133 = icmp ne i32 %4029, 0
  %4134 = select i1 %4133, float 1.000000e+00, float 0.000000e+00
  %4135 = fmul fast float %4020, %4134
  %4136 = fsub fast float %4074, %3814
  %4137 = fsub fast float %4075, %3815
  %4138 = fsub fast float %4076, %3816
  %4139 = fmul fast float %4136, %4135
  %4140 = fmul fast float %4137, %4135
  %4141 = fmul fast float %4138, %4135
  %4142 = fadd fast float %4139, %3814
  %4143 = fadd fast float %4140, %3815
  %4144 = fadd fast float %4141, %3816
  %4145 = fsub fast float %4047, %3813
  %4146 = fmul fast float %4145, %4135
  %4147 = fadd fast float %4146, %3813
  %4148 = fmul fast float %4135, %3800
  %4149 = fsub fast float %3800, %4148
  %4150 = fmul fast float %4135, %3799
  %4151 = fsub fast float %3799, %4150
  %4152 = bitcast float %3868 to i32
  %4153 = lshr i32 %4152, 16
  %4154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4153)  ; LegacyF16ToF32(value)
  %4155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.i32 %4155, 0
  %4157 = and i32 %4156, 1
  %4158 = icmp eq i32 %4157, 0
  br i1 %4158, label %4159, label %4184

; <label>:4159                                    ; preds = %4123
  %4160 = fadd fast float %4047, 0xBFB99999A0000000
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4161, 0x3FF1C71C80000000
  %4163 = fsub fast float 1.000000e+00, %4162
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = fmul fast float %4164, %4074
  %4166 = fmul fast float %4164, %4075
  %4167 = fmul fast float %4164, %4076
  %4168 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4169 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4170 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4171 = call float @dx.op.binary.f32(i32 35, float %4169, float %4170)  ; FMax(a,b)
  %4172 = call float @dx.op.binary.f32(i32 35, float %4168, float %4171)  ; FMax(a,b)
  %4173 = fcmp fast ogt float %4172, 0.000000e+00
  %4174 = bitcast float %4172 to i32
  %4175 = sub nsw i32 2129859010, %4174
  %4176 = bitcast i32 %4175 to float
  %4177 = select i1 %4173, float %4176, float 0.000000e+00
  %4178 = fmul fast float %4168, %4154
  %4179 = fmul fast float %4169, %4154
  %4180 = fmul fast float %4170, %4154
  %4181 = fmul fast float %4178, %4177
  %4182 = fmul fast float %4179, %4177
  %4183 = fmul fast float %4180, %4177
  br label %4184

; <label>:4184                                    ; preds = %4159, %4123
  %4185 = phi float [ %4154, %4123 ], [ %4181, %4159 ]
  %4186 = phi float [ %4154, %4123 ], [ %4182, %4159 ]
  %4187 = phi float [ %4154, %4123 ], [ %4183, %4159 ]
  %4188 = fsub fast float %4185, %3801
  %4189 = fsub fast float %4186, %3802
  %4190 = fsub fast float %4187, %3803
  %4191 = fmul fast float %4188, %4135
  %4192 = fmul fast float %4189, %4135
  %4193 = fmul fast float %4190, %4135
  %4194 = fadd fast float %4191, %3801
  %4195 = fadd fast float %4192, %3802
  %4196 = fadd fast float %4193, %3803
  %4197 = fadd fast float %4020, %3812
  %4198 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4199 = fsub fast float %4067, %3811
  %4200 = fmul fast float %4199, %4116
  %4201 = fadd fast float %4200, %3811
  %4202 = fsub fast float %4053, %3810
  %4203 = fmul fast float %4202, %4116
  %4204 = fadd fast float %4203, %3810
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4074, float %4075, float %4076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.CBufRet.f32 %4206, 1
  %4209 = fmul fast float %4208, %4205
  %4210 = fadd fast float %4209, %4207
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = bitcast float %3862 to i32
  %4213 = and i32 %4212, 65535
  %4214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4213)  ; LegacyF16ToF32(value)
  %4215 = lshr i32 %4212, 16
  %4216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4215)  ; LegacyF16ToF32(value)
  %4217 = fcmp fast oge float %4214, 0.000000e+00
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = select i1 %4217, float %4214, float %4219
  %4221 = fadd fast float %4220, %4216
  %4222 = fsub fast float %4211, %3798
  %4223 = fmul fast float %4222, %4020
  %4224 = fadd fast float %4223, %3798
  %4225 = fmul fast float %4221, %4020
  %4226 = call float @dx.op.binary.f32(i32 35, float %3797, float %4225)  ; FMax(a,b)
  %4227 = and i32 %3950, 16
  %4228 = icmp eq i32 %4227, 0
  br i1 %4228, label %4250, label %4229

; <label>:4229                                    ; preds = %4184
  %4230 = add i32 %3865, 0
  %4231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4231, %dx.types.Handle %4033, float %3961, float %3964, float undef, float undef, i32 0, i32 0, i32 undef, float %3966, float %3968, float undef, float %3970, float %3972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.ResRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.ResRet.f32 %4232, 2
  %4236 = and i32 %4152, 65535
  %4237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4236)  ; LegacyF16ToF32(value)
  %4238 = fmul fast float %4233, %3859
  %4239 = fmul fast float %4234, %3860
  %4240 = fmul fast float %4235, %3861
  %4241 = and i32 %3950, 16384
  %4242 = icmp ne i32 %4241, 0
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = select i1 %4242, float %4244, float 1.000000e+00
  %4246 = fmul fast float %4245, %4237
  %4247 = fmul fast float %4238, %4246
  %4248 = fmul fast float %4239, %4246
  %4249 = fmul fast float %4240, %4246
  br label %4250

; <label>:4250                                    ; preds = %4229, %4184
  %4251 = phi float [ %4247, %4229 ], [ 0.000000e+00, %4184 ]
  %4252 = phi float [ %4248, %4229 ], [ 0.000000e+00, %4184 ]
  %4253 = phi float [ %4249, %4229 ], [ 0.000000e+00, %4184 ]
  %4254 = fsub fast float %4251, %3804
  %4255 = fsub fast float %4252, %3805
  %4256 = fsub fast float %4253, %3806
  %4257 = fmul fast float %4254, %4020
  %4258 = fmul fast float %4255, %4020
  %4259 = fmul fast float %4256, %4020
  %4260 = fadd fast float %4257, %3804
  %4261 = fadd fast float %4258, %3805
  %4262 = fadd fast float %4259, %3806
  br label %3918

; <label>:4263                                    ; preds = %3918
  br label %4264

; <label>:4264                                    ; preds = %4263, %3731
  %4265 = phi float [ 0.000000e+00, %3731 ], [ %3919, %4263 ]
  %4266 = phi float [ %3675, %3731 ], [ %3920, %4263 ]
  %4267 = phi float [ %3654, %3731 ], [ %3921, %4263 ]
  %4268 = phi float [ 0.000000e+00, %3731 ], [ %3922, %4263 ]
  %4269 = phi float [ 0.000000e+00, %3731 ], [ %3923, %4263 ]
  %4270 = phi float [ %3647, %3731 ], [ %3924, %4263 ]
  %4271 = phi float [ %3648, %3731 ], [ %3925, %4263 ]
  %4272 = phi float [ %3649, %3731 ], [ %3926, %4263 ]
  %4273 = phi float [ %3697, %3731 ], [ %3927, %4263 ]
  %4274 = phi float [ %3699, %3731 ], [ %3928, %4263 ]
  %4275 = phi float [ %3701, %3731 ], [ %3929, %4263 ]
  %4276 = phi float [ %3727, %3731 ], [ %3930, %4263 ]
  %4277 = phi float [ %3728, %3731 ], [ %3931, %4263 ]
  %4278 = phi float [ %3729, %3731 ], [ %3932, %4263 ]
  %4279 = phi float [ %3652, %3731 ], [ %3933, %4263 ]
  %4280 = phi float [ %3651, %3731 ], [ %3934, %4263 ]
  %4281 = phi float [ 0.000000e+00, %3731 ], [ %3935, %4263 ]
  %4282 = phi float [ %3650, %3731 ], [ %3936, %4263 ]
  %4283 = phi float [ %3682, %3731 ], [ %3937, %4263 ]
  %4284 = phi float [ %3683, %3731 ], [ %3938, %4263 ]
  %4285 = phi float [ %3684, %3731 ], [ %3939, %4263 ]
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4276, float %4277, float %4278, float %4276, float %4277, float %4278)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = call float @dx.op.unary.f32(i32 25, float %4286)  ; Rsqrt(value)
  %4288 = fmul fast float %4287, %4276
  %4289 = fmul fast float %4287, %4277
  %4290 = fmul fast float %4287, %4278
  %4291 = fadd fast float %4281, %1160
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = call float @dx.op.dot3.f32(i32 55, float %4288, float %4289, float %4290, float %4288, float %4289, float %4290)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = call float @dx.op.unary.f32(i32 25, float %4293)  ; Rsqrt(value)
  %4295 = fmul fast float %4294, %4288
  %4296 = fmul fast float %4294, %4289
  %4297 = fmul fast float %4294, %4290
  br label %4298

; <label>:4298                                    ; preds = %4264, %3638
  %4299 = phi float [ %4295, %4264 ], [ %3727, %3638 ]
  %4300 = phi float [ %4296, %4264 ], [ %3728, %3638 ]
  %4301 = phi float [ %4297, %4264 ], [ %3729, %3638 ]
  %4302 = phi float [ %4283, %4264 ], [ %3682, %3638 ]
  %4303 = phi float [ %4284, %4264 ], [ %3683, %3638 ]
  %4304 = phi float [ %4285, %4264 ], [ %3684, %3638 ]
  %4305 = phi float [ %4273, %4264 ], [ %3697, %3638 ]
  %4306 = phi float [ %4274, %4264 ], [ %3699, %3638 ]
  %4307 = phi float [ %4275, %4264 ], [ %3701, %3638 ]
  %4308 = phi float [ %4270, %4264 ], [ %3647, %3638 ]
  %4309 = phi float [ %4271, %4264 ], [ %3648, %3638 ]
  %4310 = phi float [ %4272, %4264 ], [ %3649, %3638 ]
  %4311 = phi float [ %4282, %4264 ], [ %3650, %3638 ]
  %4312 = phi float [ %4292, %4264 ], [ %1160, %3638 ]
  %4313 = phi float [ %4280, %4264 ], [ %3651, %3638 ]
  %4314 = phi float [ %4279, %4264 ], [ %3652, %3638 ]
  %4315 = phi float [ %4269, %4264 ], [ 0.000000e+00, %3638 ]
  %4316 = phi float [ %4268, %4264 ], [ 0.000000e+00, %3638 ]
  %4317 = phi float [ %4265, %4264 ], [ 0.000000e+00, %3638 ]
  %4318 = phi float [ %4266, %4264 ], [ %3675, %3638 ]
  %4319 = phi float [ %4267, %4264 ], [ %3654, %3638 ]
  %4320 = add i32 %63, 392
  %4321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.i32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.i32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.i32 %4321, 2
  %4325 = extractvalue %dx.types.ResRet.i32 %4321, 3
  %4326 = bitcast i32 %4322 to float
  %4327 = bitcast i32 %4323 to float
  %4328 = bitcast i32 %4324 to float
  %4329 = bitcast i32 %4325 to float
  %4330 = fsub fast float %4302, %4326
  %4331 = fsub fast float %4303, %4327
  %4332 = fsub fast float %4304, %4328
  %4333 = fmul fast float %4330, %249
  %4334 = fmul fast float %4331, %249
  %4335 = fmul fast float %4332, %249
  %4336 = fadd fast float %4333, %4326
  %4337 = fadd fast float %4334, %4327
  %4338 = fadd fast float %4335, %4328
  %4339 = fsub fast float %4312, %4329
  %4340 = fmul fast float %4339, %249
  %4341 = fadd fast float %4340, %4329
  %4342 = fadd fast float %4311, 0xBFB99999A0000000
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = fmul fast float %4343, 0x3FF1C71C80000000
  %4345 = call float @dx.op.binary.f32(i32 36, float %4311, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4346 = fsub fast float 1.000000e+00, %4344
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fmul fast float %4336, %4347
  %4349 = fmul fast float %4337, %4347
  %4350 = fmul fast float %4338, %4347
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4354 = fmul fast float %4336, %4344
  %4355 = fmul fast float %4337, %4344
  %4356 = fmul fast float %4338, %4344
  %4357 = fadd fast float %4354, %4345
  %4358 = fadd fast float %4355, %4345
  %4359 = fadd fast float %4356, %4345
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4362 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4363 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = and i32 %4365, 1
  %4367 = icmp eq i32 %4366, 0
  br i1 %4367, label %4382, label %4368

; <label>:4368                                    ; preds = %4298
  %4369 = call float @dx.op.binary.f32(i32 35, float %4352, float %4353)  ; FMax(a,b)
  %4370 = call float @dx.op.binary.f32(i32 35, float %4351, float %4369)  ; FMax(a,b)
  %4371 = fcmp fast ogt float %4370, 0.000000e+00
  %4372 = bitcast float %4370 to i32
  %4373 = sub nsw i32 2129859010, %4372
  %4374 = bitcast i32 %4373 to float
  %4375 = select i1 %4371, float %4374, float 0.000000e+00
  %4376 = fmul fast float %4351, %4308
  %4377 = fmul fast float %4352, %4309
  %4378 = fmul fast float %4353, %4310
  %4379 = fmul fast float %4376, %4375
  %4380 = fmul fast float %4377, %4375
  %4381 = fmul fast float %4378, %4375
  br label %4382

; <label>:4382                                    ; preds = %4368, %4298
  %4383 = phi float [ %4379, %4368 ], [ %4308, %4298 ]
  %4384 = phi float [ %4380, %4368 ], [ %4309, %4298 ]
  %4385 = phi float [ %4381, %4368 ], [ %4310, %4298 ]
  %4386 = fadd fast float %4351, 0xBFD51EB860000000
  %4387 = fadd fast float %4352, 0xBFD51EB860000000
  %4388 = fadd fast float %4353, 0xBFD51EB860000000
  %4389 = fmul fast float %4386, %4386
  %4390 = fmul fast float %4387, %4387
  %4391 = fmul fast float %4388, %4388
  %4392 = fmul fast float %4389, %4389
  %4393 = fmul fast float %4392, 1.000000e+02
  %4394 = fmul fast float %4390, %4390
  %4395 = fmul fast float %4394, 1.000000e+02
  %4396 = fmul fast float %4391, %4391
  %4397 = fmul fast float %4396, 1.000000e+02
  %4398 = fadd fast float %4393, 3.500000e+00
  %4399 = fadd fast float %4395, 3.500000e+00
  %4400 = fadd fast float %4397, 3.500000e+00
  %4401 = call float @dx.op.binary.f32(i32 35, float %4383, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4402 = call float @dx.op.binary.f32(i32 35, float %4384, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4403 = call float @dx.op.binary.f32(i32 35, float %4385, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4404 = fdiv fast float %4398, %4401
  %4405 = fdiv fast float %4399, %4402
  %4406 = fdiv fast float %4400, %4403
  %4407 = fmul fast float %3653, 0xBFF7154760000000
  %4408 = fmul fast float %4407, %4404
  %4409 = call float @dx.op.unary.f32(i32 21, float %4408)  ; Exp(value)
  %4410 = fmul fast float %4409, 2.500000e-01
  %4411 = fmul fast float %3653, 0xBFDEC709E0000000
  %4412 = fmul fast float %4411, %4404
  %4413 = call float @dx.op.unary.f32(i32 21, float %4412)  ; Exp(value)
  %4414 = fmul fast float %4413, 7.500000e-01
  %4415 = fmul fast float %4407, %4405
  %4416 = call float @dx.op.unary.f32(i32 21, float %4415)  ; Exp(value)
  %4417 = fmul fast float %4416, 2.500000e-01
  %4418 = fmul fast float %4411, %4405
  %4419 = call float @dx.op.unary.f32(i32 21, float %4418)  ; Exp(value)
  %4420 = fmul fast float %4419, 7.500000e-01
  %4421 = fmul fast float %4407, %4406
  %4422 = call float @dx.op.unary.f32(i32 21, float %4421)  ; Exp(value)
  %4423 = fmul fast float %4422, 2.500000e-01
  %4424 = fmul fast float %4411, %4406
  %4425 = call float @dx.op.unary.f32(i32 21, float %4424)  ; Exp(value)
  %4426 = fmul fast float %4425, 7.500000e-01
  %4427 = fadd fast float %4410, %4414
  %4428 = fadd fast float %4417, %4420
  %4429 = fadd fast float %4423, %4426
  %4430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.i32 %4430, 3
  %4432 = and i32 %4431, 8
  %4433 = icmp ne i32 %4432, 0
  %4434 = call float @dx.op.binary.f32(i32 35, float %4351, float %4336)  ; FMax(a,b)
  %4435 = call float @dx.op.binary.f32(i32 35, float %4352, float %4336)  ; FMax(a,b)
  %4436 = call float @dx.op.binary.f32(i32 35, float %4353, float %4336)  ; FMax(a,b)
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4351, float %4352, float %4353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = select i1 %306, float %4336, float %4351
  %4439 = select i1 %306, float %4437, float %4352
  %4440 = select i1 %306, float 1.000000e+00, float %4353
  %4441 = select i1 %4433, float %4434, float %4438
  %4442 = select i1 %4433, float %4435, float %4439
  %4443 = select i1 %4433, float %4436, float %4440
  %4444 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = select i1 %306, float %4444, float %4383
  %4446 = select i1 %306, float %4444, float %4384
  %4447 = select i1 %306, float %4444, float %4385
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4448, 2
  %4452 = fadd fast float %4449, %202
  %4453 = fadd fast float %4450, %203
  %4454 = fadd fast float %4451, %204
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.CBufRet.f32 %4455, 1
  %4458 = fsub fast float %4452, %4456
  %4459 = fsub fast float %4453, %4457
  %4460 = fmul fast float %4458, %4458
  %4461 = fmul fast float %4459, %4459
  %4462 = fadd fast float %4460, %4461
  %4463 = call float @dx.op.unary.f32(i32 24, float %4462)  ; Sqrt(value)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4455, 2
  %4465 = fcmp fast olt float %4463, %4464
  br i1 %4465, label %4466, label %4533

; <label>:4466                                    ; preds = %4382
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4476 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4477 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4478 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4479 = fadd fast float %4476, %4452
  %4480 = fadd fast float %4477, %4453
  %4481 = fadd fast float %4478, %4454
  %4482 = fmul fast float %4479, %4468
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4480, float %4470, float %4482)  ; FMad(a,b,c)
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4472, float %4483)  ; FMad(a,b,c)
  %4485 = fmul fast float %4479, %4473
  %4486 = call float @dx.op.tertiary.f32(i32 46, float %4480, float %4474, float %4485)  ; FMad(a,b,c)
  %4487 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4475, float %4486)  ; FMad(a,b,c)
  %4488 = fsub fast float %4484, %4476
  %4489 = fsub fast float %4487, %4477
  %4490 = fsub fast float %4488, %4456
  %4491 = fadd fast float %4490, %4464
  %4492 = fsub fast float %4489, %4457
  %4493 = fadd fast float %4492, %4464
  %4494 = extractvalue %dx.types.CBufRet.f32 %4455, 3
  %4495 = fmul fast float %4491, %4494
  %4496 = fmul fast float %4493, %4494
  %4497 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4499 = fsub fast float 1.000000e+00, %4497
  %4500 = fsub fast float 1.000000e+00, %4498
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %57, float %4499, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fcmp fast ugt float %4502, 0.000000e+00
  br i1 %4503, label %4504, label %4807

; <label>:4504                                    ; preds = %4466
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 2
  %4507 = fmul fast float %4506, %4502
  %4508 = extractvalue %dx.types.CBufRet.f32 %4505, 3
  %4509 = fadd fast float %4508, %4507
  %4510 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4511 = fadd fast float %4509, %4478
  %4512 = fmul fast float %4484, %4472
  %4513 = call float @dx.op.tertiary.f32(i32 46, float %4487, float %4475, float %4512)  ; FMad(a,b,c)
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4511, float %4510, float %4513)  ; FMad(a,b,c)
  %4515 = fsub fast float %4514, %4478
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 2
  %4518 = fsub fast float %4515, %4517
  %4519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %57, float %4499, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.ResRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.ResRet.f32 %4519, 2
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %57, float %4499, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.ResRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.ResRet.f32 %4523, 2
  %4527 = fadd fast float %4524, %4520
  %4528 = fmul fast float %4527, 0x3F847AE140000000
  %4529 = fadd fast float %4525, %4521
  %4530 = fmul fast float %4529, 0x3F847AE140000000
  %4531 = fadd fast float %4526, %4522
  %4532 = fmul fast float %4531, 0x3F847AE140000000
  br label %4807

; <label>:4533                                    ; preds = %4382
  %4534 = and i32 %285, 1
  %4535 = icmp eq i32 %4534, 0
  br i1 %4535, label %4807, label %4536

; <label>:4536                                    ; preds = %4533
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4544 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %4545 = extractvalue %dx.types.CBufRet.f32 %4541, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4547 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4548 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4549 = fadd fast float %4546, %4452
  %4550 = fadd fast float %4547, %4453
  %4551 = fadd fast float %4548, %4454
  %4552 = fmul fast float %4549, %4538
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4540, float %4552)  ; FMad(a,b,c)
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4542, float %4553)  ; FMad(a,b,c)
  %4555 = fmul fast float %4549, %4543
  %4556 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4544, float %4555)  ; FMad(a,b,c)
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4545, float %4556)  ; FMad(a,b,c)
  %4558 = fsub fast float %4554, %4546
  %4559 = fsub fast float %4557, %4547
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.CBufRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4564 = extractvalue %dx.types.CBufRet.f32 %4560, 3
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.i32 %4567, 0
  %4569 = extractvalue %dx.types.CBufRet.i32 %4567, 1
  %4570 = udiv i32 %4569, %4568
  %4571 = fsub fast float %4558, %4561
  %4572 = fsub fast float %4559, %4562
  %4573 = call float @dx.op.binary.f32(i32 35, float %4571, float 0.000000e+00)  ; FMax(a,b)
  %4574 = call float @dx.op.binary.f32(i32 35, float %4572, float 0.000000e+00)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 36, float %4573, float %4563)  ; FMin(a,b)
  %4576 = call float @dx.op.binary.f32(i32 36, float %4574, float %4564)  ; FMin(a,b)
  %4577 = add i32 %4568, -1
  %4578 = add i32 %4570, -1
  %4579 = fmul fast float %4575, %4566
  %4580 = fmul fast float %4576, %4566
  %4581 = fptoui float %4579 to i32
  %4582 = fptoui float %4580 to i32
  %4583 = call i32 @dx.op.binary.i32(i32 40, i32 %4581, i32 %4577)  ; UMin(a,b)
  %4584 = call i32 @dx.op.binary.i32(i32 40, i32 %4582, i32 %4578)  ; UMin(a,b)
  %4585 = mul i32 %4584, %4568
  %4586 = add i32 %4585, %4583
  %4587 = shl i32 %4586, 2
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = icmp eq i32 %4589, -1
  br i1 %4590, label %4807, label %4591

; <label>:4591                                    ; preds = %4536
  %4592 = mul i32 %4589, 148
  %4593 = add i32 %4592, 4
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = add i32 %4592, 8
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = add i32 %4592, 36
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = add i32 %4592, 60
  %4603 = add i32 %4592, 92
  %4604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.i32 %4604, 0
  %4606 = add i32 %4592, 116
  %4607 = fsub fast float %4558, %4595
  %4608 = fsub fast float %4559, %4598
  %4609 = fmul fast float %4566, %4607
  %4610 = fmul fast float %4566, %4608
  %4611 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4612 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4613 = fsub fast float 1.000000e+00, %4612
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 2
  %4616 = call float @dx.op.unary.f32(i32 83, float %4611)  ; DerivCoarseX(value)
  %4617 = call float @dx.op.unary.f32(i32 83, float %4613)  ; DerivCoarseX(value)
  %4618 = call float @dx.op.unary.f32(i32 84, float %4611)  ; DerivCoarseY(value)
  %4619 = call float @dx.op.unary.f32(i32 84, float %4613)  ; DerivCoarseY(value)
  %4620 = fmul fast float %4616, %4615
  %4621 = fmul fast float %4617, %4615
  %4622 = fmul fast float %4618, %4615
  %4623 = fmul fast float %4619, %4615
  %4624 = call float @dx.op.dot2.f32(i32 54, float %4622, float %4623, float %4622, float %4623)  ; Dot2(ax,ay,bx,by)
  %4625 = call float @dx.op.dot2.f32(i32 54, float %4620, float %4621, float %4620, float %4621)  ; Dot2(ax,ay,bx,by)
  %4626 = call float @dx.op.binary.f32(i32 35, float %4625, float %4624)  ; FMax(a,b)
  %4627 = call float @dx.op.unary.f32(i32 23, float %4626)  ; Log(value)
  %4628 = fmul fast float %4627, 5.000000e-01
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4631 = fadd fast float %4630, %4628
  %4632 = call float @dx.op.binary.f32(i32 35, float %4631, float 0.000000e+00)  ; FMax(a,b)
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 3
  %4635 = fadd fast float %4634, %4632
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4638 = fadd fast float %4635, %4637
  %4639 = add i32 %4605, 0
  %4640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4639, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4641 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4640, i32 0)  ; GetDimensions(handle,mipLevel)
  %4642 = extractvalue %dx.types.Dimensions %4641, 0
  %4643 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4642)  ; FirstbitLo(value)
  %4644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.i32 %4644, 1
  %4646 = sub nsw i32 %4645, %4643
  %4647 = sitofp i32 %4646 to float
  %4648 = fsub fast float %4638, %4647
  %4649 = call float @dx.op.binary.f32(i32 35, float %4648, float 0.000000e+00)  ; FMax(a,b)
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4640, %dx.types.Handle %55, float %4611, float %4613, float %4601, float undef, i32 0, i32 0, i32 undef, float %4649)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = fcmp ule float %4651, 0x3FE0101020000000
  %4653 = extractvalue %dx.types.CBufRet.i32 %4644, 0
  %4654 = and i32 %4653, 128
  %4655 = icmp ne i32 %4654, 0
  %4656 = and i1 %4652, %4655
  br i1 %4656, label %4807, label %4657

; <label>:4657                                    ; preds = %4591
  %4658 = add i32 %4592, 20
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = add i32 %4592, 24
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = add i32 %4592, 40
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4592, 96
  %4668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.i32 %4668, 0
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 2
  %4672 = fmul fast float %4671, %4611
  %4673 = fmul fast float %4671, %4613
  %4674 = extractvalue %dx.types.CBufRet.f32 %4670, 3
  %4675 = fadd fast float %4672, %4674
  %4676 = fadd fast float %4673, %4674
  %4677 = add i32 %4669, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4677, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4678, i32 0)  ; GetDimensions(handle,mipLevel)
  %4680 = extractvalue %dx.types.Dimensions %4679, 0
  %4681 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4680)  ; FirstbitLo(value)
  %4682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.i32 %4682, 1
  %4684 = sub nsw i32 %4683, %4681
  %4685 = sitofp i32 %4684 to float
  %4686 = fsub fast float %4635, %4685
  %4687 = call float @dx.op.binary.f32(i32 35, float %4686, float 0.000000e+00)  ; FMax(a,b)
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4678, %dx.types.Handle %55, float %4675, float %4676, float %4666, float undef, i32 0, i32 0, i32 undef, float %4687)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = fmul fast float %4689, %4660
  %4691 = fadd fast float %4690, %4663
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.CBufRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.CBufRet.f32 %4692, 2
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4700 = extractvalue %dx.types.CBufRet.f32 %4692, 3
  %4701 = fadd fast float %4697, %4558
  %4702 = fadd fast float %4699, %4559
  %4703 = fadd fast float %4691, %4700
  %4704 = fmul fast float %4701, %4693
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4702, float %4694, float %4704)  ; FMad(a,b,c)
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4695, float %4705)  ; FMad(a,b,c)
  %4707 = fsub fast float %4706, %4700
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4710 = fsub fast float %4707, %4709
  %4711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.i32 %4711, 0
  %4713 = call i32 @dx.op.binary.i32(i32 40, i32 %4589, i32 %4712)  ; UMin(a,b)
  %4714 = mul i32 %4713, 36
  %4715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4714, i32 undef)  ; BufferLoad(srv,index,wot)
  %4716 = extractvalue %dx.types.ResRet.i32 %4715, 0
  %4717 = add i32 %4714, 4
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = fmul fast float %4719, %4611
  %4721 = fmul fast float %4719, %4613
  %4722 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4723 = fadd fast float %4720, %4722
  %4724 = fadd fast float %4721, %4722
  %4725 = icmp eq i32 %4716, 0
  br i1 %4725, label %4794, label %4726

; <label>:4726                                    ; preds = %4657
  br label %4727

; <label>:4727                                    ; preds = %4784, %4726
  %4728 = phi float [ %4785, %4784 ], [ 0.000000e+00, %4726 ]
  %4729 = phi float [ %4786, %4784 ], [ 0.000000e+00, %4726 ]
  %4730 = phi float [ %4787, %4784 ], [ 0.000000e+00, %4726 ]
  %4731 = phi float [ %4788, %4784 ], [ 0.000000e+00, %4726 ]
  %4732 = phi float [ %4789, %4784 ], [ 0.000000e+00, %4726 ]
  %4733 = phi float [ %4790, %4784 ], [ 0.000000e+00, %4726 ]
  %4734 = phi i32 [ %4791, %4784 ], [ 0, %4726 ]
  %4735 = shl i32 %4734, 2
  %4736 = add i32 %4602, %4735
  %4737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4736, i32 undef)  ; BufferLoad(srv,index,wot)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = add i32 %4606, %4735
  %4740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4739, i32 undef)  ; BufferLoad(srv,index,wot)
  %4741 = extractvalue %dx.types.ResRet.i32 %4740, 0
  %4742 = add i32 %4741, 0
  %4743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4744 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4743, i32 0)  ; GetDimensions(handle,mipLevel)
  %4745 = extractvalue %dx.types.Dimensions %4744, 0
  %4746 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4745)  ; FirstbitLo(value)
  %4747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.i32 %4747, 1
  %4749 = sub nsw i32 %4748, %4746
  %4750 = sitofp i32 %4749 to float
  %4751 = fsub fast float %4635, %4750
  %4752 = call float @dx.op.binary.f32(i32 35, float %4751, float 0.000000e+00)  ; FMax(a,b)
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4743, %dx.types.Handle %55, float %4723, float %4724, float %4738, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = fcmp fast ogt float %4754, 0.000000e+00
  br i1 %4755, label %4756, label %4784

; <label>:4756                                    ; preds = %4727
  %4757 = add i32 %4717, %4735
  %4758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4757, i32 undef)  ; BufferLoad(srv,index,wot)
  %4759 = extractvalue %dx.types.ResRet.i32 %4758, 0
  %4760 = and i32 %4759, 32767
  %4761 = mul nuw nsw i32 %4760, 928
  %4762 = add nuw nsw i32 %4761, 48
  %4763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4762, i32 undef)  ; BufferLoad(srv,index,wot)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.ResRet.f32 %4763, 1
  %4766 = extractvalue %dx.types.ResRet.f32 %4763, 2
  %4767 = add nuw nsw i32 %4761, 60
  %4768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = fmul fast float %4764, %4754
  %4773 = fmul fast float %4765, %4754
  %4774 = fmul fast float %4766, %4754
  %4775 = fadd fast float %4772, %4728
  %4776 = fadd fast float %4773, %4729
  %4777 = fadd fast float %4774, %4730
  %4778 = fmul fast float %4769, %4754
  %4779 = fmul fast float %4770, %4754
  %4780 = fmul fast float %4771, %4754
  %4781 = fadd fast float %4778, %4731
  %4782 = fadd fast float %4779, %4732
  %4783 = fadd fast float %4780, %4733
  br label %4784

; <label>:4784                                    ; preds = %4756, %4727
  %4785 = phi float [ %4775, %4756 ], [ %4728, %4727 ]
  %4786 = phi float [ %4776, %4756 ], [ %4729, %4727 ]
  %4787 = phi float [ %4777, %4756 ], [ %4730, %4727 ]
  %4788 = phi float [ %4781, %4756 ], [ %4731, %4727 ]
  %4789 = phi float [ %4782, %4756 ], [ %4732, %4727 ]
  %4790 = phi float [ %4783, %4756 ], [ %4733, %4727 ]
  %4791 = add nuw i32 %4734, 1
  %4792 = icmp eq i32 %4791, %4716
  br i1 %4792, label %4793, label %4727

; <label>:4793                                    ; preds = %4784
  br label %4794

; <label>:4794                                    ; preds = %4793, %4657
  %4795 = phi float [ 0.000000e+00, %4657 ], [ %4785, %4793 ]
  %4796 = phi float [ 0.000000e+00, %4657 ], [ %4786, %4793 ]
  %4797 = phi float [ 0.000000e+00, %4657 ], [ %4787, %4793 ]
  %4798 = phi float [ 0.000000e+00, %4657 ], [ %4788, %4793 ]
  %4799 = phi float [ 0.000000e+00, %4657 ], [ %4789, %4793 ]
  %4800 = phi float [ 0.000000e+00, %4657 ], [ %4790, %4793 ]
  %4801 = fadd fast float %4798, %4795
  %4802 = fmul fast float %4801, 0x3F847AE140000000
  %4803 = fadd fast float %4799, %4796
  %4804 = fmul fast float %4803, 0x3F847AE140000000
  %4805 = fadd fast float %4800, %4797
  %4806 = fmul fast float %4805, 0x3F847AE140000000
  br label %4807

; <label>:4807                                    ; preds = %4794, %4591, %4536, %4533, %4504, %4466
  %4808 = phi float [ %4528, %4504 ], [ 0.000000e+00, %4466 ], [ %4802, %4794 ], [ 0.000000e+00, %4536 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4533 ]
  %4809 = phi float [ %4530, %4504 ], [ 0.000000e+00, %4466 ], [ %4804, %4794 ], [ 0.000000e+00, %4536 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4533 ]
  %4810 = phi float [ %4532, %4504 ], [ 0.000000e+00, %4466 ], [ %4806, %4794 ], [ 0.000000e+00, %4536 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4533 ]
  %4811 = phi float [ %4518, %4504 ], [ -1.310720e+05, %4466 ], [ %4710, %4794 ], [ -1.310720e+05, %4536 ], [ -1.310720e+05, %4591 ], [ -1.310720e+05, %4533 ]
  %4812 = phi i1 [ true, %4504 ], [ false, %4466 ], [ true, %4794 ], [ false, %4536 ], [ false, %4591 ], [ false, %4533 ]
  %4813 = and i32 %285, 3
  %4814 = icmp eq i32 %4813, 1
  %4815 = select i1 %4814, float 1.000000e+00, float 0.000000e+00
  %4816 = fsub fast float %4811, %204
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = select i1 %4812, float %4817, float 1.000000e+00
  %4819 = fmul fast float %4818, %4815
  %4820 = icmp eq i32 %4813, 3
  %4821 = select i1 %4820, float 1.000000e+00, float %4819
  %4822 = call float @dx.op.binary.f32(i32 35, float %4317, float %4821)  ; FMax(a,b)
  %4823 = fcmp fast olt float %4821, 1.000000e+00
  %4824 = fcmp uge float %79, 0.000000e+00
  %4825 = and i1 %4824, %4823
  br i1 %4825, label %4826, label %4836

; <label>:4826                                    ; preds = %4807
  %4827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %79, float %80, float %81, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.ResRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.ResRet.f32 %4827, 2
  %4831 = fadd fast float %4828, %4822
  %4832 = fcmp ule float %78, 0.000000e+00
  %4833 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = select i1 %4832, float %4833, float 1.000000e+00
  %4835 = fmul fast float %4834, %4830
  br label %4836

; <label>:4836                                    ; preds = %4826, %4807
  %4837 = phi float [ %4831, %4826 ], [ %4822, %4807 ]
  %4838 = phi float [ %4829, %4826 ], [ 0.000000e+00, %4807 ]
  %4839 = phi float [ %4835, %4826 ], [ 0.000000e+00, %4807 ]
  %4840 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = fcmp fast une float %4841, 0.000000e+00
  %4844 = fcmp fast une float %4842, 0.000000e+00
  %4845 = or i1 %4843, %4844
  br i1 %4845, label %4846, label %5421

; <label>:4846                                    ; preds = %4836
  br i1 %4843, label %4847, label %5120

; <label>:4847                                    ; preds = %4846
  %4848 = call float @dx.op.unary.f32(i32 23, float %4314)  ; Log(value)
  %4849 = fmul fast float %4848, 4.000000e+00
  %4850 = call float @dx.op.unary.f32(i32 21, float %4849)  ; Exp(value)
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = fmul fast float %4852, %66
  %4854 = fmul fast float %4852, %67
  %4855 = fmul fast float %4852, %68
  %4856 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4857 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4858 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4859 = call float @dx.op.unary.f32(i32 23, float %4856)  ; Log(value)
  %4860 = call float @dx.op.unary.f32(i32 23, float %4857)  ; Log(value)
  %4861 = call float @dx.op.unary.f32(i32 23, float %4858)  ; Log(value)
  %4862 = fmul fast float %4859, 4.000000e+00
  %4863 = fmul fast float %4860, 4.000000e+00
  %4864 = fmul fast float %4861, 4.000000e+00
  %4865 = call float @dx.op.unary.f32(i32 21, float %4862)  ; Exp(value)
  %4866 = call float @dx.op.unary.f32(i32 21, float %4863)  ; Exp(value)
  %4867 = call float @dx.op.unary.f32(i32 21, float %4864)  ; Exp(value)
  %4868 = fadd fast float %4866, %4865
  %4869 = fadd fast float %4868, %4867
  %4870 = fdiv fast float 1.000000e+00, %4869
  %4871 = fmul fast float %4870, %4865
  %4872 = fcmp fast ogt float %75, 0.000000e+00
  %4873 = fcmp fast ogt float %76, 0.000000e+00
  %4874 = fcmp fast ogt float %77, 0.000000e+00
  %4875 = fcmp fast olt float %75, 0.000000e+00
  %4876 = fcmp fast olt float %76, 0.000000e+00
  %4877 = fcmp fast olt float %77, 0.000000e+00
  %4878 = zext i1 %4872 to i32
  %4879 = zext i1 %4873 to i32
  %4880 = zext i1 %4874 to i32
  %4881 = zext i1 %4875 to i32
  %4882 = zext i1 %4876 to i32
  %4883 = zext i1 %4877 to i32
  %4884 = sub nsw i32 %4878, %4881
  %4885 = sub nsw i32 %4879, %4882
  %4886 = sub nsw i32 %4880, %4883
  %4887 = call float @dx.op.unary.f32(i32 83, float %4853)  ; DerivCoarseX(value)
  %4888 = call float @dx.op.unary.f32(i32 83, float %4854)  ; DerivCoarseX(value)
  %4889 = call float @dx.op.unary.f32(i32 83, float %4855)  ; DerivCoarseX(value)
  %4890 = call float @dx.op.unary.f32(i32 84, float %4853)  ; DerivCoarseY(value)
  %4891 = call float @dx.op.unary.f32(i32 84, float %4854)  ; DerivCoarseY(value)
  %4892 = call float @dx.op.unary.f32(i32 84, float %4855)  ; DerivCoarseY(value)
  %4893 = fcmp fast ole float %319, %4871
  %4894 = fmul fast float %4870, %4868
  %4895 = fcmp fast ole float %319, %4894
  %4896 = select i1 %4895, float %4855, float %4853
  %4897 = select i1 %4895, float %4853, float %4854
  %4898 = select i1 %4893, float %4854, float %4896
  %4899 = select i1 %4893, float %4855, float %4897
  %4900 = select i1 %4895, float %4889, float %4887
  %4901 = select i1 %4895, float %4887, float %4888
  %4902 = select i1 %4893, float %4888, float %4900
  %4903 = select i1 %4893, float %4889, float %4901
  %4904 = select i1 %4895, float %4892, float %4890
  %4905 = select i1 %4895, float %4890, float %4891
  %4906 = select i1 %4893, float %4891, float %4904
  %4907 = select i1 %4893, float %4892, float %4905
  %4908 = call float @dx.op.unary.f32(i32 27, float %4898)  ; Round_ni(value)
  %4909 = call float @dx.op.unary.f32(i32 27, float %4899)  ; Round_ni(value)
  %4910 = fptosi float %4908 to i32
  %4911 = fptosi float %4909 to i32
  %4912 = xor i32 %4911, %4910
  %4913 = sitofp i32 %4912 to float
  %4914 = fptosi float %4913 to i32
  %4915 = sitofp i32 %4914 to float
  %4916 = fmul fast float %4915, 0x3FE3C6EF40000000
  %4917 = frem fast float %4908, 2.560000e+02
  %4918 = frem fast float %4909, 2.560000e+02
  %4919 = fptoui float %4917 to i32
  %4920 = fptoui float %4918 to i32
  %4921 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %4919, i32 %4920, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = fadd fast float %4922, %4916
  %4926 = fadd fast float %4923, %4916
  %4927 = fadd fast float %4924, %4916
  %4928 = call float @dx.op.unary.f32(i32 22, float %4925)  ; Frc(value)
  %4929 = call float @dx.op.unary.f32(i32 22, float %4926)  ; Frc(value)
  %4930 = call float @dx.op.unary.f32(i32 22, float %4927)  ; Frc(value)
  %4931 = fmul fast float %4930, 0x401921FB60000000
  %4932 = call float @dx.op.unary.f32(i32 13, float %4931)  ; Sin(value)
  %4933 = call float @dx.op.unary.f32(i32 12, float %4931)  ; Cos(value)
  %4934 = fsub fast float -0.000000e+00, %4933
  %4935 = fmul fast float %4933, %4898
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4932, float %4899, float %4935)  ; FMad(a,b,c)
  %4937 = fmul fast float %4932, %4898
  %4938 = call float @dx.op.tertiary.f32(i32 46, float %4934, float %4899, float %4937)  ; FMad(a,b,c)
  %4939 = fadd fast float %4936, %4928
  %4940 = fadd fast float %4938, %4929
  %4941 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4942 = bitcast float %4941 to i32
  %4943 = icmp eq i32 %4942, 0
  br i1 %4943, label %4982, label %4944

; <label>:4944                                    ; preds = %4847
  %4945 = add i32 %4942, 0
  %4946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4946, %dx.types.Handle %120, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float %4902, float %4903, float undef, float %4906, float %4907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.f32 %4949, 1
  %4951 = extractvalue %dx.types.CBufRet.f32 %4949, 2
  %4952 = fsub fast float 1.000000e+00, %4841
  %4953 = call float @dx.op.binary.f32(i32 35, float %4952, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4954 = bitcast float %4841 to i32
  %4955 = sitofp i32 %4954 to float
  %4956 = fadd fast float %4955, 0xC1CFBF8940000000
  %4957 = fmul fast float %4951, %4956
  %4958 = fadd fast float %4957, 0x41CFBF8940000000
  %4959 = fptosi float %4958 to i32
  %4960 = bitcast i32 %4959 to float
  %4961 = bitcast float %4953 to i32
  %4962 = sitofp i32 %4961 to float
  %4963 = fadd fast float %4962, 0xC1CFBF8940000000
  %4964 = fmul fast float %4963, %4951
  %4965 = fadd fast float %4964, 0x41CFBF8940000000
  %4966 = fptosi float %4965 to i32
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4960, %4950
  %4969 = fmul fast float %4967, %4950
  %4970 = fsub fast float %4953, %4968
  %4971 = fadd fast float %4969, %4953
  %4972 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4974 = fsub fast float %4948, %4972
  %4975 = fsub fast float %4973, %4972
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4978, %4974
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fcmp fast olt float %4980, 0x3F70101020000000
  br i1 %4981, label %5120, label %4982

; <label>:4982                                    ; preds = %4944, %4847
  %4983 = phi float [ %4980, %4944 ], [ %4841, %4847 ]
  %4984 = fmul fast float %4983, %4850
  %4985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.i32 %4985, 1
  %4987 = extractvalue %dx.types.CBufRet.i32 %4985, 0
  %4988 = add i32 %4987, 0
  %4989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4989, %dx.types.Handle %119, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float %4902, float %4903, float undef, float %4906, float %4907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = extractvalue %dx.types.ResRet.f32 %4990, 3
  %4995 = and i32 %4986, 255
  %4996 = uitofp i32 %4995 to float
  %4997 = lshr i32 %4986, 8
  %4998 = and i32 %4997, 255
  %4999 = uitofp i32 %4998 to float
  %5000 = fmul fast float %4994, %4996
  %5001 = fadd fast float %5000, %4999
  %5002 = fmul fast float %5001, 0x3F70101000000000
  %5003 = fadd fast float %5002, 0xBFB99999A0000000
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fmul fast float %5004, 0x3FF1C71C80000000
  %5006 = call float @dx.op.binary.f32(i32 36, float %5002, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5007 = fsub fast float 1.000000e+00, %5005
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = fmul fast float %5008, %4991
  %5010 = fmul fast float %5008, %4992
  %5011 = fmul fast float %5008, %4993
  %5012 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5015 = fmul fast float %5005, %4991
  %5016 = fmul fast float %5005, %4992
  %5017 = fmul fast float %5005, %4993
  %5018 = fadd fast float %5015, %5006
  %5019 = fadd fast float %5016, %5006
  %5020 = fadd fast float %5017, %5006
  %5021 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5023 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.i32 %5024, 3
  %5026 = extractvalue %dx.types.CBufRet.i32 %5024, 2
  %5027 = add i32 %5026, 0
  %5028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5028, %dx.types.Handle %119, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float %4902, float %4903, float undef, float %4906, float %4907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.ResRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.ResRet.f32 %5029, 2
  %5033 = extractvalue %dx.types.ResRet.f32 %5029, 3
  %5034 = and i32 %5025, 255
  %5035 = uitofp i32 %5034 to float
  %5036 = lshr i32 %5025, 8
  %5037 = and i32 %5036, 255
  %5038 = uitofp i32 %5037 to float
  %5039 = lshr i32 %5025, 16
  %5040 = and i32 %5039, 255
  %5041 = uitofp i32 %5040 to float
  %5042 = fmul fast float %5041, 0x3F70101000000000
  %5043 = fmul fast float %5030, %5035
  %5044 = fadd fast float %5043, %5038
  %5045 = fmul fast float %5044, 0x3F70101000000000
  %5046 = fadd fast float %5031, -5.000000e-01
  %5047 = fadd fast float %5033, -5.000000e-01
  %5048 = fmul fast float %5046, %5042
  %5049 = fmul fast float %5047, %5042
  %5050 = fadd fast float %5048, 5.000000e-01
  %5051 = fadd fast float %5049, 5.000000e-01
  %5052 = fmul fast float %5050, 2.000000e+00
  %5053 = fadd fast float %5052, -1.000000e+00
  %5054 = fmul fast float %5051, 2.000000e+00
  %5055 = fadd fast float %5054, -1.000000e+00
  %5056 = fadd fast float %5053, %5055
  %5057 = fmul fast float %5056, 5.000000e-01
  %5058 = fsub fast float %5053, %5055
  %5059 = fmul fast float %5058, 5.000000e-01
  %5060 = call float @dx.op.unary.f32(i32 6, float %5057)  ; FAbs(value)
  %5061 = fsub fast float 1.000000e+00, %5060
  %5062 = call float @dx.op.unary.f32(i32 6, float %5059)  ; FAbs(value)
  %5063 = fsub fast float %5061, %5062
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5059, float %5063, float %5057, float %5059, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = call float @dx.op.unary.f32(i32 25, float %5064)  ; Rsqrt(value)
  %5066 = fmul fast float %5057, %5065
  %5067 = fmul fast float %5059, %5065
  %5068 = select i1 %4895, i32 %4885, i32 %4886
  %5069 = select i1 %4893, i32 %4884, i32 %5068
  %5070 = sitofp i32 %5069 to float
  %5071 = fmul fast float %5063, %5070
  %5072 = fmul fast float %5071, %5065
  %5073 = select i1 %4895, float %5072, float %5067
  %5074 = select i1 %4895, float %5067, float %5072
  %5075 = select i1 %4893, float %5072, float %5066
  %5076 = select i1 %4893, float %5067, float %5073
  %5077 = select i1 %4893, float %5066, float %5074
  %5078 = fsub fast float %5012, %4441
  %5079 = fsub fast float %5013, %4442
  %5080 = fsub fast float %5014, %4443
  %5081 = fmul fast float %5078, %4984
  %5082 = fmul fast float %5079, %4984
  %5083 = fmul fast float %5080, %4984
  %5084 = fadd fast float %5081, %4441
  %5085 = fadd fast float %5082, %4442
  %5086 = fadd fast float %5083, %4443
  %5087 = fsub fast float %5021, %4360
  %5088 = fsub fast float %5022, %4361
  %5089 = fsub fast float %5023, %4362
  %5090 = fmul fast float %5087, %4984
  %5091 = fmul fast float %5088, %4984
  %5092 = fmul fast float %5089, %4984
  %5093 = fadd fast float %5090, %4360
  %5094 = fadd fast float %5091, %4361
  %5095 = fadd fast float %5092, %4362
  %5096 = fadd fast float %5075, %4299
  %5097 = fadd fast float %5076, %4300
  %5098 = fadd fast float %5077, %4301
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 25, float %5099)  ; Rsqrt(value)
  %5101 = fmul fast float %5096, %5100
  %5102 = fmul fast float %5097, %5100
  %5103 = fmul fast float %5098, %5100
  %5104 = fsub fast float %5101, %4299
  %5105 = fsub fast float %5102, %4300
  %5106 = fsub fast float %5103, %4301
  %5107 = fmul fast float %5104, %4984
  %5108 = fmul fast float %5105, %4984
  %5109 = fmul fast float %5106, %4984
  %5110 = fadd fast float %5107, %4299
  %5111 = fadd fast float %5108, %4300
  %5112 = fadd fast float %5109, %4301
  %5113 = call float @dx.op.binary.f32(i32 36, float %4314, float %5032)  ; FMin(a,b)
  %5114 = fsub fast float %5113, %4314
  %5115 = fmul fast float %5114, %4984
  %5116 = fadd fast float %5115, %4314
  %5117 = fsub fast float %5045, %4363
  %5118 = fmul fast float %5117, %4984
  %5119 = fadd fast float %5118, %4363
  br label %5120

; <label>:5120                                    ; preds = %4982, %4944, %4846
  %5121 = phi float [ %5084, %4982 ], [ %4441, %4944 ], [ %4441, %4846 ]
  %5122 = phi float [ %5085, %4982 ], [ %4442, %4944 ], [ %4442, %4846 ]
  %5123 = phi float [ %5086, %4982 ], [ %4443, %4944 ], [ %4443, %4846 ]
  %5124 = phi float [ %5093, %4982 ], [ %4360, %4944 ], [ %4360, %4846 ]
  %5125 = phi float [ %5094, %4982 ], [ %4361, %4944 ], [ %4361, %4846 ]
  %5126 = phi float [ %5095, %4982 ], [ %4362, %4944 ], [ %4362, %4846 ]
  %5127 = phi float [ %5110, %4982 ], [ %4299, %4944 ], [ %4299, %4846 ]
  %5128 = phi float [ %5111, %4982 ], [ %4300, %4944 ], [ %4300, %4846 ]
  %5129 = phi float [ %5112, %4982 ], [ %4301, %4944 ], [ %4301, %4846 ]
  %5130 = phi float [ %5119, %4982 ], [ %4363, %4944 ], [ %4363, %4846 ]
  %5131 = phi float [ %5116, %4982 ], [ %4314, %4944 ], [ %4314, %4846 ]
  br i1 %4844, label %5132, label %5421

; <label>:5132                                    ; preds = %5120
  %5133 = call float @dx.op.unary.f32(i32 23, float %5131)  ; Log(value)
  %5134 = fmul fast float %5133, 4.000000e+00
  %5135 = call float @dx.op.unary.f32(i32 21, float %5134)  ; Exp(value)
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = fmul fast float %5137, %66
  %5139 = fmul fast float %5137, %67
  %5140 = fmul fast float %5137, %68
  %5141 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %5142 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %5143 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5144 = call float @dx.op.unary.f32(i32 23, float %5141)  ; Log(value)
  %5145 = call float @dx.op.unary.f32(i32 23, float %5142)  ; Log(value)
  %5146 = call float @dx.op.unary.f32(i32 23, float %5143)  ; Log(value)
  %5147 = fmul fast float %5144, 4.000000e+00
  %5148 = fmul fast float %5145, 4.000000e+00
  %5149 = fmul fast float %5146, 4.000000e+00
  %5150 = call float @dx.op.unary.f32(i32 21, float %5147)  ; Exp(value)
  %5151 = call float @dx.op.unary.f32(i32 21, float %5148)  ; Exp(value)
  %5152 = call float @dx.op.unary.f32(i32 21, float %5149)  ; Exp(value)
  %5153 = fadd fast float %5151, %5150
  %5154 = fadd fast float %5153, %5152
  %5155 = fdiv fast float 1.000000e+00, %5154
  %5156 = fmul fast float %5155, %5150
  %5157 = fcmp fast ogt float %75, 0.000000e+00
  %5158 = fcmp fast ogt float %76, 0.000000e+00
  %5159 = fcmp fast ogt float %77, 0.000000e+00
  %5160 = fcmp fast olt float %75, 0.000000e+00
  %5161 = fcmp fast olt float %76, 0.000000e+00
  %5162 = fcmp fast olt float %77, 0.000000e+00
  %5163 = zext i1 %5157 to i32
  %5164 = zext i1 %5158 to i32
  %5165 = zext i1 %5159 to i32
  %5166 = zext i1 %5160 to i32
  %5167 = zext i1 %5161 to i32
  %5168 = zext i1 %5162 to i32
  %5169 = sub nsw i32 %5163, %5166
  %5170 = sub nsw i32 %5164, %5167
  %5171 = sub nsw i32 %5165, %5168
  %5172 = call float @dx.op.unary.f32(i32 83, float %5138)  ; DerivCoarseX(value)
  %5173 = call float @dx.op.unary.f32(i32 83, float %5139)  ; DerivCoarseX(value)
  %5174 = call float @dx.op.unary.f32(i32 83, float %5140)  ; DerivCoarseX(value)
  %5175 = call float @dx.op.unary.f32(i32 84, float %5138)  ; DerivCoarseY(value)
  %5176 = call float @dx.op.unary.f32(i32 84, float %5139)  ; DerivCoarseY(value)
  %5177 = call float @dx.op.unary.f32(i32 84, float %5140)  ; DerivCoarseY(value)
  %5178 = fcmp fast ole float %319, %5156
  %5179 = fmul fast float %5155, %5153
  %5180 = fcmp fast ole float %319, %5179
  %5181 = select i1 %5180, float %5140, float %5138
  %5182 = select i1 %5180, float %5138, float %5139
  %5183 = select i1 %5178, float %5139, float %5181
  %5184 = select i1 %5178, float %5140, float %5182
  %5185 = select i1 %5180, float %5174, float %5172
  %5186 = select i1 %5180, float %5172, float %5173
  %5187 = select i1 %5178, float %5173, float %5185
  %5188 = select i1 %5178, float %5174, float %5186
  %5189 = select i1 %5180, float %5177, float %5175
  %5190 = select i1 %5180, float %5175, float %5176
  %5191 = select i1 %5178, float %5176, float %5189
  %5192 = select i1 %5178, float %5177, float %5190
  %5193 = call float @dx.op.unary.f32(i32 27, float %5183)  ; Round_ni(value)
  %5194 = call float @dx.op.unary.f32(i32 27, float %5184)  ; Round_ni(value)
  %5195 = fptosi float %5193 to i32
  %5196 = fptosi float %5194 to i32
  %5197 = xor i32 %5196, %5195
  %5198 = sitofp i32 %5197 to float
  %5199 = fptosi float %5198 to i32
  %5200 = sitofp i32 %5199 to float
  %5201 = fmul fast float %5200, 0x3FE3C6EF40000000
  %5202 = frem fast float %5193, 2.560000e+02
  %5203 = frem fast float %5194, 2.560000e+02
  %5204 = fptoui float %5202 to i32
  %5205 = fptoui float %5203 to i32
  %5206 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %5204, i32 %5205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.f32 %5206, 2
  %5210 = fadd fast float %5207, %5201
  %5211 = fadd fast float %5208, %5201
  %5212 = fadd fast float %5209, %5201
  %5213 = call float @dx.op.unary.f32(i32 22, float %5210)  ; Frc(value)
  %5214 = call float @dx.op.unary.f32(i32 22, float %5211)  ; Frc(value)
  %5215 = call float @dx.op.unary.f32(i32 22, float %5212)  ; Frc(value)
  %5216 = fmul fast float %5215, 0x401921FB60000000
  %5217 = call float @dx.op.unary.f32(i32 13, float %5216)  ; Sin(value)
  %5218 = call float @dx.op.unary.f32(i32 12, float %5216)  ; Cos(value)
  %5219 = fsub fast float -0.000000e+00, %5218
  %5220 = fmul fast float %5218, %5183
  %5221 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5184, float %5220)  ; FMad(a,b,c)
  %5222 = fmul fast float %5217, %5183
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5184, float %5222)  ; FMad(a,b,c)
  %5224 = fadd fast float %5221, %5213
  %5225 = fadd fast float %5223, %5214
  %5226 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5227 = bitcast float %5226 to i32
  %5228 = icmp eq i32 %5227, 0
  br i1 %5228, label %5267, label %5229

; <label>:5229                                    ; preds = %5132
  %5230 = add i32 %5227, 0
  %5231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5231, %dx.types.Handle %120, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5187, float %5188, float undef, float %5191, float %5192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5234, 2
  %5237 = fsub fast float 1.000000e+00, %4842
  %5238 = call float @dx.op.binary.f32(i32 35, float %5237, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5239 = bitcast float %4842 to i32
  %5240 = sitofp i32 %5239 to float
  %5241 = fadd fast float %5240, 0xC1CFBF8940000000
  %5242 = fmul fast float %5236, %5241
  %5243 = fadd fast float %5242, 0x41CFBF8940000000
  %5244 = fptosi float %5243 to i32
  %5245 = bitcast i32 %5244 to float
  %5246 = bitcast float %5238 to i32
  %5247 = sitofp i32 %5246 to float
  %5248 = fadd fast float %5247, 0xC1CFBF8940000000
  %5249 = fmul fast float %5248, %5236
  %5250 = fadd fast float %5249, 0x41CFBF8940000000
  %5251 = fptosi float %5250 to i32
  %5252 = bitcast i32 %5251 to float
  %5253 = fmul fast float %5245, %5235
  %5254 = fmul fast float %5252, %5235
  %5255 = fsub fast float %5238, %5253
  %5256 = fadd fast float %5254, %5238
  %5257 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5259 = fsub fast float %5233, %5257
  %5260 = fsub fast float %5258, %5257
  %5261 = bitcast float %5260 to i32
  %5262 = sub nsw i32 2129859010, %5261
  %5263 = bitcast i32 %5262 to float
  %5264 = fmul fast float %5263, %5259
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fcmp fast olt float %5265, 0x3F70101020000000
  br i1 %5266, label %5421, label %5267

; <label>:5267                                    ; preds = %5229, %5132
  %5268 = phi float [ %5265, %5229 ], [ %4842, %5132 ]
  %5269 = fmul fast float %5268, %5135
  %5270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.i32 %5270, 1
  %5272 = extractvalue %dx.types.CBufRet.i32 %5270, 0
  %5273 = add i32 %5272, 0
  %5274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5275 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5274, %dx.types.Handle %119, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5187, float %5188, float undef, float %5191, float %5192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = extractvalue %dx.types.ResRet.f32 %5275, 3
  %5280 = and i32 %5271, 255
  %5281 = uitofp i32 %5280 to float
  %5282 = lshr i32 %5271, 8
  %5283 = and i32 %5282, 255
  %5284 = uitofp i32 %5283 to float
  %5285 = fmul fast float %5279, %5281
  %5286 = fadd fast float %5285, %5284
  %5287 = fmul fast float %5286, 0x3F70101000000000
  %5288 = fadd fast float %5287, 0xBFB99999A0000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5289, 0x3FF1C71C80000000
  %5291 = call float @dx.op.binary.f32(i32 36, float %5287, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5292 = fsub fast float 1.000000e+00, %5290
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5293, %5276
  %5295 = fmul fast float %5293, %5277
  %5296 = fmul fast float %5293, %5278
  %5297 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5300 = fmul fast float %5290, %5276
  %5301 = fmul fast float %5290, %5277
  %5302 = fmul fast float %5290, %5278
  %5303 = fadd fast float %5300, %5291
  %5304 = fadd fast float %5301, %5291
  %5305 = fadd fast float %5302, %5291
  %5306 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5307 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5308 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.i32 %5309, 3
  %5311 = extractvalue %dx.types.CBufRet.i32 %5309, 2
  %5312 = add i32 %5311, 0
  %5313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5314 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5313, %dx.types.Handle %119, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5187, float %5188, float undef, float %5191, float %5192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5318 = extractvalue %dx.types.ResRet.f32 %5314, 3
  %5319 = and i32 %5310, 255
  %5320 = uitofp i32 %5319 to float
  %5321 = lshr i32 %5310, 8
  %5322 = and i32 %5321, 255
  %5323 = uitofp i32 %5322 to float
  %5324 = lshr i32 %5310, 16
  %5325 = and i32 %5324, 255
  %5326 = uitofp i32 %5325 to float
  %5327 = fmul fast float %5326, 0x3F70101000000000
  %5328 = fmul fast float %5315, %5320
  %5329 = fadd fast float %5328, %5323
  %5330 = fmul fast float %5329, 0x3F70101000000000
  %5331 = fadd fast float %5316, -5.000000e-01
  %5332 = fadd fast float %5318, -5.000000e-01
  %5333 = fmul fast float %5331, %5327
  %5334 = fmul fast float %5332, %5327
  %5335 = fadd fast float %5333, 5.000000e-01
  %5336 = fadd fast float %5334, 5.000000e-01
  %5337 = fmul fast float %5335, 2.000000e+00
  %5338 = fadd fast float %5337, -1.000000e+00
  %5339 = fmul fast float %5336, 2.000000e+00
  %5340 = fadd fast float %5339, -1.000000e+00
  %5341 = fadd fast float %5338, %5340
  %5342 = fmul fast float %5341, 5.000000e-01
  %5343 = fsub fast float %5338, %5340
  %5344 = fmul fast float %5343, 5.000000e-01
  %5345 = call float @dx.op.unary.f32(i32 6, float %5342)  ; FAbs(value)
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5348 = fsub fast float %5346, %5347
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5344, float %5348, float %5342, float %5344, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.unary.f32(i32 25, float %5349)  ; Rsqrt(value)
  %5351 = fmul fast float %5342, %5350
  %5352 = fmul fast float %5344, %5350
  %5353 = select i1 %5180, i32 %5170, i32 %5171
  %5354 = select i1 %5178, i32 %5169, i32 %5353
  %5355 = sitofp i32 %5354 to float
  %5356 = fmul fast float %5348, %5355
  %5357 = fmul fast float %5356, %5350
  %5358 = select i1 %5180, float %5357, float %5352
  %5359 = select i1 %5180, float %5352, float %5357
  %5360 = select i1 %5178, float %5357, float %5351
  %5361 = select i1 %5178, float %5352, float %5358
  %5362 = select i1 %5178, float %5351, float %5359
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 0
  %5365 = fptoui float %5364 to i32
  %5366 = add i32 %5365, 0
  %5367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5367, %dx.types.Handle %119, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5187, float %5188, float undef, float %5191, float %5192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = fsub fast float %5297, %5121
  %5371 = fsub fast float %5298, %5122
  %5372 = fsub fast float %5299, %5123
  %5373 = fmul fast float %5370, %5269
  %5374 = fmul fast float %5371, %5269
  %5375 = fmul fast float %5372, %5269
  %5376 = fadd fast float %5373, %5121
  %5377 = fadd fast float %5374, %5122
  %5378 = fadd fast float %5375, %5123
  %5379 = fsub fast float %5306, %5124
  %5380 = fsub fast float %5307, %5125
  %5381 = fsub fast float %5308, %5126
  %5382 = fmul fast float %5379, %5269
  %5383 = fmul fast float %5380, %5269
  %5384 = fmul fast float %5381, %5269
  %5385 = fadd fast float %5382, %5124
  %5386 = fadd fast float %5383, %5125
  %5387 = fadd fast float %5384, %5126
  %5388 = fadd fast float %5360, %5127
  %5389 = fadd fast float %5361, %5128
  %5390 = fadd fast float %5362, %5129
  %5391 = call float @dx.op.dot3.f32(i32 55, float %5388, float %5389, float %5390, float %5388, float %5389, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = call float @dx.op.unary.f32(i32 25, float %5391)  ; Rsqrt(value)
  %5393 = fmul fast float %5392, %5388
  %5394 = fmul fast float %5392, %5389
  %5395 = fmul fast float %5392, %5390
  %5396 = fsub fast float %5393, %5127
  %5397 = fsub fast float %5394, %5128
  %5398 = fsub fast float %5395, %5129
  %5399 = fmul fast float %5396, %5269
  %5400 = fmul fast float %5397, %5269
  %5401 = fmul fast float %5398, %5269
  %5402 = fadd fast float %5399, %5127
  %5403 = fadd fast float %5400, %5128
  %5404 = fadd fast float %5401, %5129
  %5405 = call float @dx.op.binary.f32(i32 36, float %5131, float %5317)  ; FMin(a,b)
  %5406 = fsub fast float %5405, %5131
  %5407 = fmul fast float %5406, %5269
  %5408 = fadd fast float %5407, %5131
  %5409 = fsub fast float %5330, %5130
  %5410 = fmul fast float %5409, %5269
  %5411 = fadd fast float %5410, %5130
  %5412 = fsub fast float %5369, %4445
  %5413 = fsub fast float %5369, %4446
  %5414 = fsub fast float %5369, %4447
  %5415 = fmul fast float %5412, %5269
  %5416 = fmul fast float %5413, %5269
  %5417 = fmul fast float %5414, %5269
  %5418 = fadd fast float %5415, %4445
  %5419 = fadd fast float %5416, %4446
  %5420 = fadd fast float %5417, %4447
  br label %5421

; <label>:5421                                    ; preds = %5267, %5229, %5120, %4836
  %5422 = phi float [ %5376, %5267 ], [ %5121, %5229 ], [ %5121, %5120 ], [ %4441, %4836 ]
  %5423 = phi float [ %5377, %5267 ], [ %5122, %5229 ], [ %5122, %5120 ], [ %4442, %4836 ]
  %5424 = phi float [ %5378, %5267 ], [ %5123, %5229 ], [ %5123, %5120 ], [ %4443, %4836 ]
  %5425 = phi float [ %5418, %5267 ], [ %4445, %5229 ], [ %4445, %5120 ], [ %4445, %4836 ]
  %5426 = phi float [ %5419, %5267 ], [ %4446, %5229 ], [ %4446, %5120 ], [ %4446, %4836 ]
  %5427 = phi float [ %5420, %5267 ], [ %4447, %5229 ], [ %4447, %5120 ], [ %4447, %4836 ]
  %5428 = phi float [ %5385, %5267 ], [ %5124, %5229 ], [ %5124, %5120 ], [ %4360, %4836 ]
  %5429 = phi float [ %5386, %5267 ], [ %5125, %5229 ], [ %5125, %5120 ], [ %4361, %4836 ]
  %5430 = phi float [ %5387, %5267 ], [ %5126, %5229 ], [ %5126, %5120 ], [ %4362, %4836 ]
  %5431 = phi float [ %5402, %5267 ], [ %5127, %5229 ], [ %5127, %5120 ], [ %4299, %4836 ]
  %5432 = phi float [ %5403, %5267 ], [ %5128, %5229 ], [ %5128, %5120 ], [ %4300, %4836 ]
  %5433 = phi float [ %5404, %5267 ], [ %5129, %5229 ], [ %5129, %5120 ], [ %4301, %4836 ]
  %5434 = phi float [ %5411, %5267 ], [ %5130, %5229 ], [ %5130, %5120 ], [ %4363, %4836 ]
  %5435 = phi float [ %5408, %5267 ], [ %5131, %5229 ], [ %5131, %5120 ], [ %4314, %4836 ]
  %5436 = fcmp fast une float %4840, 0.000000e+00
  %5437 = fsub fast float -0.000000e+00, %235
  %5438 = fsub fast float -0.000000e+00, %236
  %5439 = fsub fast float -0.000000e+00, %237
  br i1 %5436, label %5440, label %5601

; <label>:5440                                    ; preds = %5421
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = fmul fast float %4840, 2.500000e+00
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = fmul fast float %4840, 0x4013FFFFE0000000
  %5445 = fadd fast float %5444, 0xBFFFFFFFE0000000
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %4840, 0x4004000020000000
  %5448 = fadd fast float %5447, 0xBFF8000040000000
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = fmul fast float %4342, 1.000000e+01
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = fmul fast float %5451, 2.000000e+00
  %5453 = fsub fast float 3.000000e+00, %5452
  %5454 = fmul fast float %5451, %5451
  %5455 = fmul fast float %5454, %5453
  %5456 = fsub fast float 1.000000e+00, %5455
  %5457 = fsub fast float 0x3FE3333340000000, %5434
  %5458 = fmul fast float %5457, 0x400AAAAAA0000000
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = fmul fast float %5456, %5459
  %5461 = fmul fast float %5422, 0x3FEA2B8620000000
  %5462 = fmul fast float %5423, 0x3FEA2B8620000000
  %5463 = fmul fast float %5424, 0x3FEA2B8620000000
  %5464 = fadd fast float %5461, 0x3FC81DFBA0000000
  %5465 = fmul fast float %5464, %5422
  %5466 = fadd fast float %5465, 0x3F910E6020000000
  %5467 = fadd fast float %5462, 0x3FC81DFBA0000000
  %5468 = fmul fast float %5467, %5423
  %5469 = fadd fast float %5468, 0x3F910E6020000000
  %5470 = fadd fast float %5463, 0x3FC81DFBA0000000
  %5471 = fmul fast float %5470, %5424
  %5472 = fadd fast float %5471, 0x3F910E6020000000
  %5473 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5474 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5475 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5476 = fsub fast float %5473, %5422
  %5477 = fsub fast float %5474, %5423
  %5478 = fsub fast float %5475, %5424
  %5479 = fmul fast float %5476, %5443
  %5480 = fmul fast float %5479, %5460
  %5481 = fmul fast float %5477, %5443
  %5482 = fmul fast float %5481, %5460
  %5483 = fmul fast float %5478, %5443
  %5484 = fmul fast float %5483, %5460
  %5485 = fadd fast float %5480, %5422
  %5486 = fadd fast float %5482, %5423
  %5487 = fadd fast float %5484, %5424
  %5488 = fmul fast float %5435, %5435
  %5489 = fmul fast float %5488, %5488
  %5490 = fadd fast float %5446, 1.000000e+00
  %5491 = fsub fast float %5490, %5460
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fsub fast float 1.000000e+00, %5489
  %5496 = call float @dx.op.binary.f32(i32 36, float %5492, float %5495)  ; FMin(a,b)
  %5497 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5498 = call float @dx.op.binary.f32(i32 35, float %5496, float %5497)  ; FMax(a,b)
  %5499 = fadd fast float %5494, 0xBFE4CCCCC0000000
  %5500 = fmul fast float %5499, 0x4006DB6DA0000000
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = fmul fast float %5501, 2.000000e+00
  %5503 = fsub fast float 3.000000e+00, %5502
  %5504 = bitcast float %5428 to i32
  %5505 = ashr i32 %5504, 1
  %5506 = add nsw i32 %5505, 532487669
  %5507 = bitcast i32 %5506 to float
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = bitcast float %5508 to i32
  %5510 = sub nsw i32 2129859010, %5509
  %5511 = bitcast i32 %5510 to float
  %5512 = fmul fast float %5511, 2.000000e+00
  %5513 = bitcast float %5429 to i32
  %5514 = ashr i32 %5513, 1
  %5515 = add nsw i32 %5514, 532487669
  %5516 = bitcast i32 %5515 to float
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = bitcast float %5517 to i32
  %5519 = sub nsw i32 2129859010, %5518
  %5520 = bitcast i32 %5519 to float
  %5521 = fmul fast float %5520, 2.000000e+00
  %5522 = bitcast float %5430 to i32
  %5523 = ashr i32 %5522, 1
  %5524 = add nsw i32 %5523, 532487669
  %5525 = bitcast i32 %5524 to float
  %5526 = fsub fast float 1.000000e+00, %5525
  %5527 = bitcast float %5526 to i32
  %5528 = sub nsw i32 2129859010, %5527
  %5529 = bitcast i32 %5528 to float
  %5530 = fmul fast float %5529, 2.000000e+00
  %5531 = fsub fast float 0x4002A9FBE0000000, %5512
  %5532 = fadd fast float %5512, 0x3FD54FDF00000000
  %5533 = bitcast float %5532 to i32
  %5534 = sub nsw i32 2129859010, %5533
  %5535 = bitcast i32 %5534 to float
  %5536 = fmul fast float %5535, %5531
  %5537 = fmul fast float %5536, %5536
  %5538 = fsub fast float 0x4002A9FBE0000000, %5521
  %5539 = fadd fast float %5521, 0x3FD54FDF00000000
  %5540 = bitcast float %5539 to i32
  %5541 = sub nsw i32 2129859010, %5540
  %5542 = bitcast i32 %5541 to float
  %5543 = fmul fast float %5542, %5538
  %5544 = fmul fast float %5543, %5543
  %5545 = fsub fast float 0x4002A9FBE0000000, %5530
  %5546 = fadd fast float %5530, 0x3FD54FDF00000000
  %5547 = bitcast float %5546 to i32
  %5548 = sub nsw i32 2129859010, %5547
  %5549 = bitcast i32 %5548 to float
  %5550 = fmul fast float %5549, %5545
  %5551 = fmul fast float %5550, %5550
  %5552 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5537)  ; FMax(a,b)
  %5553 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5544)  ; FMax(a,b)
  %5554 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5551)  ; FMax(a,b)
  %5555 = fsub fast float 1.000000e+00, %5441
  %5556 = fadd fast float %5555, %5456
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = fsub fast float 1.000000e+00, %4821
  %5559 = fmul fast float %5498, %5558
  %5560 = fmul fast float %5501, %5501
  %5561 = fmul fast float %5560, %5559
  %5562 = fmul fast float %5561, %5503
  %5563 = fmul fast float %5558, 0xBFE99999A0000000
  %5564 = fmul fast float %5563, %5443
  %5565 = fmul fast float %5564, %5460
  %5566 = fadd fast float %5565, 1.000000e+00
  %5567 = fadd fast float %5434, -1.000000e+00
  %5568 = fmul fast float %5566, %5567
  %5569 = fadd fast float %5568, 1.000000e+00
  %5570 = fsub fast float %5552, %5428
  %5571 = fsub fast float %5553, %5429
  %5572 = fsub fast float %5554, %5430
  %5573 = fmul fast float %5562, %5570
  %5574 = fmul fast float %5562, %5571
  %5575 = fmul fast float %5562, %5572
  %5576 = fadd fast float %5573, %5428
  %5577 = fadd fast float %5574, %5429
  %5578 = fadd fast float %5575, %5430
  %5579 = fsub fast float %130, %5431
  %5580 = fsub fast float %131, %5432
  %5581 = fsub fast float %132, %5433
  %5582 = fmul fast float %5562, %5579
  %5583 = fmul fast float %5562, %5580
  %5584 = fmul fast float %5562, %5581
  %5585 = fadd fast float %5582, %5431
  %5586 = fadd fast float %5583, %5432
  %5587 = fadd fast float %5584, %5433
  %5588 = fmul fast float %5562, %5557
  %5589 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5590 = fsub fast float 1.000000e+00, %5589
  %5591 = fmul fast float %5588, %5590
  %5592 = fadd fast float %5591, %5589
  %5593 = fsub fast float 1.000000e+00, %5435
  %5594 = fmul fast float %5562, %5593
  %5595 = fadd fast float %5594, %5435
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float %5585, float %5586, float %5587)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = call float @dx.op.unary.f32(i32 25, float %5596)  ; Rsqrt(value)
  %5598 = fmul fast float %5585, %5597
  %5599 = fmul fast float %5586, %5597
  %5600 = fmul fast float %5587, %5597
  br label %5601

; <label>:5601                                    ; preds = %5440, %5421
  %5602 = phi float [ %5485, %5440 ], [ %5422, %5421 ]
  %5603 = phi float [ %5486, %5440 ], [ %5423, %5421 ]
  %5604 = phi float [ %5487, %5440 ], [ %5424, %5421 ]
  %5605 = phi float [ %5576, %5440 ], [ %5428, %5421 ]
  %5606 = phi float [ %5577, %5440 ], [ %5429, %5421 ]
  %5607 = phi float [ %5578, %5440 ], [ %5430, %5421 ]
  %5608 = phi float [ %5598, %5440 ], [ %5431, %5421 ]
  %5609 = phi float [ %5599, %5440 ], [ %5432, %5421 ]
  %5610 = phi float [ %5600, %5440 ], [ %5433, %5421 ]
  %5611 = phi float [ %5592, %5440 ], [ %5434, %5421 ]
  %5612 = phi float [ %5595, %5440 ], [ %5435, %5421 ]
  %5613 = fsub fast float -0.000000e+00, %204
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 3
  %5617 = fmul fast float %151, %5615
  %5618 = fmul fast float %153, %5616
  %5619 = fsub fast float 1.000000e+00, %5617
  %5620 = fsub fast float 1.000000e+00, %5618
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.CBufRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.CBufRet.f32 %5621, 2
  %5625 = fmul fast float %5619, %5622
  %5626 = fmul fast float %5619, %5623
  %5627 = fmul fast float %5619, %5624
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5628, 1
  %5631 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5632 = fmul fast float %5620, %5629
  %5633 = fmul fast float %5620, %5630
  %5634 = fmul fast float %5620, %5631
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5639 = fadd fast float %5632, %5636
  %5640 = fadd fast float %5639, %5625
  %5641 = fadd fast float %5633, %5637
  %5642 = fadd fast float %5641, %5626
  %5643 = fadd fast float %5634, %5638
  %5644 = fadd fast float %5643, %5627
  %5645 = fmul fast float %5640, %110
  %5646 = fmul fast float %5642, %110
  %5647 = fmul fast float %5644, %110
  %5648 = select i1 %306, float 0.000000e+00, float %5607
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %5437, float %5438, float %5439)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = call float @dx.op.dot3.f32(i32 55, float %235, float %236, float %237, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = fmul fast float %5651, 2.000000e+00
  %5653 = fmul fast float %5652, %5608
  %5654 = fmul fast float %5652, %5609
  %5655 = fmul fast float %5652, %5610
  %5656 = fsub fast float %235, %5653
  %5657 = fsub fast float %236, %5654
  %5658 = fsub fast float %237, %5655
  %5659 = call float @dx.op.binary.f32(i32 36, float %5612, float 1.000000e+00)  ; FMin(a,b)
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = bitcast float %5660 to i32
  %5662 = ashr i32 %5661, 1
  %5663 = add nsw i32 %5662, 532487669
  %5664 = bitcast i32 %5663 to float
  %5665 = fsub fast float 1.000000e+00, %5611
  %5666 = call float @dx.op.binary.f32(i32 35, float %5665, float 0x3F847AE140000000)  ; FMax(a,b)
  %5667 = fmul fast float %5666, %5666
  %5668 = fmul fast float %5667, %5667
  %5669 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %57, float %5664, float %5668, float %5669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5671 = extractvalue %dx.types.ResRet.f32 %5670, 0
  %5672 = fsub fast float 1.000000e+00, %5612
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = call float @dx.op.dot3.f32(i32 55, float %90, float %86, float %82, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fmul fast float %5675, 0x3FD20DD760000000
  %5677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %90)  ; FMax(a,b)
  %5678 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = fcmp fast oeq float %5678, 0.000000e+00
  %5680 = fcmp fast oeq float %5677, 0.000000e+00
  %5681 = or i1 %5680, %5679
  br i1 %5681, label %5711, label %5682

; <label>:5682                                    ; preds = %5601
  %5683 = fsub fast float -0.000000e+00, %93
  %5684 = fsub fast float -0.000000e+00, %91
  %5685 = call float @dx.op.unary.f32(i32 24, float %5678)  ; Sqrt(value)
  %5686 = fdiv fast float %5685, %5677
  %5687 = fcmp fast ogt float %5686, 0x3FFB6F8900000000
  %5688 = select i1 %5687, float 0x3FFB6F8900000000, float %5686
  %5689 = fmul fast float %5688, 0x3FE8A23460000000
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = call float @dx.op.binary.f32(i32 35, float %5688, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5692 = fmul fast float %5690, %5677
  %5693 = fmul fast float %5691, 0x3FF279A740000000
  %5694 = fadd fast float %5693, -1.000000e+00
  %5695 = call float @dx.op.dot3.f32(i32 55, float %5683, float %5684, float %92, float %5683, float %5684, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %5696 = call float @dx.op.unary.f32(i32 25, float %5695)  ; Rsqrt(value)
  %5697 = fmul fast float %5696, %5683
  %5698 = fmul fast float %5696, %5684
  %5699 = fmul fast float %5696, %92
  %5700 = fmul fast float %5694, %5694
  %5701 = fsub fast float 1.000000e+00, %5700
  %5702 = fmul fast float %5691, 0x40005F8BE0000000
  %5703 = fsub fast float 0x400C5BF8A0000000, %5702
  %5704 = fdiv fast float %5692, %5703
  %5705 = fmul fast float %5704, 0x3FEE31C3C0000000
  %5706 = fmul fast float %5705, %5701
  %5707 = fmul fast float %5691, 0x3FDACB7480000000
  %5708 = fadd fast float %5707, 0xBFD7347680000000
  %5709 = fmul fast float %5708, %5704
  %5710 = fmul fast float %5709, %5701
  br label %5711

; <label>:5711                                    ; preds = %5682, %5601
  %5712 = phi float [ %5697, %5682 ], [ 0.000000e+00, %5601 ]
  %5713 = phi float [ %5698, %5682 ], [ 0.000000e+00, %5601 ]
  %5714 = phi float [ %5699, %5682 ], [ 0.000000e+00, %5601 ]
  %5715 = phi float [ %5706, %5682 ], [ 0.000000e+00, %5601 ]
  %5716 = phi float [ %5710, %5682 ], [ 0.000000e+00, %5601 ]
  %5717 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5718 = fmul fast float %5717, %5717
  %5719 = fmul fast float %5718, 0x3FEE471020000000
  %5720 = fadd fast float %5719, 0xBFD42F6020000000
  %5721 = fmul fast float %5677, 0x3FD20DD760000000
  %5722 = fmul fast float %5720, %5716
  %5723 = fmul fast float %5715, 0x3FDF454380000000
  %5724 = fmul fast float %5723, %5717
  %5725 = fadd fast float %5724, %5721
  %5726 = fadd fast float %5725, %5722
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %5656, float %5657, float %5658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = fmul fast float %5727, 0x3FDF454380000000
  %5729 = fmul fast float %5727, %5727
  %5730 = fmul fast float %5729, 0x3FEE471020000000
  %5731 = fadd fast float %5730, 0xBFD42F6020000000
  %5732 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5715, float %5716, float 0x3FD20DD760000000, float %5728, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5734 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = fcmp fast oeq float %5734, 0.000000e+00
  %5736 = fcmp fast oeq float %5733, 0.000000e+00
  %5737 = or i1 %5736, %5735
  br i1 %5737, label %5767, label %5738

; <label>:5738                                    ; preds = %5711
  %5739 = fsub fast float -0.000000e+00, %89
  %5740 = fsub fast float -0.000000e+00, %87
  %5741 = call float @dx.op.unary.f32(i32 24, float %5734)  ; Sqrt(value)
  %5742 = fdiv fast float %5741, %5733
  %5743 = fcmp fast ogt float %5742, 0x3FFB6F8900000000
  %5744 = select i1 %5743, float 0x3FFB6F8900000000, float %5742
  %5745 = fmul fast float %5744, 0x3FE8A23460000000
  %5746 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5747 = call float @dx.op.binary.f32(i32 35, float %5744, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5748 = fmul fast float %5746, %5733
  %5749 = fmul fast float %5747, 0x3FF279A740000000
  %5750 = fadd fast float %5749, -1.000000e+00
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %88, float %5739, float %5740, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = call float @dx.op.unary.f32(i32 25, float %5751)  ; Rsqrt(value)
  %5753 = fmul fast float %5752, %5739
  %5754 = fmul fast float %5752, %5740
  %5755 = fmul fast float %5752, %88
  %5756 = fmul fast float %5750, %5750
  %5757 = fsub fast float 1.000000e+00, %5756
  %5758 = fmul fast float %5747, 0x40005F8BE0000000
  %5759 = fsub fast float 0x400C5BF8A0000000, %5758
  %5760 = fdiv fast float %5748, %5759
  %5761 = fmul fast float %5760, 0x3FEE31C3C0000000
  %5762 = fmul fast float %5761, %5757
  %5763 = fmul fast float %5747, 0x3FDACB7480000000
  %5764 = fadd fast float %5763, 0xBFD7347680000000
  %5765 = fmul fast float %5764, %5760
  %5766 = fmul fast float %5765, %5757
  br label %5767

; <label>:5767                                    ; preds = %5738, %5711
  %5768 = phi float [ %5753, %5738 ], [ 0.000000e+00, %5711 ]
  %5769 = phi float [ %5754, %5738 ], [ 0.000000e+00, %5711 ]
  %5770 = phi float [ %5755, %5738 ], [ 0.000000e+00, %5711 ]
  %5771 = phi float [ %5762, %5738 ], [ 0.000000e+00, %5711 ]
  %5772 = phi float [ %5766, %5738 ], [ 0.000000e+00, %5711 ]
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = fmul fast float %5773, %5773
  %5775 = fmul fast float %5774, 0x3FEE471020000000
  %5776 = fadd fast float %5775, 0xBFD42F6020000000
  %5777 = fmul fast float %5733, 0x3FD20DD760000000
  %5778 = fmul fast float %5776, %5772
  %5779 = fmul fast float %5771, 0x3FDF454380000000
  %5780 = fmul fast float %5779, %5773
  %5781 = fadd fast float %5780, %5777
  %5782 = fadd fast float %5781, %5778
  %5783 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %5656, float %5657, float %5658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = fmul fast float %5783, 0x3FDF454380000000
  %5785 = fmul fast float %5783, %5783
  %5786 = fmul fast float %5785, 0x3FEE471020000000
  %5787 = fadd fast float %5786, 0xBFD42F6020000000
  %5788 = call float @dx.op.dot3.f32(i32 55, float %5733, float %5771, float %5772, float 0x3FD20DD760000000, float %5784, float %5787)  ; Dot3(ax,ay,az,bx,by,bz)
  %5789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5790 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fcmp fast oeq float %5790, 0.000000e+00
  %5792 = fcmp fast oeq float %5789, 0.000000e+00
  %5793 = or i1 %5792, %5791
  br i1 %5793, label %5823, label %5794

; <label>:5794                                    ; preds = %5767
  %5795 = fsub fast float -0.000000e+00, %85
  %5796 = fsub fast float -0.000000e+00, %83
  %5797 = call float @dx.op.unary.f32(i32 24, float %5790)  ; Sqrt(value)
  %5798 = fdiv fast float %5797, %5789
  %5799 = fcmp fast ogt float %5798, 0x3FFB6F8900000000
  %5800 = select i1 %5799, float 0x3FFB6F8900000000, float %5798
  %5801 = fmul fast float %5800, 0x3FE8A23460000000
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5800, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5804 = fmul fast float %5802, %5789
  %5805 = fmul fast float %5803, 0x3FF279A740000000
  %5806 = fadd fast float %5805, -1.000000e+00
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5795, float %5796, float %84, float %5795, float %5796, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call float @dx.op.unary.f32(i32 25, float %5807)  ; Rsqrt(value)
  %5809 = fmul fast float %5808, %5795
  %5810 = fmul fast float %5808, %5796
  %5811 = fmul fast float %5808, %84
  %5812 = fmul fast float %5806, %5806
  %5813 = fsub fast float 1.000000e+00, %5812
  %5814 = fmul fast float %5803, 0x40005F8BE0000000
  %5815 = fsub fast float 0x400C5BF8A0000000, %5814
  %5816 = fdiv fast float %5804, %5815
  %5817 = fmul fast float %5816, 0x3FEE31C3C0000000
  %5818 = fmul fast float %5817, %5813
  %5819 = fmul fast float %5803, 0x3FDACB7480000000
  %5820 = fadd fast float %5819, 0xBFD7347680000000
  %5821 = fmul fast float %5820, %5816
  %5822 = fmul fast float %5821, %5813
  br label %5823

; <label>:5823                                    ; preds = %5794, %5767
  %5824 = phi float [ %5809, %5794 ], [ 0.000000e+00, %5767 ]
  %5825 = phi float [ %5810, %5794 ], [ 0.000000e+00, %5767 ]
  %5826 = phi float [ %5811, %5794 ], [ 0.000000e+00, %5767 ]
  %5827 = phi float [ %5818, %5794 ], [ 0.000000e+00, %5767 ]
  %5828 = phi float [ %5822, %5794 ], [ 0.000000e+00, %5767 ]
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = fmul fast float %5829, %5829
  %5831 = fmul fast float %5830, 0x3FEE471020000000
  %5832 = fadd fast float %5831, 0xBFD42F6020000000
  %5833 = fmul fast float %5789, 0x3FD20DD760000000
  %5834 = fmul fast float %5832, %5828
  %5835 = fmul fast float %5827, 0x3FDF454380000000
  %5836 = fmul fast float %5835, %5829
  %5837 = fadd fast float %5836, %5833
  %5838 = fadd fast float %5837, %5834
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5656, float %5657, float %5658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = fmul fast float %5839, 0x3FDF454380000000
  %5841 = fmul fast float %5839, %5839
  %5842 = fmul fast float %5841, 0x3FEE471020000000
  %5843 = fadd fast float %5842, 0xBFD42F6020000000
  %5844 = call float @dx.op.dot3.f32(i32 55, float %5789, float %5827, float %5828, float 0x3FD20DD760000000, float %5840, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5726, float 0.000000e+00)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5782, float 0.000000e+00)  ; FMax(a,b)
  %5847 = call float @dx.op.binary.f32(i32 35, float %5838, float 0.000000e+00)  ; FMax(a,b)
  %5848 = call float @dx.op.binary.f32(i32 35, float %5732, float 0.000000e+00)  ; FMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 35, float %5788, float 0.000000e+00)  ; FMax(a,b)
  %5850 = call float @dx.op.binary.f32(i32 35, float %5844, float 0.000000e+00)  ; FMax(a,b)
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = call float @dx.op.binary.f32(i32 36, float %5602, float %5852)  ; FMin(a,b)
  %5854 = fmul fast float %5853, %5660
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = bitcast float %5855 to i32
  %5857 = sub nsw i32 2129859010, %5856
  %5858 = bitcast i32 %5857 to float
  %5859 = call float @dx.op.binary.f32(i32 36, float %5603, float %5852)  ; FMin(a,b)
  %5860 = fmul fast float %5859, %5660
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = bitcast float %5861 to i32
  %5863 = sub nsw i32 2129859010, %5862
  %5864 = bitcast i32 %5863 to float
  %5865 = call float @dx.op.binary.f32(i32 36, float %5604, float %5852)  ; FMin(a,b)
  %5866 = fmul fast float %5865, %5660
  %5867 = fsub fast float 1.000000e+00, %5866
  %5868 = bitcast float %5867 to i32
  %5869 = sub nsw i32 2129859010, %5868
  %5870 = bitcast i32 %5869 to float
  %5871 = fmul fast float %5845, %5659
  %5872 = fmul fast float %5871, %5858
  %5873 = fmul fast float %5846, %5659
  %5874 = fmul fast float %5873, %5864
  %5875 = fmul fast float %5847, %5659
  %5876 = fmul fast float %5875, %5870
  %5877 = call float @dx.op.binary.f32(i32 36, float %5605, float %5852)  ; FMin(a,b)
  %5878 = fmul fast float %5877, %5660
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = bitcast float %5879 to i32
  %5881 = sub nsw i32 2129859010, %5880
  %5882 = bitcast i32 %5881 to float
  %5883 = call float @dx.op.binary.f32(i32 36, float %5606, float %5852)  ; FMin(a,b)
  %5884 = fmul fast float %5883, %5660
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = bitcast float %5885 to i32
  %5887 = sub nsw i32 2129859010, %5886
  %5888 = bitcast i32 %5887 to float
  %5889 = call float @dx.op.binary.f32(i32 36, float %5648, float %5852)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5660
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = fmul fast float %5848, %5659
  %5896 = fmul fast float %5895, %5882
  %5897 = fmul fast float %5849, %5659
  %5898 = fmul fast float %5897, %5888
  %5899 = fmul fast float %5850, %5659
  %5900 = fmul fast float %5899, %5894
  %5901 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5874, float %5876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = select i1 %306, float 0.000000e+00, float %5872
  %5903 = select i1 %306, float %5901, float %5874
  %5904 = select i1 %306, float 0.000000e+00, float %5876
  %5905 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5898, float %5900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = select i1 %306, float 0.000000e+00, float %5896
  %5907 = select i1 %306, float %5905, float %5898
  %5908 = select i1 %306, float 0.000000e+00, float %5900
  %5909 = fmul fast float %5650, 9.843750e-01
  %5910 = fmul fast float %5611, 9.843750e-01
  %5911 = fadd fast float %5909, 7.812500e-03
  %5912 = fadd fast float %5910, 7.812500e-03
  %5913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %5911, float %5912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5914 = extractvalue %dx.types.ResRet.f32 %5913, 2
  %5915 = extractvalue %dx.types.ResRet.f32 %5913, 3
  %5916 = fmul fast float %5914, %5605
  %5917 = fmul fast float %5914, %5606
  %5918 = fmul fast float %5914, %5648
  %5919 = fadd fast float %5916, %5915
  %5920 = fadd fast float %5917, %5915
  %5921 = fadd fast float %5918, %5915
  %5922 = fcmp fast ogt float %4315, 0.000000e+00
  br i1 %5922, label %5923, label %5949

; <label>:5923                                    ; preds = %5823
  %5924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4315, float %5650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5925 = extractvalue %dx.types.ResRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.ResRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.ResRet.f32 %5924, 2
  %5928 = fadd fast float %5925, -5.000000e-01
  %5929 = fadd fast float %5926, -5.000000e-01
  %5930 = fadd fast float %5927, -5.000000e-01
  %5931 = fsub fast float 1.000000e+00, %5605
  %5932 = fsub fast float 1.000000e+00, %5606
  %5933 = fsub fast float 1.000000e+00, %5648
  %5934 = fmul fast float %5605, 4.000000e+00
  %5935 = fmul fast float %5934, %5931
  %5936 = fmul fast float %5935, %5928
  %5937 = fmul fast float %5606, 4.000000e+00
  %5938 = fmul fast float %5937, %5932
  %5939 = fmul fast float %5938, %5929
  %5940 = fmul fast float %5648, 4.000000e+00
  %5941 = fmul fast float %5940, %5933
  %5942 = fmul fast float %5941, %5930
  %5943 = fadd fast float %5936, %5919
  %5944 = fadd fast float %5939, %5920
  %5945 = fadd fast float %5942, %5921
  %5946 = call float @dx.op.unary.f32(i32 7, float %5943)  ; Saturate(value)
  %5947 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5948 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  br label %5949

; <label>:5949                                    ; preds = %5923, %5823
  %5950 = phi float [ %5946, %5923 ], [ %5919, %5823 ]
  %5951 = phi float [ %5947, %5923 ], [ %5920, %5823 ]
  %5952 = phi float [ %5948, %5923 ], [ %5921, %5823 ]
  %5953 = call float @dx.op.binary.f32(i32 35, float %5951, float %5952)  ; FMax(a,b)
  %5954 = call float @dx.op.binary.f32(i32 35, float %5950, float %5953)  ; FMax(a,b)
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = fmul fast float %5954, %5611
  %5957 = fadd fast float %5956, %5611
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %5960 = extractvalue %dx.types.CBufRet.f32 %5958, 3
  %5961 = fmul fast float %5957, %5959
  %5962 = fadd fast float %5961, %5960
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = fsub fast float 1.000000e+00, %5671
  %5965 = fadd fast float %5964, %5963
  %5966 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5967 = fcmp fast olt float %5966, 1.000000e+00
  br i1 %5967, label %5968, label %6444

; <label>:5968                                    ; preds = %5949
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 2
  %5971 = extractvalue %dx.types.CBufRet.f32 %5969, 3
  %5972 = fmul fast float %5970, %123
  %5973 = fmul fast float %5971, %124
  %5974 = fptoui float %5972 to i32
  %5975 = fptoui float %5973 to i32
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5979 = extractvalue %dx.types.CBufRet.f32 %5976, 3
  %5980 = fadd fast float %110, -4.000000e+00
  %5981 = call float @dx.op.binary.f32(i32 35, float %5980, float 0.000000e+00)  ; FMax(a,b)
  %5982 = fadd fast float %5981, %5977
  %5983 = fmul fast float %5982, %5978
  %5984 = call float @dx.op.unary.f32(i32 23, float %5983)  ; Log(value)
  %5985 = fmul fast float %5984, %5979
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %5988 = fmul fast float %5985, %5987
  %5989 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.i32 %5990, 1
  %5992 = add i32 %5991, -1
  %5993 = uitofp i32 %5991 to float
  %5994 = fmul fast float %5993, %5989
  %5995 = fptoui float %5994 to i32
  %5996 = call i32 @dx.op.binary.i32(i32 40, i32 %5995, i32 %5992)  ; UMin(a,b)
  %5997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.i32 %5997, 2
  %5999 = extractvalue %dx.types.CBufRet.i32 %5997, 3
  %6000 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5975, i32 %5998, i32 %5974)  ; UMad(a,b,c)
  %6001 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5996, i32 %5999, i32 %6000)  ; UMad(a,b,c)
  %6002 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %6003 = fptoui float %6002 to i32
  %6004 = lshr i32 %6003, 5
  %6005 = call i32 @dx.op.binary.i32(i32 40, i32 %6004, i32 8191)  ; UMin(a,b)
  %6006 = fsub fast float %4811, %204
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = fcmp fast ogt float %6007, 0.000000e+00
  %6009 = fcmp fast ogt float %5658, 0.000000e+00
  %6010 = and i1 %6009, %6008
  br i1 %6010, label %6011, label %6040

; <label>:6011                                    ; preds = %5968
  %6012 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6013 = call float @dx.op.binary.f32(i32 35, float %6012, float -1.000000e+00)  ; FMax(a,b)
  %6014 = call float @dx.op.binary.f32(i32 36, float %6013, float 1.000000e+00)  ; FMin(a,b)
  %6015 = fmul fast float %6014, %6014
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = fmul fast float %6016, 0x3FFC6E2300000000
  %6018 = fsub fast float 1.000000e+00, %6017
  %6019 = fcmp fast ogt float %6018, 0.000000e+00
  %6020 = call float @dx.op.unary.f32(i32 24, float %6018)  ; Sqrt(value)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = call float @dx.op.unary.f32(i32 23, float %6021)  ; Log(value)
  %6023 = fmul fast float %6022, 5.000000e+00
  %6024 = call float @dx.op.unary.f32(i32 21, float %6023)  ; Exp(value)
  %6025 = fmul fast float %6024, 0x3FEF591A60000000
  %6026 = fadd fast float %6025, 0x3F94DCB540000000
  %6027 = select i1 %6019, float %6026, float 1.000000e+00
  %6028 = fcmp fast oge float %6027, 1.000000e+00
  %6029 = fmul fast float %6012, 2.000000e+00
  %6030 = fadd fast float %6029, %5658
  %6031 = select i1 %6028, float %6030, float %5658
  %6032 = fsub fast float %6031, %5658
  %6033 = fmul fast float %6032, %6007
  %6034 = fadd fast float %6033, %5658
  %6035 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %6034, float %5656, float %5657, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6036 = call float @dx.op.unary.f32(i32 25, float %6035)  ; Rsqrt(value)
  %6037 = fmul fast float %6036, %5656
  %6038 = fmul fast float %6036, %5657
  %6039 = fmul fast float %6034, %6036
  br label %6040

; <label>:6040                                    ; preds = %6011, %5968
  %6041 = phi float [ %6037, %6011 ], [ %5656, %5968 ]
  %6042 = phi float [ %6038, %6011 ], [ %5657, %5968 ]
  %6043 = phi float [ %6039, %6011 ], [ %5658, %5968 ]
  %6044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.i32 %6044, 2
  %6046 = add nsw i32 %6045, -1
  %6047 = call i32 @dx.op.binary.i32(i32 37, i32 %6046, i32 0)  ; IMax(a,b)
  %6048 = shl i32 %6005, 2
  %6049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6048, i32 undef)  ; BufferLoad(srv,index,wot)
  %6050 = extractvalue %dx.types.ResRet.i32 %6049, 0
  %6051 = lshr i32 %6050, 16
  %6052 = and i32 %6050, 65535
  %6053 = lshr i32 %6050, 21
  %6054 = lshr i32 %6052, 5
  %6055 = call i32 @dx.op.binary.i32(i32 40, i32 %6054, i32 %6047)  ; UMin(a,b)
  %6056 = icmp ugt i32 %6053, %6055
  br i1 %6056, label %6420, label %6057

; <label>:6057                                    ; preds = %6040
  br label %6058

; <label>:6058                                    ; preds = %6412, %6057
  %6059 = phi float [ %6413, %6412 ], [ 0.000000e+00, %6057 ]
  %6060 = phi float [ %6414, %6412 ], [ 0.000000e+00, %6057 ]
  %6061 = phi float [ %6415, %6412 ], [ 0.000000e+00, %6057 ]
  %6062 = phi float [ %6416, %6412 ], [ 1.000000e+00, %6057 ]
  %6063 = phi i32 [ %6417, %6412 ], [ %6053, %6057 ]
  %6064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.i32 %6064, 2
  %6066 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6001, i32 %6065, i32 %6063)  ; UMad(a,b,c)
  %6067 = shl i32 %6066, 2
  %6068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6067, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.i32 %6068, 0
  %6070 = shl i32 %6063, 5
  %6071 = sub nsw i32 %6051, %6070
  %6072 = call i32 @dx.op.binary.i32(i32 37, i32 %6071, i32 0)  ; IMax(a,b)
  %6073 = call i32 @dx.op.binary.i32(i32 38, i32 %6072, i32 31)  ; IMin(a,b)
  %6074 = sub nsw i32 1, %6051
  %6075 = add nsw i32 %6074, %6052
  %6076 = call i32 @dx.op.binary.i32(i32 37, i32 %6075, i32 0)  ; IMax(a,b)
  %6077 = call i32 @dx.op.binary.i32(i32 38, i32 %6076, i32 32)  ; IMin(a,b)
  %6078 = and i32 %6077, 31
  %6079 = shl i32 -1, %6078
  %6080 = xor i32 %6079, -1
  %6081 = and i32 %6073, 31
  %6082 = shl i32 %6080, %6081
  %6083 = icmp eq i32 %6077, 32
  %6084 = select i1 %6083, i32 -1, i32 %6082
  %6085 = and i32 %6084, %6069
  %6086 = icmp eq i32 %6085, 0
  br i1 %6086, label %6412, label %6087

; <label>:6087                                    ; preds = %6058
  br label %6088

; <label>:6088                                    ; preds = %6195, %6087
  %6089 = phi float [ %6196, %6195 ], [ %6059, %6087 ]
  %6090 = phi float [ %6197, %6195 ], [ %6060, %6087 ]
  %6091 = phi float [ %6198, %6195 ], [ %6061, %6087 ]
  %6092 = phi float [ %6199, %6195 ], [ %6062, %6087 ]
  %6093 = phi i32 [ %6098, %6195 ], [ %6085, %6087 ]
  %6094 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6093)  ; FirstbitLo(value)
  %6095 = add i32 %6094, %6070
  %6096 = and i32 %6094, 31
  %6097 = shl i32 1, %6096
  %6098 = xor i32 %6097, %6093
  %6099 = mul i32 %6095, 72
  %6100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6099, i32 undef)  ; BufferLoad(srv,index,wot)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.ResRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.ResRet.f32 %6100, 2
  %6104 = add i32 %6099, 12
  %6105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6104, i32 undef)  ; BufferLoad(srv,index,wot)
  %6106 = extractvalue %dx.types.ResRet.i32 %6105, 0
  %6107 = add i32 %6099, 16
  %6108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6107, i32 undef)  ; BufferLoad(srv,index,wot)
  %6109 = extractvalue %dx.types.ResRet.f32 %6108, 0
  %6110 = extractvalue %dx.types.ResRet.f32 %6108, 1
  %6111 = extractvalue %dx.types.ResRet.f32 %6108, 2
  %6112 = add i32 %6099, 28
  %6113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6112, i32 undef)  ; BufferLoad(srv,index,wot)
  %6114 = extractvalue %dx.types.ResRet.f32 %6113, 0
  %6115 = add i32 %6099, 32
  %6116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6115, i32 undef)  ; BufferLoad(srv,index,wot)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.ResRet.f32 %6116, 3
  %6121 = add i32 %6099, 48
  %6122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6121, i32 undef)  ; BufferLoad(srv,index,wot)
  %6123 = extractvalue %dx.types.ResRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.ResRet.f32 %6122, 1
  %6125 = add i32 %6099, 56
  %6126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6125, i32 undef)  ; BufferLoad(srv,index,wot)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = add i32 %6099, 64
  %6130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6129, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.f32 %6130, 0
  %6132 = extractvalue %dx.types.ResRet.f32 %6130, 1
  %6133 = mul i32 %6095, 60
  %6134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6133, i32 undef)  ; BufferLoad(srv,index,wot)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6137 = extractvalue %dx.types.ResRet.f32 %6134, 2
  %6138 = add i32 %6133, 12
  %6139 = add i32 %6133, 48
  %6140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6139, i32 undef)  ; BufferLoad(srv,index,wot)
  %6141 = extractvalue %dx.types.ResRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.ResRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.ResRet.f32 %6140, 2
  %6144 = and i32 %6106, 32767
  %6145 = bitcast float %6101 to i32
  %6146 = icmp eq i32 %6145, -1
  %6147 = bitcast float %6102 to i32
  %6148 = and i32 %6106, 32768
  %6149 = icmp ne i32 %6148, 0
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6153 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6154 = fsub fast float %6135, %6151
  %6155 = fsub fast float %6136, %6152
  %6156 = fsub fast float %6137, %6153
  %6157 = fsub fast float %202, %6154
  %6158 = fsub fast float %203, %6155
  %6159 = fsub fast float %204, %6156
  %6160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6138, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.ResRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.ResRet.f32 %6160, 2
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6161, float %6162, float %6163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = add i32 %6133, 24
  %6166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6165, i32 undef)  ; BufferLoad(srv,index,wot)
  %6167 = extractvalue %dx.types.ResRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.ResRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.ResRet.f32 %6166, 2
  %6170 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6167, float %6168, float %6169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = add i32 %6133, 36
  %6172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6171, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.ResRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.ResRet.f32 %6172, 2
  %6176 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6173, float %6174, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = call float @dx.op.unary.f32(i32 6, float %6164)  ; FAbs(value)
  %6178 = call float @dx.op.unary.f32(i32 6, float %6170)  ; FAbs(value)
  %6179 = call float @dx.op.unary.f32(i32 6, float %6176)  ; FAbs(value)
  %6180 = fsub fast float %6141, %6177
  %6181 = fsub fast float %6142, %6178
  %6182 = fsub fast float %6143, %6179
  %6183 = fmul fast float %6180, %6109
  %6184 = fmul fast float %6181, %6110
  %6185 = fmul fast float %6182, %6111
  %6186 = call float @dx.op.binary.f32(i32 36, float %6184, float %6185)  ; FMin(a,b)
  %6187 = call float @dx.op.binary.f32(i32 36, float %6183, float %6186)  ; FMin(a,b)
  %6188 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6189 = call float @dx.op.binary.f32(i32 36, float %6092, float %6188)  ; FMin(a,b)
  %6190 = uitofp i1 %6149 to float
  %6191 = fadd fast float %6007, 1.000000e+00
  %6192 = fsub fast float %6191, %6190
  %6193 = fmul fast float %6189, %6192
  %6194 = fcmp fast ogt float %6193, 0.000000e+00
  br i1 %6194, label %6201, label %6195

; <label>:6195                                    ; preds = %6343, %6088
  %6196 = phi float [ %6407, %6343 ], [ %6089, %6088 ]
  %6197 = phi float [ %6408, %6343 ], [ %6090, %6088 ]
  %6198 = phi float [ %6409, %6343 ], [ %6091, %6088 ]
  %6199 = phi float [ %6410, %6343 ], [ %6092, %6088 ]
  %6200 = icmp eq i32 %6093, %6097
  br i1 %6200, label %6411, label %6088

; <label>:6201                                    ; preds = %6088
  br i1 %6146, label %6259, label %6202

; <label>:6202                                    ; preds = %6201
  %6203 = fsub fast float -0.000000e+00, %6161
  %6204 = fsub fast float -0.000000e+00, %6162
  %6205 = fsub fast float -0.000000e+00, %6163
  %6206 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6203, float %6204, float %6205)  ; Dot3(ax,ay,az,bx,by,bz)
  %6207 = fsub fast float -0.000000e+00, %6206
  %6208 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6203, float %6204, float %6205)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = fadd fast float %6208, %6124
  %6210 = fadd fast float %6123, %6208
  %6211 = fsub fast float -0.000000e+00, %6210
  %6212 = fcmp ogt float %6206, -0.000000e+00
  %6213 = select i1 %6212, float %6211, float %6209
  %6214 = call float @dx.op.unary.f32(i32 6, float %6207)  ; FAbs(value)
  %6215 = fdiv fast float 1.000000e+00, %6214
  %6216 = fmul fast float %6213, %6215
  %6217 = call float @dx.op.binary.f32(i32 35, float %6216, float 0.000000e+00)  ; FMax(a,b)
  %6218 = fsub fast float -0.000000e+00, %6167
  %6219 = fsub fast float -0.000000e+00, %6168
  %6220 = fsub fast float -0.000000e+00, %6169
  %6221 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6218, float %6219, float %6220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = fsub fast float -0.000000e+00, %6221
  %6223 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6218, float %6219, float %6220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6224 = fadd fast float %6223, %6128
  %6225 = fadd fast float %6127, %6223
  %6226 = fsub fast float -0.000000e+00, %6225
  %6227 = fcmp ogt float %6221, -0.000000e+00
  %6228 = select i1 %6227, float %6226, float %6224
  %6229 = call float @dx.op.unary.f32(i32 6, float %6222)  ; FAbs(value)
  %6230 = fdiv fast float 1.000000e+00, %6229
  %6231 = fmul fast float %6228, %6230
  %6232 = call float @dx.op.binary.f32(i32 35, float %6231, float 0.000000e+00)  ; FMax(a,b)
  %6233 = fsub fast float -0.000000e+00, %6173
  %6234 = fsub fast float -0.000000e+00, %6174
  %6235 = fsub fast float -0.000000e+00, %6175
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = fsub fast float -0.000000e+00, %6236
  %6238 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = fadd fast float %6238, %6132
  %6240 = fadd fast float %6131, %6238
  %6241 = fsub fast float -0.000000e+00, %6240
  %6242 = fcmp ogt float %6236, -0.000000e+00
  %6243 = select i1 %6242, float %6241, float %6239
  %6244 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6245 = fdiv fast float 1.000000e+00, %6244
  %6246 = fmul fast float %6243, %6245
  %6247 = call float @dx.op.binary.f32(i32 35, float %6246, float 0.000000e+00)  ; FMax(a,b)
  %6248 = call float @dx.op.binary.f32(i32 36, float %6232, float %6247)  ; FMin(a,b)
  %6249 = call float @dx.op.binary.f32(i32 36, float %6217, float %6248)  ; FMin(a,b)
  %6250 = fmul fast float %6249, %6041
  %6251 = fmul fast float %6249, %6042
  %6252 = fmul fast float %6249, %6043
  %6253 = fadd fast float %6250, %202
  %6254 = fadd fast float %6251, %203
  %6255 = fadd fast float %6252, %204
  %6256 = fsub fast float %6253, %6101
  %6257 = fsub fast float %6254, %6102
  %6258 = fsub fast float %6255, %6103
  br label %6266

; <label>:6259                                    ; preds = %6201
  %6260 = fmul fast float %6041, 8.096000e+03
  %6261 = fmul fast float %6042, 8.096000e+03
  %6262 = fmul fast float %6043, 8.096000e+03
  %6263 = fadd fast float %6260, %202
  %6264 = fadd fast float %6261, %203
  %6265 = fadd fast float %6262, %204
  br label %6266

; <label>:6266                                    ; preds = %6259, %6202
  %6267 = phi float [ %6041, %6259 ], [ %6256, %6202 ]
  %6268 = phi float [ %6042, %6259 ], [ %6257, %6202 ]
  %6269 = phi float [ %6043, %6259 ], [ %6258, %6202 ]
  %6270 = phi float [ %6263, %6259 ], [ %6253, %6202 ]
  %6271 = phi float [ %6264, %6259 ], [ %6254, %6202 ]
  %6272 = phi float [ %6265, %6259 ], [ %6255, %6202 ]
  %6273 = fcmp fast olt float %6120, 1.000000e+00
  br i1 %6273, label %6274, label %6305, !dx.controlflow.hints !107

; <label>:6274                                    ; preds = %6266
  %6275 = fmul fast float %6269, %6118
  %6276 = fmul fast float %6268, %6119
  %6277 = fsub fast float %6275, %6276
  %6278 = fmul fast float %6267, %6119
  %6279 = fmul fast float %6269, %6117
  %6280 = fsub fast float %6278, %6279
  %6281 = fmul fast float %6268, %6117
  %6282 = fmul fast float %6267, %6118
  %6283 = fsub fast float %6281, %6282
  %6284 = fmul fast float %6277, 2.000000e+00
  %6285 = fmul fast float %6280, 2.000000e+00
  %6286 = fmul fast float %6283, 2.000000e+00
  %6287 = fmul fast float %6284, %6120
  %6288 = fmul fast float %6285, %6120
  %6289 = fmul fast float %6286, %6120
  %6290 = fmul fast float %6286, %6118
  %6291 = fmul fast float %6285, %6119
  %6292 = fmul fast float %6284, %6119
  %6293 = fmul fast float %6286, %6117
  %6294 = fmul fast float %6285, %6117
  %6295 = fmul fast float %6284, %6118
  %6296 = fadd fast float %6290, %6267
  %6297 = fadd fast float %6296, %6287
  %6298 = fsub fast float %6297, %6291
  %6299 = fsub fast float %6268, %6293
  %6300 = fadd fast float %6299, %6288
  %6301 = fadd fast float %6300, %6292
  %6302 = fadd fast float %6289, %6269
  %6303 = fsub fast float %6302, %6295
  %6304 = fadd fast float %6303, %6294
  br label %6305

; <label>:6305                                    ; preds = %6274, %6266
  %6306 = phi float [ %6298, %6274 ], [ %6267, %6266 ]
  %6307 = phi float [ %6301, %6274 ], [ %6268, %6266 ]
  %6308 = phi float [ %6304, %6274 ], [ %6269, %6266 ]
  br i1 %6146, label %6340, label %6309

; <label>:6309                                    ; preds = %6305
  %6310 = fmul fast float %5611, 0x400187C840000000
  %6311 = fadd fast float %6310, 0xC00EFC2120000000
  %6312 = fmul fast float %6311, %5611
  %6313 = fadd fast float %6312, 0x3FE5D16340000000
  %6314 = fmul fast float %6313, %5611
  %6315 = fadd fast float %6314, 1.000000e+00
  %6316 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6317 = fsub fast float %6270, %202
  %6318 = fsub fast float %6271, %203
  %6319 = fsub fast float %6272, %204
  %6320 = fsub fast float %6270, %6101
  %6321 = fsub fast float %6271, %6102
  %6322 = fsub fast float %6272, %6103
  %6323 = call float @dx.op.dot3.f32(i32 55, float %6317, float %6318, float %6319, float %6317, float %6318, float %6319)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = call float @dx.op.dot3.f32(i32 55, float %6320, float %6321, float %6322, float %6320, float %6321, float %6322)  ; Dot3(ax,ay,az,bx,by,bz)
  %6325 = fadd fast float %6324, 0x3EE4F8B580000000
  %6326 = fdiv fast float %6323, %6325
  %6327 = bitcast float %6326 to i32
  %6328 = ashr i32 %6327, 1
  %6329 = add nsw i32 %6328, 532487669
  %6330 = bitcast i32 %6329 to float
  %6331 = fmul fast float %6330, %6316
  %6332 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6333 = fmul fast float %6332, 0x4009981AE0000000
  %6334 = fsub fast float 0x40111BBD80000000, %6333
  %6335 = fmul fast float %6334, %6332
  %6336 = fadd fast float %6335, 0xC0009F6020000000
  %6337 = fmul fast float %6336, %6332
  %6338 = fadd fast float %6337, 1.000000e+00
  %6339 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  br label %6343

; <label>:6340                                    ; preds = %6305
  %6341 = icmp ne i32 %6147, -1
  %6342 = zext i1 %6341 to i32
  br label %6343

; <label>:6343                                    ; preds = %6340, %6309
  %6344 = phi float [ %5611, %6340 ], [ %6339, %6309 ]
  %6345 = phi i32 [ %6342, %6340 ], [ 0, %6309 ]
  %6346 = fmul float %6344, 5.000000e+00
  %6347 = fsub float 5.000000e+00, %6346
  %6348 = icmp ne i32 %6345, 0
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6351 = fadd fast float %6350, %6347
  %6352 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6351)  ; FMax(a,b)
  %6353 = call float @dx.op.unary.f32(i32 6, float %6306)  ; FAbs(value)
  %6354 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6355 = fadd fast float %6354, %6353
  %6356 = call float @dx.op.unary.f32(i32 6, float %6308)  ; FAbs(value)
  %6357 = fadd fast float %6355, %6356
  %6358 = fcmp fast oeq float %6357, 0.000000e+00
  %6359 = fdiv fast float 1.000000e+00, %6357
  %6360 = select i1 %6358, float 1.000000e+00, float %6359
  %6361 = fmul fast float %6360, %6306
  %6362 = fmul fast float %6360, %6307
  %6363 = call float @dx.op.unary.f32(i32 6, float %6362)  ; FAbs(value)
  %6364 = call float @dx.op.unary.f32(i32 6, float %6361)  ; FAbs(value)
  %6365 = fsub fast float 1.000000e+00, %6363
  %6366 = fsub fast float 1.000000e+00, %6364
  %6367 = fcmp fast oge float %6361, 0.000000e+00
  %6368 = fcmp fast oge float %6362, 0.000000e+00
  %6369 = select i1 %6367, float 1.000000e+00, float -1.000000e+00
  %6370 = select i1 %6368, float 1.000000e+00, float -1.000000e+00
  %6371 = fcmp fast ole float %6308, 0.000000e+00
  %6372 = fmul fast float %6369, %6365
  %6373 = fmul fast float %6370, %6366
  %6374 = select i1 %6371, float %6372, float %6361
  %6375 = select i1 %6371, float %6373, float %6362
  %6376 = fmul fast float %6374, 5.000000e-01
  %6377 = fmul fast float %6375, 5.000000e-01
  %6378 = fadd fast float %6376, 5.000000e-01
  %6379 = fadd fast float %6377, 5.000000e-01
  %6380 = uitofp i32 %6144 to float
  %6381 = call float @dx.op.binary.f32(i32 36, float %6352, float 3.000000e+00)  ; FMin(a,b)
  %6382 = fadd fast float %6381, 2.000000e+00
  %6383 = call float @dx.op.unary.f32(i32 21, float %6382)  ; Exp(value)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6385 = fmul fast float %6384, %6383
  %6386 = fmul fast float %6385, 2.000000e+00
  %6387 = fsub fast float 1.000000e+00, %6386
  %6388 = fmul fast float %6378, %6387
  %6389 = fmul fast float %6379, %6387
  %6390 = fadd fast float %6388, %6385
  %6391 = fadd fast float %6389, %6385
  %6392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %55, float %6390, float %6391, float %6380, float undef, i32 0, i32 0, i32 undef, float %6352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.ResRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.ResRet.f32 %6392, 2
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6398 = fmul fast float %6397, %6114
  %6399 = call float @dx.op.binary.f32(i32 36, float %5676, float %6398)  ; FMin(a,b)
  %6400 = select i1 %6348, float %6399, float %6398
  %6401 = fmul fast float %6393, %6193
  %6402 = fmul fast float %6401, %6400
  %6403 = fmul fast float %6394, %6193
  %6404 = fmul fast float %6403, %6400
  %6405 = fmul fast float %6395, %6193
  %6406 = fmul fast float %6405, %6400
  %6407 = fadd fast float %6402, %6089
  %6408 = fadd fast float %6404, %6090
  %6409 = fadd fast float %6406, %6091
  %6410 = fsub fast float %6092, %6193
  br label %6195

; <label>:6411                                    ; preds = %6195
  br label %6412

; <label>:6412                                    ; preds = %6411, %6058
  %6413 = phi float [ %6059, %6058 ], [ %6196, %6411 ]
  %6414 = phi float [ %6060, %6058 ], [ %6197, %6411 ]
  %6415 = phi float [ %6061, %6058 ], [ %6198, %6411 ]
  %6416 = phi float [ %6062, %6058 ], [ %6199, %6411 ]
  %6417 = add i32 %6063, 1
  %6418 = icmp ugt i32 %6417, %6055
  br i1 %6418, label %6419, label %6058, !llvm.loop !108

; <label>:6419                                    ; preds = %6412
  br label %6420

; <label>:6420                                    ; preds = %6419, %6040
  %6421 = phi float [ 0.000000e+00, %6040 ], [ %6413, %6419 ]
  %6422 = phi float [ 0.000000e+00, %6040 ], [ %6414, %6419 ]
  %6423 = phi float [ 0.000000e+00, %6040 ], [ %6415, %6419 ]
  %6424 = call float @dx.op.dot3.f32(i32 55, float %6421, float %6422, float %6423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6425 = select i1 %306, float 0.000000e+00, float %6421
  %6426 = select i1 %306, float %6424, float %6422
  %6427 = select i1 %306, float 0.000000e+00, float %6423
  %6428 = fcmp fast olt float %5966, 0.000000e+00
  %6429 = call float @dx.op.unary.f32(i32 6, float %5966)  ; FAbs(value)
  %6430 = fmul fast float %6429, %5906
  %6431 = fmul fast float %6429, %5907
  %6432 = fmul fast float %6429, %5908
  %6433 = select i1 %6428, float %5906, float %6430
  %6434 = select i1 %6428, float %5907, float %6431
  %6435 = select i1 %6428, float %5908, float %6432
  %6436 = fsub fast float 1.000000e+00, %6429
  %6437 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  %6438 = fmul fast float %6437, %6425
  %6439 = fmul fast float %6437, %6426
  %6440 = fmul fast float %6437, %6427
  %6441 = fadd fast float %6433, %6438
  %6442 = fadd fast float %6434, %6439
  %6443 = fadd fast float %6435, %6440
  br label %6444

; <label>:6444                                    ; preds = %6420, %5949
  %6445 = phi float [ %5906, %5949 ], [ %6441, %6420 ]
  %6446 = phi float [ %5907, %5949 ], [ %6442, %6420 ]
  %6447 = phi float [ %5908, %5949 ], [ %6443, %6420 ]
  %6448 = fmul fast float %5955, %5902
  %6449 = fmul fast float %5955, %5903
  %6450 = fmul fast float %5955, %5904
  %6451 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6452 = fcmp fast ogt float %6451, 0x3E7FF19E20000000
  %6453 = fdiv fast float 1.000000e+00, %6451
  %6454 = select i1 %6452, float %6453, float 0.000000e+00
  %6455 = fmul fast float %6454, %5602
  %6456 = fmul fast float %6454, %5603
  %6457 = fmul fast float %6454, %5604
  %6458 = fadd fast float %6455, -1.000000e+00
  %6459 = fadd fast float %6456, -1.000000e+00
  %6460 = fadd fast float %6457, -1.000000e+00
  %6461 = fmul fast float %6458, 5.000000e-01
  %6462 = fmul fast float %6459, 5.000000e-01
  %6463 = fmul fast float %6460, 5.000000e-01
  %6464 = fadd fast float %6461, 1.000000e+00
  %6465 = fadd fast float %6462, 1.000000e+00
  %6466 = fadd fast float %6463, 1.000000e+00
  %6467 = fmul fast float %5955, %4427
  %6468 = fmul fast float %5955, %4428
  %6469 = fmul fast float %5955, %4429
  %6470 = fadd fast float %6467, -1.000000e+00
  %6471 = fadd fast float %6468, -1.000000e+00
  %6472 = fadd fast float %6469, -1.000000e+00
  %6473 = fmul fast float %6470, %4341
  %6474 = fmul fast float %6471, %4341
  %6475 = fmul fast float %6472, %4341
  %6476 = fadd fast float %6473, 1.000000e+00
  %6477 = fadd fast float %6474, 1.000000e+00
  %6478 = fadd fast float %6475, 1.000000e+00
  %6479 = fmul fast float %5606, 0x401CF23780000000
  %6480 = fadd fast float %6479, 0x3FF32641C0000000
  %6481 = fdiv fast float 1.000000e+00, %6480
  %6482 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %6483 = fmul fast float %6481, %6481
  %6484 = fmul fast float %6482, %6482
  %6485 = fsub fast float 1.000000e+00, %6484
  %6486 = fmul fast float %6483, %6485
  %6487 = fsub fast float 1.000000e+00, %6486
  %6488 = fcmp fast oge float %6487, 0.000000e+00
  %6489 = fmul fast float %6481, %5437
  %6490 = fmul fast float %6481, %5438
  %6491 = fmul fast float %6481, %5439
  %6492 = call float @dx.op.unary.f32(i32 24, float %6487)  ; Sqrt(value)
  %6493 = fmul fast float %6482, %6481
  %6494 = fadd fast float %6493, %6492
  %6495 = fmul fast float %6494, %5608
  %6496 = fmul fast float %6494, %5609
  %6497 = fmul fast float %6494, %5610
  %6498 = fsub fast float %6489, %6495
  %6499 = fsub fast float %6490, %6496
  %6500 = fsub fast float %6491, %6497
  %6501 = select i1 %6488, float %6498, float 0.000000e+00
  %6502 = select i1 %6488, float %6499, float 0.000000e+00
  %6503 = select i1 %6488, float %6500, float 0.000000e+00
  %6504 = fmul fast float %6501, %3653
  %6505 = fmul fast float %6502, %3653
  %6506 = fmul fast float %6503, %3653
  %6507 = fadd fast float %6504, %5645
  %6508 = fadd fast float %6505, %5646
  %6509 = fadd fast float %6506, %5647
  %6510 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6511 = fmul fast float %5665, %4341
  %6512 = fsub fast float 1.000000e+00, %6511
  %6513 = call float @dx.op.unary.f32(i32 7, float %6512)  ; Saturate(value)
  %6514 = fsub fast float 1.000000e+00, %6513
  %6515 = fmul fast float %5606, 0x4012D0A400000000
  %6516 = fadd fast float %6515, 0x3FDB6377A0000000
  %6517 = fmul fast float %6514, %6516
  %6518 = fadd fast float %6517, %6510
  %6519 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6520 = fmul fast float %6445, %5950
  %6521 = fmul fast float %6446, %5951
  %6522 = fmul fast float %6447, %5952
  %6523 = fsub fast float 1.000000e+00, %5650
  %6524 = bitcast float %6523 to i32
  %6525 = sitofp i32 %6524 to float
  %6526 = fmul fast float %6525, 5.000000e+00
  %6527 = fadd fast float %6526, 0xC1EFBF8940000000
  %6528 = fptosi float %6527 to i32
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %4316
  %6531 = fmul fast float %5902, %6530
  %6532 = fmul fast float %6531, %5955
  %6533 = fmul fast float %6532, %6464
  %6534 = fmul fast float %5903, %6530
  %6535 = fmul fast float %6534, %5955
  %6536 = fmul fast float %6535, %6465
  %6537 = fmul fast float %5904, %6530
  %6538 = fmul fast float %6537, %5955
  %6539 = fmul fast float %6538, %6466
  %6540 = fmul fast float %6448, %4341
  %6541 = fmul fast float %6449, %4341
  %6542 = fmul fast float %6450, %4341
  %6543 = fsub fast float 1.000000e+00, %6519
  %6544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.f32 %6544, 0
  %6546 = extractvalue %dx.types.CBufRet.f32 %6544, 1
  %6547 = extractvalue %dx.types.CBufRet.f32 %6544, 2
  %6548 = extractvalue %dx.types.CBufRet.f32 %6544, 3
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = extractvalue %dx.types.CBufRet.f32 %6549, 1
  %6552 = extractvalue %dx.types.CBufRet.f32 %6549, 2
  %6553 = extractvalue %dx.types.CBufRet.f32 %6549, 3
  %6554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.f32 %6554, 0
  %6556 = extractvalue %dx.types.CBufRet.f32 %6554, 1
  %6557 = extractvalue %dx.types.CBufRet.f32 %6554, 2
  %6558 = extractvalue %dx.types.CBufRet.f32 %6554, 3
  %6559 = fmul fast float %6507, %6545
  %6560 = call float @dx.op.tertiary.f32(i32 46, float %6508, float %6546, float %6559)  ; FMad(a,b,c)
  %6561 = call float @dx.op.tertiary.f32(i32 46, float %6509, float %6547, float %6560)  ; FMad(a,b,c)
  %6562 = fadd fast float %6561, %6548
  %6563 = fmul fast float %6507, %6550
  %6564 = call float @dx.op.tertiary.f32(i32 46, float %6508, float %6551, float %6563)  ; FMad(a,b,c)
  %6565 = call float @dx.op.tertiary.f32(i32 46, float %6509, float %6552, float %6564)  ; FMad(a,b,c)
  %6566 = fadd fast float %6565, %6553
  %6567 = fmul fast float %6507, %6555
  %6568 = call float @dx.op.tertiary.f32(i32 46, float %6508, float %6556, float %6567)  ; FMad(a,b,c)
  %6569 = call float @dx.op.tertiary.f32(i32 46, float %6509, float %6557, float %6568)  ; FMad(a,b,c)
  %6570 = fadd fast float %6569, %6558
  %6571 = fdiv fast float %6562, %6570
  %6572 = fdiv fast float %6566, %6570
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = fmul fast float %6574, %6571
  %6577 = fmul fast float %6575, %6572
  %6578 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6579 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6580 = fadd fast float %6576, %6578
  %6581 = fadd fast float %6577, %6579
  %6582 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6583 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6586 = extractvalue %dx.types.CBufRet.f32 %6584, 1
  %6587 = fmul fast float %6585, %6582
  %6588 = fmul fast float %6586, %6583
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6592 = fsub fast float %6590, %6591
  %6593 = fmul fast float %6592, %6543
  %6594 = fadd fast float %6593, %6591
  %6595 = fmul fast float %319, 2.000000e+00
  %6596 = fmul fast float %320, 2.000000e+00
  %6597 = fadd fast float %6595, -1.000000e+00
  %6598 = fadd fast float %6596, -1.000000e+00
  %6599 = fmul fast float %6594, %6597
  %6600 = fmul fast float %6594, %6598
  %6601 = fadd fast float %6599, %6587
  %6602 = fadd fast float %6600, %6588
  %6603 = extractvalue %dx.types.CBufRet.f32 %6584, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6584, 3
  %6605 = fmul fast float %6601, %6603
  %6606 = fmul fast float %6602, %6604
  %6607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %6605, float %6606, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6608 = extractvalue %dx.types.ResRet.f32 %6607, 0
  %6609 = fcmp fast ogt float %6608, -1.000000e+00
  %6610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6610, 1
  %6612 = select i1 %6609, float %6611, float 1.000000e+00
  %6613 = fadd fast float %6608, 1.000000e+00
  %6614 = fmul fast float %6612, %6613
  %6615 = call float @dx.op.unary.f32(i32 6, float %6614)  ; FAbs(value)
  %6616 = fsub fast float %6615, %6570
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 2
  %6619 = fmul fast float %6618, %6615
  %6620 = fdiv fast float 1.600000e+02, %6619
  %6621 = fmul fast float %6519, %6519
  %6622 = fmul fast float %6621, 0xBFB5B17960000000
  %6623 = fmul fast float %6622, %6616
  %6624 = fmul fast float %6623, %6620
  %6625 = call float @dx.op.unary.f32(i32 21, float %6624)  ; Exp(value)
  %6626 = fmul fast float %6625, 0x3FF04B2960000000
  %6627 = fsub fast float 0x3FF04B2960000000, %6626
  %6628 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6629 = fmul fast float %6628, 4.000000e+00
  %6630 = fadd fast float %319, -5.000000e-01
  %6631 = fadd fast float %320, -5.000000e-01
  %6632 = fmul fast float %6628, 0x3FBEB851E0000000
  %6633 = call float @dx.op.unary.f32(i32 7, float %6632)  ; Saturate(value)
  %6634 = fmul fast float %6633, %6630
  %6635 = fmul fast float %6633, %6631
  %6636 = fadd fast float %6634, %6580
  %6637 = fadd fast float %6635, %6581
  %6638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.i32 %6638, 0
  %6640 = icmp eq i32 %6639, 0
  br i1 %6640, label %6646, label %6641, !dx.controlflow.hints !110

; <label>:6641                                    ; preds = %6444
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %53, float %6636, float %6637, float undef, float undef, i32 0, i32 0, i32 undef, float %6629)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.ResRet.f32 %6642, 2
  br label %6651

; <label>:6646                                    ; preds = %6444
  %6647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %55, float %6636, float %6637, float undef, float undef, i32 0, i32 0, i32 undef, float %6629)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6648 = extractvalue %dx.types.ResRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.ResRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.ResRet.f32 %6647, 2
  br label %6651

; <label>:6651                                    ; preds = %6646, %6641
  %6652 = phi float [ %6643, %6641 ], [ %6648, %6646 ]
  %6653 = phi float [ %6644, %6641 ], [ %6649, %6646 ]
  %6654 = phi float [ %6645, %6641 ], [ %6650, %6646 ]
  %6655 = select i1 %306, float 0.000000e+00, float %6653
  %6656 = select i1 %306, float 0.000000e+00, float %6654
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 1
  %6659 = fmul fast float %6652, %6476
  %6660 = fmul fast float %6659, %6658
  %6661 = fmul fast float %6655, %6477
  %6662 = fmul fast float %6661, %6658
  %6663 = fmul fast float %6656, %6478
  %6664 = fmul fast float %6663, %6658
  %6665 = fadd fast float %6520, %4305
  %6666 = fadd fast float %6665, %6533
  %6667 = fadd fast float %6666, %6660
  %6668 = fmul fast float %6667, %4341
  %6669 = fadd fast float %6521, %4306
  %6670 = fadd fast float %6669, %6536
  %6671 = fadd fast float %6670, %6662
  %6672 = fmul fast float %6671, %4341
  %6673 = fadd fast float %6522, %4307
  %6674 = fadd fast float %6673, %6539
  %6675 = fadd fast float %6674, %6664
  %6676 = fmul fast float %6675, %4341
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 3
  %6679 = fcmp fast oeq float %6678, 0.000000e+00
  br i1 %6679, label %8438, label %6680

; <label>:6680                                    ; preds = %6651
  %6681 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6677, 1
  %6683 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.CBufRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.CBufRet.f32 %6684, 2
  %6688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6688, 0
  %6690 = extractvalue %dx.types.CBufRet.f32 %6688, 1
  %6691 = call float @dx.op.dot3.f32(i32 55, float %6685, float %6686, float %6687, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6692 = select i1 %306, float %6689, float %6685
  %6693 = select i1 %306, float %6691, float %6686
  %6694 = select i1 %306, float %6690, float %6687
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6697 = fmul fast float %6696, %130
  %6698 = fmul fast float %6696, %131
  %6699 = fmul fast float %6696, %132
  %6700 = fadd fast float %6697, %202
  %6701 = fadd fast float %6698, %203
  %6702 = fadd fast float %6699, %204
  %6703 = fcmp fast olt float %6678, 0.000000e+00
  br i1 %6703, label %7961, label %6704

; <label>:6704                                    ; preds = %6680
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.CBufRet.f32 %6705, 1
  %6708 = extractvalue %dx.types.CBufRet.f32 %6705, 2
  %6709 = extractvalue %dx.types.CBufRet.f32 %6705, 3
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6710, 3
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6719 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6720 = fmul fast float %6706, %6700
  %6721 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6707, float %6720)  ; FMad(a,b,c)
  %6722 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %6708, float %6721)  ; FMad(a,b,c)
  %6723 = fadd fast float %6722, %6709
  %6724 = fmul fast float %6711, %6700
  %6725 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6712, float %6724)  ; FMad(a,b,c)
  %6726 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %6713, float %6725)  ; FMad(a,b,c)
  %6727 = fadd fast float %6726, %6714
  %6728 = fmul fast float %6716, %6700
  %6729 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6717, float %6728)  ; FMad(a,b,c)
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %6718, float %6729)  ; FMad(a,b,c)
  %6731 = fadd fast float %6730, %6719
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = fcmp fast une float %6733, 0.000000e+00
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6735, 3
  %6739 = fmul fast float %6738, %6723
  %6740 = fmul fast float %6738, %6727
  %6741 = fadd fast float %6739, %6736
  %6742 = fadd fast float %6740, %6737
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.CBufRet.f32 %6743, 3
  %6747 = fmul fast float %6746, %6723
  %6748 = fmul fast float %6746, %6727
  %6749 = fadd fast float %6747, %6744
  %6750 = fadd fast float %6748, %6745
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 1
  %6753 = fsub fast float %6752, %6731
  %6754 = extractvalue %dx.types.CBufRet.f32 %6751, 2
  %6755 = fmul fast float %6753, %6754
  %6756 = fsub fast float 1.000000e+00, %6755
  %6757 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  br i1 %6734, label %6818, label %6758

; <label>:6758                                    ; preds = %6704
  %6759 = extractvalue %dx.types.CBufRet.f32 %6743, 2
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 2
  %6762 = fadd fast float %6761, %6759
  %6763 = fcmp fast ogt float %6762, 0.000000e+00
  br i1 %6763, label %6764, label %6788

; <label>:6764                                    ; preds = %6758
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6768 = fsub fast float %6749, %6766
  %6769 = fsub fast float %6750, %6767
  %6770 = fcmp fast olt float %6768, 0.000000e+00
  %6771 = fcmp fast olt float %6769, 0.000000e+00
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = extractvalue %dx.types.CBufRet.f32 %6772, 1
  %6775 = extractvalue %dx.types.CBufRet.f32 %6772, 2
  %6776 = extractvalue %dx.types.CBufRet.f32 %6772, 3
  %6777 = select i1 %6770, float %6773, float %6775
  %6778 = select i1 %6771, float %6774, float %6776
  %6779 = fmul fast float %6777, %6768
  %6780 = fmul fast float %6778, %6769
  %6781 = call float @dx.op.unary.f32(i32 6, float %6779)  ; FAbs(value)
  %6782 = call float @dx.op.unary.f32(i32 6, float %6780)  ; FAbs(value)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6784 = call float @dx.op.binary.f32(i32 35, float %6781, float %6782)  ; FMax(a,b)
  %6785 = fsub fast float %6783, %6784
  %6786 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6787 = fmul fast float %6786, %6757
  br label %6788

; <label>:6788                                    ; preds = %6764, %6758
  %6789 = phi float [ %6787, %6764 ], [ 0.000000e+00, %6758 ]
  %6790 = extractvalue %dx.types.CBufRet.f32 %6735, 2
  %6791 = extractvalue %dx.types.CBufRet.f32 %6760, 1
  %6792 = fadd fast float %6791, %6790
  %6793 = fcmp fast ogt float %6792, 0.000000e+00
  br i1 %6793, label %6794, label %6818

; <label>:6794                                    ; preds = %6788
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = fsub fast float %6741, %6796
  %6799 = fsub fast float %6742, %6797
  %6800 = fcmp fast olt float %6798, 0.000000e+00
  %6801 = fcmp fast olt float %6799, 0.000000e+00
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6805 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6806 = extractvalue %dx.types.CBufRet.f32 %6802, 3
  %6807 = select i1 %6800, float %6803, float %6805
  %6808 = select i1 %6801, float %6804, float %6806
  %6809 = fmul fast float %6807, %6798
  %6810 = fmul fast float %6808, %6799
  %6811 = call float @dx.op.unary.f32(i32 6, float %6809)  ; FAbs(value)
  %6812 = call float @dx.op.unary.f32(i32 6, float %6810)  ; FAbs(value)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6814 = call float @dx.op.binary.f32(i32 35, float %6811, float %6812)  ; FMax(a,b)
  %6815 = fsub fast float %6813, %6814
  %6816 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6817 = fmul fast float %6816, %6757
  br label %6818

; <label>:6818                                    ; preds = %6794, %6788, %6704
  %6819 = phi float [ 0.000000e+00, %6704 ], [ %6817, %6794 ], [ 0.000000e+00, %6788 ]
  %6820 = phi float [ 0.000000e+00, %6704 ], [ %6789, %6794 ], [ %6789, %6788 ]
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6823 = call float @dx.op.unary.f32(i32 7, float %6822)  ; Saturate(value)
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.CBufRet.f32 %6824, 1
  %6827 = fsub fast float %6723, %6825
  %6828 = fsub fast float %6727, %6826
  %6829 = fcmp fast olt float %6827, 0.000000e+00
  %6830 = fcmp fast olt float %6828, 0.000000e+00
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = select i1 %6829, float %6832, float %6834
  %6837 = select i1 %6830, float %6833, float %6835
  %6838 = fmul fast float %6836, %6827
  %6839 = fmul fast float %6837, %6828
  %6840 = call float @dx.op.unary.f32(i32 6, float %6838)  ; FAbs(value)
  %6841 = call float @dx.op.unary.f32(i32 6, float %6839)  ; FAbs(value)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6843 = call float @dx.op.binary.f32(i32 35, float %6840, float %6841)  ; FMax(a,b)
  %6844 = fsub fast float %6842, %6843
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = call float @dx.op.binary.f32(i32 36, float %6845, float %6823)  ; FMin(a,b)
  %6847 = fmul fast float %6846, %6757
  %6848 = fsub fast float %6819, %6847
  %6849 = fsub fast float %6820, %6819
  %6850 = fsub fast float %6849, %6847
  %6851 = call float @dx.op.binary.f32(i32 35, float %6819, float %6820)  ; FMax(a,b)
  %6852 = call float @dx.op.binary.f32(i32 35, float %6847, float %6851)  ; FMax(a,b)
  %6853 = fcmp fast olt float %6852, 1.000000e+00
  br i1 %6853, label %6854, label %7252, !dx.controlflow.hints !111

; <label>:6854                                    ; preds = %6818
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = fcmp fast une float %6856, 0.000000e+00
  br i1 %6857, label %6858, label %7252, !dx.controlflow.hints !112

; <label>:6858                                    ; preds = %6854
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 0
  %6861 = extractvalue %dx.types.CBufRet.f32 %6859, 1
  %6862 = extractvalue %dx.types.CBufRet.f32 %6859, 2
  %6863 = extractvalue %dx.types.CBufRet.f32 %6859, 3
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 0
  %6866 = extractvalue %dx.types.CBufRet.f32 %6864, 1
  %6867 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6868 = extractvalue %dx.types.CBufRet.f32 %6864, 3
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6873 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6874 = fmul fast float %6860, %6700
  %6875 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6861, float %6874)  ; FMad(a,b,c)
  %6876 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %6862, float %6875)  ; FMad(a,b,c)
  %6877 = fadd fast float %6876, %6863
  %6878 = fmul fast float %6865, %6700
  %6879 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6866, float %6878)  ; FMad(a,b,c)
  %6880 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %6867, float %6879)  ; FMad(a,b,c)
  %6881 = fadd fast float %6880, %6868
  %6882 = fmul fast float %6870, %6700
  %6883 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6871, float %6882)  ; FMad(a,b,c)
  %6884 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %6872, float %6883)  ; FMad(a,b,c)
  %6885 = fadd fast float %6884, %6873
  %6886 = fcmp fast oge float %6877, 1.000000e+00
  %6887 = fcmp fast oge float %6881, 1.000000e+00
  %6888 = or i1 %6886, %6887
  %6889 = fcmp fast olt float %6877, 0.000000e+00
  %6890 = fcmp fast olt float %6881, 0.000000e+00
  %6891 = or i1 %6889, %6890
  %6892 = or i1 %6888, %6891
  br i1 %6892, label %7252, label %6893, !dx.controlflow.hints !113

; <label>:6893                                    ; preds = %6858
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.CBufRet.f32 %6894, 1
  %6897 = extractvalue %dx.types.CBufRet.f32 %6894, 2
  %6898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.i32 %6898, 2
  %6900 = uitofp i32 %6899 to float
  %6901 = extractvalue %dx.types.CBufRet.i32 %6898, 3
  %6902 = uitofp i32 %6901 to float
  %6903 = extractvalue %dx.types.CBufRet.f32 %6894, 3
  %6904 = fmul fast float %6903, 2.000000e+00
  %6905 = fsub fast float %6877, %6895
  %6906 = fsub fast float %6881, %6896
  %6907 = fmul fast float %6904, %6905
  %6908 = fmul fast float %6904, %6906
  %6909 = fdiv fast float 1.000000e+00, %6683
  %6910 = fmul fast float %6908, %6909
  %6911 = call float @dx.op.unary.f32(i32 6, float %6910)  ; FAbs(value)
  %6912 = fmul fast float %6897, %6702
  %6913 = fmul fast float %6912, %6904
  %6914 = call float @dx.op.unary.f32(i32 6, float %6913)  ; FAbs(value)
  %6915 = call float @dx.op.unary.f32(i32 6, float %6907)  ; FAbs(value)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6914, float %6911)  ; FMax(a,b)
  %6917 = call float @dx.op.binary.f32(i32 35, float %6915, float %6916)  ; FMax(a,b)
  %6918 = fmul fast float %6917, 2.000000e+00
  %6919 = call float @dx.op.unary.f32(i32 23, float %6918)  ; Log(value)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6919, float %6900)  ; FMax(a,b)
  %6921 = call float @dx.op.unary.f32(i32 22, float %6920)  ; Frc(value)
  %6922 = fadd fast float %6921, 0xBFEA666660000000
  %6923 = fmul fast float %6922, 8.000000e+00
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = call float @dx.op.unary.f32(i32 27, float %6920)  ; Round_ni(value)
  %6926 = fadd fast float %6925, %6924
  %6927 = call float @dx.op.binary.f32(i32 36, float %6926, float %6902)  ; FMin(a,b)
  %6928 = call float @dx.op.unary.f32(i32 27, float %6927)  ; Round_ni(value)
  %6929 = fsub fast float -0.000000e+00, %6928
  %6930 = call float @dx.op.unary.f32(i32 21, float %6929)  ; Exp(value)
  %6931 = fmul fast float %6930, %6904
  %6932 = fmul fast float %6931, %6877
  %6933 = fmul fast float %6931, %6881
  %6934 = fmul fast float %6932, 2.500000e-01
  %6935 = fmul fast float %6933, 2.500000e-01
  %6936 = fadd fast float %6934, 5.000000e-01
  %6937 = fadd fast float %6935, 5.000000e-01
  %6938 = fsub fast float %6902, %6900
  %6939 = fptoui float %6938 to i32
  %6940 = add i32 %6939, 320
  %6941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %6940)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6941, 0
  %6943 = extractvalue %dx.types.CBufRet.f32 %6941, 1
  %6944 = fcmp fast une float %6927, %6902
  %6945 = fsub fast float %6877, %6942
  %6946 = fsub fast float %6881, %6943
  %6947 = call float @dx.op.unary.f32(i32 6, float %6945)  ; FAbs(value)
  %6948 = call float @dx.op.unary.f32(i32 6, float %6946)  ; FAbs(value)
  %6949 = fmul fast float %6947, %6931
  %6950 = fmul fast float %6948, %6931
  %6951 = fcmp fast olt float %6949, 1.000000e+00
  %6952 = fcmp fast olt float %6950, 1.000000e+00
  %6953 = and i1 %6951, %6952
  %6954 = or i1 %6944, %6953
  br i1 %6954, label %6955, label %7252, !dx.controlflow.hints !114

; <label>:6955                                    ; preds = %6893
  %6956 = fmul fast float %6933, 5.000000e-01
  %6957 = fmul fast float %6932, 5.000000e-01
  %6958 = fadd fast float %6956, 5.000000e-01
  %6959 = fadd fast float %6957, 5.000000e-01
  %6960 = sitofp i32 %6899 to float
  %6961 = fsub fast float %6927, %6960
  %6962 = call float @dx.op.unary.f32(i32 27, float %6961)  ; Round_ni(value)
  %6963 = call float @dx.op.unary.f32(i32 22, float %6927)  ; Frc(value)
  %6964 = call float @dx.op.unary.f32(i32 22, float %6959)  ; Frc(value)
  %6965 = call float @dx.op.unary.f32(i32 22, float %6958)  ; Frc(value)
  %6966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %56, float %6964, float %6965, float %6962, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6967 = extractvalue %dx.types.ResRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.ResRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.ResRet.f32 %6966, 2
  %6970 = extractvalue %dx.types.ResRet.f32 %6966, 3
  %6971 = fcmp fast ogt float %6963, 0.000000e+00
  br i1 %6971, label %6972, label %6993, !dx.controlflow.hints !115

; <label>:6972                                    ; preds = %6955
  %6973 = fadd fast float %6962, 1.000000e+00
  %6974 = call float @dx.op.unary.f32(i32 22, float %6936)  ; Frc(value)
  %6975 = call float @dx.op.unary.f32(i32 22, float %6937)  ; Frc(value)
  %6976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %56, float %6974, float %6975, float %6973, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.ResRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.ResRet.f32 %6976, 2
  %6980 = extractvalue %dx.types.ResRet.f32 %6976, 3
  %6981 = fsub fast float %6977, %6967
  %6982 = fsub fast float %6978, %6968
  %6983 = fsub fast float %6979, %6969
  %6984 = fsub fast float %6980, %6970
  %6985 = fmul fast float %6981, %6963
  %6986 = fmul fast float %6982, %6963
  %6987 = fmul fast float %6983, %6963
  %6988 = fmul fast float %6984, %6963
  %6989 = fadd fast float %6985, %6967
  %6990 = fadd fast float %6986, %6968
  %6991 = fadd fast float %6987, %6969
  %6992 = fadd fast float %6988, %6970
  br label %6993

; <label>:6993                                    ; preds = %6972, %6955
  %6994 = phi float [ %6989, %6972 ], [ %6967, %6955 ]
  %6995 = phi float [ %6990, %6972 ], [ %6968, %6955 ]
  %6996 = phi float [ %6991, %6972 ], [ %6969, %6955 ]
  %6997 = phi float [ %6992, %6972 ], [ %6970, %6955 ]
  %6998 = fadd fast float %6994, -5.000000e-01
  %6999 = fadd fast float %6996, -5.000000e-01
  %7000 = fmul fast float %6998, 0xBFD5555560000000
  %7001 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6999, float %7000)  ; FMad(a,b,c)
  %7002 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6995, float 0.000000e+00)  ; FMad(a,b,c)
  %7003 = fadd fast float %7002, %6997
  %7004 = fmul fast float %6998, -7.500000e-01
  %7005 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6999, float %7004)  ; FMad(a,b,c)
  %7006 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6995, float 0.000000e+00)  ; FMad(a,b,c)
  %7007 = fadd fast float %7006, %6997
  %7008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.f32 %7008, 0
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.CBufRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.CBufRet.f32 %7010, 2
  %7014 = extractvalue %dx.types.CBufRet.f32 %7010, 3
  %7015 = fsub fast float %7011, %7001
  %7016 = fsub fast float %7012, %7003
  %7017 = fsub fast float %7013, %7005
  %7018 = fsub fast float %7014, %7007
  %7019 = fmul fast float %7015, %7009
  %7020 = fmul fast float %7016, %7009
  %7021 = fmul fast float %7017, %7009
  %7022 = fmul fast float %7018, %7009
  %7023 = fadd fast float %7019, %7001
  %7024 = fadd fast float %7020, %7003
  %7025 = fadd fast float %7021, %7005
  %7026 = fadd fast float %7022, %7007
  %7027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7028 = extractvalue %dx.types.ResRet.i32 %7027, 0
  %7029 = and i32 %7028, 536870911
  %7030 = uitofp i32 %7029 to float
  %7031 = fmul fast float %7030, %6877
  %7032 = fmul fast float %7030, %6881
  %7033 = fptoui float %7031 to i32
  %7034 = fptoui float %7032 to i32
  %7035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7036 = extractvalue %dx.types.ResRet.i32 %7035, 0
  %7037 = and i32 %7036, 31
  %7038 = lshr i32 %7033, %7037
  %7039 = lshr i32 %7034, %7037
  %7040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7041 = extractvalue %dx.types.ResRet.i32 %7040, 0
  %7042 = and i32 %7041, 31
  %7043 = shl i32 1, %7042
  %7044 = call i32 @dx.op.binary.i32(i32 40, i32 %7043, i32 4)  ; UMin(a,b)
  %7045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7046 = extractvalue %dx.types.ResRet.i32 %7045, 0
  %7047 = extractvalue %dx.types.ResRet.i32 %7045, 1
  %7048 = icmp eq i32 %7044, 0
  br i1 %7048, label %7090, label %7049

; <label>:7049                                    ; preds = %6993
  br label %7050

; <label>:7050                                    ; preds = %7078, %7049
  %7051 = phi i32 [ %7081, %7078 ], [ 0, %7049 ]
  %7052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7053 = extractvalue %dx.types.ResRet.i32 %7052, 0
  %7054 = lshr i32 %7053, 16
  %7055 = and i32 %7054, 31
  %7056 = shl i32 %7039, %7055
  %7057 = add i32 %7056, %7038
  %7058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7059 = extractvalue %dx.types.ResRet.i32 %7058, 0
  %7060 = and i32 %7059, 31
  %7061 = shl i32 %7057, %7060
  %7062 = add i32 %7061, %7051
  %7063 = shl i32 %7062, 2
  %7064 = add i32 %7063, 32
  %7065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7064, i32 undef)  ; BufferLoad(srv,index,wot)
  %7066 = extractvalue %dx.types.ResRet.i32 %7065, 0
  %7067 = icmp slt i32 %7066, 0
  %7068 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %7051
  %7069 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %7051
  %7070 = bitcast float* %7068 to i32*
  %7071 = bitcast float* %7069 to i32*
  br i1 %7067, label %7072, label %7078

; <label>:7072                                    ; preds = %7050
  %7073 = and i32 %7066, 1073741823
  %7074 = add nuw nsw i32 %7073, 20
  %7075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7074, i32 undef)  ; BufferLoad(srv,index,wot)
  %7076 = extractvalue %dx.types.ResRet.i32 %7075, 0
  %7077 = extractvalue %dx.types.ResRet.i32 %7075, 1
  br label %7078

; <label>:7078                                    ; preds = %7072, %7050
  %7079 = phi i32 [ %7076, %7072 ], [ %7046, %7050 ]
  %7080 = phi i32 [ %7077, %7072 ], [ %7047, %7050 ]
  store i32 %7079, i32* %7070, align 4
  store i32 %7080, i32* %7071, align 4
  %7081 = add nuw i32 %7051, 1
  %7082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7083 = extractvalue %dx.types.CBufRet.i32 %7082, 2
  %7084 = icmp eq i32 %7083, 0
  %7085 = icmp ugt i32 %7066, -1073741825
  %7086 = and i1 %7085, %7084
  %7087 = icmp ult i32 %7081, %7044
  %7088 = and i1 %7086, %7087
  br i1 %7088, label %7050, label %7089

; <label>:7089                                    ; preds = %7078
  br label %7090

; <label>:7090                                    ; preds = %7089, %6993
  %7091 = phi i32 [ 0, %6993 ], [ %7081, %7089 ]
  %7092 = extractvalue %dx.types.CBufRet.f32 %6855, 2
  %7093 = fptoui float %7092 to i32
  %7094 = icmp eq i32 %7093, 0
  br i1 %7094, label %7146, label %7095

; <label>:7095                                    ; preds = %7090
  br label %7096

; <label>:7096                                    ; preds = %7141, %7095
  %7097 = phi i32 [ %7142, %7141 ], [ %7091, %7095 ]
  %7098 = phi i32 [ %7143, %7141 ], [ 0, %7095 ]
  %7099 = lshr i32 %7098, 2
  %7100 = and i32 %7098, 3
  %7101 = add nuw nsw i32 %7099, 83
  %7102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 %7101)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.i32 %7102, 0
  %7104 = extractvalue %dx.types.CBufRet.i32 %7102, 1
  %7105 = extractvalue %dx.types.CBufRet.i32 %7102, 2
  %7106 = extractvalue %dx.types.CBufRet.i32 %7102, 3
  %7107 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 0
  store i32 %7103, i32* %7107, align 4
  %7108 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 1
  store i32 %7104, i32* %7108, align 4
  %7109 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 2
  store i32 %7105, i32* %7109, align 4
  %7110 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 3
  store i32 %7106, i32* %7110, align 4
  %7111 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 %7100
  %7112 = load i32, i32* %7111, align 4, !tbaa !116, !noalias !120
  %7113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7114 = extractvalue %dx.types.ResRet.i32 %7113, 0
  %7115 = lshr i32 %7114, 16
  %7116 = and i32 %7115, 31
  %7117 = shl i32 %7039, %7116
  %7118 = add i32 %7117, %7038
  %7119 = shl i32 %7118, 2
  %7120 = add i32 %7119, %7112
  %7121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7120, i32 undef)  ; BufferLoad(srv,index,wot)
  %7122 = extractvalue %dx.types.ResRet.i32 %7121, 0
  %7123 = icmp eq i32 %7122, 0
  br i1 %7123, label %7141, label %7124

; <label>:7124                                    ; preds = %7096
  %7125 = icmp slt i32 %7122, 0
  %7126 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %7097
  %7127 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %7097
  %7128 = bitcast float* %7126 to i32*
  %7129 = bitcast float* %7127 to i32*
  br i1 %7125, label %7130, label %7137

; <label>:7130                                    ; preds = %7124
  %7131 = and i32 %7122, 1073741823
  %7132 = add i32 %7112, 20
  %7133 = add i32 %7132, %7131
  %7134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7133, i32 undef)  ; BufferLoad(srv,index,wot)
  %7135 = extractvalue %dx.types.ResRet.i32 %7134, 0
  %7136 = extractvalue %dx.types.ResRet.i32 %7134, 1
  br label %7137

; <label>:7137                                    ; preds = %7130, %7124
  %7138 = phi i32 [ %7135, %7130 ], [ %7046, %7124 ]
  %7139 = phi i32 [ %7136, %7130 ], [ %7047, %7124 ]
  store i32 %7138, i32* %7128, align 4
  store i32 %7139, i32* %7129, align 4
  %7140 = add i32 %7097, 1
  br label %7141

; <label>:7141                                    ; preds = %7137, %7096
  %7142 = phi i32 [ %7097, %7096 ], [ %7140, %7137 ]
  %7143 = add nuw i32 %7098, 1
  %7144 = icmp eq i32 %7143, %7093
  br i1 %7144, label %7145, label %7096

; <label>:7145                                    ; preds = %7141
  br label %7146

; <label>:7146                                    ; preds = %7145, %7090
  %7147 = phi i32 [ %7091, %7090 ], [ %7142, %7145 ]
  %7148 = icmp eq i32 %7147, 1
  %7149 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 0
  %7150 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 0
  br i1 %7148, label %7151, label %7154

; <label>:7151                                    ; preds = %7146
  %7152 = load float, float* %7149, align 4
  %7153 = load float, float* %7150, align 4
  br label %7181

; <label>:7154                                    ; preds = %7146
  %7155 = load float, float* %7149, align 4
  %7156 = load float, float* %7150, align 4
  %7157 = fdiv fast float 1.000000e+00, %7156
  %7158 = fsub fast float %7155, %7157
  %7159 = icmp ugt i32 %7147, 1
  br i1 %7159, label %7160, label %7176

; <label>:7160                                    ; preds = %7154
  br label %7161

; <label>:7161                                    ; preds = %7161, %7160
  %7162 = phi float [ %7171, %7161 ], [ %7158, %7160 ]
  %7163 = phi float [ %7172, %7161 ], [ %7155, %7160 ]
  %7164 = phi i32 [ %7173, %7161 ], [ 1, %7160 ]
  %7165 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %7164
  %7166 = load float, float* %7165, align 4
  %7167 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %7164
  %7168 = load float, float* %7167, align 4
  %7169 = fdiv fast float 1.000000e+00, %7168
  %7170 = fsub fast float %7166, %7169
  %7171 = call float @dx.op.binary.f32(i32 36, float %7162, float %7170)  ; FMin(a,b)
  %7172 = call float @dx.op.binary.f32(i32 35, float %7163, float %7166)  ; FMax(a,b)
  %7173 = add nuw i32 %7164, 1
  %7174 = icmp eq i32 %7173, %7147
  br i1 %7174, label %7175, label %7161

; <label>:7175                                    ; preds = %7161
  br label %7176

; <label>:7176                                    ; preds = %7175, %7154
  %7177 = phi float [ %7158, %7154 ], [ %7171, %7175 ]
  %7178 = phi float [ %7155, %7154 ], [ %7172, %7175 ]
  %7179 = fsub fast float %7178, %7177
  %7180 = fdiv fast float 1.000000e+00, %7179
  br label %7181

; <label>:7181                                    ; preds = %7176, %7151
  %7182 = phi float [ %7152, %7151 ], [ %7178, %7176 ]
  %7183 = phi float [ %7153, %7151 ], [ %7180, %7176 ]
  %7184 = fadd fast float %6885, %7182
  %7185 = fmul fast float %7184, %7183
  %7186 = call float @dx.op.unary.f32(i32 7, float %7185)  ; Saturate(value)
  %7187 = fmul fast float %7186, 2.000000e+00
  %7188 = fsub fast float 1.000000e+00, %7187
  %7189 = fmul fast float %7023, %7023
  %7190 = fsub fast float %7024, %7189
  %7191 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7190)  ; FMax(a,b)
  %7192 = fdiv fast float 1.000000e+00, %7191
  %7193 = fmul fast float %7024, %7023
  %7194 = fsub fast float %7025, %7193
  %7195 = fsub fast float %7188, %7023
  %7196 = fmul fast float %7188, %7188
  %7197 = fsub fast float %7196, %7024
  %7198 = fmul fast float %7192, %7194
  %7199 = fmul fast float %7198, %7195
  %7200 = fsub fast float %7197, %7199
  %7201 = fmul fast float %7024, %7024
  %7202 = fsub fast float %7026, %7201
  %7203 = fmul fast float %7194, %7194
  %7204 = fmul fast float %7203, %7192
  %7205 = fsub fast float %7202, %7204
  %7206 = fdiv fast float %7200, %7205
  %7207 = fmul fast float %7206, %7194
  %7208 = fsub fast float %7195, %7207
  %7209 = fmul fast float %7208, %7192
  %7210 = fmul fast float %7209, %7023
  %7211 = fsub fast float 1.000000e+00, %7210
  %7212 = fmul fast float %7206, %7024
  %7213 = fsub fast float %7211, %7212
  %7214 = fmul fast float %7209, %7209
  %7215 = fmul fast float %7206, 4.000000e+00
  %7216 = fmul fast float %7215, %7213
  %7217 = fsub fast float %7214, %7216
  %7218 = call float @dx.op.unary.f32(i32 24, float %7217)  ; Sqrt(value)
  %7219 = fcmp fast oge float %7209, 0.000000e+00
  %7220 = fsub fast float -0.000000e+00, %7218
  %7221 = select i1 %7219, float %7220, float %7218
  %7222 = fsub fast float %7221, %7209
  %7223 = fdiv fast float %7222, %7206
  %7224 = fdiv fast float %7213, %7222
  %7225 = fmul fast float %7223, 5.000000e-01
  %7226 = fmul fast float %7224, 2.000000e+00
  %7227 = select i1 %7219, float %7225, float %7226
  %7228 = select i1 %7219, float %7226, float %7225
  %7229 = call float @dx.op.binary.f32(i32 35, float %7227, float %7228)  ; FMax(a,b)
  %7230 = call float @dx.op.binary.f32(i32 36, float %7227, float %7228)  ; FMin(a,b)
  %7231 = fcmp fast ogt float %7188, %7229
  %7232 = fsub fast float %7188, %7230
  %7233 = fsub fast float %7188, %7229
  %7234 = fsub fast float %7229, %7230
  %7235 = select i1 %7231, float %7233, float %7234
  %7236 = fmul float %7232, %7235
  %7237 = select i1 %7231, float %7230, float %7188
  %7238 = fcmp fast ogt float %7188, %7230
  %7239 = fmul fast float %7237, %7229
  %7240 = fadd fast float %7237, %7229
  %7241 = fmul fast float %7240, %7023
  %7242 = fadd fast float %7239, %7024
  %7243 = fsub fast float %7242, %7241
  %7244 = fdiv fast float %7243, %7236
  %7245 = select i1 %7238, float %7244, float 0.000000e+00
  %7246 = fsub fast float 1.000000e+00, %7245
  %7247 = select i1 %7231, float %7246, float %7245
  %7248 = call float @dx.op.unary.f32(i32 7, float %7247)  ; Saturate(value)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7008, 3
  %7250 = fmul fast float %7249, %7248
  %7251 = fsub fast float 1.000000e+00, %7250
  br label %7252

; <label>:7252                                    ; preds = %7181, %6893, %6858, %6854, %6818
  %7253 = phi float [ 1.000000e+00, %6818 ], [ %7251, %7181 ], [ 1.000000e+00, %6858 ], [ 1.000000e+00, %6893 ], [ 1.000000e+00, %6854 ]
  %7254 = fcmp fast ogt float %6850, 0.000000e+00
  br i1 %7254, label %7255, label %7419, !dx.controlflow.hints !129

; <label>:7255                                    ; preds = %7252
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 2
  %7258 = fadd fast float %7257, %6731
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 2
  %7261 = extractvalue %dx.types.CBufRet.f32 %7259, 3
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7264 = call float @dx.op.binary.f32(i32 35, float %7258, float 0.000000e+00)  ; FMax(a,b)
  %7265 = fadd fast float %7264, 0x3F10000000000000
  %7266 = fcmp fast oeq float %7263, 0.000000e+00
  br i1 %7266, label %7267, label %7334

; <label>:7267                                    ; preds = %7255
  %7268 = extractvalue %dx.types.CBufRet.f32 %7259, 1
  %7269 = extractvalue %dx.types.CBufRet.f32 %7259, 0
  %7270 = fmul fast float %7269, %6749
  %7271 = fmul fast float %7268, %6750
  %7272 = fadd fast float %7270, 5.000000e-01
  %7273 = call float @dx.op.unary.f32(i32 27, float %7272)  ; Round_ni(value)
  %7274 = fadd fast float %7271, 5.000000e-01
  %7275 = call float @dx.op.unary.f32(i32 27, float %7274)  ; Round_ni(value)
  %7276 = fsub fast float %7272, %7273
  %7277 = fsub fast float %7274, %7275
  %7278 = fadd fast float %7273, -5.000000e-01
  %7279 = fadd fast float %7275, -5.000000e-01
  %7280 = fmul fast float %7276, 2.000000e+00
  %7281 = fsub fast float 3.000000e+00, %7280
  %7282 = fadd fast float %7280, 1.000000e+00
  %7283 = fsub fast float 2.000000e+00, %7276
  %7284 = bitcast float %7281 to i32
  %7285 = sub nsw i32 2129859010, %7284
  %7286 = bitcast i32 %7285 to float
  %7287 = fmul fast float %7286, %7283
  %7288 = fadd fast float %7287, -1.000000e+00
  %7289 = bitcast float %7282 to i32
  %7290 = sub nsw i32 2129859010, %7289
  %7291 = bitcast i32 %7290 to float
  %7292 = fmul fast float %7291, %7276
  %7293 = fadd fast float %7292, 1.000000e+00
  %7294 = fmul fast float %7277, 2.000000e+00
  %7295 = fsub fast float 3.000000e+00, %7294
  %7296 = fadd fast float %7294, 1.000000e+00
  %7297 = fsub fast float 2.000000e+00, %7277
  %7298 = bitcast float %7295 to i32
  %7299 = sub nsw i32 2129859010, %7298
  %7300 = bitcast i32 %7299 to float
  %7301 = fmul fast float %7300, %7297
  %7302 = fadd fast float %7301, -1.000000e+00
  %7303 = bitcast float %7296 to i32
  %7304 = sub nsw i32 2129859010, %7303
  %7305 = bitcast i32 %7304 to float
  %7306 = fmul fast float %7305, %7277
  %7307 = fadd fast float %7306, 1.000000e+00
  %7308 = fadd fast float %7288, %7278
  %7309 = fmul fast float %7308, %7260
  %7310 = fadd fast float %7302, %7279
  %7311 = fmul fast float %7310, %7261
  %7312 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %7309, float %7311, float undef, float undef, i32 0, i32 0, i32 undef, float %7265)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7313 = extractvalue %dx.types.ResRet.f32 %7312, 0
  %7314 = fmul fast float %7313, %7281
  %7315 = fadd fast float %7293, %7278
  %7316 = fmul fast float %7315, %7260
  %7317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %7316, float %7311, float undef, float undef, i32 0, i32 0, i32 undef, float %7265)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7318 = extractvalue %dx.types.ResRet.f32 %7317, 0
  %7319 = fmul fast float %7318, %7282
  %7320 = fadd fast float %7307, %7279
  %7321 = fmul fast float %7320, %7261
  %7322 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %7309, float %7321, float undef, float undef, i32 0, i32 0, i32 undef, float %7265)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7323 = extractvalue %dx.types.ResRet.f32 %7322, 0
  %7324 = fmul fast float %7323, %7281
  %7325 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %7316, float %7321, float undef, float undef, i32 0, i32 0, i32 undef, float %7265)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = fmul fast float %7326, %7282
  %7328 = fadd fast float %7327, %7324
  %7329 = fmul fast float %7328, %7296
  %7330 = fadd fast float %7319, %7314
  %7331 = fmul fast float %7330, %7295
  %7332 = fadd fast float %7331, %7329
  %7333 = fmul fast float %7332, 6.250000e-02
  br label %7419

; <label>:7334                                    ; preds = %7255
  %7335 = fmul fast float %319, 0x401921FB60000000
  %7336 = call float @dx.op.unary.f32(i32 13, float %7335)  ; Sin(value)
  %7337 = call float @dx.op.unary.f32(i32 12, float %7335)  ; Cos(value)
  %7338 = fsub fast float -0.000000e+00, %7336
  br label %7339

; <label>:7339                                    ; preds = %7388, %7334
  %7340 = phi float [ 0.000000e+00, %7334 ], [ %7383, %7388 ]
  %7341 = phi float [ 0.000000e+00, %7334 ], [ %7385, %7388 ]
  %7342 = phi i32 [ 0, %7334 ], [ %7389, %7388 ]
  %7343 = mul i32 %7342, 2
  %7344 = add i32 0, %7343
  %7345 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7344
  %7346 = load float, float* %7345, align 4
  %7347 = mul i32 %7342, 2
  %7348 = add i32 1, %7347
  %7349 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7348
  %7350 = load float, float* %7349, align 4
  %7351 = fmul fast float %7346, %7337
  %7352 = call float @dx.op.tertiary.f32(i32 46, float %7350, float %7338, float %7351)  ; FMad(a,b,c)
  %7353 = fmul fast float %7346, %7336
  %7354 = call float @dx.op.tertiary.f32(i32 46, float %7350, float %7337, float %7353)  ; FMad(a,b,c)
  %7355 = fmul fast float %7352, %7263
  %7356 = fmul fast float %7354, %7263
  %7357 = fadd fast float %7355, %6749
  %7358 = fadd fast float %7356, %6750
  %7359 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %58, float %7357, float %7358, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7360 = extractvalue %dx.types.ResRet.f32 %7359, 0
  %7361 = extractvalue %dx.types.ResRet.f32 %7359, 1
  %7362 = extractvalue %dx.types.ResRet.f32 %7359, 2
  %7363 = extractvalue %dx.types.ResRet.f32 %7359, 3
  %7364 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 0
  store float %7360, float* %7364, align 4
  %7365 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 1
  store float %7361, float* %7365, align 4
  %7366 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 2
  store float %7362, float* %7366, align 4
  %7367 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 3
  store float %7363, float* %7367, align 4
  %7368 = fsub fast float %7360, %7265
  %7369 = fcmp fast olt float %7368, 0.000000e+00
  %7370 = select i1 %7369, float 0.000000e+00, float 1.000000e+00
  %7371 = fadd fast float %7370, %7340
  %7372 = fmul fast float %7370, %7368
  %7373 = fadd fast float %7372, %7341
  br label %7374

; <label>:7374                                    ; preds = %7374, %7339
  %7375 = phi i32 [ 1, %7339 ], [ %7386, %7374 ]
  %7376 = phi float [ %7373, %7339 ], [ %7385, %7374 ]
  %7377 = phi float [ %7371, %7339 ], [ %7383, %7374 ]
  %7378 = getelementptr [4 x float], [4 x float]* %116, i32 0, i32 %7375
  %7379 = load float, float* %7378, align 4, !tbaa !130, !noalias !120
  %7380 = fsub fast float %7379, %7265
  %7381 = fcmp fast olt float %7380, 0.000000e+00
  %7382 = select i1 %7381, float 0.000000e+00, float 1.000000e+00
  %7383 = fadd fast float %7382, %7377
  %7384 = fmul fast float %7382, %7380
  %7385 = fadd fast float %7384, %7376
  %7386 = add nuw nsw i32 %7375, 1
  %7387 = icmp eq i32 %7386, 4
  br i1 %7387, label %7388, label %7374, !llvm.loop !132

; <label>:7388                                    ; preds = %7374
  %7389 = add nuw nsw i32 %7342, 1
  %7390 = icmp eq i32 %7389, 8
  br i1 %7390, label %7391, label %7339, !llvm.loop !133

; <label>:7391                                    ; preds = %7388
  %7392 = fdiv fast float 1.000000e+00, %7383
  %7393 = fmul fast float %7392, %7385
  %7394 = fdiv fast float 1.000000e+00, %7265
  %7395 = fmul fast float %7393, %7394
  %7396 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7397 = call float @dx.op.binary.f32(i32 35, float %7396, float 0.000000e+00)  ; FMax(a,b)
  %7398 = fmul fast float %7383, 3.125000e-02
  %7399 = call float @dx.op.unary.f32(i32 7, float %7398)  ; Saturate(value)
  %7400 = fmul fast float %7399, 2.000000e+00
  %7401 = fadd fast float %7400, -1.000000e+00
  %7402 = fcmp fast ogt float %7401, 0.000000e+00
  %7403 = fcmp fast olt float %7401, 0.000000e+00
  %7404 = zext i1 %7402 to i32
  %7405 = zext i1 %7403 to i32
  %7406 = sub nsw i32 %7404, %7405
  %7407 = sitofp i32 %7406 to float
  %7408 = fmul fast float %7407, %7401
  %7409 = fsub fast float 1.000000e+00, %7408
  %7410 = fmul fast float %7409, %7409
  %7411 = fmul fast float %7410, %7409
  %7412 = fsub fast float %7409, %7411
  %7413 = fmul fast float %7412, %7397
  %7414 = fsub fast float 1.000000e+00, %7411
  %7415 = fsub fast float %7414, %7413
  %7416 = fmul fast float %7407, 5.000000e-01
  %7417 = fmul fast float %7416, %7415
  %7418 = fsub fast float 5.000000e-01, %7417
  br label %7419

; <label>:7419                                    ; preds = %7391, %7267, %7252
  %7420 = phi float [ 1.000000e+00, %7252 ], [ %7333, %7267 ], [ %7418, %7391 ]
  %7421 = fcmp fast ogt float %6848, 0.000000e+00
  br i1 %7421, label %7422, label %7586, !dx.controlflow.hints !134

; <label>:7422                                    ; preds = %7419
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 1
  %7425 = fadd fast float %7424, %6731
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 2
  %7428 = extractvalue %dx.types.CBufRet.f32 %7426, 3
  %7429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7430 = extractvalue %dx.types.CBufRet.f32 %7429, 1
  %7431 = call float @dx.op.binary.f32(i32 35, float %7425, float 0.000000e+00)  ; FMax(a,b)
  %7432 = fadd fast float %7431, 0x3F10000000000000
  %7433 = fcmp fast oeq float %7430, 0.000000e+00
  br i1 %7433, label %7434, label %7501

; <label>:7434                                    ; preds = %7422
  %7435 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7436 = extractvalue %dx.types.CBufRet.f32 %7426, 0
  %7437 = fmul fast float %7436, %6741
  %7438 = fmul fast float %7435, %6742
  %7439 = fadd fast float %7437, 5.000000e-01
  %7440 = call float @dx.op.unary.f32(i32 27, float %7439)  ; Round_ni(value)
  %7441 = fadd fast float %7438, 5.000000e-01
  %7442 = call float @dx.op.unary.f32(i32 27, float %7441)  ; Round_ni(value)
  %7443 = fsub fast float %7439, %7440
  %7444 = fsub fast float %7441, %7442
  %7445 = fadd fast float %7440, -5.000000e-01
  %7446 = fadd fast float %7442, -5.000000e-01
  %7447 = fmul fast float %7443, 2.000000e+00
  %7448 = fsub fast float 3.000000e+00, %7447
  %7449 = fadd fast float %7447, 1.000000e+00
  %7450 = fsub fast float 2.000000e+00, %7443
  %7451 = bitcast float %7448 to i32
  %7452 = sub nsw i32 2129859010, %7451
  %7453 = bitcast i32 %7452 to float
  %7454 = fmul fast float %7453, %7450
  %7455 = fadd fast float %7454, -1.000000e+00
  %7456 = bitcast float %7449 to i32
  %7457 = sub nsw i32 2129859010, %7456
  %7458 = bitcast i32 %7457 to float
  %7459 = fmul fast float %7458, %7443
  %7460 = fadd fast float %7459, 1.000000e+00
  %7461 = fmul fast float %7444, 2.000000e+00
  %7462 = fsub fast float 3.000000e+00, %7461
  %7463 = fadd fast float %7461, 1.000000e+00
  %7464 = fsub fast float 2.000000e+00, %7444
  %7465 = bitcast float %7462 to i32
  %7466 = sub nsw i32 2129859010, %7465
  %7467 = bitcast i32 %7466 to float
  %7468 = fmul fast float %7467, %7464
  %7469 = fadd fast float %7468, -1.000000e+00
  %7470 = bitcast float %7463 to i32
  %7471 = sub nsw i32 2129859010, %7470
  %7472 = bitcast i32 %7471 to float
  %7473 = fmul fast float %7472, %7444
  %7474 = fadd fast float %7473, 1.000000e+00
  %7475 = fadd fast float %7455, %7445
  %7476 = fmul fast float %7475, %7427
  %7477 = fadd fast float %7469, %7446
  %7478 = fmul fast float %7477, %7428
  %7479 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %7476, float %7478, float undef, float undef, i32 0, i32 0, i32 undef, float %7432)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7480 = extractvalue %dx.types.ResRet.f32 %7479, 0
  %7481 = fmul fast float %7480, %7448
  %7482 = fadd fast float %7460, %7445
  %7483 = fmul fast float %7482, %7427
  %7484 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %7483, float %7478, float undef, float undef, i32 0, i32 0, i32 undef, float %7432)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7485 = extractvalue %dx.types.ResRet.f32 %7484, 0
  %7486 = fmul fast float %7485, %7449
  %7487 = fadd fast float %7474, %7446
  %7488 = fmul fast float %7487, %7428
  %7489 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %7476, float %7488, float undef, float undef, i32 0, i32 0, i32 undef, float %7432)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7490 = extractvalue %dx.types.ResRet.f32 %7489, 0
  %7491 = fmul fast float %7490, %7448
  %7492 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %7483, float %7488, float undef, float undef, i32 0, i32 0, i32 undef, float %7432)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7493 = extractvalue %dx.types.ResRet.f32 %7492, 0
  %7494 = fmul fast float %7493, %7449
  %7495 = fadd fast float %7494, %7491
  %7496 = fmul fast float %7495, %7463
  %7497 = fadd fast float %7486, %7481
  %7498 = fmul fast float %7497, %7462
  %7499 = fadd fast float %7498, %7496
  %7500 = fmul fast float %7499, 6.250000e-02
  br label %7586

; <label>:7501                                    ; preds = %7422
  %7502 = fmul fast float %319, 0x401921FB60000000
  %7503 = call float @dx.op.unary.f32(i32 13, float %7502)  ; Sin(value)
  %7504 = call float @dx.op.unary.f32(i32 12, float %7502)  ; Cos(value)
  %7505 = fsub fast float -0.000000e+00, %7503
  br label %7506

; <label>:7506                                    ; preds = %7555, %7501
  %7507 = phi float [ 0.000000e+00, %7501 ], [ %7550, %7555 ]
  %7508 = phi float [ 0.000000e+00, %7501 ], [ %7552, %7555 ]
  %7509 = phi i32 [ 0, %7501 ], [ %7556, %7555 ]
  %7510 = mul i32 %7509, 2
  %7511 = add i32 0, %7510
  %7512 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7511
  %7513 = load float, float* %7512, align 4
  %7514 = mul i32 %7509, 2
  %7515 = add i32 1, %7514
  %7516 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7515
  %7517 = load float, float* %7516, align 4
  %7518 = fmul fast float %7513, %7504
  %7519 = call float @dx.op.tertiary.f32(i32 46, float %7517, float %7505, float %7518)  ; FMad(a,b,c)
  %7520 = fmul fast float %7513, %7503
  %7521 = call float @dx.op.tertiary.f32(i32 46, float %7517, float %7504, float %7520)  ; FMad(a,b,c)
  %7522 = fmul fast float %7519, %7430
  %7523 = fmul fast float %7521, %7430
  %7524 = fadd fast float %7522, %6741
  %7525 = fadd fast float %7523, %6742
  %7526 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %58, float %7524, float %7525, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.ResRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.ResRet.f32 %7526, 2
  %7530 = extractvalue %dx.types.ResRet.f32 %7526, 3
  %7531 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 0
  store float %7527, float* %7531, align 4
  %7532 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 1
  store float %7528, float* %7532, align 4
  %7533 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 2
  store float %7529, float* %7533, align 4
  %7534 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 3
  store float %7530, float* %7534, align 4
  %7535 = fsub fast float %7527, %7432
  %7536 = fcmp fast olt float %7535, 0.000000e+00
  %7537 = select i1 %7536, float 0.000000e+00, float 1.000000e+00
  %7538 = fadd fast float %7537, %7507
  %7539 = fmul fast float %7537, %7535
  %7540 = fadd fast float %7539, %7508
  br label %7541

; <label>:7541                                    ; preds = %7541, %7506
  %7542 = phi i32 [ 1, %7506 ], [ %7553, %7541 ]
  %7543 = phi float [ %7540, %7506 ], [ %7552, %7541 ]
  %7544 = phi float [ %7538, %7506 ], [ %7550, %7541 ]
  %7545 = getelementptr [4 x float], [4 x float]* %115, i32 0, i32 %7542
  %7546 = load float, float* %7545, align 4, !tbaa !130, !noalias !120
  %7547 = fsub fast float %7546, %7432
  %7548 = fcmp fast olt float %7547, 0.000000e+00
  %7549 = select i1 %7548, float 0.000000e+00, float 1.000000e+00
  %7550 = fadd fast float %7549, %7544
  %7551 = fmul fast float %7549, %7547
  %7552 = fadd fast float %7551, %7543
  %7553 = add nuw nsw i32 %7542, 1
  %7554 = icmp eq i32 %7553, 4
  br i1 %7554, label %7555, label %7541, !llvm.loop !132

; <label>:7555                                    ; preds = %7541
  %7556 = add nuw nsw i32 %7509, 1
  %7557 = icmp eq i32 %7556, 8
  br i1 %7557, label %7558, label %7506, !llvm.loop !133

; <label>:7558                                    ; preds = %7555
  %7559 = fdiv fast float 1.000000e+00, %7550
  %7560 = fmul fast float %7559, %7552
  %7561 = fdiv fast float 1.000000e+00, %7432
  %7562 = fmul fast float %7560, %7561
  %7563 = call float @dx.op.unary.f32(i32 7, float %7562)  ; Saturate(value)
  %7564 = call float @dx.op.binary.f32(i32 35, float %7563, float 0.000000e+00)  ; FMax(a,b)
  %7565 = fmul fast float %7550, 3.125000e-02
  %7566 = call float @dx.op.unary.f32(i32 7, float %7565)  ; Saturate(value)
  %7567 = fmul fast float %7566, 2.000000e+00
  %7568 = fadd fast float %7567, -1.000000e+00
  %7569 = fcmp fast ogt float %7568, 0.000000e+00
  %7570 = fcmp fast olt float %7568, 0.000000e+00
  %7571 = zext i1 %7569 to i32
  %7572 = zext i1 %7570 to i32
  %7573 = sub nsw i32 %7571, %7572
  %7574 = sitofp i32 %7573 to float
  %7575 = fmul fast float %7574, %7568
  %7576 = fsub fast float 1.000000e+00, %7575
  %7577 = fmul fast float %7576, %7576
  %7578 = fmul fast float %7577, %7576
  %7579 = fsub fast float %7576, %7578
  %7580 = fmul fast float %7579, %7564
  %7581 = fsub fast float 1.000000e+00, %7578
  %7582 = fsub fast float %7581, %7580
  %7583 = fmul fast float %7574, 5.000000e-01
  %7584 = fmul fast float %7583, %7582
  %7585 = fsub fast float 5.000000e-01, %7584
  br label %7586

; <label>:7586                                    ; preds = %7558, %7434, %7419
  %7587 = phi float [ 1.000000e+00, %7419 ], [ %7500, %7434 ], [ %7585, %7558 ]
  %7588 = fcmp fast ogt float %6847, 0.000000e+00
  br i1 %7588, label %7589, label %7907, !dx.controlflow.hints !135

; <label>:7589                                    ; preds = %7586
  %7590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7591 = extractvalue %dx.types.CBufRet.f32 %7590, 0
  %7592 = fadd fast float %7591, %6731
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 2
  %7595 = extractvalue %dx.types.CBufRet.f32 %7593, 3
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 0
  %7598 = call float @dx.op.binary.f32(i32 35, float %7592, float 0.000000e+00)  ; FMax(a,b)
  %7599 = fadd fast float %7598, 0x3F10000000000000
  %7600 = fcmp fast oeq float %7597, 0.000000e+00
  br i1 %6734, label %7601, label %7754, !dx.controlflow.hints !136

; <label>:7601                                    ; preds = %7589
  br i1 %7600, label %7602, label %7669

; <label>:7602                                    ; preds = %7601
  %7603 = extractvalue %dx.types.CBufRet.f32 %7593, 1
  %7604 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7605 = fmul fast float %7604, %6723
  %7606 = fmul fast float %7603, %6727
  %7607 = fadd fast float %7605, 5.000000e-01
  %7608 = call float @dx.op.unary.f32(i32 27, float %7607)  ; Round_ni(value)
  %7609 = fadd fast float %7606, 5.000000e-01
  %7610 = call float @dx.op.unary.f32(i32 27, float %7609)  ; Round_ni(value)
  %7611 = fsub fast float %7607, %7608
  %7612 = fsub fast float %7609, %7610
  %7613 = fadd fast float %7608, -5.000000e-01
  %7614 = fadd fast float %7610, -5.000000e-01
  %7615 = fmul fast float %7611, 2.000000e+00
  %7616 = fsub fast float 3.000000e+00, %7615
  %7617 = fadd fast float %7615, 1.000000e+00
  %7618 = fsub fast float 2.000000e+00, %7611
  %7619 = bitcast float %7616 to i32
  %7620 = sub nsw i32 2129859010, %7619
  %7621 = bitcast i32 %7620 to float
  %7622 = fmul fast float %7621, %7618
  %7623 = fadd fast float %7622, -1.000000e+00
  %7624 = bitcast float %7617 to i32
  %7625 = sub nsw i32 2129859010, %7624
  %7626 = bitcast i32 %7625 to float
  %7627 = fmul fast float %7626, %7611
  %7628 = fadd fast float %7627, 1.000000e+00
  %7629 = fmul fast float %7612, 2.000000e+00
  %7630 = fsub fast float 3.000000e+00, %7629
  %7631 = fadd fast float %7629, 1.000000e+00
  %7632 = fsub fast float 2.000000e+00, %7612
  %7633 = bitcast float %7630 to i32
  %7634 = sub nsw i32 2129859010, %7633
  %7635 = bitcast i32 %7634 to float
  %7636 = fmul fast float %7635, %7632
  %7637 = fadd fast float %7636, -1.000000e+00
  %7638 = bitcast float %7631 to i32
  %7639 = sub nsw i32 2129859010, %7638
  %7640 = bitcast i32 %7639 to float
  %7641 = fmul fast float %7640, %7612
  %7642 = fadd fast float %7641, 1.000000e+00
  %7643 = fadd fast float %7623, %7613
  %7644 = fmul fast float %7643, %7594
  %7645 = fadd fast float %7637, %7614
  %7646 = fmul fast float %7645, %7595
  %7647 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %7644, float %7646, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 0
  %7649 = fmul fast float %7648, %7616
  %7650 = fadd fast float %7628, %7613
  %7651 = fmul fast float %7650, %7594
  %7652 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %7651, float %7646, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7653 = extractvalue %dx.types.ResRet.f32 %7652, 0
  %7654 = fmul fast float %7653, %7617
  %7655 = fadd fast float %7642, %7614
  %7656 = fmul fast float %7655, %7595
  %7657 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %7644, float %7656, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7658 = extractvalue %dx.types.ResRet.f32 %7657, 0
  %7659 = fmul fast float %7658, %7616
  %7660 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %7651, float %7656, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7661 = extractvalue %dx.types.ResRet.f32 %7660, 0
  %7662 = fmul fast float %7661, %7617
  %7663 = fadd fast float %7662, %7659
  %7664 = fmul fast float %7663, %7631
  %7665 = fadd fast float %7654, %7649
  %7666 = fmul fast float %7665, %7630
  %7667 = fadd fast float %7666, %7664
  %7668 = fmul fast float %7667, 6.250000e-02
  br label %7907

; <label>:7669                                    ; preds = %7601
  %7670 = fmul fast float %319, 0x401921FB60000000
  %7671 = call float @dx.op.unary.f32(i32 13, float %7670)  ; Sin(value)
  %7672 = call float @dx.op.unary.f32(i32 12, float %7670)  ; Cos(value)
  %7673 = fsub fast float -0.000000e+00, %7671
  br label %7674

; <label>:7674                                    ; preds = %7723, %7669
  %7675 = phi float [ 0.000000e+00, %7669 ], [ %7718, %7723 ]
  %7676 = phi float [ 0.000000e+00, %7669 ], [ %7720, %7723 ]
  %7677 = phi i32 [ 0, %7669 ], [ %7724, %7723 ]
  %7678 = mul i32 %7677, 2
  %7679 = add i32 0, %7678
  %7680 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7679
  %7681 = load float, float* %7680, align 4
  %7682 = mul i32 %7677, 2
  %7683 = add i32 1, %7682
  %7684 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7683
  %7685 = load float, float* %7684, align 4
  %7686 = fmul fast float %7681, %7672
  %7687 = call float @dx.op.tertiary.f32(i32 46, float %7685, float %7673, float %7686)  ; FMad(a,b,c)
  %7688 = fmul fast float %7681, %7671
  %7689 = call float @dx.op.tertiary.f32(i32 46, float %7685, float %7672, float %7688)  ; FMad(a,b,c)
  %7690 = fmul fast float %7687, %7597
  %7691 = fmul fast float %7689, %7597
  %7692 = fadd fast float %7690, %6723
  %7693 = fadd fast float %7691, %6727
  %7694 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %7692, float %7693, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7695 = extractvalue %dx.types.ResRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.ResRet.f32 %7694, 1
  %7697 = extractvalue %dx.types.ResRet.f32 %7694, 2
  %7698 = extractvalue %dx.types.ResRet.f32 %7694, 3
  %7699 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %7695, float* %7699, align 4
  %7700 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %7696, float* %7700, align 4
  %7701 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %7697, float* %7701, align 4
  %7702 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %7698, float* %7702, align 4
  %7703 = fsub fast float %7695, %7599
  %7704 = fcmp fast olt float %7703, 0.000000e+00
  %7705 = select i1 %7704, float 0.000000e+00, float 1.000000e+00
  %7706 = fadd fast float %7705, %7675
  %7707 = fmul fast float %7705, %7703
  %7708 = fadd fast float %7707, %7676
  br label %7709

; <label>:7709                                    ; preds = %7709, %7674
  %7710 = phi i32 [ 1, %7674 ], [ %7721, %7709 ]
  %7711 = phi float [ %7708, %7674 ], [ %7720, %7709 ]
  %7712 = phi float [ %7706, %7674 ], [ %7718, %7709 ]
  %7713 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %7710
  %7714 = load float, float* %7713, align 4, !tbaa !130, !noalias !120
  %7715 = fsub fast float %7714, %7599
  %7716 = fcmp fast olt float %7715, 0.000000e+00
  %7717 = select i1 %7716, float 0.000000e+00, float 1.000000e+00
  %7718 = fadd fast float %7717, %7712
  %7719 = fmul fast float %7717, %7715
  %7720 = fadd fast float %7719, %7711
  %7721 = add nuw nsw i32 %7710, 1
  %7722 = icmp eq i32 %7721, 4
  br i1 %7722, label %7723, label %7709, !llvm.loop !132

; <label>:7723                                    ; preds = %7709
  %7724 = add nuw nsw i32 %7677, 1
  %7725 = icmp eq i32 %7724, 8
  br i1 %7725, label %7726, label %7674, !llvm.loop !133

; <label>:7726                                    ; preds = %7723
  %7727 = fdiv fast float 1.000000e+00, %7718
  %7728 = fmul fast float %7727, %7720
  %7729 = fdiv fast float 1.000000e+00, %7599
  %7730 = fmul fast float %7728, %7729
  %7731 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  %7732 = call float @dx.op.binary.f32(i32 35, float %7731, float 0.000000e+00)  ; FMax(a,b)
  %7733 = fmul fast float %7718, 3.125000e-02
  %7734 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7735 = fmul fast float %7734, 2.000000e+00
  %7736 = fadd fast float %7735, -1.000000e+00
  %7737 = fcmp fast ogt float %7736, 0.000000e+00
  %7738 = fcmp fast olt float %7736, 0.000000e+00
  %7739 = zext i1 %7737 to i32
  %7740 = zext i1 %7738 to i32
  %7741 = sub nsw i32 %7739, %7740
  %7742 = sitofp i32 %7741 to float
  %7743 = fmul fast float %7742, %7736
  %7744 = fsub fast float 1.000000e+00, %7743
  %7745 = fmul fast float %7744, %7744
  %7746 = fmul fast float %7745, %7744
  %7747 = fsub fast float %7744, %7746
  %7748 = fmul fast float %7747, %7732
  %7749 = fsub fast float 1.000000e+00, %7746
  %7750 = fsub fast float %7749, %7748
  %7751 = fmul fast float %7742, 5.000000e-01
  %7752 = fmul fast float %7751, %7750
  %7753 = fsub fast float 5.000000e-01, %7752
  br label %7907

; <label>:7754                                    ; preds = %7589
  br i1 %7600, label %7755, label %7822

; <label>:7755                                    ; preds = %7754
  %7756 = extractvalue %dx.types.CBufRet.f32 %7593, 1
  %7757 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7758 = fmul fast float %7757, %6723
  %7759 = fmul fast float %7756, %6727
  %7760 = fadd fast float %7758, 5.000000e-01
  %7761 = call float @dx.op.unary.f32(i32 27, float %7760)  ; Round_ni(value)
  %7762 = fadd fast float %7759, 5.000000e-01
  %7763 = call float @dx.op.unary.f32(i32 27, float %7762)  ; Round_ni(value)
  %7764 = fsub fast float %7760, %7761
  %7765 = fsub fast float %7762, %7763
  %7766 = fadd fast float %7761, -5.000000e-01
  %7767 = fadd fast float %7763, -5.000000e-01
  %7768 = fmul fast float %7764, 2.000000e+00
  %7769 = fsub fast float 3.000000e+00, %7768
  %7770 = fadd fast float %7768, 1.000000e+00
  %7771 = fsub fast float 2.000000e+00, %7764
  %7772 = bitcast float %7769 to i32
  %7773 = sub nsw i32 2129859010, %7772
  %7774 = bitcast i32 %7773 to float
  %7775 = fmul fast float %7774, %7771
  %7776 = fadd fast float %7775, -1.000000e+00
  %7777 = bitcast float %7770 to i32
  %7778 = sub nsw i32 2129859010, %7777
  %7779 = bitcast i32 %7778 to float
  %7780 = fmul fast float %7779, %7764
  %7781 = fadd fast float %7780, 1.000000e+00
  %7782 = fmul fast float %7765, 2.000000e+00
  %7783 = fsub fast float 3.000000e+00, %7782
  %7784 = fadd fast float %7782, 1.000000e+00
  %7785 = fsub fast float 2.000000e+00, %7765
  %7786 = bitcast float %7783 to i32
  %7787 = sub nsw i32 2129859010, %7786
  %7788 = bitcast i32 %7787 to float
  %7789 = fmul fast float %7788, %7785
  %7790 = fadd fast float %7789, -1.000000e+00
  %7791 = bitcast float %7784 to i32
  %7792 = sub nsw i32 2129859010, %7791
  %7793 = bitcast i32 %7792 to float
  %7794 = fmul fast float %7793, %7765
  %7795 = fadd fast float %7794, 1.000000e+00
  %7796 = fadd fast float %7776, %7766
  %7797 = fmul fast float %7796, %7594
  %7798 = fadd fast float %7790, %7767
  %7799 = fmul fast float %7798, %7595
  %7800 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %7797, float %7799, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = fmul fast float %7801, %7769
  %7803 = fadd fast float %7781, %7766
  %7804 = fmul fast float %7803, %7594
  %7805 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %7804, float %7799, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7806 = extractvalue %dx.types.ResRet.f32 %7805, 0
  %7807 = fmul fast float %7806, %7770
  %7808 = fadd fast float %7795, %7767
  %7809 = fmul fast float %7808, %7595
  %7810 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %7797, float %7809, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7811 = extractvalue %dx.types.ResRet.f32 %7810, 0
  %7812 = fmul fast float %7811, %7769
  %7813 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %7804, float %7809, float undef, float undef, i32 0, i32 0, i32 undef, float %7599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7814 = extractvalue %dx.types.ResRet.f32 %7813, 0
  %7815 = fmul fast float %7814, %7770
  %7816 = fadd fast float %7815, %7812
  %7817 = fmul fast float %7816, %7784
  %7818 = fadd fast float %7807, %7802
  %7819 = fmul fast float %7818, %7783
  %7820 = fadd fast float %7819, %7817
  %7821 = fmul fast float %7820, 6.250000e-02
  br label %7907

; <label>:7822                                    ; preds = %7754
  %7823 = fmul fast float %319, 0x401921FB60000000
  %7824 = call float @dx.op.unary.f32(i32 13, float %7823)  ; Sin(value)
  %7825 = call float @dx.op.unary.f32(i32 12, float %7823)  ; Cos(value)
  %7826 = fsub fast float -0.000000e+00, %7824
  br label %7827

; <label>:7827                                    ; preds = %7876, %7822
  %7828 = phi float [ 0.000000e+00, %7822 ], [ %7871, %7876 ]
  %7829 = phi float [ 0.000000e+00, %7822 ], [ %7873, %7876 ]
  %7830 = phi i32 [ 0, %7822 ], [ %7877, %7876 ]
  %7831 = mul i32 %7830, 2
  %7832 = add i32 0, %7831
  %7833 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7832
  %7834 = load float, float* %7833, align 4
  %7835 = mul i32 %7830, 2
  %7836 = add i32 1, %7835
  %7837 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7836
  %7838 = load float, float* %7837, align 4
  %7839 = fmul fast float %7834, %7825
  %7840 = call float @dx.op.tertiary.f32(i32 46, float %7838, float %7826, float %7839)  ; FMad(a,b,c)
  %7841 = fmul fast float %7834, %7824
  %7842 = call float @dx.op.tertiary.f32(i32 46, float %7838, float %7825, float %7841)  ; FMad(a,b,c)
  %7843 = fmul fast float %7840, %7597
  %7844 = fmul fast float %7842, %7597
  %7845 = fadd fast float %7843, %6723
  %7846 = fadd fast float %7844, %6727
  %7847 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %58, float %7845, float %7846, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = extractvalue %dx.types.ResRet.f32 %7847, 3
  %7852 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %7848, float* %7852, align 4
  %7853 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %7849, float* %7853, align 4
  %7854 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %7850, float* %7854, align 4
  %7855 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %7851, float* %7855, align 4
  %7856 = fsub fast float %7848, %7599
  %7857 = fcmp fast olt float %7856, 0.000000e+00
  %7858 = select i1 %7857, float 0.000000e+00, float 1.000000e+00
  %7859 = fadd fast float %7858, %7828
  %7860 = fmul fast float %7858, %7856
  %7861 = fadd fast float %7860, %7829
  br label %7862

; <label>:7862                                    ; preds = %7862, %7827
  %7863 = phi i32 [ 1, %7827 ], [ %7874, %7862 ]
  %7864 = phi float [ %7861, %7827 ], [ %7873, %7862 ]
  %7865 = phi float [ %7859, %7827 ], [ %7871, %7862 ]
  %7866 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %7863
  %7867 = load float, float* %7866, align 4, !tbaa !130, !noalias !120
  %7868 = fsub fast float %7867, %7599
  %7869 = fcmp fast olt float %7868, 0.000000e+00
  %7870 = select i1 %7869, float 0.000000e+00, float 1.000000e+00
  %7871 = fadd fast float %7870, %7865
  %7872 = fmul fast float %7870, %7868
  %7873 = fadd fast float %7872, %7864
  %7874 = add nuw nsw i32 %7863, 1
  %7875 = icmp eq i32 %7874, 4
  br i1 %7875, label %7876, label %7862, !llvm.loop !132

; <label>:7876                                    ; preds = %7862
  %7877 = add nuw nsw i32 %7830, 1
  %7878 = icmp eq i32 %7877, 8
  br i1 %7878, label %7879, label %7827, !llvm.loop !133

; <label>:7879                                    ; preds = %7876
  %7880 = fdiv fast float 1.000000e+00, %7871
  %7881 = fmul fast float %7880, %7873
  %7882 = fdiv fast float 1.000000e+00, %7599
  %7883 = fmul fast float %7881, %7882
  %7884 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  %7885 = call float @dx.op.binary.f32(i32 35, float %7884, float 0.000000e+00)  ; FMax(a,b)
  %7886 = fmul fast float %7871, 3.125000e-02
  %7887 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  %7888 = fmul fast float %7887, 2.000000e+00
  %7889 = fadd fast float %7888, -1.000000e+00
  %7890 = fcmp fast ogt float %7889, 0.000000e+00
  %7891 = fcmp fast olt float %7889, 0.000000e+00
  %7892 = zext i1 %7890 to i32
  %7893 = zext i1 %7891 to i32
  %7894 = sub nsw i32 %7892, %7893
  %7895 = sitofp i32 %7894 to float
  %7896 = fmul fast float %7895, %7889
  %7897 = fsub fast float 1.000000e+00, %7896
  %7898 = fmul fast float %7897, %7897
  %7899 = fmul fast float %7898, %7897
  %7900 = fsub fast float %7897, %7899
  %7901 = fmul fast float %7900, %7885
  %7902 = fsub fast float 1.000000e+00, %7899
  %7903 = fsub fast float %7902, %7901
  %7904 = fmul fast float %7895, 5.000000e-01
  %7905 = fmul fast float %7904, %7903
  %7906 = fsub fast float 5.000000e-01, %7905
  br label %7907

; <label>:7907                                    ; preds = %7879, %7755, %7726, %7602, %7586
  %7908 = phi float [ 1.000000e+00, %7586 ], [ %7668, %7602 ], [ %7753, %7726 ], [ %7821, %7755 ], [ %7906, %7879 ]
  %7909 = fsub fast float %7420, %7253
  %7910 = fmul fast float %7909, %6820
  %7911 = fadd fast float %7910, %7253
  %7912 = fsub fast float %7587, %7911
  %7913 = fmul fast float %7912, %6819
  %7914 = fadd fast float %7913, %7911
  %7915 = fsub fast float %7908, %7914
  %7916 = fmul fast float %7915, %6847
  %7917 = fadd fast float %7916, %7914
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 2
  %7920 = fcmp fast ogt float %7919, 0.000000e+00
  br i1 %7920, label %7921, label %7961, !dx.controlflow.hints !137

; <label>:7921                                    ; preds = %7907
  %7922 = fcmp fast ugt float %7919, 0.000000e+00
  br i1 %7922, label %7923, label %7958

; <label>:7923                                    ; preds = %7921
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.CBufRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.CBufRet.f32 %7924, 2
  %7928 = extractvalue %dx.types.CBufRet.f32 %7924, 3
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7932 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7933 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7934 = extractvalue %dx.types.CBufRet.f32 %7918, 0
  %7935 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7937 = extractvalue %dx.types.CBufRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.CBufRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.CBufRet.f32 %7936, 2
  %7940 = fadd fast float %7937, %6700
  %7941 = fadd fast float %7938, %6701
  %7942 = fadd fast float %7939, %6702
  %7943 = fmul fast float %7940, %7925
  %7944 = call float @dx.op.tertiary.f32(i32 46, float %7926, float %7941, float %7943)  ; FMad(a,b,c)
  %7945 = call float @dx.op.tertiary.f32(i32 46, float %7927, float %7942, float %7944)  ; FMad(a,b,c)
  %7946 = fadd fast float %7945, %7928
  %7947 = fmul fast float %7940, %7930
  %7948 = call float @dx.op.tertiary.f32(i32 46, float %7931, float %7941, float %7947)  ; FMad(a,b,c)
  %7949 = call float @dx.op.tertiary.f32(i32 46, float %7932, float %7942, float %7948)  ; FMad(a,b,c)
  %7950 = fadd fast float %7949, %7933
  %7951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %54, float %7946, float %7950, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = fmul fast float %7952, %7935
  %7954 = fadd fast float %7953, %7934
  %7955 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7956 = fmul fast float %7955, %7919
  %7957 = fsub fast float 1.000000e+00, %7956
  br label %7958

; <label>:7958                                    ; preds = %7923, %7921
  %7959 = phi float [ %7957, %7923 ], [ 1.000000e+00, %7921 ]
  %7960 = fmul fast float %7959, %7917
  br label %7961

; <label>:7961                                    ; preds = %7958, %7907, %6680
  %7962 = phi float [ 1.000000e+00, %6680 ], [ %7960, %7958 ], [ %7917, %7907 ]
  %7963 = call float @dx.op.binary.f32(i32 36, float %7962, float %7962)  ; FMin(a,b)
  %7964 = call float @dx.op.binary.f32(i32 36, float %7962, float %7963)  ; FMin(a,b)
  %7965 = fcmp fast ogt float %7964, 0.000000e+00
  br i1 %7965, label %7966, label %8131, !dx.controlflow.hints !138

; <label>:7966                                    ; preds = %7961
  %7967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.f32 %7967, 0
  %7969 = extractvalue %dx.types.CBufRet.f32 %7967, 1
  %7970 = extractvalue %dx.types.CBufRet.f32 %7967, 2
  %7971 = extractvalue %dx.types.CBufRet.f32 %7967, 3
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7975 = extractvalue %dx.types.CBufRet.f32 %7972, 2
  %7976 = extractvalue %dx.types.CBufRet.f32 %7972, 3
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 0
  %7979 = extractvalue %dx.types.CBufRet.f32 %7977, 1
  %7980 = extractvalue %dx.types.CBufRet.f32 %7977, 2
  %7981 = extractvalue %dx.types.CBufRet.f32 %7977, 3
  %7982 = fmul fast float %7968, %6700
  %7983 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %7969, float %7982)  ; FMad(a,b,c)
  %7984 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %7970, float %7983)  ; FMad(a,b,c)
  %7985 = fadd fast float %7984, %7971
  %7986 = fmul fast float %7973, %6700
  %7987 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %7974, float %7986)  ; FMad(a,b,c)
  %7988 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %7975, float %7987)  ; FMad(a,b,c)
  %7989 = fadd fast float %7988, %7976
  %7990 = fmul fast float %7978, %6700
  %7991 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %7979, float %7990)  ; FMad(a,b,c)
  %7992 = call float @dx.op.tertiary.f32(i32 46, float %6702, float %7980, float %7991)  ; FMad(a,b,c)
  %7993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7994 = extractvalue %dx.types.CBufRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.CBufRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.CBufRet.f32 %7993, 3
  %7997 = fmul fast float %7996, %7985
  %7998 = fmul fast float %7996, %7989
  %7999 = fadd fast float %7997, %7994
  %8000 = fadd fast float %7998, %7995
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 0
  %8003 = extractvalue %dx.types.CBufRet.f32 %8001, 1
  %8004 = fsub fast float %7999, %8002
  %8005 = fsub fast float %8000, %8003
  %8006 = fcmp fast olt float %8004, 0.000000e+00
  %8007 = fcmp fast olt float %8005, 0.000000e+00
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.CBufRet.f32 %8008, 1
  %8011 = extractvalue %dx.types.CBufRet.f32 %8008, 2
  %8012 = extractvalue %dx.types.CBufRet.f32 %8008, 3
  %8013 = select i1 %8006, float %8009, float %8011
  %8014 = select i1 %8007, float %8010, float %8012
  %8015 = fmul fast float %8013, %8004
  %8016 = fmul fast float %8014, %8005
  %8017 = call float @dx.op.unary.f32(i32 6, float %8015)  ; FAbs(value)
  %8018 = call float @dx.op.unary.f32(i32 6, float %8016)  ; FAbs(value)
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 0
  %8021 = call float @dx.op.binary.f32(i32 35, float %8017, float %8018)  ; FMax(a,b)
  %8022 = fsub fast float %8020, %8021
  %8023 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8024 = fcmp fast ogt float %8023, 0.000000e+00
  br i1 %8024, label %8025, label %8066, !dx.controlflow.hints !139

; <label>:8025                                    ; preds = %7966
  %8026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %57, float %7999, float %8000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8027 = extractvalue %dx.types.ResRet.f32 %8026, 1
  %8028 = fcmp fast ogt float %8027, 0.000000e+00
  br i1 %8028, label %8029, label %8061

; <label>:8029                                    ; preds = %8025
  %8030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %57, float %7999, float %8000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8031 = extractvalue %dx.types.ResRet.f32 %8030, 0
  %8032 = extractvalue %dx.types.ResRet.f32 %8030, 1
  %8033 = extractvalue %dx.types.ResRet.f32 %8030, 2
  %8034 = extractvalue %dx.types.ResRet.f32 %8030, 3
  %8035 = fsub fast float 1.000000e+00, %7981
  %8036 = fsub fast float %8035, %7992
  %8037 = fmul fast float %8036, 0x400921FB60000000
  %8038 = fadd fast float %8037, 0x3FF921FB60000000
  %8039 = call float @dx.op.unary.f32(i32 13, float %8038)  ; Sin(value)
  %8040 = fadd fast float %8039, -1.000000e+00
  %8041 = fmul fast float %8040, 0x3FD45F3060000000
  %8042 = fmul fast float %8036, 0x401921FB60000000
  %8043 = fadd fast float %8042, 0x400921FB60000000
  %8044 = call float @dx.op.unary.f32(i32 13, float %8043)  ; Sin(value)
  %8045 = fadd fast float %8044, 0x3E7777A5C0000000
  %8046 = fmul fast float %8045, 0x3FC45F3060000000
  %8047 = fmul fast float %8036, 0x4022D97C80000000
  %8048 = fadd fast float %8047, 0x4012D97C80000000
  %8049 = call float @dx.op.unary.f32(i32 13, float %8048)  ; Sin(value)
  %8050 = fadd fast float %8049, 1.000000e+00
  %8051 = fmul fast float %8050, 0x3FBB2995E0000000
  %8052 = fmul fast float %8036, 0x402921FB60000000
  %8053 = fadd fast float %8052, 0x401921FB60000000
  %8054 = call float @dx.op.unary.f32(i32 13, float %8053)  ; Sin(value)
  %8055 = fadd fast float %8054, 0xBE8777A5C0000000
  %8056 = fmul fast float %8055, 0x3FB45F3060000000
  %8057 = call float @dx.op.dot4.f32(i32 56, float %8031, float %8032, float %8033, float %8034, float %8041, float %8046, float %8051, float %8056)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8058 = fmul fast float %8057, 0xBFF7154760000000
  %8059 = call float @dx.op.unary.f32(i32 21, float %8058)  ; Exp(value)
  %8060 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  br label %8061

; <label>:8061                                    ; preds = %8029, %8025
  %8062 = phi float [ %8060, %8029 ], [ 1.000000e+00, %8025 ]
  %8063 = fadd fast float %8062, -1.000000e+00
  %8064 = fmul fast float %8063, %8023
  %8065 = fadd fast float %8064, 1.000000e+00
  br label %8066

; <label>:8066                                    ; preds = %8061, %7966
  %8067 = phi float [ %8065, %8061 ], [ 1.000000e+00, %7966 ]
  %8068 = fmul fast float %8067, %7962
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 0
  %8071 = extractvalue %dx.types.CBufRet.f32 %8069, 1
  %8072 = extractvalue %dx.types.CBufRet.f32 %8069, 2
  %8073 = fadd fast float %8070, %202
  %8074 = fadd fast float %8071, %203
  %8075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8076 = extractvalue %dx.types.CBufRet.f32 %8075, 1
  %8077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8078 = extractvalue %dx.types.CBufRet.f32 %8077, 0
  %8079 = extractvalue %dx.types.CBufRet.f32 %8077, 1
  %8080 = extractvalue %dx.types.CBufRet.f32 %8077, 2
  %8081 = fsub fast float -0.000000e+00, %8073
  %8082 = fsub fast float -0.000000e+00, %8074
  %8083 = fsub fast float %5613, %8072
  %8084 = fadd fast float %8083, %8076
  %8085 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8081, float %8082, float %8084)  ; Dot3(ax,ay,az,bx,by,bz)
  %8086 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8078, float %8079, float %8080)  ; Dot3(ax,ay,az,bx,by,bz)
  %8087 = fdiv fast float 1.000000e+00, %8086
  %8088 = fmul fast float %8087, %8085
  %8089 = fmul fast float %8078, %8088
  %8090 = fmul fast float %8079, %8088
  %8091 = fadd fast float %8089, %8073
  %8092 = fadd fast float %8090, %8074
  %8093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.CBufRet.f32 %8093, 1
  %8096 = fsub fast float %8091, %8094
  %8097 = fsub fast float %8092, %8095
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 3
  %8101 = fmul fast float %8096, %8099
  %8102 = fmul fast float %8097, %8100
  %8103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.i32 %8103, 3
  %8105 = icmp eq i32 %8104, 0
  br i1 %8105, label %8111, label %8106

; <label>:8106                                    ; preds = %8066
  %8107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %8101, float %8102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8108 = extractvalue %dx.types.ResRet.f32 %8107, 0
  %8109 = extractvalue %dx.types.ResRet.f32 %8107, 1
  %8110 = extractvalue %dx.types.ResRet.f32 %8107, 2
  br label %8116

; <label>:8111                                    ; preds = %8066
  %8112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %8101, float %8102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8113 = extractvalue %dx.types.ResRet.f32 %8112, 0
  %8114 = extractvalue %dx.types.ResRet.f32 %8112, 1
  %8115 = extractvalue %dx.types.ResRet.f32 %8112, 2
  br label %8116

; <label>:8116                                    ; preds = %8111, %8106
  %8117 = phi float [ %8108, %8106 ], [ %8113, %8111 ]
  %8118 = phi float [ %8109, %8106 ], [ %8114, %8111 ]
  %8119 = phi float [ %8110, %8106 ], [ %8115, %8111 ]
  %8120 = extractvalue %dx.types.CBufRet.f32 %8075, 2
  %8121 = fmul fast float %8120, %8117
  %8122 = extractvalue %dx.types.CBufRet.f32 %8075, 0
  %8123 = fsub fast float %8088, %8122
  %8124 = fsub fast float %8123, %8121
  %8125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8124)  ; FMax(a,b)
  %8126 = fmul fast float %8125, %8118
  %8127 = call float @dx.op.binary.f32(i32 36, float %8119, float %8126)  ; FMin(a,b)
  %8128 = fmul fast float %8127, 0xBFF7154760000000
  %8129 = call float @dx.op.unary.f32(i32 21, float %8128)  ; Exp(value)
  %8130 = fmul fast float %8068, %8129
  br label %8131

; <label>:8131                                    ; preds = %8116, %7961
  %8132 = phi float [ %8130, %8116 ], [ %7962, %7961 ]
  %8133 = call float @dx.op.binary.f32(i32 36, float %8132, float %8132)  ; FMin(a,b)
  %8134 = call float @dx.op.binary.f32(i32 36, float %8132, float %8133)  ; FMin(a,b)
  %8135 = fcmp fast ogt float %8134, 0.000000e+00
  br i1 %8135, label %8136, label %8438, !dx.controlflow.hints !140

; <label>:8136                                    ; preds = %8131
  %8137 = bitcast i32 %5674 to float
  %8138 = fmul fast float %8132, %6692
  %8139 = fmul fast float %8132, %6693
  %8140 = fmul fast float %8132, %6694
  %8141 = fsub fast float %204, %4811
  %8142 = fcmp fast ogt float %8141, 0.000000e+00
  %8143 = fmul fast float %6681, 5.120000e+02
  %8144 = fmul fast float %6682, 5.120000e+02
  %8145 = fmul fast float %6683, 5.120000e+02
  %8146 = fadd fast float %8145, %204
  %8147 = fsub fast float %4811, %8146
  %8148 = fmul fast float %8147, 2.000000e+00
  %8149 = fadd fast float %8148, %8146
  %8150 = select i1 %8142, float %8149, float %8146
  %8151 = fsub fast float %8150, %204
  %8152 = call float @dx.op.dot3.f32(i32 55, float %8143, float %8144, float %8151, float %8143, float %8144, float %8151)  ; Dot3(ax,ay,az,bx,by,bz)
  %8153 = call float @dx.op.unary.f32(i32 25, float %8152)  ; Rsqrt(value)
  %8154 = fmul fast float %8153, %8143
  %8155 = fmul fast float %8153, %8144
  %8156 = fmul fast float %8153, %8151
  %8157 = fsub fast float %4811, %204
  %8158 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8157)  ; Dot3(ax,ay,az,bx,by,bz)
  %8159 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8154, float %8155, float %8156)  ; Dot3(ax,ay,az,bx,by,bz)
  %8160 = fdiv fast float 1.000000e+00, %8159
  %8161 = fmul fast float %8160, %8158
  %8162 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8141, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8163 = fcmp fast ogt float %8162, 0.000000e+00
  %8164 = fcmp fast olt float %8162, 0.000000e+00
  %8165 = zext i1 %8163 to i32
  %8166 = zext i1 %8164 to i32
  %8167 = sub nsw i32 %8165, %8166
  %8168 = sitofp i32 %8167 to float
  %8169 = fsub fast float %8150, %4811
  %8170 = call float @dx.op.dot3.f32(i32 55, float %8143, float %8144, float %8169, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8171 = fcmp fast ogt float %8170, 0.000000e+00
  %8172 = fcmp fast olt float %8170, 0.000000e+00
  %8173 = zext i1 %8171 to i32
  %8174 = zext i1 %8172 to i32
  %8175 = sub nsw i32 %8173, %8174
  %8176 = sitofp i32 %8175 to float
  %8177 = fcmp fast une float %8168, %8176
  br i1 %8177, label %8178, label %8188

; <label>:8178                                    ; preds = %8136
  %8179 = fmul fast float %8161, %8156
  %8180 = fmul fast float %8161, %8155
  %8181 = fmul fast float %8161, %8154
  %8182 = fmul fast float %8181, %8181
  %8183 = fmul fast float %8180, %8180
  %8184 = fadd fast float %8182, %8183
  %8185 = fmul fast float %8179, %8179
  %8186 = fadd fast float %8184, %8185
  %8187 = call float @dx.op.unary.f32(i32 24, float %8186)  ; Sqrt(value)
  br label %8198

; <label>:8188                                    ; preds = %8136
  %8189 = icmp slt i32 %8167, 0
  br i1 %8189, label %8190, label %8198

; <label>:8190                                    ; preds = %8188
  %8191 = fsub fast float %204, %8150
  %8192 = fmul fast float %8143, %8143
  %8193 = fmul fast float %8144, %8144
  %8194 = fadd fast float %8192, %8193
  %8195 = fmul fast float %8191, %8191
  %8196 = fadd fast float %8194, %8195
  %8197 = call float @dx.op.unary.f32(i32 24, float %8196)  ; Sqrt(value)
  br label %8198

; <label>:8198                                    ; preds = %8190, %8188, %8178
  %8199 = phi float [ %8187, %8178 ], [ %8197, %8190 ], [ 0.000000e+00, %8188 ]
  %8200 = fsub fast float -0.000000e+00, %8199
  %8201 = select i1 %8142, float -0.000000e+00, float %8200
  %8202 = fmul fast float %4808, 0x3FF7154760000000
  %8203 = fmul fast float %8202, %8201
  %8204 = fmul fast float %4809, 0x3FF7154760000000
  %8205 = fmul fast float %8204, %8201
  %8206 = fmul fast float %4810, 0x3FF7154760000000
  %8207 = fmul fast float %8206, %8201
  %8208 = call float @dx.op.unary.f32(i32 21, float %8203)  ; Exp(value)
  %8209 = call float @dx.op.unary.f32(i32 21, float %8205)  ; Exp(value)
  %8210 = call float @dx.op.unary.f32(i32 21, float %8207)  ; Exp(value)
  %8211 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8212 = call float @dx.op.unary.f32(i32 7, float %8209)  ; Saturate(value)
  %8213 = call float @dx.op.unary.f32(i32 7, float %8210)  ; Saturate(value)
  %8214 = fmul fast float %8138, %8211
  %8215 = fmul fast float %8139, %8212
  %8216 = fmul fast float %8140, %8213
  %8217 = fsub fast float %6681, %235
  %8218 = fsub fast float %6682, %236
  %8219 = fsub fast float %6683, %237
  %8220 = call float @dx.op.dot3.f32(i32 55, float %8217, float %8218, float %8219, float %8217, float %8218, float %8219)  ; Dot3(ax,ay,az,bx,by,bz)
  %8221 = call float @dx.op.unary.f32(i32 25, float %8220)  ; Rsqrt(value)
  %8222 = fmul fast float %8221, %8217
  %8223 = fmul fast float %8221, %8218
  %8224 = fmul fast float %8221, %8219
  %8225 = call float @dx.op.dot3.f32(i32 55, float %6681, float %6682, float %6683, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %8226 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %8222, float %8223, float %8224)  ; Dot3(ax,ay,az,bx,by,bz)
  %8227 = call float @dx.op.unary.f32(i32 7, float %8225)  ; Saturate(value)
  %8228 = fmul fast float %8227, %8227
  %8229 = fmul fast float %8228, %8137
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8231 = fmul fast float %8230, %8227
  %8232 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %8222, float %8223, float %8224)  ; Dot3(ax,ay,az,bx,by,bz)
  %8233 = fmul fast float %8232, %8232
  %8234 = call float @dx.op.unary.f32(i32 6, float %8225)  ; FAbs(value)
  %8235 = fsub fast float 1.000000e+00, %5668
  %8236 = fmul fast float %5650, %5650
  %8237 = fmul fast float %8236, %8235
  %8238 = fadd fast float %8237, %5668
  %8239 = bitcast float %8238 to i32
  %8240 = ashr i32 %8239, 1
  %8241 = add nsw i32 %8240, 532487669
  %8242 = bitcast i32 %8241 to float
  %8243 = fadd fast float %8242, %5650
  %8244 = fmul fast float %5668, %8233
  %8245 = fsub fast float 1.000000e+00, %8233
  %8246 = fadd fast float %8245, %8244
  %8247 = fmul fast float %8234, %8234
  %8248 = fmul fast float %8247, %8235
  %8249 = fadd fast float %8248, %5668
  %8250 = bitcast float %8249 to i32
  %8251 = ashr i32 %8250, 1
  %8252 = add nsw i32 %8251, 532487669
  %8253 = bitcast i32 %8252 to float
  %8254 = fadd fast float %8253, %8234
  %8255 = fmul fast float %8246, %8246
  %8256 = fmul fast float %8255, %8243
  %8257 = fmul fast float %8256, %8254
  %8258 = fdiv fast float 0x3FF0A00000000000, %8257
  %8259 = fmul fast float %8258, %5668
  %8260 = call float @dx.op.unary.f32(i32 6, float %8226)  ; FAbs(value)
  %8261 = fsub fast float 1.000000e+00, %8260
  %8262 = bitcast float %8261 to i32
  %8263 = sitofp i32 %8262 to float
  %8264 = fmul fast float %8263, 5.000000e+00
  %8265 = fadd fast float %8264, 0xC1EFBF8940000000
  %8266 = fptosi float %8265 to i32
  %8267 = bitcast i32 %8266 to float
  %8268 = fsub fast float 1.000000e+00, %5605
  %8269 = fsub fast float 1.000000e+00, %5606
  %8270 = fsub fast float 1.000000e+00, %5648
  %8271 = fmul fast float %8267, %8268
  %8272 = fmul fast float %8267, %8269
  %8273 = fmul fast float %8267, %8270
  %8274 = fadd fast float %8271, %5605
  %8275 = fadd fast float %8272, %5606
  %8276 = fadd fast float %8273, %5648
  br i1 %5922, label %8277, label %8300

; <label>:8277                                    ; preds = %8198
  %8278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4315, float %8260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8279 = extractvalue %dx.types.ResRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.ResRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.ResRet.f32 %8278, 2
  %8282 = fadd fast float %8279, -5.000000e-01
  %8283 = fadd fast float %8280, -5.000000e-01
  %8284 = fadd fast float %8281, -5.000000e-01
  %8285 = fmul fast float %5605, 4.000000e+00
  %8286 = fmul fast float %8285, %8268
  %8287 = fmul fast float %8286, %8282
  %8288 = fmul fast float %5606, 4.000000e+00
  %8289 = fmul fast float %8288, %8269
  %8290 = fmul fast float %8289, %8283
  %8291 = fmul fast float %5648, 4.000000e+00
  %8292 = fmul fast float %8291, %8270
  %8293 = fmul fast float %8292, %8284
  %8294 = fadd fast float %8287, %8274
  %8295 = fadd fast float %8290, %8275
  %8296 = fadd fast float %8293, %8276
  %8297 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8298 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8299 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  br label %8300

; <label>:8300                                    ; preds = %8277, %8198
  %8301 = phi float [ %8297, %8277 ], [ %8274, %8198 ]
  %8302 = phi float [ %8298, %8277 ], [ %8275, %8198 ]
  %8303 = phi float [ %8299, %8277 ], [ %8276, %8198 ]
  %8304 = fmul fast float %8225, 9.843750e-01
  %8305 = fadd fast float %8304, 7.812500e-03
  %8306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %8305, float %5912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8307 = extractvalue %dx.types.ResRet.f32 %8306, 2
  %8308 = extractvalue %dx.types.ResRet.f32 %8306, 3
  %8309 = fmul fast float %8307, %5605
  %8310 = fmul fast float %8307, %5606
  %8311 = fmul fast float %8307, %5648
  %8312 = fadd fast float %8309, %8308
  %8313 = fadd fast float %8310, %8308
  %8314 = fadd fast float %8311, %8308
  br i1 %5922, label %8315, label %8338

; <label>:8315                                    ; preds = %8300
  %8316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4315, float %8225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8317 = extractvalue %dx.types.ResRet.f32 %8316, 0
  %8318 = extractvalue %dx.types.ResRet.f32 %8316, 1
  %8319 = extractvalue %dx.types.ResRet.f32 %8316, 2
  %8320 = fadd fast float %8317, -5.000000e-01
  %8321 = fadd fast float %8318, -5.000000e-01
  %8322 = fadd fast float %8319, -5.000000e-01
  %8323 = fmul fast float %5605, 4.000000e+00
  %8324 = fmul fast float %8323, %8268
  %8325 = fmul fast float %8324, %8320
  %8326 = fmul fast float %5606, 4.000000e+00
  %8327 = fmul fast float %8326, %8269
  %8328 = fmul fast float %8327, %8321
  %8329 = fmul fast float %5648, 4.000000e+00
  %8330 = fmul fast float %8329, %8270
  %8331 = fmul fast float %8330, %8322
  %8332 = fadd fast float %8325, %8312
  %8333 = fadd fast float %8328, %8313
  %8334 = fadd fast float %8331, %8314
  %8335 = call float @dx.op.unary.f32(i32 7, float %8332)  ; Saturate(value)
  %8336 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8337 = call float @dx.op.unary.f32(i32 7, float %8334)  ; Saturate(value)
  br label %8338

; <label>:8338                                    ; preds = %8315, %8300
  %8339 = phi float [ %8335, %8315 ], [ %8312, %8300 ]
  %8340 = phi float [ %8336, %8315 ], [ %8313, %8300 ]
  %8341 = phi float [ %8337, %8315 ], [ %8314, %8300 ]
  %8342 = call float @dx.op.binary.f32(i32 35, float %8340, float %8341)  ; FMax(a,b)
  %8343 = call float @dx.op.binary.f32(i32 35, float %8339, float %8342)  ; FMax(a,b)
  %8344 = fsub fast float 1.000000e+00, %8343
  %8345 = fsub fast float -0.000000e+00, %5608
  %8346 = fsub fast float -0.000000e+00, %5609
  %8347 = fsub fast float -0.000000e+00, %5610
  %8348 = call float @dx.op.dot3.f32(i32 55, float %6681, float %6682, float %6683, float %8345, float %8346, float %8347)  ; Dot3(ax,ay,az,bx,by,bz)
  %8349 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8350 = fmul fast float %8349, 9.843750e-01
  %8351 = fadd fast float %8350, 7.812500e-03
  %8352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %8351, float %5912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8353 = extractvalue %dx.types.ResRet.f32 %8352, 2
  %8354 = extractvalue %dx.types.ResRet.f32 %8352, 3
  %8355 = fmul fast float %8353, %5605
  %8356 = fmul fast float %8353, %5606
  %8357 = fmul fast float %8353, %5648
  %8358 = fadd fast float %8355, %8354
  %8359 = fadd fast float %8356, %8354
  %8360 = fadd fast float %8357, %8354
  br i1 %5922, label %8361, label %8384

; <label>:8361                                    ; preds = %8338
  %8362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4315, float %8349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8363 = extractvalue %dx.types.ResRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.ResRet.f32 %8362, 1
  %8365 = extractvalue %dx.types.ResRet.f32 %8362, 2
  %8366 = fadd fast float %8363, -5.000000e-01
  %8367 = fadd fast float %8364, -5.000000e-01
  %8368 = fadd fast float %8365, -5.000000e-01
  %8369 = fmul fast float %5605, 4.000000e+00
  %8370 = fmul fast float %8369, %8268
  %8371 = fmul fast float %8370, %8366
  %8372 = fmul fast float %5606, 4.000000e+00
  %8373 = fmul fast float %8372, %8269
  %8374 = fmul fast float %8373, %8367
  %8375 = fmul fast float %5648, 4.000000e+00
  %8376 = fmul fast float %8375, %8270
  %8377 = fmul fast float %8376, %8368
  %8378 = fadd fast float %8371, %8358
  %8379 = fadd fast float %8374, %8359
  %8380 = fadd fast float %8377, %8360
  %8381 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8382 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8383 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  br label %8384

; <label>:8384                                    ; preds = %8361, %8338
  %8385 = phi float [ %8381, %8361 ], [ %8358, %8338 ]
  %8386 = phi float [ %8382, %8361 ], [ %8359, %8338 ]
  %8387 = phi float [ %8383, %8361 ], [ %8360, %8338 ]
  %8388 = call float @dx.op.binary.f32(i32 35, float %8386, float %8387)  ; FMax(a,b)
  %8389 = call float @dx.op.binary.f32(i32 35, float %8385, float %8388)  ; FMax(a,b)
  %8390 = fsub fast float 1.000000e+00, %8389
  %8391 = fmul fast float %8390, %8349
  %8392 = fmul fast float %8391, %4427
  %8393 = fmul fast float %8391, %4428
  %8394 = fmul fast float %8391, %4429
  %8395 = fmul fast float %8301, %8259
  %8396 = fmul fast float %8302, %8259
  %8397 = fmul fast float %8303, %8259
  %8398 = fsub fast float 1.000000e+00, %8226
  %8399 = bitcast float %8398 to i32
  %8400 = sitofp i32 %8399 to float
  %8401 = fmul fast float %8400, 5.000000e+00
  %8402 = fadd fast float %8401, 0xC1EFBF8940000000
  %8403 = fptosi float %8402 to i32
  %8404 = bitcast i32 %8403 to float
  %8405 = fmul fast float %8404, %4316
  %8406 = fmul fast float %8344, %8405
  %8407 = fmul fast float %8406, %6464
  %8408 = fmul fast float %8406, %6465
  %8409 = fmul fast float %8406, %6466
  %8410 = fmul fast float %8344, %8231
  %8411 = fadd fast float %8407, %8395
  %8412 = fadd fast float %8408, %8396
  %8413 = fadd fast float %8409, %8397
  %8414 = fadd fast float %8392, %8410
  %8415 = fadd fast float %8393, %8410
  %8416 = fadd fast float %8394, %8410
  %8417 = fmul fast float %8414, %8214
  %8418 = fmul fast float %8415, %8215
  %8419 = fmul fast float %8416, %8216
  %8420 = fmul fast float %8231, %8214
  %8421 = fmul fast float %8420, %8411
  %8422 = fmul fast float %8231, %8215
  %8423 = fmul fast float %8422, %8412
  %8424 = fmul fast float %8231, %8216
  %8425 = fmul fast float %8424, %8413
  %8426 = fadd fast float %8417, %6448
  %8427 = fmul fast float %8426, %4341
  %8428 = fadd fast float %8418, %6449
  %8429 = fmul fast float %8428, %4341
  %8430 = fadd fast float %8419, %6450
  %8431 = fmul fast float %8430, %4341
  %8432 = fadd fast float %8421, %6667
  %8433 = fmul fast float %8432, %4341
  %8434 = fadd fast float %8423, %6671
  %8435 = fmul fast float %8434, %4341
  %8436 = fadd fast float %8425, %6675
  %8437 = fmul fast float %8436, %4341
  br label %8438

; <label>:8438                                    ; preds = %8384, %8131, %6651
  %8439 = phi float [ %6668, %6651 ], [ %6668, %8131 ], [ %8433, %8384 ]
  %8440 = phi float [ %6672, %6651 ], [ %6672, %8131 ], [ %8435, %8384 ]
  %8441 = phi float [ %6676, %6651 ], [ %6676, %8131 ], [ %8437, %8384 ]
  %8442 = phi float [ %6540, %6651 ], [ %6540, %8131 ], [ %8427, %8384 ]
  %8443 = phi float [ %6541, %6651 ], [ %6541, %8131 ], [ %8429, %8384 ]
  %8444 = phi float [ %6542, %6651 ], [ %6542, %8131 ], [ %8431, %8384 ]
  %8445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.i32 %8445, 0
  %8447 = icmp eq i32 %8446, 0
  br i1 %8447, label %9166, label %8448

; <label>:8448                                    ; preds = %8438
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 2
  %8451 = extractvalue %dx.types.CBufRet.f32 %8449, 3
  %8452 = fmul fast float %8450, %123
  %8453 = fmul fast float %8451, %124
  %8454 = fptoui float %8452 to i32
  %8455 = fptoui float %8453 to i32
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8459 = extractvalue %dx.types.CBufRet.f32 %8456, 3
  %8460 = fadd fast float %110, -4.000000e+00
  %8461 = call float @dx.op.binary.f32(i32 35, float %8460, float 0.000000e+00)  ; FMax(a,b)
  %8462 = fadd fast float %8461, %8457
  %8463 = fmul fast float %8462, %8458
  %8464 = call float @dx.op.unary.f32(i32 23, float %8463)  ; Log(value)
  %8465 = fmul fast float %8464, %8459
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8468 = fmul fast float %8465, %8467
  %8469 = call float @dx.op.unary.f32(i32 7, float %8468)  ; Saturate(value)
  %8470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.i32 %8470, 1
  %8472 = add i32 %8471, -1
  %8473 = uitofp i32 %8471 to float
  %8474 = fmul fast float %8473, %8469
  %8475 = fptoui float %8474 to i32
  %8476 = call i32 @dx.op.binary.i32(i32 40, i32 %8475, i32 %8472)  ; UMin(a,b)
  %8477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.i32 %8477, 2
  %8479 = extractvalue %dx.types.CBufRet.i32 %8477, 3
  %8480 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8455, i32 %8478, i32 %8454)  ; UMad(a,b,c)
  %8481 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8476, i32 %8479, i32 %8480)  ; UMad(a,b,c)
  %8482 = add nsw i32 %8446, -1
  %8483 = call i32 @dx.op.binary.i32(i32 37, i32 %8482, i32 0)  ; IMax(a,b)
  %8484 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %8485 = fptoui float %8484 to i32
  %8486 = lshr i32 %8485, 5
  %8487 = call i32 @dx.op.binary.i32(i32 40, i32 %8486, i32 8191)  ; UMin(a,b)
  %8488 = shl i32 %8487, 2
  %8489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8488, i32 undef)  ; BufferLoad(srv,index,wot)
  %8490 = extractvalue %dx.types.ResRet.i32 %8489, 0
  %8491 = lshr i32 %8490, 16
  %8492 = and i32 %8490, 65535
  %8493 = lshr i32 %8490, 21
  %8494 = lshr i32 %8492, 5
  %8495 = call i32 @dx.op.binary.i32(i32 40, i32 %8494, i32 %8483)  ; UMin(a,b)
  %8496 = icmp ugt i32 %8493, %8495
  br i1 %8496, label %9166, label %8497

; <label>:8497                                    ; preds = %8448
  br label %8498

; <label>:8498                                    ; preds = %9156, %8497
  %8499 = phi i32 [ %9163, %9156 ], [ %8493, %8497 ]
  %8500 = phi float [ %9157, %9156 ], [ %8439, %8497 ]
  %8501 = phi float [ %9158, %9156 ], [ %8440, %8497 ]
  %8502 = phi float [ %9159, %9156 ], [ %8441, %8497 ]
  %8503 = phi float [ %9160, %9156 ], [ %8442, %8497 ]
  %8504 = phi float [ %9161, %9156 ], [ %8443, %8497 ]
  %8505 = phi float [ %9162, %9156 ], [ %8444, %8497 ]
  %8506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.i32 %8506, 0
  %8508 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8481, i32 %8507, i32 %8499)  ; UMad(a,b,c)
  %8509 = shl i32 %8508, 2
  %8510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8509, i32 undef)  ; BufferLoad(srv,index,wot)
  %8511 = extractvalue %dx.types.ResRet.i32 %8510, 0
  %8512 = shl i32 %8499, 5
  %8513 = sub nsw i32 %8491, %8512
  %8514 = call i32 @dx.op.binary.i32(i32 37, i32 %8513, i32 0)  ; IMax(a,b)
  %8515 = call i32 @dx.op.binary.i32(i32 38, i32 %8514, i32 31)  ; IMin(a,b)
  %8516 = sub nsw i32 1, %8491
  %8517 = add nsw i32 %8516, %8492
  %8518 = call i32 @dx.op.binary.i32(i32 37, i32 %8517, i32 0)  ; IMax(a,b)
  %8519 = call i32 @dx.op.binary.i32(i32 38, i32 %8518, i32 32)  ; IMin(a,b)
  %8520 = and i32 %8519, 31
  %8521 = shl i32 -1, %8520
  %8522 = xor i32 %8521, -1
  %8523 = and i32 %8515, 31
  %8524 = shl i32 %8522, %8523
  %8525 = icmp eq i32 %8519, 32
  %8526 = select i1 %8525, i32 -1, i32 %8524
  %8527 = and i32 %8526, %8511
  %8528 = icmp eq i32 %8527, 0
  br i1 %8528, label %9156, label %8529

; <label>:8529                                    ; preds = %8498
  br label %8530

; <label>:8530                                    ; preds = %8664, %8529
  %8531 = phi i32 [ %8542, %8664 ], [ %8527, %8529 ]
  %8532 = phi float [ %8665, %8664 ], [ %8500, %8529 ]
  %8533 = phi float [ %8666, %8664 ], [ %8501, %8529 ]
  %8534 = phi float [ %8667, %8664 ], [ %8502, %8529 ]
  %8535 = phi float [ %8668, %8664 ], [ %8503, %8529 ]
  %8536 = phi float [ %8669, %8664 ], [ %8504, %8529 ]
  %8537 = phi float [ %8670, %8664 ], [ %8505, %8529 ]
  %8538 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8531)  ; FirstbitLo(value)
  %8539 = add i32 %8538, %8512
  %8540 = and i32 %8538, 31
  %8541 = shl i32 1, %8540
  %8542 = xor i32 %8541, %8531
  %8543 = mul i32 %8539, 112
  %8544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8543, i32 undef)  ; BufferLoad(srv,index,wot)
  %8545 = extractvalue %dx.types.ResRet.f32 %8544, 0
  %8546 = extractvalue %dx.types.ResRet.f32 %8544, 1
  %8547 = extractvalue %dx.types.ResRet.f32 %8544, 2
  %8548 = or i32 %8543, 12
  %8549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8548, i32 undef)  ; BufferLoad(srv,index,wot)
  %8550 = extractvalue %dx.types.ResRet.f32 %8549, 0
  %8551 = add i32 %8543, 16
  %8552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8551, i32 undef)  ; BufferLoad(srv,index,wot)
  %8553 = extractvalue %dx.types.ResRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.ResRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.ResRet.f32 %8552, 2
  %8556 = add i32 %8543, 28
  %8557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8556, i32 undef)  ; BufferLoad(srv,index,wot)
  %8558 = extractvalue %dx.types.ResRet.i32 %8557, 0
  %8559 = add i32 %8543, 44
  %8560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8559, i32 undef)  ; BufferLoad(srv,index,wot)
  %8561 = extractvalue %dx.types.ResRet.f32 %8560, 0
  %8562 = add i32 %8543, 48
  %8563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8562, i32 undef)  ; BufferLoad(srv,index,wot)
  %8564 = extractvalue %dx.types.ResRet.f32 %8563, 0
  %8565 = extractvalue %dx.types.ResRet.f32 %8563, 1
  %8566 = extractvalue %dx.types.ResRet.f32 %8563, 2
  %8567 = extractvalue %dx.types.ResRet.f32 %8563, 3
  %8568 = add i32 %8543, 64
  %8569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8568, i32 undef)  ; BufferLoad(srv,index,wot)
  %8570 = extractvalue %dx.types.ResRet.f32 %8569, 0
  %8571 = extractvalue %dx.types.ResRet.f32 %8569, 1
  %8572 = extractvalue %dx.types.ResRet.f32 %8569, 2
  %8573 = extractvalue %dx.types.ResRet.f32 %8569, 3
  %8574 = add i32 %8543, 80
  %8575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8574, i32 undef)  ; BufferLoad(srv,index,wot)
  %8576 = extractvalue %dx.types.ResRet.f32 %8575, 1
  %8577 = extractvalue %dx.types.ResRet.f32 %8575, 2
  %8578 = add i32 %8543, 92
  %8579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8578, i32 undef)  ; BufferLoad(srv,index,wot)
  %8580 = extractvalue %dx.types.ResRet.i32 %8579, 0
  %8581 = call float @dx.op.dot3.f32(i32 55, float %8545, float %8546, float %8547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8582 = select i1 %306, float %8576, float %8545
  %8583 = select i1 %306, float %8581, float %8546
  %8584 = select i1 %306, float %8577, float %8547
  %8585 = and i32 %8580, 65535
  %8586 = uitofp i32 %8585 to float
  %8587 = lshr i32 %8580, 16
  %8588 = uitofp i32 %8587 to float
  %8589 = and i32 %8558, 65535
  %8590 = and i32 %8558, 50331648
  %8591 = icmp eq i32 %8590, 33554432
  %8592 = fsub fast float %8564, %202
  %8593 = fsub fast float %8565, %203
  %8594 = fsub fast float %8566, %204
  %8595 = call float @dx.op.dot3.f32(i32 55, float %8592, float %8593, float %8594, float %8592, float %8593, float %8594)  ; Dot3(ax,ay,az,bx,by,bz)
  %8596 = call float @dx.op.unary.f32(i32 24, float %8595)  ; Sqrt(value)
  %8597 = fdiv fast float 1.000000e+00, %8596
  %8598 = fmul fast float %8597, %8592
  %8599 = fmul fast float %8597, %8593
  %8600 = fmul fast float %8597, %8594
  %8601 = fadd fast float %8596, %8550
  %8602 = fdiv fast float 1.000000e+00, %8601
  %8603 = fmul float %8561, %8602
  %8604 = fmul float %8603, %8603
  %8605 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  br i1 %8591, label %8606, label %8627

; <label>:8606                                    ; preds = %8530
  %8607 = fmul fast float %8572, %8553
  %8608 = fmul fast float %8572, %8554
  %8609 = fmul fast float %8572, %8555
  %8610 = fadd fast float %8592, %8607
  %8611 = fadd fast float %8593, %8608
  %8612 = fadd fast float %8594, %8609
  %8613 = call float @dx.op.dot3.f32(i32 55, float %8610, float %8611, float %8612, float %8610, float %8611, float %8612)  ; Dot3(ax,ay,az,bx,by,bz)
  %8614 = call float @dx.op.unary.f32(i32 25, float %8613)  ; Rsqrt(value)
  %8615 = fmul fast float %8614, %8610
  %8616 = fmul fast float %8614, %8611
  %8617 = fmul fast float %8614, %8612
  %8618 = fsub fast float %202, %8564
  %8619 = fsub fast float %203, %8565
  %8620 = fsub fast float %204, %8566
  %8621 = fsub fast float -0.000000e+00, %8618
  %8622 = fsub fast float -0.000000e+00, %8619
  %8623 = fsub fast float -0.000000e+00, %8620
  %8624 = call float @dx.op.dot3.f32(i32 55, float %8621, float %8622, float %8623, float %8553, float %8554, float %8555)  ; Dot3(ax,ay,az,bx,by,bz)
  %8625 = fcmp fast ogt float %8624, 0.000000e+00
  %8626 = uitofp i1 %8625 to float
  br label %8627

; <label>:8627                                    ; preds = %8606, %8530
  %8628 = phi float [ %8626, %8606 ], [ 1.000000e+00, %8530 ]
  %8629 = phi float [ %8615, %8606 ], [ %8598, %8530 ]
  %8630 = phi float [ %8616, %8606 ], [ %8599, %8530 ]
  %8631 = phi float [ %8617, %8606 ], [ %8600, %8530 ]
  %8632 = call float @dx.op.dot3.f32(i32 55, float %8553, float %8554, float %8555, float %8629, float %8630, float %8631)  ; Dot3(ax,ay,az,bx,by,bz)
  %8633 = fmul fast float %8632, %8632
  %8634 = call float @dx.op.unary.f32(i32 7, float %8633)  ; Saturate(value)
  %8635 = fsub fast float 1.000000e+00, %8634
  %8636 = fmul fast float %8635, 5.000000e-01
  %8637 = fcmp fast ogt float %8632, 0.000000e+00
  %8638 = fsub fast float 1.000000e+00, %8636
  %8639 = select i1 %8637, float %8636, float %8638
  %8640 = fmul fast float %8639, %8588
  %8641 = fadd fast float %8640, %8586
  %8642 = fmul fast float %8641, 0x3EF0001000000000
  %8643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %57, float %8642, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8644 = extractvalue %dx.types.ResRet.f32 %8643, 0
  %8645 = fmul fast float %8632, %8570
  %8646 = fadd fast float %8645, %8571
  %8647 = call float @dx.op.unary.f32(i32 7, float %8646)  ; Saturate(value)
  %8648 = select i1 %8591, float 1.000000e+00, float %8647
  %8649 = select i1 %8591, float %8647, float 1.000000e+00
  %8650 = fmul fast float %8596, %8567
  %8651 = fsub fast float 1.000000e+00, %8650
  %8652 = fmul fast float %8651, %8573
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = fmul fast float %8653, %8649
  %8655 = fmul fast float %8654, 2.000000e+00
  %8656 = fsub fast float 3.000000e+00, %8655
  %8657 = fmul fast float %8644, %8628
  %8658 = fmul fast float %8654, %8654
  %8659 = fmul fast float %8658, %8657
  %8660 = fmul fast float %8659, %8656
  %8661 = call float @dx.op.binary.f32(i32 36, float %8660, float %8660)  ; FMin(a,b)
  %8662 = call float @dx.op.binary.f32(i32 36, float %8660, float %8661)  ; FMin(a,b)
  %8663 = fcmp fast ogt float %8662, 0.000000e+00
  br i1 %8663, label %8672, label %8664, !dx.controlflow.hints !141

; <label>:8664                                    ; preds = %9104, %8818, %8627
  %8665 = phi float [ %8532, %8818 ], [ %8532, %8627 ], [ %9152, %9104 ]
  %8666 = phi float [ %8533, %8818 ], [ %8533, %8627 ], [ %9153, %9104 ]
  %8667 = phi float [ %8534, %8818 ], [ %8534, %8627 ], [ %9154, %9104 ]
  %8668 = phi float [ %8535, %8818 ], [ %8535, %8627 ], [ %9143, %9104 ]
  %8669 = phi float [ %8536, %8818 ], [ %8536, %8627 ], [ %9144, %9104 ]
  %8670 = phi float [ %8537, %8818 ], [ %8537, %8627 ], [ %9145, %9104 ]
  %8671 = icmp eq i32 %8531, %8541
  br i1 %8671, label %9155, label %8530

; <label>:8672                                    ; preds = %8627
  %8673 = icmp eq i32 %8589, 255
  br i1 %8673, label %8818, label %8674, !dx.controlflow.hints !142

; <label>:8674                                    ; preds = %8672
  %8675 = mul nuw nsw i32 %8589, 176
  %8676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8675, i32 undef)  ; BufferLoad(srv,index,wot)
  %8677 = extractvalue %dx.types.ResRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.ResRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.ResRet.f32 %8676, 2
  %8680 = extractvalue %dx.types.ResRet.f32 %8676, 3
  %8681 = add nuw nsw i32 %8675, 16
  %8682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8681, i32 undef)  ; BufferLoad(srv,index,wot)
  %8683 = extractvalue %dx.types.ResRet.f32 %8682, 0
  %8684 = extractvalue %dx.types.ResRet.f32 %8682, 1
  %8685 = add nuw nsw i32 %8675, 32
  %8686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8685, i32 undef)  ; BufferLoad(srv,index,wot)
  %8687 = extractvalue %dx.types.ResRet.f32 %8686, 0
  %8688 = extractvalue %dx.types.ResRet.f32 %8686, 1
  %8689 = extractvalue %dx.types.ResRet.f32 %8686, 2
  %8690 = add nuw nsw i32 %8675, 48
  %8691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8690, i32 undef)  ; BufferLoad(srv,index,wot)
  %8692 = extractvalue %dx.types.ResRet.f32 %8691, 0
  %8693 = extractvalue %dx.types.ResRet.f32 %8691, 1
  %8694 = extractvalue %dx.types.ResRet.f32 %8691, 2
  %8695 = extractvalue %dx.types.ResRet.f32 %8691, 3
  %8696 = add nuw nsw i32 %8675, 64
  %8697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8696, i32 undef)  ; BufferLoad(srv,index,wot)
  %8698 = extractvalue %dx.types.ResRet.f32 %8697, 0
  %8699 = extractvalue %dx.types.ResRet.f32 %8697, 1
  %8700 = extractvalue %dx.types.ResRet.f32 %8697, 2
  %8701 = extractvalue %dx.types.ResRet.f32 %8697, 3
  %8702 = add nuw nsw i32 %8675, 80
  %8703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8702, i32 undef)  ; BufferLoad(srv,index,wot)
  %8704 = extractvalue %dx.types.ResRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.ResRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.ResRet.f32 %8703, 2
  %8707 = extractvalue %dx.types.ResRet.f32 %8703, 3
  %8708 = add nuw nsw i32 %8675, 96
  %8709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8708, i32 undef)  ; BufferLoad(srv,index,wot)
  %8710 = extractvalue %dx.types.ResRet.f32 %8709, 0
  %8711 = extractvalue %dx.types.ResRet.f32 %8709, 1
  %8712 = extractvalue %dx.types.ResRet.f32 %8709, 2
  %8713 = extractvalue %dx.types.ResRet.f32 %8709, 3
  %8714 = bitcast float %8684 to i32
  %8715 = fmul fast float %8689, %130
  %8716 = fmul fast float %8689, %131
  %8717 = fmul fast float %8689, %132
  %8718 = fadd fast float %8715, %202
  %8719 = fadd fast float %8716, %203
  %8720 = fadd fast float %8717, %204
  %8721 = fmul fast float %8718, %8692
  %8722 = call float @dx.op.tertiary.f32(i32 46, float %8719, float %8698, float %8721)  ; FMad(a,b,c)
  %8723 = call float @dx.op.tertiary.f32(i32 46, float %8720, float %8704, float %8722)  ; FMad(a,b,c)
  %8724 = fadd fast float %8723, %8710
  %8725 = fmul fast float %8718, %8693
  %8726 = call float @dx.op.tertiary.f32(i32 46, float %8719, float %8699, float %8725)  ; FMad(a,b,c)
  %8727 = call float @dx.op.tertiary.f32(i32 46, float %8720, float %8705, float %8726)  ; FMad(a,b,c)
  %8728 = fadd fast float %8727, %8711
  %8729 = fmul fast float %8718, %8694
  %8730 = call float @dx.op.tertiary.f32(i32 46, float %8719, float %8700, float %8729)  ; FMad(a,b,c)
  %8731 = call float @dx.op.tertiary.f32(i32 46, float %8720, float %8706, float %8730)  ; FMad(a,b,c)
  %8732 = fadd fast float %8731, %8712
  %8733 = fmul fast float %8718, %8695
  %8734 = call float @dx.op.tertiary.f32(i32 46, float %8719, float %8701, float %8733)  ; FMad(a,b,c)
  %8735 = call float @dx.op.tertiary.f32(i32 46, float %8720, float %8707, float %8734)  ; FMad(a,b,c)
  %8736 = fadd fast float %8735, %8713
  %8737 = fdiv fast float %8724, %8736
  %8738 = fdiv fast float %8728, %8736
  %8739 = fdiv fast float %8732, %8736
  %8740 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8739)  ; FMax(a,b)
  %8741 = fmul fast float %319, 0x401921FB60000000
  %8742 = call float @dx.op.unary.f32(i32 13, float %8741)  ; Sin(value)
  %8743 = call float @dx.op.unary.f32(i32 12, float %8741)  ; Cos(value)
  %8744 = fmul fast float %8743, %8688
  %8745 = call float @dx.op.tertiary.f32(i32 46, float %8742, float %8688, float 0.000000e+00)  ; FMad(a,b,c)
  %8746 = fmul fast float %8688, %8742
  %8747 = fsub fast float -0.000000e+00, %8746
  %8748 = call float @dx.op.tertiary.f32(i32 46, float %8743, float %8688, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8749

; <label>:8749                                    ; preds = %8749, %8674
  %8750 = phi float [ 0.000000e+00, %8674 ], [ %8782, %8749 ]
  %8751 = phi float [ 0.000000e+00, %8674 ], [ %8784, %8749 ]
  %8752 = phi i32 [ 0, %8674 ], [ %8785, %8749 ]
  %8753 = mul i32 %8752, 2
  %8754 = add i32 0, %8753
  %8755 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8754
  %8756 = load float, float* %8755, align 4
  %8757 = mul i32 %8752, 2
  %8758 = add i32 1, %8757
  %8759 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8758
  %8760 = load float, float* %8759, align 4
  %8761 = fmul fast float %8744, %8756
  %8762 = call float @dx.op.tertiary.f32(i32 46, float %8760, float %8747, float %8761)  ; FMad(a,b,c)
  %8763 = fmul fast float %8756, %8745
  %8764 = call float @dx.op.tertiary.f32(i32 46, float %8760, float %8748, float %8763)  ; FMad(a,b,c)
  %8765 = fadd fast float %8762, %8737
  %8766 = fadd fast float %8764, %8738
  %8767 = fmul fast float %8765, %8683
  %8768 = fmul fast float %8766, %8683
  %8769 = call float @dx.op.binary.f32(i32 35, float %8767, float %8679)  ; FMax(a,b)
  %8770 = call float @dx.op.binary.f32(i32 35, float %8768, float %8679)  ; FMax(a,b)
  %8771 = call float @dx.op.binary.f32(i32 36, float %8769, float %8680)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8770, float %8680)  ; FMin(a,b)
  %8773 = fadd fast float %8771, %8677
  %8774 = fadd fast float %8772, %8678
  %8775 = uitofp i32 %8714 to float
  %8776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %8773, float %8774, float %8775, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8777 = extractvalue %dx.types.ResRet.f32 %8776, 0
  %8778 = fsub fast float %8777, %8740
  %8779 = fsub fast float %8778, %8687
  %8780 = fcmp fast ogt float %8779, 0.000000e+00
  %8781 = select i1 %8780, float 1.000000e+00, float 0.000000e+00
  %8782 = fadd fast float %8781, %8750
  %8783 = select i1 %8780, float %8779, float 0.000000e+00
  %8784 = fadd fast float %8783, %8751
  %8785 = add nuw nsw i32 %8752, 1
  %8786 = icmp eq i32 %8785, 8
  br i1 %8786, label %8787, label %8749

; <label>:8787                                    ; preds = %8749
  %8788 = fdiv fast float 1.000000e+00, %8782
  %8789 = fmul fast float %8788, %8784
  %8790 = fdiv fast float 1.000000e+00, %8740
  %8791 = fmul fast float %8789, %8790
  %8792 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8793 = call float @dx.op.binary.f32(i32 35, float %8792, float 0.000000e+00)  ; FMax(a,b)
  %8794 = fmul fast float %8782, 1.250000e-01
  %8795 = call float @dx.op.unary.f32(i32 7, float %8794)  ; Saturate(value)
  %8796 = fmul fast float %8795, 2.000000e+00
  %8797 = fadd fast float %8796, -1.000000e+00
  %8798 = fcmp fast ogt float %8797, 0.000000e+00
  %8799 = fcmp fast olt float %8797, 0.000000e+00
  %8800 = zext i1 %8798 to i32
  %8801 = zext i1 %8799 to i32
  %8802 = sub nsw i32 %8800, %8801
  %8803 = sitofp i32 %8802 to float
  %8804 = fmul fast float %8803, %8797
  %8805 = fsub fast float 1.000000e+00, %8804
  %8806 = fmul fast float %8805, %8805
  %8807 = fmul fast float %8806, %8805
  %8808 = fsub fast float %8805, %8807
  %8809 = fmul fast float %8808, %8793
  %8810 = fsub fast float 1.000000e+00, %8807
  %8811 = fsub fast float %8810, %8809
  %8812 = fmul fast float %8803, 5.000000e-01
  %8813 = fmul fast float %8812, %8811
  %8814 = fsub fast float -5.000000e-01, %8813
  %8815 = fmul fast float %8814, %8648
  %8816 = fadd fast float %8815, 1.000000e+00
  %8817 = fmul fast float %8816, %8660
  br label %8818

; <label>:8818                                    ; preds = %8787, %8672
  %8819 = phi float [ %8817, %8787 ], [ %8660, %8672 ]
  %8820 = call float @dx.op.binary.f32(i32 36, float %8819, float %8819)  ; FMin(a,b)
  %8821 = call float @dx.op.binary.f32(i32 36, float %8819, float %8820)  ; FMin(a,b)
  %8822 = fcmp fast ogt float %8821, 0.000000e+00
  br i1 %8822, label %8823, label %8664, !dx.controlflow.hints !143

; <label>:8823                                    ; preds = %8818
  %8824 = bitcast i32 %5674 to float
  %8825 = fmul fast float %8819, %8582
  %8826 = fmul fast float %8819, %8583
  %8827 = fmul fast float %8819, %8584
  %8828 = fsub fast float %8566, %4811
  %8829 = fcmp fast ogt float %8828, 0.000000e+00
  %8830 = fsub fast float %204, %4811
  %8831 = fcmp fast ogt float %8830, 0.000000e+00
  %8832 = xor i1 %8831, %8829
  %8833 = fsub fast float %4811, %8566
  %8834 = fmul fast float %8833, 2.000000e+00
  %8835 = fadd fast float %8834, %8566
  %8836 = select i1 %8832, float %8566, float %8835
  %8837 = fsub fast float %8836, %204
  %8838 = call float @dx.op.dot3.f32(i32 55, float %8592, float %8593, float %8837, float %8592, float %8593, float %8837)  ; Dot3(ax,ay,az,bx,by,bz)
  %8839 = call float @dx.op.unary.f32(i32 25, float %8838)  ; Rsqrt(value)
  %8840 = fmul fast float %8839, %8592
  %8841 = fmul fast float %8839, %8593
  %8842 = fmul fast float %8839, %8837
  %8843 = fsub fast float %4811, %204
  %8844 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8843)  ; Dot3(ax,ay,az,bx,by,bz)
  %8845 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8840, float %8841, float %8842)  ; Dot3(ax,ay,az,bx,by,bz)
  %8846 = fdiv fast float 1.000000e+00, %8845
  %8847 = fmul fast float %8846, %8844
  %8848 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8830, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8849 = fcmp fast ogt float %8848, 0.000000e+00
  %8850 = fcmp fast olt float %8848, 0.000000e+00
  %8851 = zext i1 %8849 to i32
  %8852 = zext i1 %8850 to i32
  %8853 = sub nsw i32 %8851, %8852
  %8854 = sitofp i32 %8853 to float
  %8855 = fsub fast float %8836, %4811
  %8856 = call float @dx.op.dot3.f32(i32 55, float %8592, float %8593, float %8855, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8857 = fcmp fast ogt float %8856, 0.000000e+00
  %8858 = fcmp fast olt float %8856, 0.000000e+00
  %8859 = zext i1 %8857 to i32
  %8860 = zext i1 %8858 to i32
  %8861 = sub nsw i32 %8859, %8860
  %8862 = sitofp i32 %8861 to float
  %8863 = fcmp fast une float %8854, %8862
  br i1 %8863, label %8864, label %8874

; <label>:8864                                    ; preds = %8823
  %8865 = fmul fast float %8847, %8842
  %8866 = fmul fast float %8847, %8841
  %8867 = fmul fast float %8847, %8840
  %8868 = fmul fast float %8867, %8867
  %8869 = fmul fast float %8866, %8866
  %8870 = fadd fast float %8868, %8869
  %8871 = fmul fast float %8865, %8865
  %8872 = fadd fast float %8870, %8871
  %8873 = call float @dx.op.unary.f32(i32 24, float %8872)  ; Sqrt(value)
  br label %8886

; <label>:8874                                    ; preds = %8823
  %8875 = icmp slt i32 %8853, 0
  br i1 %8875, label %8876, label %8886

; <label>:8876                                    ; preds = %8874
  %8877 = fsub fast float %202, %8564
  %8878 = fsub fast float %203, %8565
  %8879 = fsub fast float %204, %8836
  %8880 = fmul fast float %8877, %8877
  %8881 = fmul fast float %8878, %8878
  %8882 = fadd fast float %8880, %8881
  %8883 = fmul fast float %8879, %8879
  %8884 = fadd fast float %8882, %8883
  %8885 = call float @dx.op.unary.f32(i32 24, float %8884)  ; Sqrt(value)
  br label %8886

; <label>:8886                                    ; preds = %8876, %8874, %8864
  %8887 = phi float [ %8873, %8864 ], [ %8885, %8876 ], [ 0.000000e+00, %8874 ]
  %8888 = and i1 %8831, %8829
  %8889 = fsub fast float -0.000000e+00, %8887
  %8890 = select i1 %8888, float -0.000000e+00, float %8889
  %8891 = fmul fast float %4808, 0x3FF7154760000000
  %8892 = fmul fast float %8891, %8890
  %8893 = fmul fast float %4809, 0x3FF7154760000000
  %8894 = fmul fast float %8893, %8890
  %8895 = fmul fast float %4810, 0x3FF7154760000000
  %8896 = fmul fast float %8895, %8890
  %8897 = call float @dx.op.unary.f32(i32 21, float %8892)  ; Exp(value)
  %8898 = call float @dx.op.unary.f32(i32 21, float %8894)  ; Exp(value)
  %8899 = call float @dx.op.unary.f32(i32 21, float %8896)  ; Exp(value)
  %8900 = call float @dx.op.unary.f32(i32 7, float %8897)  ; Saturate(value)
  %8901 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8902 = call float @dx.op.unary.f32(i32 7, float %8899)  ; Saturate(value)
  %8903 = fmul fast float %8825, %8900
  %8904 = fmul fast float %8826, %8901
  %8905 = fmul fast float %8827, %8902
  %8906 = fsub fast float %8598, %235
  %8907 = fsub fast float %8599, %236
  %8908 = fsub fast float %8600, %237
  %8909 = call float @dx.op.dot3.f32(i32 55, float %8906, float %8907, float %8908, float %8906, float %8907, float %8908)  ; Dot3(ax,ay,az,bx,by,bz)
  %8910 = call float @dx.op.unary.f32(i32 25, float %8909)  ; Rsqrt(value)
  %8911 = fmul fast float %8910, %8906
  %8912 = fmul fast float %8910, %8907
  %8913 = fmul fast float %8910, %8908
  %8914 = call float @dx.op.dot3.f32(i32 55, float %8598, float %8599, float %8600, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %8915 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %8911, float %8912, float %8913)  ; Dot3(ax,ay,az,bx,by,bz)
  %8916 = call float @dx.op.unary.f32(i32 7, float %8914)  ; Saturate(value)
  %8917 = fmul fast float %8916, %8605
  %8918 = fmul fast float %8916, %8916
  %8919 = fmul fast float %8918, %8824
  %8920 = call float @dx.op.unary.f32(i32 7, float %8919)  ; Saturate(value)
  %8921 = fmul fast float %8917, %8920
  %8922 = bitcast float %8595 to i32
  %8923 = ashr i32 %8922, 1
  %8924 = sub nsw i32 1597463007, %8923
  %8925 = bitcast i32 %8924 to float
  %8926 = fmul fast float %8925, %8592
  %8927 = fmul fast float %8925, %8593
  %8928 = fmul fast float %8925, %8594
  %8929 = fsub fast float %8926, %235
  %8930 = fsub fast float %8927, %236
  %8931 = fsub fast float %8928, %237
  %8932 = call float @dx.op.dot3.f32(i32 55, float %8929, float %8930, float %8931, float %8929, float %8930, float %8931)  ; Dot3(ax,ay,az,bx,by,bz)
  %8933 = call float @dx.op.unary.f32(i32 25, float %8932)  ; Rsqrt(value)
  %8934 = fmul fast float %8929, %8933
  %8935 = fmul fast float %8930, %8933
  %8936 = fmul fast float %8931, %8933
  %8937 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %8934, float %8935, float %8936)  ; Dot3(ax,ay,az,bx,by,bz)
  %8938 = fmul fast float %8937, %8937
  %8939 = call float @dx.op.unary.f32(i32 6, float %8914)  ; FAbs(value)
  %8940 = fsub fast float 1.000000e+00, %5668
  %8941 = fmul fast float %5650, %5650
  %8942 = fmul fast float %8941, %8940
  %8943 = fadd fast float %8942, %5668
  %8944 = bitcast float %8943 to i32
  %8945 = ashr i32 %8944, 1
  %8946 = add nsw i32 %8945, 532487669
  %8947 = bitcast i32 %8946 to float
  %8948 = fadd fast float %8947, %5650
  %8949 = fmul fast float %5668, %8938
  %8950 = fsub fast float 1.000000e+00, %8938
  %8951 = fadd fast float %8950, %8949
  %8952 = fmul fast float %8939, %8939
  %8953 = fmul fast float %8952, %8940
  %8954 = fadd fast float %8953, %5668
  %8955 = bitcast float %8954 to i32
  %8956 = ashr i32 %8955, 1
  %8957 = add nsw i32 %8956, 532487669
  %8958 = bitcast i32 %8957 to float
  %8959 = fadd fast float %8958, %8939
  %8960 = fmul fast float %8951, %8951
  %8961 = fmul fast float %8960, %8948
  %8962 = fmul fast float %8961, %8959
  %8963 = fdiv fast float 1.000000e+00, %8962
  %8964 = bitcast float %5668 to i32
  %8965 = sitofp i32 %8964 to float
  %8966 = fmul fast float %8965, 0x3FE7F73180000000
  %8967 = fadd fast float %8966, 0x41AFE27C40000000
  %8968 = fptosi float %8967 to i32
  %8969 = bitcast i32 %8968 to float
  %8970 = fmul fast float %8561, 0x3FD80E9D60000000
  %8971 = fmul fast float %8970, %8925
  %8972 = fadd fast float %8969, %8971
  %8973 = bitcast float %8972 to i32
  %8974 = sub nsw i32 2129859010, %8973
  %8975 = bitcast i32 %8974 to float
  %8976 = fmul fast float %5668, %8963
  %8977 = fmul fast float %8976, %8969
  %8978 = fmul fast float %8977, %8975
  %8979 = call float @dx.op.unary.f32(i32 6, float %8915)  ; FAbs(value)
  %8980 = fsub fast float 1.000000e+00, %8979
  %8981 = bitcast float %8980 to i32
  %8982 = sitofp i32 %8981 to float
  %8983 = fmul fast float %8982, 5.000000e+00
  %8984 = fadd fast float %8983, 0xC1EFBF8940000000
  %8985 = fptosi float %8984 to i32
  %8986 = bitcast i32 %8985 to float
  %8987 = fsub fast float 1.000000e+00, %5605
  %8988 = fsub fast float 1.000000e+00, %5606
  %8989 = fsub fast float 1.000000e+00, %5648
  %8990 = fmul fast float %8986, %8987
  %8991 = fmul fast float %8986, %8988
  %8992 = fmul fast float %8986, %8989
  %8993 = fadd fast float %8990, %5605
  %8994 = fadd fast float %8991, %5606
  %8995 = fadd fast float %8992, %5648
  br i1 %5922, label %8996, label %9019

; <label>:8996                                    ; preds = %8886
  %8997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4315, float %8979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8998 = extractvalue %dx.types.ResRet.f32 %8997, 0
  %8999 = extractvalue %dx.types.ResRet.f32 %8997, 1
  %9000 = extractvalue %dx.types.ResRet.f32 %8997, 2
  %9001 = fadd fast float %8998, -5.000000e-01
  %9002 = fadd fast float %8999, -5.000000e-01
  %9003 = fadd fast float %9000, -5.000000e-01
  %9004 = fmul fast float %5605, 4.000000e+00
  %9005 = fmul fast float %9004, %8987
  %9006 = fmul fast float %9005, %9001
  %9007 = fmul fast float %5606, 4.000000e+00
  %9008 = fmul fast float %9007, %8988
  %9009 = fmul fast float %9008, %9002
  %9010 = fmul fast float %5648, 4.000000e+00
  %9011 = fmul fast float %9010, %8989
  %9012 = fmul fast float %9011, %9003
  %9013 = fadd fast float %9006, %8993
  %9014 = fadd fast float %9009, %8994
  %9015 = fadd fast float %9012, %8995
  %9016 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9017 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  %9018 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  br label %9019

; <label>:9019                                    ; preds = %8996, %8886
  %9020 = phi float [ %9016, %8996 ], [ %8993, %8886 ]
  %9021 = phi float [ %9017, %8996 ], [ %8994, %8886 ]
  %9022 = phi float [ %9018, %8996 ], [ %8995, %8886 ]
  %9023 = fmul fast float %8914, 9.843750e-01
  %9024 = fadd fast float %9023, 7.812500e-03
  %9025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %9024, float %5912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9026 = extractvalue %dx.types.ResRet.f32 %9025, 2
  %9027 = extractvalue %dx.types.ResRet.f32 %9025, 3
  %9028 = fmul fast float %9026, %5605
  %9029 = fmul fast float %9026, %5606
  %9030 = fmul fast float %9026, %5648
  %9031 = fadd fast float %9028, %9027
  %9032 = fadd fast float %9029, %9027
  %9033 = fadd fast float %9030, %9027
  br i1 %5922, label %9034, label %9057

; <label>:9034                                    ; preds = %9019
  %9035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4315, float %8914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9036 = extractvalue %dx.types.ResRet.f32 %9035, 0
  %9037 = extractvalue %dx.types.ResRet.f32 %9035, 1
  %9038 = extractvalue %dx.types.ResRet.f32 %9035, 2
  %9039 = fadd fast float %9036, -5.000000e-01
  %9040 = fadd fast float %9037, -5.000000e-01
  %9041 = fadd fast float %9038, -5.000000e-01
  %9042 = fmul fast float %5605, 4.000000e+00
  %9043 = fmul fast float %9042, %8987
  %9044 = fmul fast float %9043, %9039
  %9045 = fmul fast float %5606, 4.000000e+00
  %9046 = fmul fast float %9045, %8988
  %9047 = fmul fast float %9046, %9040
  %9048 = fmul fast float %5648, 4.000000e+00
  %9049 = fmul fast float %9048, %8989
  %9050 = fmul fast float %9049, %9041
  %9051 = fadd fast float %9044, %9031
  %9052 = fadd fast float %9047, %9032
  %9053 = fadd fast float %9050, %9033
  %9054 = call float @dx.op.unary.f32(i32 7, float %9051)  ; Saturate(value)
  %9055 = call float @dx.op.unary.f32(i32 7, float %9052)  ; Saturate(value)
  %9056 = call float @dx.op.unary.f32(i32 7, float %9053)  ; Saturate(value)
  br label %9057

; <label>:9057                                    ; preds = %9034, %9019
  %9058 = phi float [ %9054, %9034 ], [ %9031, %9019 ]
  %9059 = phi float [ %9055, %9034 ], [ %9032, %9019 ]
  %9060 = phi float [ %9056, %9034 ], [ %9033, %9019 ]
  %9061 = call float @dx.op.binary.f32(i32 35, float %9059, float %9060)  ; FMax(a,b)
  %9062 = call float @dx.op.binary.f32(i32 35, float %9058, float %9061)  ; FMax(a,b)
  %9063 = fsub fast float 1.000000e+00, %9062
  %9064 = fsub fast float -0.000000e+00, %5608
  %9065 = fsub fast float -0.000000e+00, %5609
  %9066 = fsub fast float -0.000000e+00, %5610
  %9067 = call float @dx.op.dot3.f32(i32 55, float %8598, float %8599, float %8600, float %9064, float %9065, float %9066)  ; Dot3(ax,ay,az,bx,by,bz)
  %9068 = call float @dx.op.unary.f32(i32 7, float %9067)  ; Saturate(value)
  %9069 = fmul fast float %9068, %8605
  %9070 = fmul fast float %9068, 9.843750e-01
  %9071 = fadd fast float %9070, 7.812500e-03
  %9072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %9071, float %5912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9073 = extractvalue %dx.types.ResRet.f32 %9072, 2
  %9074 = extractvalue %dx.types.ResRet.f32 %9072, 3
  %9075 = fmul fast float %9073, %5605
  %9076 = fmul fast float %9073, %5606
  %9077 = fmul fast float %9073, %5648
  %9078 = fadd fast float %9075, %9074
  %9079 = fadd fast float %9076, %9074
  %9080 = fadd fast float %9077, %9074
  br i1 %5922, label %9081, label %9104

; <label>:9081                                    ; preds = %9057
  %9082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4315, float %9068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9083 = extractvalue %dx.types.ResRet.f32 %9082, 0
  %9084 = extractvalue %dx.types.ResRet.f32 %9082, 1
  %9085 = extractvalue %dx.types.ResRet.f32 %9082, 2
  %9086 = fadd fast float %9083, -5.000000e-01
  %9087 = fadd fast float %9084, -5.000000e-01
  %9088 = fadd fast float %9085, -5.000000e-01
  %9089 = fmul fast float %5605, 4.000000e+00
  %9090 = fmul fast float %9089, %8987
  %9091 = fmul fast float %9090, %9086
  %9092 = fmul fast float %5606, 4.000000e+00
  %9093 = fmul fast float %9092, %8988
  %9094 = fmul fast float %9093, %9087
  %9095 = fmul fast float %5648, 4.000000e+00
  %9096 = fmul fast float %9095, %8989
  %9097 = fmul fast float %9096, %9088
  %9098 = fadd fast float %9091, %9078
  %9099 = fadd fast float %9094, %9079
  %9100 = fadd fast float %9097, %9080
  %9101 = call float @dx.op.unary.f32(i32 7, float %9098)  ; Saturate(value)
  %9102 = call float @dx.op.unary.f32(i32 7, float %9099)  ; Saturate(value)
  %9103 = call float @dx.op.unary.f32(i32 7, float %9100)  ; Saturate(value)
  br label %9104

; <label>:9104                                    ; preds = %9081, %9057
  %9105 = phi float [ %9101, %9081 ], [ %9078, %9057 ]
  %9106 = phi float [ %9102, %9081 ], [ %9079, %9057 ]
  %9107 = phi float [ %9103, %9081 ], [ %9080, %9057 ]
  %9108 = call float @dx.op.binary.f32(i32 35, float %9106, float %9107)  ; FMax(a,b)
  %9109 = call float @dx.op.binary.f32(i32 35, float %9105, float %9108)  ; FMax(a,b)
  %9110 = fsub fast float 1.000000e+00, %9109
  %9111 = fmul fast float %9069, %9110
  %9112 = fmul fast float %9111, %4427
  %9113 = fmul fast float %9111, %4428
  %9114 = fmul fast float %9111, %4429
  %9115 = fmul fast float %9020, %8978
  %9116 = fmul fast float %9021, %8978
  %9117 = fmul fast float %9022, %8978
  %9118 = fsub fast float 1.000000e+00, %8915
  %9119 = bitcast float %9118 to i32
  %9120 = sitofp i32 %9119 to float
  %9121 = fmul fast float %9120, 5.000000e+00
  %9122 = fadd fast float %9121, 0xC1EFBF8940000000
  %9123 = fptosi float %9122 to i32
  %9124 = bitcast i32 %9123 to float
  %9125 = fmul fast float %9124, %4316
  %9126 = fmul fast float %9063, %9125
  %9127 = fmul fast float %9126, %6464
  %9128 = fmul fast float %9126, %6465
  %9129 = fmul fast float %9126, %6466
  %9130 = fmul fast float %9063, %8921
  %9131 = fadd fast float %9127, %9115
  %9132 = fadd fast float %9128, %9116
  %9133 = fadd fast float %9129, %9117
  %9134 = fadd fast float %9112, %9130
  %9135 = fadd fast float %9113, %9130
  %9136 = fadd fast float %9114, %9130
  %9137 = fmul fast float %8903, %4341
  %9138 = fmul fast float %9137, %9134
  %9139 = fmul fast float %8904, %4341
  %9140 = fmul fast float %9139, %9135
  %9141 = fmul fast float %8905, %4341
  %9142 = fmul fast float %9141, %9136
  %9143 = fadd fast float %9138, %8535
  %9144 = fadd fast float %9140, %8536
  %9145 = fadd fast float %9142, %8537
  %9146 = fmul fast float %9137, %8921
  %9147 = fmul fast float %9146, %9131
  %9148 = fmul fast float %9139, %8921
  %9149 = fmul fast float %9148, %9132
  %9150 = fmul fast float %9141, %8921
  %9151 = fmul fast float %9150, %9133
  %9152 = fadd fast float %9147, %8532
  %9153 = fadd fast float %9149, %8533
  %9154 = fadd fast float %9151, %8534
  br label %8664

; <label>:9155                                    ; preds = %8664
  br label %9156

; <label>:9156                                    ; preds = %9155, %8498
  %9157 = phi float [ %8500, %8498 ], [ %8665, %9155 ]
  %9158 = phi float [ %8501, %8498 ], [ %8666, %9155 ]
  %9159 = phi float [ %8502, %8498 ], [ %8667, %9155 ]
  %9160 = phi float [ %8503, %8498 ], [ %8668, %9155 ]
  %9161 = phi float [ %8504, %8498 ], [ %8669, %9155 ]
  %9162 = phi float [ %8505, %8498 ], [ %8670, %9155 ]
  %9163 = add i32 %8499, 1
  %9164 = icmp ugt i32 %9163, %8495
  br i1 %9164, label %9165, label %8498

; <label>:9165                                    ; preds = %9156
  br label %9166

; <label>:9166                                    ; preds = %9165, %8448, %8438
  %9167 = phi float [ %8439, %8438 ], [ %8439, %8448 ], [ %9157, %9165 ]
  %9168 = phi float [ %8440, %8438 ], [ %8440, %8448 ], [ %9158, %9165 ]
  %9169 = phi float [ %8441, %8438 ], [ %8441, %8448 ], [ %9159, %9165 ]
  %9170 = phi float [ %8442, %8438 ], [ %8442, %8448 ], [ %9160, %9165 ]
  %9171 = phi float [ %8443, %8438 ], [ %8443, %8448 ], [ %9161, %9165 ]
  %9172 = phi float [ %8444, %8438 ], [ %8444, %8448 ], [ %9162, %9165 ]
  %9173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9173, 0
  %9175 = fmul fast float %9174, %6523
  %9176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9176, 3
  %9178 = fsub fast float 1.000000e+00, %4319
  %9179 = call float @dx.op.unary.f32(i32 7, float %9178)  ; Saturate(value)
  %9180 = fadd fast float %9172, %4318
  %9181 = fmul fast float %9180, %4319
  %9182 = fmul fast float %9179, %9177
  %9183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9183, 3
  %9185 = fmul fast float %9170, %5602
  %9186 = fmul fast float %9171, %5603
  %9187 = fmul fast float %9172, %5604
  %9188 = fcmp fast ogt float %110, %269
  %9189 = and i1 %9188, %4814
  %9190 = or i1 %4820, %9189
  %9191 = icmp eq i32 %4813, 2
  %9192 = fcmp fast ole float %110, %269
  %9193 = and i1 %9192, %9191
  %9194 = or i1 %9193, %9190
  br i1 %9189, label %9195, label %9449

; <label>:9195                                    ; preds = %9166
  %9196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9196, 2
  %9198 = extractvalue %dx.types.CBufRet.f32 %9196, 3
  %9199 = fmul fast float %9197, %123
  %9200 = fmul fast float %9198, %124
  %9201 = call float @dx.op.unary.f32(i32 7, float %9199)  ; Saturate(value)
  %9202 = call float @dx.op.unary.f32(i32 7, float %9200)  ; Saturate(value)
  %9203 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %57, float %9201, float %9202, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9204 = extractvalue %dx.types.ResRet.f32 %9203, 0
  %9205 = extractvalue %dx.types.ResRet.f32 %9203, 1
  %9206 = extractvalue %dx.types.ResRet.f32 %9203, 2
  %9207 = extractvalue %dx.types.ResRet.f32 %9203, 3
  %9208 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %57, float %9201, float %9202, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9209 = extractvalue %dx.types.ResRet.f32 %9208, 0
  %9210 = extractvalue %dx.types.ResRet.f32 %9208, 1
  %9211 = extractvalue %dx.types.ResRet.f32 %9208, 2
  %9212 = extractvalue %dx.types.ResRet.f32 %9208, 3
  %9213 = call float @dx.op.binary.f32(i32 35, float %9205, float %9206)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float %9204, float %9213)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 35, float %9214, float %9207)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9210, float %9211)  ; FMin(a,b)
  %9217 = call float @dx.op.binary.f32(i32 36, float %9209, float %9216)  ; FMin(a,b)
  %9218 = call float @dx.op.binary.f32(i32 36, float %9217, float %9212)  ; FMin(a,b)
  %9219 = fmul fast float %9215, 2.550000e+02
  %9220 = fadd fast float %9219, 0x3F70101020000000
  %9221 = fptoui float %9220 to i32
  %9222 = fmul fast float %9218, 2.550000e+02
  %9223 = fadd fast float %9222, 0x3F70101020000000
  %9224 = fptoui float %9223 to i32
  %9225 = icmp ult i32 %9221, %9224
  br i1 %9225, label %9226, label %9394

; <label>:9226                                    ; preds = %9195
  %9227 = fcmp fast ogt float %109, 9.843750e-01
  %9228 = fadd fast float %110, -4.000000e+00
  %9229 = select i1 %9227, float -4.000000e+00, float %9228
  %9230 = call float @dx.op.binary.f32(i32 35, float %9229, float 0.000000e+00)  ; FMax(a,b)
  %9231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.f32 %9231, 0
  %9233 = fadd fast float %9232, %9230
  %9234 = extractvalue %dx.types.CBufRet.f32 %9231, 2
  %9235 = fmul fast float %9233, %9234
  %9236 = call float @dx.op.unary.f32(i32 23, float %9235)  ; Log(value)
  %9237 = extractvalue %dx.types.CBufRet.f32 %9231, 3
  %9238 = fmul fast float %9237, %9236
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 2
  %9241 = fmul fast float %9238, %9240
  %9242 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9243 = uitofp i32 %9221 to float
  %9244 = uitofp i32 %9224 to float
  %9245 = fadd fast float %9243, 5.000000e-01
  %9246 = fadd fast float %9244, 5.000000e-01
  %9247 = fmul fast float %9240, %9245
  %9248 = fmul fast float %9240, %9246
  %9249 = fadd fast float %9247, 0x3F0FFB4800000000
  %9250 = fadd fast float %9248, 0xBF0FFB4800000000
  %9251 = call float @dx.op.binary.f32(i32 35, float %9242, float %9249)  ; FMax(a,b)
  %9252 = call float @dx.op.binary.f32(i32 36, float %9251, float %9250)  ; FMin(a,b)
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 1
  %9255 = extractvalue %dx.types.CBufRet.f32 %9253, 2
  %9256 = extractvalue %dx.types.CBufRet.f32 %9253, 0
  %9257 = fmul fast float %9254, %9252
  %9258 = fadd fast float %9256, %9257
  %9259 = fadd fast float %9256, %9255
  %9260 = fsub fast float %9254, %9255
  %9261 = fadd fast float %9260, %9256
  %9262 = call float @dx.op.binary.f32(i32 35, float %9258, float %9259)  ; FMax(a,b)
  %9263 = call float @dx.op.binary.f32(i32 36, float %9262, float %9261)  ; FMin(a,b)
  %9264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %55, float %9201, float %9202, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9265 = extractvalue %dx.types.ResRet.f32 %9264, 0
  %9266 = extractvalue %dx.types.ResRet.f32 %9264, 1
  %9267 = extractvalue %dx.types.ResRet.f32 %9264, 2
  %9268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9269 = extractvalue %dx.types.CBufRet.i32 %9268, 0
  %9270 = extractvalue %dx.types.CBufRet.i32 %9268, 1
  %9271 = uitofp i32 %9269 to float
  %9272 = uitofp i32 %9270 to float
  %9273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9274 = extractvalue %dx.types.CBufRet.f32 %9273, 0
  %9275 = extractvalue %dx.types.CBufRet.f32 %9273, 1
  %9276 = fmul fast float %9271, %9201
  %9277 = fmul fast float %9272, %9202
  %9278 = fadd fast float %9276, -5.000000e-01
  %9279 = fadd fast float %9277, -5.000000e-01
  %9280 = call float @dx.op.unary.f32(i32 22, float %9278)  ; Frc(value)
  %9281 = call float @dx.op.unary.f32(i32 22, float %9279)  ; Frc(value)
  %9282 = fmul fast float %9280, %9280
  %9283 = fmul fast float %9282, %9280
  %9284 = fsub fast float 3.000000e+00, %9280
  %9285 = fmul fast float %9282, %9284
  %9286 = fmul fast float %9280, 3.000000e+00
  %9287 = fmul fast float %9283, 3.000000e+00
  %9288 = fmul fast float %9282, 6.000000e+00
  %9289 = fsub fast float %9287, %9288
  %9290 = fadd fast float %9289, 4.000000e+00
  %9291 = fmul fast float %9290, 0x3FC5555560000000
  %9292 = fmul fast float %9283, -3.000000e+00
  %9293 = fadd fast float %9282, %9280
  %9294 = fmul fast float %9293, 3.000000e+00
  %9295 = fadd fast float %9292, 1.000000e+00
  %9296 = fadd fast float %9295, %9294
  %9297 = fmul fast float %9283, 0x3FC5555560000000
  %9298 = fmul fast float %9281, %9281
  %9299 = fmul fast float %9298, %9281
  %9300 = fsub fast float 3.000000e+00, %9281
  %9301 = fmul fast float %9298, %9300
  %9302 = fmul fast float %9281, 3.000000e+00
  %9303 = fmul fast float %9299, 3.000000e+00
  %9304 = fmul fast float %9298, 6.000000e+00
  %9305 = fsub fast float %9303, %9304
  %9306 = fadd fast float %9305, 4.000000e+00
  %9307 = fmul fast float %9306, 0x3FC5555560000000
  %9308 = fmul fast float %9299, -3.000000e+00
  %9309 = fadd fast float %9298, %9281
  %9310 = fmul fast float %9309, 3.000000e+00
  %9311 = fadd fast float %9308, 1.000000e+00
  %9312 = fadd fast float %9311, %9310
  %9313 = fmul fast float %9299, 0x3FC5555560000000
  %9314 = fadd fast float %9280, 1.000000e+00
  %9315 = fsub fast float 1.000000e+00, %9286
  %9316 = fadd fast float %9315, %9285
  %9317 = fadd fast float %9316, %9290
  %9318 = fmul fast float %9317, 0x3FC5555560000000
  %9319 = fdiv fast float %9291, %9318
  %9320 = fsub fast float %9314, %9319
  %9321 = fsub fast float 1.000000e+00, %9280
  %9322 = fadd fast float %9296, %9283
  %9323 = fmul fast float %9322, 0x3FC5555560000000
  %9324 = fdiv fast float %9297, %9323
  %9325 = fadd fast float %9321, %9324
  %9326 = fadd fast float %9281, 1.000000e+00
  %9327 = fsub fast float 1.000000e+00, %9302
  %9328 = fadd fast float %9327, %9301
  %9329 = fadd fast float %9328, %9306
  %9330 = fmul fast float %9329, 0x3FC5555560000000
  %9331 = fdiv fast float %9307, %9330
  %9332 = fsub fast float %9326, %9331
  %9333 = fsub fast float 1.000000e+00, %9281
  %9334 = fadd fast float %9312, %9299
  %9335 = fmul fast float %9334, 0x3FC5555560000000
  %9336 = fdiv fast float %9313, %9335
  %9337 = fadd fast float %9336, %9333
  %9338 = fmul fast float %9320, %9274
  %9339 = fsub fast float %9201, %9338
  %9340 = fmul fast float %9325, %9274
  %9341 = fadd fast float %9340, %9201
  %9342 = fmul fast float %9337, %9275
  %9343 = fadd fast float %9342, %9202
  %9344 = fmul fast float %9332, %9275
  %9345 = fsub fast float %9202, %9344
  %9346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %9339, float %9345, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9347 = extractvalue %dx.types.ResRet.f32 %9346, 0
  %9348 = extractvalue %dx.types.ResRet.f32 %9346, 1
  %9349 = extractvalue %dx.types.ResRet.f32 %9346, 2
  %9350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %9341, float %9345, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9351 = extractvalue %dx.types.ResRet.f32 %9350, 0
  %9352 = extractvalue %dx.types.ResRet.f32 %9350, 1
  %9353 = extractvalue %dx.types.ResRet.f32 %9350, 2
  %9354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %9339, float %9343, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9355 = extractvalue %dx.types.ResRet.f32 %9354, 0
  %9356 = extractvalue %dx.types.ResRet.f32 %9354, 1
  %9357 = extractvalue %dx.types.ResRet.f32 %9354, 2
  %9358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %9341, float %9343, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9359 = extractvalue %dx.types.ResRet.f32 %9358, 0
  %9360 = extractvalue %dx.types.ResRet.f32 %9358, 1
  %9361 = extractvalue %dx.types.ResRet.f32 %9358, 2
  %9362 = fsub fast float %9355, %9347
  %9363 = fsub fast float %9356, %9348
  %9364 = fsub fast float %9357, %9349
  %9365 = fmul fast float %9362, %9335
  %9366 = fmul fast float %9363, %9335
  %9367 = fmul fast float %9364, %9335
  %9368 = fadd fast float %9365, %9347
  %9369 = fadd fast float %9366, %9348
  %9370 = fadd fast float %9367, %9349
  %9371 = fsub fast float %9359, %9351
  %9372 = fsub fast float %9360, %9352
  %9373 = fsub fast float %9361, %9353
  %9374 = fmul fast float %9371, %9335
  %9375 = fmul fast float %9372, %9335
  %9376 = fmul fast float %9373, %9335
  %9377 = fsub fast float %9351, %9368
  %9378 = fadd fast float %9377, %9374
  %9379 = fsub fast float %9352, %9369
  %9380 = fadd fast float %9379, %9375
  %9381 = fsub fast float %9353, %9370
  %9382 = fadd fast float %9381, %9376
  %9383 = fmul fast float %9378, %9323
  %9384 = fmul fast float %9380, %9323
  %9385 = fmul fast float %9382, %9323
  %9386 = fadd fast float %9383, %9368
  %9387 = fadd fast float %9384, %9369
  %9388 = fadd fast float %9385, %9370
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 1
  %9391 = fmul fast float %9386, %9390
  %9392 = fmul fast float %9387, %9390
  %9393 = fmul fast float %9388, %9390
  br label %9394

; <label>:9394                                    ; preds = %9226, %9195
  %9395 = phi float [ %9265, %9226 ], [ 1.000000e+00, %9195 ]
  %9396 = phi float [ %9266, %9226 ], [ 1.000000e+00, %9195 ]
  %9397 = phi float [ %9267, %9226 ], [ 1.000000e+00, %9195 ]
  %9398 = phi float [ %9391, %9226 ], [ 0.000000e+00, %9195 ]
  %9399 = phi float [ %9392, %9226 ], [ 0.000000e+00, %9195 ]
  %9400 = phi float [ %9393, %9226 ], [ 0.000000e+00, %9195 ]
  %9401 = call float @dx.op.dot3.f32(i32 55, float %9395, float %9396, float %9397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9402 = call float @dx.op.dot3.f32(i32 55, float %9398, float %9399, float %9400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9403 = select i1 %306, float %9401, float %9395
  %9404 = select i1 %306, float %9401, float %9396
  %9405 = select i1 %306, float 1.000000e+00, float %9397
  %9406 = select i1 %306, float %9402, float %9398
  %9407 = select i1 %306, float 0.000000e+00, float %9399
  %9408 = select i1 %306, float 0.000000e+00, float %9400
  %9409 = fmul fast float %9403, %9185
  %9410 = fmul fast float %9404, %9186
  %9411 = fmul fast float %9405, %9187
  %9412 = fadd fast float %9409, %9406
  %9413 = fadd fast float %9410, %9407
  %9414 = fadd fast float %9408, %9411
  %9415 = fmul fast float %9403, %9167
  %9416 = fmul fast float %9404, %9168
  %9417 = fmul fast float %9405, %9169
  %9418 = fmul fast float %151, %9197
  %9419 = fmul fast float %153, %9198
  %9420 = fsub fast float 1.000000e+00, %9418
  %9421 = fsub fast float 1.000000e+00, %9419
  %9422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9423 = extractvalue %dx.types.CBufRet.f32 %9422, 0
  %9424 = extractvalue %dx.types.CBufRet.f32 %9422, 1
  %9425 = extractvalue %dx.types.CBufRet.f32 %9422, 2
  %9426 = fmul fast float %9420, %9423
  %9427 = fmul fast float %9420, %9424
  %9428 = fmul fast float %9420, %9425
  %9429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9430 = extractvalue %dx.types.CBufRet.f32 %9429, 0
  %9431 = extractvalue %dx.types.CBufRet.f32 %9429, 1
  %9432 = extractvalue %dx.types.CBufRet.f32 %9429, 2
  %9433 = fmul fast float %9421, %9430
  %9434 = fmul fast float %9421, %9431
  %9435 = fmul fast float %9421, %9432
  %9436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9436, 0
  %9438 = extractvalue %dx.types.CBufRet.f32 %9436, 1
  %9439 = extractvalue %dx.types.CBufRet.f32 %9436, 2
  %9440 = fadd fast float %9433, %9437
  %9441 = fadd fast float %9440, %9426
  %9442 = fadd fast float %9434, %9438
  %9443 = fadd fast float %9442, %9427
  %9444 = fadd fast float %9435, %9439
  %9445 = fadd fast float %9444, %9428
  %9446 = fmul fast float %9441, %269
  %9447 = fmul fast float %9443, %269
  %9448 = fmul fast float %9445, %269
  br label %9449

; <label>:9449                                    ; preds = %9394, %9166
  %9450 = phi float [ %9446, %9394 ], [ %202, %9166 ]
  %9451 = phi float [ %9447, %9394 ], [ %203, %9166 ]
  %9452 = phi float [ %9448, %9394 ], [ %204, %9166 ]
  %9453 = phi float [ %269, %9394 ], [ %110, %9166 ]
  %9454 = phi float [ %9412, %9394 ], [ %9185, %9166 ]
  %9455 = phi float [ %9413, %9394 ], [ %9186, %9166 ]
  %9456 = phi float [ %9414, %9394 ], [ %9187, %9166 ]
  %9457 = phi float [ %9415, %9394 ], [ %9167, %9166 ]
  %9458 = phi float [ %9416, %9394 ], [ %9168, %9166 ]
  %9459 = phi float [ %9417, %9394 ], [ %9169, %9166 ]
  %9460 = phi float [ %9395, %9394 ], [ 1.000000e+00, %9166 ]
  br i1 %9194, label %10609, label %9461

; <label>:9461                                    ; preds = %9449
  %9462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9463 = extractvalue %dx.types.CBufRet.f32 %9462, 0
  %9464 = extractvalue %dx.types.CBufRet.f32 %9462, 1
  %9465 = extractvalue %dx.types.CBufRet.f32 %9462, 2
  %9466 = extractvalue %dx.types.CBufRet.f32 %9462, 3
  %9467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9468 = extractvalue %dx.types.CBufRet.f32 %9467, 0
  %9469 = extractvalue %dx.types.CBufRet.f32 %9467, 1
  %9470 = extractvalue %dx.types.CBufRet.f32 %9467, 2
  %9471 = extractvalue %dx.types.CBufRet.f32 %9467, 3
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 0
  %9474 = extractvalue %dx.types.CBufRet.f32 %9472, 1
  %9475 = extractvalue %dx.types.CBufRet.f32 %9472, 2
  %9476 = extractvalue %dx.types.CBufRet.f32 %9472, 3
  %9477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9478 = extractvalue %dx.types.CBufRet.f32 %9477, 0
  %9479 = extractvalue %dx.types.CBufRet.f32 %9477, 1
  %9480 = extractvalue %dx.types.CBufRet.f32 %9477, 2
  %9481 = extractvalue %dx.types.CBufRet.f32 %9477, 3
  %9482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9483 = extractvalue %dx.types.CBufRet.f32 %9482, 3
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 3
  %9486 = extractvalue %dx.types.CBufRet.f32 %9484, 0
  %9487 = extractvalue %dx.types.CBufRet.f32 %9484, 1
  %9488 = extractvalue %dx.types.CBufRet.f32 %9484, 2
  %9489 = fcmp fast olt float %9488, -5.000000e-01
  %9490 = call float @dx.op.dot3.f32(i32 55, float %9450, float %9451, float %9452, float %9450, float %9451, float %9452)  ; Dot3(ax,ay,az,bx,by,bz)
  %9491 = call float @dx.op.unary.f32(i32 25, float %9490)  ; Rsqrt(value)
  %9492 = fmul fast float %9491, %9490
  %9493 = fmul fast float %9491, %9450
  %9494 = fmul fast float %9491, %9451
  %9495 = fmul fast float %9491, %9452
  %9496 = fadd fast float %9492, %9466
  %9497 = call float @dx.op.dot3.f32(i32 55, float %9493, float %9494, float %9495, float %9463, float %9464, float %9465)  ; Dot3(ax,ay,az,bx,by,bz)
  %9498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.i32 %9498, 1
  %9500 = and i32 %9499, 1
  %9501 = icmp ne i32 %9500, 0
  %9502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.f32 %9502, 2
  %9504 = fcmp fast ogt float %9503, 0.000000e+00
  %9505 = and i1 %9501, %9504
  br i1 %9505, label %9506, label %9912, !dx.controlflow.hints !144

; <label>:9506                                    ; preds = %9461
  %9507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9508 = extractvalue %dx.types.CBufRet.f32 %9507, 3
  %9509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9510 = extractvalue %dx.types.CBufRet.f32 %9509, 2
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 2
  %9513 = fsub fast float %9510, %9512
  %9514 = and i32 %9499, 2
  %9515 = extractvalue %dx.types.CBufRet.i32 %9498, 0
  %9516 = call i32 @dx.op.binary.i32(i32 40, i32 %9515, i32 3)  ; UMin(a,b)
  %9517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9518 = extractvalue %dx.types.CBufRet.f32 %9517, 0
  %9519 = extractvalue %dx.types.CBufRet.f32 %9517, 1
  %9520 = extractvalue %dx.types.CBufRet.f32 %9511, 0
  %9521 = extractvalue %dx.types.CBufRet.f32 %9511, 1
  %9522 = fsub fast float %9518, %9520
  %9523 = fsub fast float %9519, %9521
  %9524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9525 = extractvalue %dx.types.CBufRet.f32 %9524, 0
  %9526 = fcmp fast ogt float %9525, 0.000000e+00
  %9527 = fsub fast float -0.000000e+00, %9522
  %9528 = fsub fast float -0.000000e+00, %9523
  %9529 = call float @dx.op.dot2.f32(i32 54, float %9493, float %9494, float %9493, float %9494)  ; Dot2(ax,ay,bx,by)
  %9530 = call float @dx.op.dot2.f32(i32 54, float %9493, float %9494, float %9527, float %9528)  ; Dot2(ax,ay,bx,by)
  %9531 = fmul fast float %9530, 2.000000e+00
  %9532 = call float @dx.op.dot2.f32(i32 54, float %9527, float %9528, float %9527, float %9528)  ; Dot2(ax,ay,bx,by)
  %9533 = fmul fast float %9525, %9525
  %9534 = fsub fast float %9532, %9533
  %9535 = fmul fast float %9531, %9531
  %9536 = fmul fast float %9529, 4.000000e+00
  %9537 = fmul fast float %9536, %9534
  %9538 = fsub fast float %9535, %9537
  %9539 = fcmp fast ogt float %9538, 0.000000e+00
  br i1 %9539, label %9540, label %9555

; <label>:9540                                    ; preds = %9506
  %9541 = fcmp fast ogt float %9531, 0.000000e+00
  %9542 = call float @dx.op.unary.f32(i32 24, float %9538)  ; Sqrt(value)
  %9543 = fsub fast float -0.000000e+00, %9542
  %9544 = select i1 %9541, float %9542, float %9543
  %9545 = fadd fast float %9544, %9531
  %9546 = fmul float %9545, -5.000000e-01
  %9547 = fdiv fast float %9546, %9529
  %9548 = call float @dx.op.binary.f32(i32 35, float %9547, float 0.000000e+00)  ; FMax(a,b)
  %9549 = call float @dx.op.binary.f32(i32 36, float %9492, float %9548)  ; FMin(a,b)
  %9550 = fdiv fast float %9534, %9546
  %9551 = call float @dx.op.binary.f32(i32 35, float %9550, float 0.000000e+00)  ; FMax(a,b)
  %9552 = call float @dx.op.binary.f32(i32 36, float %9492, float %9551)  ; FMin(a,b)
  %9553 = call float @dx.op.binary.f32(i32 36, float %9549, float %9552)  ; FMin(a,b)
  %9554 = call float @dx.op.binary.f32(i32 35, float %9549, float %9552)  ; FMax(a,b)
  br label %9555

; <label>:9555                                    ; preds = %9540, %9506
  %9556 = phi float [ %9554, %9540 ], [ -1.000000e+00, %9506 ]
  %9557 = phi float [ %9553, %9540 ], [ -1.000000e+00, %9506 ]
  %9558 = phi i1 [ true, %9540 ], [ false, %9506 ]
  %9559 = and i1 %9526, %9558
  br i1 %9559, label %9560, label %9562

; <label>:9560                                    ; preds = %9555
  %9561 = fcmp fast oeq float %9557, %9556
  br i1 %9561, label %9865, label %9563

; <label>:9562                                    ; preds = %9555
  br i1 %9526, label %9865, label %9563

; <label>:9563                                    ; preds = %9562, %9560
  %9564 = phi float [ %9492, %9562 ], [ %9556, %9560 ]
  %9565 = phi float [ 0.000000e+00, %9562 ], [ %9557, %9560 ]
  %9566 = icmp ne i32 %9514, 0
  %9567 = fmul fast float %9564, %9495
  %9568 = fadd fast float %9567, %9508
  %9569 = fmul fast float %9568, %9564
  %9570 = select i1 %9566, float 0.000000e+00, float %9569
  %9571 = fcmp fast oeq float %9495, 0.000000e+00
  %9572 = fdiv fast float %9513, %9495
  %9573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9572)  ; FMax(a,b)
  %9574 = select i1 %9571, float %9564, float %9573
  %9575 = call float @dx.op.binary.f32(i32 36, float %9564, float %9574)  ; FMin(a,b)
  %9576 = fcmp fast ogt float %9495, 0.000000e+00
  %9577 = fcmp fast olt float %9513, 0.000000e+00
  br i1 %9576, label %9578, label %9635

; <label>:9578                                    ; preds = %9563
  %9579 = icmp eq i32 %9514, 0
  br i1 %9577, label %9580, label %9624

; <label>:9580                                    ; preds = %9578
  %9581 = select i1 %9579, float %9564, float 0.000000e+00
  %9582 = fsub fast float -0.000000e+00, %9581
  %9583 = call float @dx.op.unary.f32(i32 6, float %9582)  ; FAbs(value)
  %9584 = fmul fast float %9581, %9495
  %9585 = fadd fast float %9584, %9508
  %9586 = fmul fast float %9583, %9585
  %9587 = fsub fast float %9570, %9586
  %9588 = fsub fast float %9564, %9583
  %9589 = select i1 %9579, float %9588, float 0.000000e+00
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9595 = extractvalue %dx.types.CBufRet.f32 %9594, 0
  %9596 = extractvalue %dx.types.CBufRet.f32 %9594, 1
  %9597 = extractvalue %dx.types.CBufRet.f32 %9594, 2
  %9598 = extractvalue %dx.types.CBufRet.f32 %9594, 3
  %9599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9600 = extractvalue %dx.types.CBufRet.f32 %9599, 3
  %9601 = call float @dx.op.binary.f32(i32 36, float %9587, float %9600)  ; FMin(a,b)
  %9602 = fmul fast float %9598, %9589
  %9603 = call float @dx.op.unary.f32(i32 7, float %9602)  ; Saturate(value)
  %9604 = fsub fast float %9595, %9591
  %9605 = fsub fast float %9596, %9592
  %9606 = fsub fast float %9597, %9593
  %9607 = fmul fast float %9603, %9604
  %9608 = fmul fast float %9603, %9605
  %9609 = fmul fast float %9603, %9606
  %9610 = fadd fast float %9607, %9591
  %9611 = fadd fast float %9608, %9592
  %9612 = fadd fast float %9609, %9593
  %9613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9614 = extractvalue %dx.types.CBufRet.f32 %9613, 0
  %9615 = extractvalue %dx.types.CBufRet.f32 %9613, 1
  %9616 = fadd fast float %9615, %9614
  %9617 = call float @dx.op.unary.f32(i32 7, float %9616)  ; Saturate(value)
  %9618 = extractvalue %dx.types.CBufRet.f32 %9613, 2
  %9619 = extractvalue %dx.types.CBufRet.f32 %9613, 3
  %9620 = fadd fast float %9619, %9618
  %9621 = call float @dx.op.unary.f32(i32 7, float %9620)  ; Saturate(value)
  %9622 = fmul fast float %9617, %9601
  %9623 = fmul fast float %9622, %9621
  br label %9865

; <label>:9624                                    ; preds = %9578
  br i1 %9579, label %9625, label %9646

; <label>:9625                                    ; preds = %9624
  %9626 = call float @dx.op.binary.f32(i32 36, float %9575, float %9565)  ; FMin(a,b)
  %9627 = fsub fast float %9575, %9626
  %9628 = fsub fast float %9627, %9564
  %9629 = call float @dx.op.unary.f32(i32 6, float %9628)  ; FAbs(value)
  %9630 = fadd fast float %9627, %9564
  %9631 = fmul fast float %9630, %9495
  %9632 = fadd fast float %9631, %9508
  %9633 = fmul fast float %9632, %9629
  %9634 = fsub fast float %9570, %9633
  br label %9646

; <label>:9635                                    ; preds = %9563
  br i1 %9577, label %9636, label %9646

; <label>:9636                                    ; preds = %9635
  %9637 = call float @dx.op.binary.f32(i32 35, float %9565, float %9575)  ; FMax(a,b)
  %9638 = icmp eq i32 %9514, 0
  %9639 = select i1 %9638, float %9575, float 0.000000e+00
  %9640 = fsub fast float -0.000000e+00, %9639
  %9641 = call float @dx.op.unary.f32(i32 6, float %9640)  ; FAbs(value)
  %9642 = fmul fast float %9639, %9495
  %9643 = fadd fast float %9642, %9508
  %9644 = fmul fast float %9641, %9643
  %9645 = fsub fast float %9570, %9644
  br label %9646

; <label>:9646                                    ; preds = %9636, %9635, %9625, %9624
  %9647 = phi float [ %9565, %9624 ], [ %9565, %9625 ], [ %9637, %9636 ], [ %9565, %9635 ]
  %9648 = phi float [ 0.000000e+00, %9624 ], [ %9629, %9625 ], [ %9641, %9636 ], [ 0.000000e+00, %9635 ]
  %9649 = phi float [ %9570, %9624 ], [ %9634, %9625 ], [ %9645, %9636 ], [ %9570, %9635 ]
  %9650 = phi float [ %9575, %9624 ], [ %9575, %9625 ], [ %9564, %9636 ], [ %9564, %9635 ]
  %9651 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 0
  store float -1.000000e+00, float* %9651, align 4, !tbaa !130, !noalias !145
  %9652 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 1
  store float -1.000000e+00, float* %9652, align 4, !tbaa !130, !noalias !145
  %9653 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 2
  store float -1.000000e+00, float* %9653, align 4, !tbaa !130, !noalias !145
  %9654 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 0
  store float -1.000000e+00, float* %9654, align 4, !tbaa !130, !noalias !145
  %9655 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 1
  store float -1.000000e+00, float* %9655, align 4, !tbaa !130, !noalias !145
  %9656 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 2
  store float -1.000000e+00, float* %9656, align 4, !tbaa !130, !noalias !145
  %9657 = icmp sgt i32 %9516, 0
  br i1 %9657, label %9658, label %9719

; <label>:9658                                    ; preds = %9646
  br label %9659

; <label>:9659                                    ; preds = %9708, %9658
  %9660 = phi i32 [ %9709, %9708 ], [ 0, %9658 ]
  %9661 = phi i32 [ %9710, %9708 ], [ 0, %9658 ]
  %9662 = add nuw i32 %9661, 171
  %9663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %9662)  ; CBufferLoadLegacy(handle,regIndex)
  %9664 = extractvalue %dx.types.CBufRet.f32 %9663, 0
  %9665 = extractvalue %dx.types.CBufRet.f32 %9663, 1
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 0
  %9668 = extractvalue %dx.types.CBufRet.f32 %9666, 1
  %9669 = fsub fast float %9664, %9667
  %9670 = fsub fast float %9665, %9668
  %9671 = extractvalue %dx.types.CBufRet.f32 %9663, 2
  %9672 = fsub fast float -0.000000e+00, %9669
  %9673 = fsub fast float -0.000000e+00, %9670
  %9674 = call float @dx.op.dot2.f32(i32 54, float %9493, float %9494, float %9672, float %9673)  ; Dot2(ax,ay,bx,by)
  %9675 = fmul fast float %9674, 2.000000e+00
  %9676 = call float @dx.op.dot2.f32(i32 54, float %9672, float %9673, float %9672, float %9673)  ; Dot2(ax,ay,bx,by)
  %9677 = fmul fast float %9671, %9671
  %9678 = fsub fast float %9676, %9677
  %9679 = fmul fast float %9675, %9675
  %9680 = fmul fast float %9536, %9678
  %9681 = fsub fast float %9679, %9680
  %9682 = fcmp fast ogt float %9681, 0.000000e+00
  br i1 %9682, label %9683, label %9698

; <label>:9683                                    ; preds = %9659
  %9684 = fcmp fast ogt float %9675, 0.000000e+00
  %9685 = call float @dx.op.unary.f32(i32 24, float %9681)  ; Sqrt(value)
  %9686 = fsub fast float -0.000000e+00, %9685
  %9687 = select i1 %9684, float %9685, float %9686
  %9688 = fadd fast float %9687, %9675
  %9689 = fmul float %9688, -5.000000e-01
  %9690 = fdiv fast float %9689, %9529
  %9691 = call float @dx.op.binary.f32(i32 35, float %9690, float 0.000000e+00)  ; FMax(a,b)
  %9692 = call float @dx.op.binary.f32(i32 36, float %9564, float %9691)  ; FMin(a,b)
  %9693 = fdiv fast float %9678, %9689
  %9694 = call float @dx.op.binary.f32(i32 35, float %9693, float 0.000000e+00)  ; FMax(a,b)
  %9695 = call float @dx.op.binary.f32(i32 36, float %9564, float %9694)  ; FMin(a,b)
  %9696 = call float @dx.op.binary.f32(i32 36, float %9692, float %9695)  ; FMin(a,b)
  %9697 = call float @dx.op.binary.f32(i32 35, float %9692, float %9695)  ; FMax(a,b)
  br label %9698

; <label>:9698                                    ; preds = %9683, %9659
  %9699 = phi float [ %9697, %9683 ], [ -1.000000e+00, %9659 ]
  %9700 = phi float [ %9696, %9683 ], [ -1.000000e+00, %9659 ]
  %9701 = phi i1 [ true, %9683 ], [ false, %9659 ]
  br i1 %9701, label %9702, label %9708

; <label>:9702                                    ; preds = %9698
  %9703 = call float @dx.op.binary.f32(i32 35, float %9647, float %9700)  ; FMax(a,b)
  %9704 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %9661
  store float %9703, float* %9704, align 4, !tbaa !130, !noalias !145
  %9705 = call float @dx.op.binary.f32(i32 35, float %9647, float %9699)  ; FMax(a,b)
  %9706 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %9661
  store float %9705, float* %9706, align 4, !tbaa !130, !noalias !145
  %9707 = add nsw i32 %9660, 1
  br label %9708

; <label>:9708                                    ; preds = %9702, %9698
  %9709 = phi i32 [ %9707, %9702 ], [ %9660, %9698 ]
  %9710 = add nuw nsw i32 %9661, 1
  %9711 = icmp eq i32 %9710, %9516
  br i1 %9711, label %9712, label %9659

; <label>:9712                                    ; preds = %9708
  %9713 = load float, float* %9653, align 4, !tbaa !130, !alias.scope !161, !noalias !164
  %9714 = load float, float* %9652, align 4, !tbaa !130, !alias.scope !167, !noalias !168
  %9715 = load float, float* %9651, align 4, !tbaa !130, !alias.scope !169, !noalias !170
  %9716 = load float, float* %9656, align 4, !tbaa !130, !alias.scope !171, !noalias !174
  %9717 = load float, float* %9655, align 4, !tbaa !130, !alias.scope !177, !noalias !178
  %9718 = load float, float* %9654, align 4, !tbaa !130, !alias.scope !179, !noalias !180
  br label %9719

; <label>:9719                                    ; preds = %9712, %9646
  %9720 = phi float [ -1.000000e+00, %9646 ], [ %9718, %9712 ]
  %9721 = phi float [ -1.000000e+00, %9646 ], [ %9717, %9712 ]
  %9722 = phi float [ -1.000000e+00, %9646 ], [ %9716, %9712 ]
  %9723 = phi float [ -1.000000e+00, %9646 ], [ %9715, %9712 ]
  %9724 = phi float [ -1.000000e+00, %9646 ], [ %9714, %9712 ]
  %9725 = phi float [ -1.000000e+00, %9646 ], [ %9713, %9712 ]
  %9726 = phi i32 [ 0, %9646 ], [ %9709, %9712 ]
  %9727 = call float @dx.op.binary.f32(i32 36, float %9724, float %9725)  ; FMin(a,b)
  %9728 = call float @dx.op.binary.f32(i32 36, float %9723, float %9727)  ; FMin(a,b)
  %9729 = call float @dx.op.binary.f32(i32 35, float %9723, float %9724)  ; FMax(a,b)
  %9730 = call float @dx.op.binary.f32(i32 36, float %9729, float %9725)  ; FMin(a,b)
  %9731 = call float @dx.op.binary.f32(i32 36, float %9723, float %9724)  ; FMin(a,b)
  %9732 = call float @dx.op.binary.f32(i32 35, float %9731, float %9730)  ; FMax(a,b)
  %9733 = call float @dx.op.binary.f32(i32 35, float %9724, float %9725)  ; FMax(a,b)
  %9734 = call float @dx.op.binary.f32(i32 35, float %9723, float %9733)  ; FMax(a,b)
  store float %9728, float* %9651, align 4, !tbaa !130, !alias.scope !169, !noalias !170
  store float %9732, float* %9652, align 4, !tbaa !130, !alias.scope !167, !noalias !168
  store float %9734, float* %9653, align 4, !tbaa !130, !alias.scope !161, !noalias !164
  %9735 = call float @dx.op.binary.f32(i32 36, float %9721, float %9722)  ; FMin(a,b)
  %9736 = call float @dx.op.binary.f32(i32 36, float %9720, float %9735)  ; FMin(a,b)
  %9737 = call float @dx.op.binary.f32(i32 35, float %9720, float %9721)  ; FMax(a,b)
  %9738 = call float @dx.op.binary.f32(i32 36, float %9737, float %9722)  ; FMin(a,b)
  %9739 = call float @dx.op.binary.f32(i32 36, float %9720, float %9721)  ; FMin(a,b)
  %9740 = call float @dx.op.binary.f32(i32 35, float %9739, float %9738)  ; FMax(a,b)
  %9741 = call float @dx.op.binary.f32(i32 35, float %9721, float %9722)  ; FMax(a,b)
  %9742 = call float @dx.op.binary.f32(i32 35, float %9720, float %9741)  ; FMax(a,b)
  store float %9736, float* %9654, align 4, !tbaa !130, !alias.scope !179, !noalias !180
  store float %9740, float* %9655, align 4, !tbaa !130, !alias.scope !177, !noalias !178
  store float %9742, float* %9656, align 4, !tbaa !130, !alias.scope !171, !noalias !174
  %9743 = sub nsw i32 3, %9726
  %9744 = icmp sgt i32 %9743, 2
  br i1 %9744, label %9745, label %9783

; <label>:9745                                    ; preds = %9719
  %9746 = icmp eq i32 %9514, 0
  %9747 = fsub fast float %9564, %9648
  %9748 = select i1 %9746, float %9747, float %9648
  %9749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9750 = extractvalue %dx.types.CBufRet.f32 %9749, 0
  %9751 = extractvalue %dx.types.CBufRet.f32 %9749, 1
  %9752 = extractvalue %dx.types.CBufRet.f32 %9749, 2
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.CBufRet.f32 %9753, 2
  %9757 = extractvalue %dx.types.CBufRet.f32 %9753, 3
  %9758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9759 = extractvalue %dx.types.CBufRet.f32 %9758, 3
  %9760 = call float @dx.op.binary.f32(i32 36, float %9649, float %9759)  ; FMin(a,b)
  %9761 = fmul fast float %9757, %9748
  %9762 = call float @dx.op.unary.f32(i32 7, float %9761)  ; Saturate(value)
  %9763 = fsub fast float %9754, %9750
  %9764 = fsub fast float %9755, %9751
  %9765 = fsub fast float %9756, %9752
  %9766 = fmul fast float %9762, %9763
  %9767 = fmul fast float %9762, %9764
  %9768 = fmul fast float %9762, %9765
  %9769 = fadd fast float %9766, %9750
  %9770 = fadd fast float %9767, %9751
  %9771 = fadd fast float %9768, %9752
  %9772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9773 = extractvalue %dx.types.CBufRet.f32 %9772, 0
  %9774 = extractvalue %dx.types.CBufRet.f32 %9772, 1
  %9775 = fadd fast float %9774, %9773
  %9776 = call float @dx.op.unary.f32(i32 7, float %9775)  ; Saturate(value)
  %9777 = extractvalue %dx.types.CBufRet.f32 %9772, 2
  %9778 = extractvalue %dx.types.CBufRet.f32 %9772, 3
  %9779 = fadd fast float %9778, %9777
  %9780 = call float @dx.op.unary.f32(i32 7, float %9779)  ; Saturate(value)
  %9781 = fmul fast float %9776, %9760
  %9782 = fmul fast float %9781, %9780
  br label %9865

; <label>:9783                                    ; preds = %9719
  %9784 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %9743
  %9785 = load float, float* %9784, align 4, !tbaa !130, !noalias !145
  %9786 = fcmp fast olt float %9785, %9650
  %9787 = icmp sgt i32 %9726, 0
  %9788 = and i1 %9787, %9786
  br i1 %9788, label %9789, label %9826

; <label>:9789                                    ; preds = %9783
  br label %9790

; <label>:9790                                    ; preds = %9819, %9789
  %9791 = phi float [ %9820, %9819 ], [ %9648, %9789 ]
  %9792 = phi float [ %9821, %9819 ], [ %9649, %9789 ]
  %9793 = phi float [ %9801, %9819 ], [ %9785, %9789 ]
  %9794 = phi i32 [ %9798, %9819 ], [ %9743, %9789 ]
  %9795 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %9794
  %9796 = load float, float* %9795, align 4, !tbaa !130, !noalias !145
  %9797 = icmp slt i32 %9794, 2
  %9798 = add nsw i32 %9794, 1
  %9799 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %9798
  %9800 = load float, float* %9799, align 4, !tbaa !130, !noalias !145
  %9801 = select i1 %9797, float %9800, float %9564
  %9802 = call float @dx.op.binary.f32(i32 36, float %9801, float %9796)  ; FMin(a,b)
  %9803 = call float @dx.op.binary.f32(i32 36, float %9650, float %9802)  ; FMin(a,b)
  %9804 = icmp eq i32 %9514, 0
  %9805 = fadd fast float %9803, %9793
  %9806 = fmul fast float %9805, %9495
  %9807 = fadd fast float %9806, %9508
  br i1 %9804, label %9813, label %9808

; <label>:9808                                    ; preds = %9790
  %9809 = fsub fast float %9803, %9793
  %9810 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9809)  ; FMax(a,b)
  %9811 = fmul fast float %9810, %9807
  %9812 = fadd fast float %9811, %9792
  br label %9819

; <label>:9813                                    ; preds = %9790
  %9814 = fsub fast float %9793, %9803
  %9815 = call float @dx.op.unary.f32(i32 6, float %9814)  ; FAbs(value)
  %9816 = fadd fast float %9815, %9791
  %9817 = fmul fast float %9815, %9807
  %9818 = fsub fast float %9792, %9817
  br label %9819

; <label>:9819                                    ; preds = %9813, %9808
  %9820 = phi float [ %9810, %9808 ], [ %9816, %9813 ]
  %9821 = phi float [ %9812, %9808 ], [ %9818, %9813 ]
  %9822 = fcmp fast olt float %9801, %9650
  %9823 = icmp slt i32 %9798, 3
  %9824 = and i1 %9823, %9822
  br i1 %9824, label %9790, label %9825

; <label>:9825                                    ; preds = %9819
  br label %9826

; <label>:9826                                    ; preds = %9825, %9783
  %9827 = phi float [ %9648, %9783 ], [ %9820, %9825 ]
  %9828 = phi float [ %9649, %9783 ], [ %9821, %9825 ]
  %9829 = fsub fast float %9564, %9827
  %9830 = select i1 %9566, float %9827, float %9829
  %9831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.f32 %9831, 0
  %9833 = extractvalue %dx.types.CBufRet.f32 %9831, 1
  %9834 = extractvalue %dx.types.CBufRet.f32 %9831, 2
  %9835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9835, 0
  %9837 = extractvalue %dx.types.CBufRet.f32 %9835, 1
  %9838 = extractvalue %dx.types.CBufRet.f32 %9835, 2
  %9839 = extractvalue %dx.types.CBufRet.f32 %9835, 3
  %9840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9841 = extractvalue %dx.types.CBufRet.f32 %9840, 3
  %9842 = call float @dx.op.binary.f32(i32 36, float %9828, float %9841)  ; FMin(a,b)
  %9843 = fmul fast float %9839, %9830
  %9844 = call float @dx.op.unary.f32(i32 7, float %9843)  ; Saturate(value)
  %9845 = fsub fast float %9836, %9832
  %9846 = fsub fast float %9837, %9833
  %9847 = fsub fast float %9838, %9834
  %9848 = fmul fast float %9844, %9845
  %9849 = fmul fast float %9844, %9846
  %9850 = fmul fast float %9844, %9847
  %9851 = fadd fast float %9848, %9832
  %9852 = fadd fast float %9849, %9833
  %9853 = fadd fast float %9850, %9834
  %9854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9855 = extractvalue %dx.types.CBufRet.f32 %9854, 0
  %9856 = extractvalue %dx.types.CBufRet.f32 %9854, 1
  %9857 = fadd fast float %9856, %9855
  %9858 = call float @dx.op.unary.f32(i32 7, float %9857)  ; Saturate(value)
  %9859 = extractvalue %dx.types.CBufRet.f32 %9854, 2
  %9860 = extractvalue %dx.types.CBufRet.f32 %9854, 3
  %9861 = fadd fast float %9860, %9859
  %9862 = call float @dx.op.unary.f32(i32 7, float %9861)  ; Saturate(value)
  %9863 = fmul fast float %9858, %9842
  %9864 = fmul fast float %9863, %9862
  br label %9865

; <label>:9865                                    ; preds = %9826, %9745, %9580, %9562, %9560
  %9866 = phi float [ %9589, %9580 ], [ %9748, %9745 ], [ %9830, %9826 ], [ 0.000000e+00, %9560 ], [ 0.000000e+00, %9562 ]
  %9867 = phi float [ %9623, %9580 ], [ %9782, %9745 ], [ %9864, %9826 ], [ 0.000000e+00, %9560 ], [ 0.000000e+00, %9562 ]
  %9868 = phi float [ %9610, %9580 ], [ %9769, %9745 ], [ %9851, %9826 ], [ 0.000000e+00, %9560 ], [ 0.000000e+00, %9562 ]
  %9869 = phi float [ %9611, %9580 ], [ %9770, %9745 ], [ %9852, %9826 ], [ 0.000000e+00, %9560 ], [ 0.000000e+00, %9562 ]
  %9870 = phi float [ %9612, %9580 ], [ %9771, %9745 ], [ %9853, %9826 ], [ 0.000000e+00, %9560 ], [ 0.000000e+00, %9562 ]
  %9871 = fmul fast float %9503, %9867
  %9872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9873 = extractvalue %dx.types.CBufRet.f32 %9872, 2
  %9874 = fsub fast float %9510, %9873
  %9875 = fcmp fast olt float %9871, -2.000000e+01
  %9876 = call float @dx.op.unary.f32(i32 21, float %9871)  ; Exp(value)
  %9877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9878 = extractvalue %dx.types.CBufRet.f32 %9877, 2
  %9879 = extractvalue %dx.types.CBufRet.f32 %9877, 3
  %9880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9881 = extractvalue %dx.types.CBufRet.f32 %9880, 2
  %9882 = fmul fast float %9879, %9874
  %9883 = call float @dx.op.unary.f32(i32 7, float %9882)  ; Saturate(value)
  %9884 = fsub fast float 1.000000e+00, %9883
  %9885 = fmul fast float %9495, 5.000000e-01
  %9886 = fadd fast float %9885, 5.000000e-01
  %9887 = call float @dx.op.unary.f32(i32 7, float %9886)  ; Saturate(value)
  %9888 = fsub fast float 1.000000e+00, %9887
  %9889 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9884)  ; FMax(a,b)
  %9890 = fdiv fast float %9888, %9889
  %9891 = fsub fast float %9874, %9452
  %9892 = call float @dx.op.unary.f32(i32 6, float %9891)  ; FAbs(value)
  %9893 = fmul fast float %9892, %9878
  %9894 = call float @dx.op.unary.f32(i32 7, float %9890)  ; Saturate(value)
  %9895 = fsub fast float 1.000000e+00, %9893
  %9896 = fmul fast float %9895, %9894
  %9897 = fadd fast float %9896, %9893
  %9898 = fmul fast float %9881, %9874
  %9899 = call float @dx.op.unary.f32(i32 7, float %9898)  ; Saturate(value)
  %9900 = fsub fast float 1.000000e+00, %9897
  %9901 = fmul fast float %9900, %9899
  %9902 = fadd fast float %9901, %9897
  %9903 = call float @dx.op.unary.f32(i32 7, float %9902)  ; Saturate(value)
  %9904 = fadd fast float %9876, -1.000000e+00
  %9905 = select i1 %9875, float -1.000000e+00, float %9904
  %9906 = fmul fast float %9903, %9905
  %9907 = fadd fast float %9906, 1.000000e+00
  %9908 = fsub fast float -0.000000e+00, %9906
  %9909 = fmul fast float %9868, %9908
  %9910 = fmul fast float %9869, %9908
  %9911 = fmul fast float %9870, %9908
  br label %9912

; <label>:9912                                    ; preds = %9865, %9461
  %9913 = phi float [ %9866, %9865 ], [ 0.000000e+00, %9461 ]
  %9914 = phi float [ %9907, %9865 ], [ 1.000000e+00, %9461 ]
  %9915 = phi float [ %9909, %9865 ], [ 0.000000e+00, %9461 ]
  %9916 = phi float [ %9910, %9865 ], [ 0.000000e+00, %9461 ]
  %9917 = phi float [ %9911, %9865 ], [ 0.000000e+00, %9461 ]
  %9918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.f32 %9918, 1
  %9920 = fsub fast float 1.000000e+00, %9914
  %9921 = fmul fast float %9920, %9496
  %9922 = fmul fast float %9921, %9919
  %9923 = fsub fast float %9496, %9922
  br i1 %9489, label %9924, label %9953, !dx.controlflow.hints !181

; <label>:9924                                    ; preds = %9912
  %9925 = fmul fast float %9497, %9486
  %9926 = fadd fast float %9925, %9487
  %9927 = call float @dx.op.unary.f32(i32 7, float %9926)  ; Saturate(value)
  %9928 = fmul fast float %9468, %9923
  %9929 = fsub fast float -0.000000e+00, %9928
  %9930 = fmul fast float %9469, %9923
  %9931 = fsub fast float -0.000000e+00, %9930
  %9932 = call float @dx.op.unary.f32(i32 21, float %9929)  ; Exp(value)
  %9933 = call float @dx.op.unary.f32(i32 21, float %9931)  ; Exp(value)
  %9934 = call float @dx.op.binary.f32(i32 35, float %9476, float %9932)  ; FMax(a,b)
  %9935 = call float @dx.op.binary.f32(i32 35, float %9476, float %9933)  ; FMax(a,b)
  %9936 = fsub fast float %9935, %9934
  %9937 = fmul fast float %9936, %9927
  %9938 = fadd fast float %9937, %9934
  %9939 = call float @dx.op.unary.f32(i32 7, float %9938)  ; Saturate(value)
  %9940 = fsub fast float %9473, %9478
  %9941 = fsub fast float %9474, %9479
  %9942 = fsub fast float %9475, %9480
  %9943 = fmul fast float %9927, %9940
  %9944 = fmul fast float %9927, %9941
  %9945 = fmul fast float %9927, %9942
  %9946 = fadd fast float %9943, %9478
  %9947 = fadd fast float %9944, %9479
  %9948 = fadd fast float %9945, %9480
  %9949 = fsub fast float 1.000000e+00, %9939
  %9950 = fmul fast float %9949, %9946
  %9951 = fmul fast float %9949, %9947
  %9952 = fmul fast float %9949, %9948
  br label %10012

; <label>:9953                                    ; preds = %9912
  %9954 = fmul fast float %9923, %9485
  %9955 = call float @dx.op.unary.f32(i32 7, float %9954)  ; Saturate(value)
  %9956 = fsub fast float 2.000000e+00, %9955
  %9957 = fmul fast float %9955, 9.921875e-01
  %9958 = fmul fast float %9957, %9956
  %9959 = fadd fast float %9958, 3.906250e-03
  %9960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %57, float %9959, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9961 = extractvalue %dx.types.ResRet.f32 %9960, 0
  %9962 = fsub fast float %9955, %9961
  %9963 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9962)  ; FMax(a,b)
  %9964 = fmul fast float %9471, %9452
  %9965 = call float @dx.op.unary.f32(i32 6, float %9964)  ; FAbs(value)
  %9966 = fcmp fast ogt float %9965, 0x3EB0C6F7A0000000
  br i1 %9966, label %9967, label %9973, !dx.controlflow.hints !182

; <label>:9967                                    ; preds = %9953
  %9968 = fmul fast float %9964, 0xBFF7154760000000
  %9969 = call float @dx.op.unary.f32(i32 21, float %9968)  ; Exp(value)
  %9970 = fsub fast float 1.000000e+00, %9969
  %9971 = fdiv fast float %9970, %9964
  %9972 = fmul fast float %9971, %9481
  br label %9973

; <label>:9973                                    ; preds = %9967, %9953
  %9974 = phi float [ %9972, %9967 ], [ %9481, %9953 ]
  %9975 = fadd fast float %9974, %9483
  %9976 = fmul fast float %9975, %9963
  %9977 = fmul fast float %9468, %9976
  %9978 = fsub fast float -0.000000e+00, %9977
  %9979 = fmul fast float %9469, %9976
  %9980 = fsub fast float -0.000000e+00, %9979
  %9981 = fmul fast float %9470, %9976
  %9982 = fsub fast float -0.000000e+00, %9981
  %9983 = call float @dx.op.unary.f32(i32 21, float %9978)  ; Exp(value)
  %9984 = call float @dx.op.unary.f32(i32 21, float %9980)  ; Exp(value)
  %9985 = call float @dx.op.unary.f32(i32 21, float %9982)  ; Exp(value)
  %9986 = fmul fast float %9497, %9497
  %9987 = fadd fast float %9986, 1.000000e+00
  %9988 = fmul fast float %9987, 0x3FAE8EC8A0000000
  %9989 = fmul fast float %9988, %9478
  %9990 = fmul fast float %9988, %9479
  %9991 = fmul fast float %9988, %9480
  %9992 = fmul fast float %9497, %9476
  %9993 = fsub fast float 1.000000e+00, %9992
  %9994 = fmul fast float %9476, %9476
  %9995 = fsub fast float 1.000000e+00, %9994
  %9996 = fmul fast float %9995, 0x3FB45F3060000000
  %9997 = fmul fast float %9993, %9993
  %9998 = fdiv fast float 1.000000e+00, %9997
  %9999 = fmul fast float %9996, %9998
  %10000 = fmul fast float %9999, %9473
  %10001 = fmul fast float %9999, %9474
  %10002 = fmul fast float %9999, %9475
  %10003 = fadd fast float %10000, %9989
  %10004 = fadd fast float %10001, %9990
  %10005 = fadd fast float %10002, %9991
  %10006 = fsub fast float 1.000000e+00, %9983
  %10007 = fsub fast float 1.000000e+00, %9984
  %10008 = fsub fast float 1.000000e+00, %9985
  %10009 = fmul fast float %10003, %10006
  %10010 = fmul fast float %10004, %10007
  %10011 = fmul fast float %10005, %10008
  br label %10012

; <label>:10012                                   ; preds = %9973, %9924
  %10013 = phi float [ %9950, %9924 ], [ %10009, %9973 ]
  %10014 = phi float [ %9951, %9924 ], [ %10010, %9973 ]
  %10015 = phi float [ %9952, %9924 ], [ %10011, %9973 ]
  %10016 = phi float [ %9939, %9924 ], [ %9983, %9973 ]
  %10017 = phi float [ %9939, %9924 ], [ %9984, %9973 ]
  %10018 = phi float [ %9939, %9924 ], [ %9985, %9973 ]
  br i1 %9505, label %10019, label %10217, !dx.controlflow.hints !183

; <label>:10019                                   ; preds = %10012
  %10020 = extractvalue %dx.types.CBufRet.f32 %9918, 0
  %10021 = fmul fast float %10020, %9920
  %10022 = fsub fast float %9915, %10013
  %10023 = fsub fast float %9916, %10014
  %10024 = fsub fast float %9917, %10015
  %10025 = fmul fast float %10021, %10022
  %10026 = fmul fast float %10021, %10023
  %10027 = fmul fast float %10021, %10024
  %10028 = fadd fast float %10025, %10013
  %10029 = fadd fast float %10026, %10014
  %10030 = fadd fast float %10027, %10015
  %10031 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10016)  ; FMax(a,b)
  %10032 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10017)  ; FMax(a,b)
  %10033 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10018)  ; FMax(a,b)
  %10034 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9914)  ; FMax(a,b)
  %10035 = call float @dx.op.binary.f32(i32 35, float %9913, float %9923)  ; FMax(a,b)
  %10036 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10035)  ; FMax(a,b)
  %10037 = fdiv fast float %9913, %10036
  %10038 = call float @dx.op.unary.f32(i32 7, float %10037)  ; Saturate(value)
  %10039 = fdiv fast float %9923, %10036
  %10040 = call float @dx.op.unary.f32(i32 7, float %10039)  ; Saturate(value)
  %10041 = fcmp fast une float %10034, 1.000000e+00
  br i1 %10041, label %10042, label %10055, !dx.controlflow.hints !184

; <label>:10042                                   ; preds = %10019
  %10043 = call float @dx.op.unary.f32(i32 23, float %10034)  ; Log(value)
  %10044 = fmul fast float %10043, 0x3FE62E4300000000
  %10045 = fmul fast float %9915, %10044
  %10046 = fsub fast float -0.000000e+00, %10045
  %10047 = fmul fast float %9916, %10044
  %10048 = fsub fast float -0.000000e+00, %10047
  %10049 = fmul fast float %9917, %10044
  %10050 = fsub fast float -0.000000e+00, %10049
  %10051 = fsub fast float 1.000000e+00, %10034
  %10052 = fdiv fast float %10046, %10051
  %10053 = fdiv fast float %10048, %10051
  %10054 = fdiv fast float %10050, %10051
  br label %10055

; <label>:10055                                   ; preds = %10042, %10019
  %10056 = phi float [ %10052, %10042 ], [ %9915, %10019 ]
  %10057 = phi float [ %10053, %10042 ], [ %9916, %10019 ]
  %10058 = phi float [ %10054, %10042 ], [ %9917, %10019 ]
  %10059 = phi float [ %10044, %10042 ], [ 0.000000e+00, %10019 ]
  %10060 = fcmp fast une float %10031, 1.000000e+00
  br i1 %10060, label %10061, label %10068, !dx.controlflow.hints !185

; <label>:10061                                   ; preds = %10055
  %10062 = call float @dx.op.unary.f32(i32 23, float %10031)  ; Log(value)
  %10063 = fmul fast float %10062, 0x3FE62E4300000000
  %10064 = fmul fast float %10028, %10063
  %10065 = fsub fast float -0.000000e+00, %10064
  %10066 = fsub fast float 1.000000e+00, %10031
  %10067 = fdiv fast float %10065, %10066
  br label %10068

; <label>:10068                                   ; preds = %10061, %10055
  %10069 = phi float [ %10067, %10061 ], [ %10028, %10055 ]
  %10070 = phi float [ %10063, %10061 ], [ 0.000000e+00, %10055 ]
  %10071 = fcmp fast une float %10032, 1.000000e+00
  br i1 %10071, label %10072, label %10079, !dx.controlflow.hints !185

; <label>:10072                                   ; preds = %10068
  %10073 = call float @dx.op.unary.f32(i32 23, float %10032)  ; Log(value)
  %10074 = fmul fast float %10073, 0x3FE62E4300000000
  %10075 = fmul fast float %10029, %10074
  %10076 = fsub fast float -0.000000e+00, %10075
  %10077 = fsub fast float 1.000000e+00, %10032
  %10078 = fdiv fast float %10076, %10077
  br label %10079

; <label>:10079                                   ; preds = %10072, %10068
  %10080 = phi float [ %10078, %10072 ], [ %10029, %10068 ]
  %10081 = phi float [ %10074, %10072 ], [ 0.000000e+00, %10068 ]
  %10082 = fcmp fast une float %10033, 1.000000e+00
  br i1 %10082, label %10083, label %10090, !dx.controlflow.hints !185

; <label>:10083                                   ; preds = %10079
  %10084 = call float @dx.op.unary.f32(i32 23, float %10033)  ; Log(value)
  %10085 = fmul fast float %10084, 0x3FE62E4300000000
  %10086 = fmul fast float %10030, %10085
  %10087 = fsub fast float -0.000000e+00, %10086
  %10088 = fsub fast float 1.000000e+00, %10033
  %10089 = fdiv fast float %10087, %10088
  br label %10090

; <label>:10090                                   ; preds = %10083, %10079
  %10091 = phi float [ %10089, %10083 ], [ %10030, %10079 ]
  %10092 = phi float [ %10085, %10083 ], [ 0.000000e+00, %10079 ]
  %10093 = fmul fast float %10056, %10040
  %10094 = fmul fast float %10057, %10040
  %10095 = fmul fast float %10058, %10040
  %10096 = fmul fast float %10059, %10040
  %10097 = fmul fast float %10069, %10038
  %10098 = fmul fast float %10080, %10038
  %10099 = fmul fast float %10091, %10038
  %10100 = fmul fast float %10070, %10038
  %10101 = fmul fast float %10081, %10038
  %10102 = fmul fast float %10092, %10038
  %10103 = fadd fast float %10097, %10093
  %10104 = fadd fast float %10098, %10094
  %10105 = fadd fast float %10099, %10095
  %10106 = fadd fast float %10100, %10096
  %10107 = fadd fast float %10101, %10096
  %10108 = fadd fast float %10102, %10096
  %10109 = fcmp fast une float %10106, 0.000000e+00
  br i1 %10109, label %10110, label %10117, !dx.controlflow.hints !186

; <label>:10110                                   ; preds = %10090
  %10111 = fmul fast float %10106, 0x3FF7154760000000
  %10112 = call float @dx.op.unary.f32(i32 21, float %10111)  ; Exp(value)
  %10113 = fsub fast float 1.000000e+00, %10112
  %10114 = fmul fast float %10103, %10113
  %10115 = fsub fast float -0.000000e+00, %10114
  %10116 = fdiv fast float %10115, %10106
  br label %10117

; <label>:10117                                   ; preds = %10110, %10090
  %10118 = phi float [ %10112, %10110 ], [ 1.000000e+00, %10090 ]
  %10119 = phi float [ %10116, %10110 ], [ %10103, %10090 ]
  %10120 = fcmp fast une float %10107, 0.000000e+00
  br i1 %10120, label %10121, label %10128, !dx.controlflow.hints !186

; <label>:10121                                   ; preds = %10117
  %10122 = fmul fast float %10107, 0x3FF7154760000000
  %10123 = call float @dx.op.unary.f32(i32 21, float %10122)  ; Exp(value)
  %10124 = fsub fast float 1.000000e+00, %10123
  %10125 = fmul fast float %10104, %10124
  %10126 = fsub fast float -0.000000e+00, %10125
  %10127 = fdiv fast float %10126, %10107
  br label %10128

; <label>:10128                                   ; preds = %10121, %10117
  %10129 = phi float [ %10123, %10121 ], [ 1.000000e+00, %10117 ]
  %10130 = phi float [ %10127, %10121 ], [ %10104, %10117 ]
  %10131 = fcmp fast une float %10108, 0.000000e+00
  br i1 %10131, label %10132, label %10139, !dx.controlflow.hints !186

; <label>:10132                                   ; preds = %10128
  %10133 = fmul fast float %10108, 0x3FF7154760000000
  %10134 = call float @dx.op.unary.f32(i32 21, float %10133)  ; Exp(value)
  %10135 = fsub fast float 1.000000e+00, %10134
  %10136 = fmul fast float %10105, %10135
  %10137 = fsub fast float -0.000000e+00, %10136
  %10138 = fdiv fast float %10137, %10108
  br label %10139

; <label>:10139                                   ; preds = %10132, %10128
  %10140 = phi float [ %10134, %10132 ], [ 1.000000e+00, %10128 ]
  %10141 = phi float [ %10138, %10132 ], [ %10105, %10128 ]
  %10142 = fcmp fast ogt float %10038, %10040
  br i1 %10142, label %10143, label %10163

; <label>:10143                                   ; preds = %10139
  %10144 = fsub fast float 1.000000e+00, %10040
  %10145 = fmul fast float %10056, %10144
  %10146 = fmul fast float %10057, %10144
  %10147 = fmul fast float %10058, %10144
  %10148 = fmul fast float %10059, %10144
  %10149 = fcmp fast une float %10148, 0.000000e+00
  br i1 %10149, label %10150, label %10201, !dx.controlflow.hints !187

; <label>:10150                                   ; preds = %10143
  %10151 = fmul fast float %10148, 0x3FF7154760000000
  %10152 = call float @dx.op.unary.f32(i32 21, float %10151)  ; Exp(value)
  %10153 = fsub fast float 1.000000e+00, %10152
  %10154 = fmul fast float %10145, %10153
  %10155 = fsub fast float -0.000000e+00, %10154
  %10156 = fmul fast float %10146, %10153
  %10157 = fsub fast float -0.000000e+00, %10156
  %10158 = fmul fast float %10147, %10153
  %10159 = fsub fast float -0.000000e+00, %10158
  %10160 = fdiv fast float %10155, %10148
  %10161 = fdiv fast float %10157, %10148
  %10162 = fdiv fast float %10159, %10148
  br label %10201

; <label>:10163                                   ; preds = %10139
  %10164 = fsub fast float 1.000000e+00, %10038
  %10165 = fmul fast float %10069, %10164
  %10166 = fmul fast float %10080, %10164
  %10167 = fmul fast float %10091, %10164
  %10168 = fmul fast float %10070, %10164
  %10169 = fmul fast float %10081, %10164
  %10170 = fmul fast float %10092, %10164
  %10171 = fcmp fast une float %10168, 0.000000e+00
  br i1 %10171, label %10172, label %10179, !dx.controlflow.hints !186

; <label>:10172                                   ; preds = %10163
  %10173 = fmul fast float %10168, 0x3FF7154760000000
  %10174 = call float @dx.op.unary.f32(i32 21, float %10173)  ; Exp(value)
  %10175 = fsub fast float 1.000000e+00, %10174
  %10176 = fmul fast float %10165, %10175
  %10177 = fsub fast float -0.000000e+00, %10176
  %10178 = fdiv fast float %10177, %10168
  br label %10179

; <label>:10179                                   ; preds = %10172, %10163
  %10180 = phi float [ %10178, %10172 ], [ %10165, %10163 ]
  %10181 = phi float [ %10174, %10172 ], [ 1.000000e+00, %10163 ]
  %10182 = fcmp fast une float %10169, 0.000000e+00
  br i1 %10182, label %10183, label %10190, !dx.controlflow.hints !186

; <label>:10183                                   ; preds = %10179
  %10184 = fmul fast float %10169, 0x3FF7154760000000
  %10185 = call float @dx.op.unary.f32(i32 21, float %10184)  ; Exp(value)
  %10186 = fsub fast float 1.000000e+00, %10185
  %10187 = fmul fast float %10166, %10186
  %10188 = fsub fast float -0.000000e+00, %10187
  %10189 = fdiv fast float %10188, %10169
  br label %10190

; <label>:10190                                   ; preds = %10183, %10179
  %10191 = phi float [ %10189, %10183 ], [ %10166, %10179 ]
  %10192 = phi float [ %10185, %10183 ], [ 1.000000e+00, %10179 ]
  %10193 = fcmp fast une float %10170, 0.000000e+00
  br i1 %10193, label %10194, label %10201, !dx.controlflow.hints !186

; <label>:10194                                   ; preds = %10190
  %10195 = fmul fast float %10170, 0x3FF7154760000000
  %10196 = call float @dx.op.unary.f32(i32 21, float %10195)  ; Exp(value)
  %10197 = fsub fast float 1.000000e+00, %10196
  %10198 = fmul fast float %10167, %10197
  %10199 = fsub fast float -0.000000e+00, %10198
  %10200 = fdiv fast float %10199, %10170
  br label %10201

; <label>:10201                                   ; preds = %10194, %10190, %10150, %10143
  %10202 = phi float [ %10200, %10194 ], [ %10162, %10150 ], [ %10147, %10143 ], [ %10167, %10190 ]
  %10203 = phi float [ %10191, %10194 ], [ %10161, %10150 ], [ %10146, %10143 ], [ %10191, %10190 ]
  %10204 = phi float [ %10180, %10194 ], [ %10160, %10150 ], [ %10145, %10143 ], [ %10180, %10190 ]
  %10205 = phi float [ %10196, %10194 ], [ %10152, %10150 ], [ 1.000000e+00, %10143 ], [ 1.000000e+00, %10190 ]
  %10206 = phi float [ %10192, %10194 ], [ %10152, %10150 ], [ 1.000000e+00, %10143 ], [ %10192, %10190 ]
  %10207 = phi float [ %10181, %10194 ], [ %10152, %10150 ], [ 1.000000e+00, %10143 ], [ %10181, %10190 ]
  %10208 = fmul fast float %10207, %10119
  %10209 = fmul fast float %10206, %10130
  %10210 = fmul fast float %10205, %10141
  %10211 = fadd fast float %10208, %10204
  %10212 = fadd fast float %10209, %10203
  %10213 = fadd fast float %10210, %10202
  %10214 = fmul fast float %10207, %10118
  %10215 = fmul fast float %10206, %10129
  %10216 = fmul fast float %10205, %10140
  br label %10217

; <label>:10217                                   ; preds = %10201, %10012
  %10218 = phi float [ %10216, %10201 ], [ %10018, %10012 ]
  %10219 = phi float [ %10215, %10201 ], [ %10017, %10012 ]
  %10220 = phi float [ %10214, %10201 ], [ %10016, %10012 ]
  %10221 = phi float [ %10213, %10201 ], [ %10015, %10012 ]
  %10222 = phi float [ %10212, %10201 ], [ %10014, %10012 ]
  %10223 = phi float [ %10211, %10201 ], [ %10013, %10012 ]
  %10224 = fmul fast float %10220, %9460
  %10225 = call float @dx.op.dot3.f32(i32 55, float %10220, float %10219, float %10218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10226 = call float @dx.op.dot3.f32(i32 55, float %10223, float %10222, float %10221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10227 = select i1 %306, float %10225, float %10220
  %10228 = select i1 %306, float %10225, float %10219
  %10229 = select i1 %306, float 1.000000e+00, float %10218
  %10230 = select i1 %306, float %10226, float %10223
  %10231 = select i1 %306, float 0.000000e+00, float %10222
  %10232 = select i1 %306, float 0.000000e+00, float %10221
  %10233 = fmul fast float %10227, %9454
  %10234 = fmul fast float %10228, %9455
  %10235 = fmul fast float %10229, %9456
  %10236 = fadd fast float %10233, %10230
  %10237 = fadd fast float %10234, %10231
  %10238 = fadd fast float %10232, %10235
  %10239 = fmul fast float %10227, %9457
  %10240 = fmul fast float %10228, %9458
  %10241 = fmul fast float %10229, %9459
  %10242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10243 = extractvalue %dx.types.CBufRet.i32 %10242, 0
  %10244 = icmp eq i32 %10243, 0
  br i1 %10244, label %10609, label %10245, !dx.controlflow.hints !188

; <label>:10245                                   ; preds = %10217
  %10246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10247 = extractvalue %dx.types.CBufRet.f32 %10246, 2
  %10248 = extractvalue %dx.types.CBufRet.f32 %10246, 3
  %10249 = fmul fast float %10247, %123
  %10250 = fmul fast float %10248, %124
  %10251 = fmul fast float %10249, 2.000000e+00
  %10252 = fmul fast float %10250, 2.000000e+00
  %10253 = fsub fast float 1.000000e+00, %10251
  %10254 = fsub fast float 1.000000e+00, %10252
  %10255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10256 = extractvalue %dx.types.CBufRet.f32 %10255, 0
  %10257 = extractvalue %dx.types.CBufRet.f32 %10255, 1
  %10258 = extractvalue %dx.types.CBufRet.f32 %10255, 2
  %10259 = fmul fast float %10253, %10256
  %10260 = fmul fast float %10253, %10257
  %10261 = fmul fast float %10253, %10258
  %10262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10263 = extractvalue %dx.types.CBufRet.f32 %10262, 0
  %10264 = extractvalue %dx.types.CBufRet.f32 %10262, 1
  %10265 = extractvalue %dx.types.CBufRet.f32 %10262, 2
  %10266 = fmul fast float %10254, %10263
  %10267 = fmul fast float %10254, %10264
  %10268 = fmul fast float %10254, %10265
  %10269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10270 = extractvalue %dx.types.CBufRet.f32 %10269, 0
  %10271 = extractvalue %dx.types.CBufRet.f32 %10269, 1
  %10272 = extractvalue %dx.types.CBufRet.f32 %10269, 2
  %10273 = fadd fast float %10266, %10270
  %10274 = fadd fast float %10273, %10259
  %10275 = fadd fast float %10267, %10271
  %10276 = fadd fast float %10275, %10260
  %10277 = fadd fast float %10268, %10272
  %10278 = fadd fast float %10277, %10261
  %10279 = fmul fast float %10274, %9453
  %10280 = fmul fast float %10276, %9453
  %10281 = fmul fast float %10278, %9453
  %10282 = fmul fast float %10279, %10279
  %10283 = fmul fast float %10280, %10280
  %10284 = fadd fast float %10282, %10283
  %10285 = fmul fast float %10281, %10281
  %10286 = fadd fast float %10284, %10285
  %10287 = call float @dx.op.unary.f32(i32 24, float %10286)  ; Sqrt(value)
  %10288 = extractvalue %dx.types.CBufRet.f32 %9183, 0
  %10289 = fsub fast float %10287, %10288
  %10290 = extractvalue %dx.types.CBufRet.f32 %9183, 2
  %10291 = fmul fast float %10289, %10290
  %10292 = call float @dx.op.unary.f32(i32 7, float %10291)  ; Saturate(value)
  %10293 = fadd fast float %10292, -5.000000e-01
  %10294 = fmul fast float %10293, 2.000000e+00
  %10295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10296 = extractvalue %dx.types.CBufRet.f32 %10295, 2
  %10297 = call float @dx.op.binary.f32(i32 36, float %10296, float %10294)  ; FMin(a,b)
  %10298 = fsub fast float -0.000000e+00, %10296
  %10299 = fcmp fast ogt float %10297, %10298
  br i1 %10299, label %10300, label %10609, !dx.controlflow.hints !189

; <label>:10300                                   ; preds = %10245
  %10301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10302 = extractvalue %dx.types.CBufRet.f32 %10301, 3
  %10303 = fcmp fast ogt float %10302, 0.000000e+00
  br i1 %10303, label %10304, label %10379, !dx.controlflow.hints !190

; <label>:10304                                   ; preds = %10300
  %10305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %38, i32 0)  ; GetDimensions(handle,mipLevel)
  %10306 = extractvalue %dx.types.Dimensions %10305, 0
  %10307 = sitofp i32 %10306 to float
  %10308 = extractvalue %dx.types.Dimensions %10305, 1
  %10309 = sitofp i32 %10308 to float
  %10310 = fmul fast float %10249, %10307
  %10311 = fmul fast float %10250, %10309
  %10312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %10313 = extractvalue %dx.types.CBufRet.f32 %10312, 1
  %10314 = fsub fast float -0.000000e+00, %10313
  %10315 = fptoui float %10314 to i32
  %10316 = fptoui float %10310 to i32
  %10317 = fptoui float %10311 to i32
  %10318 = and i32 %10315, 31
  %10319 = lshr i32 %10316, %10318
  %10320 = lshr i32 %10317, %10318
  %10321 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 %10315, i32 %10319, i32 %10320, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10322 = extractvalue %dx.types.ResRet.f32 %10321, 0
  %10323 = fcmp fast olt float %10322, -1.000000e+00
  %10324 = fcmp fast ogt float %10322, -1.000000e+00
  %10325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10326 = extractvalue %dx.types.CBufRet.f32 %10325, 1
  %10327 = select i1 %10324, float %10326, float 1.000000e+00
  %10328 = fadd fast float %10322, 1.000000e+00
  %10329 = fmul fast float %10327, %10328
  %10330 = call float @dx.op.unary.f32(i32 6, float %10329)  ; FAbs(value)
  %10331 = extractvalue %dx.types.CBufRet.f32 %10325, 3
  %10332 = fcmp fast oge float %10330, %10331
  %10333 = select i1 %10332, float 0x4197782600000000, float %10330
  %10334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10335 = extractvalue %dx.types.CBufRet.f32 %10334, 0
  %10336 = extractvalue %dx.types.CBufRet.f32 %10334, 1
  %10337 = extractvalue %dx.types.CBufRet.f32 %10334, 2
  %10338 = select i1 %10323, float %10335, float %10256
  %10339 = select i1 %10323, float %10336, float %10257
  %10340 = select i1 %10323, float %10337, float %10258
  %10341 = fmul fast float %10338, %10253
  %10342 = fmul fast float %10339, %10253
  %10343 = fmul fast float %10340, %10253
  %10344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10345 = extractvalue %dx.types.CBufRet.f32 %10344, 0
  %10346 = extractvalue %dx.types.CBufRet.f32 %10344, 1
  %10347 = extractvalue %dx.types.CBufRet.f32 %10344, 2
  %10348 = select i1 %10323, float %10345, float %10263
  %10349 = select i1 %10323, float %10346, float %10264
  %10350 = select i1 %10323, float %10347, float %10265
  %10351 = fmul fast float %10348, %10254
  %10352 = fmul fast float %10349, %10254
  %10353 = fmul fast float %10350, %10254
  %10354 = fadd fast float %10351, %10341
  %10355 = fadd fast float %10352, %10342
  %10356 = fadd fast float %10353, %10343
  %10357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10358 = extractvalue %dx.types.CBufRet.f32 %10357, 0
  %10359 = extractvalue %dx.types.CBufRet.f32 %10357, 1
  %10360 = extractvalue %dx.types.CBufRet.f32 %10357, 2
  %10361 = select i1 %10323, float %10358, float %10270
  %10362 = select i1 %10323, float %10359, float %10271
  %10363 = select i1 %10323, float %10360, float %10272
  %10364 = fadd fast float %10354, %10361
  %10365 = fadd fast float %10355, %10362
  %10366 = fadd fast float %10356, %10363
  %10367 = fmul fast float %10364, %10333
  %10368 = fmul fast float %10365, %10333
  %10369 = fmul fast float %10366, %10333
  %10370 = fmul fast float %10367, %10367
  %10371 = fmul fast float %10368, %10368
  %10372 = fadd fast float %10370, %10371
  %10373 = fmul fast float %10369, %10369
  %10374 = fadd fast float %10372, %10373
  %10375 = call float @dx.op.unary.f32(i32 24, float %10374)  ; Sqrt(value)
  %10376 = fsub fast float %10375, %10288
  %10377 = fmul fast float %10376, %10290
  %10378 = call float @dx.op.unary.f32(i32 7, float %10377)  ; Saturate(value)
  br label %10379

; <label>:10379                                   ; preds = %10304, %10300
  %10380 = phi float [ %10378, %10304 ], [ 1.000000e+00, %10300 ]
  %10381 = fmul fast float %10297, 5.000000e-01
  %10382 = fadd fast float %10381, 5.000000e-01
  %10383 = call float @dx.op.unary.f32(i32 22, float %10382)  ; Frc(value)
  %10384 = call float @dx.op.unary.f32(i32 27, float %10383)  ; Round_ni(value)
  %10385 = call float @dx.op.unary.f32(i32 22, float %10383)  ; Frc(value)
  %10386 = fmul fast float %10385, 2.000000e+00
  %10387 = fadd fast float %10386, -1.000000e+00
  %10388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %57, float %10249, float %10250, float %10384, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10389 = extractvalue %dx.types.ResRet.f32 %10388, 0
  %10390 = extractvalue %dx.types.ResRet.f32 %10388, 1
  %10391 = extractvalue %dx.types.ResRet.f32 %10388, 2
  %10392 = extractvalue %dx.types.ResRet.f32 %10388, 3
  %10393 = fadd fast float %10389, -5.000000e-01
  %10394 = fadd fast float %10391, -5.000000e-01
  %10395 = fmul fast float %10393, 0xBFD5555560000000
  %10396 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10394, float %10395)  ; FMad(a,b,c)
  %10397 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10390, float 0.000000e+00)  ; FMad(a,b,c)
  %10398 = fadd fast float %10397, %10392
  %10399 = fmul fast float %10393, -7.500000e-01
  %10400 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10394, float %10399)  ; FMad(a,b,c)
  %10401 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10390, float 0.000000e+00)  ; FMad(a,b,c)
  %10402 = fadd fast float %10401, %10392
  %10403 = call float @dx.op.binary.f32(i32 35, float %10396, float -1.000000e+00)  ; FMax(a,b)
  %10404 = call float @dx.op.binary.f32(i32 35, float %10398, float -1.000000e+00)  ; FMax(a,b)
  %10405 = call float @dx.op.binary.f32(i32 35, float %10400, float -1.000000e+00)  ; FMax(a,b)
  %10406 = call float @dx.op.binary.f32(i32 35, float %10402, float -1.000000e+00)  ; FMax(a,b)
  %10407 = call float @dx.op.binary.f32(i32 36, float %10403, float 1.000000e+00)  ; FMin(a,b)
  %10408 = call float @dx.op.binary.f32(i32 36, float %10404, float 1.000000e+00)  ; FMin(a,b)
  %10409 = call float @dx.op.binary.f32(i32 36, float %10405, float 1.000000e+00)  ; FMin(a,b)
  %10410 = call float @dx.op.binary.f32(i32 36, float %10406, float 1.000000e+00)  ; FMin(a,b)
  %10411 = fcmp fast olt float %10407, 0x3FEFFF8020000000
  br i1 %10411, label %10412, label %10527, !dx.controlflow.hints !191

; <label>:10412                                   ; preds = %10379
  %10413 = extractvalue %dx.types.CBufRet.f32 %10295, 3
  %10414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10415 = extractvalue %dx.types.CBufRet.f32 %10414, 0
  %10416 = extractvalue %dx.types.CBufRet.f32 %10414, 1
  %10417 = extractvalue %dx.types.CBufRet.f32 %10414, 2
  %10418 = extractvalue %dx.types.CBufRet.f32 %10414, 3
  %10419 = fsub fast float %10415, %10407
  %10420 = fsub fast float %10416, %10408
  %10421 = fsub fast float %10417, %10409
  %10422 = fsub fast float %10418, %10410
  %10423 = fmul fast float %10419, %10413
  %10424 = fmul fast float %10420, %10413
  %10425 = fmul fast float %10421, %10413
  %10426 = fmul fast float %10422, %10413
  %10427 = fadd fast float %10423, %10407
  %10428 = fadd fast float %10424, %10408
  %10429 = fsub fast float -0.000000e+00, %10428
  %10430 = fadd fast float %10425, %10409
  %10431 = fadd fast float %10426, %10410
  %10432 = fmul fast float %10427, %10427
  %10433 = fsub fast float %10428, %10432
  %10434 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10433)  ; FMax(a,b)
  %10435 = fdiv fast float 1.000000e+00, %10434
  %10436 = fmul fast float %10428, %10427
  %10437 = fsub fast float %10430, %10436
  %10438 = fsub fast float %10387, %10427
  %10439 = fmul fast float %10387, %10387
  %10440 = fsub fast float %10439, %10428
  %10441 = fmul fast float %10438, %10435
  %10442 = fmul fast float %10441, %10437
  %10443 = fsub fast float %10440, %10442
  %10444 = fmul fast float %10428, %10428
  %10445 = fsub fast float %10431, %10444
  %10446 = fmul fast float %10437, %10437
  %10447 = fmul fast float %10446, %10435
  %10448 = fsub fast float %10445, %10447
  %10449 = fdiv fast float %10443, %10448
  %10450 = fmul fast float %10437, %10449
  %10451 = fsub fast float %10438, %10450
  %10452 = fmul fast float %10451, %10435
  %10453 = fmul fast float %10452, %10427
  %10454 = fsub fast float 1.000000e+00, %10453
  %10455 = fmul fast float %10428, %10449
  %10456 = fsub fast float %10454, %10455
  %10457 = fmul fast float %10452, %10452
  %10458 = fmul fast float %10449, 4.000000e+00
  %10459 = fmul fast float %10458, %10456
  %10460 = fsub fast float %10457, %10459
  %10461 = call float @dx.op.unary.f32(i32 24, float %10460)  ; Sqrt(value)
  %10462 = fcmp fast oge float %10452, 0.000000e+00
  %10463 = fsub fast float -0.000000e+00, %10461
  %10464 = select i1 %10462, float %10463, float %10461
  %10465 = fsub fast float %10464, %10452
  %10466 = fdiv fast float %10465, %10449
  %10467 = fdiv fast float %10456, %10465
  %10468 = fmul fast float %10466, 5.000000e-01
  %10469 = fmul fast float %10467, 2.000000e+00
  %10470 = select i1 %10462, float %10468, float %10469
  %10471 = select i1 %10462, float %10469, float %10468
  %10472 = call float @dx.op.binary.f32(i32 35, float %10470, float %10471)  ; FMax(a,b)
  %10473 = call float @dx.op.binary.f32(i32 36, float %10470, float %10471)  ; FMin(a,b)
  %10474 = fcmp fast ogt float %10387, %10473
  br i1 %10474, label %10475, label %10485

; <label>:10475                                   ; preds = %10412
  %10476 = fsub fast float %10387, %10473
  %10477 = fsub fast float %10472, %10473
  %10478 = fmul fast float %10476, %10477
  %10479 = fmul fast float %10472, %10387
  %10480 = fadd fast float %10472, %10387
  %10481 = fmul fast float %10480, %10427
  %10482 = fadd fast float %10479, %10428
  %10483 = fsub fast float %10482, %10481
  %10484 = fdiv fast float %10483, %10478
  br label %10485

; <label>:10485                                   ; preds = %10475, %10412
  %10486 = phi float [ %10484, %10475 ], [ 0.000000e+00, %10412 ]
  %10487 = fcmp fast ogt float %10387, %10472
  %10488 = fsub fast float %10387, %10472
  br i1 %10487, label %10489, label %10499

; <label>:10489                                   ; preds = %10485
  %10490 = fsub fast float %10472, %10473
  %10491 = fmul fast float %10490, %10488
  %10492 = fmul fast float %10473, %10387
  %10493 = fadd fast float %10473, %10387
  %10494 = fmul fast float %10493, %10427
  %10495 = fsub fast float %10429, %10492
  %10496 = fadd fast float %10495, %10494
  %10497 = fdiv fast float %10496, %10491
  %10498 = fadd fast float %10497, %10486
  br label %10499

; <label>:10499                                   ; preds = %10489, %10485
  %10500 = phi float [ %10498, %10489 ], [ %10486, %10485 ]
  %10501 = fsub fast float %10387, %10473
  %10502 = fmul fast float %10501, %10488
  %10503 = fmul fast float %10473, %10472
  %10504 = fadd fast float %10473, %10472
  %10505 = fmul fast float %10504, %10427
  %10506 = fadd fast float %10503, %10428
  %10507 = fsub fast float %10506, %10505
  %10508 = fdiv fast float %10507, %10502
  %10509 = call float @dx.op.unary.f32(i32 7, float %10500)  ; Saturate(value)
  %10510 = fcmp fast oeq float %9184, 0.000000e+00
  %10511 = extractvalue %dx.types.CBufRet.f32 %10295, 0
  %10512 = fcmp fast oeq float %10511, 0.000000e+00
  %10513 = or i1 %10510, %10512
  %10514 = fmul fast float %10511, 2.000000e+00
  %10515 = fadd fast float %10296, %10297
  %10516 = fdiv fast float %10515, %10514
  %10517 = call float @dx.op.unary.f32(i32 7, float %10516)  ; Saturate(value)
  %10518 = fmul fast float %10517, 2.000000e+00
  %10519 = fsub fast float 3.000000e+00, %10518
  %10520 = fmul fast float %10517, %10517
  %10521 = fmul fast float %10520, %10519
  %10522 = select i1 %10513, float 1.000000e+00, float %10521
  %10523 = fmul fast float %10508, %9184
  %10524 = fadd fast float %10509, %10523
  %10525 = call float @dx.op.unary.f32(i32 7, float %10524)  ; Saturate(value)
  %10526 = fmul fast float %10522, %10525
  br label %10527

; <label>:10527                                   ; preds = %10499, %10379
  %10528 = phi float [ %10526, %10499 ], [ 0.000000e+00, %10379 ]
  %10529 = fsub fast float 1.000000e+00, %10528
  %10530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %57, float %10249, float %10250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10531 = extractvalue %dx.types.ResRet.f32 %10530, 0
  %10532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10533 = extractvalue %dx.types.CBufRet.i32 %10532, 2
  %10534 = icmp eq i32 %10533, 0
  br i1 %10534, label %10540, label %10535

; <label>:10535                                   ; preds = %10527
  %10536 = call float @dx.op.unary.f32(i32 7, float %10528)  ; Saturate(value)
  %10537 = fadd fast float %10531, -1.000000e+00
  %10538 = fmul fast float %10536, %10537
  %10539 = fadd fast float %10538, 1.000000e+00
  br label %10540

; <label>:10540                                   ; preds = %10535, %10527
  %10541 = phi float [ %10539, %10535 ], [ %10529, %10527 ]
  br i1 %10303, label %10542, label %10560

; <label>:10542                                   ; preds = %10540
  %10543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10544 = extractvalue %dx.types.CBufRet.f32 %10543, 1
  %10545 = fsub fast float %10380, %10544
  %10546 = call float @dx.op.unary.f32(i32 7, float %10545)  ; Saturate(value)
  %10547 = fsub fast float %10380, %10302
  %10548 = call float @dx.op.unary.f32(i32 7, float %10547)  ; Saturate(value)
  %10549 = fsub fast float %10546, %10548
  %10550 = fsub fast float %10382, %10548
  %10551 = fdiv fast float %10550, %10549
  %10552 = call float @dx.op.unary.f32(i32 7, float %10551)  ; Saturate(value)
  %10553 = fmul fast float %10552, 2.000000e+00
  %10554 = fsub fast float 3.000000e+00, %10553
  %10555 = fsub fast float %10531, %10541
  %10556 = fmul fast float %10552, %10552
  %10557 = fmul fast float %10556, %10555
  %10558 = fmul fast float %10557, %10554
  %10559 = fadd fast float %10558, %10541
  br label %10560

; <label>:10560                                   ; preds = %10542, %10540
  %10561 = phi float [ %10559, %10542 ], [ %10541, %10540 ]
  %10562 = call float @dx.op.binary.f32(i32 35, float %10531, float %10561)  ; FMax(a,b)
  %10563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10564 = extractvalue %dx.types.CBufRet.i32 %10563, 2
  %10565 = and i32 %10564, 1
  %10566 = icmp eq i32 %10565, 0
  %10567 = fcmp fast une float %10562, 1.000000e+00
  %10568 = and i1 %10567, %10566
  br i1 %10568, label %10569, label %10588

; <label>:10569                                   ; preds = %10560
  %10570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %57, float %10249, float %10250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10571 = extractvalue %dx.types.ResRet.f32 %10570, 0
  %10572 = extractvalue %dx.types.ResRet.f32 %10570, 1
  %10573 = extractvalue %dx.types.ResRet.f32 %10570, 2
  %10574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10575 = extractvalue %dx.types.CBufRet.f32 %10574, 1
  %10576 = fmul fast float %10575, %10571
  %10577 = fmul fast float %10575, %10572
  %10578 = fmul fast float %10575, %10573
  %10579 = fcmp fast ogt float %10531, 0x3FEFFF2E40000000
  %10580 = fsub fast float 1.000000e+00, %10562
  %10581 = fsub fast float 1.000000e+00, %10531
  %10582 = fdiv fast float %10580, %10581
  %10583 = call float @dx.op.unary.f32(i32 7, float %10582)  ; Saturate(value)
  %10584 = select i1 %10579, float 0.000000e+00, float %10583
  %10585 = fmul fast float %10576, %10584
  %10586 = fmul fast float %10577, %10584
  %10587 = fmul fast float %10578, %10584
  br label %10588

; <label>:10588                                   ; preds = %10569, %10560
  %10589 = phi float [ 0.000000e+00, %10560 ], [ %10585, %10569 ]
  %10590 = phi float [ 0.000000e+00, %10560 ], [ %10586, %10569 ]
  %10591 = phi float [ 0.000000e+00, %10560 ], [ %10587, %10569 ]
  %10592 = fmul fast float %10562, %10224
  %10593 = call float @dx.op.dot3.f32(i32 55, float %10562, float %10562, float %10562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10594 = call float @dx.op.dot3.f32(i32 55, float %10589, float %10590, float %10591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10595 = select i1 %306, float %10593, float %10562
  %10596 = select i1 %306, float 1.000000e+00, float %10562
  %10597 = select i1 %306, float %10594, float %10589
  %10598 = select i1 %306, float 0.000000e+00, float %10590
  %10599 = select i1 %306, float 0.000000e+00, float %10591
  %10600 = fmul fast float %10595, %10236
  %10601 = fmul fast float %10595, %10237
  %10602 = fmul fast float %10596, %10238
  %10603 = fadd fast float %10600, %10597
  %10604 = fadd fast float %10601, %10598
  %10605 = fadd fast float %10599, %10602
  %10606 = fmul fast float %10595, %10239
  %10607 = fmul fast float %10595, %10240
  %10608 = fmul fast float %10596, %10241
  br label %10609

; <label>:10609                                   ; preds = %10588, %10245, %10217, %9449
  %10610 = phi float [ %9454, %9449 ], [ %10236, %10217 ], [ %10603, %10588 ], [ %10236, %10245 ]
  %10611 = phi float [ %9455, %9449 ], [ %10237, %10217 ], [ %10604, %10588 ], [ %10237, %10245 ]
  %10612 = phi float [ %9456, %9449 ], [ %10238, %10217 ], [ %10605, %10588 ], [ %10238, %10245 ]
  %10613 = phi float [ %9457, %9449 ], [ %10239, %10217 ], [ %10606, %10588 ], [ %10239, %10245 ]
  %10614 = phi float [ %9458, %9449 ], [ %10240, %10217 ], [ %10607, %10588 ], [ %10240, %10245 ]
  %10615 = phi float [ %9459, %9449 ], [ %10241, %10217 ], [ %10608, %10588 ], [ %10241, %10245 ]
  %10616 = phi float [ %9460, %9449 ], [ %10224, %10217 ], [ %10592, %10588 ], [ %10224, %10245 ]
  %10617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10618 = extractvalue %dx.types.CBufRet.f32 %10617, 2
  %10619 = extractvalue %dx.types.CBufRet.f32 %10617, 3
  %10620 = fmul fast float %10618, %123
  %10621 = fmul fast float %10619, %124
  %10622 = call float @dx.op.unary.f32(i32 7, float %10620)  ; Saturate(value)
  %10623 = call float @dx.op.unary.f32(i32 7, float %10621)  ; Saturate(value)
  %10624 = select i1 %9194, i32 2, i32 0
  %10625 = or i32 %10624, 1
  %10626 = uitofp i32 %10625 to float
  %10627 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %57, float %10622, float %10623, float %10626, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10628 = extractvalue %dx.types.ResRet.f32 %10627, 0
  %10629 = extractvalue %dx.types.ResRet.f32 %10627, 1
  %10630 = extractvalue %dx.types.ResRet.f32 %10627, 2
  %10631 = extractvalue %dx.types.ResRet.f32 %10627, 3
  %10632 = add nuw nsw i32 %10624, 2
  %10633 = uitofp i32 %10632 to float
  %10634 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %57, float %10622, float %10623, float %10633, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10635 = extractvalue %dx.types.ResRet.f32 %10634, 0
  %10636 = extractvalue %dx.types.ResRet.f32 %10634, 1
  %10637 = extractvalue %dx.types.ResRet.f32 %10634, 2
  %10638 = extractvalue %dx.types.ResRet.f32 %10634, 3
  %10639 = call float @dx.op.binary.f32(i32 35, float %10629, float %10630)  ; FMax(a,b)
  %10640 = call float @dx.op.binary.f32(i32 35, float %10628, float %10639)  ; FMax(a,b)
  %10641 = call float @dx.op.binary.f32(i32 35, float %10640, float %10631)  ; FMax(a,b)
  %10642 = call float @dx.op.binary.f32(i32 36, float %10636, float %10637)  ; FMin(a,b)
  %10643 = call float @dx.op.binary.f32(i32 36, float %10635, float %10642)  ; FMin(a,b)
  %10644 = call float @dx.op.binary.f32(i32 36, float %10643, float %10638)  ; FMin(a,b)
  %10645 = fmul fast float %10641, 2.550000e+02
  %10646 = fadd fast float %10645, 0x3F70101020000000
  %10647 = fptoui float %10646 to i32
  %10648 = fmul fast float %10644, 2.550000e+02
  %10649 = fadd fast float %10648, 0x3F70101020000000
  %10650 = fptoui float %10649 to i32
  %10651 = icmp ult i32 %10647, %10650
  br i1 %10651, label %10652, label %10821

; <label>:10652                                   ; preds = %10609
  %10653 = fcmp fast ogt float %109, 9.843750e-01
  %10654 = fadd fast float %9453, -4.000000e+00
  %10655 = select i1 %10653, float -4.000000e+00, float %10654
  %10656 = call float @dx.op.binary.f32(i32 35, float %10655, float 0.000000e+00)  ; FMax(a,b)
  %10657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10658 = extractvalue %dx.types.CBufRet.f32 %10657, 0
  %10659 = fadd fast float %10658, %10656
  %10660 = extractvalue %dx.types.CBufRet.f32 %10657, 2
  %10661 = fmul fast float %10659, %10660
  %10662 = call float @dx.op.unary.f32(i32 23, float %10661)  ; Log(value)
  %10663 = extractvalue %dx.types.CBufRet.f32 %10657, 3
  %10664 = fmul fast float %10663, %10662
  %10665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10666 = extractvalue %dx.types.CBufRet.f32 %10665, 2
  %10667 = fmul fast float %10664, %10666
  %10668 = call float @dx.op.unary.f32(i32 7, float %10667)  ; Saturate(value)
  %10669 = uitofp i32 %10647 to float
  %10670 = uitofp i32 %10650 to float
  %10671 = fadd fast float %10669, 5.000000e-01
  %10672 = fadd fast float %10670, 5.000000e-01
  %10673 = fmul fast float %10666, %10671
  %10674 = fmul fast float %10666, %10672
  %10675 = fadd fast float %10673, 0x3F0FFB4800000000
  %10676 = fadd fast float %10674, 0xBF0FFB4800000000
  %10677 = call float @dx.op.binary.f32(i32 35, float %10668, float %10675)  ; FMax(a,b)
  %10678 = call float @dx.op.binary.f32(i32 36, float %10677, float %10676)  ; FMin(a,b)
  %10679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10680 = extractvalue %dx.types.CBufRet.f32 %10679, 1
  %10681 = extractvalue %dx.types.CBufRet.f32 %10679, 2
  %10682 = extractvalue %dx.types.CBufRet.f32 %10679, 0
  %10683 = select i1 %9194, float %10682, float 0.000000e+00
  %10684 = fmul fast float %10680, %10678
  %10685 = fadd fast float %10683, %10684
  %10686 = fadd fast float %10683, %10681
  %10687 = fsub fast float %10680, %10681
  %10688 = fadd fast float %10687, %10683
  %10689 = call float @dx.op.binary.f32(i32 35, float %10685, float %10686)  ; FMax(a,b)
  %10690 = call float @dx.op.binary.f32(i32 36, float %10689, float %10688)  ; FMin(a,b)
  %10691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %55, float %10622, float %10623, float %10690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10692 = extractvalue %dx.types.ResRet.f32 %10691, 0
  %10693 = extractvalue %dx.types.ResRet.f32 %10691, 1
  %10694 = extractvalue %dx.types.ResRet.f32 %10691, 2
  %10695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10696 = extractvalue %dx.types.CBufRet.i32 %10695, 0
  %10697 = extractvalue %dx.types.CBufRet.i32 %10695, 1
  %10698 = uitofp i32 %10696 to float
  %10699 = uitofp i32 %10697 to float
  %10700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10701 = extractvalue %dx.types.CBufRet.f32 %10700, 0
  %10702 = extractvalue %dx.types.CBufRet.f32 %10700, 1
  %10703 = fmul fast float %10698, %10622
  %10704 = fmul fast float %10699, %10623
  %10705 = fadd fast float %10703, -5.000000e-01
  %10706 = fadd fast float %10704, -5.000000e-01
  %10707 = call float @dx.op.unary.f32(i32 22, float %10705)  ; Frc(value)
  %10708 = call float @dx.op.unary.f32(i32 22, float %10706)  ; Frc(value)
  %10709 = fmul fast float %10707, %10707
  %10710 = fmul fast float %10709, %10707
  %10711 = fsub fast float 3.000000e+00, %10707
  %10712 = fmul fast float %10709, %10711
  %10713 = fmul fast float %10707, 3.000000e+00
  %10714 = fmul fast float %10710, 3.000000e+00
  %10715 = fmul fast float %10709, 6.000000e+00
  %10716 = fsub fast float %10714, %10715
  %10717 = fadd fast float %10716, 4.000000e+00
  %10718 = fmul fast float %10717, 0x3FC5555560000000
  %10719 = fmul fast float %10710, -3.000000e+00
  %10720 = fadd fast float %10709, %10707
  %10721 = fmul fast float %10720, 3.000000e+00
  %10722 = fadd fast float %10719, 1.000000e+00
  %10723 = fadd fast float %10722, %10721
  %10724 = fmul fast float %10710, 0x3FC5555560000000
  %10725 = fmul fast float %10708, %10708
  %10726 = fmul fast float %10725, %10708
  %10727 = fsub fast float 3.000000e+00, %10708
  %10728 = fmul fast float %10725, %10727
  %10729 = fmul fast float %10708, 3.000000e+00
  %10730 = fmul fast float %10726, 3.000000e+00
  %10731 = fmul fast float %10725, 6.000000e+00
  %10732 = fsub fast float %10730, %10731
  %10733 = fadd fast float %10732, 4.000000e+00
  %10734 = fmul fast float %10733, 0x3FC5555560000000
  %10735 = fmul fast float %10726, -3.000000e+00
  %10736 = fadd fast float %10725, %10708
  %10737 = fmul fast float %10736, 3.000000e+00
  %10738 = fadd fast float %10735, 1.000000e+00
  %10739 = fadd fast float %10738, %10737
  %10740 = fmul fast float %10726, 0x3FC5555560000000
  %10741 = fadd fast float %10707, 1.000000e+00
  %10742 = fsub fast float 1.000000e+00, %10713
  %10743 = fadd fast float %10742, %10712
  %10744 = fadd fast float %10743, %10717
  %10745 = fmul fast float %10744, 0x3FC5555560000000
  %10746 = fdiv fast float %10718, %10745
  %10747 = fsub fast float %10741, %10746
  %10748 = fsub fast float 1.000000e+00, %10707
  %10749 = fadd fast float %10723, %10710
  %10750 = fmul fast float %10749, 0x3FC5555560000000
  %10751 = fdiv fast float %10724, %10750
  %10752 = fadd fast float %10748, %10751
  %10753 = fadd fast float %10708, 1.000000e+00
  %10754 = fsub fast float 1.000000e+00, %10729
  %10755 = fadd fast float %10754, %10728
  %10756 = fadd fast float %10755, %10733
  %10757 = fmul fast float %10756, 0x3FC5555560000000
  %10758 = fdiv fast float %10734, %10757
  %10759 = fsub fast float %10753, %10758
  %10760 = fsub fast float 1.000000e+00, %10708
  %10761 = fadd fast float %10739, %10726
  %10762 = fmul fast float %10761, 0x3FC5555560000000
  %10763 = fdiv fast float %10740, %10762
  %10764 = fadd fast float %10763, %10760
  %10765 = fmul fast float %10747, %10701
  %10766 = fsub fast float %10622, %10765
  %10767 = fmul fast float %10752, %10701
  %10768 = fadd fast float %10767, %10622
  %10769 = fmul fast float %10764, %10702
  %10770 = fadd fast float %10769, %10623
  %10771 = fmul fast float %10759, %10702
  %10772 = fsub fast float %10623, %10771
  %10773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %10766, float %10772, float %10690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10774 = extractvalue %dx.types.ResRet.f32 %10773, 0
  %10775 = extractvalue %dx.types.ResRet.f32 %10773, 1
  %10776 = extractvalue %dx.types.ResRet.f32 %10773, 2
  %10777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %10768, float %10772, float %10690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10778 = extractvalue %dx.types.ResRet.f32 %10777, 0
  %10779 = extractvalue %dx.types.ResRet.f32 %10777, 1
  %10780 = extractvalue %dx.types.ResRet.f32 %10777, 2
  %10781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %10766, float %10770, float %10690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10782 = extractvalue %dx.types.ResRet.f32 %10781, 0
  %10783 = extractvalue %dx.types.ResRet.f32 %10781, 1
  %10784 = extractvalue %dx.types.ResRet.f32 %10781, 2
  %10785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %10768, float %10770, float %10690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10786 = extractvalue %dx.types.ResRet.f32 %10785, 0
  %10787 = extractvalue %dx.types.ResRet.f32 %10785, 1
  %10788 = extractvalue %dx.types.ResRet.f32 %10785, 2
  %10789 = fsub fast float %10782, %10774
  %10790 = fsub fast float %10783, %10775
  %10791 = fsub fast float %10784, %10776
  %10792 = fmul fast float %10789, %10762
  %10793 = fmul fast float %10790, %10762
  %10794 = fmul fast float %10791, %10762
  %10795 = fadd fast float %10792, %10774
  %10796 = fadd fast float %10793, %10775
  %10797 = fadd fast float %10794, %10776
  %10798 = fsub fast float %10786, %10778
  %10799 = fsub fast float %10787, %10779
  %10800 = fsub fast float %10788, %10780
  %10801 = fmul fast float %10798, %10762
  %10802 = fmul fast float %10799, %10762
  %10803 = fmul fast float %10800, %10762
  %10804 = fsub fast float %10778, %10795
  %10805 = fadd fast float %10804, %10801
  %10806 = fsub fast float %10779, %10796
  %10807 = fadd fast float %10806, %10802
  %10808 = fsub fast float %10780, %10797
  %10809 = fadd fast float %10808, %10803
  %10810 = fmul fast float %10805, %10750
  %10811 = fmul fast float %10807, %10750
  %10812 = fmul fast float %10809, %10750
  %10813 = fadd fast float %10810, %10795
  %10814 = fadd fast float %10811, %10796
  %10815 = fadd fast float %10812, %10797
  %10816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10817 = extractvalue %dx.types.CBufRet.f32 %10816, 1
  %10818 = fmul fast float %10813, %10817
  %10819 = fmul fast float %10814, %10817
  %10820 = fmul fast float %10815, %10817
  br label %10821

; <label>:10821                                   ; preds = %10652, %10609
  %10822 = phi float [ %10692, %10652 ], [ 1.000000e+00, %10609 ]
  %10823 = phi float [ %10693, %10652 ], [ 1.000000e+00, %10609 ]
  %10824 = phi float [ %10694, %10652 ], [ 1.000000e+00, %10609 ]
  %10825 = phi float [ %10818, %10652 ], [ 0.000000e+00, %10609 ]
  %10826 = phi float [ %10819, %10652 ], [ 0.000000e+00, %10609 ]
  %10827 = phi float [ %10820, %10652 ], [ 0.000000e+00, %10609 ]
  %10828 = fmul fast float %10822, %10616
  %10829 = call float @dx.op.dot3.f32(i32 55, float %10822, float %10823, float %10824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10830 = call float @dx.op.dot3.f32(i32 55, float %10825, float %10826, float %10827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10831 = select i1 %306, float %10829, float %10822
  %10832 = select i1 %306, float %10829, float %10823
  %10833 = select i1 %306, float 1.000000e+00, float %10824
  %10834 = select i1 %306, float %10830, float %10825
  %10835 = select i1 %306, float 0.000000e+00, float %10826
  %10836 = select i1 %306, float 0.000000e+00, float %10827
  %10837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10838 = extractvalue %dx.types.CBufRet.i32 %10837, 3
  %10839 = and i32 %10838, 3
  %10840 = icmp ne i32 %10839, 0
  %10841 = and i32 %10838, 4
  %10842 = icmp ne i32 %10841, 0
  %10843 = and i1 %10840, %10842
  %10844 = and i1 %306, %10843
  br i1 %10844, label %10845, label %10851

; <label>:10845                                   ; preds = %10821
  %10846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10847 = extractvalue %dx.types.CBufRet.f32 %10846, 1
  %10848 = fadd fast float %10828, -1.000000e+00
  %10849 = fmul fast float %10847, %10848
  %10850 = fadd fast float %10849, 1.000000e+00
  br label %10851

; <label>:10851                                   ; preds = %10845, %10821
  %10852 = phi float [ %10850, %10845 ], [ %10828, %10821 ]
  %10853 = fadd fast float %10613, %10610
  %10854 = fmul fast float %10831, %10853
  %10855 = fadd fast float %10854, %10834
  %10856 = fadd fast float %10614, %10611
  %10857 = fmul fast float %10832, %10856
  %10858 = fadd fast float %10857, %10835
  %10859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10860 = extractvalue %dx.types.CBufRet.f32 %10859, 0
  br i1 %306, label %10861, label %10876

; <label>:10861                                   ; preds = %10851
  %10862 = fadd fast float %10855, %10858
  %10863 = fmul fast float %10860, %10862
  %10864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10865 = extractvalue %dx.types.CBufRet.f32 %10864, 3
  %10866 = extractvalue %dx.types.CBufRet.f32 %9176, 1
  %10867 = fsub fast float %9181, %9175
  %10868 = fadd fast float %10867, %9182
  %10869 = fsub fast float %10868, %10866
  %10870 = extractvalue %dx.types.CBufRet.f32 %9176, 2
  %10871 = fmul fast float %10869, %10870
  %10872 = call float @dx.op.unary.f32(i32 7, float %10871)  ; Saturate(value)
  %10873 = fsub fast float %10872, %10865
  %10874 = fmul fast float %10873, %10852
  %10875 = fadd fast float %10874, %10865
  br label %10900

; <label>:10876                                   ; preds = %10851
  %10877 = fadd fast float %10615, %10612
  %10878 = fmul fast float %10833, %10877
  %10879 = fadd fast float %10878, %10836
  %10880 = fmul fast float %10860, %10855
  %10881 = fmul fast float %10860, %10858
  %10882 = fmul fast float %10860, %10879
  %10883 = call float @dx.op.binary.f32(i32 35, float %10881, float %10882)  ; FMax(a,b)
  %10884 = call float @dx.op.binary.f32(i32 35, float %10880, float %10883)  ; FMax(a,b)
  %10885 = call float @dx.op.binary.f32(i32 35, float %10884, float 1.000000e+00)  ; FMax(a,b)
  %10886 = fcmp fast ugt float %10885, 0x3F10000000000000
  br i1 %10886, label %10888, label %10887

; <label>:10887                                   ; preds = %10876
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10888

; <label>:10888                                   ; preds = %10887, %10876
  %10889 = add i32 %63, 356
  %10890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %10889, i32 undef)  ; BufferLoad(srv,index,wot)
  %10891 = extractvalue %dx.types.ResRet.i32 %10890, 0
  %10892 = and i32 %10891, 32
  %10893 = icmp eq i32 %10892, 0
  br i1 %10893, label %10900, label %10894

; <label>:10894                                   ; preds = %10888
  %10895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10896 = extractvalue %dx.types.CBufRet.f32 %10895, 0
  %10897 = fmul fast float %10896, 0x3FE99999A0000000
  %10898 = fadd fast float %10896, %10880
  %10899 = fadd fast float %10897, %10882
  br label %10900

; <label>:10900                                   ; preds = %10894, %10888, %10861
  %10901 = phi float [ %10863, %10861 ], [ %10898, %10894 ], [ %10880, %10888 ]
  %10902 = phi float [ %10875, %10861 ], [ %10881, %10894 ], [ %10881, %10888 ]
  %10903 = phi float [ 1.000000e+00, %10861 ], [ %10899, %10894 ], [ %10882, %10888 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10904 = call float @dx.op.binary.f32(i32 36, float %10901, float 3.225500e+04)  ; FMin(a,b)
  %10905 = call float @dx.op.binary.f32(i32 36, float %10902, float 3.225500e+04)  ; FMin(a,b)
  %10906 = call float @dx.op.binary.f32(i32 36, float %10903, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10904)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10905)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10906)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!76}
!dx.entryPoints = !{!77}

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
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!66 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75}
!68 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!69 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!70 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!71 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!72 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!73 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!74 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!75 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!76 = !{[62 x i32] [i32 60, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!77 = !{void ()* @ps_main, !"ps_main", !78, !4, !106}
!78 = !{!79, !102, null}
!79 = !{!80, !83, !84, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !100, !101}
!80 = !{i32 0, !"SV_Position", i8 9, i8 3, !81, i8 4, i32 1, i8 4, i32 0, i8 0, !82}
!81 = !{i32 0}
!82 = !{i32 3, i32 15}
!83 = !{i32 1, !"COLOR", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 1, i8 0, !82}
!84 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 2, i8 0, !85}
!85 = !{i32 3, i32 3}
!86 = !{i32 3, !"NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 3, i32 3, i8 0, !87}
!87 = !{i32 3, i32 7}
!88 = !{i32 4, !"TANGENT", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 4, i8 0, !82}
!89 = !{i32 5, !"SH_RED", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 5, i8 0, !82}
!90 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 6, i8 0, !82}
!91 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 7, i8 0, !82}
!92 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !81, i8 2, i32 1, i8 3, i32 8, i8 0, !87}
!93 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 9, i8 0, !82}
!94 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !81, i8 2, i32 1, i8 2, i32 10, i8 0, !85}
!95 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 11, i8 0, !82}
!96 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 12, i8 0, !87}
!97 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !81, i8 1, i32 1, i8 1, i32 13, i8 0, !98}
!98 = !{i32 3, i32 1}
!99 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !81, i8 1, i32 1, i8 2, i32 13, i8 1, !98}
!100 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !81, i8 1, i32 1, i8 4, i32 14, i8 0, !98}
!101 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !81, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!102 = !{!103, !104}
!103 = !{i32 0, !"SV_Target", i8 9, i8 16, !81, i8 0, i32 1, i8 4, i32 0, i8 0, !82}
!104 = !{i32 1, !"SV_Target", i8 9, i8 16, !105, i8 0, i32 1, i8 4, i32 1, i8 0, !82}
!105 = !{i32 1}
!106 = !{i32 0, i64 16}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !109}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"int", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !{!121, !123, !125, !127}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!123 = distinct !{!123, !124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!124 = distinct !{!124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!125 = distinct !{!125, !126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!126 = distinct !{!126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!127 = distinct !{!127, !128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!128 = distinct !{!128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = !{!131, !131, i64 0}
!131 = !{!"float", !118, i64 0}
!132 = distinct !{!132, !109}
!133 = distinct !{!133, !109}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = !{!146, !148, !150, !151, !153, !154, !155, !157, !158, !159}
!146 = distinct !{!146, !147, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!147 = distinct !{!147, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!148 = distinct !{!148, !149, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!149 = distinct !{!149, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!150 = distinct !{!150, !149, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!151 = distinct !{!151, !152, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!152 = distinct !{!152, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!153 = distinct !{!153, !152, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!154 = distinct !{!154, !152, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!155 = distinct !{!155, !156, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!156 = distinct !{!156, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!157 = distinct !{!157, !156, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!158 = distinct !{!158, !156, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!159 = distinct !{!159, !160, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!160 = distinct !{!160, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"\01?sort@@YAXAIAM00@Z: %c"}
!163 = distinct !{!163, !"\01?sort@@YAXAIAM00@Z"}
!164 = !{!165, !166, !146, !148, !150, !151, !153, !154, !155, !157, !158, !159}
!165 = distinct !{!165, !163, !"\01?sort@@YAXAIAM00@Z: %a"}
!166 = distinct !{!166, !163, !"\01?sort@@YAXAIAM00@Z: %b"}
!167 = !{!166}
!168 = !{!165, !162, !146, !148, !150, !151, !153, !154, !155, !157, !158, !159}
!169 = !{!165}
!170 = !{!166, !162, !146, !148, !150, !151, !153, !154, !155, !157, !158, !159}
!171 = !{!172}
!172 = distinct !{!172, !173, !"\01?sort@@YAXAIAM00@Z: %c"}
!173 = distinct !{!173, !"\01?sort@@YAXAIAM00@Z"}
!174 = !{!175, !176, !146, !148, !150, !151, !153, !154, !155, !157, !158, !159}
!175 = distinct !{!175, !173, !"\01?sort@@YAXAIAM00@Z: %a"}
!176 = distinct !{!176, !173, !"\01?sort@@YAXAIAM00@Z: %b"}
!177 = !{!176}
!178 = !{!175, !172, !146, !148, !150, !151, !153, !154, !155, !157, !158, !159}
!179 = !{!175}
!180 = !{!176, !172, !146, !148, !150, !151, !153, !154, !155, !157, !158, !159}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 2}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}

