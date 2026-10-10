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
; shader hash: ee5fa07a63d3adebfe6870e841e93e6c
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
  %458 = add i32 %63, 348
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
  %472 = add i32 %63, 492
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
  br i1 %528, label %1063, label %529

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
  %633 = add i32 %63, 440
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
  %685 = add i32 %63, 424
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
  %709 = add i32 %63, 376
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
  %732 = add i32 %63, 460
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
  %913 = add i32 %63, 356
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
  %930 = add i32 %63, 392
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
  %1014 = add i32 %63, 408
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
  %1050 = add i32 %63, 96
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = lshr i32 %1052, 8
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = call float @dx.op.dot3.f32(i32 55, float %919, float %920, float %921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = fmul fast float %1057, %1058
  %1060 = fadd fast float %1059, %1054
  %1061 = fmul fast float %1060, 0x3F70101020000000
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  br label %1063

; <label>:1063                                    ; preds = %1046, %514
  %1064 = phi float [ 0.000000e+00, %514 ], [ %1000, %1046 ]
  %1065 = phi float [ 0.000000e+00, %514 ], [ %1001, %1046 ]
  %1066 = phi float [ 0.000000e+00, %514 ], [ %919, %1046 ]
  %1067 = phi float [ 0.000000e+00, %514 ], [ %920, %1046 ]
  %1068 = phi float [ 0.000000e+00, %514 ], [ %921, %1046 ]
  %1069 = phi float [ 0.000000e+00, %514 ], [ %1047, %1046 ]
  %1070 = phi float [ 0.000000e+00, %514 ], [ %1048, %1046 ]
  %1071 = phi float [ 0.000000e+00, %514 ], [ %1049, %1046 ]
  %1072 = phi float [ 0.000000e+00, %514 ], [ %905, %1046 ]
  %1073 = phi float [ 0.000000e+00, %514 ], [ %701, %1046 ]
  %1074 = phi float [ 0.000000e+00, %514 ], [ %999, %1046 ]
  %1075 = phi float [ 0.000000e+00, %514 ], [ %1002, %1046 ]
  %1076 = phi float [ 0.000000e+00, %514 ], [ %1062, %1046 ]
  br i1 %462, label %1803, label %1077

; <label>:1077                                    ; preds = %1063
  %1078 = icmp ult i32 %520, 2
  %1079 = add i32 %63, 40
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %63, 44
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = or i32 %1084, %1081
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1803, label %1087

; <label>:1087                                    ; preds = %1077
  %1088 = and i32 %1081, 262144
  %1089 = icmp ne i32 %1088, 0
  %1090 = select i1 %1089, float %69, float 1.000000e+00
  %1091 = select i1 %1089, float %70, float 0.000000e+00
  %1092 = select i1 %1089, float %71, float 0.000000e+00
  %1093 = select i1 %1089, float %72, float 1.000000e+00
  %1094 = select i1 %1089, float %73, float %101
  %1095 = select i1 %1089, float %74, float %102
  %1096 = add i32 %63, 300
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = lshr i32 %1098, 16
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = fmul fast float %1100, 0x3F50624DE0000000
  %1102 = add i32 %63, 104
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = lshr i32 %1104, 16
  %1106 = and i32 %1105, 255
  %1107 = lshr i32 %1104, 24
  %1108 = add i32 %63, 308
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 65535
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = lshr i32 %1110, 16
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = add i32 %63, 48
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 22
  %1119 = shl nuw nsw i32 %1118, 5
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = shl i32 %1117, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1117, 7
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1129 = fmul fast float %1128, 1.000000e+03
  %1130 = fmul fast float %372, %1129
  %1131 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1132 = fadd fast float %1131, %362
  %1133 = fmul fast float %373, %1129
  %1134 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1135 = fadd fast float %1134, %364
  %1136 = fmul fast float %1101, %1129
  %1137 = call float @dx.op.unary.f32(i32 22, float %1136)  ; Frc(value)
  %1138 = fmul fast float %1137, 0x401921FB60000000
  %1139 = fadd fast float %1138, %1120
  %1140 = call float @dx.op.unary.f32(i32 13, float %1139)  ; Sin(value)
  %1141 = call float @dx.op.unary.f32(i32 12, float %1139)  ; Cos(value)
  %1142 = fsub fast float -0.000000e+00, %1140
  %1143 = fadd fast float %1094, -5.000000e-01
  %1144 = fadd fast float %1095, -5.000000e-01
  %1145 = fmul fast float %1112, %1143
  %1146 = fmul fast float %1114, %1144
  %1147 = fadd fast float %1145, 5.000000e-01
  %1148 = fadd fast float %1146, 5.000000e-01
  %1149 = fmul fast float %1123, %1147
  %1150 = fmul fast float %1126, %1148
  %1151 = fmul fast float %1141, %1149
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %1150, float %1151)  ; FMad(a,b,c)
  %1153 = fmul fast float %1140, %1149
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1141, float %1150, float %1153)  ; FMad(a,b,c)
  %1155 = fadd fast float %1132, %1152
  %1156 = fadd fast float %1135, %1154
  %1157 = icmp ugt i32 %1106, 1
  %1158 = icmp ugt i32 %1104, 33554431
  %1159 = or i1 %1158, %1157
  br i1 %1159, label %1160, label %1185

; <label>:1160                                    ; preds = %1087
  %1161 = add i32 %63, 244
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = fmul fast float %1128, %1165
  %1167 = call float @dx.op.unary.f32(i32 22, float %1166)  ; Frc(value)
  %1168 = mul nuw nsw i32 %1106, %1107
  %1169 = uitofp i32 %1168 to float
  %1170 = fmul fast float %1167, %1169
  %1171 = call float @dx.op.unary.f32(i32 27, float %1170)  ; Round_ni(value)
  %1172 = fptoui float %1171 to i32
  %1173 = urem i32 %1172, %1106
  %1174 = udiv i32 %1172, %1107
  %1175 = call float @dx.op.unary.f32(i32 22, float %1155)  ; Frc(value)
  %1176 = call float @dx.op.unary.f32(i32 22, float %1156)  ; Frc(value)
  %1177 = uitofp i32 %1173 to float
  %1178 = uitofp i32 %1174 to float
  %1179 = fadd fast float %1175, %1177
  %1180 = fadd fast float %1176, %1178
  %1181 = uitofp i32 %1106 to float
  %1182 = uitofp i32 %1107 to float
  %1183 = fdiv fast float %1179, %1181
  %1184 = fdiv fast float %1180, %1182
  br label %1185

; <label>:1185                                    ; preds = %1160, %1087
  %1186 = phi float [ %1183, %1160 ], [ %1155, %1087 ]
  %1187 = phi float [ %1184, %1160 ], [ %1156, %1087 ]
  %1188 = and i32 %1081, 256
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1236, label %1190

; <label>:1190                                    ; preds = %1185
  %1191 = add i32 %63, 444
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %120, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = add i32 %63, 116
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = shl i32 %1200, 4
  %1202 = and i32 %1201, 32752
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = lshr i32 %1200, 7
  %1205 = and i32 %1204, 32752
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = fsub fast float 1.000000e+00, %517
  %1208 = call float @dx.op.binary.f32(i32 35, float %1207, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1209 = bitcast float %517 to i32
  %1210 = sitofp i32 %1209 to float
  %1211 = fadd fast float %1210, 0xC1CFBF8940000000
  %1212 = fmul fast float %1206, %1211
  %1213 = fadd fast float %1212, 0x41CFBF8940000000
  %1214 = fptosi float %1213 to i32
  %1215 = bitcast i32 %1214 to float
  %1216 = bitcast float %1208 to i32
  %1217 = sitofp i32 %1216 to float
  %1218 = fadd fast float %1217, 0xC1CFBF8940000000
  %1219 = fmul fast float %1218, %1206
  %1220 = fadd fast float %1219, 0x41CFBF8940000000
  %1221 = fptosi float %1220 to i32
  %1222 = bitcast i32 %1221 to float
  %1223 = fmul fast float %1215, %1203
  %1224 = fmul fast float %1222, %1203
  %1225 = fsub fast float %1208, %1223
  %1226 = fadd fast float %1224, %1208
  %1227 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1228 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1229 = fsub fast float %1197, %1227
  %1230 = fsub fast float %1228, %1227
  %1231 = bitcast float %1230 to i32
  %1232 = sub nsw i32 2129859010, %1231
  %1233 = bitcast i32 %1232 to float
  %1234 = fmul fast float %1233, %1229
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  br label %1236

; <label>:1236                                    ; preds = %1190, %1185
  %1237 = phi float [ %1235, %1190 ], [ %517, %1185 ]
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 128
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1258, label %1242

; <label>:1242                                    ; preds = %1236
  %1243 = add i32 %63, 428
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %120, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 524288
  %1253 = icmp ne i32 %1252, 0
  %1254 = fcmp fast ogt float %1249, 0x3FE0101020000000
  %1255 = select i1 %1254, float 1.000000e+00, float 0.000000e+00
  %1256 = select i1 %1253, float %1255, float %1249
  %1257 = fmul fast float %1256, %1237
  br label %1258

; <label>:1258                                    ; preds = %1242, %1236
  %1259 = phi float [ %1257, %1242 ], [ %1237, %1236 ]
  %1260 = fcmp fast ult float %1259, 0x3F70101020000000
  br i1 %1260, label %1803, label %1261

; <label>:1261                                    ; preds = %1258
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 16
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1464, label %1266

; <label>:1266                                    ; preds = %1261
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %63, 380
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %119, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.ResRet.f32 %1274, 3
  %1279 = and i32 %1268, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = lshr i32 %1268, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1278, %1280
  %1285 = fadd fast float %1284, %1283
  %1286 = fmul fast float %1285, 0x3F70101000000000
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 512
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1299, label %1291

; <label>:1291                                    ; preds = %1266
  %1292 = add i32 %63, 464
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = add i32 %1294, 0
  %1296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1296, %dx.types.Handle %120, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  br label %1299

; <label>:1299                                    ; preds = %1291, %1266
  %1300 = phi float [ %1298, %1291 ], [ 1.000000e+00, %1266 ]
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 33554432
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1411, label %1305

; <label>:1305                                    ; preds = %1299
  %1306 = add i32 %63, 240
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = and i32 %1308, 65535
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = lshr i32 %1308, 16
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = add i32 %63, 244
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = and i32 %1315, 65535
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = lshr i32 %1319, 24
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = and i32 %1319, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = lshr i32 %1319, 8
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = lshr i32 %1319, 16
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F70101020000000
  %1334 = add i32 %63, 236
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 24
  %1338 = uitofp i32 %1337 to float
  %1339 = fmul fast float %1338, 0x3F70101020000000
  %1340 = and i32 %1336, 255
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1341, 0x3F70101020000000
  %1343 = lshr i32 %1336, 8
  %1344 = and i32 %1343, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1345, 0x3F70101020000000
  %1347 = lshr i32 %1336, 16
  %1348 = and i32 %1347, 255
  %1349 = uitofp i32 %1348 to float
  %1350 = fmul fast float %1349, 0x3F70101020000000
  %1351 = bitcast float %1275 to i32
  %1352 = ashr i32 %1351, 1
  %1353 = sub nsw i32 1597463174, %1352
  %1354 = bitcast i32 %1353 to float
  %1355 = fmul fast float %1275, 5.000000e-01
  %1356 = fmul fast float %1354, %1354
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float 1.500000e+00, %1357
  %1359 = fmul fast float %1354, %1275
  %1360 = fmul fast float %1359, %1358
  %1361 = bitcast float %1276 to i32
  %1362 = ashr i32 %1361, 1
  %1363 = sub nsw i32 1597463174, %1362
  %1364 = bitcast i32 %1363 to float
  %1365 = fmul fast float %1276, 5.000000e-01
  %1366 = fmul fast float %1364, %1364
  %1367 = fmul fast float %1366, %1365
  %1368 = fsub fast float 1.500000e+00, %1367
  %1369 = fmul fast float %1364, %1276
  %1370 = fmul fast float %1369, %1368
  %1371 = bitcast float %1277 to i32
  %1372 = ashr i32 %1371, 1
  %1373 = sub nsw i32 1597463174, %1372
  %1374 = bitcast i32 %1373 to float
  %1375 = fmul fast float %1277, 5.000000e-01
  %1376 = fmul fast float %1374, %1374
  %1377 = fmul fast float %1376, %1375
  %1378 = fsub fast float 1.500000e+00, %1377
  %1379 = fmul fast float %1374, %1277
  %1380 = fmul fast float %1379, %1378
  %1381 = fsub fast float %1360, %1342
  %1382 = fsub fast float %1370, %1346
  %1383 = fsub fast float %1380, %1350
  %1384 = fmul fast float %1381, %1310
  %1385 = fmul fast float %1382, %1312
  %1386 = fmul fast float %1383, %1317
  %1387 = fadd fast float %1384, %1325
  %1388 = fadd fast float %1385, %1329
  %1389 = fadd fast float %1386, %1333
  %1390 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1391 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1392 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1393 = fmul fast float %1390, %1390
  %1394 = fmul fast float %1391, %1391
  %1395 = fmul fast float %1392, %1392
  %1396 = fsub fast float %1393, %1275
  %1397 = fsub fast float %1394, %1276
  %1398 = fsub fast float %1395, %1277
  %1399 = fmul fast float %1396, %1300
  %1400 = fmul fast float %1397, %1300
  %1401 = fmul fast float %1398, %1300
  %1402 = fadd fast float %1399, %1275
  %1403 = fadd fast float %1400, %1276
  %1404 = fadd fast float %1401, %1277
  %1405 = fadd fast float %1322, %1286
  %1406 = fsub fast float %1405, %1339
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = fsub fast float %1407, %1286
  %1409 = fmul fast float %1408, %1300
  %1410 = fadd fast float %1409, %1286
  br label %1464

; <label>:1411                                    ; preds = %1299
  %1412 = and i32 %1302, 134217728
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1448, label %1414

; <label>:1414                                    ; preds = %1411
  %1415 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %1416 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1417 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %1418 = fadd fast float %1415, -5.000000e-01
  %1419 = fadd fast float %1416, -5.000000e-01
  %1420 = fadd fast float %1417, -5.000000e-01
  %1421 = fmul fast float %1418, %1300
  %1422 = fmul fast float %1419, %1300
  %1423 = fmul fast float %1420, %1300
  %1424 = fadd fast float %1421, 5.000000e-01
  %1425 = fadd fast float %1422, 5.000000e-01
  %1426 = fadd fast float %1423, 5.000000e-01
  %1427 = call float @dx.op.unary.f32(i32 24, float %1275)  ; Sqrt(value)
  %1428 = call float @dx.op.unary.f32(i32 24, float %1276)  ; Sqrt(value)
  %1429 = call float @dx.op.unary.f32(i32 24, float %1277)  ; Sqrt(value)
  %1430 = fmul fast float %1424, 2.000000e+00
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = fmul fast float %1431, %1427
  %1433 = fadd fast float %1432, %1430
  %1434 = fmul fast float %1433, %1427
  %1435 = fmul fast float %1425, 2.000000e+00
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul fast float %1436, %1428
  %1438 = fadd fast float %1437, %1435
  %1439 = fmul fast float %1438, %1428
  %1440 = fmul fast float %1426, 2.000000e+00
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = fmul fast float %1441, %1429
  %1443 = fadd fast float %1442, %1440
  %1444 = fmul fast float %1443, %1429
  %1445 = fmul fast float %1434, %1434
  %1446 = fmul fast float %1439, %1439
  %1447 = fmul fast float %1444, %1444
  br label %1464

; <label>:1448                                    ; preds = %1411
  %1449 = fmul fast float %349, %349
  %1450 = fmul fast float %353, %353
  %1451 = fmul fast float %357, %357
  %1452 = fadd fast float %1449, -1.000000e+00
  %1453 = fadd fast float %1450, -1.000000e+00
  %1454 = fadd fast float %1451, -1.000000e+00
  %1455 = fmul fast float %1300, %1452
  %1456 = fmul fast float %1300, %1453
  %1457 = fmul fast float %1300, %1454
  %1458 = fadd fast float %1455, 1.000000e+00
  %1459 = fadd fast float %1456, 1.000000e+00
  %1460 = fadd fast float %1457, 1.000000e+00
  %1461 = fmul fast float %1458, %1275
  %1462 = fmul fast float %1459, %1276
  %1463 = fmul fast float %1460, %1277
  br label %1464

; <label>:1464                                    ; preds = %1448, %1414, %1305, %1261
  %1465 = phi float [ %1410, %1305 ], [ %1286, %1414 ], [ %1286, %1448 ], [ 0x3FA23C0BE0000000, %1261 ]
  %1466 = phi float [ %1402, %1305 ], [ %1445, %1414 ], [ %1461, %1448 ], [ 1.000000e+00, %1261 ]
  %1467 = phi float [ %1403, %1305 ], [ %1446, %1414 ], [ %1462, %1448 ], [ 1.000000e+00, %1261 ]
  %1468 = phi float [ %1404, %1305 ], [ %1447, %1414 ], [ %1463, %1448 ], [ 1.000000e+00, %1261 ]
  %1469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.i32 %1469, 1
  %1471 = and i32 %1470, 1
  %1472 = icmp ne i32 %1471, 0
  %1473 = add i32 %63, 356
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 32
  %1477 = icmp ne i32 %1476, 0
  %1478 = and i1 %1472, %1477
  %1479 = select i1 %1478, float 1.000000e+00, float %1466
  %1480 = select i1 %1478, float 0x3FD3333340000000, float %1467
  %1481 = select i1 %1478, float 0x3FD3333340000000, float %1468
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 32
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1558, label %1486

; <label>:1486                                    ; preds = %1464
  %1487 = add i32 %63, 108
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %63, 396
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %1492, 0
  %1494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1494, %dx.types.Handle %119, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  %1499 = extractvalue %dx.types.ResRet.f32 %1495, 3
  %1500 = and i32 %1489, 255
  %1501 = uitofp i32 %1500 to float
  %1502 = lshr i32 %1489, 8
  %1503 = and i32 %1502, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = lshr i32 %1489, 16
  %1506 = and i32 %1505, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1507, 0x3F70101000000000
  %1509 = fmul fast float %1496, %1501
  %1510 = fadd fast float %1509, %1504
  %1511 = fmul fast float %1510, 0x3F70101000000000
  %1512 = fadd fast float %1497, -5.000000e-01
  %1513 = fadd fast float %1499, -5.000000e-01
  %1514 = fmul fast float %1512, %1508
  %1515 = fmul fast float %1513, %1508
  %1516 = fadd fast float %1514, 5.000000e-01
  %1517 = fadd fast float %1515, 5.000000e-01
  %1518 = fmul fast float %1516, 2.000000e+00
  %1519 = fadd fast float %1518, -1.000000e+00
  %1520 = fmul fast float %1517, 2.000000e+00
  %1521 = fadd fast float %1520, -1.000000e+00
  %1522 = fadd fast float %1519, %1521
  %1523 = fmul fast float %1522, 5.000000e-01
  %1524 = fsub fast float %1519, %1521
  %1525 = fmul fast float %1524, 5.000000e-01
  %1526 = call float @dx.op.unary.f32(i32 6, float %1523)  ; FAbs(value)
  %1527 = fsub fast float 1.000000e+00, %1526
  %1528 = call float @dx.op.unary.f32(i32 6, float %1525)  ; FAbs(value)
  %1529 = fsub fast float %1527, %1528
  %1530 = call float @dx.op.dot3.f32(i32 55, float %1523, float %1525, float %1529, float %1523, float %1525, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1531 = call float @dx.op.unary.f32(i32 25, float %1530)  ; Rsqrt(value)
  %1532 = fmul fast float %1523, %1531
  %1533 = fmul fast float %1525, %1531
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 67108864
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1554, label %1538

; <label>:1538                                    ; preds = %1486
  %1539 = add i32 %63, 296
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 65535
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 65535
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = lshr i32 %1541, 16
  %1549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1548)  ; LegacyF16ToF32(value)
  %1550 = fsub fast float %1511, %1549
  %1551 = fmul fast float %1550, %1543
  %1552 = fadd fast float %1551, %1547
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  br label %1554

; <label>:1554                                    ; preds = %1538, %1486
  %1555 = phi float [ %1553, %1538 ], [ %1511, %1486 ]
  %1556 = call float @dx.op.dot2.f32(i32 54, float %1532, float %1533, float %1090, float %1091)  ; Dot2(ax,ay,bx,by)
  %1557 = call float @dx.op.dot2.f32(i32 54, float %1532, float %1533, float %1092, float %1093)  ; Dot2(ax,ay,bx,by)
  br label %1558

; <label>:1558                                    ; preds = %1554, %1464
  %1559 = phi float [ %1555, %1554 ], [ 0x3FD6666660000000, %1464 ]
  %1560 = phi float [ %1556, %1554 ], [ 0.000000e+00, %1464 ]
  %1561 = phi float [ %1557, %1554 ], [ 0.000000e+00, %1464 ]
  %1562 = phi float [ %1498, %1554 ], [ 1.000000e+00, %1464 ]
  %1563 = add i32 %63, 176
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = lshr i32 %1565, 22
  %1567 = shl nuw nsw i32 %1566, 5
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 64
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1606, label %1573

; <label>:1573                                    ; preds = %1558
  %1574 = add i32 %63, 412
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = add i32 %1576, 0
  %1578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 131072
  %1582 = icmp eq i32 %1581, 0
  %1583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1578, %dx.types.Handle %119, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = fmul fast float %1584, %337
  %1588 = fmul fast float %1585, %340
  %1589 = fmul fast float %1586, %343
  br i1 %1582, label %1596, label %1590

; <label>:1590                                    ; preds = %1573
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = fmul fast float %1592, %1587
  %1594 = fmul fast float %1592, %1588
  %1595 = fmul fast float %1592, %1589
  br label %1596

; <label>:1596                                    ; preds = %1590, %1573
  %1597 = phi float [ %1593, %1590 ], [ %1587, %1573 ]
  %1598 = phi float [ %1594, %1590 ], [ %1588, %1573 ]
  %1599 = phi float [ %1595, %1590 ], [ %1589, %1573 ]
  %1600 = fmul fast float %1597, %1568
  %1601 = select i1 %278, float %1600, float %1597
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1598, float %1599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = select i1 %278, float 0.000000e+00, float %1597
  %1604 = select i1 %278, float %1602, float %1598
  %1605 = select i1 %278, float 0.000000e+00, float %1599
  br label %1606

; <label>:1606                                    ; preds = %1596, %1558
  %1607 = phi float [ %1603, %1596 ], [ 0.000000e+00, %1558 ]
  %1608 = phi float [ %1604, %1596 ], [ 0.000000e+00, %1558 ]
  %1609 = phi float [ %1605, %1596 ], [ 0.000000e+00, %1558 ]
  %1610 = add i32 %63, 112
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = lshr i32 %1612, 8
  %1616 = and i32 %1615, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1480, float %1481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = fmul fast float %1617, %1618
  %1620 = fadd fast float %1619, %1614
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  br i1 %1078, label %1623, label %1631

; <label>:1623                                    ; preds = %1606
  %1624 = fsub fast float 1.000000e+00, %1259
  %1625 = fmul fast float %1624, %1066
  %1626 = fmul fast float %1624, %1067
  %1627 = fmul fast float %1624, %1068
  %1628 = fmul fast float %1624, %1069
  %1629 = fmul fast float %1624, %1070
  %1630 = fmul fast float %1624, %1071
  br label %1631

; <label>:1631                                    ; preds = %1623, %1606
  %1632 = phi float [ %1625, %1623 ], [ %1066, %1606 ]
  %1633 = phi float [ %1626, %1623 ], [ %1067, %1606 ]
  %1634 = phi float [ %1627, %1623 ], [ %1068, %1606 ]
  %1635 = phi float [ %1628, %1623 ], [ %1069, %1606 ]
  %1636 = phi float [ %1629, %1623 ], [ %1070, %1606 ]
  %1637 = phi float [ %1630, %1623 ], [ %1071, %1606 ]
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = and i32 %1639, 3
  %1641 = icmp eq i32 %1640, 3
  br i1 %1641, label %1720, label %1642

; <label>:1642                                    ; preds = %1631
  %1643 = and i32 %1639, 16
  %1644 = icmp ne i32 %1643, 0
  %1645 = select i1 %1644, float %1259, float 0.000000e+00
  %1646 = icmp eq i32 %1640, 0
  br i1 %1646, label %1647, label %1675

; <label>:1647                                    ; preds = %1642
  %1648 = and i32 %1639, 64
  %1649 = icmp ne i32 %1648, 0
  %1650 = select i1 %1649, float %1259, float 0.000000e+00
  %1651 = fsub fast float %1479, %1632
  %1652 = fsub fast float %1480, %1633
  %1653 = fsub fast float %1481, %1634
  %1654 = fmul fast float %1645, %1651
  %1655 = fmul fast float %1645, %1652
  %1656 = fmul fast float %1645, %1653
  %1657 = fadd fast float %1654, %1632
  %1658 = fadd fast float %1655, %1633
  %1659 = fadd fast float %1656, %1634
  %1660 = fsub fast float %1465, %1072
  %1661 = fmul fast float %1645, %1660
  %1662 = fadd fast float %1661, %1072
  %1663 = fsub fast float %1607, %1635
  %1664 = fsub fast float %1608, %1636
  %1665 = fsub fast float %1609, %1637
  %1666 = fmul fast float %1650, %1663
  %1667 = fmul fast float %1650, %1664
  %1668 = fmul fast float %1650, %1665
  %1669 = fadd fast float %1666, %1635
  %1670 = fadd fast float %1667, %1636
  %1671 = fadd fast float %1668, %1637
  %1672 = fsub fast float %1622, %1076
  %1673 = fmul fast float %1645, %1672
  %1674 = fadd fast float %1673, %1076
  br label %1720

; <label>:1675                                    ; preds = %1642
  %1676 = icmp eq i32 %1640, 1
  br i1 %1676, label %1677, label %1690

; <label>:1677                                    ; preds = %1675
  %1678 = fadd fast float %1479, -1.000000e+00
  %1679 = fadd fast float %1480, -1.000000e+00
  %1680 = fadd fast float %1481, -1.000000e+00
  %1681 = fmul fast float %1645, %1678
  %1682 = fmul fast float %1645, %1679
  %1683 = fmul fast float %1645, %1680
  %1684 = fadd fast float %1681, 1.000000e+00
  %1685 = fadd fast float %1682, 1.000000e+00
  %1686 = fadd fast float %1683, 1.000000e+00
  %1687 = fmul fast float %1684, %1632
  %1688 = fmul fast float %1685, %1633
  %1689 = fmul fast float %1686, %1634
  br label %1720

; <label>:1690                                    ; preds = %1675
  %1691 = icmp eq i32 %1640, 2
  br i1 %1691, label %1692, label %1720

; <label>:1692                                    ; preds = %1690
  %1693 = call float @dx.op.unary.f32(i32 24, float %1479)  ; Sqrt(value)
  %1694 = call float @dx.op.unary.f32(i32 24, float %1480)  ; Sqrt(value)
  %1695 = call float @dx.op.unary.f32(i32 24, float %1481)  ; Sqrt(value)
  %1696 = fadd fast float %1693, -5.000000e-01
  %1697 = fadd fast float %1694, -5.000000e-01
  %1698 = fadd fast float %1695, -5.000000e-01
  %1699 = fmul fast float %1696, %1645
  %1700 = fmul fast float %1697, %1645
  %1701 = fmul fast float %1698, %1645
  %1702 = fadd fast float %1699, 5.000000e-01
  %1703 = fadd fast float %1700, 5.000000e-01
  %1704 = fadd fast float %1701, 5.000000e-01
  %1705 = fmul fast float %1702, 2.000000e+00
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1706, %1632
  %1708 = fadd fast float %1707, %1705
  %1709 = fmul fast float %1708, %1632
  %1710 = fmul fast float %1703, 2.000000e+00
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1711, %1633
  %1713 = fadd fast float %1712, %1710
  %1714 = fmul fast float %1713, %1633
  %1715 = fmul fast float %1704, 2.000000e+00
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = fmul fast float %1716, %1634
  %1718 = fadd fast float %1717, %1715
  %1719 = fmul fast float %1718, %1634
  br label %1720

; <label>:1720                                    ; preds = %1692, %1690, %1677, %1647, %1631
  %1721 = phi float [ %1632, %1631 ], [ %1709, %1692 ], [ %1632, %1690 ], [ %1687, %1677 ], [ %1657, %1647 ]
  %1722 = phi float [ %1633, %1631 ], [ %1714, %1692 ], [ %1633, %1690 ], [ %1688, %1677 ], [ %1658, %1647 ]
  %1723 = phi float [ %1634, %1631 ], [ %1719, %1692 ], [ %1634, %1690 ], [ %1689, %1677 ], [ %1659, %1647 ]
  %1724 = phi float [ %1635, %1631 ], [ %1635, %1692 ], [ %1635, %1690 ], [ %1635, %1677 ], [ %1669, %1647 ]
  %1725 = phi float [ %1636, %1631 ], [ %1636, %1692 ], [ %1636, %1690 ], [ %1636, %1677 ], [ %1670, %1647 ]
  %1726 = phi float [ %1637, %1631 ], [ %1637, %1692 ], [ %1637, %1690 ], [ %1637, %1677 ], [ %1671, %1647 ]
  %1727 = phi float [ %1072, %1631 ], [ %1072, %1692 ], [ %1072, %1690 ], [ %1072, %1677 ], [ %1662, %1647 ]
  %1728 = phi float [ %1076, %1631 ], [ %1076, %1692 ], [ %1076, %1690 ], [ %1076, %1677 ], [ %1674, %1647 ]
  %1729 = and i32 %1639, 12
  %1730 = icmp eq i32 %1729, 12
  br i1 %1730, label %1803, label %1731

; <label>:1731                                    ; preds = %1720
  %1732 = and i32 %1639, 2097184
  %1733 = icmp eq i32 %1732, 2097184
  %1734 = select i1 %1733, float %1259, float 0.000000e+00
  %1735 = and i32 %1639, 4194336
  %1736 = icmp eq i32 %1735, 4194336
  %1737 = select i1 %1736, float %1259, float 0.000000e+00
  %1738 = and i32 %1639, 8388640
  %1739 = icmp eq i32 %1738, 8388640
  %1740 = select i1 %1739, float %1259, float 0.000000e+00
  %1741 = icmp eq i32 %1729, 0
  br i1 %1741, label %1742, label %1755

; <label>:1742                                    ; preds = %1731
  %1743 = fsub fast float %1560, %1064
  %1744 = fsub fast float %1561, %1065
  %1745 = fmul fast float %1734, %1743
  %1746 = fmul fast float %1734, %1744
  %1747 = fadd fast float %1745, %1064
  %1748 = fadd fast float %1746, %1065
  %1749 = fsub fast float %1562, %1075
  %1750 = fmul fast float %1737, %1749
  %1751 = fadd fast float %1750, %1075
  %1752 = fsub fast float %1559, %1074
  %1753 = fmul fast float %1740, %1752
  %1754 = fadd fast float %1753, %1074
  br label %1803

; <label>:1755                                    ; preds = %1731
  %1756 = icmp eq i32 %1729, 4
  br i1 %1756, label %1757, label %1789

; <label>:1757                                    ; preds = %1755
  %1758 = fmul fast float %1734, %1560
  %1759 = fmul fast float %1734, %1561
  %1760 = fadd fast float %1758, %1064
  %1761 = fadd fast float %1759, %1065
  %1762 = call float @dx.op.binary.f32(i32 36, float %1075, float %1562)  ; FMin(a,b)
  %1763 = fsub fast float %1762, %1075
  %1764 = fmul fast float %1763, %1737
  %1765 = fadd fast float %1764, %1075
  %1766 = fadd fast float %1559, %1074
  %1767 = fmul fast float %1766, 0x3FF337FAE0000000
  %1768 = fmul fast float %1074, %1074
  %1769 = fmul fast float %1559, %1559
  %1770 = fadd fast float %1769, %1768
  %1771 = fmul fast float %1770, 0x3FE5152B00000000
  %1772 = fmul fast float %1074, 0xBFCC1F85E0000000
  %1773 = fmul fast float %1772, %1559
  %1774 = fadd fast float %1773, 0xBFE1363700000000
  %1775 = fadd fast float %1774, %1767
  %1776 = fsub fast float %1775, %1771
  %1777 = fmul fast float %1766, 0x3FBA6F0D00000000
  %1778 = fmul fast float %1770, 0x3FD0432880000000
  %1779 = fmul fast float %1074, 0xBFEF110800000000
  %1780 = fmul fast float %1779, %1559
  %1781 = fadd fast float %1780, 1.000000e+00
  %1782 = fsub fast float %1781, %1777
  %1783 = fadd fast float %1782, %1778
  %1784 = fdiv fast float %1776, %1783
  %1785 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1786 = fsub fast float %1785, %1074
  %1787 = fmul fast float %1786, %1740
  %1788 = fadd fast float %1787, %1074
  br label %1803

; <label>:1789                                    ; preds = %1755
  %1790 = icmp eq i32 %1729, 8
  br i1 %1790, label %1791, label %1803

; <label>:1791                                    ; preds = %1789
  %1792 = fmul fast float %1734, %1560
  %1793 = fmul fast float %1734, %1561
  %1794 = fadd fast float %1792, %1064
  %1795 = fadd fast float %1793, %1065
  %1796 = call float @dx.op.binary.f32(i32 36, float %1075, float %1562)  ; FMin(a,b)
  %1797 = fsub fast float %1796, %1075
  %1798 = fmul fast float %1797, %1737
  %1799 = fadd fast float %1798, %1075
  %1800 = fsub fast float %1559, %1074
  %1801 = fmul fast float %1740, %1800
  %1802 = fadd fast float %1801, %1074
  br label %1803

; <label>:1803                                    ; preds = %1791, %1789, %1757, %1742, %1720, %1258, %1077, %1063
  %1804 = phi float [ %1064, %1720 ], [ %1064, %1258 ], [ %1064, %1063 ], [ %1794, %1791 ], [ %1064, %1789 ], [ %1760, %1757 ], [ %1747, %1742 ], [ %1064, %1077 ]
  %1805 = phi float [ %1065, %1720 ], [ %1065, %1258 ], [ %1065, %1063 ], [ %1795, %1791 ], [ %1065, %1789 ], [ %1761, %1757 ], [ %1748, %1742 ], [ %1065, %1077 ]
  %1806 = phi float [ %1721, %1720 ], [ %1066, %1258 ], [ %1066, %1063 ], [ %1721, %1791 ], [ %1721, %1789 ], [ %1721, %1757 ], [ %1721, %1742 ], [ %1066, %1077 ]
  %1807 = phi float [ %1722, %1720 ], [ %1067, %1258 ], [ %1067, %1063 ], [ %1722, %1791 ], [ %1722, %1789 ], [ %1722, %1757 ], [ %1722, %1742 ], [ %1067, %1077 ]
  %1808 = phi float [ %1723, %1720 ], [ %1068, %1258 ], [ %1068, %1063 ], [ %1723, %1791 ], [ %1723, %1789 ], [ %1723, %1757 ], [ %1723, %1742 ], [ %1068, %1077 ]
  %1809 = phi float [ %1724, %1720 ], [ %1069, %1258 ], [ %1069, %1063 ], [ %1724, %1791 ], [ %1724, %1789 ], [ %1724, %1757 ], [ %1724, %1742 ], [ %1069, %1077 ]
  %1810 = phi float [ %1725, %1720 ], [ %1070, %1258 ], [ %1070, %1063 ], [ %1725, %1791 ], [ %1725, %1789 ], [ %1725, %1757 ], [ %1725, %1742 ], [ %1070, %1077 ]
  %1811 = phi float [ %1726, %1720 ], [ %1071, %1258 ], [ %1071, %1063 ], [ %1726, %1791 ], [ %1726, %1789 ], [ %1726, %1757 ], [ %1726, %1742 ], [ %1071, %1077 ]
  %1812 = phi float [ %1727, %1720 ], [ %1072, %1258 ], [ %1072, %1063 ], [ %1727, %1791 ], [ %1727, %1789 ], [ %1727, %1757 ], [ %1727, %1742 ], [ %1072, %1077 ]
  %1813 = phi float [ %1074, %1720 ], [ %1074, %1258 ], [ %1074, %1063 ], [ %1802, %1791 ], [ %1074, %1789 ], [ %1788, %1757 ], [ %1754, %1742 ], [ %1074, %1077 ]
  %1814 = phi float [ %1075, %1720 ], [ %1075, %1258 ], [ %1075, %1063 ], [ %1799, %1791 ], [ %1075, %1789 ], [ %1765, %1757 ], [ %1751, %1742 ], [ %1075, %1077 ]
  %1815 = phi float [ %1728, %1720 ], [ %1076, %1258 ], [ %1076, %1063 ], [ %1728, %1791 ], [ %1728, %1789 ], [ %1728, %1757 ], [ %1728, %1742 ], [ %1076, %1077 ]
  br i1 %464, label %2542, label %1816

; <label>:1816                                    ; preds = %1803
  %1817 = icmp ult i32 %520, 3
  %1818 = add i32 %63, 56
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = add i32 %63, 60
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = or i32 %1823, %1820
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %2542, label %1826

; <label>:1826                                    ; preds = %1816
  %1827 = and i32 %1820, 262144
  %1828 = icmp ne i32 %1827, 0
  %1829 = select i1 %1828, float %69, float 1.000000e+00
  %1830 = select i1 %1828, float %70, float 0.000000e+00
  %1831 = select i1 %1828, float %71, float 0.000000e+00
  %1832 = select i1 %1828, float %72, float 1.000000e+00
  %1833 = select i1 %1828, float %73, float %101
  %1834 = select i1 %1828, float %74, float %102
  %1835 = add i32 %63, 316
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = lshr i32 %1837, 16
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = fmul fast float %1839, 0x3F50624DE0000000
  %1841 = add i32 %63, 120
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = lshr i32 %1843, 16
  %1845 = and i32 %1844, 255
  %1846 = lshr i32 %1843, 24
  %1847 = add i32 %63, 324
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 65535
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = lshr i32 %1849, 16
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = add i32 %63, 64
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = lshr i32 %1856, 22
  %1858 = shl nuw nsw i32 %1857, 5
  %1859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1858)  ; LegacyF16ToF32(value)
  %1860 = shl i32 %1856, 4
  %1861 = and i32 %1860, 32752
  %1862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1861)  ; LegacyF16ToF32(value)
  %1863 = lshr i32 %1856, 7
  %1864 = and i32 %1863, 32752
  %1865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1864)  ; LegacyF16ToF32(value)
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 3
  %1868 = fmul fast float %1867, 1.000000e+03
  %1869 = fmul fast float %414, %1868
  %1870 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %1871 = fadd fast float %1870, %404
  %1872 = fmul fast float %415, %1868
  %1873 = call float @dx.op.unary.f32(i32 22, float %1872)  ; Frc(value)
  %1874 = fadd fast float %1873, %406
  %1875 = fmul fast float %1840, %1868
  %1876 = call float @dx.op.unary.f32(i32 22, float %1875)  ; Frc(value)
  %1877 = fmul fast float %1876, 0x401921FB60000000
  %1878 = fadd fast float %1877, %1859
  %1879 = call float @dx.op.unary.f32(i32 13, float %1878)  ; Sin(value)
  %1880 = call float @dx.op.unary.f32(i32 12, float %1878)  ; Cos(value)
  %1881 = fsub fast float -0.000000e+00, %1879
  %1882 = fadd fast float %1833, -5.000000e-01
  %1883 = fadd fast float %1834, -5.000000e-01
  %1884 = fmul fast float %1851, %1882
  %1885 = fmul fast float %1853, %1883
  %1886 = fadd fast float %1884, 5.000000e-01
  %1887 = fadd fast float %1885, 5.000000e-01
  %1888 = fmul fast float %1862, %1886
  %1889 = fmul fast float %1865, %1887
  %1890 = fmul fast float %1880, %1888
  %1891 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1889, float %1890)  ; FMad(a,b,c)
  %1892 = fmul fast float %1879, %1888
  %1893 = call float @dx.op.tertiary.f32(i32 46, float %1880, float %1889, float %1892)  ; FMad(a,b,c)
  %1894 = fadd fast float %1871, %1891
  %1895 = fadd fast float %1874, %1893
  %1896 = icmp ugt i32 %1845, 1
  %1897 = icmp ugt i32 %1843, 33554431
  %1898 = or i1 %1897, %1896
  br i1 %1898, label %1899, label %1924

; <label>:1899                                    ; preds = %1826
  %1900 = add i32 %63, 260
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = lshr i32 %1902, 16
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = fmul fast float %1867, %1904
  %1906 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1907 = mul nuw nsw i32 %1845, %1846
  %1908 = uitofp i32 %1907 to float
  %1909 = fmul fast float %1906, %1908
  %1910 = call float @dx.op.unary.f32(i32 27, float %1909)  ; Round_ni(value)
  %1911 = fptoui float %1910 to i32
  %1912 = urem i32 %1911, %1845
  %1913 = udiv i32 %1911, %1846
  %1914 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1915 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1916 = uitofp i32 %1912 to float
  %1917 = uitofp i32 %1913 to float
  %1918 = fadd fast float %1914, %1916
  %1919 = fadd fast float %1915, %1917
  %1920 = uitofp i32 %1845 to float
  %1921 = uitofp i32 %1846 to float
  %1922 = fdiv fast float %1918, %1920
  %1923 = fdiv fast float %1919, %1921
  br label %1924

; <label>:1924                                    ; preds = %1899, %1826
  %1925 = phi float [ %1922, %1899 ], [ %1894, %1826 ]
  %1926 = phi float [ %1923, %1899 ], [ %1895, %1826 ]
  %1927 = and i32 %1820, 256
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1975, label %1929

; <label>:1929                                    ; preds = %1924
  %1930 = add i32 %63, 448
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = add i32 %1932, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1934, %dx.types.Handle %120, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = add i32 %63, 132
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = shl i32 %1939, 4
  %1941 = and i32 %1940, 32752
  %1942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1941)  ; LegacyF16ToF32(value)
  %1943 = lshr i32 %1939, 7
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fsub fast float 1.000000e+00, %516
  %1947 = call float @dx.op.binary.f32(i32 35, float %1946, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1948 = bitcast float %516 to i32
  %1949 = sitofp i32 %1948 to float
  %1950 = fadd fast float %1949, 0xC1CFBF8940000000
  %1951 = fmul fast float %1945, %1950
  %1952 = fadd fast float %1951, 0x41CFBF8940000000
  %1953 = fptosi float %1952 to i32
  %1954 = bitcast i32 %1953 to float
  %1955 = bitcast float %1947 to i32
  %1956 = sitofp i32 %1955 to float
  %1957 = fadd fast float %1956, 0xC1CFBF8940000000
  %1958 = fmul fast float %1957, %1945
  %1959 = fadd fast float %1958, 0x41CFBF8940000000
  %1960 = fptosi float %1959 to i32
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1954, %1942
  %1963 = fmul fast float %1961, %1942
  %1964 = fsub fast float %1947, %1962
  %1965 = fadd fast float %1963, %1947
  %1966 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1968 = fsub fast float %1936, %1966
  %1969 = fsub fast float %1967, %1966
  %1970 = bitcast float %1969 to i32
  %1971 = sub nsw i32 2129859010, %1970
  %1972 = bitcast i32 %1971 to float
  %1973 = fmul fast float %1972, %1968
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  br label %1975

; <label>:1975                                    ; preds = %1929, %1924
  %1976 = phi float [ %1974, %1929 ], [ %516, %1924 ]
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = and i32 %1978, 128
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %1997, label %1981

; <label>:1981                                    ; preds = %1975
  %1982 = add i32 %63, 432
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = add i32 %1984, 0
  %1986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1986, %dx.types.Handle %120, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = and i32 %1990, 524288
  %1992 = icmp ne i32 %1991, 0
  %1993 = fcmp fast ogt float %1988, 0x3FE0101020000000
  %1994 = select i1 %1993, float 1.000000e+00, float 0.000000e+00
  %1995 = select i1 %1992, float %1994, float %1988
  %1996 = fmul fast float %1995, %1976
  br label %1997

; <label>:1997                                    ; preds = %1981, %1975
  %1998 = phi float [ %1996, %1981 ], [ %1976, %1975 ]
  %1999 = fcmp fast ult float %1998, 0x3F70101020000000
  br i1 %1999, label %2542, label %2000

; <label>:2000                                    ; preds = %1997
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 16
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2203, label %2005

; <label>:2005                                    ; preds = %2000
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = add i32 %63, 384
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = add i32 %2010, 0
  %2012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2012, %dx.types.Handle %119, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.ResRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.ResRet.f32 %2013, 2
  %2017 = extractvalue %dx.types.ResRet.f32 %2013, 3
  %2018 = and i32 %2007, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = lshr i32 %2007, 8
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = fmul fast float %2017, %2019
  %2024 = fadd fast float %2023, %2022
  %2025 = fmul fast float %2024, 0x3F70101000000000
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = and i32 %2027, 512
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2038, label %2030

; <label>:2030                                    ; preds = %2005
  %2031 = add i32 %63, 468
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %2033, 0
  %2035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2035, %dx.types.Handle %120, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  br label %2038

; <label>:2038                                    ; preds = %2030, %2005
  %2039 = phi float [ %2037, %2030 ], [ 1.000000e+00, %2005 ]
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 33554432
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2150, label %2044

; <label>:2044                                    ; preds = %2038
  %2045 = add i32 %63, 256
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 65535
  %2049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2048)  ; LegacyF16ToF32(value)
  %2050 = lshr i32 %2047, 16
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = add i32 %63, 260
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = and i32 %2054, 65535
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = lshr i32 %2058, 24
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = and i32 %2058, 255
  %2063 = uitofp i32 %2062 to float
  %2064 = fmul fast float %2063, 0x3F70101020000000
  %2065 = lshr i32 %2058, 8
  %2066 = and i32 %2065, 255
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2067, 0x3F70101020000000
  %2069 = lshr i32 %2058, 16
  %2070 = and i32 %2069, 255
  %2071 = uitofp i32 %2070 to float
  %2072 = fmul fast float %2071, 0x3F70101020000000
  %2073 = add i32 %63, 252
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 24
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, 0x3F70101020000000
  %2079 = and i32 %2075, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2080, 0x3F70101020000000
  %2082 = lshr i32 %2075, 8
  %2083 = and i32 %2082, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2084, 0x3F70101020000000
  %2086 = lshr i32 %2075, 16
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3F70101020000000
  %2090 = bitcast float %2014 to i32
  %2091 = ashr i32 %2090, 1
  %2092 = sub nsw i32 1597463174, %2091
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2014, 5.000000e-01
  %2095 = fmul fast float %2093, %2093
  %2096 = fmul fast float %2095, %2094
  %2097 = fsub fast float 1.500000e+00, %2096
  %2098 = fmul fast float %2093, %2014
  %2099 = fmul fast float %2098, %2097
  %2100 = bitcast float %2015 to i32
  %2101 = ashr i32 %2100, 1
  %2102 = sub nsw i32 1597463174, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2015, 5.000000e-01
  %2105 = fmul fast float %2103, %2103
  %2106 = fmul fast float %2105, %2104
  %2107 = fsub fast float 1.500000e+00, %2106
  %2108 = fmul fast float %2103, %2015
  %2109 = fmul fast float %2108, %2107
  %2110 = bitcast float %2016 to i32
  %2111 = ashr i32 %2110, 1
  %2112 = sub nsw i32 1597463174, %2111
  %2113 = bitcast i32 %2112 to float
  %2114 = fmul fast float %2016, 5.000000e-01
  %2115 = fmul fast float %2113, %2113
  %2116 = fmul fast float %2115, %2114
  %2117 = fsub fast float 1.500000e+00, %2116
  %2118 = fmul fast float %2113, %2016
  %2119 = fmul fast float %2118, %2117
  %2120 = fsub fast float %2099, %2081
  %2121 = fsub fast float %2109, %2085
  %2122 = fsub fast float %2119, %2089
  %2123 = fmul fast float %2120, %2049
  %2124 = fmul fast float %2121, %2051
  %2125 = fmul fast float %2122, %2056
  %2126 = fadd fast float %2123, %2064
  %2127 = fadd fast float %2124, %2068
  %2128 = fadd fast float %2125, %2072
  %2129 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2130 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2131 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2132 = fmul fast float %2129, %2129
  %2133 = fmul fast float %2130, %2130
  %2134 = fmul fast float %2131, %2131
  %2135 = fsub fast float %2132, %2014
  %2136 = fsub fast float %2133, %2015
  %2137 = fsub fast float %2134, %2016
  %2138 = fmul fast float %2135, %2039
  %2139 = fmul fast float %2136, %2039
  %2140 = fmul fast float %2137, %2039
  %2141 = fadd fast float %2138, %2014
  %2142 = fadd fast float %2139, %2015
  %2143 = fadd fast float %2140, %2016
  %2144 = fadd fast float %2061, %2025
  %2145 = fsub fast float %2144, %2078
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fsub fast float %2146, %2025
  %2148 = fmul fast float %2147, %2039
  %2149 = fadd fast float %2148, %2025
  br label %2203

; <label>:2150                                    ; preds = %2038
  %2151 = and i32 %2041, 134217728
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2187, label %2153

; <label>:2153                                    ; preds = %2150
  %2154 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %2156 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %2157 = fadd fast float %2154, -5.000000e-01
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fadd fast float %2156, -5.000000e-01
  %2160 = fmul fast float %2157, %2039
  %2161 = fmul fast float %2158, %2039
  %2162 = fmul fast float %2159, %2039
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = call float @dx.op.unary.f32(i32 24, float %2014)  ; Sqrt(value)
  %2167 = call float @dx.op.unary.f32(i32 24, float %2015)  ; Sqrt(value)
  %2168 = call float @dx.op.unary.f32(i32 24, float %2016)  ; Sqrt(value)
  %2169 = fmul fast float %2163, 2.000000e+00
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2170, %2166
  %2172 = fadd fast float %2171, %2169
  %2173 = fmul fast float %2172, %2166
  %2174 = fmul fast float %2164, 2.000000e+00
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2167
  %2177 = fadd fast float %2176, %2174
  %2178 = fmul fast float %2177, %2167
  %2179 = fmul fast float %2165, 2.000000e+00
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2180, %2168
  %2182 = fadd fast float %2181, %2179
  %2183 = fmul fast float %2182, %2168
  %2184 = fmul fast float %2173, %2173
  %2185 = fmul fast float %2178, %2178
  %2186 = fmul fast float %2183, %2183
  br label %2203

; <label>:2187                                    ; preds = %2150
  %2188 = fmul fast float %391, %391
  %2189 = fmul fast float %395, %395
  %2190 = fmul fast float %399, %399
  %2191 = fadd fast float %2188, -1.000000e+00
  %2192 = fadd fast float %2189, -1.000000e+00
  %2193 = fadd fast float %2190, -1.000000e+00
  %2194 = fmul fast float %2039, %2191
  %2195 = fmul fast float %2039, %2192
  %2196 = fmul fast float %2039, %2193
  %2197 = fadd fast float %2194, 1.000000e+00
  %2198 = fadd fast float %2195, 1.000000e+00
  %2199 = fadd fast float %2196, 1.000000e+00
  %2200 = fmul fast float %2197, %2014
  %2201 = fmul fast float %2198, %2015
  %2202 = fmul fast float %2199, %2016
  br label %2203

; <label>:2203                                    ; preds = %2187, %2153, %2044, %2000
  %2204 = phi float [ %2149, %2044 ], [ %2025, %2153 ], [ %2025, %2187 ], [ 0x3FA23C0BE0000000, %2000 ]
  %2205 = phi float [ %2141, %2044 ], [ %2184, %2153 ], [ %2200, %2187 ], [ 1.000000e+00, %2000 ]
  %2206 = phi float [ %2142, %2044 ], [ %2185, %2153 ], [ %2201, %2187 ], [ 1.000000e+00, %2000 ]
  %2207 = phi float [ %2143, %2044 ], [ %2186, %2153 ], [ %2202, %2187 ], [ 1.000000e+00, %2000 ]
  %2208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.i32 %2208, 1
  %2210 = and i32 %2209, 1
  %2211 = icmp ne i32 %2210, 0
  %2212 = add i32 %63, 356
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 32
  %2216 = icmp ne i32 %2215, 0
  %2217 = and i1 %2211, %2216
  %2218 = select i1 %2217, float 1.000000e+00, float %2205
  %2219 = select i1 %2217, float 0x3FD3333340000000, float %2206
  %2220 = select i1 %2217, float 0x3FD3333340000000, float %2207
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 32
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2297, label %2225

; <label>:2225                                    ; preds = %2203
  %2226 = add i32 %63, 124
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = add i32 %63, 400
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = add i32 %2231, 0
  %2233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2233, %dx.types.Handle %119, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.ResRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.ResRet.f32 %2234, 2
  %2238 = extractvalue %dx.types.ResRet.f32 %2234, 3
  %2239 = and i32 %2228, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = lshr i32 %2228, 8
  %2242 = and i32 %2241, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = lshr i32 %2228, 16
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101000000000
  %2248 = fmul fast float %2235, %2240
  %2249 = fadd fast float %2248, %2243
  %2250 = fmul fast float %2249, 0x3F70101000000000
  %2251 = fadd fast float %2236, -5.000000e-01
  %2252 = fadd fast float %2238, -5.000000e-01
  %2253 = fmul fast float %2251, %2247
  %2254 = fmul fast float %2252, %2247
  %2255 = fadd fast float %2253, 5.000000e-01
  %2256 = fadd fast float %2254, 5.000000e-01
  %2257 = fmul fast float %2255, 2.000000e+00
  %2258 = fadd fast float %2257, -1.000000e+00
  %2259 = fmul fast float %2256, 2.000000e+00
  %2260 = fadd fast float %2259, -1.000000e+00
  %2261 = fadd fast float %2258, %2260
  %2262 = fmul fast float %2261, 5.000000e-01
  %2263 = fsub fast float %2258, %2260
  %2264 = fmul fast float %2263, 5.000000e-01
  %2265 = call float @dx.op.unary.f32(i32 6, float %2262)  ; FAbs(value)
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2268 = fsub fast float %2266, %2267
  %2269 = call float @dx.op.dot3.f32(i32 55, float %2262, float %2264, float %2268, float %2262, float %2264, float %2268)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = call float @dx.op.unary.f32(i32 25, float %2269)  ; Rsqrt(value)
  %2271 = fmul fast float %2262, %2270
  %2272 = fmul fast float %2264, %2270
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 67108864
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2293, label %2277

; <label>:2277                                    ; preds = %2225
  %2278 = add i32 %63, 312
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 65535
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 65535
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = lshr i32 %2280, 16
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = fsub fast float %2250, %2288
  %2290 = fmul fast float %2289, %2282
  %2291 = fadd fast float %2290, %2286
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  br label %2293

; <label>:2293                                    ; preds = %2277, %2225
  %2294 = phi float [ %2292, %2277 ], [ %2250, %2225 ]
  %2295 = call float @dx.op.dot2.f32(i32 54, float %2271, float %2272, float %1829, float %1830)  ; Dot2(ax,ay,bx,by)
  %2296 = call float @dx.op.dot2.f32(i32 54, float %2271, float %2272, float %1831, float %1832)  ; Dot2(ax,ay,bx,by)
  br label %2297

; <label>:2297                                    ; preds = %2293, %2203
  %2298 = phi float [ %2294, %2293 ], [ 0x3FD6666660000000, %2203 ]
  %2299 = phi float [ %2295, %2293 ], [ 0.000000e+00, %2203 ]
  %2300 = phi float [ %2296, %2293 ], [ 0.000000e+00, %2203 ]
  %2301 = phi float [ %2237, %2293 ], [ 1.000000e+00, %2203 ]
  %2302 = add i32 %63, 192
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = lshr i32 %2304, 22
  %2306 = shl nuw nsw i32 %2305, 5
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 64
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2345, label %2312

; <label>:2312                                    ; preds = %2297
  %2313 = add i32 %63, 416
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %2315, 0
  %2317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 131072
  %2321 = icmp eq i32 %2320, 0
  %2322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2317, %dx.types.Handle %119, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.ResRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.ResRet.f32 %2322, 2
  %2326 = fmul fast float %2323, %379
  %2327 = fmul fast float %2324, %382
  %2328 = fmul fast float %2325, %385
  br i1 %2321, label %2335, label %2329

; <label>:2329                                    ; preds = %2312
  %2330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.f32 %2330, 0
  %2332 = fmul fast float %2331, %2326
  %2333 = fmul fast float %2331, %2327
  %2334 = fmul fast float %2331, %2328
  br label %2335

; <label>:2335                                    ; preds = %2329, %2312
  %2336 = phi float [ %2332, %2329 ], [ %2326, %2312 ]
  %2337 = phi float [ %2333, %2329 ], [ %2327, %2312 ]
  %2338 = phi float [ %2334, %2329 ], [ %2328, %2312 ]
  %2339 = fmul fast float %2336, %2307
  %2340 = select i1 %278, float %2339, float %2336
  %2341 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2337, float %2338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2342 = select i1 %278, float 0.000000e+00, float %2336
  %2343 = select i1 %278, float %2341, float %2337
  %2344 = select i1 %278, float 0.000000e+00, float %2338
  br label %2345

; <label>:2345                                    ; preds = %2335, %2297
  %2346 = phi float [ %2342, %2335 ], [ 0.000000e+00, %2297 ]
  %2347 = phi float [ %2343, %2335 ], [ 0.000000e+00, %2297 ]
  %2348 = phi float [ %2344, %2335 ], [ 0.000000e+00, %2297 ]
  %2349 = add i32 %63, 128
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = and i32 %2351, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = lshr i32 %2351, 8
  %2355 = and i32 %2354, 255
  %2356 = uitofp i32 %2355 to float
  %2357 = call float @dx.op.dot3.f32(i32 55, float %2218, float %2219, float %2220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2358 = fmul fast float %2356, %2357
  %2359 = fadd fast float %2358, %2353
  %2360 = fmul fast float %2359, 0x3F70101020000000
  %2361 = call float @dx.op.unary.f32(i32 7, float %2360)  ; Saturate(value)
  br i1 %1817, label %2362, label %2370

; <label>:2362                                    ; preds = %2345
  %2363 = fsub fast float 1.000000e+00, %1998
  %2364 = fmul fast float %2363, %1806
  %2365 = fmul fast float %2363, %1807
  %2366 = fmul fast float %2363, %1808
  %2367 = fmul fast float %2363, %1809
  %2368 = fmul fast float %2363, %1810
  %2369 = fmul fast float %2363, %1811
  br label %2370

; <label>:2370                                    ; preds = %2362, %2345
  %2371 = phi float [ %2364, %2362 ], [ %1806, %2345 ]
  %2372 = phi float [ %2365, %2362 ], [ %1807, %2345 ]
  %2373 = phi float [ %2366, %2362 ], [ %1808, %2345 ]
  %2374 = phi float [ %2367, %2362 ], [ %1809, %2345 ]
  %2375 = phi float [ %2368, %2362 ], [ %1810, %2345 ]
  %2376 = phi float [ %2369, %2362 ], [ %1811, %2345 ]
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 3
  %2380 = icmp eq i32 %2379, 3
  br i1 %2380, label %2459, label %2381

; <label>:2381                                    ; preds = %2370
  %2382 = and i32 %2378, 16
  %2383 = icmp ne i32 %2382, 0
  %2384 = select i1 %2383, float %1998, float 0.000000e+00
  %2385 = icmp eq i32 %2379, 0
  br i1 %2385, label %2386, label %2414

; <label>:2386                                    ; preds = %2381
  %2387 = and i32 %2378, 64
  %2388 = icmp ne i32 %2387, 0
  %2389 = select i1 %2388, float %1998, float 0.000000e+00
  %2390 = fsub fast float %2218, %2371
  %2391 = fsub fast float %2219, %2372
  %2392 = fsub fast float %2220, %2373
  %2393 = fmul fast float %2384, %2390
  %2394 = fmul fast float %2384, %2391
  %2395 = fmul fast float %2384, %2392
  %2396 = fadd fast float %2393, %2371
  %2397 = fadd fast float %2394, %2372
  %2398 = fadd fast float %2395, %2373
  %2399 = fsub fast float %2204, %1812
  %2400 = fmul fast float %2384, %2399
  %2401 = fadd fast float %2400, %1812
  %2402 = fsub fast float %2346, %2374
  %2403 = fsub fast float %2347, %2375
  %2404 = fsub fast float %2348, %2376
  %2405 = fmul fast float %2389, %2402
  %2406 = fmul fast float %2389, %2403
  %2407 = fmul fast float %2389, %2404
  %2408 = fadd fast float %2405, %2374
  %2409 = fadd fast float %2406, %2375
  %2410 = fadd fast float %2407, %2376
  %2411 = fsub fast float %2361, %1815
  %2412 = fmul fast float %2384, %2411
  %2413 = fadd fast float %2412, %1815
  br label %2459

; <label>:2414                                    ; preds = %2381
  %2415 = icmp eq i32 %2379, 1
  br i1 %2415, label %2416, label %2429

; <label>:2416                                    ; preds = %2414
  %2417 = fadd fast float %2218, -1.000000e+00
  %2418 = fadd fast float %2219, -1.000000e+00
  %2419 = fadd fast float %2220, -1.000000e+00
  %2420 = fmul fast float %2384, %2417
  %2421 = fmul fast float %2384, %2418
  %2422 = fmul fast float %2384, %2419
  %2423 = fadd fast float %2420, 1.000000e+00
  %2424 = fadd fast float %2421, 1.000000e+00
  %2425 = fadd fast float %2422, 1.000000e+00
  %2426 = fmul fast float %2423, %2371
  %2427 = fmul fast float %2424, %2372
  %2428 = fmul fast float %2425, %2373
  br label %2459

; <label>:2429                                    ; preds = %2414
  %2430 = icmp eq i32 %2379, 2
  br i1 %2430, label %2431, label %2459

; <label>:2431                                    ; preds = %2429
  %2432 = call float @dx.op.unary.f32(i32 24, float %2218)  ; Sqrt(value)
  %2433 = call float @dx.op.unary.f32(i32 24, float %2219)  ; Sqrt(value)
  %2434 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2435 = fadd fast float %2432, -5.000000e-01
  %2436 = fadd fast float %2433, -5.000000e-01
  %2437 = fadd fast float %2434, -5.000000e-01
  %2438 = fmul fast float %2435, %2384
  %2439 = fmul fast float %2436, %2384
  %2440 = fmul fast float %2437, %2384
  %2441 = fadd fast float %2438, 5.000000e-01
  %2442 = fadd fast float %2439, 5.000000e-01
  %2443 = fadd fast float %2440, 5.000000e-01
  %2444 = fmul fast float %2441, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2371
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2371
  %2449 = fmul fast float %2442, 2.000000e+00
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2450, %2372
  %2452 = fadd fast float %2451, %2449
  %2453 = fmul fast float %2452, %2372
  %2454 = fmul fast float %2443, 2.000000e+00
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = fmul fast float %2455, %2373
  %2457 = fadd fast float %2456, %2454
  %2458 = fmul fast float %2457, %2373
  br label %2459

; <label>:2459                                    ; preds = %2431, %2429, %2416, %2386, %2370
  %2460 = phi float [ %2371, %2370 ], [ %2448, %2431 ], [ %2371, %2429 ], [ %2426, %2416 ], [ %2396, %2386 ]
  %2461 = phi float [ %2372, %2370 ], [ %2453, %2431 ], [ %2372, %2429 ], [ %2427, %2416 ], [ %2397, %2386 ]
  %2462 = phi float [ %2373, %2370 ], [ %2458, %2431 ], [ %2373, %2429 ], [ %2428, %2416 ], [ %2398, %2386 ]
  %2463 = phi float [ %2374, %2370 ], [ %2374, %2431 ], [ %2374, %2429 ], [ %2374, %2416 ], [ %2408, %2386 ]
  %2464 = phi float [ %2375, %2370 ], [ %2375, %2431 ], [ %2375, %2429 ], [ %2375, %2416 ], [ %2409, %2386 ]
  %2465 = phi float [ %2376, %2370 ], [ %2376, %2431 ], [ %2376, %2429 ], [ %2376, %2416 ], [ %2410, %2386 ]
  %2466 = phi float [ %1812, %2370 ], [ %1812, %2431 ], [ %1812, %2429 ], [ %1812, %2416 ], [ %2401, %2386 ]
  %2467 = phi float [ %1815, %2370 ], [ %1815, %2431 ], [ %1815, %2429 ], [ %1815, %2416 ], [ %2413, %2386 ]
  %2468 = and i32 %2378, 12
  %2469 = icmp eq i32 %2468, 12
  br i1 %2469, label %2542, label %2470

; <label>:2470                                    ; preds = %2459
  %2471 = and i32 %2378, 2097184
  %2472 = icmp eq i32 %2471, 2097184
  %2473 = select i1 %2472, float %1998, float 0.000000e+00
  %2474 = and i32 %2378, 4194336
  %2475 = icmp eq i32 %2474, 4194336
  %2476 = select i1 %2475, float %1998, float 0.000000e+00
  %2477 = and i32 %2378, 8388640
  %2478 = icmp eq i32 %2477, 8388640
  %2479 = select i1 %2478, float %1998, float 0.000000e+00
  %2480 = icmp eq i32 %2468, 0
  br i1 %2480, label %2481, label %2494

; <label>:2481                                    ; preds = %2470
  %2482 = fsub fast float %2299, %1804
  %2483 = fsub fast float %2300, %1805
  %2484 = fmul fast float %2473, %2482
  %2485 = fmul fast float %2473, %2483
  %2486 = fadd fast float %2484, %1804
  %2487 = fadd fast float %2485, %1805
  %2488 = fsub fast float %2301, %1814
  %2489 = fmul fast float %2476, %2488
  %2490 = fadd fast float %2489, %1814
  %2491 = fsub fast float %2298, %1813
  %2492 = fmul fast float %2479, %2491
  %2493 = fadd fast float %2492, %1813
  br label %2542

; <label>:2494                                    ; preds = %2470
  %2495 = icmp eq i32 %2468, 4
  br i1 %2495, label %2496, label %2528

; <label>:2496                                    ; preds = %2494
  %2497 = fmul fast float %2473, %2299
  %2498 = fmul fast float %2473, %2300
  %2499 = fadd fast float %2497, %1804
  %2500 = fadd fast float %2498, %1805
  %2501 = call float @dx.op.binary.f32(i32 36, float %1814, float %2301)  ; FMin(a,b)
  %2502 = fsub fast float %2501, %1814
  %2503 = fmul fast float %2502, %2476
  %2504 = fadd fast float %2503, %1814
  %2505 = fadd fast float %2298, %1813
  %2506 = fmul fast float %2505, 0x3FF337FAE0000000
  %2507 = fmul fast float %1813, %1813
  %2508 = fmul fast float %2298, %2298
  %2509 = fadd fast float %2508, %2507
  %2510 = fmul fast float %2509, 0x3FE5152B00000000
  %2511 = fmul fast float %1813, 0xBFCC1F85E0000000
  %2512 = fmul fast float %2511, %2298
  %2513 = fadd fast float %2512, 0xBFE1363700000000
  %2514 = fadd fast float %2513, %2506
  %2515 = fsub fast float %2514, %2510
  %2516 = fmul fast float %2505, 0x3FBA6F0D00000000
  %2517 = fmul fast float %2509, 0x3FD0432880000000
  %2518 = fmul fast float %1813, 0xBFEF110800000000
  %2519 = fmul fast float %2518, %2298
  %2520 = fadd fast float %2519, 1.000000e+00
  %2521 = fsub fast float %2520, %2516
  %2522 = fadd fast float %2521, %2517
  %2523 = fdiv fast float %2515, %2522
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2525 = fsub fast float %2524, %1813
  %2526 = fmul fast float %2525, %2479
  %2527 = fadd fast float %2526, %1813
  br label %2542

; <label>:2528                                    ; preds = %2494
  %2529 = icmp eq i32 %2468, 8
  br i1 %2529, label %2530, label %2542

; <label>:2530                                    ; preds = %2528
  %2531 = fmul fast float %2473, %2299
  %2532 = fmul fast float %2473, %2300
  %2533 = fadd fast float %2531, %1804
  %2534 = fadd fast float %2532, %1805
  %2535 = call float @dx.op.binary.f32(i32 36, float %1814, float %2301)  ; FMin(a,b)
  %2536 = fsub fast float %2535, %1814
  %2537 = fmul fast float %2536, %2476
  %2538 = fadd fast float %2537, %1814
  %2539 = fsub fast float %2298, %1813
  %2540 = fmul fast float %2479, %2539
  %2541 = fadd fast float %2540, %1813
  br label %2542

; <label>:2542                                    ; preds = %2530, %2528, %2496, %2481, %2459, %1997, %1816, %1803
  %2543 = phi float [ %1804, %2459 ], [ %1804, %1997 ], [ %1804, %1803 ], [ %2533, %2530 ], [ %1804, %2528 ], [ %2499, %2496 ], [ %2486, %2481 ], [ %1804, %1816 ]
  %2544 = phi float [ %1805, %2459 ], [ %1805, %1997 ], [ %1805, %1803 ], [ %2534, %2530 ], [ %1805, %2528 ], [ %2500, %2496 ], [ %2487, %2481 ], [ %1805, %1816 ]
  %2545 = phi float [ %2460, %2459 ], [ %1806, %1997 ], [ %1806, %1803 ], [ %2460, %2530 ], [ %2460, %2528 ], [ %2460, %2496 ], [ %2460, %2481 ], [ %1806, %1816 ]
  %2546 = phi float [ %2461, %2459 ], [ %1807, %1997 ], [ %1807, %1803 ], [ %2461, %2530 ], [ %2461, %2528 ], [ %2461, %2496 ], [ %2461, %2481 ], [ %1807, %1816 ]
  %2547 = phi float [ %2462, %2459 ], [ %1808, %1997 ], [ %1808, %1803 ], [ %2462, %2530 ], [ %2462, %2528 ], [ %2462, %2496 ], [ %2462, %2481 ], [ %1808, %1816 ]
  %2548 = phi float [ %2463, %2459 ], [ %1809, %1997 ], [ %1809, %1803 ], [ %2463, %2530 ], [ %2463, %2528 ], [ %2463, %2496 ], [ %2463, %2481 ], [ %1809, %1816 ]
  %2549 = phi float [ %2464, %2459 ], [ %1810, %1997 ], [ %1810, %1803 ], [ %2464, %2530 ], [ %2464, %2528 ], [ %2464, %2496 ], [ %2464, %2481 ], [ %1810, %1816 ]
  %2550 = phi float [ %2465, %2459 ], [ %1811, %1997 ], [ %1811, %1803 ], [ %2465, %2530 ], [ %2465, %2528 ], [ %2465, %2496 ], [ %2465, %2481 ], [ %1811, %1816 ]
  %2551 = phi float [ %2466, %2459 ], [ %1812, %1997 ], [ %1812, %1803 ], [ %2466, %2530 ], [ %2466, %2528 ], [ %2466, %2496 ], [ %2466, %2481 ], [ %1812, %1816 ]
  %2552 = phi float [ %1813, %2459 ], [ %1813, %1997 ], [ %1813, %1803 ], [ %2541, %2530 ], [ %1813, %2528 ], [ %2527, %2496 ], [ %2493, %2481 ], [ %1813, %1816 ]
  %2553 = phi float [ %1814, %2459 ], [ %1814, %1997 ], [ %1814, %1803 ], [ %2538, %2530 ], [ %1814, %2528 ], [ %2504, %2496 ], [ %2490, %2481 ], [ %1814, %1816 ]
  %2554 = phi float [ %2467, %2459 ], [ %1815, %1997 ], [ %1815, %1803 ], [ %2467, %2530 ], [ %2467, %2528 ], [ %2467, %2496 ], [ %2467, %2481 ], [ %1815, %1816 ]
  br i1 %466, label %3281, label %2555

; <label>:2555                                    ; preds = %2542
  %2556 = icmp ult i32 %520, 4
  %2557 = add i32 %63, 72
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = add i32 %63, 76
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = or i32 %2562, %2559
  %2564 = icmp eq i32 %2563, 0
  br i1 %2564, label %3281, label %2565

; <label>:2565                                    ; preds = %2555
  %2566 = and i32 %2559, 262144
  %2567 = icmp ne i32 %2566, 0
  %2568 = select i1 %2567, float %69, float 1.000000e+00
  %2569 = select i1 %2567, float %70, float 0.000000e+00
  %2570 = select i1 %2567, float %71, float 0.000000e+00
  %2571 = select i1 %2567, float %72, float 1.000000e+00
  %2572 = select i1 %2567, float %73, float %101
  %2573 = select i1 %2567, float %74, float %102
  %2574 = add i32 %63, 332
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = lshr i32 %2576, 16
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = fmul fast float %2578, 0x3F50624DE0000000
  %2580 = add i32 %63, 136
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = lshr i32 %2582, 16
  %2584 = and i32 %2583, 255
  %2585 = lshr i32 %2582, 24
  %2586 = add i32 %63, 340
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = and i32 %2588, 65535
  %2590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2589)  ; LegacyF16ToF32(value)
  %2591 = lshr i32 %2588, 16
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = add i32 %63, 80
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 22
  %2597 = shl nuw nsw i32 %2596, 5
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = shl i32 %2595, 4
  %2600 = and i32 %2599, 32752
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = lshr i32 %2595, 7
  %2603 = and i32 %2602, 32752
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 3
  %2607 = fmul fast float %2606, 1.000000e+03
  %2608 = fmul fast float %456, %2607
  %2609 = call float @dx.op.unary.f32(i32 22, float %2608)  ; Frc(value)
  %2610 = fadd fast float %2609, %446
  %2611 = fmul fast float %457, %2607
  %2612 = call float @dx.op.unary.f32(i32 22, float %2611)  ; Frc(value)
  %2613 = fadd fast float %2612, %448
  %2614 = fmul fast float %2579, %2607
  %2615 = call float @dx.op.unary.f32(i32 22, float %2614)  ; Frc(value)
  %2616 = fmul fast float %2615, 0x401921FB60000000
  %2617 = fadd fast float %2616, %2598
  %2618 = call float @dx.op.unary.f32(i32 13, float %2617)  ; Sin(value)
  %2619 = call float @dx.op.unary.f32(i32 12, float %2617)  ; Cos(value)
  %2620 = fsub fast float -0.000000e+00, %2618
  %2621 = fadd fast float %2572, -5.000000e-01
  %2622 = fadd fast float %2573, -5.000000e-01
  %2623 = fmul fast float %2590, %2621
  %2624 = fmul fast float %2592, %2622
  %2625 = fadd fast float %2623, 5.000000e-01
  %2626 = fadd fast float %2624, 5.000000e-01
  %2627 = fmul fast float %2601, %2625
  %2628 = fmul fast float %2604, %2626
  %2629 = fmul fast float %2619, %2627
  %2630 = call float @dx.op.tertiary.f32(i32 46, float %2620, float %2628, float %2629)  ; FMad(a,b,c)
  %2631 = fmul fast float %2618, %2627
  %2632 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2628, float %2631)  ; FMad(a,b,c)
  %2633 = fadd fast float %2610, %2630
  %2634 = fadd fast float %2613, %2632
  %2635 = icmp ugt i32 %2584, 1
  %2636 = icmp ugt i32 %2582, 33554431
  %2637 = or i1 %2636, %2635
  br i1 %2637, label %2638, label %2663

; <label>:2638                                    ; preds = %2565
  %2639 = add i32 %63, 276
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 16
  %2643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2642)  ; LegacyF16ToF32(value)
  %2644 = fmul fast float %2606, %2643
  %2645 = call float @dx.op.unary.f32(i32 22, float %2644)  ; Frc(value)
  %2646 = mul nuw nsw i32 %2584, %2585
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2645, %2647
  %2649 = call float @dx.op.unary.f32(i32 27, float %2648)  ; Round_ni(value)
  %2650 = fptoui float %2649 to i32
  %2651 = urem i32 %2650, %2584
  %2652 = udiv i32 %2650, %2585
  %2653 = call float @dx.op.unary.f32(i32 22, float %2633)  ; Frc(value)
  %2654 = call float @dx.op.unary.f32(i32 22, float %2634)  ; Frc(value)
  %2655 = uitofp i32 %2651 to float
  %2656 = uitofp i32 %2652 to float
  %2657 = fadd fast float %2653, %2655
  %2658 = fadd fast float %2654, %2656
  %2659 = uitofp i32 %2584 to float
  %2660 = uitofp i32 %2585 to float
  %2661 = fdiv fast float %2657, %2659
  %2662 = fdiv fast float %2658, %2660
  br label %2663

; <label>:2663                                    ; preds = %2638, %2565
  %2664 = phi float [ %2661, %2638 ], [ %2633, %2565 ]
  %2665 = phi float [ %2662, %2638 ], [ %2634, %2565 ]
  %2666 = and i32 %2559, 256
  %2667 = icmp eq i32 %2666, 0
  br i1 %2667, label %2714, label %2668

; <label>:2668                                    ; preds = %2663
  %2669 = add i32 %63, 452
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = add i32 %2671, 0
  %2673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2673, %dx.types.Handle %120, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2676 = add i32 %63, 148
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = shl i32 %2678, 4
  %2680 = and i32 %2679, 32752
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = lshr i32 %2678, 7
  %2683 = and i32 %2682, 32752
  %2684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2683)  ; LegacyF16ToF32(value)
  %2685 = fsub fast float 1.000000e+00, %515
  %2686 = call float @dx.op.binary.f32(i32 35, float %2685, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2687 = bitcast float %515 to i32
  %2688 = sitofp i32 %2687 to float
  %2689 = fadd fast float %2688, 0xC1CFBF8940000000
  %2690 = fmul fast float %2684, %2689
  %2691 = fadd fast float %2690, 0x41CFBF8940000000
  %2692 = fptosi float %2691 to i32
  %2693 = bitcast i32 %2692 to float
  %2694 = bitcast float %2686 to i32
  %2695 = sitofp i32 %2694 to float
  %2696 = fadd fast float %2695, 0xC1CFBF8940000000
  %2697 = fmul fast float %2696, %2684
  %2698 = fadd fast float %2697, 0x41CFBF8940000000
  %2699 = fptosi float %2698 to i32
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2693, %2681
  %2702 = fmul fast float %2700, %2681
  %2703 = fsub fast float %2686, %2701
  %2704 = fadd fast float %2702, %2686
  %2705 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2706 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2707 = fsub fast float %2675, %2705
  %2708 = fsub fast float %2706, %2705
  %2709 = bitcast float %2708 to i32
  %2710 = sub nsw i32 2129859010, %2709
  %2711 = bitcast i32 %2710 to float
  %2712 = fmul fast float %2711, %2707
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  br label %2714

; <label>:2714                                    ; preds = %2668, %2663
  %2715 = phi float [ %2713, %2668 ], [ %515, %2663 ]
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = and i32 %2717, 128
  %2719 = icmp eq i32 %2718, 0
  br i1 %2719, label %2736, label %2720

; <label>:2720                                    ; preds = %2714
  %2721 = add i32 %63, 436
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = add i32 %2723, 0
  %2725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2725, %dx.types.Handle %120, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = and i32 %2729, 524288
  %2731 = icmp ne i32 %2730, 0
  %2732 = fcmp fast ogt float %2727, 0x3FE0101020000000
  %2733 = select i1 %2732, float 1.000000e+00, float 0.000000e+00
  %2734 = select i1 %2731, float %2733, float %2727
  %2735 = fmul fast float %2734, %2715
  br label %2736

; <label>:2736                                    ; preds = %2720, %2714
  %2737 = phi float [ %2735, %2720 ], [ %2715, %2714 ]
  %2738 = fcmp fast ult float %2737, 0x3F70101020000000
  br i1 %2738, label %3281, label %2739

; <label>:2739                                    ; preds = %2736
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 16
  %2743 = icmp eq i32 %2742, 0
  br i1 %2743, label %2942, label %2744

; <label>:2744                                    ; preds = %2739
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = add i32 %63, 388
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = add i32 %2749, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2751, %dx.types.Handle %119, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = extractvalue %dx.types.ResRet.f32 %2752, 3
  %2757 = and i32 %2746, 255
  %2758 = uitofp i32 %2757 to float
  %2759 = lshr i32 %2746, 8
  %2760 = and i32 %2759, 255
  %2761 = uitofp i32 %2760 to float
  %2762 = fmul fast float %2756, %2758
  %2763 = fadd fast float %2762, %2761
  %2764 = fmul fast float %2763, 0x3F70101000000000
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 512
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2777, label %2769

; <label>:2769                                    ; preds = %2744
  %2770 = add i32 %63, 472
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = add i32 %2772, 0
  %2774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2774, %dx.types.Handle %120, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2776 = extractvalue %dx.types.ResRet.f32 %2775, 0
  br label %2777

; <label>:2777                                    ; preds = %2769, %2744
  %2778 = phi float [ %2776, %2769 ], [ 1.000000e+00, %2744 ]
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 33554432
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %2889, label %2783

; <label>:2783                                    ; preds = %2777
  %2784 = add i32 %63, 272
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = and i32 %2786, 65535
  %2788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2787)  ; LegacyF16ToF32(value)
  %2789 = lshr i32 %2786, 16
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = add i32 %63, 276
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = and i32 %2793, 65535
  %2795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2794)  ; LegacyF16ToF32(value)
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = lshr i32 %2797, 24
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = and i32 %2797, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = fmul fast float %2802, 0x3F70101020000000
  %2804 = lshr i32 %2797, 8
  %2805 = and i32 %2804, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = fmul fast float %2806, 0x3F70101020000000
  %2808 = lshr i32 %2797, 16
  %2809 = and i32 %2808, 255
  %2810 = uitofp i32 %2809 to float
  %2811 = fmul fast float %2810, 0x3F70101020000000
  %2812 = add i32 %63, 268
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = lshr i32 %2814, 24
  %2816 = uitofp i32 %2815 to float
  %2817 = fmul fast float %2816, 0x3F70101020000000
  %2818 = and i32 %2814, 255
  %2819 = uitofp i32 %2818 to float
  %2820 = fmul fast float %2819, 0x3F70101020000000
  %2821 = lshr i32 %2814, 8
  %2822 = and i32 %2821, 255
  %2823 = uitofp i32 %2822 to float
  %2824 = fmul fast float %2823, 0x3F70101020000000
  %2825 = lshr i32 %2814, 16
  %2826 = and i32 %2825, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = fmul fast float %2827, 0x3F70101020000000
  %2829 = bitcast float %2753 to i32
  %2830 = ashr i32 %2829, 1
  %2831 = sub nsw i32 1597463174, %2830
  %2832 = bitcast i32 %2831 to float
  %2833 = fmul fast float %2753, 5.000000e-01
  %2834 = fmul fast float %2832, %2832
  %2835 = fmul fast float %2834, %2833
  %2836 = fsub fast float 1.500000e+00, %2835
  %2837 = fmul fast float %2832, %2753
  %2838 = fmul fast float %2837, %2836
  %2839 = bitcast float %2754 to i32
  %2840 = ashr i32 %2839, 1
  %2841 = sub nsw i32 1597463174, %2840
  %2842 = bitcast i32 %2841 to float
  %2843 = fmul fast float %2754, 5.000000e-01
  %2844 = fmul fast float %2842, %2842
  %2845 = fmul fast float %2844, %2843
  %2846 = fsub fast float 1.500000e+00, %2845
  %2847 = fmul fast float %2842, %2754
  %2848 = fmul fast float %2847, %2846
  %2849 = bitcast float %2755 to i32
  %2850 = ashr i32 %2849, 1
  %2851 = sub nsw i32 1597463174, %2850
  %2852 = bitcast i32 %2851 to float
  %2853 = fmul fast float %2755, 5.000000e-01
  %2854 = fmul fast float %2852, %2852
  %2855 = fmul fast float %2854, %2853
  %2856 = fsub fast float 1.500000e+00, %2855
  %2857 = fmul fast float %2852, %2755
  %2858 = fmul fast float %2857, %2856
  %2859 = fsub fast float %2838, %2820
  %2860 = fsub fast float %2848, %2824
  %2861 = fsub fast float %2858, %2828
  %2862 = fmul fast float %2859, %2788
  %2863 = fmul fast float %2860, %2790
  %2864 = fmul fast float %2861, %2795
  %2865 = fadd fast float %2862, %2803
  %2866 = fadd fast float %2863, %2807
  %2867 = fadd fast float %2864, %2811
  %2868 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2869 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2870 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2871 = fmul fast float %2868, %2868
  %2872 = fmul fast float %2869, %2869
  %2873 = fmul fast float %2870, %2870
  %2874 = fsub fast float %2871, %2753
  %2875 = fsub fast float %2872, %2754
  %2876 = fsub fast float %2873, %2755
  %2877 = fmul fast float %2874, %2778
  %2878 = fmul fast float %2875, %2778
  %2879 = fmul fast float %2876, %2778
  %2880 = fadd fast float %2877, %2753
  %2881 = fadd fast float %2878, %2754
  %2882 = fadd fast float %2879, %2755
  %2883 = fadd fast float %2800, %2764
  %2884 = fsub fast float %2883, %2817
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2886 = fsub fast float %2885, %2764
  %2887 = fmul fast float %2886, %2778
  %2888 = fadd fast float %2887, %2764
  br label %2942

; <label>:2889                                    ; preds = %2777
  %2890 = and i32 %2780, 134217728
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2926, label %2892

; <label>:2892                                    ; preds = %2889
  %2893 = call float @dx.op.unary.f32(i32 24, float %433)  ; Sqrt(value)
  %2894 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %2895 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %2896 = fadd fast float %2893, -5.000000e-01
  %2897 = fadd fast float %2894, -5.000000e-01
  %2898 = fadd fast float %2895, -5.000000e-01
  %2899 = fmul fast float %2896, %2778
  %2900 = fmul fast float %2897, %2778
  %2901 = fmul fast float %2898, %2778
  %2902 = fadd fast float %2899, 5.000000e-01
  %2903 = fadd fast float %2900, 5.000000e-01
  %2904 = fadd fast float %2901, 5.000000e-01
  %2905 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %2906 = call float @dx.op.unary.f32(i32 24, float %2754)  ; Sqrt(value)
  %2907 = call float @dx.op.unary.f32(i32 24, float %2755)  ; Sqrt(value)
  %2908 = fmul fast float %2902, 2.000000e+00
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2909, %2905
  %2911 = fadd fast float %2910, %2908
  %2912 = fmul fast float %2911, %2905
  %2913 = fmul fast float %2903, 2.000000e+00
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fmul fast float %2914, %2906
  %2916 = fadd fast float %2915, %2913
  %2917 = fmul fast float %2916, %2906
  %2918 = fmul fast float %2904, 2.000000e+00
  %2919 = fsub fast float 1.000000e+00, %2918
  %2920 = fmul fast float %2919, %2907
  %2921 = fadd fast float %2920, %2918
  %2922 = fmul fast float %2921, %2907
  %2923 = fmul fast float %2912, %2912
  %2924 = fmul fast float %2917, %2917
  %2925 = fmul fast float %2922, %2922
  br label %2942

; <label>:2926                                    ; preds = %2889
  %2927 = fmul fast float %433, %433
  %2928 = fmul fast float %437, %437
  %2929 = fmul fast float %441, %441
  %2930 = fadd fast float %2927, -1.000000e+00
  %2931 = fadd fast float %2928, -1.000000e+00
  %2932 = fadd fast float %2929, -1.000000e+00
  %2933 = fmul fast float %2778, %2930
  %2934 = fmul fast float %2778, %2931
  %2935 = fmul fast float %2778, %2932
  %2936 = fadd fast float %2933, 1.000000e+00
  %2937 = fadd fast float %2934, 1.000000e+00
  %2938 = fadd fast float %2935, 1.000000e+00
  %2939 = fmul fast float %2936, %2753
  %2940 = fmul fast float %2937, %2754
  %2941 = fmul fast float %2938, %2755
  br label %2942

; <label>:2942                                    ; preds = %2926, %2892, %2783, %2739
  %2943 = phi float [ %2888, %2783 ], [ %2764, %2892 ], [ %2764, %2926 ], [ 0x3FA23C0BE0000000, %2739 ]
  %2944 = phi float [ %2880, %2783 ], [ %2923, %2892 ], [ %2939, %2926 ], [ 1.000000e+00, %2739 ]
  %2945 = phi float [ %2881, %2783 ], [ %2924, %2892 ], [ %2940, %2926 ], [ 1.000000e+00, %2739 ]
  %2946 = phi float [ %2882, %2783 ], [ %2925, %2892 ], [ %2941, %2926 ], [ 1.000000e+00, %2739 ]
  %2947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.i32 %2947, 1
  %2949 = and i32 %2948, 1
  %2950 = icmp ne i32 %2949, 0
  %2951 = add i32 %63, 356
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 32
  %2955 = icmp ne i32 %2954, 0
  %2956 = and i1 %2950, %2955
  %2957 = select i1 %2956, float 1.000000e+00, float %2944
  %2958 = select i1 %2956, float 0x3FD3333340000000, float %2945
  %2959 = select i1 %2956, float 0x3FD3333340000000, float %2946
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 32
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %3036, label %2964

; <label>:2964                                    ; preds = %2942
  %2965 = add i32 %63, 140
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %63, 404
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = add i32 %2970, 0
  %2972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2972, %dx.types.Handle %119, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = extractvalue %dx.types.ResRet.f32 %2973, 3
  %2978 = and i32 %2967, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = lshr i32 %2967, 8
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = lshr i32 %2967, 16
  %2984 = and i32 %2983, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = fmul fast float %2985, 0x3F70101000000000
  %2987 = fmul fast float %2974, %2979
  %2988 = fadd fast float %2987, %2982
  %2989 = fmul fast float %2988, 0x3F70101000000000
  %2990 = fadd fast float %2975, -5.000000e-01
  %2991 = fadd fast float %2977, -5.000000e-01
  %2992 = fmul fast float %2990, %2986
  %2993 = fmul fast float %2991, %2986
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fadd fast float %2993, 5.000000e-01
  %2996 = fmul fast float %2994, 2.000000e+00
  %2997 = fadd fast float %2996, -1.000000e+00
  %2998 = fmul fast float %2995, 2.000000e+00
  %2999 = fadd fast float %2998, -1.000000e+00
  %3000 = fadd fast float %2997, %2999
  %3001 = fmul fast float %3000, 5.000000e-01
  %3002 = fsub fast float %2997, %2999
  %3003 = fmul fast float %3002, 5.000000e-01
  %3004 = call float @dx.op.unary.f32(i32 6, float %3001)  ; FAbs(value)
  %3005 = fsub fast float 1.000000e+00, %3004
  %3006 = call float @dx.op.unary.f32(i32 6, float %3003)  ; FAbs(value)
  %3007 = fsub fast float %3005, %3006
  %3008 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3003, float %3007, float %3001, float %3003, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %3009 = call float @dx.op.unary.f32(i32 25, float %3008)  ; Rsqrt(value)
  %3010 = fmul fast float %3001, %3009
  %3011 = fmul fast float %3003, %3009
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 67108864
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3032, label %3016

; <label>:3016                                    ; preds = %2964
  %3017 = add i32 %63, 328
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 65535
  %3021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3020)  ; LegacyF16ToF32(value)
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 65535
  %3025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3024)  ; LegacyF16ToF32(value)
  %3026 = lshr i32 %3019, 16
  %3027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3026)  ; LegacyF16ToF32(value)
  %3028 = fsub fast float %2989, %3027
  %3029 = fmul fast float %3028, %3021
  %3030 = fadd fast float %3029, %3025
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  br label %3032

; <label>:3032                                    ; preds = %3016, %2964
  %3033 = phi float [ %3031, %3016 ], [ %2989, %2964 ]
  %3034 = call float @dx.op.dot2.f32(i32 54, float %3010, float %3011, float %2568, float %2569)  ; Dot2(ax,ay,bx,by)
  %3035 = call float @dx.op.dot2.f32(i32 54, float %3010, float %3011, float %2570, float %2571)  ; Dot2(ax,ay,bx,by)
  br label %3036

; <label>:3036                                    ; preds = %3032, %2942
  %3037 = phi float [ %3033, %3032 ], [ 0x3FD6666660000000, %2942 ]
  %3038 = phi float [ %3034, %3032 ], [ 0.000000e+00, %2942 ]
  %3039 = phi float [ %3035, %3032 ], [ 0.000000e+00, %2942 ]
  %3040 = phi float [ %2976, %3032 ], [ 1.000000e+00, %2942 ]
  %3041 = add i32 %63, 208
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = lshr i32 %3043, 22
  %3045 = shl nuw nsw i32 %3044, 5
  %3046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3045)  ; LegacyF16ToF32(value)
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 64
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3084, label %3051

; <label>:3051                                    ; preds = %3036
  %3052 = add i32 %63, 420
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = and i32 %3058, 131072
  %3060 = icmp eq i32 %3059, 0
  %3061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3056, %dx.types.Handle %119, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = fmul fast float %3062, %421
  %3066 = fmul fast float %3063, %424
  %3067 = fmul fast float %3064, %427
  br i1 %3060, label %3074, label %3068

; <label>:3068                                    ; preds = %3051
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 0
  %3071 = fmul fast float %3070, %3065
  %3072 = fmul fast float %3070, %3066
  %3073 = fmul fast float %3070, %3067
  br label %3074

; <label>:3074                                    ; preds = %3068, %3051
  %3075 = phi float [ %3071, %3068 ], [ %3065, %3051 ]
  %3076 = phi float [ %3072, %3068 ], [ %3066, %3051 ]
  %3077 = phi float [ %3073, %3068 ], [ %3067, %3051 ]
  %3078 = fmul fast float %3075, %3046
  %3079 = select i1 %278, float %3078, float %3075
  %3080 = call float @dx.op.dot3.f32(i32 55, float %3079, float %3076, float %3077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3081 = select i1 %278, float 0.000000e+00, float %3075
  %3082 = select i1 %278, float %3080, float %3076
  %3083 = select i1 %278, float 0.000000e+00, float %3077
  br label %3084

; <label>:3084                                    ; preds = %3074, %3036
  %3085 = phi float [ %3081, %3074 ], [ 0.000000e+00, %3036 ]
  %3086 = phi float [ %3082, %3074 ], [ 0.000000e+00, %3036 ]
  %3087 = phi float [ %3083, %3074 ], [ 0.000000e+00, %3036 ]
  %3088 = add i32 %63, 144
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = lshr i32 %3090, 8
  %3094 = and i32 %3093, 255
  %3095 = uitofp i32 %3094 to float
  %3096 = call float @dx.op.dot3.f32(i32 55, float %2957, float %2958, float %2959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3097 = fmul fast float %3095, %3096
  %3098 = fadd fast float %3097, %3092
  %3099 = fmul fast float %3098, 0x3F70101020000000
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  br i1 %2556, label %3101, label %3109

; <label>:3101                                    ; preds = %3084
  %3102 = fsub fast float 1.000000e+00, %2737
  %3103 = fmul fast float %3102, %2545
  %3104 = fmul fast float %3102, %2546
  %3105 = fmul fast float %3102, %2547
  %3106 = fmul fast float %3102, %2548
  %3107 = fmul fast float %3102, %2549
  %3108 = fmul fast float %3102, %2550
  br label %3109

; <label>:3109                                    ; preds = %3101, %3084
  %3110 = phi float [ %3103, %3101 ], [ %2545, %3084 ]
  %3111 = phi float [ %3104, %3101 ], [ %2546, %3084 ]
  %3112 = phi float [ %3105, %3101 ], [ %2547, %3084 ]
  %3113 = phi float [ %3106, %3101 ], [ %2548, %3084 ]
  %3114 = phi float [ %3107, %3101 ], [ %2549, %3084 ]
  %3115 = phi float [ %3108, %3101 ], [ %2550, %3084 ]
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 3
  %3119 = icmp eq i32 %3118, 3
  br i1 %3119, label %3198, label %3120

; <label>:3120                                    ; preds = %3109
  %3121 = and i32 %3117, 16
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %2737, float 0.000000e+00
  %3124 = icmp eq i32 %3118, 0
  br i1 %3124, label %3125, label %3153

; <label>:3125                                    ; preds = %3120
  %3126 = and i32 %3117, 64
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %2737, float 0.000000e+00
  %3129 = fsub fast float %2957, %3110
  %3130 = fsub fast float %2958, %3111
  %3131 = fsub fast float %2959, %3112
  %3132 = fmul fast float %3123, %3129
  %3133 = fmul fast float %3123, %3130
  %3134 = fmul fast float %3123, %3131
  %3135 = fadd fast float %3132, %3110
  %3136 = fadd fast float %3133, %3111
  %3137 = fadd fast float %3134, %3112
  %3138 = fsub fast float %2943, %2551
  %3139 = fmul fast float %3123, %3138
  %3140 = fadd fast float %3139, %2551
  %3141 = fsub fast float %3085, %3113
  %3142 = fsub fast float %3086, %3114
  %3143 = fsub fast float %3087, %3115
  %3144 = fmul fast float %3128, %3141
  %3145 = fmul fast float %3128, %3142
  %3146 = fmul fast float %3128, %3143
  %3147 = fadd fast float %3144, %3113
  %3148 = fadd fast float %3145, %3114
  %3149 = fadd fast float %3146, %3115
  %3150 = fsub fast float %3100, %2554
  %3151 = fmul fast float %3123, %3150
  %3152 = fadd fast float %3151, %2554
  br label %3198

; <label>:3153                                    ; preds = %3120
  %3154 = icmp eq i32 %3118, 1
  br i1 %3154, label %3155, label %3168

; <label>:3155                                    ; preds = %3153
  %3156 = fadd fast float %2957, -1.000000e+00
  %3157 = fadd fast float %2958, -1.000000e+00
  %3158 = fadd fast float %2959, -1.000000e+00
  %3159 = fmul fast float %3123, %3156
  %3160 = fmul fast float %3123, %3157
  %3161 = fmul fast float %3123, %3158
  %3162 = fadd fast float %3159, 1.000000e+00
  %3163 = fadd fast float %3160, 1.000000e+00
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fmul fast float %3162, %3110
  %3166 = fmul fast float %3163, %3111
  %3167 = fmul fast float %3164, %3112
  br label %3198

; <label>:3168                                    ; preds = %3153
  %3169 = icmp eq i32 %3118, 2
  br i1 %3169, label %3170, label %3198

; <label>:3170                                    ; preds = %3168
  %3171 = call float @dx.op.unary.f32(i32 24, float %2957)  ; Sqrt(value)
  %3172 = call float @dx.op.unary.f32(i32 24, float %2958)  ; Sqrt(value)
  %3173 = call float @dx.op.unary.f32(i32 24, float %2959)  ; Sqrt(value)
  %3174 = fadd fast float %3171, -5.000000e-01
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fadd fast float %3173, -5.000000e-01
  %3177 = fmul fast float %3174, %3123
  %3178 = fmul fast float %3175, %3123
  %3179 = fmul fast float %3176, %3123
  %3180 = fadd fast float %3177, 5.000000e-01
  %3181 = fadd fast float %3178, 5.000000e-01
  %3182 = fadd fast float %3179, 5.000000e-01
  %3183 = fmul fast float %3180, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3184, %3110
  %3186 = fadd fast float %3185, %3183
  %3187 = fmul fast float %3186, %3110
  %3188 = fmul fast float %3181, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3111
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3111
  %3193 = fmul fast float %3182, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3112
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3112
  br label %3198

; <label>:3198                                    ; preds = %3170, %3168, %3155, %3125, %3109
  %3199 = phi float [ %3110, %3109 ], [ %3187, %3170 ], [ %3110, %3168 ], [ %3165, %3155 ], [ %3135, %3125 ]
  %3200 = phi float [ %3111, %3109 ], [ %3192, %3170 ], [ %3111, %3168 ], [ %3166, %3155 ], [ %3136, %3125 ]
  %3201 = phi float [ %3112, %3109 ], [ %3197, %3170 ], [ %3112, %3168 ], [ %3167, %3155 ], [ %3137, %3125 ]
  %3202 = phi float [ %3113, %3109 ], [ %3113, %3170 ], [ %3113, %3168 ], [ %3113, %3155 ], [ %3147, %3125 ]
  %3203 = phi float [ %3114, %3109 ], [ %3114, %3170 ], [ %3114, %3168 ], [ %3114, %3155 ], [ %3148, %3125 ]
  %3204 = phi float [ %3115, %3109 ], [ %3115, %3170 ], [ %3115, %3168 ], [ %3115, %3155 ], [ %3149, %3125 ]
  %3205 = phi float [ %2551, %3109 ], [ %2551, %3170 ], [ %2551, %3168 ], [ %2551, %3155 ], [ %3140, %3125 ]
  %3206 = phi float [ %2554, %3109 ], [ %2554, %3170 ], [ %2554, %3168 ], [ %2554, %3155 ], [ %3152, %3125 ]
  %3207 = and i32 %3117, 12
  %3208 = icmp eq i32 %3207, 12
  br i1 %3208, label %3281, label %3209

; <label>:3209                                    ; preds = %3198
  %3210 = and i32 %3117, 2097184
  %3211 = icmp eq i32 %3210, 2097184
  %3212 = select i1 %3211, float %2737, float 0.000000e+00
  %3213 = and i32 %3117, 4194336
  %3214 = icmp eq i32 %3213, 4194336
  %3215 = select i1 %3214, float %2737, float 0.000000e+00
  %3216 = and i32 %3117, 8388640
  %3217 = icmp eq i32 %3216, 8388640
  %3218 = select i1 %3217, float %2737, float 0.000000e+00
  %3219 = icmp eq i32 %3207, 0
  br i1 %3219, label %3220, label %3233

; <label>:3220                                    ; preds = %3209
  %3221 = fsub fast float %3038, %2543
  %3222 = fsub fast float %3039, %2544
  %3223 = fmul fast float %3212, %3221
  %3224 = fmul fast float %3212, %3222
  %3225 = fadd fast float %3223, %2543
  %3226 = fadd fast float %3224, %2544
  %3227 = fsub fast float %3040, %2553
  %3228 = fmul fast float %3215, %3227
  %3229 = fadd fast float %3228, %2553
  %3230 = fsub fast float %3037, %2552
  %3231 = fmul fast float %3218, %3230
  %3232 = fadd fast float %3231, %2552
  br label %3281

; <label>:3233                                    ; preds = %3209
  %3234 = icmp eq i32 %3207, 4
  br i1 %3234, label %3235, label %3267

; <label>:3235                                    ; preds = %3233
  %3236 = fmul fast float %3212, %3038
  %3237 = fmul fast float %3212, %3039
  %3238 = fadd fast float %3236, %2543
  %3239 = fadd fast float %3237, %2544
  %3240 = call float @dx.op.binary.f32(i32 36, float %2553, float %3040)  ; FMin(a,b)
  %3241 = fsub fast float %3240, %2553
  %3242 = fmul fast float %3241, %3215
  %3243 = fadd fast float %3242, %2553
  %3244 = fadd fast float %3037, %2552
  %3245 = fmul fast float %3244, 0x3FF337FAE0000000
  %3246 = fmul fast float %2552, %2552
  %3247 = fmul fast float %3037, %3037
  %3248 = fadd fast float %3247, %3246
  %3249 = fmul fast float %3248, 0x3FE5152B00000000
  %3250 = fmul fast float %2552, 0xBFCC1F85E0000000
  %3251 = fmul fast float %3250, %3037
  %3252 = fadd fast float %3251, 0xBFE1363700000000
  %3253 = fadd fast float %3252, %3245
  %3254 = fsub fast float %3253, %3249
  %3255 = fmul fast float %3244, 0x3FBA6F0D00000000
  %3256 = fmul fast float %3248, 0x3FD0432880000000
  %3257 = fmul fast float %2552, 0xBFEF110800000000
  %3258 = fmul fast float %3257, %3037
  %3259 = fadd fast float %3258, 1.000000e+00
  %3260 = fsub fast float %3259, %3255
  %3261 = fadd fast float %3260, %3256
  %3262 = fdiv fast float %3254, %3261
  %3263 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3264 = fsub fast float %3263, %2552
  %3265 = fmul fast float %3264, %3218
  %3266 = fadd fast float %3265, %2552
  br label %3281

; <label>:3267                                    ; preds = %3233
  %3268 = icmp eq i32 %3207, 8
  br i1 %3268, label %3269, label %3281

; <label>:3269                                    ; preds = %3267
  %3270 = fmul fast float %3212, %3038
  %3271 = fmul fast float %3212, %3039
  %3272 = fadd fast float %3270, %2543
  %3273 = fadd fast float %3271, %2544
  %3274 = call float @dx.op.binary.f32(i32 36, float %2553, float %3040)  ; FMin(a,b)
  %3275 = fsub fast float %3274, %2553
  %3276 = fmul fast float %3275, %3215
  %3277 = fadd fast float %3276, %2553
  %3278 = fsub fast float %3037, %2552
  %3279 = fmul fast float %3218, %3278
  %3280 = fadd fast float %3279, %2552
  br label %3281

; <label>:3281                                    ; preds = %3269, %3267, %3235, %3220, %3198, %2736, %2555, %2542
  %3282 = phi float [ %2543, %3198 ], [ %2543, %2736 ], [ %2543, %2542 ], [ %2543, %2555 ], [ %3225, %3220 ], [ %3238, %3235 ], [ %2543, %3267 ], [ %3272, %3269 ]
  %3283 = phi float [ %2544, %3198 ], [ %2544, %2736 ], [ %2544, %2542 ], [ %2544, %2555 ], [ %3226, %3220 ], [ %3239, %3235 ], [ %2544, %3267 ], [ %3273, %3269 ]
  %3284 = phi float [ %3199, %3198 ], [ %2545, %2736 ], [ %2545, %2542 ], [ %2545, %2555 ], [ %3199, %3220 ], [ %3199, %3235 ], [ %3199, %3267 ], [ %3199, %3269 ]
  %3285 = phi float [ %3200, %3198 ], [ %2546, %2736 ], [ %2546, %2542 ], [ %2546, %2555 ], [ %3200, %3220 ], [ %3200, %3235 ], [ %3200, %3267 ], [ %3200, %3269 ]
  %3286 = phi float [ %3201, %3198 ], [ %2547, %2736 ], [ %2547, %2542 ], [ %2547, %2555 ], [ %3201, %3220 ], [ %3201, %3235 ], [ %3201, %3267 ], [ %3201, %3269 ]
  %3287 = phi float [ %3202, %3198 ], [ %2548, %2736 ], [ %2548, %2542 ], [ %2548, %2555 ], [ %3202, %3220 ], [ %3202, %3235 ], [ %3202, %3267 ], [ %3202, %3269 ]
  %3288 = phi float [ %3203, %3198 ], [ %2549, %2736 ], [ %2549, %2542 ], [ %2549, %2555 ], [ %3203, %3220 ], [ %3203, %3235 ], [ %3203, %3267 ], [ %3203, %3269 ]
  %3289 = phi float [ %3204, %3198 ], [ %2550, %2736 ], [ %2550, %2542 ], [ %2550, %2555 ], [ %3204, %3220 ], [ %3204, %3235 ], [ %3204, %3267 ], [ %3204, %3269 ]
  %3290 = phi float [ %3205, %3198 ], [ %2551, %2736 ], [ %2551, %2542 ], [ %2551, %2555 ], [ %3205, %3220 ], [ %3205, %3235 ], [ %3205, %3267 ], [ %3205, %3269 ]
  %3291 = phi float [ %2552, %3198 ], [ %2552, %2736 ], [ %2552, %2542 ], [ %2552, %2555 ], [ %3232, %3220 ], [ %3266, %3235 ], [ %2552, %3267 ], [ %3280, %3269 ]
  %3292 = phi float [ %2553, %3198 ], [ %2553, %2736 ], [ %2553, %2542 ], [ %2553, %2555 ], [ %3229, %3220 ], [ %3243, %3235 ], [ %2553, %3267 ], [ %3277, %3269 ]
  %3293 = phi float [ %3206, %3198 ], [ %2554, %2736 ], [ %2554, %2542 ], [ %2554, %2555 ], [ %3206, %3220 ], [ %3206, %3235 ], [ %3206, %3267 ], [ %3206, %3269 ]
  %3294 = add i32 %63, 360
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.i32 %3295, 1
  %3298 = bitcast i32 %3296 to float
  %3299 = bitcast i32 %3297 to float
  %3300 = fcmp fast oge float %3298, 0.000000e+00
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 0
  %3303 = select i1 %3300, float %3298, float %3302
  %3304 = fadd fast float %3303, %220
  %3305 = fmul fast float %3299, %221
  %3306 = add i32 %63, 456
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = add i32 %3308, 0
  %3310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3310, %dx.types.Handle %120, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = fmul fast float %3305, %3312
  %3314 = fadd fast float %3304, %3313
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 0
  %3317 = and i32 %212, 65535
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = lshr i32 %212, 16
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = and i32 %213, 65535
  %3322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3321)  ; LegacyF16ToF32(value)
  %3323 = fmul fast float %3318, %3284
  %3324 = fmul fast float %3320, %3285
  %3325 = fmul fast float %3322, %3286
  %3326 = shl i32 %214, 4
  %3327 = and i32 %3326, 32752
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = lshr i32 %214, 7
  %3330 = and i32 %3329, 32752
  %3331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3330)  ; LegacyF16ToF32(value)
  %3332 = lshr i32 %214, 22
  %3333 = shl nuw nsw i32 %3332, 5
  %3334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3333)  ; LegacyF16ToF32(value)
  %3335 = and i32 %215, 65535
  %3336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3335)  ; LegacyF16ToF32(value)
  %3337 = fmul fast float %3316, %3287
  %3338 = fmul fast float %3337, %3328
  %3339 = fmul fast float %3338, %3336
  %3340 = fmul fast float %3316, %3288
  %3341 = fmul fast float %3340, %3331
  %3342 = fmul fast float %3341, %3336
  %3343 = fmul fast float %3316, %3289
  %3344 = fmul fast float %3343, %3334
  %3345 = fmul fast float %3344, %3336
  %3346 = call float @dx.op.dot2.f32(i32 54, float %3282, float %3283, float %3282, float %3283)  ; Dot2(ax,ay,bx,by)
  %3347 = fmul fast float %3346, 0x3FE3333340000000
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = call float @dx.op.dot3.f32(i32 55, float %3282, float %3283, float %3348, float %3282, float %3283, float %3348)  ; Dot3(ax,ay,az,bx,by,bz)
  %3350 = call float @dx.op.unary.f32(i32 25, float %3349)  ; Rsqrt(value)
  %3351 = fmul fast float %3350, %3282
  %3352 = fmul fast float %3350, %3283
  %3353 = fmul fast float %3348, %3350
  %3354 = fmul fast float %3353, %132
  %3355 = fmul fast float %3353, %134
  %3356 = fmul fast float %3353, %136
  %3357 = fmul fast float %3351, %94
  %3358 = fmul fast float %3351, %95
  %3359 = fmul fast float %3351, %96
  %3360 = fadd fast float %3354, %3357
  %3361 = fadd fast float %3355, %3358
  %3362 = fadd fast float %3356, %3359
  %3363 = fmul fast float %146, %3352
  %3364 = fmul fast float %147, %3352
  %3365 = fmul fast float %148, %3352
  %3366 = fadd fast float %3360, %3363
  %3367 = fadd fast float %3361, %3364
  %3368 = fadd fast float %3362, %3365
  %3369 = call float @dx.op.dot3.f32(i32 55, float %3366, float %3367, float %3368, float %3366, float %3367, float %3368)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = call float @dx.op.unary.f32(i32 25, float %3369)  ; Rsqrt(value)
  %3371 = fmul fast float %3366, %3370
  %3372 = fmul fast float %3367, %3370
  %3373 = fmul fast float %3368, %3370
  %3374 = icmp eq i32 %65, 65535
  br i1 %3374, label %3893, label %3375

; <label>:3375                                    ; preds = %3281
  %3376 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3377 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %3378 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3379 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3380 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %3381 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3382 = fadd fast float %3376, %66
  %3383 = fadd fast float %3377, %67
  %3384 = fadd fast float %3378, %68
  %3385 = fadd fast float %3379, %66
  %3386 = fadd fast float %3380, %67
  %3387 = fadd fast float %3381, %68
  %3388 = mul i32 %65, 48
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = add i32 %3388, 16
  %3394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.ResRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.ResRet.f32 %3394, 2
  %3398 = add i32 %3388, 32
  %3399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = bitcast float %3403 to i32
  %3405 = fmul fast float %3390, %66
  %3406 = fmul fast float %3391, %67
  %3407 = fmul fast float %3392, %68
  %3408 = fsub fast float %3405, %3395
  %3409 = fsub fast float %3406, %3396
  %3410 = fsub fast float %3407, %3397
  %3411 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  %3412 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3413 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3414 = fmul fast float %3411, %3400
  %3415 = fmul fast float %3412, %3401
  %3416 = fmul fast float %3413, %3402
  %3417 = fadd fast float %3400, -1.000000e+00
  %3418 = fadd fast float %3401, -1.000000e+00
  %3419 = fadd fast float %3402, -1.000000e+00
  %3420 = call float @dx.op.unary.f32(i32 27, float %3414)  ; Round_ni(value)
  %3421 = call float @dx.op.unary.f32(i32 27, float %3415)  ; Round_ni(value)
  %3422 = call float @dx.op.unary.f32(i32 27, float %3416)  ; Round_ni(value)
  %3423 = call float @dx.op.binary.f32(i32 36, float %3420, float %3417)  ; FMin(a,b)
  %3424 = call float @dx.op.binary.f32(i32 36, float %3421, float %3418)  ; FMin(a,b)
  %3425 = call float @dx.op.binary.f32(i32 36, float %3422, float %3419)  ; FMin(a,b)
  %3426 = fmul fast float %3425, %3401
  %3427 = fadd fast float %3426, %3424
  %3428 = fmul fast float %3427, %3400
  %3429 = fadd fast float %3428, %3423
  %3430 = fptosi float %3429 to i32
  %3431 = add nsw i32 %3430, %3404
  %3432 = shl nsw i32 %3431, 2
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = lshr i32 %3434, 16
  %3436 = icmp eq i32 %3435, 0
  br i1 %3436, label %3861, label %3437

; <label>:3437                                    ; preds = %3375
  br label %3438

; <label>:3438                                    ; preds = %3560, %3437
  %3439 = phi i32 [ %3462, %3560 ], [ %3435, %3437 ]
  %3440 = phi float [ %3561, %3560 ], [ 0.000000e+00, %3437 ]
  %3441 = phi float [ %3562, %3560 ], [ %1073, %3437 ]
  %3442 = phi float [ %3563, %3560 ], [ %3314, %3437 ]
  %3443 = phi float [ %3564, %3560 ], [ %3293, %3437 ]
  %3444 = phi float [ %3565, %3560 ], [ 0.000000e+00, %3437 ]
  %3445 = phi float [ %3566, %3560 ], [ 0.000000e+00, %3437 ]
  %3446 = phi float [ %3567, %3560 ], [ %3339, %3437 ]
  %3447 = phi float [ %3568, %3560 ], [ %3342, %3437 ]
  %3448 = phi float [ %3569, %3560 ], [ %3345, %3437 ]
  %3449 = phi float [ %3570, %3560 ], [ %3371, %3437 ]
  %3450 = phi float [ %3571, %3560 ], [ %3372, %3437 ]
  %3451 = phi float [ %3572, %3560 ], [ %3373, %3437 ]
  %3452 = phi float [ %3573, %3560 ], [ %3292, %3437 ]
  %3453 = phi float [ %3574, %3560 ], [ %3291, %3437 ]
  %3454 = phi float [ %3575, %3560 ], [ 0.000000e+00, %3437 ]
  %3455 = phi float [ %3576, %3560 ], [ %3290, %3437 ]
  %3456 = phi float [ %3577, %3560 ], [ %3323, %3437 ]
  %3457 = phi float [ %3578, %3560 ], [ %3324, %3437 ]
  %3458 = phi float [ %3579, %3560 ], [ %3325, %3437 ]
  %3459 = shl nuw nsw i32 %3439, 2
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = lshr i32 %3461, 16
  %3463 = shl i32 %3461, 8
  %3464 = and i32 %3463, 16776960
  %3465 = or i32 %3464, 48
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3470 = or i32 %3464, 64
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.i32 %3471, 1
  %3474 = or i32 %3464, 80
  %3475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 3
  %3478 = or i32 %3464, 96
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = extractvalue %dx.types.ResRet.f32 %3479, 3
  %3484 = or i32 %3464, 112
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3487 = or i32 %3464, 128
  %3488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = extractvalue %dx.types.ResRet.f32 %3488, 3
  %3493 = or i32 %3464, 144
  %3494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.ResRet.f32 %3494, 2
  %3498 = extractvalue %dx.types.ResRet.f32 %3494, 3
  %3499 = or i32 %3464, 160
  %3500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = extractvalue %dx.types.ResRet.f32 %3500, 1
  %3503 = extractvalue %dx.types.ResRet.f32 %3500, 2
  %3504 = extractvalue %dx.types.ResRet.f32 %3500, 3
  %3505 = or i32 %3464, 192
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = or i32 %3464, 208
  %3509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3511 = or i32 %3464, 248
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.ResRet.f32 %3515, 3
  %3520 = call float @dx.op.dot4.f32(i32 56, float %3516, float %3517, float %3518, float %3519, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3521 = or i32 %3464, 16
  %3522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.ResRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.ResRet.f32 %3522, 2
  %3526 = extractvalue %dx.types.ResRet.f32 %3522, 3
  %3527 = call float @dx.op.dot4.f32(i32 56, float %3523, float %3524, float %3525, float %3526, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3528 = or i32 %3464, 32
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = call float @dx.op.dot4.f32(i32 56, float %3530, float %3531, float %3532, float %3533, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3535 = call float @dx.op.unary.f32(i32 27, float %3520)  ; Round_ni(value)
  %3536 = call float @dx.op.unary.f32(i32 6, float %3535)  ; FAbs(value)
  %3537 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3538 = call float @dx.op.unary.f32(i32 6, float %3537)  ; FAbs(value)
  %3539 = call float @dx.op.unary.f32(i32 6, float %3534)  ; FAbs(value)
  %3540 = call float @dx.op.unary.f32(i32 27, float %3539)  ; Round_ni(value)
  %3541 = fadd fast float %3538, %3536
  %3542 = fadd fast float %3541, %3540
  %3543 = fcmp fast oeq float %3542, 0.000000e+00
  %3544 = call float @dx.op.dot4.f32(i32 56, float %3516, float %3517, float %3518, float %3519, float %3382, float %3383, float %3384, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3545 = call float @dx.op.dot4.f32(i32 56, float %3523, float %3524, float %3525, float %3526, float %3382, float %3383, float %3384, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3546 = call float @dx.op.dot4.f32(i32 56, float %3516, float %3517, float %3518, float %3519, float %3385, float %3386, float %3387, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3547 = call float @dx.op.dot4.f32(i32 56, float %3523, float %3524, float %3525, float %3526, float %3385, float %3386, float %3387, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3548 = fsub fast float %3544, %3520
  %3549 = fsub fast float %3546, %3520
  %3550 = fsub fast float %3545, %3527
  %3551 = fsub fast float %3547, %3527
  %3552 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3469, float %132, float %134, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 2
  %3555 = fadd fast float %3554, %3552
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3558 = fcmp fast ogt float %3556, %3557
  %3559 = and i1 %3543, %3558
  br i1 %3559, label %3581, label %3560

; <label>:3560                                    ; preds = %3847, %3664, %3581, %3438
  %3561 = phi float [ %3440, %3581 ], [ %3667, %3664 ], [ %3667, %3847 ], [ %3440, %3438 ]
  %3562 = phi float [ %3441, %3581 ], [ %3441, %3664 ], [ %3822, %3847 ], [ %3441, %3438 ]
  %3563 = phi float [ %3442, %3581 ], [ %3442, %3664 ], [ %3821, %3847 ], [ %3442, %3438 ]
  %3564 = phi float [ %3443, %3581 ], [ %3443, %3664 ], [ %3819, %3847 ], [ %3443, %3438 ]
  %3565 = phi float [ %3444, %3581 ], [ %3444, %3664 ], [ %3791, %3847 ], [ %3444, %3438 ]
  %3566 = phi float [ %3445, %3581 ], [ %3445, %3664 ], [ %3789, %3847 ], [ %3445, %3438 ]
  %3567 = phi float [ %3446, %3581 ], [ %3446, %3664 ], [ %3857, %3847 ], [ %3446, %3438 ]
  %3568 = phi float [ %3447, %3581 ], [ %3447, %3664 ], [ %3858, %3847 ], [ %3447, %3438 ]
  %3569 = phi float [ %3448, %3581 ], [ %3448, %3664 ], [ %3859, %3847 ], [ %3448, %3438 ]
  %3570 = phi float [ %3449, %3581 ], [ %3449, %3664 ], [ %3770, %3847 ], [ %3449, %3438 ]
  %3571 = phi float [ %3450, %3581 ], [ %3450, %3664 ], [ %3771, %3847 ], [ %3450, %3438 ]
  %3572 = phi float [ %3451, %3581 ], [ %3451, %3664 ], [ %3772, %3847 ], [ %3451, %3438 ]
  %3573 = phi float [ %3452, %3581 ], [ %3452, %3664 ], [ %3799, %3847 ], [ %3452, %3438 ]
  %3574 = phi float [ %3453, %3581 ], [ %3453, %3664 ], [ %3796, %3847 ], [ %3453, %3438 ]
  %3575 = phi float [ %3454, %3581 ], [ %3454, %3664 ], [ %3793, %3847 ], [ %3454, %3438 ]
  %3576 = phi float [ %3455, %3581 ], [ %3455, %3664 ], [ %3787, %3847 ], [ %3455, %3438 ]
  %3577 = phi float [ %3456, %3581 ], [ %3456, %3664 ], [ %3782, %3847 ], [ %3456, %3438 ]
  %3578 = phi float [ %3457, %3581 ], [ %3457, %3664 ], [ %3783, %3847 ], [ %3457, %3438 ]
  %3579 = phi float [ %3458, %3581 ], [ %3458, %3664 ], [ %3784, %3847 ], [ %3458, %3438 ]
  %3580 = icmp eq i32 %3462, 0
  br i1 %3580, label %3860, label %3438

; <label>:3581                                    ; preds = %3438
  %3582 = extractvalue %dx.types.ResRet.f32 %3466, 3
  %3583 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3584 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3586 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3587 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3588 = extractvalue %dx.types.ResRet.i32 %3471, 3
  %3589 = extractvalue %dx.types.ResRet.i32 %3471, 2
  %3590 = bitcast float %3582 to i32
  %3591 = add i32 %3588, 0
  %3592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3591, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3594 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3592, %dx.types.Handle %3593, float %3520, float %3527, float undef, float undef, i32 0, i32 0, i32 undef, float %3548, float %3550, float undef, float %3549, float %3551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = fmul fast float %3595, %3587
  %3597 = fadd fast float %3596, %3586
  %3598 = call float @dx.op.unary.f32(i32 7, float %3597)  ; Saturate(value)
  %3599 = fmul fast float %3520, %3480
  %3600 = call float @dx.op.tertiary.f32(i32 46, float %3481, float %3527, float %3599)  ; FMad(a,b,c)
  %3601 = fadd fast float %3600, %3585
  %3602 = fmul fast float %3520, %3482
  %3603 = call float @dx.op.tertiary.f32(i32 46, float %3483, float %3527, float %3602)  ; FMad(a,b,c)
  %3604 = fadd fast float %3603, %3584
  %3605 = fmul fast float %3548, %3480
  %3606 = call float @dx.op.tertiary.f32(i32 46, float %3481, float %3550, float %3605)  ; FMad(a,b,c)
  %3607 = fmul fast float %3548, %3482
  %3608 = call float @dx.op.tertiary.f32(i32 46, float %3483, float %3550, float %3607)  ; FMad(a,b,c)
  %3609 = fmul fast float %3549, %3480
  %3610 = call float @dx.op.tertiary.f32(i32 46, float %3481, float %3551, float %3609)  ; FMad(a,b,c)
  %3611 = fmul fast float %3549, %3482
  %3612 = call float @dx.op.tertiary.f32(i32 46, float %3483, float %3551, float %3611)  ; FMad(a,b,c)
  %3613 = add i32 %3589, 0
  %3614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3613, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3615 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3614, %dx.types.Handle %3593, float %3601, float %3604, float undef, float undef, i32 0, i32 0, i32 undef, float %3606, float %3608, float undef, float %3610, float %3612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = and i32 %3590, 1024
  %3618 = icmp ne i32 %3617, 0
  %3619 = fcmp fast ogt float %3616, 0x3FE0101020000000
  %3620 = uitofp i1 %3619 to float
  %3621 = select i1 %3618, float %3620, float %3616
  %3622 = and i32 %3590, 8192
  %3623 = icmp ne i32 %3622, 0
  %3624 = select i1 %3623, float %3583, float 1.000000e+00
  %3625 = fmul fast float %3520, 2.000000e+00
  %3626 = fadd fast float %3625, -1.000000e+00
  %3627 = call float @dx.op.unary.f32(i32 6, float %3626)  ; FAbs(value)
  %3628 = fmul fast float %3627, %3513
  %3629 = fsub fast float %3628, %3513
  %3630 = call float @dx.op.unary.f32(i32 7, float %3629)  ; Saturate(value)
  %3631 = fmul fast float %3527, 2.000000e+00
  %3632 = fadd fast float %3631, -1.000000e+00
  %3633 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3634 = fmul fast float %3633, %3514
  %3635 = fsub fast float %3634, %3514
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3637 = fmul fast float %3539, %3476
  %3638 = fsub fast float %3637, %3476
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3640 = fmul fast float %3598, %3624
  %3641 = fmul fast float %3640, %3595
  %3642 = fmul fast float %3641, %3630
  %3643 = fmul fast float %3642, %3621
  %3644 = fmul fast float %3643, %3636
  %3645 = fmul fast float %3644, %3639
  %3646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3647 = extractvalue %dx.types.CBufRet.f32 %3646, 1
  %3648 = extractvalue %dx.types.CBufRet.f32 %3646, 0
  %3649 = fsub fast float %3556, %3648
  %3650 = fmul fast float %3649, %3647
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = fmul fast float %3645, %3477
  %3653 = fadd fast float %3645, %3477
  %3654 = fmul fast float %3653, %3486
  %3655 = fsub fast float %3654, %3486
  %3656 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3657 = and i32 %3590, 128
  %3658 = icmp ne i32 %3657, 0
  %3659 = select i1 %3658, float %3656, float %3652
  %3660 = fmul fast float %3659, %3651
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3663 = fcmp fast ugt float %3660, %3662
  br i1 %3663, label %3664, label %3560

; <label>:3664                                    ; preds = %3581
  %3665 = select i1 %3623, float %3660, float 0.000000e+00
  %3666 = fadd fast float %3665, %3440
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  br i1 %3623, label %3560, label %3668

; <label>:3668                                    ; preds = %3664
  %3669 = and i32 %3590, 4
  %3670 = and i32 %3590, 8
  %3671 = add i32 %3472, 0
  %3672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3671, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3674 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3672, %dx.types.Handle %3673, float %3601, float %3604, float undef, float undef, i32 0, i32 0, i32 undef, float %3606, float %3608, float undef, float %3610, float %3612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3678 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3679 = bitcast float %3498 to i32
  %3680 = and i32 %3679, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = lshr i32 %3679, 8
  %3683 = and i32 %3682, 255
  %3684 = uitofp i32 %3683 to float
  %3685 = fmul fast float %3678, %3681
  %3686 = fadd fast float %3685, %3684
  %3687 = fmul fast float %3686, 0x3F70101000000000
  %3688 = add i32 %3473, 0
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3688, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3689, %dx.types.Handle %3673, float %3601, float %3604, float undef, float undef, i32 0, i32 0, i32 undef, float %3606, float %3608, float undef, float %3610, float %3612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3690, 2
  %3694 = extractvalue %dx.types.ResRet.f32 %3690, 3
  %3695 = bitcast float %3492 to i32
  %3696 = and i32 %3695, 255
  %3697 = uitofp i32 %3696 to float
  %3698 = lshr i32 %3695, 8
  %3699 = and i32 %3698, 255
  %3700 = uitofp i32 %3699 to float
  %3701 = lshr i32 %3695, 16
  %3702 = and i32 %3701, 255
  %3703 = uitofp i32 %3702 to float
  %3704 = fmul fast float %3703, 0x3F70101000000000
  %3705 = fmul fast float %3691, %3697
  %3706 = fadd fast float %3705, %3700
  %3707 = fmul fast float %3706, 0x3F70101000000000
  %3708 = fadd fast float %3692, -5.000000e-01
  %3709 = fadd fast float %3694, -5.000000e-01
  %3710 = fmul fast float %3708, %3704
  %3711 = fmul fast float %3709, %3704
  %3712 = fadd fast float %3710, 5.000000e-01
  %3713 = fadd fast float %3711, 5.000000e-01
  %3714 = fmul fast float %3675, %3501
  %3715 = fmul fast float %3676, %3502
  %3716 = fmul fast float %3677, %3503
  %3717 = fmul fast float %3712, 2.000000e+00
  %3718 = fadd fast float %3717, -1.000000e+00
  %3719 = fmul fast float %3713, 2.000000e+00
  %3720 = fadd fast float %3719, -1.000000e+00
  %3721 = fadd fast float %3718, %3720
  %3722 = fmul fast float %3721, 5.000000e-01
  %3723 = fsub fast float %3718, %3720
  %3724 = fmul fast float %3723, 5.000000e-01
  %3725 = call float @dx.op.unary.f32(i32 6, float %3722)  ; FAbs(value)
  %3726 = fsub fast float 1.000000e+00, %3725
  %3727 = call float @dx.op.unary.f32(i32 6, float %3724)  ; FAbs(value)
  %3728 = fsub fast float %3726, %3727
  %3729 = call float @dx.op.dot3.f32(i32 55, float %3722, float %3724, float %3728, float %3722, float %3724, float %3728)  ; Dot3(ax,ay,az,bx,by,bz)
  %3730 = call float @dx.op.unary.f32(i32 25, float %3729)  ; Rsqrt(value)
  %3731 = fmul fast float %3722, %3730
  %3732 = fmul fast float %3724, %3730
  %3733 = fmul fast float %3730, %3728
  %3734 = fmul fast float %3733, %3467
  %3735 = fmul fast float %3733, %3468
  %3736 = fmul fast float %3733, %3469
  %3737 = fmul fast float %3731, %3489
  %3738 = fmul fast float %3731, %3490
  %3739 = fmul fast float %3731, %3491
  %3740 = fadd fast float %3737, %3734
  %3741 = fadd fast float %3738, %3735
  %3742 = fadd fast float %3739, %3736
  %3743 = fmul fast float %3732, %3495
  %3744 = fmul fast float %3732, %3496
  %3745 = fmul fast float %3732, %3497
  %3746 = fadd fast float %3740, %3743
  %3747 = fadd fast float %3741, %3744
  %3748 = fadd fast float %3742, %3745
  %3749 = call float @dx.op.dot3.f32(i32 55, float %3746, float %3747, float %3748, float %3746, float %3747, float %3748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3750 = call float @dx.op.unary.f32(i32 25, float %3749)  ; Rsqrt(value)
  %3751 = fmul fast float %3746, %3750
  %3752 = fmul fast float %3747, %3750
  %3753 = fmul fast float %3748, %3750
  %3754 = icmp ne i32 %3670, 0
  %3755 = select i1 %3754, float 1.000000e+00, float 0.000000e+00
  %3756 = fmul fast float %3660, %3755
  %3757 = and i32 %3590, 1
  %3758 = icmp eq i32 %3757, 0
  br i1 %3758, label %3759, label %3763

; <label>:3759                                    ; preds = %3668
  %3760 = fsub fast float %3751, %3449
  %3761 = fsub fast float %3752, %3450
  %3762 = fsub fast float %3753, %3451
  br label %3763

; <label>:3763                                    ; preds = %3759, %3668
  %3764 = phi float [ %3760, %3759 ], [ %3751, %3668 ]
  %3765 = phi float [ %3761, %3759 ], [ %3752, %3668 ]
  %3766 = phi float [ %3762, %3759 ], [ %3753, %3668 ]
  %3767 = fmul float %3766, %3756
  %3768 = fmul float %3765, %3756
  %3769 = fmul float %3764, %3756
  %3770 = fadd fast float %3769, %3449
  %3771 = fadd fast float %3768, %3450
  %3772 = fadd fast float %3767, %3451
  %3773 = icmp ne i32 %3669, 0
  %3774 = select i1 %3773, float 1.000000e+00, float 0.000000e+00
  %3775 = fmul fast float %3660, %3774
  %3776 = fsub fast float %3714, %3456
  %3777 = fsub fast float %3715, %3457
  %3778 = fsub fast float %3716, %3458
  %3779 = fmul fast float %3776, %3775
  %3780 = fmul fast float %3777, %3775
  %3781 = fmul fast float %3778, %3775
  %3782 = fadd fast float %3779, %3456
  %3783 = fadd fast float %3780, %3457
  %3784 = fadd fast float %3781, %3458
  %3785 = fsub fast float %3687, %3455
  %3786 = fmul fast float %3785, %3775
  %3787 = fadd fast float %3786, %3455
  %3788 = fmul fast float %3775, %3445
  %3789 = fsub fast float %3445, %3788
  %3790 = fmul fast float %3775, %3444
  %3791 = fsub fast float %3444, %3790
  %3792 = fadd fast float %3660, %3454
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = fsub fast float %3707, %3453
  %3795 = fmul fast float %3794, %3756
  %3796 = fadd fast float %3795, %3453
  %3797 = fsub fast float %3693, %3452
  %3798 = fmul fast float %3797, %3756
  %3799 = fadd fast float %3798, %3452
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3714, float %3715, float %3716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.CBufRet.f32 %3801, 1
  %3804 = fmul fast float %3803, %3800
  %3805 = fadd fast float %3804, %3802
  %3806 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3807 = bitcast float %3504 to i32
  %3808 = and i32 %3807, 65535
  %3809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3808)  ; LegacyF16ToF32(value)
  %3810 = lshr i32 %3807, 16
  %3811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3810)  ; LegacyF16ToF32(value)
  %3812 = fcmp fast oge float %3809, 0.000000e+00
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = select i1 %3812, float %3809, float %3814
  %3816 = fadd fast float %3815, %3811
  %3817 = fsub fast float %3806, %3443
  %3818 = fmul fast float %3817, %3660
  %3819 = fadd fast float %3818, %3443
  %3820 = fmul fast float %3816, %3660
  %3821 = call float @dx.op.binary.f32(i32 35, float %3442, float %3820)  ; FMax(a,b)
  %3822 = call float @dx.op.binary.f32(i32 35, float %3441, float %3660)  ; FMax(a,b)
  %3823 = and i32 %3590, 16
  %3824 = icmp eq i32 %3823, 0
  br i1 %3824, label %3847, label %3825

; <label>:3825                                    ; preds = %3763
  %3826 = bitcast float %3510 to i32
  %3827 = add i32 %3507, 0
  %3828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3829 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3828, %dx.types.Handle %3673, float %3601, float %3604, float undef, float undef, i32 0, i32 0, i32 undef, float %3606, float %3608, float undef, float %3610, float %3612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3833 = and i32 %3826, 65535
  %3834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3833)  ; LegacyF16ToF32(value)
  %3835 = fmul fast float %3830, %3501
  %3836 = fmul fast float %3831, %3502
  %3837 = fmul fast float %3832, %3503
  %3838 = and i32 %3590, 16384
  %3839 = icmp ne i32 %3838, 0
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = select i1 %3839, float %3841, float 1.000000e+00
  %3843 = fmul fast float %3842, %3834
  %3844 = fmul fast float %3835, %3843
  %3845 = fmul fast float %3836, %3843
  %3846 = fmul fast float %3837, %3843
  br label %3847

; <label>:3847                                    ; preds = %3825, %3763
  %3848 = phi float [ %3844, %3825 ], [ 0.000000e+00, %3763 ]
  %3849 = phi float [ %3845, %3825 ], [ 0.000000e+00, %3763 ]
  %3850 = phi float [ %3846, %3825 ], [ 0.000000e+00, %3763 ]
  %3851 = fsub fast float %3848, %3446
  %3852 = fsub fast float %3849, %3447
  %3853 = fsub fast float %3850, %3448
  %3854 = fmul fast float %3851, %3660
  %3855 = fmul fast float %3852, %3660
  %3856 = fmul fast float %3853, %3660
  %3857 = fadd fast float %3854, %3446
  %3858 = fadd fast float %3855, %3447
  %3859 = fadd fast float %3856, %3448
  br label %3560

; <label>:3860                                    ; preds = %3560
  br label %3861

; <label>:3861                                    ; preds = %3860, %3375
  %3862 = phi float [ 0.000000e+00, %3375 ], [ %3561, %3860 ]
  %3863 = phi float [ %1073, %3375 ], [ %3562, %3860 ]
  %3864 = phi float [ %3314, %3375 ], [ %3563, %3860 ]
  %3865 = phi float [ %3293, %3375 ], [ %3564, %3860 ]
  %3866 = phi float [ 0.000000e+00, %3375 ], [ %3565, %3860 ]
  %3867 = phi float [ 0.000000e+00, %3375 ], [ %3566, %3860 ]
  %3868 = phi float [ %3339, %3375 ], [ %3567, %3860 ]
  %3869 = phi float [ %3342, %3375 ], [ %3568, %3860 ]
  %3870 = phi float [ %3345, %3375 ], [ %3569, %3860 ]
  %3871 = phi float [ %3371, %3375 ], [ %3570, %3860 ]
  %3872 = phi float [ %3372, %3375 ], [ %3571, %3860 ]
  %3873 = phi float [ %3373, %3375 ], [ %3572, %3860 ]
  %3874 = phi float [ %3292, %3375 ], [ %3573, %3860 ]
  %3875 = phi float [ %3291, %3375 ], [ %3574, %3860 ]
  %3876 = phi float [ 0.000000e+00, %3375 ], [ %3575, %3860 ]
  %3877 = phi float [ %3290, %3375 ], [ %3576, %3860 ]
  %3878 = phi float [ %3323, %3375 ], [ %3577, %3860 ]
  %3879 = phi float [ %3324, %3375 ], [ %3578, %3860 ]
  %3880 = phi float [ %3325, %3375 ], [ %3579, %3860 ]
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3872, float %3873, float %3871, float %3872, float %3873)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = call float @dx.op.unary.f32(i32 25, float %3881)  ; Rsqrt(value)
  %3883 = fmul fast float %3882, %3871
  %3884 = fmul fast float %3882, %3872
  %3885 = fmul fast float %3882, %3873
  %3886 = fadd fast float %3876, %1073
  %3887 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3888 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float %3883, float %3884, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3889 = call float @dx.op.unary.f32(i32 25, float %3888)  ; Rsqrt(value)
  %3890 = fmul fast float %3889, %3883
  %3891 = fmul fast float %3889, %3884
  %3892 = fmul fast float %3889, %3885
  br label %3893

; <label>:3893                                    ; preds = %3861, %3281
  %3894 = phi float [ %3890, %3861 ], [ %3371, %3281 ]
  %3895 = phi float [ %3891, %3861 ], [ %3372, %3281 ]
  %3896 = phi float [ %3892, %3861 ], [ %3373, %3281 ]
  %3897 = phi float [ %3878, %3861 ], [ %3323, %3281 ]
  %3898 = phi float [ %3879, %3861 ], [ %3324, %3281 ]
  %3899 = phi float [ %3880, %3861 ], [ %3325, %3281 ]
  %3900 = phi float [ %3868, %3861 ], [ %3339, %3281 ]
  %3901 = phi float [ %3869, %3861 ], [ %3342, %3281 ]
  %3902 = phi float [ %3870, %3861 ], [ %3345, %3281 ]
  %3903 = phi float [ %3877, %3861 ], [ %3290, %3281 ]
  %3904 = phi float [ %3887, %3861 ], [ %1073, %3281 ]
  %3905 = phi float [ %3875, %3861 ], [ %3291, %3281 ]
  %3906 = phi float [ %3874, %3861 ], [ %3292, %3281 ]
  %3907 = phi float [ %3867, %3861 ], [ 0.000000e+00, %3281 ]
  %3908 = phi float [ %3866, %3861 ], [ 0.000000e+00, %3281 ]
  %3909 = phi float [ %3862, %3861 ], [ 0.000000e+00, %3281 ]
  %3910 = phi float [ %3864, %3861 ], [ %3314, %3281 ]
  %3911 = phi float [ %3863, %3861 ], [ %1073, %3281 ]
  %3912 = phi float [ %3865, %3861 ], [ %3293, %3281 ]
  %3913 = fadd fast float %3903, 0xBFB99999A0000000
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fmul fast float %3914, 0x3FF1C71C80000000
  %3916 = call float @dx.op.binary.f32(i32 36, float %3903, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3917 = fsub fast float 1.000000e+00, %3915
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3919 = fmul fast float %3918, %3897
  %3920 = fmul fast float %3918, %3898
  %3921 = fmul fast float %3918, %3899
  %3922 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3923 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3925 = fmul fast float %3915, %3897
  %3926 = fmul fast float %3915, %3898
  %3927 = fmul fast float %3915, %3899
  %3928 = fadd fast float %3925, %3916
  %3929 = fadd fast float %3926, %3916
  %3930 = fadd fast float %3927, %3916
  %3931 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3934 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.i32 %3935, 3
  %3937 = and i32 %3936, 8
  %3938 = icmp ne i32 %3937, 0
  %3939 = call float @dx.op.binary.f32(i32 35, float %3922, float %3897)  ; FMax(a,b)
  %3940 = call float @dx.op.binary.f32(i32 35, float %3923, float %3897)  ; FMax(a,b)
  %3941 = call float @dx.op.binary.f32(i32 35, float %3924, float %3897)  ; FMax(a,b)
  %3942 = call float @dx.op.dot3.f32(i32 55, float %3922, float %3923, float %3924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3943 = select i1 %278, float %3897, float %3922
  %3944 = select i1 %278, float %3942, float %3923
  %3945 = select i1 %278, float 1.000000e+00, float %3924
  %3946 = select i1 %3938, float %3939, float %3943
  %3947 = select i1 %3938, float %3940, float %3944
  %3948 = select i1 %3938, float %3941, float %3945
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.CBufRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3949, 2
  %3953 = fadd fast float %3950, %206
  %3954 = fadd fast float %3951, %207
  %3955 = fadd fast float %3952, %208
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.CBufRet.f32 %3956, 1
  %3959 = fsub fast float %3953, %3957
  %3960 = fsub fast float %3954, %3958
  %3961 = fmul fast float %3959, %3959
  %3962 = fmul fast float %3960, %3960
  %3963 = fadd fast float %3961, %3962
  %3964 = call float @dx.op.unary.f32(i32 24, float %3963)  ; Sqrt(value)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3956, 2
  %3966 = fcmp fast olt float %3964, %3965
  br i1 %3966, label %3967, label %4034

; <label>:3967                                    ; preds = %3893
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.CBufRet.f32 %3968, 1
  %3975 = extractvalue %dx.types.CBufRet.f32 %3970, 1
  %3976 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3968, 3
  %3978 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3979 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3980 = fadd fast float %3977, %3953
  %3981 = fadd fast float %3978, %3954
  %3982 = fadd fast float %3979, %3955
  %3983 = fmul fast float %3980, %3969
  %3984 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3971, float %3983)  ; FMad(a,b,c)
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3973, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3980, %3974
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3975, float %3986)  ; FMad(a,b,c)
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3976, float %3987)  ; FMad(a,b,c)
  %3989 = fsub fast float %3985, %3977
  %3990 = fsub fast float %3988, %3978
  %3991 = fsub fast float %3989, %3957
  %3992 = fadd fast float %3991, %3965
  %3993 = fsub fast float %3990, %3958
  %3994 = fadd fast float %3993, %3965
  %3995 = extractvalue %dx.types.CBufRet.f32 %3956, 3
  %3996 = fmul fast float %3992, %3995
  %3997 = fmul fast float %3994, %3995
  %3998 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3999 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %4000 = fsub fast float 1.000000e+00, %3998
  %4001 = fsub fast float 1.000000e+00, %3999
  %4002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %4000, float %4001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = fcmp fast ugt float %4003, 0.000000e+00
  br i1 %4004, label %4005, label %4308

; <label>:4005                                    ; preds = %3967
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 2
  %4008 = fmul fast float %4007, %4003
  %4009 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4010 = fadd fast float %4009, %4008
  %4011 = extractvalue %dx.types.CBufRet.f32 %3972, 2
  %4012 = fadd fast float %4010, %3979
  %4013 = fmul fast float %3985, %3973
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %3988, float %3976, float %4013)  ; FMad(a,b,c)
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4011, float %4014)  ; FMad(a,b,c)
  %4016 = fsub fast float %4015, %3979
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 2
  %4019 = fsub fast float %4016, %4018
  %4020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4000, float %4001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4000, float %4001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = fadd fast float %4025, %4021
  %4029 = fmul fast float %4028, 0x3F847AE140000000
  %4030 = fadd fast float %4026, %4022
  %4031 = fmul fast float %4030, 0x3F847AE140000000
  %4032 = fadd fast float %4027, %4023
  %4033 = fmul fast float %4032, 0x3F847AE140000000
  br label %4308

; <label>:4034                                    ; preds = %3893
  %4035 = and i32 %257, 1
  %4036 = icmp eq i32 %4035, 0
  br i1 %4036, label %4308, label %4037

; <label>:4037                                    ; preds = %4034
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.CBufRet.f32 %4038, 1
  %4045 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4046 = extractvalue %dx.types.CBufRet.f32 %4042, 1
  %4047 = extractvalue %dx.types.CBufRet.f32 %4038, 3
  %4048 = extractvalue %dx.types.CBufRet.f32 %4040, 3
  %4049 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4050 = fadd fast float %4047, %3953
  %4051 = fadd fast float %4048, %3954
  %4052 = fadd fast float %4049, %3955
  %4053 = fmul fast float %4050, %4039
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %4041, float %4053)  ; FMad(a,b,c)
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4052, float %4043, float %4054)  ; FMad(a,b,c)
  %4056 = fmul fast float %4050, %4044
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %4045, float %4056)  ; FMad(a,b,c)
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %4052, float %4046, float %4057)  ; FMad(a,b,c)
  %4059 = fsub fast float %4055, %4047
  %4060 = fsub fast float %4058, %4048
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4065 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.i32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.i32 %4068, 1
  %4071 = udiv i32 %4070, %4069
  %4072 = fsub fast float %4059, %4062
  %4073 = fsub fast float %4060, %4063
  %4074 = call float @dx.op.binary.f32(i32 35, float %4072, float 0.000000e+00)  ; FMax(a,b)
  %4075 = call float @dx.op.binary.f32(i32 35, float %4073, float 0.000000e+00)  ; FMax(a,b)
  %4076 = call float @dx.op.binary.f32(i32 36, float %4074, float %4064)  ; FMin(a,b)
  %4077 = call float @dx.op.binary.f32(i32 36, float %4075, float %4065)  ; FMin(a,b)
  %4078 = add i32 %4069, -1
  %4079 = add i32 %4071, -1
  %4080 = fmul fast float %4076, %4067
  %4081 = fmul fast float %4077, %4067
  %4082 = fptoui float %4080 to i32
  %4083 = fptoui float %4081 to i32
  %4084 = call i32 @dx.op.binary.i32(i32 40, i32 %4082, i32 %4078)  ; UMin(a,b)
  %4085 = call i32 @dx.op.binary.i32(i32 40, i32 %4083, i32 %4079)  ; UMin(a,b)
  %4086 = mul i32 %4085, %4069
  %4087 = add i32 %4086, %4084
  %4088 = shl i32 %4087, 2
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = icmp eq i32 %4090, -1
  br i1 %4091, label %4308, label %4092

; <label>:4092                                    ; preds = %4037
  %4093 = mul i32 %4090, 148
  %4094 = add i32 %4093, 4
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = add i32 %4093, 8
  %4098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = add i32 %4093, 36
  %4101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = add i32 %4093, 60
  %4104 = add i32 %4093, 92
  %4105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.i32 %4105, 0
  %4107 = add i32 %4093, 116
  %4108 = fsub fast float %4059, %4096
  %4109 = fsub fast float %4060, %4099
  %4110 = fmul fast float %4067, %4108
  %4111 = fmul fast float %4067, %4109
  %4112 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4114 = fsub fast float 1.000000e+00, %4113
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4117 = call float @dx.op.unary.f32(i32 83, float %4112)  ; DerivCoarseX(value)
  %4118 = call float @dx.op.unary.f32(i32 83, float %4114)  ; DerivCoarseX(value)
  %4119 = call float @dx.op.unary.f32(i32 84, float %4112)  ; DerivCoarseY(value)
  %4120 = call float @dx.op.unary.f32(i32 84, float %4114)  ; DerivCoarseY(value)
  %4121 = fmul fast float %4117, %4116
  %4122 = fmul fast float %4118, %4116
  %4123 = fmul fast float %4119, %4116
  %4124 = fmul fast float %4120, %4116
  %4125 = call float @dx.op.dot2.f32(i32 54, float %4123, float %4124, float %4123, float %4124)  ; Dot2(ax,ay,bx,by)
  %4126 = call float @dx.op.dot2.f32(i32 54, float %4121, float %4122, float %4121, float %4122)  ; Dot2(ax,ay,bx,by)
  %4127 = call float @dx.op.binary.f32(i32 35, float %4126, float %4125)  ; FMax(a,b)
  %4128 = call float @dx.op.unary.f32(i32 23, float %4127)  ; Log(value)
  %4129 = fmul fast float %4128, 5.000000e-01
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4132 = fadd fast float %4131, %4129
  %4133 = call float @dx.op.binary.f32(i32 35, float %4132, float 0.000000e+00)  ; FMax(a,b)
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4136 = fadd fast float %4135, %4133
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 3
  %4139 = fadd fast float %4136, %4138
  %4140 = add i32 %4106, 0
  %4141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4140, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4142 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4141, i32 0)  ; GetDimensions(handle,mipLevel)
  %4143 = extractvalue %dx.types.Dimensions %4142, 0
  %4144 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4143)  ; FirstbitLo(value)
  %4145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.i32 %4145, 1
  %4147 = sub nsw i32 %4146, %4144
  %4148 = sitofp i32 %4147 to float
  %4149 = fsub fast float %4139, %4148
  %4150 = call float @dx.op.binary.f32(i32 35, float %4149, float 0.000000e+00)  ; FMax(a,b)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4141, %dx.types.Handle %53, float %4112, float %4114, float %4102, float undef, i32 0, i32 0, i32 undef, float %4150)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = fcmp ule float %4152, 0x3FE0101020000000
  %4154 = extractvalue %dx.types.CBufRet.i32 %4145, 0
  %4155 = and i32 %4154, 128
  %4156 = icmp ne i32 %4155, 0
  %4157 = and i1 %4153, %4156
  br i1 %4157, label %4308, label %4158

; <label>:4158                                    ; preds = %4092
  %4159 = add i32 %4093, 20
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = add i32 %4093, 24
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = add i32 %4093, 40
  %4166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = add i32 %4093, 96
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4173 = fmul fast float %4172, %4112
  %4174 = fmul fast float %4172, %4114
  %4175 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4176 = fadd fast float %4173, %4175
  %4177 = fadd fast float %4174, %4175
  %4178 = add i32 %4170, 0
  %4179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4178, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4180 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4179, i32 0)  ; GetDimensions(handle,mipLevel)
  %4181 = extractvalue %dx.types.Dimensions %4180, 0
  %4182 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4181)  ; FirstbitLo(value)
  %4183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.i32 %4183, 1
  %4185 = sub nsw i32 %4184, %4182
  %4186 = sitofp i32 %4185 to float
  %4187 = fsub fast float %4136, %4186
  %4188 = call float @dx.op.binary.f32(i32 35, float %4187, float 0.000000e+00)  ; FMax(a,b)
  %4189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4179, %dx.types.Handle %53, float %4176, float %4177, float %4167, float undef, i32 0, i32 0, i32 undef, float %4188)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = fmul fast float %4190, %4161
  %4192 = fadd fast float %4191, %4164
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4201 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4202 = fadd fast float %4198, %4059
  %4203 = fadd fast float %4200, %4060
  %4204 = fadd fast float %4192, %4201
  %4205 = fmul fast float %4202, %4194
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4203, float %4195, float %4205)  ; FMad(a,b,c)
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4196, float %4206)  ; FMad(a,b,c)
  %4208 = fsub fast float %4207, %4201
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 2
  %4211 = fsub fast float %4208, %4210
  %4212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.i32 %4212, 0
  %4214 = call i32 @dx.op.binary.i32(i32 40, i32 %4090, i32 %4213)  ; UMin(a,b)
  %4215 = mul i32 %4214, 36
  %4216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.i32 %4216, 0
  %4218 = add i32 %4215, 4
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = fmul fast float %4220, %4112
  %4222 = fmul fast float %4220, %4114
  %4223 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4224 = fadd fast float %4221, %4223
  %4225 = fadd fast float %4222, %4223
  %4226 = icmp eq i32 %4217, 0
  br i1 %4226, label %4295, label %4227

; <label>:4227                                    ; preds = %4158
  br label %4228

; <label>:4228                                    ; preds = %4285, %4227
  %4229 = phi float [ %4286, %4285 ], [ 0.000000e+00, %4227 ]
  %4230 = phi float [ %4287, %4285 ], [ 0.000000e+00, %4227 ]
  %4231 = phi float [ %4288, %4285 ], [ 0.000000e+00, %4227 ]
  %4232 = phi float [ %4289, %4285 ], [ 0.000000e+00, %4227 ]
  %4233 = phi float [ %4290, %4285 ], [ 0.000000e+00, %4227 ]
  %4234 = phi float [ %4291, %4285 ], [ 0.000000e+00, %4227 ]
  %4235 = phi i32 [ %4292, %4285 ], [ 0, %4227 ]
  %4236 = shl i32 %4235, 2
  %4237 = add i32 %4103, %4236
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = add i32 %4107, %4236
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = add i32 %4242, 0
  %4244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4243, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4245 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4244, i32 0)  ; GetDimensions(handle,mipLevel)
  %4246 = extractvalue %dx.types.Dimensions %4245, 0
  %4247 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4246)  ; FirstbitLo(value)
  %4248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.i32 %4248, 1
  %4250 = sub nsw i32 %4249, %4247
  %4251 = sitofp i32 %4250 to float
  %4252 = fsub fast float %4136, %4251
  %4253 = call float @dx.op.binary.f32(i32 35, float %4252, float 0.000000e+00)  ; FMax(a,b)
  %4254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4244, %dx.types.Handle %53, float %4224, float %4225, float %4239, float undef, i32 0, i32 0, i32 undef, float %4253)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = fcmp fast ogt float %4255, 0.000000e+00
  br i1 %4256, label %4257, label %4285

; <label>:4257                                    ; preds = %4228
  %4258 = add i32 %4218, %4236
  %4259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.i32 %4259, 0
  %4261 = and i32 %4260, 32767
  %4262 = mul nuw nsw i32 %4261, 928
  %4263 = add nuw nsw i32 %4262, 48
  %4264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4268 = add nuw nsw i32 %4262, 60
  %4269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4268, i32 undef)  ; BufferLoad(srv,index,wot)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  %4273 = fmul fast float %4265, %4255
  %4274 = fmul fast float %4266, %4255
  %4275 = fmul fast float %4267, %4255
  %4276 = fadd fast float %4273, %4229
  %4277 = fadd fast float %4274, %4230
  %4278 = fadd fast float %4275, %4231
  %4279 = fmul fast float %4270, %4255
  %4280 = fmul fast float %4271, %4255
  %4281 = fmul fast float %4272, %4255
  %4282 = fadd fast float %4279, %4232
  %4283 = fadd fast float %4280, %4233
  %4284 = fadd fast float %4281, %4234
  br label %4285

; <label>:4285                                    ; preds = %4257, %4228
  %4286 = phi float [ %4276, %4257 ], [ %4229, %4228 ]
  %4287 = phi float [ %4277, %4257 ], [ %4230, %4228 ]
  %4288 = phi float [ %4278, %4257 ], [ %4231, %4228 ]
  %4289 = phi float [ %4282, %4257 ], [ %4232, %4228 ]
  %4290 = phi float [ %4283, %4257 ], [ %4233, %4228 ]
  %4291 = phi float [ %4284, %4257 ], [ %4234, %4228 ]
  %4292 = add nuw i32 %4235, 1
  %4293 = icmp eq i32 %4292, %4217
  br i1 %4293, label %4294, label %4228

; <label>:4294                                    ; preds = %4285
  br label %4295

; <label>:4295                                    ; preds = %4294, %4158
  %4296 = phi float [ 0.000000e+00, %4158 ], [ %4286, %4294 ]
  %4297 = phi float [ 0.000000e+00, %4158 ], [ %4287, %4294 ]
  %4298 = phi float [ 0.000000e+00, %4158 ], [ %4288, %4294 ]
  %4299 = phi float [ 0.000000e+00, %4158 ], [ %4289, %4294 ]
  %4300 = phi float [ 0.000000e+00, %4158 ], [ %4290, %4294 ]
  %4301 = phi float [ 0.000000e+00, %4158 ], [ %4291, %4294 ]
  %4302 = fadd fast float %4299, %4296
  %4303 = fmul fast float %4302, 0x3F847AE140000000
  %4304 = fadd fast float %4300, %4297
  %4305 = fmul fast float %4304, 0x3F847AE140000000
  %4306 = fadd fast float %4301, %4298
  %4307 = fmul fast float %4306, 0x3F847AE140000000
  br label %4308

; <label>:4308                                    ; preds = %4295, %4092, %4037, %4034, %4005, %3967
  %4309 = phi float [ %4029, %4005 ], [ 0.000000e+00, %3967 ], [ %4303, %4295 ], [ 0.000000e+00, %4037 ], [ 0.000000e+00, %4092 ], [ 0.000000e+00, %4034 ]
  %4310 = phi float [ %4031, %4005 ], [ 0.000000e+00, %3967 ], [ %4305, %4295 ], [ 0.000000e+00, %4037 ], [ 0.000000e+00, %4092 ], [ 0.000000e+00, %4034 ]
  %4311 = phi float [ %4033, %4005 ], [ 0.000000e+00, %3967 ], [ %4307, %4295 ], [ 0.000000e+00, %4037 ], [ 0.000000e+00, %4092 ], [ 0.000000e+00, %4034 ]
  %4312 = phi float [ %4019, %4005 ], [ -1.310720e+05, %3967 ], [ %4211, %4295 ], [ -1.310720e+05, %4037 ], [ -1.310720e+05, %4092 ], [ -1.310720e+05, %4034 ]
  %4313 = phi i1 [ true, %4005 ], [ false, %3967 ], [ true, %4295 ], [ false, %4037 ], [ false, %4092 ], [ false, %4034 ]
  %4314 = and i32 %257, 3
  %4315 = icmp eq i32 %4314, 1
  %4316 = select i1 %4315, float 1.000000e+00, float 0.000000e+00
  %4317 = fsub fast float %4312, %208
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = select i1 %4313, float %4318, float 1.000000e+00
  %4320 = fmul fast float %4319, %4316
  %4321 = icmp eq i32 %4314, 3
  %4322 = select i1 %4321, float 1.000000e+00, float %4320
  %4323 = call float @dx.op.binary.f32(i32 35, float %3909, float %4322)  ; FMax(a,b)
  %4324 = fcmp fast olt float %4322, 1.000000e+00
  %4325 = fcmp uge float %79, 0.000000e+00
  %4326 = and i1 %4325, %4324
  br i1 %4326, label %4327, label %4337

; <label>:4327                                    ; preds = %4308
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %79, float %80, float %81, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.ResRet.f32 %4328, 1
  %4331 = extractvalue %dx.types.ResRet.f32 %4328, 2
  %4332 = fadd fast float %4329, %4323
  %4333 = fcmp ule float %78, 0.000000e+00
  %4334 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4335 = select i1 %4333, float %4334, float 1.000000e+00
  %4336 = fmul fast float %4335, %4331
  br label %4337

; <label>:4337                                    ; preds = %4327, %4308
  %4338 = phi float [ %4332, %4327 ], [ %4323, %4308 ]
  %4339 = phi float [ %4330, %4327 ], [ 0.000000e+00, %4308 ]
  %4340 = phi float [ %4336, %4327 ], [ 0.000000e+00, %4308 ]
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4344 = fcmp fast une float %4342, 0.000000e+00
  %4345 = fcmp fast une float %4343, 0.000000e+00
  %4346 = or i1 %4344, %4345
  br i1 %4346, label %4347, label %4906

; <label>:4347                                    ; preds = %4337
  br i1 %4344, label %4348, label %4621

; <label>:4348                                    ; preds = %4347
  %4349 = call float @dx.op.unary.f32(i32 23, float %3906)  ; Log(value)
  %4350 = fmul fast float %4349, 4.000000e+00
  %4351 = call float @dx.op.unary.f32(i32 21, float %4350)  ; Exp(value)
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4354 = fmul fast float %4353, %66
  %4355 = fmul fast float %4353, %67
  %4356 = fmul fast float %4353, %68
  %4357 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4358 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4359 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4360 = call float @dx.op.unary.f32(i32 23, float %4357)  ; Log(value)
  %4361 = call float @dx.op.unary.f32(i32 23, float %4358)  ; Log(value)
  %4362 = call float @dx.op.unary.f32(i32 23, float %4359)  ; Log(value)
  %4363 = fmul fast float %4360, 4.000000e+00
  %4364 = fmul fast float %4361, 4.000000e+00
  %4365 = fmul fast float %4362, 4.000000e+00
  %4366 = call float @dx.op.unary.f32(i32 21, float %4363)  ; Exp(value)
  %4367 = call float @dx.op.unary.f32(i32 21, float %4364)  ; Exp(value)
  %4368 = call float @dx.op.unary.f32(i32 21, float %4365)  ; Exp(value)
  %4369 = fadd fast float %4367, %4366
  %4370 = fadd fast float %4369, %4368
  %4371 = fdiv fast float 1.000000e+00, %4370
  %4372 = fmul fast float %4371, %4366
  %4373 = fcmp fast ogt float %75, 0.000000e+00
  %4374 = fcmp fast ogt float %76, 0.000000e+00
  %4375 = fcmp fast ogt float %77, 0.000000e+00
  %4376 = fcmp fast olt float %75, 0.000000e+00
  %4377 = fcmp fast olt float %76, 0.000000e+00
  %4378 = fcmp fast olt float %77, 0.000000e+00
  %4379 = zext i1 %4373 to i32
  %4380 = zext i1 %4374 to i32
  %4381 = zext i1 %4375 to i32
  %4382 = zext i1 %4376 to i32
  %4383 = zext i1 %4377 to i32
  %4384 = zext i1 %4378 to i32
  %4385 = sub nsw i32 %4379, %4382
  %4386 = sub nsw i32 %4380, %4383
  %4387 = sub nsw i32 %4381, %4384
  %4388 = call float @dx.op.unary.f32(i32 83, float %4354)  ; DerivCoarseX(value)
  %4389 = call float @dx.op.unary.f32(i32 83, float %4355)  ; DerivCoarseX(value)
  %4390 = call float @dx.op.unary.f32(i32 83, float %4356)  ; DerivCoarseX(value)
  %4391 = call float @dx.op.unary.f32(i32 84, float %4354)  ; DerivCoarseY(value)
  %4392 = call float @dx.op.unary.f32(i32 84, float %4355)  ; DerivCoarseY(value)
  %4393 = call float @dx.op.unary.f32(i32 84, float %4356)  ; DerivCoarseY(value)
  %4394 = fcmp fast ole float %289, %4372
  %4395 = fmul fast float %4371, %4369
  %4396 = fcmp fast ole float %289, %4395
  %4397 = select i1 %4396, float %4356, float %4354
  %4398 = select i1 %4396, float %4354, float %4355
  %4399 = select i1 %4394, float %4355, float %4397
  %4400 = select i1 %4394, float %4356, float %4398
  %4401 = select i1 %4396, float %4390, float %4388
  %4402 = select i1 %4396, float %4388, float %4389
  %4403 = select i1 %4394, float %4389, float %4401
  %4404 = select i1 %4394, float %4390, float %4402
  %4405 = select i1 %4396, float %4393, float %4391
  %4406 = select i1 %4396, float %4391, float %4392
  %4407 = select i1 %4394, float %4392, float %4405
  %4408 = select i1 %4394, float %4393, float %4406
  %4409 = call float @dx.op.unary.f32(i32 27, float %4399)  ; Round_ni(value)
  %4410 = call float @dx.op.unary.f32(i32 27, float %4400)  ; Round_ni(value)
  %4411 = fptosi float %4409 to i32
  %4412 = fptosi float %4410 to i32
  %4413 = xor i32 %4412, %4411
  %4414 = sitofp i32 %4413 to float
  %4415 = fptosi float %4414 to i32
  %4416 = sitofp i32 %4415 to float
  %4417 = fmul fast float %4416, 0x3FE3C6EF40000000
  %4418 = frem fast float %4409, 2.560000e+02
  %4419 = frem fast float %4410, 2.560000e+02
  %4420 = fptoui float %4418 to i32
  %4421 = fptoui float %4419 to i32
  %4422 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4420, i32 %4421, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = fadd fast float %4423, %4417
  %4427 = fadd fast float %4424, %4417
  %4428 = fadd fast float %4425, %4417
  %4429 = call float @dx.op.unary.f32(i32 22, float %4426)  ; Frc(value)
  %4430 = call float @dx.op.unary.f32(i32 22, float %4427)  ; Frc(value)
  %4431 = call float @dx.op.unary.f32(i32 22, float %4428)  ; Frc(value)
  %4432 = fmul fast float %4431, 0x401921FB60000000
  %4433 = call float @dx.op.unary.f32(i32 13, float %4432)  ; Sin(value)
  %4434 = call float @dx.op.unary.f32(i32 12, float %4432)  ; Cos(value)
  %4435 = fsub fast float -0.000000e+00, %4434
  %4436 = fmul fast float %4434, %4399
  %4437 = call float @dx.op.tertiary.f32(i32 46, float %4433, float %4400, float %4436)  ; FMad(a,b,c)
  %4438 = fmul fast float %4433, %4399
  %4439 = call float @dx.op.tertiary.f32(i32 46, float %4435, float %4400, float %4438)  ; FMad(a,b,c)
  %4440 = fadd fast float %4437, %4429
  %4441 = fadd fast float %4439, %4430
  %4442 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4443 = bitcast float %4442 to i32
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4483, label %4445

; <label>:4445                                    ; preds = %4348
  %4446 = add i32 %4443, 0
  %4447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4447, %dx.types.Handle %120, float %4440, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float %4403, float %4404, float undef, float %4407, float %4408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4452 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4453 = fsub fast float 1.000000e+00, %4342
  %4454 = call float @dx.op.binary.f32(i32 35, float %4453, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4455 = bitcast float %4342 to i32
  %4456 = sitofp i32 %4455 to float
  %4457 = fadd fast float %4456, 0xC1CFBF8940000000
  %4458 = fmul fast float %4452, %4457
  %4459 = fadd fast float %4458, 0x41CFBF8940000000
  %4460 = fptosi float %4459 to i32
  %4461 = bitcast i32 %4460 to float
  %4462 = bitcast float %4454 to i32
  %4463 = sitofp i32 %4462 to float
  %4464 = fadd fast float %4463, 0xC1CFBF8940000000
  %4465 = fmul fast float %4464, %4452
  %4466 = fadd fast float %4465, 0x41CFBF8940000000
  %4467 = fptosi float %4466 to i32
  %4468 = bitcast i32 %4467 to float
  %4469 = fmul fast float %4461, %4451
  %4470 = fmul fast float %4468, %4451
  %4471 = fsub fast float %4454, %4469
  %4472 = fadd fast float %4470, %4454
  %4473 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4475 = fsub fast float %4449, %4473
  %4476 = fsub fast float %4474, %4473
  %4477 = bitcast float %4476 to i32
  %4478 = sub nsw i32 2129859010, %4477
  %4479 = bitcast i32 %4478 to float
  %4480 = fmul fast float %4479, %4475
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fcmp fast olt float %4481, 0x3F70101020000000
  br i1 %4482, label %4621, label %4483

; <label>:4483                                    ; preds = %4445, %4348
  %4484 = phi float [ %4481, %4445 ], [ %4342, %4348 ]
  %4485 = fmul fast float %4484, %4351
  %4486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.i32 %4486, 1
  %4488 = extractvalue %dx.types.CBufRet.i32 %4486, 0
  %4489 = add i32 %4488, 0
  %4490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4490, %dx.types.Handle %119, float %4440, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float %4403, float %4404, float undef, float %4407, float %4408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.ResRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.ResRet.f32 %4491, 2
  %4495 = extractvalue %dx.types.ResRet.f32 %4491, 3
  %4496 = and i32 %4487, 255
  %4497 = uitofp i32 %4496 to float
  %4498 = lshr i32 %4487, 8
  %4499 = and i32 %4498, 255
  %4500 = uitofp i32 %4499 to float
  %4501 = fmul fast float %4495, %4497
  %4502 = fadd fast float %4501, %4500
  %4503 = fmul fast float %4502, 0x3F70101000000000
  %4504 = fadd fast float %4503, 0xBFB99999A0000000
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = fmul fast float %4505, 0x3FF1C71C80000000
  %4507 = call float @dx.op.binary.f32(i32 36, float %4503, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4508 = fsub fast float 1.000000e+00, %4506
  %4509 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4510 = fmul fast float %4509, %4492
  %4511 = fmul fast float %4509, %4493
  %4512 = fmul fast float %4509, %4494
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = fmul fast float %4506, %4492
  %4517 = fmul fast float %4506, %4493
  %4518 = fmul fast float %4506, %4494
  %4519 = fadd fast float %4516, %4507
  %4520 = fadd fast float %4517, %4507
  %4521 = fadd fast float %4518, %4507
  %4522 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4523 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.i32 %4525, 3
  %4527 = extractvalue %dx.types.CBufRet.i32 %4525, 2
  %4528 = add i32 %4527, 0
  %4529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4530 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4529, %dx.types.Handle %119, float %4440, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float %4403, float %4404, float undef, float %4407, float %4408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = extractvalue %dx.types.ResRet.f32 %4530, 1
  %4533 = extractvalue %dx.types.ResRet.f32 %4530, 2
  %4534 = extractvalue %dx.types.ResRet.f32 %4530, 3
  %4535 = and i32 %4526, 255
  %4536 = uitofp i32 %4535 to float
  %4537 = lshr i32 %4526, 8
  %4538 = and i32 %4537, 255
  %4539 = uitofp i32 %4538 to float
  %4540 = lshr i32 %4526, 16
  %4541 = and i32 %4540, 255
  %4542 = uitofp i32 %4541 to float
  %4543 = fmul fast float %4542, 0x3F70101000000000
  %4544 = fmul fast float %4531, %4536
  %4545 = fadd fast float %4544, %4539
  %4546 = fmul fast float %4545, 0x3F70101000000000
  %4547 = fadd fast float %4532, -5.000000e-01
  %4548 = fadd fast float %4534, -5.000000e-01
  %4549 = fmul fast float %4547, %4543
  %4550 = fmul fast float %4548, %4543
  %4551 = fadd fast float %4549, 5.000000e-01
  %4552 = fadd fast float %4550, 5.000000e-01
  %4553 = fmul fast float %4551, 2.000000e+00
  %4554 = fadd fast float %4553, -1.000000e+00
  %4555 = fmul fast float %4552, 2.000000e+00
  %4556 = fadd fast float %4555, -1.000000e+00
  %4557 = fadd fast float %4554, %4556
  %4558 = fmul fast float %4557, 5.000000e-01
  %4559 = fsub fast float %4554, %4556
  %4560 = fmul fast float %4559, 5.000000e-01
  %4561 = call float @dx.op.unary.f32(i32 6, float %4558)  ; FAbs(value)
  %4562 = fsub fast float 1.000000e+00, %4561
  %4563 = call float @dx.op.unary.f32(i32 6, float %4560)  ; FAbs(value)
  %4564 = fsub fast float %4562, %4563
  %4565 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4560, float %4564, float %4558, float %4560, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = call float @dx.op.unary.f32(i32 25, float %4565)  ; Rsqrt(value)
  %4567 = fmul fast float %4558, %4566
  %4568 = fmul fast float %4560, %4566
  %4569 = select i1 %4396, i32 %4386, i32 %4387
  %4570 = select i1 %4394, i32 %4385, i32 %4569
  %4571 = sitofp i32 %4570 to float
  %4572 = fmul fast float %4564, %4571
  %4573 = fmul fast float %4572, %4566
  %4574 = select i1 %4396, float %4573, float %4568
  %4575 = select i1 %4396, float %4568, float %4573
  %4576 = select i1 %4394, float %4573, float %4567
  %4577 = select i1 %4394, float %4568, float %4574
  %4578 = select i1 %4394, float %4567, float %4575
  %4579 = fsub fast float %4513, %3946
  %4580 = fsub fast float %4514, %3947
  %4581 = fsub fast float %4515, %3948
  %4582 = fmul fast float %4579, %4485
  %4583 = fmul fast float %4580, %4485
  %4584 = fmul fast float %4581, %4485
  %4585 = fadd fast float %4582, %3946
  %4586 = fadd fast float %4583, %3947
  %4587 = fadd fast float %4584, %3948
  %4588 = fsub fast float %4522, %3931
  %4589 = fsub fast float %4523, %3932
  %4590 = fsub fast float %4524, %3933
  %4591 = fmul fast float %4588, %4485
  %4592 = fmul fast float %4589, %4485
  %4593 = fmul fast float %4590, %4485
  %4594 = fadd fast float %4591, %3931
  %4595 = fadd fast float %4592, %3932
  %4596 = fadd fast float %4593, %3933
  %4597 = fadd fast float %4576, %3894
  %4598 = fadd fast float %4577, %3895
  %4599 = fadd fast float %4578, %3896
  %4600 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4597, float %4598, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = call float @dx.op.unary.f32(i32 25, float %4600)  ; Rsqrt(value)
  %4602 = fmul fast float %4597, %4601
  %4603 = fmul fast float %4598, %4601
  %4604 = fmul fast float %4599, %4601
  %4605 = fsub fast float %4602, %3894
  %4606 = fsub fast float %4603, %3895
  %4607 = fsub fast float %4604, %3896
  %4608 = fmul fast float %4605, %4485
  %4609 = fmul fast float %4606, %4485
  %4610 = fmul fast float %4607, %4485
  %4611 = fadd fast float %4608, %3894
  %4612 = fadd fast float %4609, %3895
  %4613 = fadd fast float %4610, %3896
  %4614 = call float @dx.op.binary.f32(i32 36, float %3906, float %4533)  ; FMin(a,b)
  %4615 = fsub fast float %4614, %3906
  %4616 = fmul fast float %4615, %4485
  %4617 = fadd fast float %4616, %3906
  %4618 = fsub fast float %4546, %3934
  %4619 = fmul fast float %4618, %4485
  %4620 = fadd fast float %4619, %3934
  br label %4621

; <label>:4621                                    ; preds = %4483, %4445, %4347
  %4622 = phi float [ %4585, %4483 ], [ %3946, %4445 ], [ %3946, %4347 ]
  %4623 = phi float [ %4586, %4483 ], [ %3947, %4445 ], [ %3947, %4347 ]
  %4624 = phi float [ %4587, %4483 ], [ %3948, %4445 ], [ %3948, %4347 ]
  %4625 = phi float [ %4594, %4483 ], [ %3931, %4445 ], [ %3931, %4347 ]
  %4626 = phi float [ %4595, %4483 ], [ %3932, %4445 ], [ %3932, %4347 ]
  %4627 = phi float [ %4596, %4483 ], [ %3933, %4445 ], [ %3933, %4347 ]
  %4628 = phi float [ %4611, %4483 ], [ %3894, %4445 ], [ %3894, %4347 ]
  %4629 = phi float [ %4612, %4483 ], [ %3895, %4445 ], [ %3895, %4347 ]
  %4630 = phi float [ %4613, %4483 ], [ %3896, %4445 ], [ %3896, %4347 ]
  %4631 = phi float [ %4620, %4483 ], [ %3934, %4445 ], [ %3934, %4347 ]
  %4632 = phi float [ %4617, %4483 ], [ %3906, %4445 ], [ %3906, %4347 ]
  br i1 %4345, label %4633, label %4906

; <label>:4633                                    ; preds = %4621
  %4634 = call float @dx.op.unary.f32(i32 23, float %4632)  ; Log(value)
  %4635 = fmul fast float %4634, 4.000000e+00
  %4636 = call float @dx.op.unary.f32(i32 21, float %4635)  ; Exp(value)
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 0
  %4639 = fmul fast float %4638, %66
  %4640 = fmul fast float %4638, %67
  %4641 = fmul fast float %4638, %68
  %4642 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4643 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4644 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4645 = call float @dx.op.unary.f32(i32 23, float %4642)  ; Log(value)
  %4646 = call float @dx.op.unary.f32(i32 23, float %4643)  ; Log(value)
  %4647 = call float @dx.op.unary.f32(i32 23, float %4644)  ; Log(value)
  %4648 = fmul fast float %4645, 4.000000e+00
  %4649 = fmul fast float %4646, 4.000000e+00
  %4650 = fmul fast float %4647, 4.000000e+00
  %4651 = call float @dx.op.unary.f32(i32 21, float %4648)  ; Exp(value)
  %4652 = call float @dx.op.unary.f32(i32 21, float %4649)  ; Exp(value)
  %4653 = call float @dx.op.unary.f32(i32 21, float %4650)  ; Exp(value)
  %4654 = fadd fast float %4652, %4651
  %4655 = fadd fast float %4654, %4653
  %4656 = fdiv fast float 1.000000e+00, %4655
  %4657 = fmul fast float %4656, %4651
  %4658 = fcmp fast ogt float %75, 0.000000e+00
  %4659 = fcmp fast ogt float %76, 0.000000e+00
  %4660 = fcmp fast ogt float %77, 0.000000e+00
  %4661 = fcmp fast olt float %75, 0.000000e+00
  %4662 = fcmp fast olt float %76, 0.000000e+00
  %4663 = fcmp fast olt float %77, 0.000000e+00
  %4664 = zext i1 %4658 to i32
  %4665 = zext i1 %4659 to i32
  %4666 = zext i1 %4660 to i32
  %4667 = zext i1 %4661 to i32
  %4668 = zext i1 %4662 to i32
  %4669 = zext i1 %4663 to i32
  %4670 = sub nsw i32 %4664, %4667
  %4671 = sub nsw i32 %4665, %4668
  %4672 = sub nsw i32 %4666, %4669
  %4673 = call float @dx.op.unary.f32(i32 83, float %4639)  ; DerivCoarseX(value)
  %4674 = call float @dx.op.unary.f32(i32 83, float %4640)  ; DerivCoarseX(value)
  %4675 = call float @dx.op.unary.f32(i32 83, float %4641)  ; DerivCoarseX(value)
  %4676 = call float @dx.op.unary.f32(i32 84, float %4639)  ; DerivCoarseY(value)
  %4677 = call float @dx.op.unary.f32(i32 84, float %4640)  ; DerivCoarseY(value)
  %4678 = call float @dx.op.unary.f32(i32 84, float %4641)  ; DerivCoarseY(value)
  %4679 = fcmp fast ole float %289, %4657
  %4680 = fmul fast float %4656, %4654
  %4681 = fcmp fast ole float %289, %4680
  %4682 = select i1 %4681, float %4641, float %4639
  %4683 = select i1 %4681, float %4639, float %4640
  %4684 = select i1 %4679, float %4640, float %4682
  %4685 = select i1 %4679, float %4641, float %4683
  %4686 = select i1 %4681, float %4675, float %4673
  %4687 = select i1 %4681, float %4673, float %4674
  %4688 = select i1 %4679, float %4674, float %4686
  %4689 = select i1 %4679, float %4675, float %4687
  %4690 = select i1 %4681, float %4678, float %4676
  %4691 = select i1 %4681, float %4676, float %4677
  %4692 = select i1 %4679, float %4677, float %4690
  %4693 = select i1 %4679, float %4678, float %4691
  %4694 = call float @dx.op.unary.f32(i32 27, float %4684)  ; Round_ni(value)
  %4695 = call float @dx.op.unary.f32(i32 27, float %4685)  ; Round_ni(value)
  %4696 = fptosi float %4694 to i32
  %4697 = fptosi float %4695 to i32
  %4698 = xor i32 %4697, %4696
  %4699 = sitofp i32 %4698 to float
  %4700 = fptosi float %4699 to i32
  %4701 = sitofp i32 %4700 to float
  %4702 = fmul fast float %4701, 0x3FE3C6EF40000000
  %4703 = frem fast float %4694, 2.560000e+02
  %4704 = frem fast float %4695, 2.560000e+02
  %4705 = fptoui float %4703 to i32
  %4706 = fptoui float %4704 to i32
  %4707 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4705, i32 %4706, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = fadd fast float %4708, %4702
  %4712 = fadd fast float %4709, %4702
  %4713 = fadd fast float %4710, %4702
  %4714 = call float @dx.op.unary.f32(i32 22, float %4711)  ; Frc(value)
  %4715 = call float @dx.op.unary.f32(i32 22, float %4712)  ; Frc(value)
  %4716 = call float @dx.op.unary.f32(i32 22, float %4713)  ; Frc(value)
  %4717 = fmul fast float %4716, 0x401921FB60000000
  %4718 = call float @dx.op.unary.f32(i32 13, float %4717)  ; Sin(value)
  %4719 = call float @dx.op.unary.f32(i32 12, float %4717)  ; Cos(value)
  %4720 = fsub fast float -0.000000e+00, %4719
  %4721 = fmul fast float %4719, %4684
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %4718, float %4685, float %4721)  ; FMad(a,b,c)
  %4723 = fmul fast float %4718, %4684
  %4724 = call float @dx.op.tertiary.f32(i32 46, float %4720, float %4685, float %4723)  ; FMad(a,b,c)
  %4725 = fadd fast float %4722, %4714
  %4726 = fadd fast float %4724, %4715
  %4727 = extractvalue %dx.types.CBufRet.f32 %4637, 3
  %4728 = bitcast float %4727 to i32
  %4729 = icmp eq i32 %4728, 0
  br i1 %4729, label %4768, label %4730

; <label>:4730                                    ; preds = %4633
  %4731 = add i32 %4728, 0
  %4732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4732, %dx.types.Handle %120, float %4725, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4689, float undef, float %4692, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4737 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4738 = fsub fast float 1.000000e+00, %4343
  %4739 = call float @dx.op.binary.f32(i32 35, float %4738, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4740 = bitcast float %4343 to i32
  %4741 = sitofp i32 %4740 to float
  %4742 = fadd fast float %4741, 0xC1CFBF8940000000
  %4743 = fmul fast float %4737, %4742
  %4744 = fadd fast float %4743, 0x41CFBF8940000000
  %4745 = fptosi float %4744 to i32
  %4746 = bitcast i32 %4745 to float
  %4747 = bitcast float %4739 to i32
  %4748 = sitofp i32 %4747 to float
  %4749 = fadd fast float %4748, 0xC1CFBF8940000000
  %4750 = fmul fast float %4749, %4737
  %4751 = fadd fast float %4750, 0x41CFBF8940000000
  %4752 = fptosi float %4751 to i32
  %4753 = bitcast i32 %4752 to float
  %4754 = fmul fast float %4746, %4736
  %4755 = fmul fast float %4753, %4736
  %4756 = fsub fast float %4739, %4754
  %4757 = fadd fast float %4755, %4739
  %4758 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4760 = fsub fast float %4734, %4758
  %4761 = fsub fast float %4759, %4758
  %4762 = bitcast float %4761 to i32
  %4763 = sub nsw i32 2129859010, %4762
  %4764 = bitcast i32 %4763 to float
  %4765 = fmul fast float %4764, %4760
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = fcmp fast olt float %4766, 0x3F70101020000000
  br i1 %4767, label %4906, label %4768

; <label>:4768                                    ; preds = %4730, %4633
  %4769 = phi float [ %4766, %4730 ], [ %4343, %4633 ]
  %4770 = fmul fast float %4769, %4636
  %4771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.i32 %4771, 1
  %4773 = extractvalue %dx.types.CBufRet.i32 %4771, 0
  %4774 = add i32 %4773, 0
  %4775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4776 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4775, %dx.types.Handle %119, float %4725, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4689, float undef, float %4692, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4780 = extractvalue %dx.types.ResRet.f32 %4776, 3
  %4781 = and i32 %4772, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = lshr i32 %4772, 8
  %4784 = and i32 %4783, 255
  %4785 = uitofp i32 %4784 to float
  %4786 = fmul fast float %4780, %4782
  %4787 = fadd fast float %4786, %4785
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fadd fast float %4788, 0xBFB99999A0000000
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = fmul fast float %4790, 0x3FF1C71C80000000
  %4792 = call float @dx.op.binary.f32(i32 36, float %4788, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4793 = fsub fast float 1.000000e+00, %4791
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fmul fast float %4794, %4777
  %4796 = fmul fast float %4794, %4778
  %4797 = fmul fast float %4794, %4779
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = fmul fast float %4791, %4777
  %4802 = fmul fast float %4791, %4778
  %4803 = fmul fast float %4791, %4779
  %4804 = fadd fast float %4801, %4792
  %4805 = fadd fast float %4802, %4792
  %4806 = fadd fast float %4803, %4792
  %4807 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.i32 %4810, 3
  %4812 = extractvalue %dx.types.CBufRet.i32 %4810, 2
  %4813 = add i32 %4812, 0
  %4814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4814, %dx.types.Handle %119, float %4725, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4689, float undef, float %4692, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = extractvalue %dx.types.ResRet.f32 %4815, 3
  %4820 = and i32 %4811, 255
  %4821 = uitofp i32 %4820 to float
  %4822 = lshr i32 %4811, 8
  %4823 = and i32 %4822, 255
  %4824 = uitofp i32 %4823 to float
  %4825 = lshr i32 %4811, 16
  %4826 = and i32 %4825, 255
  %4827 = uitofp i32 %4826 to float
  %4828 = fmul fast float %4827, 0x3F70101000000000
  %4829 = fmul fast float %4816, %4821
  %4830 = fadd fast float %4829, %4824
  %4831 = fmul fast float %4830, 0x3F70101000000000
  %4832 = fadd fast float %4817, -5.000000e-01
  %4833 = fadd fast float %4819, -5.000000e-01
  %4834 = fmul fast float %4832, %4828
  %4835 = fmul fast float %4833, %4828
  %4836 = fadd fast float %4834, 5.000000e-01
  %4837 = fadd fast float %4835, 5.000000e-01
  %4838 = fmul fast float %4836, 2.000000e+00
  %4839 = fadd fast float %4838, -1.000000e+00
  %4840 = fmul fast float %4837, 2.000000e+00
  %4841 = fadd fast float %4840, -1.000000e+00
  %4842 = fadd fast float %4839, %4841
  %4843 = fmul fast float %4842, 5.000000e-01
  %4844 = fsub fast float %4839, %4841
  %4845 = fmul fast float %4844, 5.000000e-01
  %4846 = call float @dx.op.unary.f32(i32 6, float %4843)  ; FAbs(value)
  %4847 = fsub fast float 1.000000e+00, %4846
  %4848 = call float @dx.op.unary.f32(i32 6, float %4845)  ; FAbs(value)
  %4849 = fsub fast float %4847, %4848
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4845, float %4849, float %4843, float %4845, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = call float @dx.op.unary.f32(i32 25, float %4850)  ; Rsqrt(value)
  %4852 = fmul fast float %4843, %4851
  %4853 = fmul fast float %4845, %4851
  %4854 = select i1 %4681, i32 %4671, i32 %4672
  %4855 = select i1 %4679, i32 %4670, i32 %4854
  %4856 = sitofp i32 %4855 to float
  %4857 = fmul fast float %4849, %4856
  %4858 = fmul fast float %4857, %4851
  %4859 = select i1 %4681, float %4858, float %4853
  %4860 = select i1 %4681, float %4853, float %4858
  %4861 = select i1 %4679, float %4858, float %4852
  %4862 = select i1 %4679, float %4853, float %4859
  %4863 = select i1 %4679, float %4852, float %4860
  %4864 = fsub fast float %4798, %4622
  %4865 = fsub fast float %4799, %4623
  %4866 = fsub fast float %4800, %4624
  %4867 = fmul fast float %4864, %4770
  %4868 = fmul fast float %4865, %4770
  %4869 = fmul fast float %4866, %4770
  %4870 = fadd fast float %4867, %4622
  %4871 = fadd fast float %4868, %4623
  %4872 = fadd fast float %4869, %4624
  %4873 = fsub fast float %4807, %4625
  %4874 = fsub fast float %4808, %4626
  %4875 = fsub fast float %4809, %4627
  %4876 = fmul fast float %4873, %4770
  %4877 = fmul fast float %4874, %4770
  %4878 = fmul fast float %4875, %4770
  %4879 = fadd fast float %4876, %4625
  %4880 = fadd fast float %4877, %4626
  %4881 = fadd fast float %4878, %4627
  %4882 = fadd fast float %4861, %4628
  %4883 = fadd fast float %4862, %4629
  %4884 = fadd fast float %4863, %4630
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float %4882, float %4883, float %4884)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = call float @dx.op.unary.f32(i32 25, float %4885)  ; Rsqrt(value)
  %4887 = fmul fast float %4882, %4886
  %4888 = fmul fast float %4883, %4886
  %4889 = fmul fast float %4884, %4886
  %4890 = fsub fast float %4887, %4628
  %4891 = fsub fast float %4888, %4629
  %4892 = fsub fast float %4889, %4630
  %4893 = fmul fast float %4890, %4770
  %4894 = fmul fast float %4891, %4770
  %4895 = fmul fast float %4892, %4770
  %4896 = fadd fast float %4893, %4628
  %4897 = fadd fast float %4894, %4629
  %4898 = fadd fast float %4895, %4630
  %4899 = call float @dx.op.binary.f32(i32 36, float %4632, float %4818)  ; FMin(a,b)
  %4900 = fsub fast float %4899, %4632
  %4901 = fmul fast float %4900, %4770
  %4902 = fadd fast float %4901, %4632
  %4903 = fsub fast float %4831, %4631
  %4904 = fmul fast float %4903, %4770
  %4905 = fadd fast float %4904, %4631
  br label %4906

; <label>:4906                                    ; preds = %4768, %4730, %4621, %4337
  %4907 = phi float [ %4870, %4768 ], [ %4622, %4730 ], [ %4622, %4621 ], [ %3946, %4337 ]
  %4908 = phi float [ %4871, %4768 ], [ %4623, %4730 ], [ %4623, %4621 ], [ %3947, %4337 ]
  %4909 = phi float [ %4872, %4768 ], [ %4624, %4730 ], [ %4624, %4621 ], [ %3948, %4337 ]
  %4910 = phi float [ %4879, %4768 ], [ %4625, %4730 ], [ %4625, %4621 ], [ %3931, %4337 ]
  %4911 = phi float [ %4880, %4768 ], [ %4626, %4730 ], [ %4626, %4621 ], [ %3932, %4337 ]
  %4912 = phi float [ %4881, %4768 ], [ %4627, %4730 ], [ %4627, %4621 ], [ %3933, %4337 ]
  %4913 = phi float [ %4896, %4768 ], [ %4628, %4730 ], [ %4628, %4621 ], [ %3894, %4337 ]
  %4914 = phi float [ %4897, %4768 ], [ %4629, %4730 ], [ %4629, %4621 ], [ %3895, %4337 ]
  %4915 = phi float [ %4898, %4768 ], [ %4630, %4730 ], [ %4630, %4621 ], [ %3896, %4337 ]
  %4916 = phi float [ %4905, %4768 ], [ %4631, %4730 ], [ %4631, %4621 ], [ %3934, %4337 ]
  %4917 = phi float [ %4902, %4768 ], [ %4632, %4730 ], [ %4632, %4621 ], [ %3906, %4337 ]
  %4918 = fcmp fast une float %4341, 0.000000e+00
  %4919 = call float @dx.op.dot3.f32(i32 55, float %206, float %207, float %208, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.unary.f32(i32 25, float %4919)  ; Rsqrt(value)
  br i1 %4918, label %4928, label %4921

; <label>:4921                                    ; preds = %4906
  %4922 = fmul fast float %4920, %206
  %4923 = fmul fast float %4920, %207
  %4924 = fmul fast float %4920, %208
  %4925 = fsub fast float -0.000000e+00, %4922
  %4926 = fsub fast float -0.000000e+00, %4923
  %4927 = fsub fast float -0.000000e+00, %4924
  br label %5095

; <label>:4928                                    ; preds = %4906
  %4929 = fmul fast float %206, %4920
  %4930 = fsub fast float -0.000000e+00, %4929
  %4931 = fmul fast float %207, %4920
  %4932 = fsub fast float -0.000000e+00, %4931
  %4933 = fmul fast float %208, %4920
  %4934 = fsub fast float -0.000000e+00, %4933
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4932, float %4934, float %132, float %134, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = fmul fast float %4341, 2.500000e+00
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = fmul fast float %4341, 0x4013FFFFE0000000
  %4939 = fadd fast float %4938, 0xBFFFFFFFE0000000
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4341, 0x4004000020000000
  %4942 = fadd fast float %4941, 0xBFF8000040000000
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %3913, 1.000000e+01
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fmul fast float %4945, 2.000000e+00
  %4947 = fsub fast float 3.000000e+00, %4946
  %4948 = fmul fast float %4945, %4945
  %4949 = fmul fast float %4948, %4947
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = fsub fast float 0x3FE3333340000000, %4916
  %4952 = fmul fast float %4951, 0x400AAAAAA0000000
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fmul fast float %4950, %4953
  %4955 = fmul fast float %4907, 0x3FEA2B8620000000
  %4956 = fmul fast float %4908, 0x3FEA2B8620000000
  %4957 = fmul fast float %4909, 0x3FEA2B8620000000
  %4958 = fadd fast float %4955, 0x3FC81DFBA0000000
  %4959 = fmul fast float %4958, %4907
  %4960 = fadd fast float %4959, 0x3F910E6020000000
  %4961 = fadd fast float %4956, 0x3FC81DFBA0000000
  %4962 = fmul fast float %4961, %4908
  %4963 = fadd fast float %4962, 0x3F910E6020000000
  %4964 = fadd fast float %4957, 0x3FC81DFBA0000000
  %4965 = fmul fast float %4964, %4909
  %4966 = fadd fast float %4965, 0x3F910E6020000000
  %4967 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = fsub fast float %4967, %4907
  %4971 = fsub fast float %4968, %4908
  %4972 = fsub fast float %4969, %4909
  %4973 = fmul fast float %4970, %4937
  %4974 = fmul fast float %4973, %4954
  %4975 = fmul fast float %4971, %4937
  %4976 = fmul fast float %4975, %4954
  %4977 = fmul fast float %4972, %4937
  %4978 = fmul fast float %4977, %4954
  %4979 = fadd fast float %4974, %4907
  %4980 = fadd fast float %4976, %4908
  %4981 = fadd fast float %4978, %4909
  %4982 = fmul fast float %4917, %4917
  %4983 = fmul fast float %4982, %4982
  %4984 = fadd fast float %4940, 1.000000e+00
  %4985 = fsub fast float %4984, %4954
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = call float @dx.op.dot3.f32(i32 55, float %132, float %134, float %136, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fsub fast float 1.000000e+00, %4983
  %4990 = call float @dx.op.binary.f32(i32 36, float %4986, float %4989)  ; FMin(a,b)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4990, float %4991)  ; FMax(a,b)
  %4993 = fadd fast float %4988, 0xBFE4CCCCC0000000
  %4994 = fmul fast float %4993, 0x4006DB6DA0000000
  %4995 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4996 = fmul fast float %4995, 2.000000e+00
  %4997 = fsub fast float 3.000000e+00, %4996
  %4998 = bitcast float %4910 to i32
  %4999 = ashr i32 %4998, 1
  %5000 = add nsw i32 %4999, 532487669
  %5001 = bitcast i32 %5000 to float
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = fmul fast float %5005, 2.000000e+00
  %5007 = bitcast float %4911 to i32
  %5008 = ashr i32 %5007, 1
  %5009 = add nsw i32 %5008, 532487669
  %5010 = bitcast i32 %5009 to float
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, 2.000000e+00
  %5016 = bitcast float %4912 to i32
  %5017 = ashr i32 %5016, 1
  %5018 = add nsw i32 %5017, 532487669
  %5019 = bitcast i32 %5018 to float
  %5020 = fsub fast float 1.000000e+00, %5019
  %5021 = bitcast float %5020 to i32
  %5022 = sub nsw i32 2129859010, %5021
  %5023 = bitcast i32 %5022 to float
  %5024 = fmul fast float %5023, 2.000000e+00
  %5025 = fsub fast float 0x4002A9FBE0000000, %5006
  %5026 = fadd fast float %5006, 0x3FD54FDF00000000
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %5029, %5025
  %5031 = fmul fast float %5030, %5030
  %5032 = fsub fast float 0x4002A9FBE0000000, %5015
  %5033 = fadd fast float %5015, 0x3FD54FDF00000000
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = fmul fast float %5036, %5032
  %5038 = fmul fast float %5037, %5037
  %5039 = fsub fast float 0x4002A9FBE0000000, %5024
  %5040 = fadd fast float %5024, 0x3FD54FDF00000000
  %5041 = bitcast float %5040 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = fmul fast float %5043, %5039
  %5045 = fmul fast float %5044, %5044
  %5046 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5031)  ; FMax(a,b)
  %5047 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5038)  ; FMax(a,b)
  %5048 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5045)  ; FMax(a,b)
  %5049 = fsub fast float 1.000000e+00, %4935
  %5050 = fadd fast float %5049, %4950
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = fsub fast float 1.000000e+00, %4322
  %5053 = fmul fast float %4992, %5052
  %5054 = fmul fast float %4995, %4995
  %5055 = fmul fast float %5054, %5053
  %5056 = fmul fast float %5055, %4997
  %5057 = fmul fast float %5052, 0xBFE99999A0000000
  %5058 = fmul fast float %5057, %4937
  %5059 = fmul fast float %5058, %4954
  %5060 = fadd fast float %5059, 1.000000e+00
  %5061 = fadd fast float %4916, -1.000000e+00
  %5062 = fmul fast float %5060, %5061
  %5063 = fadd fast float %5062, 1.000000e+00
  %5064 = fsub fast float %5046, %4910
  %5065 = fsub fast float %5047, %4911
  %5066 = fsub fast float %5048, %4912
  %5067 = fmul fast float %5056, %5064
  %5068 = fmul fast float %5056, %5065
  %5069 = fmul fast float %5056, %5066
  %5070 = fadd fast float %5067, %4910
  %5071 = fadd fast float %5068, %4911
  %5072 = fadd fast float %5069, %4912
  %5073 = fsub fast float %132, %4913
  %5074 = fsub fast float %134, %4914
  %5075 = fsub fast float %136, %4915
  %5076 = fmul fast float %5056, %5073
  %5077 = fmul fast float %5056, %5074
  %5078 = fmul fast float %5056, %5075
  %5079 = fadd fast float %5076, %4913
  %5080 = fadd fast float %5077, %4914
  %5081 = fadd fast float %5078, %4915
  %5082 = fmul fast float %5056, %5051
  %5083 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5084 = fsub fast float 1.000000e+00, %5083
  %5085 = fmul fast float %5082, %5084
  %5086 = fadd fast float %5085, %5083
  %5087 = fsub fast float 1.000000e+00, %4917
  %5088 = fmul fast float %5056, %5087
  %5089 = fadd fast float %5088, %4917
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %5081, float %5079, float %5080, float %5081)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = call float @dx.op.unary.f32(i32 25, float %5090)  ; Rsqrt(value)
  %5092 = fmul fast float %5079, %5091
  %5093 = fmul fast float %5080, %5091
  %5094 = fmul fast float %5081, %5091
  br label %5095

; <label>:5095                                    ; preds = %4928, %4921
  %5096 = phi float [ %4927, %4921 ], [ %4934, %4928 ]
  %5097 = phi float [ %4926, %4921 ], [ %4932, %4928 ]
  %5098 = phi float [ %4925, %4921 ], [ %4930, %4928 ]
  %5099 = phi float [ %4924, %4921 ], [ %4933, %4928 ]
  %5100 = phi float [ %4923, %4921 ], [ %4931, %4928 ]
  %5101 = phi float [ %4922, %4921 ], [ %4929, %4928 ]
  %5102 = phi float [ %4907, %4921 ], [ %4979, %4928 ]
  %5103 = phi float [ %4908, %4921 ], [ %4980, %4928 ]
  %5104 = phi float [ %4909, %4921 ], [ %4981, %4928 ]
  %5105 = phi float [ %4910, %4921 ], [ %5070, %4928 ]
  %5106 = phi float [ %4911, %4921 ], [ %5071, %4928 ]
  %5107 = phi float [ %4912, %4921 ], [ %5072, %4928 ]
  %5108 = phi float [ %4913, %4921 ], [ %5092, %4928 ]
  %5109 = phi float [ %4914, %4921 ], [ %5093, %4928 ]
  %5110 = phi float [ %4915, %4921 ], [ %5094, %4928 ]
  %5111 = phi float [ %4916, %4921 ], [ %5086, %4928 ]
  %5112 = phi float [ %4917, %4921 ], [ %5089, %4928 ]
  %5113 = fsub fast float -0.000000e+00, %208
  %5114 = select i1 %278, float 0.000000e+00, float %5107
  %5115 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %5098, float %5097, float %5096)  ; Dot3(ax,ay,az,bx,by,bz)
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5101, float %5100, float %5099, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = fmul fast float %5117, 2.000000e+00
  %5119 = fmul fast float %5118, %5108
  %5120 = fmul fast float %5118, %5109
  %5121 = fmul fast float %5118, %5110
  %5122 = fsub fast float %5101, %5119
  %5123 = fsub fast float %5100, %5120
  %5124 = fsub fast float %5099, %5121
  %5125 = call float @dx.op.binary.f32(i32 36, float %5112, float 1.000000e+00)  ; FMin(a,b)
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = bitcast float %5126 to i32
  %5128 = ashr i32 %5127, 1
  %5129 = add nsw i32 %5128, 532487669
  %5130 = bitcast i32 %5129 to float
  %5131 = fsub fast float 1.000000e+00, %5111
  %5132 = call float @dx.op.binary.f32(i32 35, float %5131, float 0x3F847AE140000000)  ; FMax(a,b)
  %5133 = fmul fast float %5132, %5132
  %5134 = fmul fast float %5133, %5133
  %5135 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5130, float %5134, float %5135, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5137 = extractvalue %dx.types.ResRet.f32 %5136, 0
  %5138 = fsub fast float 1.000000e+00, %5112
  %5139 = bitcast float %5138 to i32
  %5140 = sub nsw i32 2129859010, %5139
  %5141 = call float @dx.op.dot3.f32(i32 55, float %90, float %86, float %82, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = fmul fast float %5141, 0x3FD20DD760000000
  %5143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %90)  ; FMax(a,b)
  %5144 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = fcmp fast oeq float %5144, 0.000000e+00
  %5146 = fcmp fast oeq float %5143, 0.000000e+00
  %5147 = or i1 %5146, %5145
  br i1 %5147, label %5177, label %5148

; <label>:5148                                    ; preds = %5095
  %5149 = fsub fast float -0.000000e+00, %93
  %5150 = fsub fast float -0.000000e+00, %91
  %5151 = call float @dx.op.unary.f32(i32 24, float %5144)  ; Sqrt(value)
  %5152 = fdiv fast float %5151, %5143
  %5153 = fcmp fast ogt float %5152, 0x3FFB6F8900000000
  %5154 = select i1 %5153, float 0x3FFB6F8900000000, float %5152
  %5155 = fmul fast float %5154, 0x3FE8A23460000000
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = call float @dx.op.binary.f32(i32 35, float %5154, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5158 = fmul fast float %5156, %5143
  %5159 = fmul fast float %5157, 0x3FF279A740000000
  %5160 = fadd fast float %5159, -1.000000e+00
  %5161 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %92, float %5149, float %5150, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call float @dx.op.unary.f32(i32 25, float %5161)  ; Rsqrt(value)
  %5163 = fmul fast float %5162, %5149
  %5164 = fmul fast float %5162, %5150
  %5165 = fmul fast float %5162, %92
  %5166 = fmul fast float %5160, %5160
  %5167 = fsub fast float 1.000000e+00, %5166
  %5168 = fmul fast float %5157, 0x40005F8BE0000000
  %5169 = fsub fast float 0x400C5BF8A0000000, %5168
  %5170 = fdiv fast float %5158, %5169
  %5171 = fmul fast float %5170, 0x3FEE31C3C0000000
  %5172 = fmul fast float %5171, %5167
  %5173 = fmul fast float %5157, 0x3FDACB7480000000
  %5174 = fadd fast float %5173, 0xBFD7347680000000
  %5175 = fmul fast float %5174, %5170
  %5176 = fmul fast float %5175, %5167
  br label %5177

; <label>:5177                                    ; preds = %5148, %5095
  %5178 = phi float [ %5163, %5148 ], [ 0.000000e+00, %5095 ]
  %5179 = phi float [ %5164, %5148 ], [ 0.000000e+00, %5095 ]
  %5180 = phi float [ %5165, %5148 ], [ 0.000000e+00, %5095 ]
  %5181 = phi float [ %5172, %5148 ], [ 0.000000e+00, %5095 ]
  %5182 = phi float [ %5176, %5148 ], [ 0.000000e+00, %5095 ]
  %5183 = call float @dx.op.dot3.f32(i32 55, float %5178, float %5179, float %5180, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = fmul fast float %5183, %5183
  %5185 = fmul fast float %5184, 0x3FEE471020000000
  %5186 = fadd fast float %5185, 0xBFD42F6020000000
  %5187 = fmul fast float %5143, 0x3FD20DD760000000
  %5188 = fmul fast float %5186, %5182
  %5189 = fmul fast float %5181, 0x3FDF454380000000
  %5190 = fmul fast float %5189, %5183
  %5191 = fadd fast float %5190, %5187
  %5192 = fadd fast float %5191, %5188
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5178, float %5179, float %5180, float %5122, float %5123, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = fmul fast float %5193, 0x3FDF454380000000
  %5195 = fmul fast float %5193, %5193
  %5196 = fmul fast float %5195, 0x3FEE471020000000
  %5197 = fadd fast float %5196, 0xBFD42F6020000000
  %5198 = call float @dx.op.dot3.f32(i32 55, float %5143, float %5181, float %5182, float 0x3FD20DD760000000, float %5194, float %5197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5200 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = fcmp fast oeq float %5200, 0.000000e+00
  %5202 = fcmp fast oeq float %5199, 0.000000e+00
  %5203 = or i1 %5202, %5201
  br i1 %5203, label %5233, label %5204

; <label>:5204                                    ; preds = %5177
  %5205 = fsub fast float -0.000000e+00, %89
  %5206 = fsub fast float -0.000000e+00, %87
  %5207 = call float @dx.op.unary.f32(i32 24, float %5200)  ; Sqrt(value)
  %5208 = fdiv fast float %5207, %5199
  %5209 = fcmp fast ogt float %5208, 0x3FFB6F8900000000
  %5210 = select i1 %5209, float 0x3FFB6F8900000000, float %5208
  %5211 = fmul fast float %5210, 0x3FE8A23460000000
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = call float @dx.op.binary.f32(i32 35, float %5210, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5214 = fmul fast float %5212, %5199
  %5215 = fmul fast float %5213, 0x3FF279A740000000
  %5216 = fadd fast float %5215, -1.000000e+00
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %88, float %5205, float %5206, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = call float @dx.op.unary.f32(i32 25, float %5217)  ; Rsqrt(value)
  %5219 = fmul fast float %5218, %5205
  %5220 = fmul fast float %5218, %5206
  %5221 = fmul fast float %5218, %88
  %5222 = fmul fast float %5216, %5216
  %5223 = fsub fast float 1.000000e+00, %5222
  %5224 = fmul fast float %5213, 0x40005F8BE0000000
  %5225 = fsub fast float 0x400C5BF8A0000000, %5224
  %5226 = fdiv fast float %5214, %5225
  %5227 = fmul fast float %5226, 0x3FEE31C3C0000000
  %5228 = fmul fast float %5227, %5223
  %5229 = fmul fast float %5213, 0x3FDACB7480000000
  %5230 = fadd fast float %5229, 0xBFD7347680000000
  %5231 = fmul fast float %5230, %5226
  %5232 = fmul fast float %5231, %5223
  br label %5233

; <label>:5233                                    ; preds = %5204, %5177
  %5234 = phi float [ %5219, %5204 ], [ 0.000000e+00, %5177 ]
  %5235 = phi float [ %5220, %5204 ], [ 0.000000e+00, %5177 ]
  %5236 = phi float [ %5221, %5204 ], [ 0.000000e+00, %5177 ]
  %5237 = phi float [ %5228, %5204 ], [ 0.000000e+00, %5177 ]
  %5238 = phi float [ %5232, %5204 ], [ 0.000000e+00, %5177 ]
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5235, float %5236, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = fmul fast float %5239, %5239
  %5241 = fmul fast float %5240, 0x3FEE471020000000
  %5242 = fadd fast float %5241, 0xBFD42F6020000000
  %5243 = fmul fast float %5199, 0x3FD20DD760000000
  %5244 = fmul fast float %5242, %5238
  %5245 = fmul fast float %5237, 0x3FDF454380000000
  %5246 = fmul fast float %5245, %5239
  %5247 = fadd fast float %5246, %5243
  %5248 = fadd fast float %5247, %5244
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5235, float %5236, float %5122, float %5123, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = fmul fast float %5249, 0x3FDF454380000000
  %5251 = fmul fast float %5249, %5249
  %5252 = fmul fast float %5251, 0x3FEE471020000000
  %5253 = fadd fast float %5252, 0xBFD42F6020000000
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5199, float %5237, float %5238, float 0x3FD20DD760000000, float %5250, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5256 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5257 = fcmp fast oeq float %5256, 0.000000e+00
  %5258 = fcmp fast oeq float %5255, 0.000000e+00
  %5259 = or i1 %5258, %5257
  br i1 %5259, label %5289, label %5260

; <label>:5260                                    ; preds = %5233
  %5261 = fsub fast float -0.000000e+00, %85
  %5262 = fsub fast float -0.000000e+00, %83
  %5263 = call float @dx.op.unary.f32(i32 24, float %5256)  ; Sqrt(value)
  %5264 = fdiv fast float %5263, %5255
  %5265 = fcmp fast ogt float %5264, 0x3FFB6F8900000000
  %5266 = select i1 %5265, float 0x3FFB6F8900000000, float %5264
  %5267 = fmul fast float %5266, 0x3FE8A23460000000
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = call float @dx.op.binary.f32(i32 35, float %5266, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5270 = fmul fast float %5268, %5255
  %5271 = fmul fast float %5269, 0x3FF279A740000000
  %5272 = fadd fast float %5271, -1.000000e+00
  %5273 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %84, float %5261, float %5262, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = call float @dx.op.unary.f32(i32 25, float %5273)  ; Rsqrt(value)
  %5275 = fmul fast float %5274, %5261
  %5276 = fmul fast float %5274, %5262
  %5277 = fmul fast float %5274, %84
  %5278 = fmul fast float %5272, %5272
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = fmul fast float %5269, 0x40005F8BE0000000
  %5281 = fsub fast float 0x400C5BF8A0000000, %5280
  %5282 = fdiv fast float %5270, %5281
  %5283 = fmul fast float %5282, 0x3FEE31C3C0000000
  %5284 = fmul fast float %5283, %5279
  %5285 = fmul fast float %5269, 0x3FDACB7480000000
  %5286 = fadd fast float %5285, 0xBFD7347680000000
  %5287 = fmul fast float %5286, %5282
  %5288 = fmul fast float %5287, %5279
  br label %5289

; <label>:5289                                    ; preds = %5260, %5233
  %5290 = phi float [ %5275, %5260 ], [ 0.000000e+00, %5233 ]
  %5291 = phi float [ %5276, %5260 ], [ 0.000000e+00, %5233 ]
  %5292 = phi float [ %5277, %5260 ], [ 0.000000e+00, %5233 ]
  %5293 = phi float [ %5284, %5260 ], [ 0.000000e+00, %5233 ]
  %5294 = phi float [ %5288, %5260 ], [ 0.000000e+00, %5233 ]
  %5295 = call float @dx.op.dot3.f32(i32 55, float %5290, float %5291, float %5292, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = fmul fast float %5295, %5295
  %5297 = fmul fast float %5296, 0x3FEE471020000000
  %5298 = fadd fast float %5297, 0xBFD42F6020000000
  %5299 = fmul fast float %5255, 0x3FD20DD760000000
  %5300 = fmul fast float %5298, %5294
  %5301 = fmul fast float %5293, 0x3FDF454380000000
  %5302 = fmul fast float %5301, %5295
  %5303 = fadd fast float %5302, %5299
  %5304 = fadd fast float %5303, %5300
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5290, float %5291, float %5292, float %5122, float %5123, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = fmul fast float %5305, 0x3FDF454380000000
  %5307 = fmul fast float %5305, %5305
  %5308 = fmul fast float %5307, 0x3FEE471020000000
  %5309 = fadd fast float %5308, 0xBFD42F6020000000
  %5310 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5293, float %5294, float 0x3FD20DD760000000, float %5306, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = call float @dx.op.binary.f32(i32 35, float %5192, float 0.000000e+00)  ; FMax(a,b)
  %5312 = call float @dx.op.binary.f32(i32 35, float %5248, float 0.000000e+00)  ; FMax(a,b)
  %5313 = call float @dx.op.binary.f32(i32 35, float %5304, float 0.000000e+00)  ; FMax(a,b)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5198, float 0.000000e+00)  ; FMax(a,b)
  %5315 = call float @dx.op.binary.f32(i32 35, float %5254, float 0.000000e+00)  ; FMax(a,b)
  %5316 = call float @dx.op.binary.f32(i32 35, float %5310, float 0.000000e+00)  ; FMax(a,b)
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = call float @dx.op.binary.f32(i32 36, float %5102, float %5318)  ; FMin(a,b)
  %5320 = fmul fast float %5319, %5126
  %5321 = fsub fast float 1.000000e+00, %5320
  %5322 = bitcast float %5321 to i32
  %5323 = sub nsw i32 2129859010, %5322
  %5324 = bitcast i32 %5323 to float
  %5325 = call float @dx.op.binary.f32(i32 36, float %5103, float %5318)  ; FMin(a,b)
  %5326 = fmul fast float %5325, %5126
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = call float @dx.op.binary.f32(i32 36, float %5104, float %5318)  ; FMin(a,b)
  %5332 = fmul fast float %5331, %5126
  %5333 = fsub fast float 1.000000e+00, %5332
  %5334 = bitcast float %5333 to i32
  %5335 = sub nsw i32 2129859010, %5334
  %5336 = bitcast i32 %5335 to float
  %5337 = fmul fast float %5311, %5125
  %5338 = fmul fast float %5337, %5324
  %5339 = fmul fast float %5312, %5125
  %5340 = fmul fast float %5339, %5330
  %5341 = fmul fast float %5313, %5125
  %5342 = fmul fast float %5341, %5336
  %5343 = call float @dx.op.binary.f32(i32 36, float %5105, float %5318)  ; FMin(a,b)
  %5344 = fmul fast float %5343, %5126
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = call float @dx.op.binary.f32(i32 36, float %5106, float %5318)  ; FMin(a,b)
  %5350 = fmul fast float %5349, %5126
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = call float @dx.op.binary.f32(i32 36, float %5114, float %5318)  ; FMin(a,b)
  %5356 = fmul fast float %5355, %5126
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = fmul fast float %5314, %5125
  %5362 = fmul fast float %5361, %5348
  %5363 = fmul fast float %5315, %5125
  %5364 = fmul fast float %5363, %5354
  %5365 = fmul fast float %5316, %5125
  %5366 = fmul fast float %5365, %5360
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5340, float %5342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = select i1 %278, float 0.000000e+00, float %5338
  %5369 = select i1 %278, float %5367, float %5340
  %5370 = select i1 %278, float 0.000000e+00, float %5342
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5364, float %5366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = select i1 %278, float 0.000000e+00, float %5362
  %5373 = select i1 %278, float %5371, float %5364
  %5374 = select i1 %278, float 0.000000e+00, float %5366
  %5375 = fmul fast float %5116, 9.843750e-01
  %5376 = fmul fast float %5111, 9.843750e-01
  %5377 = fadd fast float %5375, 7.812500e-03
  %5378 = fadd fast float %5376, 7.812500e-03
  %5379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 2
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 3
  %5382 = fmul fast float %5380, %5105
  %5383 = fmul fast float %5380, %5106
  %5384 = fmul fast float %5380, %5114
  %5385 = fadd fast float %5382, %5381
  %5386 = fadd fast float %5383, %5381
  %5387 = fadd fast float %5384, %5381
  %5388 = fcmp fast ogt float %3907, 0.000000e+00
  br i1 %5388, label %5389, label %5415

; <label>:5389                                    ; preds = %5289
  %5390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3907, float %5116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.ResRet.f32 %5390, 1
  %5393 = extractvalue %dx.types.ResRet.f32 %5390, 2
  %5394 = fadd fast float %5391, -5.000000e-01
  %5395 = fadd fast float %5392, -5.000000e-01
  %5396 = fadd fast float %5393, -5.000000e-01
  %5397 = fsub fast float 1.000000e+00, %5105
  %5398 = fsub fast float 1.000000e+00, %5106
  %5399 = fsub fast float 1.000000e+00, %5114
  %5400 = fmul fast float %5105, 4.000000e+00
  %5401 = fmul fast float %5400, %5397
  %5402 = fmul fast float %5401, %5394
  %5403 = fmul fast float %5106, 4.000000e+00
  %5404 = fmul fast float %5403, %5398
  %5405 = fmul fast float %5404, %5395
  %5406 = fmul fast float %5114, 4.000000e+00
  %5407 = fmul fast float %5406, %5399
  %5408 = fmul fast float %5407, %5396
  %5409 = fadd fast float %5402, %5385
  %5410 = fadd fast float %5405, %5386
  %5411 = fadd fast float %5408, %5387
  %5412 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5413 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5414 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  br label %5415

; <label>:5415                                    ; preds = %5389, %5289
  %5416 = phi float [ %5412, %5389 ], [ %5385, %5289 ]
  %5417 = phi float [ %5413, %5389 ], [ %5386, %5289 ]
  %5418 = phi float [ %5414, %5389 ], [ %5387, %5289 ]
  %5419 = call float @dx.op.binary.f32(i32 35, float %5417, float %5418)  ; FMax(a,b)
  %5420 = call float @dx.op.binary.f32(i32 35, float %5416, float %5419)  ; FMax(a,b)
  %5421 = fsub fast float 1.000000e+00, %5420
  %5422 = fmul fast float %5420, %5111
  %5423 = fadd fast float %5422, %5111
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 3
  %5427 = fmul fast float %5423, %5425
  %5428 = fadd fast float %5427, %5426
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = fsub fast float 1.000000e+00, %5137
  %5431 = fadd fast float %5430, %5429
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fcmp fast olt float %5432, 1.000000e+00
  br i1 %5433, label %5434, label %5910

; <label>:5434                                    ; preds = %5415
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5438 = fmul fast float %5436, %123
  %5439 = fmul fast float %5437, %124
  %5440 = fptoui float %5438 to i32
  %5441 = fptoui float %5439 to i32
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5446 = fadd fast float %110, -4.000000e+00
  %5447 = call float @dx.op.binary.f32(i32 35, float %5446, float 0.000000e+00)  ; FMax(a,b)
  %5448 = fadd fast float %5447, %5443
  %5449 = fmul fast float %5448, %5444
  %5450 = call float @dx.op.unary.f32(i32 23, float %5449)  ; Log(value)
  %5451 = fmul fast float %5450, %5445
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5454 = fmul fast float %5451, %5453
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.i32 %5456, 1
  %5458 = add i32 %5457, -1
  %5459 = uitofp i32 %5457 to float
  %5460 = fmul fast float %5459, %5455
  %5461 = fptoui float %5460 to i32
  %5462 = call i32 @dx.op.binary.i32(i32 40, i32 %5461, i32 %5458)  ; UMin(a,b)
  %5463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.i32 %5463, 2
  %5465 = extractvalue %dx.types.CBufRet.i32 %5463, 3
  %5466 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5441, i32 %5464, i32 %5440)  ; UMad(a,b,c)
  %5467 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5462, i32 %5465, i32 %5466)  ; UMad(a,b,c)
  %5468 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %5469 = fptoui float %5468 to i32
  %5470 = lshr i32 %5469, 5
  %5471 = call i32 @dx.op.binary.i32(i32 40, i32 %5470, i32 8191)  ; UMin(a,b)
  %5472 = fsub fast float %4312, %208
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fcmp fast ogt float %5473, 0.000000e+00
  %5475 = fcmp fast ogt float %5124, 0.000000e+00
  %5476 = and i1 %5475, %5474
  br i1 %5476, label %5477, label %5506

; <label>:5477                                    ; preds = %5434
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5123, float %5124, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.binary.f32(i32 35, float %5478, float -1.000000e+00)  ; FMax(a,b)
  %5480 = call float @dx.op.binary.f32(i32 36, float %5479, float 1.000000e+00)  ; FMin(a,b)
  %5481 = fmul fast float %5480, %5480
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = fmul fast float %5482, 0x3FFC6E2300000000
  %5484 = fsub fast float 1.000000e+00, %5483
  %5485 = fcmp fast ogt float %5484, 0.000000e+00
  %5486 = call float @dx.op.unary.f32(i32 24, float %5484)  ; Sqrt(value)
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = call float @dx.op.unary.f32(i32 23, float %5487)  ; Log(value)
  %5489 = fmul fast float %5488, 5.000000e+00
  %5490 = call float @dx.op.unary.f32(i32 21, float %5489)  ; Exp(value)
  %5491 = fmul fast float %5490, 0x3FEF591A60000000
  %5492 = fadd fast float %5491, 0x3F94DCB540000000
  %5493 = select i1 %5485, float %5492, float 1.000000e+00
  %5494 = fcmp fast oge float %5493, 1.000000e+00
  %5495 = fmul fast float %5478, 2.000000e+00
  %5496 = fadd fast float %5495, %5124
  %5497 = select i1 %5494, float %5496, float %5124
  %5498 = fsub fast float %5497, %5124
  %5499 = fmul fast float %5498, %5473
  %5500 = fadd fast float %5499, %5124
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5123, float %5500, float %5122, float %5123, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.unary.f32(i32 25, float %5501)  ; Rsqrt(value)
  %5503 = fmul fast float %5502, %5122
  %5504 = fmul fast float %5502, %5123
  %5505 = fmul fast float %5500, %5502
  br label %5506

; <label>:5506                                    ; preds = %5477, %5434
  %5507 = phi float [ %5503, %5477 ], [ %5122, %5434 ]
  %5508 = phi float [ %5504, %5477 ], [ %5123, %5434 ]
  %5509 = phi float [ %5505, %5477 ], [ %5124, %5434 ]
  %5510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.i32 %5510, 2
  %5512 = add nsw i32 %5511, -1
  %5513 = call i32 @dx.op.binary.i32(i32 37, i32 %5512, i32 0)  ; IMax(a,b)
  %5514 = shl i32 %5471, 2
  %5515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5514, i32 undef)  ; BufferLoad(srv,index,wot)
  %5516 = extractvalue %dx.types.ResRet.i32 %5515, 0
  %5517 = lshr i32 %5516, 16
  %5518 = and i32 %5516, 65535
  %5519 = lshr i32 %5516, 21
  %5520 = lshr i32 %5518, 5
  %5521 = call i32 @dx.op.binary.i32(i32 40, i32 %5520, i32 %5513)  ; UMin(a,b)
  %5522 = icmp ugt i32 %5519, %5521
  br i1 %5522, label %5886, label %5523

; <label>:5523                                    ; preds = %5506
  br label %5524

; <label>:5524                                    ; preds = %5878, %5523
  %5525 = phi float [ %5879, %5878 ], [ 0.000000e+00, %5523 ]
  %5526 = phi float [ %5880, %5878 ], [ 0.000000e+00, %5523 ]
  %5527 = phi float [ %5881, %5878 ], [ 0.000000e+00, %5523 ]
  %5528 = phi float [ %5882, %5878 ], [ 1.000000e+00, %5523 ]
  %5529 = phi i32 [ %5883, %5878 ], [ %5519, %5523 ]
  %5530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5531 = extractvalue %dx.types.CBufRet.i32 %5530, 2
  %5532 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5467, i32 %5531, i32 %5529)  ; UMad(a,b,c)
  %5533 = shl i32 %5532, 2
  %5534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5533, i32 undef)  ; BufferLoad(srv,index,wot)
  %5535 = extractvalue %dx.types.ResRet.i32 %5534, 0
  %5536 = shl i32 %5529, 5
  %5537 = sub nsw i32 %5517, %5536
  %5538 = call i32 @dx.op.binary.i32(i32 37, i32 %5537, i32 0)  ; IMax(a,b)
  %5539 = call i32 @dx.op.binary.i32(i32 38, i32 %5538, i32 31)  ; IMin(a,b)
  %5540 = sub nsw i32 1, %5517
  %5541 = add nsw i32 %5540, %5518
  %5542 = call i32 @dx.op.binary.i32(i32 37, i32 %5541, i32 0)  ; IMax(a,b)
  %5543 = call i32 @dx.op.binary.i32(i32 38, i32 %5542, i32 32)  ; IMin(a,b)
  %5544 = and i32 %5543, 31
  %5545 = shl i32 -1, %5544
  %5546 = xor i32 %5545, -1
  %5547 = and i32 %5539, 31
  %5548 = shl i32 %5546, %5547
  %5549 = icmp eq i32 %5543, 32
  %5550 = select i1 %5549, i32 -1, i32 %5548
  %5551 = and i32 %5550, %5535
  %5552 = icmp eq i32 %5551, 0
  br i1 %5552, label %5878, label %5553

; <label>:5553                                    ; preds = %5524
  br label %5554

; <label>:5554                                    ; preds = %5661, %5553
  %5555 = phi float [ %5662, %5661 ], [ %5525, %5553 ]
  %5556 = phi float [ %5663, %5661 ], [ %5526, %5553 ]
  %5557 = phi float [ %5664, %5661 ], [ %5527, %5553 ]
  %5558 = phi float [ %5665, %5661 ], [ %5528, %5553 ]
  %5559 = phi i32 [ %5564, %5661 ], [ %5551, %5553 ]
  %5560 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5559)  ; FirstbitLo(value)
  %5561 = add i32 %5560, %5536
  %5562 = and i32 %5560, 31
  %5563 = shl i32 1, %5562
  %5564 = xor i32 %5563, %5559
  %5565 = mul i32 %5561, 72
  %5566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5565, i32 undef)  ; BufferLoad(srv,index,wot)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.ResRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.ResRet.f32 %5566, 2
  %5570 = add i32 %5565, 12
  %5571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5570, i32 undef)  ; BufferLoad(srv,index,wot)
  %5572 = extractvalue %dx.types.ResRet.i32 %5571, 0
  %5573 = add i32 %5565, 16
  %5574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.ResRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.ResRet.f32 %5574, 2
  %5578 = add i32 %5565, 28
  %5579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5578, i32 undef)  ; BufferLoad(srv,index,wot)
  %5580 = extractvalue %dx.types.ResRet.f32 %5579, 0
  %5581 = add i32 %5565, 32
  %5582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5581, i32 undef)  ; BufferLoad(srv,index,wot)
  %5583 = extractvalue %dx.types.ResRet.f32 %5582, 0
  %5584 = extractvalue %dx.types.ResRet.f32 %5582, 1
  %5585 = extractvalue %dx.types.ResRet.f32 %5582, 2
  %5586 = extractvalue %dx.types.ResRet.f32 %5582, 3
  %5587 = add i32 %5565, 48
  %5588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5587, i32 undef)  ; BufferLoad(srv,index,wot)
  %5589 = extractvalue %dx.types.ResRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.ResRet.f32 %5588, 1
  %5591 = add i32 %5565, 56
  %5592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5591, i32 undef)  ; BufferLoad(srv,index,wot)
  %5593 = extractvalue %dx.types.ResRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.ResRet.f32 %5592, 1
  %5595 = add i32 %5565, 64
  %5596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5595, i32 undef)  ; BufferLoad(srv,index,wot)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5599 = mul i32 %5561, 60
  %5600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5599, i32 undef)  ; BufferLoad(srv,index,wot)
  %5601 = extractvalue %dx.types.ResRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.ResRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.ResRet.f32 %5600, 2
  %5604 = add i32 %5599, 12
  %5605 = add i32 %5599, 48
  %5606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5605, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.ResRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.ResRet.f32 %5606, 2
  %5610 = and i32 %5572, 32767
  %5611 = bitcast float %5567 to i32
  %5612 = icmp eq i32 %5611, -1
  %5613 = bitcast float %5568 to i32
  %5614 = and i32 %5572, 32768
  %5615 = icmp ne i32 %5614, 0
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5620 = fsub fast float %5601, %5617
  %5621 = fsub fast float %5602, %5618
  %5622 = fsub fast float %5603, %5619
  %5623 = fsub fast float %206, %5620
  %5624 = fsub fast float %207, %5621
  %5625 = fsub fast float %208, %5622
  %5626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5604, i32 undef)  ; BufferLoad(srv,index,wot)
  %5627 = extractvalue %dx.types.ResRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.ResRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.ResRet.f32 %5626, 2
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5627, float %5628, float %5629)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = add i32 %5599, 24
  %5632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5631, i32 undef)  ; BufferLoad(srv,index,wot)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.ResRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.ResRet.f32 %5632, 2
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5633, float %5634, float %5635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = add i32 %5599, 36
  %5638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5637, i32 undef)  ; BufferLoad(srv,index,wot)
  %5639 = extractvalue %dx.types.ResRet.f32 %5638, 0
  %5640 = extractvalue %dx.types.ResRet.f32 %5638, 1
  %5641 = extractvalue %dx.types.ResRet.f32 %5638, 2
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5644 = call float @dx.op.unary.f32(i32 6, float %5636)  ; FAbs(value)
  %5645 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %5646 = fsub fast float %5607, %5643
  %5647 = fsub fast float %5608, %5644
  %5648 = fsub fast float %5609, %5645
  %5649 = fmul fast float %5646, %5575
  %5650 = fmul fast float %5647, %5576
  %5651 = fmul fast float %5648, %5577
  %5652 = call float @dx.op.binary.f32(i32 36, float %5650, float %5651)  ; FMin(a,b)
  %5653 = call float @dx.op.binary.f32(i32 36, float %5649, float %5652)  ; FMin(a,b)
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = call float @dx.op.binary.f32(i32 36, float %5558, float %5654)  ; FMin(a,b)
  %5656 = uitofp i1 %5615 to float
  %5657 = fadd fast float %5473, 1.000000e+00
  %5658 = fsub fast float %5657, %5656
  %5659 = fmul fast float %5655, %5658
  %5660 = fcmp fast ogt float %5659, 0.000000e+00
  br i1 %5660, label %5667, label %5661

; <label>:5661                                    ; preds = %5809, %5554
  %5662 = phi float [ %5873, %5809 ], [ %5555, %5554 ]
  %5663 = phi float [ %5874, %5809 ], [ %5556, %5554 ]
  %5664 = phi float [ %5875, %5809 ], [ %5557, %5554 ]
  %5665 = phi float [ %5876, %5809 ], [ %5558, %5554 ]
  %5666 = icmp eq i32 %5559, %5563
  br i1 %5666, label %5877, label %5554

; <label>:5667                                    ; preds = %5554
  br i1 %5612, label %5725, label %5668

; <label>:5668                                    ; preds = %5667
  %5669 = fsub fast float -0.000000e+00, %5627
  %5670 = fsub fast float -0.000000e+00, %5628
  %5671 = fsub fast float -0.000000e+00, %5629
  %5672 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = fsub fast float -0.000000e+00, %5672
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fadd fast float %5674, %5590
  %5676 = fadd fast float %5589, %5674
  %5677 = fsub fast float -0.000000e+00, %5676
  %5678 = fcmp ogt float %5672, -0.000000e+00
  %5679 = select i1 %5678, float %5677, float %5675
  %5680 = call float @dx.op.unary.f32(i32 6, float %5673)  ; FAbs(value)
  %5681 = fdiv fast float 1.000000e+00, %5680
  %5682 = fmul fast float %5679, %5681
  %5683 = call float @dx.op.binary.f32(i32 35, float %5682, float 0.000000e+00)  ; FMax(a,b)
  %5684 = fsub fast float -0.000000e+00, %5633
  %5685 = fsub fast float -0.000000e+00, %5634
  %5686 = fsub fast float -0.000000e+00, %5635
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5684, float %5685, float %5686)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = fsub fast float -0.000000e+00, %5687
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5684, float %5685, float %5686)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = fadd fast float %5689, %5594
  %5691 = fadd fast float %5593, %5689
  %5692 = fsub fast float -0.000000e+00, %5691
  %5693 = fcmp ogt float %5687, -0.000000e+00
  %5694 = select i1 %5693, float %5692, float %5690
  %5695 = call float @dx.op.unary.f32(i32 6, float %5688)  ; FAbs(value)
  %5696 = fdiv fast float 1.000000e+00, %5695
  %5697 = fmul fast float %5694, %5696
  %5698 = call float @dx.op.binary.f32(i32 35, float %5697, float 0.000000e+00)  ; FMax(a,b)
  %5699 = fsub fast float -0.000000e+00, %5639
  %5700 = fsub fast float -0.000000e+00, %5640
  %5701 = fsub fast float -0.000000e+00, %5641
  %5702 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5699, float %5700, float %5701)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = fsub fast float -0.000000e+00, %5702
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5699, float %5700, float %5701)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = fadd fast float %5704, %5598
  %5706 = fadd fast float %5597, %5704
  %5707 = fsub fast float -0.000000e+00, %5706
  %5708 = fcmp ogt float %5702, -0.000000e+00
  %5709 = select i1 %5708, float %5707, float %5705
  %5710 = call float @dx.op.unary.f32(i32 6, float %5703)  ; FAbs(value)
  %5711 = fdiv fast float 1.000000e+00, %5710
  %5712 = fmul fast float %5709, %5711
  %5713 = call float @dx.op.binary.f32(i32 35, float %5712, float 0.000000e+00)  ; FMax(a,b)
  %5714 = call float @dx.op.binary.f32(i32 36, float %5698, float %5713)  ; FMin(a,b)
  %5715 = call float @dx.op.binary.f32(i32 36, float %5683, float %5714)  ; FMin(a,b)
  %5716 = fmul fast float %5715, %5507
  %5717 = fmul fast float %5715, %5508
  %5718 = fmul fast float %5715, %5509
  %5719 = fadd fast float %5716, %206
  %5720 = fadd fast float %5717, %207
  %5721 = fadd fast float %5718, %208
  %5722 = fsub fast float %5719, %5567
  %5723 = fsub fast float %5720, %5568
  %5724 = fsub fast float %5721, %5569
  br label %5732

; <label>:5725                                    ; preds = %5667
  %5726 = fmul fast float %5507, 8.096000e+03
  %5727 = fmul fast float %5508, 8.096000e+03
  %5728 = fmul fast float %5509, 8.096000e+03
  %5729 = fadd fast float %5726, %206
  %5730 = fadd fast float %5727, %207
  %5731 = fadd fast float %5728, %208
  br label %5732

; <label>:5732                                    ; preds = %5725, %5668
  %5733 = phi float [ %5507, %5725 ], [ %5722, %5668 ]
  %5734 = phi float [ %5508, %5725 ], [ %5723, %5668 ]
  %5735 = phi float [ %5509, %5725 ], [ %5724, %5668 ]
  %5736 = phi float [ %5729, %5725 ], [ %5719, %5668 ]
  %5737 = phi float [ %5730, %5725 ], [ %5720, %5668 ]
  %5738 = phi float [ %5731, %5725 ], [ %5721, %5668 ]
  %5739 = fcmp fast olt float %5586, 1.000000e+00
  br i1 %5739, label %5740, label %5771, !dx.controlflow.hints !104

; <label>:5740                                    ; preds = %5732
  %5741 = fmul fast float %5735, %5584
  %5742 = fmul fast float %5734, %5585
  %5743 = fsub fast float %5741, %5742
  %5744 = fmul fast float %5733, %5585
  %5745 = fmul fast float %5735, %5583
  %5746 = fsub fast float %5744, %5745
  %5747 = fmul fast float %5734, %5583
  %5748 = fmul fast float %5733, %5584
  %5749 = fsub fast float %5747, %5748
  %5750 = fmul fast float %5743, 2.000000e+00
  %5751 = fmul fast float %5746, 2.000000e+00
  %5752 = fmul fast float %5749, 2.000000e+00
  %5753 = fmul fast float %5750, %5586
  %5754 = fmul fast float %5751, %5586
  %5755 = fmul fast float %5752, %5586
  %5756 = fmul fast float %5752, %5584
  %5757 = fmul fast float %5751, %5585
  %5758 = fmul fast float %5750, %5585
  %5759 = fmul fast float %5752, %5583
  %5760 = fmul fast float %5751, %5583
  %5761 = fmul fast float %5750, %5584
  %5762 = fadd fast float %5756, %5733
  %5763 = fadd fast float %5762, %5753
  %5764 = fsub fast float %5763, %5757
  %5765 = fsub fast float %5734, %5759
  %5766 = fadd fast float %5765, %5754
  %5767 = fadd fast float %5766, %5758
  %5768 = fadd fast float %5755, %5735
  %5769 = fsub fast float %5768, %5761
  %5770 = fadd fast float %5769, %5760
  br label %5771

; <label>:5771                                    ; preds = %5740, %5732
  %5772 = phi float [ %5764, %5740 ], [ %5733, %5732 ]
  %5773 = phi float [ %5767, %5740 ], [ %5734, %5732 ]
  %5774 = phi float [ %5770, %5740 ], [ %5735, %5732 ]
  br i1 %5612, label %5806, label %5775

; <label>:5775                                    ; preds = %5771
  %5776 = fmul fast float %5111, 0x400187C840000000
  %5777 = fadd fast float %5776, 0xC00EFC2120000000
  %5778 = fmul fast float %5777, %5111
  %5779 = fadd fast float %5778, 0x3FE5D16340000000
  %5780 = fmul fast float %5779, %5111
  %5781 = fadd fast float %5780, 1.000000e+00
  %5782 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5783 = fsub fast float %5736, %206
  %5784 = fsub fast float %5737, %207
  %5785 = fsub fast float %5738, %208
  %5786 = fsub fast float %5736, %5567
  %5787 = fsub fast float %5737, %5568
  %5788 = fsub fast float %5738, %5569
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5784, float %5785, float %5783, float %5784, float %5785)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fadd fast float %5790, 0x3EE4F8B580000000
  %5792 = fdiv fast float %5789, %5791
  %5793 = bitcast float %5792 to i32
  %5794 = ashr i32 %5793, 1
  %5795 = add nsw i32 %5794, 532487669
  %5796 = bitcast i32 %5795 to float
  %5797 = fmul fast float %5796, %5782
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = fmul fast float %5798, 0x4009981AE0000000
  %5800 = fsub fast float 0x40111BBD80000000, %5799
  %5801 = fmul fast float %5800, %5798
  %5802 = fadd fast float %5801, 0xC0009F6020000000
  %5803 = fmul fast float %5802, %5798
  %5804 = fadd fast float %5803, 1.000000e+00
  %5805 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  br label %5809

; <label>:5806                                    ; preds = %5771
  %5807 = icmp ne i32 %5613, -1
  %5808 = zext i1 %5807 to i32
  br label %5809

; <label>:5809                                    ; preds = %5806, %5775
  %5810 = phi float [ %5111, %5806 ], [ %5805, %5775 ]
  %5811 = phi i32 [ %5808, %5806 ], [ 0, %5775 ]
  %5812 = fmul float %5810, 5.000000e+00
  %5813 = fsub float 5.000000e+00, %5812
  %5814 = icmp ne i32 %5811, 0
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5817 = fadd fast float %5816, %5813
  %5818 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5817)  ; FMax(a,b)
  %5819 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5820 = call float @dx.op.unary.f32(i32 6, float %5773)  ; FAbs(value)
  %5821 = fadd fast float %5820, %5819
  %5822 = call float @dx.op.unary.f32(i32 6, float %5774)  ; FAbs(value)
  %5823 = fadd fast float %5821, %5822
  %5824 = fcmp fast oeq float %5823, 0.000000e+00
  %5825 = fdiv fast float 1.000000e+00, %5823
  %5826 = select i1 %5824, float 1.000000e+00, float %5825
  %5827 = fmul fast float %5826, %5772
  %5828 = fmul fast float %5826, %5773
  %5829 = call float @dx.op.unary.f32(i32 6, float %5828)  ; FAbs(value)
  %5830 = call float @dx.op.unary.f32(i32 6, float %5827)  ; FAbs(value)
  %5831 = fsub fast float 1.000000e+00, %5829
  %5832 = fsub fast float 1.000000e+00, %5830
  %5833 = fcmp fast oge float %5827, 0.000000e+00
  %5834 = fcmp fast oge float %5828, 0.000000e+00
  %5835 = select i1 %5833, float 1.000000e+00, float -1.000000e+00
  %5836 = select i1 %5834, float 1.000000e+00, float -1.000000e+00
  %5837 = fcmp fast ole float %5774, 0.000000e+00
  %5838 = fmul fast float %5835, %5831
  %5839 = fmul fast float %5836, %5832
  %5840 = select i1 %5837, float %5838, float %5827
  %5841 = select i1 %5837, float %5839, float %5828
  %5842 = fmul fast float %5840, 5.000000e-01
  %5843 = fmul fast float %5841, 5.000000e-01
  %5844 = fadd fast float %5842, 5.000000e-01
  %5845 = fadd fast float %5843, 5.000000e-01
  %5846 = uitofp i32 %5610 to float
  %5847 = call float @dx.op.binary.f32(i32 36, float %5818, float 3.000000e+00)  ; FMin(a,b)
  %5848 = fadd fast float %5847, 2.000000e+00
  %5849 = call float @dx.op.unary.f32(i32 21, float %5848)  ; Exp(value)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5851 = fmul fast float %5850, %5849
  %5852 = fmul fast float %5851, 2.000000e+00
  %5853 = fsub fast float 1.000000e+00, %5852
  %5854 = fmul fast float %5844, %5853
  %5855 = fmul fast float %5845, %5853
  %5856 = fadd fast float %5854, %5851
  %5857 = fadd fast float %5855, %5851
  %5858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5856, float %5857, float %5846, float undef, i32 0, i32 0, i32 undef, float %5818)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.ResRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.ResRet.f32 %5858, 2
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 3
  %5864 = fmul fast float %5863, %5580
  %5865 = call float @dx.op.binary.f32(i32 36, float %5142, float %5864)  ; FMin(a,b)
  %5866 = select i1 %5814, float %5865, float %5864
  %5867 = fmul fast float %5859, %5659
  %5868 = fmul fast float %5867, %5866
  %5869 = fmul fast float %5860, %5659
  %5870 = fmul fast float %5869, %5866
  %5871 = fmul fast float %5861, %5659
  %5872 = fmul fast float %5871, %5866
  %5873 = fadd fast float %5868, %5555
  %5874 = fadd fast float %5870, %5556
  %5875 = fadd fast float %5872, %5557
  %5876 = fsub fast float %5558, %5659
  br label %5661

; <label>:5877                                    ; preds = %5661
  br label %5878

; <label>:5878                                    ; preds = %5877, %5524
  %5879 = phi float [ %5525, %5524 ], [ %5662, %5877 ]
  %5880 = phi float [ %5526, %5524 ], [ %5663, %5877 ]
  %5881 = phi float [ %5527, %5524 ], [ %5664, %5877 ]
  %5882 = phi float [ %5528, %5524 ], [ %5665, %5877 ]
  %5883 = add i32 %5529, 1
  %5884 = icmp ugt i32 %5883, %5521
  br i1 %5884, label %5885, label %5524, !llvm.loop !105

; <label>:5885                                    ; preds = %5878
  br label %5886

; <label>:5886                                    ; preds = %5885, %5506
  %5887 = phi float [ 0.000000e+00, %5506 ], [ %5879, %5885 ]
  %5888 = phi float [ 0.000000e+00, %5506 ], [ %5880, %5885 ]
  %5889 = phi float [ 0.000000e+00, %5506 ], [ %5881, %5885 ]
  %5890 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5891 = select i1 %278, float 0.000000e+00, float %5887
  %5892 = select i1 %278, float %5890, float %5888
  %5893 = select i1 %278, float 0.000000e+00, float %5889
  %5894 = fcmp fast olt float %5432, 0.000000e+00
  %5895 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5896 = fmul fast float %5895, %5372
  %5897 = fmul fast float %5895, %5373
  %5898 = fmul fast float %5895, %5374
  %5899 = select i1 %5894, float %5372, float %5896
  %5900 = select i1 %5894, float %5373, float %5897
  %5901 = select i1 %5894, float %5374, float %5898
  %5902 = fsub fast float 1.000000e+00, %5895
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fmul fast float %5903, %5891
  %5905 = fmul fast float %5903, %5892
  %5906 = fmul fast float %5903, %5893
  %5907 = fadd fast float %5899, %5904
  %5908 = fadd fast float %5900, %5905
  %5909 = fadd fast float %5901, %5906
  br label %5910

; <label>:5910                                    ; preds = %5886, %5415
  %5911 = phi float [ %5372, %5415 ], [ %5907, %5886 ]
  %5912 = phi float [ %5373, %5415 ], [ %5908, %5886 ]
  %5913 = phi float [ %5374, %5415 ], [ %5909, %5886 ]
  %5914 = fmul fast float %5421, %5368
  %5915 = fmul fast float %5421, %5369
  %5916 = fmul fast float %5421, %5370
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fcmp fast ogt float %5917, 0x3E7FF19E20000000
  %5919 = fdiv fast float 1.000000e+00, %5917
  %5920 = select i1 %5918, float %5919, float 0.000000e+00
  %5921 = fmul fast float %5920, %5102
  %5922 = fmul fast float %5920, %5103
  %5923 = fmul fast float %5920, %5104
  %5924 = fadd fast float %5921, -1.000000e+00
  %5925 = fadd fast float %5922, -1.000000e+00
  %5926 = fadd fast float %5923, -1.000000e+00
  %5927 = fmul fast float %5924, 5.000000e-01
  %5928 = fmul fast float %5925, 5.000000e-01
  %5929 = fmul fast float %5926, 5.000000e-01
  %5930 = fadd fast float %5927, 1.000000e+00
  %5931 = fadd fast float %5928, 1.000000e+00
  %5932 = fadd fast float %5929, 1.000000e+00
  %5933 = fmul fast float %5911, %5416
  %5934 = fmul fast float %5912, %5417
  %5935 = fmul fast float %5913, %5418
  %5936 = fsub fast float 1.000000e+00, %5116
  %5937 = bitcast float %5936 to i32
  %5938 = sitofp i32 %5937 to float
  %5939 = fmul fast float %5938, 5.000000e+00
  %5940 = fadd fast float %5939, 0xC1EFBF8940000000
  %5941 = fptosi float %5940 to i32
  %5942 = bitcast i32 %5941 to float
  %5943 = fmul fast float %5942, %3908
  %5944 = fmul fast float %5368, %5943
  %5945 = fmul fast float %5944, %5421
  %5946 = fmul fast float %5945, %5930
  %5947 = fmul fast float %5369, %5943
  %5948 = fmul fast float %5947, %5421
  %5949 = fmul fast float %5948, %5931
  %5950 = fmul fast float %5370, %5943
  %5951 = fmul fast float %5950, %5421
  %5952 = fmul fast float %5951, %5932
  %5953 = fmul fast float %5914, %3904
  %5954 = fmul fast float %5915, %3904
  %5955 = fmul fast float %5916, %3904
  %5956 = fadd fast float %5933, %3900
  %5957 = fadd fast float %5956, %5946
  %5958 = fmul fast float %5957, %3904
  %5959 = fadd fast float %5934, %3901
  %5960 = fadd fast float %5959, %5949
  %5961 = fmul fast float %5960, %3904
  %5962 = fadd fast float %5935, %3902
  %5963 = fadd fast float %5962, %5952
  %5964 = fmul fast float %5963, %3904
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 3
  %5967 = fcmp fast oeq float %5966, 0.000000e+00
  br i1 %5967, label %7672, label %5968

; <label>:5968                                    ; preds = %5910
  %5969 = extractvalue %dx.types.CBufRet.f32 %5965, 0
  %5970 = extractvalue %dx.types.CBufRet.f32 %5965, 1
  %5971 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %5975 = extractvalue %dx.types.CBufRet.f32 %5972, 2
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %5975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = select i1 %278, float %5977, float %5973
  %5981 = select i1 %278, float %5979, float %5974
  %5982 = select i1 %278, float %5978, float %5975
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5985 = fmul fast float %5984, %132
  %5986 = fmul fast float %5984, %134
  %5987 = fmul fast float %5984, %136
  %5988 = fadd fast float %5985, %206
  %5989 = fadd fast float %5986, %207
  %5990 = fadd fast float %5987, %208
  %5991 = fcmp fast olt float %5966, 0.000000e+00
  br i1 %5991, label %7249, label %5992

; <label>:5992                                    ; preds = %5968
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = extractvalue %dx.types.CBufRet.f32 %5993, 2
  %5997 = extractvalue %dx.types.CBufRet.f32 %5993, 3
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.CBufRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.CBufRet.f32 %5998, 2
  %6002 = extractvalue %dx.types.CBufRet.f32 %5998, 3
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.CBufRet.f32 %6003, 1
  %6006 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6007 = extractvalue %dx.types.CBufRet.f32 %6003, 3
  %6008 = fmul fast float %5994, %5988
  %6009 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %5995, float %6008)  ; FMad(a,b,c)
  %6010 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %5996, float %6009)  ; FMad(a,b,c)
  %6011 = fadd fast float %6010, %5997
  %6012 = fmul fast float %5999, %5988
  %6013 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %6000, float %6012)  ; FMad(a,b,c)
  %6014 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %6001, float %6013)  ; FMad(a,b,c)
  %6015 = fadd fast float %6014, %6002
  %6016 = fmul fast float %6004, %5988
  %6017 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %6005, float %6016)  ; FMad(a,b,c)
  %6018 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %6006, float %6017)  ; FMad(a,b,c)
  %6019 = fadd fast float %6018, %6007
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 0
  %6022 = fcmp fast une float %6021, 0.000000e+00
  %6023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6023, 0
  %6025 = extractvalue %dx.types.CBufRet.f32 %6023, 1
  %6026 = extractvalue %dx.types.CBufRet.f32 %6023, 3
  %6027 = fmul fast float %6026, %6011
  %6028 = fmul fast float %6026, %6015
  %6029 = fadd fast float %6027, %6024
  %6030 = fadd fast float %6028, %6025
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.CBufRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6035 = fmul fast float %6034, %6011
  %6036 = fmul fast float %6034, %6015
  %6037 = fadd fast float %6035, %6032
  %6038 = fadd fast float %6036, %6033
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6041 = fsub fast float %6040, %6019
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6043 = fmul fast float %6041, %6042
  %6044 = fsub fast float 1.000000e+00, %6043
  %6045 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  br i1 %6022, label %6106, label %6046

; <label>:6046                                    ; preds = %5992
  %6047 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 2
  %6050 = fadd fast float %6049, %6047
  %6051 = fcmp fast ogt float %6050, 0.000000e+00
  br i1 %6051, label %6052, label %6076

; <label>:6052                                    ; preds = %6046
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6056 = fsub fast float %6037, %6054
  %6057 = fsub fast float %6038, %6055
  %6058 = fcmp fast olt float %6056, 0.000000e+00
  %6059 = fcmp fast olt float %6057, 0.000000e+00
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.CBufRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.CBufRet.f32 %6060, 2
  %6064 = extractvalue %dx.types.CBufRet.f32 %6060, 3
  %6065 = select i1 %6058, float %6061, float %6063
  %6066 = select i1 %6059, float %6062, float %6064
  %6067 = fmul fast float %6065, %6056
  %6068 = fmul fast float %6066, %6057
  %6069 = call float @dx.op.unary.f32(i32 6, float %6067)  ; FAbs(value)
  %6070 = call float @dx.op.unary.f32(i32 6, float %6068)  ; FAbs(value)
  %6071 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %6072 = call float @dx.op.binary.f32(i32 35, float %6069, float %6070)  ; FMax(a,b)
  %6073 = fsub fast float %6071, %6072
  %6074 = call float @dx.op.unary.f32(i32 7, float %6073)  ; Saturate(value)
  %6075 = fmul fast float %6074, %6045
  br label %6076

; <label>:6076                                    ; preds = %6052, %6046
  %6077 = phi float [ %6075, %6052 ], [ 0.000000e+00, %6046 ]
  %6078 = extractvalue %dx.types.CBufRet.f32 %6023, 2
  %6079 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6080 = fadd fast float %6079, %6078
  %6081 = fcmp fast ogt float %6080, 0.000000e+00
  br i1 %6081, label %6082, label %6106

; <label>:6082                                    ; preds = %6076
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 1
  %6086 = fsub fast float %6029, %6084
  %6087 = fsub fast float %6030, %6085
  %6088 = fcmp fast olt float %6086, 0.000000e+00
  %6089 = fcmp fast olt float %6087, 0.000000e+00
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.CBufRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6094 = extractvalue %dx.types.CBufRet.f32 %6090, 3
  %6095 = select i1 %6088, float %6091, float %6093
  %6096 = select i1 %6089, float %6092, float %6094
  %6097 = fmul fast float %6095, %6086
  %6098 = fmul fast float %6096, %6087
  %6099 = call float @dx.op.unary.f32(i32 6, float %6097)  ; FAbs(value)
  %6100 = call float @dx.op.unary.f32(i32 6, float %6098)  ; FAbs(value)
  %6101 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %6102 = call float @dx.op.binary.f32(i32 35, float %6099, float %6100)  ; FMax(a,b)
  %6103 = fsub fast float %6101, %6102
  %6104 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6105 = fmul fast float %6104, %6045
  br label %6106

; <label>:6106                                    ; preds = %6082, %6076, %5992
  %6107 = phi float [ 0.000000e+00, %5992 ], [ %6105, %6082 ], [ 0.000000e+00, %6076 ]
  %6108 = phi float [ 0.000000e+00, %5992 ], [ %6077, %6082 ], [ %6077, %6076 ]
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6111 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = fsub fast float %6011, %6113
  %6116 = fsub fast float %6015, %6114
  %6117 = fcmp fast olt float %6115, 0.000000e+00
  %6118 = fcmp fast olt float %6116, 0.000000e+00
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6122 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6123 = extractvalue %dx.types.CBufRet.f32 %6119, 3
  %6124 = select i1 %6117, float %6120, float %6122
  %6125 = select i1 %6118, float %6121, float %6123
  %6126 = fmul fast float %6124, %6115
  %6127 = fmul fast float %6125, %6116
  %6128 = call float @dx.op.unary.f32(i32 6, float %6126)  ; FAbs(value)
  %6129 = call float @dx.op.unary.f32(i32 6, float %6127)  ; FAbs(value)
  %6130 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %6131 = call float @dx.op.binary.f32(i32 35, float %6128, float %6129)  ; FMax(a,b)
  %6132 = fsub fast float %6130, %6131
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6134 = call float @dx.op.binary.f32(i32 36, float %6133, float %6111)  ; FMin(a,b)
  %6135 = fmul fast float %6134, %6045
  %6136 = fsub fast float %6107, %6135
  %6137 = fsub fast float %6108, %6107
  %6138 = fsub fast float %6137, %6135
  %6139 = call float @dx.op.binary.f32(i32 35, float %6107, float %6108)  ; FMax(a,b)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6135, float %6139)  ; FMax(a,b)
  %6141 = fcmp fast olt float %6140, 1.000000e+00
  br i1 %6141, label %6142, label %6540, !dx.controlflow.hints !107

; <label>:6142                                    ; preds = %6106
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = fcmp fast une float %6144, 0.000000e+00
  br i1 %6145, label %6146, label %6540, !dx.controlflow.hints !108

; <label>:6146                                    ; preds = %6142
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6147, 3
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.CBufRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.CBufRet.f32 %6152, 2
  %6156 = extractvalue %dx.types.CBufRet.f32 %6152, 3
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6162 = fmul fast float %6148, %5988
  %6163 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %6149, float %6162)  ; FMad(a,b,c)
  %6164 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %6150, float %6163)  ; FMad(a,b,c)
  %6165 = fadd fast float %6164, %6151
  %6166 = fmul fast float %6153, %5988
  %6167 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %6154, float %6166)  ; FMad(a,b,c)
  %6168 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %6155, float %6167)  ; FMad(a,b,c)
  %6169 = fadd fast float %6168, %6156
  %6170 = fmul fast float %6158, %5988
  %6171 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %6159, float %6170)  ; FMad(a,b,c)
  %6172 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %6160, float %6171)  ; FMad(a,b,c)
  %6173 = fadd fast float %6172, %6161
  %6174 = fcmp fast oge float %6165, 1.000000e+00
  %6175 = fcmp fast oge float %6169, 1.000000e+00
  %6176 = or i1 %6174, %6175
  %6177 = fcmp fast olt float %6165, 0.000000e+00
  %6178 = fcmp fast olt float %6169, 0.000000e+00
  %6179 = or i1 %6177, %6178
  %6180 = or i1 %6176, %6179
  br i1 %6180, label %6540, label %6181, !dx.controlflow.hints !109

; <label>:6181                                    ; preds = %6146
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6184 = extractvalue %dx.types.CBufRet.f32 %6182, 1
  %6185 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.i32 %6186, 2
  %6188 = uitofp i32 %6187 to float
  %6189 = extractvalue %dx.types.CBufRet.i32 %6186, 3
  %6190 = uitofp i32 %6189 to float
  %6191 = extractvalue %dx.types.CBufRet.f32 %6182, 3
  %6192 = fmul fast float %6191, 2.000000e+00
  %6193 = fsub fast float %6165, %6183
  %6194 = fsub fast float %6169, %6184
  %6195 = fmul fast float %6192, %6193
  %6196 = fmul fast float %6192, %6194
  %6197 = fdiv fast float 1.000000e+00, %5971
  %6198 = fmul fast float %6196, %6197
  %6199 = call float @dx.op.unary.f32(i32 6, float %6198)  ; FAbs(value)
  %6200 = fmul fast float %6185, %5990
  %6201 = fmul fast float %6200, %6192
  %6202 = call float @dx.op.unary.f32(i32 6, float %6201)  ; FAbs(value)
  %6203 = call float @dx.op.unary.f32(i32 6, float %6195)  ; FAbs(value)
  %6204 = call float @dx.op.binary.f32(i32 35, float %6202, float %6199)  ; FMax(a,b)
  %6205 = call float @dx.op.binary.f32(i32 35, float %6203, float %6204)  ; FMax(a,b)
  %6206 = fmul fast float %6205, 2.000000e+00
  %6207 = call float @dx.op.unary.f32(i32 23, float %6206)  ; Log(value)
  %6208 = call float @dx.op.binary.f32(i32 35, float %6207, float %6188)  ; FMax(a,b)
  %6209 = call float @dx.op.unary.f32(i32 22, float %6208)  ; Frc(value)
  %6210 = fadd fast float %6209, 0xBFEA666660000000
  %6211 = fmul fast float %6210, 8.000000e+00
  %6212 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6213 = call float @dx.op.unary.f32(i32 27, float %6208)  ; Round_ni(value)
  %6214 = fadd fast float %6213, %6212
  %6215 = call float @dx.op.binary.f32(i32 36, float %6214, float %6190)  ; FMin(a,b)
  %6216 = call float @dx.op.unary.f32(i32 27, float %6215)  ; Round_ni(value)
  %6217 = fsub fast float -0.000000e+00, %6216
  %6218 = call float @dx.op.unary.f32(i32 21, float %6217)  ; Exp(value)
  %6219 = fmul fast float %6218, %6192
  %6220 = fmul fast float %6219, %6165
  %6221 = fmul fast float %6219, %6169
  %6222 = fmul fast float %6220, 2.500000e-01
  %6223 = fmul fast float %6221, 2.500000e-01
  %6224 = fadd fast float %6222, 5.000000e-01
  %6225 = fadd fast float %6223, 5.000000e-01
  %6226 = fsub fast float %6190, %6188
  %6227 = fptoui float %6226 to i32
  %6228 = add i32 %6227, 320
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6228)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6232 = fcmp fast une float %6215, %6190
  %6233 = fsub fast float %6165, %6230
  %6234 = fsub fast float %6169, %6231
  %6235 = call float @dx.op.unary.f32(i32 6, float %6233)  ; FAbs(value)
  %6236 = call float @dx.op.unary.f32(i32 6, float %6234)  ; FAbs(value)
  %6237 = fmul fast float %6235, %6219
  %6238 = fmul fast float %6236, %6219
  %6239 = fcmp fast olt float %6237, 1.000000e+00
  %6240 = fcmp fast olt float %6238, 1.000000e+00
  %6241 = and i1 %6239, %6240
  %6242 = or i1 %6232, %6241
  br i1 %6242, label %6243, label %6540, !dx.controlflow.hints !110

; <label>:6243                                    ; preds = %6181
  %6244 = fmul fast float %6221, 5.000000e-01
  %6245 = fmul fast float %6220, 5.000000e-01
  %6246 = fadd fast float %6244, 5.000000e-01
  %6247 = fadd fast float %6245, 5.000000e-01
  %6248 = sitofp i32 %6187 to float
  %6249 = fsub fast float %6215, %6248
  %6250 = call float @dx.op.unary.f32(i32 27, float %6249)  ; Round_ni(value)
  %6251 = call float @dx.op.unary.f32(i32 22, float %6215)  ; Frc(value)
  %6252 = call float @dx.op.unary.f32(i32 22, float %6247)  ; Frc(value)
  %6253 = call float @dx.op.unary.f32(i32 22, float %6246)  ; Frc(value)
  %6254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6252, float %6253, float %6250, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.ResRet.f32 %6254, 3
  %6259 = fcmp fast ogt float %6251, 0.000000e+00
  br i1 %6259, label %6260, label %6281, !dx.controlflow.hints !111

; <label>:6260                                    ; preds = %6243
  %6261 = fadd fast float %6250, 1.000000e+00
  %6262 = call float @dx.op.unary.f32(i32 22, float %6224)  ; Frc(value)
  %6263 = call float @dx.op.unary.f32(i32 22, float %6225)  ; Frc(value)
  %6264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6262, float %6263, float %6261, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.ResRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.ResRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.ResRet.f32 %6264, 3
  %6269 = fsub fast float %6265, %6255
  %6270 = fsub fast float %6266, %6256
  %6271 = fsub fast float %6267, %6257
  %6272 = fsub fast float %6268, %6258
  %6273 = fmul fast float %6269, %6251
  %6274 = fmul fast float %6270, %6251
  %6275 = fmul fast float %6271, %6251
  %6276 = fmul fast float %6272, %6251
  %6277 = fadd fast float %6273, %6255
  %6278 = fadd fast float %6274, %6256
  %6279 = fadd fast float %6275, %6257
  %6280 = fadd fast float %6276, %6258
  br label %6281

; <label>:6281                                    ; preds = %6260, %6243
  %6282 = phi float [ %6277, %6260 ], [ %6255, %6243 ]
  %6283 = phi float [ %6278, %6260 ], [ %6256, %6243 ]
  %6284 = phi float [ %6279, %6260 ], [ %6257, %6243 ]
  %6285 = phi float [ %6280, %6260 ], [ %6258, %6243 ]
  %6286 = fadd fast float %6282, -5.000000e-01
  %6287 = fadd fast float %6284, -5.000000e-01
  %6288 = fmul fast float %6286, 0xBFD5555560000000
  %6289 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6287, float %6288)  ; FMad(a,b,c)
  %6290 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6283, float 0.000000e+00)  ; FMad(a,b,c)
  %6291 = fadd fast float %6290, %6285
  %6292 = fmul fast float %6286, -7.500000e-01
  %6293 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6287, float %6292)  ; FMad(a,b,c)
  %6294 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6283, float 0.000000e+00)  ; FMad(a,b,c)
  %6295 = fadd fast float %6294, %6285
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6302 = extractvalue %dx.types.CBufRet.f32 %6298, 3
  %6303 = fsub fast float %6299, %6289
  %6304 = fsub fast float %6300, %6291
  %6305 = fsub fast float %6301, %6293
  %6306 = fsub fast float %6302, %6295
  %6307 = fmul fast float %6303, %6297
  %6308 = fmul fast float %6304, %6297
  %6309 = fmul fast float %6305, %6297
  %6310 = fmul fast float %6306, %6297
  %6311 = fadd fast float %6307, %6289
  %6312 = fadd fast float %6308, %6291
  %6313 = fadd fast float %6309, %6293
  %6314 = fadd fast float %6310, %6295
  %6315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.i32 %6315, 0
  %6317 = and i32 %6316, 536870911
  %6318 = uitofp i32 %6317 to float
  %6319 = fmul fast float %6318, %6165
  %6320 = fmul fast float %6318, %6169
  %6321 = fptoui float %6319 to i32
  %6322 = fptoui float %6320 to i32
  %6323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6324 = extractvalue %dx.types.ResRet.i32 %6323, 0
  %6325 = and i32 %6324, 31
  %6326 = lshr i32 %6321, %6325
  %6327 = lshr i32 %6322, %6325
  %6328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6329 = extractvalue %dx.types.ResRet.i32 %6328, 0
  %6330 = and i32 %6329, 31
  %6331 = shl i32 1, %6330
  %6332 = call i32 @dx.op.binary.i32(i32 40, i32 %6331, i32 4)  ; UMin(a,b)
  %6333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6334 = extractvalue %dx.types.ResRet.i32 %6333, 0
  %6335 = extractvalue %dx.types.ResRet.i32 %6333, 1
  %6336 = icmp eq i32 %6332, 0
  br i1 %6336, label %6378, label %6337

; <label>:6337                                    ; preds = %6281
  br label %6338

; <label>:6338                                    ; preds = %6366, %6337
  %6339 = phi i32 [ %6369, %6366 ], [ 0, %6337 ]
  %6340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6341 = extractvalue %dx.types.ResRet.i32 %6340, 0
  %6342 = lshr i32 %6341, 16
  %6343 = and i32 %6342, 31
  %6344 = shl i32 %6327, %6343
  %6345 = add i32 %6344, %6326
  %6346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6347 = extractvalue %dx.types.ResRet.i32 %6346, 0
  %6348 = and i32 %6347, 31
  %6349 = shl i32 %6345, %6348
  %6350 = add i32 %6349, %6339
  %6351 = shl i32 %6350, 2
  %6352 = add i32 %6351, 32
  %6353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6352, i32 undef)  ; BufferLoad(srv,index,wot)
  %6354 = extractvalue %dx.types.ResRet.i32 %6353, 0
  %6355 = icmp slt i32 %6354, 0
  %6356 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %6339
  %6357 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %6339
  %6358 = bitcast float* %6356 to i32*
  %6359 = bitcast float* %6357 to i32*
  br i1 %6355, label %6360, label %6366

; <label>:6360                                    ; preds = %6338
  %6361 = and i32 %6354, 1073741823
  %6362 = add nuw nsw i32 %6361, 20
  %6363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6362, i32 undef)  ; BufferLoad(srv,index,wot)
  %6364 = extractvalue %dx.types.ResRet.i32 %6363, 0
  %6365 = extractvalue %dx.types.ResRet.i32 %6363, 1
  br label %6366

; <label>:6366                                    ; preds = %6360, %6338
  %6367 = phi i32 [ %6364, %6360 ], [ %6334, %6338 ]
  %6368 = phi i32 [ %6365, %6360 ], [ %6335, %6338 ]
  store i32 %6367, i32* %6358, align 4
  store i32 %6368, i32* %6359, align 4
  %6369 = add nuw i32 %6339, 1
  %6370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.i32 %6370, 2
  %6372 = icmp eq i32 %6371, 0
  %6373 = icmp ugt i32 %6354, -1073741825
  %6374 = and i1 %6373, %6372
  %6375 = icmp ult i32 %6369, %6332
  %6376 = and i1 %6374, %6375
  br i1 %6376, label %6338, label %6377

; <label>:6377                                    ; preds = %6366
  br label %6378

; <label>:6378                                    ; preds = %6377, %6281
  %6379 = phi i32 [ 0, %6281 ], [ %6369, %6377 ]
  %6380 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6381 = fptoui float %6380 to i32
  %6382 = icmp eq i32 %6381, 0
  br i1 %6382, label %6434, label %6383

; <label>:6383                                    ; preds = %6378
  br label %6384

; <label>:6384                                    ; preds = %6429, %6383
  %6385 = phi i32 [ %6430, %6429 ], [ %6379, %6383 ]
  %6386 = phi i32 [ %6431, %6429 ], [ 0, %6383 ]
  %6387 = lshr i32 %6386, 2
  %6388 = and i32 %6386, 3
  %6389 = add nuw nsw i32 %6387, 83
  %6390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6389)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.i32 %6390, 0
  %6392 = extractvalue %dx.types.CBufRet.i32 %6390, 1
  %6393 = extractvalue %dx.types.CBufRet.i32 %6390, 2
  %6394 = extractvalue %dx.types.CBufRet.i32 %6390, 3
  %6395 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6391, i32* %6395, align 4
  %6396 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6392, i32* %6396, align 4
  %6397 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6393, i32* %6397, align 4
  %6398 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6394, i32* %6398, align 4
  %6399 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6388
  %6400 = load i32, i32* %6399, align 4, !tbaa !112, !noalias !116
  %6401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6402 = extractvalue %dx.types.ResRet.i32 %6401, 0
  %6403 = lshr i32 %6402, 16
  %6404 = and i32 %6403, 31
  %6405 = shl i32 %6327, %6404
  %6406 = add i32 %6405, %6326
  %6407 = shl i32 %6406, 2
  %6408 = add i32 %6407, %6400
  %6409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6408, i32 undef)  ; BufferLoad(srv,index,wot)
  %6410 = extractvalue %dx.types.ResRet.i32 %6409, 0
  %6411 = icmp eq i32 %6410, 0
  br i1 %6411, label %6429, label %6412

; <label>:6412                                    ; preds = %6384
  %6413 = icmp slt i32 %6410, 0
  %6414 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %6385
  %6415 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %6385
  %6416 = bitcast float* %6414 to i32*
  %6417 = bitcast float* %6415 to i32*
  br i1 %6413, label %6418, label %6425

; <label>:6418                                    ; preds = %6412
  %6419 = and i32 %6410, 1073741823
  %6420 = add i32 %6400, 20
  %6421 = add i32 %6420, %6419
  %6422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6421, i32 undef)  ; BufferLoad(srv,index,wot)
  %6423 = extractvalue %dx.types.ResRet.i32 %6422, 0
  %6424 = extractvalue %dx.types.ResRet.i32 %6422, 1
  br label %6425

; <label>:6425                                    ; preds = %6418, %6412
  %6426 = phi i32 [ %6423, %6418 ], [ %6334, %6412 ]
  %6427 = phi i32 [ %6424, %6418 ], [ %6335, %6412 ]
  store i32 %6426, i32* %6416, align 4
  store i32 %6427, i32* %6417, align 4
  %6428 = add i32 %6385, 1
  br label %6429

; <label>:6429                                    ; preds = %6425, %6384
  %6430 = phi i32 [ %6385, %6384 ], [ %6428, %6425 ]
  %6431 = add nuw i32 %6386, 1
  %6432 = icmp eq i32 %6431, %6381
  br i1 %6432, label %6433, label %6384

; <label>:6433                                    ; preds = %6429
  br label %6434

; <label>:6434                                    ; preds = %6433, %6378
  %6435 = phi i32 [ %6379, %6378 ], [ %6430, %6433 ]
  %6436 = icmp eq i32 %6435, 1
  %6437 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 0
  %6438 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 0
  br i1 %6436, label %6439, label %6442

; <label>:6439                                    ; preds = %6434
  %6440 = load float, float* %6437, align 4
  %6441 = load float, float* %6438, align 4
  br label %6469

; <label>:6442                                    ; preds = %6434
  %6443 = load float, float* %6437, align 4
  %6444 = load float, float* %6438, align 4
  %6445 = fdiv fast float 1.000000e+00, %6444
  %6446 = fsub fast float %6443, %6445
  %6447 = icmp ugt i32 %6435, 1
  br i1 %6447, label %6448, label %6464

; <label>:6448                                    ; preds = %6442
  br label %6449

; <label>:6449                                    ; preds = %6449, %6448
  %6450 = phi float [ %6459, %6449 ], [ %6446, %6448 ]
  %6451 = phi float [ %6460, %6449 ], [ %6443, %6448 ]
  %6452 = phi i32 [ %6461, %6449 ], [ 1, %6448 ]
  %6453 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %6452
  %6454 = load float, float* %6453, align 4
  %6455 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %6452
  %6456 = load float, float* %6455, align 4
  %6457 = fdiv fast float 1.000000e+00, %6456
  %6458 = fsub fast float %6454, %6457
  %6459 = call float @dx.op.binary.f32(i32 36, float %6450, float %6458)  ; FMin(a,b)
  %6460 = call float @dx.op.binary.f32(i32 35, float %6451, float %6454)  ; FMax(a,b)
  %6461 = add nuw i32 %6452, 1
  %6462 = icmp eq i32 %6461, %6435
  br i1 %6462, label %6463, label %6449

; <label>:6463                                    ; preds = %6449
  br label %6464

; <label>:6464                                    ; preds = %6463, %6442
  %6465 = phi float [ %6446, %6442 ], [ %6459, %6463 ]
  %6466 = phi float [ %6443, %6442 ], [ %6460, %6463 ]
  %6467 = fsub fast float %6466, %6465
  %6468 = fdiv fast float 1.000000e+00, %6467
  br label %6469

; <label>:6469                                    ; preds = %6464, %6439
  %6470 = phi float [ %6440, %6439 ], [ %6466, %6464 ]
  %6471 = phi float [ %6441, %6439 ], [ %6468, %6464 ]
  %6472 = fadd fast float %6173, %6470
  %6473 = fmul fast float %6472, %6471
  %6474 = call float @dx.op.unary.f32(i32 7, float %6473)  ; Saturate(value)
  %6475 = fmul fast float %6474, 2.000000e+00
  %6476 = fsub fast float 1.000000e+00, %6475
  %6477 = fmul fast float %6311, %6311
  %6478 = fsub fast float %6312, %6477
  %6479 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6478)  ; FMax(a,b)
  %6480 = fdiv fast float 1.000000e+00, %6479
  %6481 = fmul fast float %6312, %6311
  %6482 = fsub fast float %6313, %6481
  %6483 = fsub fast float %6476, %6311
  %6484 = fmul fast float %6476, %6476
  %6485 = fsub fast float %6484, %6312
  %6486 = fmul fast float %6480, %6482
  %6487 = fmul fast float %6486, %6483
  %6488 = fsub fast float %6485, %6487
  %6489 = fmul fast float %6312, %6312
  %6490 = fsub fast float %6314, %6489
  %6491 = fmul fast float %6482, %6482
  %6492 = fmul fast float %6491, %6480
  %6493 = fsub fast float %6490, %6492
  %6494 = fdiv fast float %6488, %6493
  %6495 = fmul fast float %6494, %6482
  %6496 = fsub fast float %6483, %6495
  %6497 = fmul fast float %6496, %6480
  %6498 = fmul fast float %6497, %6311
  %6499 = fsub fast float 1.000000e+00, %6498
  %6500 = fmul fast float %6494, %6312
  %6501 = fsub fast float %6499, %6500
  %6502 = fmul fast float %6497, %6497
  %6503 = fmul fast float %6494, 4.000000e+00
  %6504 = fmul fast float %6503, %6501
  %6505 = fsub fast float %6502, %6504
  %6506 = call float @dx.op.unary.f32(i32 24, float %6505)  ; Sqrt(value)
  %6507 = fcmp fast oge float %6497, 0.000000e+00
  %6508 = fsub fast float -0.000000e+00, %6506
  %6509 = select i1 %6507, float %6508, float %6506
  %6510 = fsub fast float %6509, %6497
  %6511 = fdiv fast float %6510, %6494
  %6512 = fdiv fast float %6501, %6510
  %6513 = fmul fast float %6511, 5.000000e-01
  %6514 = fmul fast float %6512, 2.000000e+00
  %6515 = select i1 %6507, float %6513, float %6514
  %6516 = select i1 %6507, float %6514, float %6513
  %6517 = call float @dx.op.binary.f32(i32 35, float %6515, float %6516)  ; FMax(a,b)
  %6518 = call float @dx.op.binary.f32(i32 36, float %6515, float %6516)  ; FMin(a,b)
  %6519 = fcmp fast ogt float %6476, %6517
  %6520 = fsub fast float %6476, %6518
  %6521 = fsub fast float %6476, %6517
  %6522 = fsub fast float %6517, %6518
  %6523 = select i1 %6519, float %6521, float %6522
  %6524 = fmul float %6520, %6523
  %6525 = select i1 %6519, float %6518, float %6476
  %6526 = fcmp fast ogt float %6476, %6518
  %6527 = fmul fast float %6525, %6517
  %6528 = fadd fast float %6525, %6517
  %6529 = fmul fast float %6528, %6311
  %6530 = fadd fast float %6527, %6312
  %6531 = fsub fast float %6530, %6529
  %6532 = fdiv fast float %6531, %6524
  %6533 = select i1 %6526, float %6532, float 0.000000e+00
  %6534 = fsub fast float 1.000000e+00, %6533
  %6535 = select i1 %6519, float %6534, float %6533
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6296, 3
  %6538 = fmul fast float %6537, %6536
  %6539 = fsub fast float 1.000000e+00, %6538
  br label %6540

; <label>:6540                                    ; preds = %6469, %6181, %6146, %6142, %6106
  %6541 = phi float [ 1.000000e+00, %6106 ], [ %6539, %6469 ], [ 1.000000e+00, %6146 ], [ 1.000000e+00, %6181 ], [ 1.000000e+00, %6142 ]
  %6542 = fcmp fast ogt float %6138, 0.000000e+00
  br i1 %6542, label %6543, label %6707, !dx.controlflow.hints !125

; <label>:6543                                    ; preds = %6540
  %6544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.f32 %6544, 2
  %6546 = fadd fast float %6545, %6019
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 3
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6552 = call float @dx.op.binary.f32(i32 35, float %6546, float 0.000000e+00)  ; FMax(a,b)
  %6553 = fadd fast float %6552, 0x3F10000000000000
  %6554 = fcmp fast oeq float %6551, 0.000000e+00
  br i1 %6554, label %6555, label %6622

; <label>:6555                                    ; preds = %6543
  %6556 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6557 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6558 = fmul fast float %6557, %6037
  %6559 = fmul fast float %6556, %6038
  %6560 = fadd fast float %6558, 5.000000e-01
  %6561 = call float @dx.op.unary.f32(i32 27, float %6560)  ; Round_ni(value)
  %6562 = fadd fast float %6559, 5.000000e-01
  %6563 = call float @dx.op.unary.f32(i32 27, float %6562)  ; Round_ni(value)
  %6564 = fsub fast float %6560, %6561
  %6565 = fsub fast float %6562, %6563
  %6566 = fadd fast float %6561, -5.000000e-01
  %6567 = fadd fast float %6563, -5.000000e-01
  %6568 = fmul fast float %6564, 2.000000e+00
  %6569 = fsub fast float 3.000000e+00, %6568
  %6570 = fadd fast float %6568, 1.000000e+00
  %6571 = fsub fast float 2.000000e+00, %6564
  %6572 = bitcast float %6569 to i32
  %6573 = sub nsw i32 2129859010, %6572
  %6574 = bitcast i32 %6573 to float
  %6575 = fmul fast float %6574, %6571
  %6576 = fadd fast float %6575, -1.000000e+00
  %6577 = bitcast float %6570 to i32
  %6578 = sub nsw i32 2129859010, %6577
  %6579 = bitcast i32 %6578 to float
  %6580 = fmul fast float %6579, %6564
  %6581 = fadd fast float %6580, 1.000000e+00
  %6582 = fmul fast float %6565, 2.000000e+00
  %6583 = fsub fast float 3.000000e+00, %6582
  %6584 = fadd fast float %6582, 1.000000e+00
  %6585 = fsub fast float 2.000000e+00, %6565
  %6586 = bitcast float %6583 to i32
  %6587 = sub nsw i32 2129859010, %6586
  %6588 = bitcast i32 %6587 to float
  %6589 = fmul fast float %6588, %6585
  %6590 = fadd fast float %6589, -1.000000e+00
  %6591 = bitcast float %6584 to i32
  %6592 = sub nsw i32 2129859010, %6591
  %6593 = bitcast i32 %6592 to float
  %6594 = fmul fast float %6593, %6565
  %6595 = fadd fast float %6594, 1.000000e+00
  %6596 = fadd fast float %6576, %6566
  %6597 = fmul fast float %6596, %6548
  %6598 = fadd fast float %6590, %6567
  %6599 = fmul fast float %6598, %6549
  %6600 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6597, float %6599, float undef, float undef, i32 0, i32 0, i32 undef, float %6553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = fmul fast float %6601, %6569
  %6603 = fadd fast float %6581, %6566
  %6604 = fmul fast float %6603, %6548
  %6605 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6604, float %6599, float undef, float undef, i32 0, i32 0, i32 undef, float %6553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 0
  %6607 = fmul fast float %6606, %6570
  %6608 = fadd fast float %6595, %6567
  %6609 = fmul fast float %6608, %6549
  %6610 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6597, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float %6553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  %6612 = fmul fast float %6611, %6569
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6604, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float %6553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  %6615 = fmul fast float %6614, %6570
  %6616 = fadd fast float %6615, %6612
  %6617 = fmul fast float %6616, %6584
  %6618 = fadd fast float %6607, %6602
  %6619 = fmul fast float %6618, %6583
  %6620 = fadd fast float %6619, %6617
  %6621 = fmul fast float %6620, 6.250000e-02
  br label %6707

; <label>:6622                                    ; preds = %6543
  %6623 = fmul fast float %289, 0x401921FB60000000
  %6624 = call float @dx.op.unary.f32(i32 13, float %6623)  ; Sin(value)
  %6625 = call float @dx.op.unary.f32(i32 12, float %6623)  ; Cos(value)
  %6626 = fsub fast float -0.000000e+00, %6624
  br label %6627

; <label>:6627                                    ; preds = %6676, %6622
  %6628 = phi float [ 0.000000e+00, %6622 ], [ %6671, %6676 ]
  %6629 = phi float [ 0.000000e+00, %6622 ], [ %6673, %6676 ]
  %6630 = phi i32 [ 0, %6622 ], [ %6677, %6676 ]
  %6631 = mul i32 %6630, 2
  %6632 = add i32 0, %6631
  %6633 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6632
  %6634 = load float, float* %6633, align 4
  %6635 = mul i32 %6630, 2
  %6636 = add i32 1, %6635
  %6637 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6636
  %6638 = load float, float* %6637, align 4
  %6639 = fmul fast float %6634, %6625
  %6640 = call float @dx.op.tertiary.f32(i32 46, float %6638, float %6626, float %6639)  ; FMad(a,b,c)
  %6641 = fmul fast float %6634, %6624
  %6642 = call float @dx.op.tertiary.f32(i32 46, float %6638, float %6625, float %6641)  ; FMad(a,b,c)
  %6643 = fmul fast float %6640, %6551
  %6644 = fmul fast float %6642, %6551
  %6645 = fadd fast float %6643, %6037
  %6646 = fadd fast float %6644, %6038
  %6647 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6645, float %6646, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6648 = extractvalue %dx.types.ResRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.ResRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.ResRet.f32 %6647, 2
  %6651 = extractvalue %dx.types.ResRet.f32 %6647, 3
  %6652 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 0
  store float %6648, float* %6652, align 4
  %6653 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 1
  store float %6649, float* %6653, align 4
  %6654 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 2
  store float %6650, float* %6654, align 4
  %6655 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 3
  store float %6651, float* %6655, align 4
  %6656 = fsub fast float %6648, %6553
  %6657 = fcmp fast olt float %6656, 0.000000e+00
  %6658 = select i1 %6657, float 0.000000e+00, float 1.000000e+00
  %6659 = fadd fast float %6658, %6628
  %6660 = fmul fast float %6658, %6656
  %6661 = fadd fast float %6660, %6629
  br label %6662

; <label>:6662                                    ; preds = %6662, %6627
  %6663 = phi i32 [ 1, %6627 ], [ %6674, %6662 ]
  %6664 = phi float [ %6661, %6627 ], [ %6673, %6662 ]
  %6665 = phi float [ %6659, %6627 ], [ %6671, %6662 ]
  %6666 = getelementptr [4 x float], [4 x float]* %116, i32 0, i32 %6663
  %6667 = load float, float* %6666, align 4, !tbaa !126, !noalias !116
  %6668 = fsub fast float %6667, %6553
  %6669 = fcmp fast olt float %6668, 0.000000e+00
  %6670 = select i1 %6669, float 0.000000e+00, float 1.000000e+00
  %6671 = fadd fast float %6670, %6665
  %6672 = fmul fast float %6670, %6668
  %6673 = fadd fast float %6672, %6664
  %6674 = add nuw nsw i32 %6663, 1
  %6675 = icmp eq i32 %6674, 4
  br i1 %6675, label %6676, label %6662, !llvm.loop !128

; <label>:6676                                    ; preds = %6662
  %6677 = add nuw nsw i32 %6630, 1
  %6678 = icmp eq i32 %6677, 8
  br i1 %6678, label %6679, label %6627, !llvm.loop !129

; <label>:6679                                    ; preds = %6676
  %6680 = fdiv fast float 1.000000e+00, %6671
  %6681 = fmul fast float %6680, %6673
  %6682 = fdiv fast float 1.000000e+00, %6553
  %6683 = fmul fast float %6681, %6682
  %6684 = call float @dx.op.unary.f32(i32 7, float %6683)  ; Saturate(value)
  %6685 = call float @dx.op.binary.f32(i32 35, float %6684, float 0.000000e+00)  ; FMax(a,b)
  %6686 = fmul fast float %6671, 3.125000e-02
  %6687 = call float @dx.op.unary.f32(i32 7, float %6686)  ; Saturate(value)
  %6688 = fmul fast float %6687, 2.000000e+00
  %6689 = fadd fast float %6688, -1.000000e+00
  %6690 = fcmp fast ogt float %6689, 0.000000e+00
  %6691 = fcmp fast olt float %6689, 0.000000e+00
  %6692 = zext i1 %6690 to i32
  %6693 = zext i1 %6691 to i32
  %6694 = sub nsw i32 %6692, %6693
  %6695 = sitofp i32 %6694 to float
  %6696 = fmul fast float %6695, %6689
  %6697 = fsub fast float 1.000000e+00, %6696
  %6698 = fmul fast float %6697, %6697
  %6699 = fmul fast float %6698, %6697
  %6700 = fsub fast float %6697, %6699
  %6701 = fmul fast float %6700, %6685
  %6702 = fsub fast float 1.000000e+00, %6699
  %6703 = fsub fast float %6702, %6701
  %6704 = fmul fast float %6695, 5.000000e-01
  %6705 = fmul fast float %6704, %6703
  %6706 = fsub fast float 5.000000e-01, %6705
  br label %6707

; <label>:6707                                    ; preds = %6679, %6555, %6540
  %6708 = phi float [ 1.000000e+00, %6540 ], [ %6621, %6555 ], [ %6706, %6679 ]
  %6709 = fcmp fast ogt float %6136, 0.000000e+00
  br i1 %6709, label %6710, label %6874, !dx.controlflow.hints !130

; <label>:6710                                    ; preds = %6707
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6713 = fadd fast float %6712, %6019
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6719 = call float @dx.op.binary.f32(i32 35, float %6713, float 0.000000e+00)  ; FMax(a,b)
  %6720 = fadd fast float %6719, 0x3F10000000000000
  %6721 = fcmp fast oeq float %6718, 0.000000e+00
  br i1 %6721, label %6722, label %6789

; <label>:6722                                    ; preds = %6710
  %6723 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6725 = fmul fast float %6724, %6029
  %6726 = fmul fast float %6723, %6030
  %6727 = fadd fast float %6725, 5.000000e-01
  %6728 = call float @dx.op.unary.f32(i32 27, float %6727)  ; Round_ni(value)
  %6729 = fadd fast float %6726, 5.000000e-01
  %6730 = call float @dx.op.unary.f32(i32 27, float %6729)  ; Round_ni(value)
  %6731 = fsub fast float %6727, %6728
  %6732 = fsub fast float %6729, %6730
  %6733 = fadd fast float %6728, -5.000000e-01
  %6734 = fadd fast float %6730, -5.000000e-01
  %6735 = fmul fast float %6731, 2.000000e+00
  %6736 = fsub fast float 3.000000e+00, %6735
  %6737 = fadd fast float %6735, 1.000000e+00
  %6738 = fsub fast float 2.000000e+00, %6731
  %6739 = bitcast float %6736 to i32
  %6740 = sub nsw i32 2129859010, %6739
  %6741 = bitcast i32 %6740 to float
  %6742 = fmul fast float %6741, %6738
  %6743 = fadd fast float %6742, -1.000000e+00
  %6744 = bitcast float %6737 to i32
  %6745 = sub nsw i32 2129859010, %6744
  %6746 = bitcast i32 %6745 to float
  %6747 = fmul fast float %6746, %6731
  %6748 = fadd fast float %6747, 1.000000e+00
  %6749 = fmul fast float %6732, 2.000000e+00
  %6750 = fsub fast float 3.000000e+00, %6749
  %6751 = fadd fast float %6749, 1.000000e+00
  %6752 = fsub fast float 2.000000e+00, %6732
  %6753 = bitcast float %6750 to i32
  %6754 = sub nsw i32 2129859010, %6753
  %6755 = bitcast i32 %6754 to float
  %6756 = fmul fast float %6755, %6752
  %6757 = fadd fast float %6756, -1.000000e+00
  %6758 = bitcast float %6751 to i32
  %6759 = sub nsw i32 2129859010, %6758
  %6760 = bitcast i32 %6759 to float
  %6761 = fmul fast float %6760, %6732
  %6762 = fadd fast float %6761, 1.000000e+00
  %6763 = fadd fast float %6743, %6733
  %6764 = fmul fast float %6763, %6715
  %6765 = fadd fast float %6757, %6734
  %6766 = fmul fast float %6765, %6716
  %6767 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6764, float %6766, float undef, float undef, i32 0, i32 0, i32 undef, float %6720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6768 = extractvalue %dx.types.ResRet.f32 %6767, 0
  %6769 = fmul fast float %6768, %6736
  %6770 = fadd fast float %6748, %6733
  %6771 = fmul fast float %6770, %6715
  %6772 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6771, float %6766, float undef, float undef, i32 0, i32 0, i32 undef, float %6720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6773 = extractvalue %dx.types.ResRet.f32 %6772, 0
  %6774 = fmul fast float %6773, %6737
  %6775 = fadd fast float %6762, %6734
  %6776 = fmul fast float %6775, %6716
  %6777 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6764, float %6776, float undef, float undef, i32 0, i32 0, i32 undef, float %6720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6778 = extractvalue %dx.types.ResRet.f32 %6777, 0
  %6779 = fmul fast float %6778, %6736
  %6780 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6771, float %6776, float undef, float undef, i32 0, i32 0, i32 undef, float %6720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = fmul fast float %6781, %6737
  %6783 = fadd fast float %6782, %6779
  %6784 = fmul fast float %6783, %6751
  %6785 = fadd fast float %6774, %6769
  %6786 = fmul fast float %6785, %6750
  %6787 = fadd fast float %6786, %6784
  %6788 = fmul fast float %6787, 6.250000e-02
  br label %6874

; <label>:6789                                    ; preds = %6710
  %6790 = fmul fast float %289, 0x401921FB60000000
  %6791 = call float @dx.op.unary.f32(i32 13, float %6790)  ; Sin(value)
  %6792 = call float @dx.op.unary.f32(i32 12, float %6790)  ; Cos(value)
  %6793 = fsub fast float -0.000000e+00, %6791
  br label %6794

; <label>:6794                                    ; preds = %6843, %6789
  %6795 = phi float [ 0.000000e+00, %6789 ], [ %6838, %6843 ]
  %6796 = phi float [ 0.000000e+00, %6789 ], [ %6840, %6843 ]
  %6797 = phi i32 [ 0, %6789 ], [ %6844, %6843 ]
  %6798 = mul i32 %6797, 2
  %6799 = add i32 0, %6798
  %6800 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6799
  %6801 = load float, float* %6800, align 4
  %6802 = mul i32 %6797, 2
  %6803 = add i32 1, %6802
  %6804 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6803
  %6805 = load float, float* %6804, align 4
  %6806 = fmul fast float %6801, %6792
  %6807 = call float @dx.op.tertiary.f32(i32 46, float %6805, float %6793, float %6806)  ; FMad(a,b,c)
  %6808 = fmul fast float %6801, %6791
  %6809 = call float @dx.op.tertiary.f32(i32 46, float %6805, float %6792, float %6808)  ; FMad(a,b,c)
  %6810 = fmul fast float %6807, %6718
  %6811 = fmul fast float %6809, %6718
  %6812 = fadd fast float %6810, %6029
  %6813 = fadd fast float %6811, %6030
  %6814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6812, float %6813, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6815 = extractvalue %dx.types.ResRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.ResRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.ResRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.ResRet.f32 %6814, 3
  %6819 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 0
  store float %6815, float* %6819, align 4
  %6820 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 1
  store float %6816, float* %6820, align 4
  %6821 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 2
  store float %6817, float* %6821, align 4
  %6822 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 3
  store float %6818, float* %6822, align 4
  %6823 = fsub fast float %6815, %6720
  %6824 = fcmp fast olt float %6823, 0.000000e+00
  %6825 = select i1 %6824, float 0.000000e+00, float 1.000000e+00
  %6826 = fadd fast float %6825, %6795
  %6827 = fmul fast float %6825, %6823
  %6828 = fadd fast float %6827, %6796
  br label %6829

; <label>:6829                                    ; preds = %6829, %6794
  %6830 = phi i32 [ 1, %6794 ], [ %6841, %6829 ]
  %6831 = phi float [ %6828, %6794 ], [ %6840, %6829 ]
  %6832 = phi float [ %6826, %6794 ], [ %6838, %6829 ]
  %6833 = getelementptr [4 x float], [4 x float]* %115, i32 0, i32 %6830
  %6834 = load float, float* %6833, align 4, !tbaa !126, !noalias !116
  %6835 = fsub fast float %6834, %6720
  %6836 = fcmp fast olt float %6835, 0.000000e+00
  %6837 = select i1 %6836, float 0.000000e+00, float 1.000000e+00
  %6838 = fadd fast float %6837, %6832
  %6839 = fmul fast float %6837, %6835
  %6840 = fadd fast float %6839, %6831
  %6841 = add nuw nsw i32 %6830, 1
  %6842 = icmp eq i32 %6841, 4
  br i1 %6842, label %6843, label %6829, !llvm.loop !128

; <label>:6843                                    ; preds = %6829
  %6844 = add nuw nsw i32 %6797, 1
  %6845 = icmp eq i32 %6844, 8
  br i1 %6845, label %6846, label %6794, !llvm.loop !129

; <label>:6846                                    ; preds = %6843
  %6847 = fdiv fast float 1.000000e+00, %6838
  %6848 = fmul fast float %6847, %6840
  %6849 = fdiv fast float 1.000000e+00, %6720
  %6850 = fmul fast float %6848, %6849
  %6851 = call float @dx.op.unary.f32(i32 7, float %6850)  ; Saturate(value)
  %6852 = call float @dx.op.binary.f32(i32 35, float %6851, float 0.000000e+00)  ; FMax(a,b)
  %6853 = fmul fast float %6838, 3.125000e-02
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = fmul fast float %6854, 2.000000e+00
  %6856 = fadd fast float %6855, -1.000000e+00
  %6857 = fcmp fast ogt float %6856, 0.000000e+00
  %6858 = fcmp fast olt float %6856, 0.000000e+00
  %6859 = zext i1 %6857 to i32
  %6860 = zext i1 %6858 to i32
  %6861 = sub nsw i32 %6859, %6860
  %6862 = sitofp i32 %6861 to float
  %6863 = fmul fast float %6862, %6856
  %6864 = fsub fast float 1.000000e+00, %6863
  %6865 = fmul fast float %6864, %6864
  %6866 = fmul fast float %6865, %6864
  %6867 = fsub fast float %6864, %6866
  %6868 = fmul fast float %6867, %6852
  %6869 = fsub fast float 1.000000e+00, %6866
  %6870 = fsub fast float %6869, %6868
  %6871 = fmul fast float %6862, 5.000000e-01
  %6872 = fmul fast float %6871, %6870
  %6873 = fsub fast float 5.000000e-01, %6872
  br label %6874

; <label>:6874                                    ; preds = %6846, %6722, %6707
  %6875 = phi float [ 1.000000e+00, %6707 ], [ %6788, %6722 ], [ %6873, %6846 ]
  %6876 = fcmp fast ogt float %6135, 0.000000e+00
  br i1 %6876, label %6877, label %7195, !dx.controlflow.hints !131

; <label>:6877                                    ; preds = %6874
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6880 = fadd fast float %6879, %6019
  %6881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.f32 %6881, 2
  %6883 = extractvalue %dx.types.CBufRet.f32 %6881, 3
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  %6886 = call float @dx.op.binary.f32(i32 35, float %6880, float 0.000000e+00)  ; FMax(a,b)
  %6887 = fadd fast float %6886, 0x3F10000000000000
  %6888 = fcmp fast oeq float %6885, 0.000000e+00
  br i1 %6022, label %6889, label %7042, !dx.controlflow.hints !132

; <label>:6889                                    ; preds = %6877
  br i1 %6888, label %6890, label %6957

; <label>:6890                                    ; preds = %6889
  %6891 = extractvalue %dx.types.CBufRet.f32 %6881, 1
  %6892 = extractvalue %dx.types.CBufRet.f32 %6881, 0
  %6893 = fmul fast float %6892, %6011
  %6894 = fmul fast float %6891, %6015
  %6895 = fadd fast float %6893, 5.000000e-01
  %6896 = call float @dx.op.unary.f32(i32 27, float %6895)  ; Round_ni(value)
  %6897 = fadd fast float %6894, 5.000000e-01
  %6898 = call float @dx.op.unary.f32(i32 27, float %6897)  ; Round_ni(value)
  %6899 = fsub fast float %6895, %6896
  %6900 = fsub fast float %6897, %6898
  %6901 = fadd fast float %6896, -5.000000e-01
  %6902 = fadd fast float %6898, -5.000000e-01
  %6903 = fmul fast float %6899, 2.000000e+00
  %6904 = fsub fast float 3.000000e+00, %6903
  %6905 = fadd fast float %6903, 1.000000e+00
  %6906 = fsub fast float 2.000000e+00, %6899
  %6907 = bitcast float %6904 to i32
  %6908 = sub nsw i32 2129859010, %6907
  %6909 = bitcast i32 %6908 to float
  %6910 = fmul fast float %6909, %6906
  %6911 = fadd fast float %6910, -1.000000e+00
  %6912 = bitcast float %6905 to i32
  %6913 = sub nsw i32 2129859010, %6912
  %6914 = bitcast i32 %6913 to float
  %6915 = fmul fast float %6914, %6899
  %6916 = fadd fast float %6915, 1.000000e+00
  %6917 = fmul fast float %6900, 2.000000e+00
  %6918 = fsub fast float 3.000000e+00, %6917
  %6919 = fadd fast float %6917, 1.000000e+00
  %6920 = fsub fast float 2.000000e+00, %6900
  %6921 = bitcast float %6918 to i32
  %6922 = sub nsw i32 2129859010, %6921
  %6923 = bitcast i32 %6922 to float
  %6924 = fmul fast float %6923, %6920
  %6925 = fadd fast float %6924, -1.000000e+00
  %6926 = bitcast float %6919 to i32
  %6927 = sub nsw i32 2129859010, %6926
  %6928 = bitcast i32 %6927 to float
  %6929 = fmul fast float %6928, %6900
  %6930 = fadd fast float %6929, 1.000000e+00
  %6931 = fadd fast float %6911, %6901
  %6932 = fmul fast float %6931, %6882
  %6933 = fadd fast float %6925, %6902
  %6934 = fmul fast float %6933, %6883
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6932, float %6934, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = fmul fast float %6936, %6904
  %6938 = fadd fast float %6916, %6901
  %6939 = fmul fast float %6938, %6882
  %6940 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6939, float %6934, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6941 = extractvalue %dx.types.ResRet.f32 %6940, 0
  %6942 = fmul fast float %6941, %6905
  %6943 = fadd fast float %6930, %6902
  %6944 = fmul fast float %6943, %6883
  %6945 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6932, float %6944, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = fmul fast float %6946, %6904
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6939, float %6944, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = fmul fast float %6949, %6905
  %6951 = fadd fast float %6950, %6947
  %6952 = fmul fast float %6951, %6919
  %6953 = fadd fast float %6942, %6937
  %6954 = fmul fast float %6953, %6918
  %6955 = fadd fast float %6954, %6952
  %6956 = fmul fast float %6955, 6.250000e-02
  br label %7195

; <label>:6957                                    ; preds = %6889
  %6958 = fmul fast float %289, 0x401921FB60000000
  %6959 = call float @dx.op.unary.f32(i32 13, float %6958)  ; Sin(value)
  %6960 = call float @dx.op.unary.f32(i32 12, float %6958)  ; Cos(value)
  %6961 = fsub fast float -0.000000e+00, %6959
  br label %6962

; <label>:6962                                    ; preds = %7011, %6957
  %6963 = phi float [ 0.000000e+00, %6957 ], [ %7006, %7011 ]
  %6964 = phi float [ 0.000000e+00, %6957 ], [ %7008, %7011 ]
  %6965 = phi i32 [ 0, %6957 ], [ %7012, %7011 ]
  %6966 = mul i32 %6965, 2
  %6967 = add i32 0, %6966
  %6968 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6967
  %6969 = load float, float* %6968, align 4
  %6970 = mul i32 %6965, 2
  %6971 = add i32 1, %6970
  %6972 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6971
  %6973 = load float, float* %6972, align 4
  %6974 = fmul fast float %6969, %6960
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %6973, float %6961, float %6974)  ; FMad(a,b,c)
  %6976 = fmul fast float %6969, %6959
  %6977 = call float @dx.op.tertiary.f32(i32 46, float %6973, float %6960, float %6976)  ; FMad(a,b,c)
  %6978 = fmul fast float %6975, %6885
  %6979 = fmul fast float %6977, %6885
  %6980 = fadd fast float %6978, %6011
  %6981 = fadd fast float %6979, %6015
  %6982 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6980, float %6981, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.ResRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.ResRet.f32 %6982, 2
  %6986 = extractvalue %dx.types.ResRet.f32 %6982, 3
  %6987 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %6983, float* %6987, align 4
  %6988 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %6984, float* %6988, align 4
  %6989 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %6985, float* %6989, align 4
  %6990 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %6986, float* %6990, align 4
  %6991 = fsub fast float %6983, %6887
  %6992 = fcmp fast olt float %6991, 0.000000e+00
  %6993 = select i1 %6992, float 0.000000e+00, float 1.000000e+00
  %6994 = fadd fast float %6993, %6963
  %6995 = fmul fast float %6993, %6991
  %6996 = fadd fast float %6995, %6964
  br label %6997

; <label>:6997                                    ; preds = %6997, %6962
  %6998 = phi i32 [ 1, %6962 ], [ %7009, %6997 ]
  %6999 = phi float [ %6996, %6962 ], [ %7008, %6997 ]
  %7000 = phi float [ %6994, %6962 ], [ %7006, %6997 ]
  %7001 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %6998
  %7002 = load float, float* %7001, align 4, !tbaa !126, !noalias !116
  %7003 = fsub fast float %7002, %6887
  %7004 = fcmp fast olt float %7003, 0.000000e+00
  %7005 = select i1 %7004, float 0.000000e+00, float 1.000000e+00
  %7006 = fadd fast float %7005, %7000
  %7007 = fmul fast float %7005, %7003
  %7008 = fadd fast float %7007, %6999
  %7009 = add nuw nsw i32 %6998, 1
  %7010 = icmp eq i32 %7009, 4
  br i1 %7010, label %7011, label %6997, !llvm.loop !128

; <label>:7011                                    ; preds = %6997
  %7012 = add nuw nsw i32 %6965, 1
  %7013 = icmp eq i32 %7012, 8
  br i1 %7013, label %7014, label %6962, !llvm.loop !129

; <label>:7014                                    ; preds = %7011
  %7015 = fdiv fast float 1.000000e+00, %7006
  %7016 = fmul fast float %7015, %7008
  %7017 = fdiv fast float 1.000000e+00, %6887
  %7018 = fmul fast float %7016, %7017
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  %7020 = call float @dx.op.binary.f32(i32 35, float %7019, float 0.000000e+00)  ; FMax(a,b)
  %7021 = fmul fast float %7006, 3.125000e-02
  %7022 = call float @dx.op.unary.f32(i32 7, float %7021)  ; Saturate(value)
  %7023 = fmul fast float %7022, 2.000000e+00
  %7024 = fadd fast float %7023, -1.000000e+00
  %7025 = fcmp fast ogt float %7024, 0.000000e+00
  %7026 = fcmp fast olt float %7024, 0.000000e+00
  %7027 = zext i1 %7025 to i32
  %7028 = zext i1 %7026 to i32
  %7029 = sub nsw i32 %7027, %7028
  %7030 = sitofp i32 %7029 to float
  %7031 = fmul fast float %7030, %7024
  %7032 = fsub fast float 1.000000e+00, %7031
  %7033 = fmul fast float %7032, %7032
  %7034 = fmul fast float %7033, %7032
  %7035 = fsub fast float %7032, %7034
  %7036 = fmul fast float %7035, %7020
  %7037 = fsub fast float 1.000000e+00, %7034
  %7038 = fsub fast float %7037, %7036
  %7039 = fmul fast float %7030, 5.000000e-01
  %7040 = fmul fast float %7039, %7038
  %7041 = fsub fast float 5.000000e-01, %7040
  br label %7195

; <label>:7042                                    ; preds = %6877
  br i1 %6888, label %7043, label %7110

; <label>:7043                                    ; preds = %7042
  %7044 = extractvalue %dx.types.CBufRet.f32 %6881, 1
  %7045 = extractvalue %dx.types.CBufRet.f32 %6881, 0
  %7046 = fmul fast float %7045, %6011
  %7047 = fmul fast float %7044, %6015
  %7048 = fadd fast float %7046, 5.000000e-01
  %7049 = call float @dx.op.unary.f32(i32 27, float %7048)  ; Round_ni(value)
  %7050 = fadd fast float %7047, 5.000000e-01
  %7051 = call float @dx.op.unary.f32(i32 27, float %7050)  ; Round_ni(value)
  %7052 = fsub fast float %7048, %7049
  %7053 = fsub fast float %7050, %7051
  %7054 = fadd fast float %7049, -5.000000e-01
  %7055 = fadd fast float %7051, -5.000000e-01
  %7056 = fmul fast float %7052, 2.000000e+00
  %7057 = fsub fast float 3.000000e+00, %7056
  %7058 = fadd fast float %7056, 1.000000e+00
  %7059 = fsub fast float 2.000000e+00, %7052
  %7060 = bitcast float %7057 to i32
  %7061 = sub nsw i32 2129859010, %7060
  %7062 = bitcast i32 %7061 to float
  %7063 = fmul fast float %7062, %7059
  %7064 = fadd fast float %7063, -1.000000e+00
  %7065 = bitcast float %7058 to i32
  %7066 = sub nsw i32 2129859010, %7065
  %7067 = bitcast i32 %7066 to float
  %7068 = fmul fast float %7067, %7052
  %7069 = fadd fast float %7068, 1.000000e+00
  %7070 = fmul fast float %7053, 2.000000e+00
  %7071 = fsub fast float 3.000000e+00, %7070
  %7072 = fadd fast float %7070, 1.000000e+00
  %7073 = fsub fast float 2.000000e+00, %7053
  %7074 = bitcast float %7071 to i32
  %7075 = sub nsw i32 2129859010, %7074
  %7076 = bitcast i32 %7075 to float
  %7077 = fmul fast float %7076, %7073
  %7078 = fadd fast float %7077, -1.000000e+00
  %7079 = bitcast float %7072 to i32
  %7080 = sub nsw i32 2129859010, %7079
  %7081 = bitcast i32 %7080 to float
  %7082 = fmul fast float %7081, %7053
  %7083 = fadd fast float %7082, 1.000000e+00
  %7084 = fadd fast float %7064, %7054
  %7085 = fmul fast float %7084, %6882
  %7086 = fadd fast float %7078, %7055
  %7087 = fmul fast float %7086, %6883
  %7088 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7085, float %7087, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 0
  %7090 = fmul fast float %7089, %7057
  %7091 = fadd fast float %7069, %7054
  %7092 = fmul fast float %7091, %6882
  %7093 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7092, float %7087, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7094 = extractvalue %dx.types.ResRet.f32 %7093, 0
  %7095 = fmul fast float %7094, %7058
  %7096 = fadd fast float %7083, %7055
  %7097 = fmul fast float %7096, %6883
  %7098 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7085, float %7097, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7099 = extractvalue %dx.types.ResRet.f32 %7098, 0
  %7100 = fmul fast float %7099, %7057
  %7101 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7092, float %7097, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = fmul fast float %7102, %7058
  %7104 = fadd fast float %7103, %7100
  %7105 = fmul fast float %7104, %7072
  %7106 = fadd fast float %7095, %7090
  %7107 = fmul fast float %7106, %7071
  %7108 = fadd fast float %7107, %7105
  %7109 = fmul fast float %7108, 6.250000e-02
  br label %7195

; <label>:7110                                    ; preds = %7042
  %7111 = fmul fast float %289, 0x401921FB60000000
  %7112 = call float @dx.op.unary.f32(i32 13, float %7111)  ; Sin(value)
  %7113 = call float @dx.op.unary.f32(i32 12, float %7111)  ; Cos(value)
  %7114 = fsub fast float -0.000000e+00, %7112
  br label %7115

; <label>:7115                                    ; preds = %7164, %7110
  %7116 = phi float [ 0.000000e+00, %7110 ], [ %7159, %7164 ]
  %7117 = phi float [ 0.000000e+00, %7110 ], [ %7161, %7164 ]
  %7118 = phi i32 [ 0, %7110 ], [ %7165, %7164 ]
  %7119 = mul i32 %7118, 2
  %7120 = add i32 0, %7119
  %7121 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7120
  %7122 = load float, float* %7121, align 4
  %7123 = mul i32 %7118, 2
  %7124 = add i32 1, %7123
  %7125 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7124
  %7126 = load float, float* %7125, align 4
  %7127 = fmul fast float %7122, %7113
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %7126, float %7114, float %7127)  ; FMad(a,b,c)
  %7129 = fmul fast float %7122, %7112
  %7130 = call float @dx.op.tertiary.f32(i32 46, float %7126, float %7113, float %7129)  ; FMad(a,b,c)
  %7131 = fmul fast float %7128, %6885
  %7132 = fmul fast float %7130, %6885
  %7133 = fadd fast float %7131, %6011
  %7134 = fadd fast float %7132, %6015
  %7135 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7133, float %7134, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7136 = extractvalue %dx.types.ResRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.ResRet.f32 %7135, 1
  %7138 = extractvalue %dx.types.ResRet.f32 %7135, 2
  %7139 = extractvalue %dx.types.ResRet.f32 %7135, 3
  %7140 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %7136, float* %7140, align 4
  %7141 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %7137, float* %7141, align 4
  %7142 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %7138, float* %7142, align 4
  %7143 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %7139, float* %7143, align 4
  %7144 = fsub fast float %7136, %6887
  %7145 = fcmp fast olt float %7144, 0.000000e+00
  %7146 = select i1 %7145, float 0.000000e+00, float 1.000000e+00
  %7147 = fadd fast float %7146, %7116
  %7148 = fmul fast float %7146, %7144
  %7149 = fadd fast float %7148, %7117
  br label %7150

; <label>:7150                                    ; preds = %7150, %7115
  %7151 = phi i32 [ 1, %7115 ], [ %7162, %7150 ]
  %7152 = phi float [ %7149, %7115 ], [ %7161, %7150 ]
  %7153 = phi float [ %7147, %7115 ], [ %7159, %7150 ]
  %7154 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %7151
  %7155 = load float, float* %7154, align 4, !tbaa !126, !noalias !116
  %7156 = fsub fast float %7155, %6887
  %7157 = fcmp fast olt float %7156, 0.000000e+00
  %7158 = select i1 %7157, float 0.000000e+00, float 1.000000e+00
  %7159 = fadd fast float %7158, %7153
  %7160 = fmul fast float %7158, %7156
  %7161 = fadd fast float %7160, %7152
  %7162 = add nuw nsw i32 %7151, 1
  %7163 = icmp eq i32 %7162, 4
  br i1 %7163, label %7164, label %7150, !llvm.loop !128

; <label>:7164                                    ; preds = %7150
  %7165 = add nuw nsw i32 %7118, 1
  %7166 = icmp eq i32 %7165, 8
  br i1 %7166, label %7167, label %7115, !llvm.loop !129

; <label>:7167                                    ; preds = %7164
  %7168 = fdiv fast float 1.000000e+00, %7159
  %7169 = fmul fast float %7168, %7161
  %7170 = fdiv fast float 1.000000e+00, %6887
  %7171 = fmul fast float %7169, %7170
  %7172 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7173 = call float @dx.op.binary.f32(i32 35, float %7172, float 0.000000e+00)  ; FMax(a,b)
  %7174 = fmul fast float %7159, 3.125000e-02
  %7175 = call float @dx.op.unary.f32(i32 7, float %7174)  ; Saturate(value)
  %7176 = fmul fast float %7175, 2.000000e+00
  %7177 = fadd fast float %7176, -1.000000e+00
  %7178 = fcmp fast ogt float %7177, 0.000000e+00
  %7179 = fcmp fast olt float %7177, 0.000000e+00
  %7180 = zext i1 %7178 to i32
  %7181 = zext i1 %7179 to i32
  %7182 = sub nsw i32 %7180, %7181
  %7183 = sitofp i32 %7182 to float
  %7184 = fmul fast float %7183, %7177
  %7185 = fsub fast float 1.000000e+00, %7184
  %7186 = fmul fast float %7185, %7185
  %7187 = fmul fast float %7186, %7185
  %7188 = fsub fast float %7185, %7187
  %7189 = fmul fast float %7188, %7173
  %7190 = fsub fast float 1.000000e+00, %7187
  %7191 = fsub fast float %7190, %7189
  %7192 = fmul fast float %7183, 5.000000e-01
  %7193 = fmul fast float %7192, %7191
  %7194 = fsub fast float 5.000000e-01, %7193
  br label %7195

; <label>:7195                                    ; preds = %7167, %7043, %7014, %6890, %6874
  %7196 = phi float [ 1.000000e+00, %6874 ], [ %6956, %6890 ], [ %7041, %7014 ], [ %7109, %7043 ], [ %7194, %7167 ]
  %7197 = fsub fast float %6708, %6541
  %7198 = fmul fast float %7197, %6108
  %7199 = fadd fast float %7198, %6541
  %7200 = fsub fast float %6875, %7199
  %7201 = fmul fast float %7200, %6107
  %7202 = fadd fast float %7201, %7199
  %7203 = fsub fast float %7196, %7202
  %7204 = fmul fast float %7203, %6135
  %7205 = fadd fast float %7204, %7202
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 2
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  br i1 %7208, label %7209, label %7249, !dx.controlflow.hints !133

; <label>:7209                                    ; preds = %7195
  %7210 = fcmp fast ugt float %7207, 0.000000e+00
  br i1 %7210, label %7211, label %7246

; <label>:7211                                    ; preds = %7209
  %7212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7213 = extractvalue %dx.types.CBufRet.f32 %7212, 0
  %7214 = extractvalue %dx.types.CBufRet.f32 %7212, 1
  %7215 = extractvalue %dx.types.CBufRet.f32 %7212, 2
  %7216 = extractvalue %dx.types.CBufRet.f32 %7212, 3
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 0
  %7219 = extractvalue %dx.types.CBufRet.f32 %7217, 1
  %7220 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7221 = extractvalue %dx.types.CBufRet.f32 %7217, 3
  %7222 = extractvalue %dx.types.CBufRet.f32 %7206, 0
  %7223 = extractvalue %dx.types.CBufRet.f32 %7206, 1
  %7224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7225 = extractvalue %dx.types.CBufRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.CBufRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.CBufRet.f32 %7224, 2
  %7228 = fadd fast float %7225, %5988
  %7229 = fadd fast float %7226, %5989
  %7230 = fadd fast float %7227, %5990
  %7231 = fmul fast float %7228, %7213
  %7232 = call float @dx.op.tertiary.f32(i32 46, float %7214, float %7229, float %7231)  ; FMad(a,b,c)
  %7233 = call float @dx.op.tertiary.f32(i32 46, float %7215, float %7230, float %7232)  ; FMad(a,b,c)
  %7234 = fadd fast float %7233, %7216
  %7235 = fmul fast float %7228, %7218
  %7236 = call float @dx.op.tertiary.f32(i32 46, float %7219, float %7229, float %7235)  ; FMad(a,b,c)
  %7237 = call float @dx.op.tertiary.f32(i32 46, float %7220, float %7230, float %7236)  ; FMad(a,b,c)
  %7238 = fadd fast float %7237, %7221
  %7239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7234, float %7238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = fmul fast float %7240, %7223
  %7242 = fadd fast float %7241, %7222
  %7243 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7244 = fmul fast float %7243, %7207
  %7245 = fsub fast float 1.000000e+00, %7244
  br label %7246

; <label>:7246                                    ; preds = %7211, %7209
  %7247 = phi float [ %7245, %7211 ], [ 1.000000e+00, %7209 ]
  %7248 = fmul fast float %7247, %7205
  br label %7249

; <label>:7249                                    ; preds = %7246, %7195, %5968
  %7250 = phi float [ 1.000000e+00, %5968 ], [ %7248, %7246 ], [ %7205, %7195 ]
  %7251 = call float @dx.op.binary.f32(i32 36, float %7250, float %7250)  ; FMin(a,b)
  %7252 = call float @dx.op.binary.f32(i32 36, float %7250, float %7251)  ; FMin(a,b)
  %7253 = fcmp fast ogt float %7252, 0.000000e+00
  br i1 %7253, label %7254, label %7419, !dx.controlflow.hints !134

; <label>:7254                                    ; preds = %7249
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.CBufRet.f32 %7255, 3
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.CBufRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.CBufRet.f32 %7265, 1
  %7268 = extractvalue %dx.types.CBufRet.f32 %7265, 2
  %7269 = extractvalue %dx.types.CBufRet.f32 %7265, 3
  %7270 = fmul fast float %7256, %5988
  %7271 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %7257, float %7270)  ; FMad(a,b,c)
  %7272 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %7258, float %7271)  ; FMad(a,b,c)
  %7273 = fadd fast float %7272, %7259
  %7274 = fmul fast float %7261, %5988
  %7275 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %7262, float %7274)  ; FMad(a,b,c)
  %7276 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %7263, float %7275)  ; FMad(a,b,c)
  %7277 = fadd fast float %7276, %7264
  %7278 = fmul fast float %7266, %5988
  %7279 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %7267, float %7278)  ; FMad(a,b,c)
  %7280 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %7268, float %7279)  ; FMad(a,b,c)
  %7281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.CBufRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.CBufRet.f32 %7281, 3
  %7285 = fmul fast float %7284, %7273
  %7286 = fmul fast float %7284, %7277
  %7287 = fadd fast float %7285, %7282
  %7288 = fadd fast float %7286, %7283
  %7289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.f32 %7289, 0
  %7291 = extractvalue %dx.types.CBufRet.f32 %7289, 1
  %7292 = fsub fast float %7287, %7290
  %7293 = fsub fast float %7288, %7291
  %7294 = fcmp fast olt float %7292, 0.000000e+00
  %7295 = fcmp fast olt float %7293, 0.000000e+00
  %7296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7297 = extractvalue %dx.types.CBufRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.CBufRet.f32 %7296, 1
  %7299 = extractvalue %dx.types.CBufRet.f32 %7296, 2
  %7300 = extractvalue %dx.types.CBufRet.f32 %7296, 3
  %7301 = select i1 %7294, float %7297, float %7299
  %7302 = select i1 %7295, float %7298, float %7300
  %7303 = fmul fast float %7301, %7292
  %7304 = fmul fast float %7302, %7293
  %7305 = call float @dx.op.unary.f32(i32 6, float %7303)  ; FAbs(value)
  %7306 = call float @dx.op.unary.f32(i32 6, float %7304)  ; FAbs(value)
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 0
  %7309 = call float @dx.op.binary.f32(i32 35, float %7305, float %7306)  ; FMax(a,b)
  %7310 = fsub fast float %7308, %7309
  %7311 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7312 = fcmp fast ogt float %7311, 0.000000e+00
  br i1 %7312, label %7313, label %7354, !dx.controlflow.hints !135

; <label>:7313                                    ; preds = %7254
  %7314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7287, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7315 = extractvalue %dx.types.ResRet.f32 %7314, 1
  %7316 = fcmp fast ogt float %7315, 0.000000e+00
  br i1 %7316, label %7317, label %7349

; <label>:7317                                    ; preds = %7313
  %7318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7287, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7319 = extractvalue %dx.types.ResRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.ResRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.ResRet.f32 %7318, 2
  %7322 = extractvalue %dx.types.ResRet.f32 %7318, 3
  %7323 = fsub fast float 1.000000e+00, %7269
  %7324 = fsub fast float %7323, %7280
  %7325 = fmul fast float %7324, 0x400921FB60000000
  %7326 = fadd fast float %7325, 0x3FF921FB60000000
  %7327 = call float @dx.op.unary.f32(i32 13, float %7326)  ; Sin(value)
  %7328 = fadd fast float %7327, -1.000000e+00
  %7329 = fmul fast float %7328, 0x3FD45F3060000000
  %7330 = fmul fast float %7324, 0x401921FB60000000
  %7331 = fadd fast float %7330, 0x400921FB60000000
  %7332 = call float @dx.op.unary.f32(i32 13, float %7331)  ; Sin(value)
  %7333 = fadd fast float %7332, 0x3E7777A5C0000000
  %7334 = fmul fast float %7333, 0x3FC45F3060000000
  %7335 = fmul fast float %7324, 0x4022D97C80000000
  %7336 = fadd fast float %7335, 0x4012D97C80000000
  %7337 = call float @dx.op.unary.f32(i32 13, float %7336)  ; Sin(value)
  %7338 = fadd fast float %7337, 1.000000e+00
  %7339 = fmul fast float %7338, 0x3FBB2995E0000000
  %7340 = fmul fast float %7324, 0x402921FB60000000
  %7341 = fadd fast float %7340, 0x401921FB60000000
  %7342 = call float @dx.op.unary.f32(i32 13, float %7341)  ; Sin(value)
  %7343 = fadd fast float %7342, 0xBE8777A5C0000000
  %7344 = fmul fast float %7343, 0x3FB45F3060000000
  %7345 = call float @dx.op.dot4.f32(i32 56, float %7319, float %7320, float %7321, float %7322, float %7329, float %7334, float %7339, float %7344)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7346 = fmul fast float %7345, 0xBFF7154760000000
  %7347 = call float @dx.op.unary.f32(i32 21, float %7346)  ; Exp(value)
  %7348 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  br label %7349

; <label>:7349                                    ; preds = %7317, %7313
  %7350 = phi float [ %7348, %7317 ], [ 1.000000e+00, %7313 ]
  %7351 = fadd fast float %7350, -1.000000e+00
  %7352 = fmul fast float %7351, %7311
  %7353 = fadd fast float %7352, 1.000000e+00
  br label %7354

; <label>:7354                                    ; preds = %7349, %7254
  %7355 = phi float [ %7353, %7349 ], [ 1.000000e+00, %7254 ]
  %7356 = fmul fast float %7355, %7250
  %7357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7358 = extractvalue %dx.types.CBufRet.f32 %7357, 0
  %7359 = extractvalue %dx.types.CBufRet.f32 %7357, 1
  %7360 = extractvalue %dx.types.CBufRet.f32 %7357, 2
  %7361 = fadd fast float %7358, %206
  %7362 = fadd fast float %7359, %207
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 1
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 0
  %7367 = extractvalue %dx.types.CBufRet.f32 %7365, 1
  %7368 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %7369 = fsub fast float -0.000000e+00, %7361
  %7370 = fsub fast float -0.000000e+00, %7362
  %7371 = fsub fast float %5113, %7360
  %7372 = fadd fast float %7371, %7364
  %7373 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7369, float %7370, float %7372)  ; Dot3(ax,ay,az,bx,by,bz)
  %7374 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7366, float %7367, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7375 = fdiv fast float 1.000000e+00, %7374
  %7376 = fmul fast float %7375, %7373
  %7377 = fmul fast float %7366, %7376
  %7378 = fmul fast float %7367, %7376
  %7379 = fadd fast float %7377, %7361
  %7380 = fadd fast float %7378, %7362
  %7381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7382 = extractvalue %dx.types.CBufRet.f32 %7381, 0
  %7383 = extractvalue %dx.types.CBufRet.f32 %7381, 1
  %7384 = fsub fast float %7379, %7382
  %7385 = fsub fast float %7380, %7383
  %7386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.f32 %7386, 2
  %7388 = extractvalue %dx.types.CBufRet.f32 %7386, 3
  %7389 = fmul fast float %7384, %7387
  %7390 = fmul fast float %7385, %7388
  %7391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.i32 %7391, 3
  %7393 = icmp eq i32 %7392, 0
  br i1 %7393, label %7399, label %7394

; <label>:7394                                    ; preds = %7354
  %7395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7389, float %7390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 0
  %7397 = extractvalue %dx.types.ResRet.f32 %7395, 1
  %7398 = extractvalue %dx.types.ResRet.f32 %7395, 2
  br label %7404

; <label>:7399                                    ; preds = %7354
  %7400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7389, float %7390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.ResRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.ResRet.f32 %7400, 2
  br label %7404

; <label>:7404                                    ; preds = %7399, %7394
  %7405 = phi float [ %7396, %7394 ], [ %7401, %7399 ]
  %7406 = phi float [ %7397, %7394 ], [ %7402, %7399 ]
  %7407 = phi float [ %7398, %7394 ], [ %7403, %7399 ]
  %7408 = extractvalue %dx.types.CBufRet.f32 %7363, 2
  %7409 = fmul fast float %7408, %7405
  %7410 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7411 = fsub fast float %7376, %7410
  %7412 = fsub fast float %7411, %7409
  %7413 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7412)  ; FMax(a,b)
  %7414 = fmul fast float %7413, %7406
  %7415 = call float @dx.op.binary.f32(i32 36, float %7407, float %7414)  ; FMin(a,b)
  %7416 = fmul fast float %7415, 0xBFF7154760000000
  %7417 = call float @dx.op.unary.f32(i32 21, float %7416)  ; Exp(value)
  %7418 = fmul fast float %7356, %7417
  br label %7419

; <label>:7419                                    ; preds = %7404, %7249
  %7420 = phi float [ %7418, %7404 ], [ %7250, %7249 ]
  %7421 = call float @dx.op.binary.f32(i32 36, float %7420, float %7420)  ; FMin(a,b)
  %7422 = call float @dx.op.binary.f32(i32 36, float %7420, float %7421)  ; FMin(a,b)
  %7423 = fcmp fast ogt float %7422, 0.000000e+00
  br i1 %7423, label %7424, label %7672, !dx.controlflow.hints !136

; <label>:7424                                    ; preds = %7419
  %7425 = fmul fast float %7420, %5980
  %7426 = fmul fast float %7420, %5981
  %7427 = fmul fast float %7420, %5982
  %7428 = fsub fast float %208, %4312
  %7429 = fcmp fast ogt float %7428, 0.000000e+00
  %7430 = fmul fast float %5969, 5.120000e+02
  %7431 = fmul fast float %5970, 5.120000e+02
  %7432 = fmul fast float %5971, 5.120000e+02
  %7433 = fadd fast float %7432, %208
  %7434 = fsub fast float %4312, %7433
  %7435 = fmul fast float %7434, 2.000000e+00
  %7436 = fadd fast float %7435, %7433
  %7437 = select i1 %7429, float %7436, float %7433
  %7438 = fsub fast float %7437, %208
  %7439 = call float @dx.op.dot3.f32(i32 55, float %7430, float %7431, float %7438, float %7430, float %7431, float %7438)  ; Dot3(ax,ay,az,bx,by,bz)
  %7440 = call float @dx.op.unary.f32(i32 25, float %7439)  ; Rsqrt(value)
  %7441 = fmul fast float %7440, %7430
  %7442 = fmul fast float %7440, %7431
  %7443 = fmul fast float %7440, %7438
  %7444 = fsub fast float %4312, %208
  %7445 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7444)  ; Dot3(ax,ay,az,bx,by,bz)
  %7446 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7441, float %7442, float %7443)  ; Dot3(ax,ay,az,bx,by,bz)
  %7447 = fdiv fast float 1.000000e+00, %7446
  %7448 = fmul fast float %7447, %7445
  %7449 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7428, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7450 = fcmp fast ogt float %7449, 0.000000e+00
  %7451 = fcmp fast olt float %7449, 0.000000e+00
  %7452 = zext i1 %7450 to i32
  %7453 = zext i1 %7451 to i32
  %7454 = sub nsw i32 %7452, %7453
  %7455 = sitofp i32 %7454 to float
  %7456 = fsub fast float %7437, %4312
  %7457 = call float @dx.op.dot3.f32(i32 55, float %7430, float %7431, float %7456, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7458 = fcmp fast ogt float %7457, 0.000000e+00
  %7459 = fcmp fast olt float %7457, 0.000000e+00
  %7460 = zext i1 %7458 to i32
  %7461 = zext i1 %7459 to i32
  %7462 = sub nsw i32 %7460, %7461
  %7463 = sitofp i32 %7462 to float
  %7464 = fcmp fast une float %7455, %7463
  br i1 %7464, label %7465, label %7475

; <label>:7465                                    ; preds = %7424
  %7466 = fmul fast float %7448, %7443
  %7467 = fmul fast float %7448, %7442
  %7468 = fmul fast float %7448, %7441
  %7469 = fmul fast float %7468, %7468
  %7470 = fmul fast float %7467, %7467
  %7471 = fadd fast float %7469, %7470
  %7472 = fmul fast float %7466, %7466
  %7473 = fadd fast float %7471, %7472
  %7474 = call float @dx.op.unary.f32(i32 24, float %7473)  ; Sqrt(value)
  br label %7485

; <label>:7475                                    ; preds = %7424
  %7476 = icmp slt i32 %7454, 0
  br i1 %7476, label %7477, label %7485

; <label>:7477                                    ; preds = %7475
  %7478 = fsub fast float %208, %7437
  %7479 = fmul fast float %7430, %7430
  %7480 = fmul fast float %7431, %7431
  %7481 = fadd fast float %7479, %7480
  %7482 = fmul fast float %7478, %7478
  %7483 = fadd fast float %7481, %7482
  %7484 = call float @dx.op.unary.f32(i32 24, float %7483)  ; Sqrt(value)
  br label %7485

; <label>:7485                                    ; preds = %7477, %7475, %7465
  %7486 = phi float [ %7474, %7465 ], [ %7484, %7477 ], [ 0.000000e+00, %7475 ]
  %7487 = fsub fast float -0.000000e+00, %7486
  %7488 = select i1 %7429, float -0.000000e+00, float %7487
  %7489 = fmul fast float %4309, 0x3FF7154760000000
  %7490 = fmul fast float %7489, %7488
  %7491 = fmul fast float %4310, 0x3FF7154760000000
  %7492 = fmul fast float %7491, %7488
  %7493 = fmul fast float %4311, 0x3FF7154760000000
  %7494 = fmul fast float %7493, %7488
  %7495 = call float @dx.op.unary.f32(i32 21, float %7490)  ; Exp(value)
  %7496 = call float @dx.op.unary.f32(i32 21, float %7492)  ; Exp(value)
  %7497 = call float @dx.op.unary.f32(i32 21, float %7494)  ; Exp(value)
  %7498 = call float @dx.op.unary.f32(i32 7, float %7495)  ; Saturate(value)
  %7499 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  %7500 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  %7501 = fmul fast float %7425, %7498
  %7502 = fmul fast float %7426, %7499
  %7503 = fmul fast float %7427, %7500
  %7504 = fsub fast float %5969, %5101
  %7505 = fsub fast float %5970, %5100
  %7506 = fsub fast float %5971, %5099
  %7507 = call float @dx.op.dot3.f32(i32 55, float %7504, float %7505, float %7506, float %7504, float %7505, float %7506)  ; Dot3(ax,ay,az,bx,by,bz)
  %7508 = call float @dx.op.unary.f32(i32 25, float %7507)  ; Rsqrt(value)
  %7509 = fmul fast float %7508, %7504
  %7510 = fmul fast float %7508, %7505
  %7511 = fmul fast float %7508, %7506
  %7512 = call float @dx.op.dot3.f32(i32 55, float %5969, float %5970, float %5971, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %7513 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5097, float %5096, float %7509, float %7510, float %7511)  ; Dot3(ax,ay,az,bx,by,bz)
  %7514 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7515 = bitcast i32 %5140 to float
  %7516 = fmul fast float %7514, %7514
  %7517 = fmul fast float %7516, %7515
  %7518 = call float @dx.op.unary.f32(i32 7, float %7517)  ; Saturate(value)
  %7519 = fmul fast float %7518, %7514
  %7520 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %7509, float %7510, float %7511)  ; Dot3(ax,ay,az,bx,by,bz)
  %7521 = fmul fast float %7520, %7520
  %7522 = call float @dx.op.unary.f32(i32 6, float %7512)  ; FAbs(value)
  %7523 = fsub fast float 1.000000e+00, %5134
  %7524 = fmul fast float %5116, %5116
  %7525 = fmul fast float %7524, %7523
  %7526 = fadd fast float %7525, %5134
  %7527 = bitcast float %7526 to i32
  %7528 = ashr i32 %7527, 1
  %7529 = add nsw i32 %7528, 532487669
  %7530 = bitcast i32 %7529 to float
  %7531 = fadd fast float %7530, %5116
  %7532 = fmul fast float %5134, %7521
  %7533 = fsub fast float 1.000000e+00, %7521
  %7534 = fadd fast float %7533, %7532
  %7535 = fmul fast float %7522, %7522
  %7536 = fmul fast float %7535, %7523
  %7537 = fadd fast float %7536, %5134
  %7538 = bitcast float %7537 to i32
  %7539 = ashr i32 %7538, 1
  %7540 = add nsw i32 %7539, 532487669
  %7541 = bitcast i32 %7540 to float
  %7542 = fadd fast float %7541, %7522
  %7543 = fmul fast float %7534, %7534
  %7544 = fmul fast float %7543, %7531
  %7545 = fmul fast float %7544, %7542
  %7546 = fdiv fast float 0x3FF0A00000000000, %7545
  %7547 = fmul fast float %7546, %5134
  %7548 = call float @dx.op.unary.f32(i32 6, float %7513)  ; FAbs(value)
  %7549 = fsub fast float 1.000000e+00, %7548
  %7550 = bitcast float %7549 to i32
  %7551 = sitofp i32 %7550 to float
  %7552 = fmul fast float %7551, 5.000000e+00
  %7553 = fadd fast float %7552, 0xC1EFBF8940000000
  %7554 = fptosi float %7553 to i32
  %7555 = bitcast i32 %7554 to float
  %7556 = fsub fast float 1.000000e+00, %5105
  %7557 = fsub fast float 1.000000e+00, %5106
  %7558 = fsub fast float 1.000000e+00, %5114
  %7559 = fmul fast float %7555, %7556
  %7560 = fmul fast float %7555, %7557
  %7561 = fmul fast float %7555, %7558
  %7562 = fadd fast float %7559, %5105
  %7563 = fadd fast float %7560, %5106
  %7564 = fadd fast float %7561, %5114
  br i1 %5388, label %7565, label %7588

; <label>:7565                                    ; preds = %7485
  %7566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3907, float %7548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7567 = extractvalue %dx.types.ResRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.ResRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.ResRet.f32 %7566, 2
  %7570 = fadd fast float %7567, -5.000000e-01
  %7571 = fadd fast float %7568, -5.000000e-01
  %7572 = fadd fast float %7569, -5.000000e-01
  %7573 = fmul fast float %5105, 4.000000e+00
  %7574 = fmul fast float %7573, %7556
  %7575 = fmul fast float %7574, %7570
  %7576 = fmul fast float %5106, 4.000000e+00
  %7577 = fmul fast float %7576, %7557
  %7578 = fmul fast float %7577, %7571
  %7579 = fmul fast float %5114, 4.000000e+00
  %7580 = fmul fast float %7579, %7558
  %7581 = fmul fast float %7580, %7572
  %7582 = fadd fast float %7575, %7562
  %7583 = fadd fast float %7578, %7563
  %7584 = fadd fast float %7581, %7564
  %7585 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7586 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  %7587 = call float @dx.op.unary.f32(i32 7, float %7584)  ; Saturate(value)
  br label %7588

; <label>:7588                                    ; preds = %7565, %7485
  %7589 = phi float [ %7585, %7565 ], [ %7562, %7485 ]
  %7590 = phi float [ %7586, %7565 ], [ %7563, %7485 ]
  %7591 = phi float [ %7587, %7565 ], [ %7564, %7485 ]
  %7592 = fmul fast float %7512, 9.843750e-01
  %7593 = fadd fast float %7592, 7.812500e-03
  %7594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7593, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 2
  %7596 = extractvalue %dx.types.ResRet.f32 %7594, 3
  %7597 = fmul fast float %7595, %5105
  %7598 = fmul fast float %7595, %5106
  %7599 = fmul fast float %7595, %5114
  %7600 = fadd fast float %7597, %7596
  %7601 = fadd fast float %7598, %7596
  %7602 = fadd fast float %7599, %7596
  br i1 %5388, label %7603, label %7626

; <label>:7603                                    ; preds = %7588
  %7604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3907, float %7512, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7605 = extractvalue %dx.types.ResRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.ResRet.f32 %7604, 1
  %7607 = extractvalue %dx.types.ResRet.f32 %7604, 2
  %7608 = fadd fast float %7605, -5.000000e-01
  %7609 = fadd fast float %7606, -5.000000e-01
  %7610 = fadd fast float %7607, -5.000000e-01
  %7611 = fmul fast float %5105, 4.000000e+00
  %7612 = fmul fast float %7611, %7556
  %7613 = fmul fast float %7612, %7608
  %7614 = fmul fast float %5106, 4.000000e+00
  %7615 = fmul fast float %7614, %7557
  %7616 = fmul fast float %7615, %7609
  %7617 = fmul fast float %5114, 4.000000e+00
  %7618 = fmul fast float %7617, %7558
  %7619 = fmul fast float %7618, %7610
  %7620 = fadd fast float %7613, %7600
  %7621 = fadd fast float %7616, %7601
  %7622 = fadd fast float %7619, %7602
  %7623 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7624 = call float @dx.op.unary.f32(i32 7, float %7621)  ; Saturate(value)
  %7625 = call float @dx.op.unary.f32(i32 7, float %7622)  ; Saturate(value)
  br label %7626

; <label>:7626                                    ; preds = %7603, %7588
  %7627 = phi float [ %7623, %7603 ], [ %7600, %7588 ]
  %7628 = phi float [ %7624, %7603 ], [ %7601, %7588 ]
  %7629 = phi float [ %7625, %7603 ], [ %7602, %7588 ]
  %7630 = call float @dx.op.binary.f32(i32 35, float %7628, float %7629)  ; FMax(a,b)
  %7631 = call float @dx.op.binary.f32(i32 35, float %7627, float %7630)  ; FMax(a,b)
  %7632 = fsub fast float 1.000000e+00, %7631
  %7633 = fmul fast float %7589, %7547
  %7634 = fmul fast float %7590, %7547
  %7635 = fmul fast float %7591, %7547
  %7636 = fsub fast float 1.000000e+00, %7513
  %7637 = bitcast float %7636 to i32
  %7638 = sitofp i32 %7637 to float
  %7639 = fmul fast float %7638, 5.000000e+00
  %7640 = fadd fast float %7639, 0xC1EFBF8940000000
  %7641 = fptosi float %7640 to i32
  %7642 = bitcast i32 %7641 to float
  %7643 = fmul fast float %7642, %3908
  %7644 = fmul fast float %7632, %7643
  %7645 = fmul fast float %7644, %5930
  %7646 = fmul fast float %7644, %5931
  %7647 = fmul fast float %7644, %5932
  %7648 = fadd fast float %7645, %7633
  %7649 = fadd fast float %7646, %7634
  %7650 = fadd fast float %7647, %7635
  %7651 = fmul fast float %7519, %7501
  %7652 = fmul fast float %7651, %7632
  %7653 = fmul fast float %7519, %7502
  %7654 = fmul fast float %7653, %7632
  %7655 = fmul fast float %7519, %7503
  %7656 = fmul fast float %7655, %7632
  %7657 = fmul fast float %7651, %7648
  %7658 = fmul fast float %7653, %7649
  %7659 = fmul fast float %7655, %7650
  %7660 = fadd fast float %7652, %5914
  %7661 = fmul fast float %7660, %3904
  %7662 = fadd fast float %7654, %5915
  %7663 = fmul fast float %7662, %3904
  %7664 = fadd fast float %7656, %5916
  %7665 = fmul fast float %7664, %3904
  %7666 = fadd fast float %7657, %5957
  %7667 = fmul fast float %7666, %3904
  %7668 = fadd fast float %7658, %5960
  %7669 = fmul fast float %7668, %3904
  %7670 = fadd fast float %7659, %5963
  %7671 = fmul fast float %7670, %3904
  br label %7672

; <label>:7672                                    ; preds = %7626, %7419, %5910
  %7673 = phi float [ %5958, %5910 ], [ %5958, %7419 ], [ %7667, %7626 ]
  %7674 = phi float [ %5961, %5910 ], [ %5961, %7419 ], [ %7669, %7626 ]
  %7675 = phi float [ %5964, %5910 ], [ %5964, %7419 ], [ %7671, %7626 ]
  %7676 = phi float [ %5953, %5910 ], [ %5953, %7419 ], [ %7661, %7626 ]
  %7677 = phi float [ %5954, %5910 ], [ %5954, %7419 ], [ %7663, %7626 ]
  %7678 = phi float [ %5955, %5910 ], [ %5955, %7419 ], [ %7665, %7626 ]
  %7679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.i32 %7679, 0
  %7681 = icmp eq i32 %7680, 0
  br i1 %7681, label %8345, label %7682

; <label>:7682                                    ; preds = %7672
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 2
  %7685 = extractvalue %dx.types.CBufRet.f32 %7683, 3
  %7686 = fmul fast float %7684, %123
  %7687 = fmul fast float %7685, %124
  %7688 = fptoui float %7686 to i32
  %7689 = fptoui float %7687 to i32
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.CBufRet.f32 %7690, 2
  %7693 = extractvalue %dx.types.CBufRet.f32 %7690, 3
  %7694 = fadd fast float %110, -4.000000e+00
  %7695 = call float @dx.op.binary.f32(i32 35, float %7694, float 0.000000e+00)  ; FMax(a,b)
  %7696 = fadd fast float %7695, %7691
  %7697 = fmul fast float %7696, %7692
  %7698 = call float @dx.op.unary.f32(i32 23, float %7697)  ; Log(value)
  %7699 = fmul fast float %7698, %7693
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 2
  %7702 = fmul fast float %7699, %7701
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.i32 %7704, 1
  %7706 = add i32 %7705, -1
  %7707 = uitofp i32 %7705 to float
  %7708 = fmul fast float %7707, %7703
  %7709 = fptoui float %7708 to i32
  %7710 = call i32 @dx.op.binary.i32(i32 40, i32 %7709, i32 %7706)  ; UMin(a,b)
  %7711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.i32 %7711, 2
  %7713 = extractvalue %dx.types.CBufRet.i32 %7711, 3
  %7714 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7689, i32 %7712, i32 %7688)  ; UMad(a,b,c)
  %7715 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7710, i32 %7713, i32 %7714)  ; UMad(a,b,c)
  %7716 = add nsw i32 %7680, -1
  %7717 = call i32 @dx.op.binary.i32(i32 37, i32 %7716, i32 0)  ; IMax(a,b)
  %7718 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %7719 = fptoui float %7718 to i32
  %7720 = lshr i32 %7719, 5
  %7721 = call i32 @dx.op.binary.i32(i32 40, i32 %7720, i32 8191)  ; UMin(a,b)
  %7722 = shl i32 %7721, 2
  %7723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7722, i32 undef)  ; BufferLoad(srv,index,wot)
  %7724 = extractvalue %dx.types.ResRet.i32 %7723, 0
  %7725 = lshr i32 %7724, 16
  %7726 = and i32 %7724, 65535
  %7727 = lshr i32 %7724, 21
  %7728 = lshr i32 %7726, 5
  %7729 = call i32 @dx.op.binary.i32(i32 40, i32 %7728, i32 %7717)  ; UMin(a,b)
  %7730 = icmp ugt i32 %7727, %7729
  br i1 %7730, label %8345, label %7731

; <label>:7731                                    ; preds = %7682
  br label %7732

; <label>:7732                                    ; preds = %8335, %7731
  %7733 = phi i32 [ %8342, %8335 ], [ %7727, %7731 ]
  %7734 = phi float [ %8336, %8335 ], [ %7673, %7731 ]
  %7735 = phi float [ %8337, %8335 ], [ %7674, %7731 ]
  %7736 = phi float [ %8338, %8335 ], [ %7675, %7731 ]
  %7737 = phi float [ %8339, %8335 ], [ %7676, %7731 ]
  %7738 = phi float [ %8340, %8335 ], [ %7677, %7731 ]
  %7739 = phi float [ %8341, %8335 ], [ %7678, %7731 ]
  %7740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.i32 %7740, 0
  %7742 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7715, i32 %7741, i32 %7733)  ; UMad(a,b,c)
  %7743 = shl i32 %7742, 2
  %7744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7743, i32 undef)  ; BufferLoad(srv,index,wot)
  %7745 = extractvalue %dx.types.ResRet.i32 %7744, 0
  %7746 = shl i32 %7733, 5
  %7747 = sub nsw i32 %7725, %7746
  %7748 = call i32 @dx.op.binary.i32(i32 37, i32 %7747, i32 0)  ; IMax(a,b)
  %7749 = call i32 @dx.op.binary.i32(i32 38, i32 %7748, i32 31)  ; IMin(a,b)
  %7750 = sub nsw i32 1, %7725
  %7751 = add nsw i32 %7750, %7726
  %7752 = call i32 @dx.op.binary.i32(i32 37, i32 %7751, i32 0)  ; IMax(a,b)
  %7753 = call i32 @dx.op.binary.i32(i32 38, i32 %7752, i32 32)  ; IMin(a,b)
  %7754 = and i32 %7753, 31
  %7755 = shl i32 -1, %7754
  %7756 = xor i32 %7755, -1
  %7757 = and i32 %7749, 31
  %7758 = shl i32 %7756, %7757
  %7759 = icmp eq i32 %7753, 32
  %7760 = select i1 %7759, i32 -1, i32 %7758
  %7761 = and i32 %7760, %7745
  %7762 = icmp eq i32 %7761, 0
  br i1 %7762, label %8335, label %7763

; <label>:7763                                    ; preds = %7732
  br label %7764

; <label>:7764                                    ; preds = %7898, %7763
  %7765 = phi i32 [ %7776, %7898 ], [ %7761, %7763 ]
  %7766 = phi float [ %7899, %7898 ], [ %7734, %7763 ]
  %7767 = phi float [ %7900, %7898 ], [ %7735, %7763 ]
  %7768 = phi float [ %7901, %7898 ], [ %7736, %7763 ]
  %7769 = phi float [ %7902, %7898 ], [ %7737, %7763 ]
  %7770 = phi float [ %7903, %7898 ], [ %7738, %7763 ]
  %7771 = phi float [ %7904, %7898 ], [ %7739, %7763 ]
  %7772 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7765)  ; FirstbitLo(value)
  %7773 = add i32 %7772, %7746
  %7774 = and i32 %7772, 31
  %7775 = shl i32 1, %7774
  %7776 = xor i32 %7775, %7765
  %7777 = mul i32 %7773, 112
  %7778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7777, i32 undef)  ; BufferLoad(srv,index,wot)
  %7779 = extractvalue %dx.types.ResRet.f32 %7778, 0
  %7780 = extractvalue %dx.types.ResRet.f32 %7778, 1
  %7781 = extractvalue %dx.types.ResRet.f32 %7778, 2
  %7782 = or i32 %7777, 12
  %7783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7782, i32 undef)  ; BufferLoad(srv,index,wot)
  %7784 = extractvalue %dx.types.ResRet.f32 %7783, 0
  %7785 = add i32 %7777, 16
  %7786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7785, i32 undef)  ; BufferLoad(srv,index,wot)
  %7787 = extractvalue %dx.types.ResRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.ResRet.f32 %7786, 1
  %7789 = extractvalue %dx.types.ResRet.f32 %7786, 2
  %7790 = add i32 %7777, 28
  %7791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7790, i32 undef)  ; BufferLoad(srv,index,wot)
  %7792 = extractvalue %dx.types.ResRet.i32 %7791, 0
  %7793 = add i32 %7777, 44
  %7794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7793, i32 undef)  ; BufferLoad(srv,index,wot)
  %7795 = extractvalue %dx.types.ResRet.f32 %7794, 0
  %7796 = add i32 %7777, 48
  %7797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7796, i32 undef)  ; BufferLoad(srv,index,wot)
  %7798 = extractvalue %dx.types.ResRet.f32 %7797, 0
  %7799 = extractvalue %dx.types.ResRet.f32 %7797, 1
  %7800 = extractvalue %dx.types.ResRet.f32 %7797, 2
  %7801 = extractvalue %dx.types.ResRet.f32 %7797, 3
  %7802 = add i32 %7777, 64
  %7803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7802, i32 undef)  ; BufferLoad(srv,index,wot)
  %7804 = extractvalue %dx.types.ResRet.f32 %7803, 0
  %7805 = extractvalue %dx.types.ResRet.f32 %7803, 1
  %7806 = extractvalue %dx.types.ResRet.f32 %7803, 2
  %7807 = extractvalue %dx.types.ResRet.f32 %7803, 3
  %7808 = add i32 %7777, 80
  %7809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7808, i32 undef)  ; BufferLoad(srv,index,wot)
  %7810 = extractvalue %dx.types.ResRet.f32 %7809, 1
  %7811 = extractvalue %dx.types.ResRet.f32 %7809, 2
  %7812 = add i32 %7777, 92
  %7813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7812, i32 undef)  ; BufferLoad(srv,index,wot)
  %7814 = extractvalue %dx.types.ResRet.i32 %7813, 0
  %7815 = call float @dx.op.dot3.f32(i32 55, float %7779, float %7780, float %7781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7816 = select i1 %278, float %7810, float %7779
  %7817 = select i1 %278, float %7815, float %7780
  %7818 = select i1 %278, float %7811, float %7781
  %7819 = and i32 %7814, 65535
  %7820 = uitofp i32 %7819 to float
  %7821 = lshr i32 %7814, 16
  %7822 = uitofp i32 %7821 to float
  %7823 = and i32 %7792, 65535
  %7824 = and i32 %7792, 50331648
  %7825 = icmp eq i32 %7824, 33554432
  %7826 = fsub fast float %7798, %206
  %7827 = fsub fast float %7799, %207
  %7828 = fsub fast float %7800, %208
  %7829 = call float @dx.op.dot3.f32(i32 55, float %7826, float %7827, float %7828, float %7826, float %7827, float %7828)  ; Dot3(ax,ay,az,bx,by,bz)
  %7830 = call float @dx.op.unary.f32(i32 24, float %7829)  ; Sqrt(value)
  %7831 = fdiv fast float 1.000000e+00, %7830
  %7832 = fmul fast float %7831, %7826
  %7833 = fmul fast float %7831, %7827
  %7834 = fmul fast float %7831, %7828
  %7835 = fadd fast float %7830, %7784
  %7836 = fdiv fast float 1.000000e+00, %7835
  %7837 = fmul float %7795, %7836
  %7838 = fmul float %7837, %7837
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  br i1 %7825, label %7840, label %7861

; <label>:7840                                    ; preds = %7764
  %7841 = fmul fast float %7806, %7787
  %7842 = fmul fast float %7806, %7788
  %7843 = fmul fast float %7806, %7789
  %7844 = fadd fast float %7826, %7841
  %7845 = fadd fast float %7827, %7842
  %7846 = fadd fast float %7828, %7843
  %7847 = call float @dx.op.dot3.f32(i32 55, float %7844, float %7845, float %7846, float %7844, float %7845, float %7846)  ; Dot3(ax,ay,az,bx,by,bz)
  %7848 = call float @dx.op.unary.f32(i32 25, float %7847)  ; Rsqrt(value)
  %7849 = fmul fast float %7848, %7844
  %7850 = fmul fast float %7848, %7845
  %7851 = fmul fast float %7848, %7846
  %7852 = fsub fast float %206, %7798
  %7853 = fsub fast float %207, %7799
  %7854 = fsub fast float %208, %7800
  %7855 = fsub fast float -0.000000e+00, %7852
  %7856 = fsub fast float -0.000000e+00, %7853
  %7857 = fsub fast float -0.000000e+00, %7854
  %7858 = call float @dx.op.dot3.f32(i32 55, float %7855, float %7856, float %7857, float %7787, float %7788, float %7789)  ; Dot3(ax,ay,az,bx,by,bz)
  %7859 = fcmp fast ogt float %7858, 0.000000e+00
  %7860 = uitofp i1 %7859 to float
  br label %7861

; <label>:7861                                    ; preds = %7840, %7764
  %7862 = phi float [ %7860, %7840 ], [ 1.000000e+00, %7764 ]
  %7863 = phi float [ %7849, %7840 ], [ %7832, %7764 ]
  %7864 = phi float [ %7850, %7840 ], [ %7833, %7764 ]
  %7865 = phi float [ %7851, %7840 ], [ %7834, %7764 ]
  %7866 = call float @dx.op.dot3.f32(i32 55, float %7787, float %7788, float %7789, float %7863, float %7864, float %7865)  ; Dot3(ax,ay,az,bx,by,bz)
  %7867 = fmul fast float %7866, %7866
  %7868 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7869 = fsub fast float 1.000000e+00, %7868
  %7870 = fmul fast float %7869, 5.000000e-01
  %7871 = fcmp fast ogt float %7866, 0.000000e+00
  %7872 = fsub fast float 1.000000e+00, %7870
  %7873 = select i1 %7871, float %7870, float %7872
  %7874 = fmul fast float %7873, %7822
  %7875 = fadd fast float %7874, %7820
  %7876 = fmul fast float %7875, 0x3EF0001000000000
  %7877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7876, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7878 = extractvalue %dx.types.ResRet.f32 %7877, 0
  %7879 = fmul fast float %7866, %7804
  %7880 = fadd fast float %7879, %7805
  %7881 = call float @dx.op.unary.f32(i32 7, float %7880)  ; Saturate(value)
  %7882 = select i1 %7825, float 1.000000e+00, float %7881
  %7883 = select i1 %7825, float %7881, float 1.000000e+00
  %7884 = fmul fast float %7830, %7801
  %7885 = fsub fast float 1.000000e+00, %7884
  %7886 = fmul fast float %7885, %7807
  %7887 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  %7888 = fmul fast float %7887, %7883
  %7889 = fmul fast float %7888, 2.000000e+00
  %7890 = fsub fast float 3.000000e+00, %7889
  %7891 = fmul fast float %7878, %7862
  %7892 = fmul fast float %7888, %7888
  %7893 = fmul fast float %7892, %7891
  %7894 = fmul fast float %7893, %7890
  %7895 = call float @dx.op.binary.f32(i32 36, float %7894, float %7894)  ; FMin(a,b)
  %7896 = call float @dx.op.binary.f32(i32 36, float %7894, float %7895)  ; FMin(a,b)
  %7897 = fcmp fast ogt float %7896, 0.000000e+00
  br i1 %7897, label %7906, label %7898, !dx.controlflow.hints !137

; <label>:7898                                    ; preds = %8291, %8052, %7861
  %7899 = phi float [ %7766, %8052 ], [ %7766, %7861 ], [ %8331, %8291 ]
  %7900 = phi float [ %7767, %8052 ], [ %7767, %7861 ], [ %8332, %8291 ]
  %7901 = phi float [ %7768, %8052 ], [ %7768, %7861 ], [ %8333, %8291 ]
  %7902 = phi float [ %7769, %8052 ], [ %7769, %7861 ], [ %8325, %8291 ]
  %7903 = phi float [ %7770, %8052 ], [ %7770, %7861 ], [ %8326, %8291 ]
  %7904 = phi float [ %7771, %8052 ], [ %7771, %7861 ], [ %8327, %8291 ]
  %7905 = icmp eq i32 %7765, %7775
  br i1 %7905, label %8334, label %7764

; <label>:7906                                    ; preds = %7861
  %7907 = icmp eq i32 %7823, 255
  br i1 %7907, label %8052, label %7908, !dx.controlflow.hints !138

; <label>:7908                                    ; preds = %7906
  %7909 = mul nuw nsw i32 %7823, 176
  %7910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7909, i32 undef)  ; BufferLoad(srv,index,wot)
  %7911 = extractvalue %dx.types.ResRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.ResRet.f32 %7910, 1
  %7913 = extractvalue %dx.types.ResRet.f32 %7910, 2
  %7914 = extractvalue %dx.types.ResRet.f32 %7910, 3
  %7915 = add nuw nsw i32 %7909, 16
  %7916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7915, i32 undef)  ; BufferLoad(srv,index,wot)
  %7917 = extractvalue %dx.types.ResRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.ResRet.f32 %7916, 1
  %7919 = add nuw nsw i32 %7909, 32
  %7920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7919, i32 undef)  ; BufferLoad(srv,index,wot)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  %7924 = add nuw nsw i32 %7909, 48
  %7925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7924, i32 undef)  ; BufferLoad(srv,index,wot)
  %7926 = extractvalue %dx.types.ResRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.ResRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.ResRet.f32 %7925, 2
  %7929 = extractvalue %dx.types.ResRet.f32 %7925, 3
  %7930 = add nuw nsw i32 %7909, 64
  %7931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7930, i32 undef)  ; BufferLoad(srv,index,wot)
  %7932 = extractvalue %dx.types.ResRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.ResRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.ResRet.f32 %7931, 2
  %7935 = extractvalue %dx.types.ResRet.f32 %7931, 3
  %7936 = add nuw nsw i32 %7909, 80
  %7937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7936, i32 undef)  ; BufferLoad(srv,index,wot)
  %7938 = extractvalue %dx.types.ResRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.ResRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.ResRet.f32 %7937, 2
  %7941 = extractvalue %dx.types.ResRet.f32 %7937, 3
  %7942 = add nuw nsw i32 %7909, 96
  %7943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7942, i32 undef)  ; BufferLoad(srv,index,wot)
  %7944 = extractvalue %dx.types.ResRet.f32 %7943, 0
  %7945 = extractvalue %dx.types.ResRet.f32 %7943, 1
  %7946 = extractvalue %dx.types.ResRet.f32 %7943, 2
  %7947 = extractvalue %dx.types.ResRet.f32 %7943, 3
  %7948 = bitcast float %7918 to i32
  %7949 = fmul fast float %7923, %132
  %7950 = fmul fast float %7923, %134
  %7951 = fmul fast float %7923, %136
  %7952 = fadd fast float %7949, %206
  %7953 = fadd fast float %7950, %207
  %7954 = fadd fast float %7951, %208
  %7955 = fmul fast float %7952, %7926
  %7956 = call float @dx.op.tertiary.f32(i32 46, float %7953, float %7932, float %7955)  ; FMad(a,b,c)
  %7957 = call float @dx.op.tertiary.f32(i32 46, float %7954, float %7938, float %7956)  ; FMad(a,b,c)
  %7958 = fadd fast float %7957, %7944
  %7959 = fmul fast float %7952, %7927
  %7960 = call float @dx.op.tertiary.f32(i32 46, float %7953, float %7933, float %7959)  ; FMad(a,b,c)
  %7961 = call float @dx.op.tertiary.f32(i32 46, float %7954, float %7939, float %7960)  ; FMad(a,b,c)
  %7962 = fadd fast float %7961, %7945
  %7963 = fmul fast float %7952, %7928
  %7964 = call float @dx.op.tertiary.f32(i32 46, float %7953, float %7934, float %7963)  ; FMad(a,b,c)
  %7965 = call float @dx.op.tertiary.f32(i32 46, float %7954, float %7940, float %7964)  ; FMad(a,b,c)
  %7966 = fadd fast float %7965, %7946
  %7967 = fmul fast float %7952, %7929
  %7968 = call float @dx.op.tertiary.f32(i32 46, float %7953, float %7935, float %7967)  ; FMad(a,b,c)
  %7969 = call float @dx.op.tertiary.f32(i32 46, float %7954, float %7941, float %7968)  ; FMad(a,b,c)
  %7970 = fadd fast float %7969, %7947
  %7971 = fdiv fast float %7958, %7970
  %7972 = fdiv fast float %7962, %7970
  %7973 = fdiv fast float %7966, %7970
  %7974 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7973)  ; FMax(a,b)
  %7975 = fmul fast float %289, 0x401921FB60000000
  %7976 = call float @dx.op.unary.f32(i32 13, float %7975)  ; Sin(value)
  %7977 = call float @dx.op.unary.f32(i32 12, float %7975)  ; Cos(value)
  %7978 = fmul fast float %7977, %7922
  %7979 = call float @dx.op.tertiary.f32(i32 46, float %7976, float %7922, float 0.000000e+00)  ; FMad(a,b,c)
  %7980 = fmul fast float %7922, %7976
  %7981 = fsub fast float -0.000000e+00, %7980
  %7982 = call float @dx.op.tertiary.f32(i32 46, float %7977, float %7922, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7983

; <label>:7983                                    ; preds = %7983, %7908
  %7984 = phi float [ 0.000000e+00, %7908 ], [ %8016, %7983 ]
  %7985 = phi float [ 0.000000e+00, %7908 ], [ %8018, %7983 ]
  %7986 = phi i32 [ 0, %7908 ], [ %8019, %7983 ]
  %7987 = mul i32 %7986, 2
  %7988 = add i32 0, %7987
  %7989 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7988
  %7990 = load float, float* %7989, align 4
  %7991 = mul i32 %7986, 2
  %7992 = add i32 1, %7991
  %7993 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7992
  %7994 = load float, float* %7993, align 4
  %7995 = fmul fast float %7978, %7990
  %7996 = call float @dx.op.tertiary.f32(i32 46, float %7994, float %7981, float %7995)  ; FMad(a,b,c)
  %7997 = fmul fast float %7990, %7979
  %7998 = call float @dx.op.tertiary.f32(i32 46, float %7994, float %7982, float %7997)  ; FMad(a,b,c)
  %7999 = fadd fast float %7996, %7971
  %8000 = fadd fast float %7998, %7972
  %8001 = fmul fast float %7999, %7917
  %8002 = fmul fast float %8000, %7917
  %8003 = call float @dx.op.binary.f32(i32 35, float %8001, float %7913)  ; FMax(a,b)
  %8004 = call float @dx.op.binary.f32(i32 35, float %8002, float %7913)  ; FMax(a,b)
  %8005 = call float @dx.op.binary.f32(i32 36, float %8003, float %7914)  ; FMin(a,b)
  %8006 = call float @dx.op.binary.f32(i32 36, float %8004, float %7914)  ; FMin(a,b)
  %8007 = fadd fast float %8005, %7911
  %8008 = fadd fast float %8006, %7912
  %8009 = uitofp i32 %7948 to float
  %8010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8007, float %8008, float %8009, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8011 = extractvalue %dx.types.ResRet.f32 %8010, 0
  %8012 = fsub fast float %8011, %7974
  %8013 = fsub fast float %8012, %7921
  %8014 = fcmp fast ogt float %8013, 0.000000e+00
  %8015 = select i1 %8014, float 1.000000e+00, float 0.000000e+00
  %8016 = fadd fast float %8015, %7984
  %8017 = select i1 %8014, float %8013, float 0.000000e+00
  %8018 = fadd fast float %8017, %7985
  %8019 = add nuw nsw i32 %7986, 1
  %8020 = icmp eq i32 %8019, 8
  br i1 %8020, label %8021, label %7983

; <label>:8021                                    ; preds = %7983
  %8022 = fdiv fast float 1.000000e+00, %8016
  %8023 = fmul fast float %8022, %8018
  %8024 = fdiv fast float 1.000000e+00, %7974
  %8025 = fmul fast float %8023, %8024
  %8026 = call float @dx.op.unary.f32(i32 7, float %8025)  ; Saturate(value)
  %8027 = call float @dx.op.binary.f32(i32 35, float %8026, float 0.000000e+00)  ; FMax(a,b)
  %8028 = fmul fast float %8016, 1.250000e-01
  %8029 = call float @dx.op.unary.f32(i32 7, float %8028)  ; Saturate(value)
  %8030 = fmul fast float %8029, 2.000000e+00
  %8031 = fadd fast float %8030, -1.000000e+00
  %8032 = fcmp fast ogt float %8031, 0.000000e+00
  %8033 = fcmp fast olt float %8031, 0.000000e+00
  %8034 = zext i1 %8032 to i32
  %8035 = zext i1 %8033 to i32
  %8036 = sub nsw i32 %8034, %8035
  %8037 = sitofp i32 %8036 to float
  %8038 = fmul fast float %8037, %8031
  %8039 = fsub fast float 1.000000e+00, %8038
  %8040 = fmul fast float %8039, %8039
  %8041 = fmul fast float %8040, %8039
  %8042 = fsub fast float %8039, %8041
  %8043 = fmul fast float %8042, %8027
  %8044 = fsub fast float 1.000000e+00, %8041
  %8045 = fsub fast float %8044, %8043
  %8046 = fmul fast float %8037, 5.000000e-01
  %8047 = fmul fast float %8046, %8045
  %8048 = fsub fast float -5.000000e-01, %8047
  %8049 = fmul fast float %8048, %7882
  %8050 = fadd fast float %8049, 1.000000e+00
  %8051 = fmul fast float %8050, %7894
  br label %8052

; <label>:8052                                    ; preds = %8021, %7906
  %8053 = phi float [ %8051, %8021 ], [ %7894, %7906 ]
  %8054 = call float @dx.op.binary.f32(i32 36, float %8053, float %8053)  ; FMin(a,b)
  %8055 = call float @dx.op.binary.f32(i32 36, float %8053, float %8054)  ; FMin(a,b)
  %8056 = fcmp fast ogt float %8055, 0.000000e+00
  br i1 %8056, label %8057, label %7898, !dx.controlflow.hints !139

; <label>:8057                                    ; preds = %8052
  %8058 = fmul fast float %8053, %7816
  %8059 = fmul fast float %8053, %7817
  %8060 = fmul fast float %8053, %7818
  %8061 = fsub fast float %7800, %4312
  %8062 = fcmp fast ogt float %8061, 0.000000e+00
  %8063 = fsub fast float %208, %4312
  %8064 = fcmp fast ogt float %8063, 0.000000e+00
  %8065 = xor i1 %8064, %8062
  %8066 = fsub fast float %4312, %7800
  %8067 = fmul fast float %8066, 2.000000e+00
  %8068 = fadd fast float %8067, %7800
  %8069 = select i1 %8065, float %7800, float %8068
  %8070 = fsub fast float %8069, %208
  %8071 = call float @dx.op.dot3.f32(i32 55, float %7826, float %7827, float %8070, float %7826, float %7827, float %8070)  ; Dot3(ax,ay,az,bx,by,bz)
  %8072 = call float @dx.op.unary.f32(i32 25, float %8071)  ; Rsqrt(value)
  %8073 = fmul fast float %8072, %7826
  %8074 = fmul fast float %8072, %7827
  %8075 = fmul fast float %8072, %8070
  %8076 = fsub fast float %4312, %208
  %8077 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8076)  ; Dot3(ax,ay,az,bx,by,bz)
  %8078 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8073, float %8074, float %8075)  ; Dot3(ax,ay,az,bx,by,bz)
  %8079 = fdiv fast float 1.000000e+00, %8078
  %8080 = fmul fast float %8079, %8077
  %8081 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8063, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8082 = fcmp fast ogt float %8081, 0.000000e+00
  %8083 = fcmp fast olt float %8081, 0.000000e+00
  %8084 = zext i1 %8082 to i32
  %8085 = zext i1 %8083 to i32
  %8086 = sub nsw i32 %8084, %8085
  %8087 = sitofp i32 %8086 to float
  %8088 = fsub fast float %8069, %4312
  %8089 = call float @dx.op.dot3.f32(i32 55, float %7826, float %7827, float %8088, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8090 = fcmp fast ogt float %8089, 0.000000e+00
  %8091 = fcmp fast olt float %8089, 0.000000e+00
  %8092 = zext i1 %8090 to i32
  %8093 = zext i1 %8091 to i32
  %8094 = sub nsw i32 %8092, %8093
  %8095 = sitofp i32 %8094 to float
  %8096 = fcmp fast une float %8087, %8095
  br i1 %8096, label %8097, label %8107

; <label>:8097                                    ; preds = %8057
  %8098 = fmul fast float %8080, %8075
  %8099 = fmul fast float %8080, %8074
  %8100 = fmul fast float %8080, %8073
  %8101 = fmul fast float %8100, %8100
  %8102 = fmul fast float %8099, %8099
  %8103 = fadd fast float %8101, %8102
  %8104 = fmul fast float %8098, %8098
  %8105 = fadd fast float %8103, %8104
  %8106 = call float @dx.op.unary.f32(i32 24, float %8105)  ; Sqrt(value)
  br label %8119

; <label>:8107                                    ; preds = %8057
  %8108 = icmp slt i32 %8086, 0
  br i1 %8108, label %8109, label %8119

; <label>:8109                                    ; preds = %8107
  %8110 = fsub fast float %206, %7798
  %8111 = fsub fast float %207, %7799
  %8112 = fsub fast float %208, %8069
  %8113 = fmul fast float %8110, %8110
  %8114 = fmul fast float %8111, %8111
  %8115 = fadd fast float %8113, %8114
  %8116 = fmul fast float %8112, %8112
  %8117 = fadd fast float %8115, %8116
  %8118 = call float @dx.op.unary.f32(i32 24, float %8117)  ; Sqrt(value)
  br label %8119

; <label>:8119                                    ; preds = %8109, %8107, %8097
  %8120 = phi float [ %8106, %8097 ], [ %8118, %8109 ], [ 0.000000e+00, %8107 ]
  %8121 = and i1 %8064, %8062
  %8122 = fsub fast float -0.000000e+00, %8120
  %8123 = select i1 %8121, float -0.000000e+00, float %8122
  %8124 = fmul fast float %4309, 0x3FF7154760000000
  %8125 = fmul fast float %8124, %8123
  %8126 = fmul fast float %4310, 0x3FF7154760000000
  %8127 = fmul fast float %8126, %8123
  %8128 = fmul fast float %4311, 0x3FF7154760000000
  %8129 = fmul fast float %8128, %8123
  %8130 = call float @dx.op.unary.f32(i32 21, float %8125)  ; Exp(value)
  %8131 = call float @dx.op.unary.f32(i32 21, float %8127)  ; Exp(value)
  %8132 = call float @dx.op.unary.f32(i32 21, float %8129)  ; Exp(value)
  %8133 = call float @dx.op.unary.f32(i32 7, float %8130)  ; Saturate(value)
  %8134 = call float @dx.op.unary.f32(i32 7, float %8131)  ; Saturate(value)
  %8135 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  %8136 = fmul fast float %8058, %8133
  %8137 = fmul fast float %8059, %8134
  %8138 = fmul fast float %8060, %8135
  %8139 = fsub fast float %7832, %5101
  %8140 = fsub fast float %7833, %5100
  %8141 = fsub fast float %7834, %5099
  %8142 = call float @dx.op.dot3.f32(i32 55, float %8139, float %8140, float %8141, float %8139, float %8140, float %8141)  ; Dot3(ax,ay,az,bx,by,bz)
  %8143 = call float @dx.op.unary.f32(i32 25, float %8142)  ; Rsqrt(value)
  %8144 = fmul fast float %8143, %8139
  %8145 = fmul fast float %8143, %8140
  %8146 = fmul fast float %8143, %8141
  %8147 = call float @dx.op.dot3.f32(i32 55, float %7832, float %7833, float %7834, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %8148 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5097, float %5096, float %8144, float %8145, float %8146)  ; Dot3(ax,ay,az,bx,by,bz)
  %8149 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8150 = fmul fast float %8149, %7839
  %8151 = bitcast i32 %5140 to float
  %8152 = fmul fast float %8149, %8149
  %8153 = fmul fast float %8152, %8151
  %8154 = call float @dx.op.unary.f32(i32 7, float %8153)  ; Saturate(value)
  %8155 = fmul fast float %8150, %8154
  %8156 = bitcast float %7829 to i32
  %8157 = ashr i32 %8156, 1
  %8158 = sub nsw i32 1597463007, %8157
  %8159 = bitcast i32 %8158 to float
  %8160 = fmul fast float %8159, %7826
  %8161 = fmul fast float %8159, %7827
  %8162 = fmul fast float %8159, %7828
  %8163 = fsub fast float %8160, %5101
  %8164 = fsub fast float %8161, %5100
  %8165 = fsub fast float %8162, %5099
  %8166 = call float @dx.op.dot3.f32(i32 55, float %8163, float %8164, float %8165, float %8163, float %8164, float %8165)  ; Dot3(ax,ay,az,bx,by,bz)
  %8167 = call float @dx.op.unary.f32(i32 25, float %8166)  ; Rsqrt(value)
  %8168 = fmul fast float %8163, %8167
  %8169 = fmul fast float %8164, %8167
  %8170 = fmul fast float %8165, %8167
  %8171 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %8168, float %8169, float %8170)  ; Dot3(ax,ay,az,bx,by,bz)
  %8172 = fmul fast float %8171, %8171
  %8173 = call float @dx.op.unary.f32(i32 6, float %8147)  ; FAbs(value)
  %8174 = fsub fast float 1.000000e+00, %5134
  %8175 = fmul fast float %5116, %5116
  %8176 = fmul fast float %8175, %8174
  %8177 = fadd fast float %8176, %5134
  %8178 = bitcast float %8177 to i32
  %8179 = ashr i32 %8178, 1
  %8180 = add nsw i32 %8179, 532487669
  %8181 = bitcast i32 %8180 to float
  %8182 = fadd fast float %8181, %5116
  %8183 = fmul fast float %5134, %8172
  %8184 = fsub fast float 1.000000e+00, %8172
  %8185 = fadd fast float %8184, %8183
  %8186 = fmul fast float %8173, %8173
  %8187 = fmul fast float %8186, %8174
  %8188 = fadd fast float %8187, %5134
  %8189 = bitcast float %8188 to i32
  %8190 = ashr i32 %8189, 1
  %8191 = add nsw i32 %8190, 532487669
  %8192 = bitcast i32 %8191 to float
  %8193 = fadd fast float %8192, %8173
  %8194 = fmul fast float %8185, %8185
  %8195 = fmul fast float %8194, %8182
  %8196 = fmul fast float %8195, %8193
  %8197 = fdiv fast float 1.000000e+00, %8196
  %8198 = bitcast float %5134 to i32
  %8199 = sitofp i32 %8198 to float
  %8200 = fmul fast float %8199, 0x3FE7F73180000000
  %8201 = fadd fast float %8200, 0x41AFE27C40000000
  %8202 = fptosi float %8201 to i32
  %8203 = bitcast i32 %8202 to float
  %8204 = fmul fast float %7795, 0x3FD80E9D60000000
  %8205 = fmul fast float %8204, %8159
  %8206 = fadd fast float %8203, %8205
  %8207 = bitcast float %8206 to i32
  %8208 = sub nsw i32 2129859010, %8207
  %8209 = bitcast i32 %8208 to float
  %8210 = fmul fast float %5134, %8197
  %8211 = fmul fast float %8210, %8203
  %8212 = fmul fast float %8211, %8209
  %8213 = call float @dx.op.unary.f32(i32 6, float %8148)  ; FAbs(value)
  %8214 = fsub fast float 1.000000e+00, %8213
  %8215 = bitcast float %8214 to i32
  %8216 = sitofp i32 %8215 to float
  %8217 = fmul fast float %8216, 5.000000e+00
  %8218 = fadd fast float %8217, 0xC1EFBF8940000000
  %8219 = fptosi float %8218 to i32
  %8220 = bitcast i32 %8219 to float
  %8221 = fsub fast float 1.000000e+00, %5105
  %8222 = fsub fast float 1.000000e+00, %5106
  %8223 = fsub fast float 1.000000e+00, %5114
  %8224 = fmul fast float %8220, %8221
  %8225 = fmul fast float %8220, %8222
  %8226 = fmul fast float %8220, %8223
  %8227 = fadd fast float %8224, %5105
  %8228 = fadd fast float %8225, %5106
  %8229 = fadd fast float %8226, %5114
  br i1 %5388, label %8230, label %8253

; <label>:8230                                    ; preds = %8119
  %8231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3907, float %8213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8232 = extractvalue %dx.types.ResRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.ResRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.ResRet.f32 %8231, 2
  %8235 = fadd fast float %8232, -5.000000e-01
  %8236 = fadd fast float %8233, -5.000000e-01
  %8237 = fadd fast float %8234, -5.000000e-01
  %8238 = fmul fast float %5105, 4.000000e+00
  %8239 = fmul fast float %8238, %8221
  %8240 = fmul fast float %8239, %8235
  %8241 = fmul fast float %5106, 4.000000e+00
  %8242 = fmul fast float %8241, %8222
  %8243 = fmul fast float %8242, %8236
  %8244 = fmul fast float %5114, 4.000000e+00
  %8245 = fmul fast float %8244, %8223
  %8246 = fmul fast float %8245, %8237
  %8247 = fadd fast float %8240, %8227
  %8248 = fadd fast float %8243, %8228
  %8249 = fadd fast float %8246, %8229
  %8250 = call float @dx.op.unary.f32(i32 7, float %8247)  ; Saturate(value)
  %8251 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8252 = call float @dx.op.unary.f32(i32 7, float %8249)  ; Saturate(value)
  br label %8253

; <label>:8253                                    ; preds = %8230, %8119
  %8254 = phi float [ %8250, %8230 ], [ %8227, %8119 ]
  %8255 = phi float [ %8251, %8230 ], [ %8228, %8119 ]
  %8256 = phi float [ %8252, %8230 ], [ %8229, %8119 ]
  %8257 = fmul fast float %8147, 9.843750e-01
  %8258 = fadd fast float %8257, 7.812500e-03
  %8259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8258, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8260 = extractvalue %dx.types.ResRet.f32 %8259, 2
  %8261 = extractvalue %dx.types.ResRet.f32 %8259, 3
  %8262 = fmul fast float %8260, %5105
  %8263 = fmul fast float %8260, %5106
  %8264 = fmul fast float %8260, %5114
  %8265 = fadd fast float %8262, %8261
  %8266 = fadd fast float %8263, %8261
  %8267 = fadd fast float %8264, %8261
  br i1 %5388, label %8268, label %8291

; <label>:8268                                    ; preds = %8253
  %8269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3907, float %8147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8270 = extractvalue %dx.types.ResRet.f32 %8269, 0
  %8271 = extractvalue %dx.types.ResRet.f32 %8269, 1
  %8272 = extractvalue %dx.types.ResRet.f32 %8269, 2
  %8273 = fadd fast float %8270, -5.000000e-01
  %8274 = fadd fast float %8271, -5.000000e-01
  %8275 = fadd fast float %8272, -5.000000e-01
  %8276 = fmul fast float %5105, 4.000000e+00
  %8277 = fmul fast float %8276, %8221
  %8278 = fmul fast float %8277, %8273
  %8279 = fmul fast float %5106, 4.000000e+00
  %8280 = fmul fast float %8279, %8222
  %8281 = fmul fast float %8280, %8274
  %8282 = fmul fast float %5114, 4.000000e+00
  %8283 = fmul fast float %8282, %8223
  %8284 = fmul fast float %8283, %8275
  %8285 = fadd fast float %8278, %8265
  %8286 = fadd fast float %8281, %8266
  %8287 = fadd fast float %8284, %8267
  %8288 = call float @dx.op.unary.f32(i32 7, float %8285)  ; Saturate(value)
  %8289 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8290 = call float @dx.op.unary.f32(i32 7, float %8287)  ; Saturate(value)
  br label %8291

; <label>:8291                                    ; preds = %8268, %8253
  %8292 = phi float [ %8288, %8268 ], [ %8265, %8253 ]
  %8293 = phi float [ %8289, %8268 ], [ %8266, %8253 ]
  %8294 = phi float [ %8290, %8268 ], [ %8267, %8253 ]
  %8295 = call float @dx.op.binary.f32(i32 35, float %8293, float %8294)  ; FMax(a,b)
  %8296 = call float @dx.op.binary.f32(i32 35, float %8292, float %8295)  ; FMax(a,b)
  %8297 = fsub fast float 1.000000e+00, %8296
  %8298 = fmul fast float %8254, %8212
  %8299 = fmul fast float %8255, %8212
  %8300 = fmul fast float %8256, %8212
  %8301 = fsub fast float 1.000000e+00, %8148
  %8302 = bitcast float %8301 to i32
  %8303 = sitofp i32 %8302 to float
  %8304 = fmul fast float %8303, 5.000000e+00
  %8305 = fadd fast float %8304, 0xC1EFBF8940000000
  %8306 = fptosi float %8305 to i32
  %8307 = bitcast i32 %8306 to float
  %8308 = fmul fast float %8307, %3908
  %8309 = fmul fast float %8297, %8308
  %8310 = fmul fast float %8309, %5930
  %8311 = fmul fast float %8309, %5931
  %8312 = fmul fast float %8309, %5932
  %8313 = fadd fast float %8310, %8298
  %8314 = fadd fast float %8311, %8299
  %8315 = fadd fast float %8312, %8300
  %8316 = fmul fast float %8136, %3904
  %8317 = fmul fast float %8316, %8155
  %8318 = fmul fast float %8317, %8297
  %8319 = fmul fast float %8137, %3904
  %8320 = fmul fast float %8319, %8155
  %8321 = fmul fast float %8320, %8297
  %8322 = fmul fast float %8138, %3904
  %8323 = fmul fast float %8322, %8155
  %8324 = fmul fast float %8323, %8297
  %8325 = fadd fast float %8318, %7769
  %8326 = fadd fast float %8321, %7770
  %8327 = fadd fast float %8324, %7771
  %8328 = fmul fast float %8317, %8313
  %8329 = fmul fast float %8320, %8314
  %8330 = fmul fast float %8323, %8315
  %8331 = fadd fast float %8328, %7766
  %8332 = fadd fast float %8329, %7767
  %8333 = fadd fast float %8330, %7768
  br label %7898

; <label>:8334                                    ; preds = %7898
  br label %8335

; <label>:8335                                    ; preds = %8334, %7732
  %8336 = phi float [ %7734, %7732 ], [ %7899, %8334 ]
  %8337 = phi float [ %7735, %7732 ], [ %7900, %8334 ]
  %8338 = phi float [ %7736, %7732 ], [ %7901, %8334 ]
  %8339 = phi float [ %7737, %7732 ], [ %7902, %8334 ]
  %8340 = phi float [ %7738, %7732 ], [ %7903, %8334 ]
  %8341 = phi float [ %7739, %7732 ], [ %7904, %8334 ]
  %8342 = add i32 %7733, 1
  %8343 = icmp ugt i32 %8342, %7729
  br i1 %8343, label %8344, label %7732

; <label>:8344                                    ; preds = %8335
  br label %8345

; <label>:8345                                    ; preds = %8344, %7682, %7672
  %8346 = phi float [ %7673, %7672 ], [ %7673, %7682 ], [ %8336, %8344 ]
  %8347 = phi float [ %7674, %7672 ], [ %7674, %7682 ], [ %8337, %8344 ]
  %8348 = phi float [ %7675, %7672 ], [ %7675, %7682 ], [ %8338, %8344 ]
  %8349 = phi float [ %7676, %7672 ], [ %7676, %7682 ], [ %8339, %8344 ]
  %8350 = phi float [ %7677, %7672 ], [ %7677, %7682 ], [ %8340, %8344 ]
  %8351 = phi float [ %7678, %7672 ], [ %7678, %7682 ], [ %8341, %8344 ]
  %8352 = fmul fast float %3904, %3904
  %8353 = fsub fast float 1.000000e+00, %8352
  %8354 = call float @dx.op.dot3.f32(i32 55, float %8353, float %8353, float %8353, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8355 = fsub fast float 1.000000e+00, %8354
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = fmul fast float %8357, %5936
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 3
  %8361 = fsub fast float 1.000000e+00, %3912
  %8362 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8363 = fadd fast float %8351, %3910
  %8364 = fmul fast float %8363, %3912
  %8365 = fmul fast float %8362, %8360
  %8366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8366, 3
  %8368 = fmul fast float %8349, %5102
  %8369 = fmul fast float %8350, %5103
  %8370 = fmul fast float %8351, %5104
  %8371 = fcmp fast ogt float %110, %241
  %8372 = and i1 %8371, %4315
  %8373 = or i1 %4321, %8372
  %8374 = icmp eq i32 %4314, 2
  %8375 = fcmp fast ole float %110, %241
  %8376 = and i1 %8375, %8374
  %8377 = or i1 %8376, %8373
  br i1 %8372, label %8378, label %8635

; <label>:8378                                    ; preds = %8345
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 2
  %8381 = extractvalue %dx.types.CBufRet.f32 %8379, 3
  %8382 = fmul fast float %8380, %123
  %8383 = fmul fast float %8381, %124
  %8384 = call float @dx.op.unary.f32(i32 7, float %8382)  ; Saturate(value)
  %8385 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8384, float %8385, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8387 = extractvalue %dx.types.ResRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.ResRet.f32 %8386, 1
  %8389 = extractvalue %dx.types.ResRet.f32 %8386, 2
  %8390 = extractvalue %dx.types.ResRet.f32 %8386, 3
  %8391 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8384, float %8385, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8392 = extractvalue %dx.types.ResRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.ResRet.f32 %8391, 1
  %8394 = extractvalue %dx.types.ResRet.f32 %8391, 2
  %8395 = extractvalue %dx.types.ResRet.f32 %8391, 3
  %8396 = call float @dx.op.binary.f32(i32 35, float %8388, float %8389)  ; FMax(a,b)
  %8397 = call float @dx.op.binary.f32(i32 35, float %8387, float %8396)  ; FMax(a,b)
  %8398 = call float @dx.op.binary.f32(i32 35, float %8397, float %8390)  ; FMax(a,b)
  %8399 = call float @dx.op.binary.f32(i32 36, float %8393, float %8394)  ; FMin(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8392, float %8399)  ; FMin(a,b)
  %8401 = call float @dx.op.binary.f32(i32 36, float %8400, float %8395)  ; FMin(a,b)
  %8402 = fmul fast float %8398, 2.550000e+02
  %8403 = fadd fast float %8402, 0x3F70101020000000
  %8404 = fptoui float %8403 to i32
  %8405 = fmul fast float %8401, 2.550000e+02
  %8406 = fadd fast float %8405, 0x3F70101020000000
  %8407 = fptoui float %8406 to i32
  %8408 = icmp ult i32 %8404, %8407
  br i1 %8408, label %8409, label %8577

; <label>:8409                                    ; preds = %8378
  %8410 = fcmp fast ogt float %109, 9.843750e-01
  %8411 = fadd fast float %110, -4.000000e+00
  %8412 = select i1 %8410, float -4.000000e+00, float %8411
  %8413 = call float @dx.op.binary.f32(i32 35, float %8412, float 0.000000e+00)  ; FMax(a,b)
  %8414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8414, 0
  %8416 = fadd fast float %8415, %8413
  %8417 = extractvalue %dx.types.CBufRet.f32 %8414, 2
  %8418 = fmul fast float %8416, %8417
  %8419 = call float @dx.op.unary.f32(i32 23, float %8418)  ; Log(value)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8414, 3
  %8421 = fmul fast float %8420, %8419
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8424 = fmul fast float %8421, %8423
  %8425 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8426 = uitofp i32 %8404 to float
  %8427 = uitofp i32 %8407 to float
  %8428 = fadd fast float %8426, 5.000000e-01
  %8429 = fadd fast float %8427, 5.000000e-01
  %8430 = fmul fast float %8423, %8428
  %8431 = fmul fast float %8423, %8429
  %8432 = fadd fast float %8430, 0x3F0FFB4800000000
  %8433 = fadd fast float %8431, 0xBF0FFB4800000000
  %8434 = call float @dx.op.binary.f32(i32 35, float %8425, float %8432)  ; FMax(a,b)
  %8435 = call float @dx.op.binary.f32(i32 36, float %8434, float %8433)  ; FMin(a,b)
  %8436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8436, 1
  %8438 = extractvalue %dx.types.CBufRet.f32 %8436, 2
  %8439 = extractvalue %dx.types.CBufRet.f32 %8436, 0
  %8440 = fmul fast float %8437, %8435
  %8441 = fadd fast float %8439, %8440
  %8442 = fadd fast float %8439, %8438
  %8443 = fsub fast float %8437, %8438
  %8444 = fadd fast float %8443, %8439
  %8445 = call float @dx.op.binary.f32(i32 35, float %8441, float %8442)  ; FMax(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8445, float %8444)  ; FMin(a,b)
  %8447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8384, float %8385, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8448 = extractvalue %dx.types.ResRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.ResRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.ResRet.f32 %8447, 2
  %8451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.i32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.i32 %8451, 1
  %8454 = uitofp i32 %8452 to float
  %8455 = uitofp i32 %8453 to float
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8459 = fmul fast float %8454, %8384
  %8460 = fmul fast float %8455, %8385
  %8461 = fadd fast float %8459, -5.000000e-01
  %8462 = fadd fast float %8460, -5.000000e-01
  %8463 = call float @dx.op.unary.f32(i32 22, float %8461)  ; Frc(value)
  %8464 = call float @dx.op.unary.f32(i32 22, float %8462)  ; Frc(value)
  %8465 = fmul fast float %8463, %8463
  %8466 = fmul fast float %8465, %8463
  %8467 = fsub fast float 3.000000e+00, %8463
  %8468 = fmul fast float %8465, %8467
  %8469 = fmul fast float %8463, 3.000000e+00
  %8470 = fmul fast float %8466, 3.000000e+00
  %8471 = fmul fast float %8465, 6.000000e+00
  %8472 = fsub fast float %8470, %8471
  %8473 = fadd fast float %8472, 4.000000e+00
  %8474 = fmul fast float %8473, 0x3FC5555560000000
  %8475 = fmul fast float %8466, -3.000000e+00
  %8476 = fadd fast float %8465, %8463
  %8477 = fmul fast float %8476, 3.000000e+00
  %8478 = fadd fast float %8475, 1.000000e+00
  %8479 = fadd fast float %8478, %8477
  %8480 = fmul fast float %8466, 0x3FC5555560000000
  %8481 = fmul fast float %8464, %8464
  %8482 = fmul fast float %8481, %8464
  %8483 = fsub fast float 3.000000e+00, %8464
  %8484 = fmul fast float %8481, %8483
  %8485 = fmul fast float %8464, 3.000000e+00
  %8486 = fmul fast float %8482, 3.000000e+00
  %8487 = fmul fast float %8481, 6.000000e+00
  %8488 = fsub fast float %8486, %8487
  %8489 = fadd fast float %8488, 4.000000e+00
  %8490 = fmul fast float %8489, 0x3FC5555560000000
  %8491 = fmul fast float %8482, -3.000000e+00
  %8492 = fadd fast float %8481, %8464
  %8493 = fmul fast float %8492, 3.000000e+00
  %8494 = fadd fast float %8491, 1.000000e+00
  %8495 = fadd fast float %8494, %8493
  %8496 = fmul fast float %8482, 0x3FC5555560000000
  %8497 = fadd fast float %8463, 1.000000e+00
  %8498 = fsub fast float 1.000000e+00, %8469
  %8499 = fadd fast float %8498, %8468
  %8500 = fadd fast float %8499, %8473
  %8501 = fmul fast float %8500, 0x3FC5555560000000
  %8502 = fdiv fast float %8474, %8501
  %8503 = fsub fast float %8497, %8502
  %8504 = fsub fast float 1.000000e+00, %8463
  %8505 = fadd fast float %8479, %8466
  %8506 = fmul fast float %8505, 0x3FC5555560000000
  %8507 = fdiv fast float %8480, %8506
  %8508 = fadd fast float %8504, %8507
  %8509 = fadd fast float %8464, 1.000000e+00
  %8510 = fsub fast float 1.000000e+00, %8485
  %8511 = fadd fast float %8510, %8484
  %8512 = fadd fast float %8511, %8489
  %8513 = fmul fast float %8512, 0x3FC5555560000000
  %8514 = fdiv fast float %8490, %8513
  %8515 = fsub fast float %8509, %8514
  %8516 = fsub fast float 1.000000e+00, %8464
  %8517 = fadd fast float %8495, %8482
  %8518 = fmul fast float %8517, 0x3FC5555560000000
  %8519 = fdiv fast float %8496, %8518
  %8520 = fadd fast float %8519, %8516
  %8521 = fmul fast float %8503, %8457
  %8522 = fsub fast float %8384, %8521
  %8523 = fmul fast float %8508, %8457
  %8524 = fadd fast float %8523, %8384
  %8525 = fmul fast float %8520, %8458
  %8526 = fadd fast float %8525, %8385
  %8527 = fmul fast float %8515, %8458
  %8528 = fsub fast float %8385, %8527
  %8529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8522, float %8528, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8530 = extractvalue %dx.types.ResRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.ResRet.f32 %8529, 1
  %8532 = extractvalue %dx.types.ResRet.f32 %8529, 2
  %8533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8524, float %8528, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8534 = extractvalue %dx.types.ResRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.ResRet.f32 %8533, 1
  %8536 = extractvalue %dx.types.ResRet.f32 %8533, 2
  %8537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8522, float %8526, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8538 = extractvalue %dx.types.ResRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.ResRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.ResRet.f32 %8537, 2
  %8541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8524, float %8526, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8542 = extractvalue %dx.types.ResRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.ResRet.f32 %8541, 1
  %8544 = extractvalue %dx.types.ResRet.f32 %8541, 2
  %8545 = fsub fast float %8538, %8530
  %8546 = fsub fast float %8539, %8531
  %8547 = fsub fast float %8540, %8532
  %8548 = fmul fast float %8545, %8518
  %8549 = fmul fast float %8546, %8518
  %8550 = fmul fast float %8547, %8518
  %8551 = fadd fast float %8548, %8530
  %8552 = fadd fast float %8549, %8531
  %8553 = fadd fast float %8550, %8532
  %8554 = fsub fast float %8542, %8534
  %8555 = fsub fast float %8543, %8535
  %8556 = fsub fast float %8544, %8536
  %8557 = fmul fast float %8554, %8518
  %8558 = fmul fast float %8555, %8518
  %8559 = fmul fast float %8556, %8518
  %8560 = fsub fast float %8534, %8551
  %8561 = fadd fast float %8560, %8557
  %8562 = fsub fast float %8535, %8552
  %8563 = fadd fast float %8562, %8558
  %8564 = fsub fast float %8536, %8553
  %8565 = fadd fast float %8564, %8559
  %8566 = fmul fast float %8561, %8506
  %8567 = fmul fast float %8563, %8506
  %8568 = fmul fast float %8565, %8506
  %8569 = fadd fast float %8566, %8551
  %8570 = fadd fast float %8567, %8552
  %8571 = fadd fast float %8568, %8553
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 1
  %8574 = fmul fast float %8569, %8573
  %8575 = fmul fast float %8570, %8573
  %8576 = fmul fast float %8571, %8573
  br label %8577

; <label>:8577                                    ; preds = %8409, %8378
  %8578 = phi float [ %8448, %8409 ], [ 1.000000e+00, %8378 ]
  %8579 = phi float [ %8449, %8409 ], [ 1.000000e+00, %8378 ]
  %8580 = phi float [ %8450, %8409 ], [ 1.000000e+00, %8378 ]
  %8581 = phi float [ %8574, %8409 ], [ 0.000000e+00, %8378 ]
  %8582 = phi float [ %8575, %8409 ], [ 0.000000e+00, %8378 ]
  %8583 = phi float [ %8576, %8409 ], [ 0.000000e+00, %8378 ]
  %8584 = fmul fast float %8581, %8355
  %8585 = fmul fast float %8582, %8355
  %8586 = fmul fast float %8583, %8355
  %8587 = call float @dx.op.dot3.f32(i32 55, float %8578, float %8579, float %8580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8588 = call float @dx.op.dot3.f32(i32 55, float %8584, float %8585, float %8586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8589 = select i1 %278, float %8587, float %8578
  %8590 = select i1 %278, float %8587, float %8579
  %8591 = select i1 %278, float 1.000000e+00, float %8580
  %8592 = select i1 %278, float %8588, float %8584
  %8593 = select i1 %278, float 0.000000e+00, float %8585
  %8594 = select i1 %278, float 0.000000e+00, float %8586
  %8595 = fmul fast float %8589, %8368
  %8596 = fmul fast float %8590, %8369
  %8597 = fmul fast float %8591, %8370
  %8598 = fadd fast float %8595, %8592
  %8599 = fadd fast float %8596, %8593
  %8600 = fadd fast float %8594, %8597
  %8601 = fmul fast float %8589, %8346
  %8602 = fmul fast float %8590, %8347
  %8603 = fmul fast float %8591, %8348
  %8604 = fmul fast float %155, %8380
  %8605 = fmul fast float %157, %8381
  %8606 = fsub fast float 1.000000e+00, %8604
  %8607 = fsub fast float 1.000000e+00, %8605
  %8608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8608, 0
  %8610 = extractvalue %dx.types.CBufRet.f32 %8608, 1
  %8611 = extractvalue %dx.types.CBufRet.f32 %8608, 2
  %8612 = fmul fast float %8606, %8609
  %8613 = fmul fast float %8606, %8610
  %8614 = fmul fast float %8606, %8611
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 0
  %8617 = extractvalue %dx.types.CBufRet.f32 %8615, 1
  %8618 = extractvalue %dx.types.CBufRet.f32 %8615, 2
  %8619 = fmul fast float %8607, %8616
  %8620 = fmul fast float %8607, %8617
  %8621 = fmul fast float %8607, %8618
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.CBufRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.CBufRet.f32 %8622, 2
  %8626 = fadd fast float %8619, %8623
  %8627 = fadd fast float %8626, %8612
  %8628 = fadd fast float %8620, %8624
  %8629 = fadd fast float %8628, %8613
  %8630 = fadd fast float %8621, %8625
  %8631 = fadd fast float %8630, %8614
  %8632 = fmul fast float %8627, %241
  %8633 = fmul fast float %8629, %241
  %8634 = fmul fast float %8631, %241
  br label %8635

; <label>:8635                                    ; preds = %8577, %8345
  %8636 = phi float [ %8632, %8577 ], [ %206, %8345 ]
  %8637 = phi float [ %8633, %8577 ], [ %207, %8345 ]
  %8638 = phi float [ %8634, %8577 ], [ %208, %8345 ]
  %8639 = phi float [ %241, %8577 ], [ %110, %8345 ]
  %8640 = phi float [ %8598, %8577 ], [ %8368, %8345 ]
  %8641 = phi float [ %8599, %8577 ], [ %8369, %8345 ]
  %8642 = phi float [ %8600, %8577 ], [ %8370, %8345 ]
  %8643 = phi float [ %8601, %8577 ], [ %8346, %8345 ]
  %8644 = phi float [ %8602, %8577 ], [ %8347, %8345 ]
  %8645 = phi float [ %8603, %8577 ], [ %8348, %8345 ]
  %8646 = phi float [ %8578, %8577 ], [ 1.000000e+00, %8345 ]
  br i1 %8377, label %9801, label %8647

; <label>:8647                                    ; preds = %8635
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8652 = extractvalue %dx.types.CBufRet.f32 %8648, 3
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.CBufRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.CBufRet.f32 %8653, 2
  %8657 = extractvalue %dx.types.CBufRet.f32 %8653, 3
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 0
  %8660 = extractvalue %dx.types.CBufRet.f32 %8658, 1
  %8661 = extractvalue %dx.types.CBufRet.f32 %8658, 2
  %8662 = extractvalue %dx.types.CBufRet.f32 %8658, 3
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 0
  %8665 = extractvalue %dx.types.CBufRet.f32 %8663, 1
  %8666 = extractvalue %dx.types.CBufRet.f32 %8663, 2
  %8667 = extractvalue %dx.types.CBufRet.f32 %8663, 3
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8671 = extractvalue %dx.types.CBufRet.f32 %8670, 3
  %8672 = extractvalue %dx.types.CBufRet.f32 %8670, 0
  %8673 = extractvalue %dx.types.CBufRet.f32 %8670, 1
  %8674 = extractvalue %dx.types.CBufRet.f32 %8670, 2
  %8675 = fcmp fast olt float %8674, -5.000000e-01
  %8676 = call float @dx.op.dot3.f32(i32 55, float %8636, float %8637, float %8638, float %8636, float %8637, float %8638)  ; Dot3(ax,ay,az,bx,by,bz)
  %8677 = call float @dx.op.unary.f32(i32 25, float %8676)  ; Rsqrt(value)
  %8678 = fmul fast float %8677, %8676
  %8679 = fmul fast float %8677, %8636
  %8680 = fmul fast float %8677, %8637
  %8681 = fmul fast float %8677, %8638
  %8682 = fadd fast float %8678, %8652
  %8683 = call float @dx.op.dot3.f32(i32 55, float %8679, float %8680, float %8681, float %8649, float %8650, float %8651)  ; Dot3(ax,ay,az,bx,by,bz)
  %8684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.i32 %8684, 1
  %8686 = and i32 %8685, 1
  %8687 = icmp ne i32 %8686, 0
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8690 = fcmp fast ogt float %8689, 0.000000e+00
  %8691 = and i1 %8687, %8690
  br i1 %8691, label %8692, label %9098, !dx.controlflow.hints !140

; <label>:8692                                    ; preds = %8647
  %8693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8694 = extractvalue %dx.types.CBufRet.f32 %8693, 3
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 2
  %8699 = fsub fast float %8696, %8698
  %8700 = and i32 %8685, 2
  %8701 = extractvalue %dx.types.CBufRet.i32 %8684, 0
  %8702 = call i32 @dx.op.binary.i32(i32 40, i32 %8701, i32 3)  ; UMin(a,b)
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.CBufRet.f32 %8697, 0
  %8707 = extractvalue %dx.types.CBufRet.f32 %8697, 1
  %8708 = fsub fast float %8704, %8706
  %8709 = fsub fast float %8705, %8707
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = fcmp fast ogt float %8711, 0.000000e+00
  %8713 = fsub fast float -0.000000e+00, %8708
  %8714 = fsub fast float -0.000000e+00, %8709
  %8715 = call float @dx.op.dot2.f32(i32 54, float %8679, float %8680, float %8679, float %8680)  ; Dot2(ax,ay,bx,by)
  %8716 = call float @dx.op.dot2.f32(i32 54, float %8679, float %8680, float %8713, float %8714)  ; Dot2(ax,ay,bx,by)
  %8717 = fmul fast float %8716, 2.000000e+00
  %8718 = call float @dx.op.dot2.f32(i32 54, float %8713, float %8714, float %8713, float %8714)  ; Dot2(ax,ay,bx,by)
  %8719 = fmul fast float %8711, %8711
  %8720 = fsub fast float %8718, %8719
  %8721 = fmul fast float %8717, %8717
  %8722 = fmul fast float %8715, 4.000000e+00
  %8723 = fmul fast float %8722, %8720
  %8724 = fsub fast float %8721, %8723
  %8725 = fcmp fast ogt float %8724, 0.000000e+00
  br i1 %8725, label %8726, label %8741

; <label>:8726                                    ; preds = %8692
  %8727 = fcmp fast ogt float %8717, 0.000000e+00
  %8728 = call float @dx.op.unary.f32(i32 24, float %8724)  ; Sqrt(value)
  %8729 = fsub fast float -0.000000e+00, %8728
  %8730 = select i1 %8727, float %8728, float %8729
  %8731 = fadd fast float %8730, %8717
  %8732 = fmul float %8731, -5.000000e-01
  %8733 = fdiv fast float %8732, %8715
  %8734 = call float @dx.op.binary.f32(i32 35, float %8733, float 0.000000e+00)  ; FMax(a,b)
  %8735 = call float @dx.op.binary.f32(i32 36, float %8678, float %8734)  ; FMin(a,b)
  %8736 = fdiv fast float %8720, %8732
  %8737 = call float @dx.op.binary.f32(i32 35, float %8736, float 0.000000e+00)  ; FMax(a,b)
  %8738 = call float @dx.op.binary.f32(i32 36, float %8678, float %8737)  ; FMin(a,b)
  %8739 = call float @dx.op.binary.f32(i32 36, float %8735, float %8738)  ; FMin(a,b)
  %8740 = call float @dx.op.binary.f32(i32 35, float %8735, float %8738)  ; FMax(a,b)
  br label %8741

; <label>:8741                                    ; preds = %8726, %8692
  %8742 = phi float [ %8740, %8726 ], [ -1.000000e+00, %8692 ]
  %8743 = phi float [ %8739, %8726 ], [ -1.000000e+00, %8692 ]
  %8744 = phi i1 [ true, %8726 ], [ false, %8692 ]
  %8745 = and i1 %8712, %8744
  br i1 %8745, label %8746, label %8748

; <label>:8746                                    ; preds = %8741
  %8747 = fcmp fast oeq float %8743, %8742
  br i1 %8747, label %9051, label %8749

; <label>:8748                                    ; preds = %8741
  br i1 %8712, label %9051, label %8749

; <label>:8749                                    ; preds = %8748, %8746
  %8750 = phi float [ %8678, %8748 ], [ %8742, %8746 ]
  %8751 = phi float [ 0.000000e+00, %8748 ], [ %8743, %8746 ]
  %8752 = icmp ne i32 %8700, 0
  %8753 = fmul fast float %8750, %8681
  %8754 = fadd fast float %8753, %8694
  %8755 = fmul fast float %8754, %8750
  %8756 = select i1 %8752, float 0.000000e+00, float %8755
  %8757 = fcmp fast oeq float %8681, 0.000000e+00
  %8758 = fdiv fast float %8699, %8681
  %8759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8758)  ; FMax(a,b)
  %8760 = select i1 %8757, float %8750, float %8759
  %8761 = call float @dx.op.binary.f32(i32 36, float %8750, float %8760)  ; FMin(a,b)
  %8762 = fcmp fast ogt float %8681, 0.000000e+00
  %8763 = fcmp fast olt float %8699, 0.000000e+00
  br i1 %8762, label %8764, label %8821

; <label>:8764                                    ; preds = %8749
  %8765 = icmp eq i32 %8700, 0
  br i1 %8763, label %8766, label %8810

; <label>:8766                                    ; preds = %8764
  %8767 = select i1 %8765, float %8750, float 0.000000e+00
  %8768 = fsub fast float -0.000000e+00, %8767
  %8769 = call float @dx.op.unary.f32(i32 6, float %8768)  ; FAbs(value)
  %8770 = fmul fast float %8767, %8681
  %8771 = fadd fast float %8770, %8694
  %8772 = fmul fast float %8769, %8771
  %8773 = fsub fast float %8756, %8772
  %8774 = fsub fast float %8750, %8769
  %8775 = select i1 %8765, float %8774, float 0.000000e+00
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  %8778 = extractvalue %dx.types.CBufRet.f32 %8776, 1
  %8779 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8780, 0
  %8782 = extractvalue %dx.types.CBufRet.f32 %8780, 1
  %8783 = extractvalue %dx.types.CBufRet.f32 %8780, 2
  %8784 = extractvalue %dx.types.CBufRet.f32 %8780, 3
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 3
  %8787 = call float @dx.op.binary.f32(i32 36, float %8773, float %8786)  ; FMin(a,b)
  %8788 = fmul fast float %8784, %8775
  %8789 = call float @dx.op.unary.f32(i32 7, float %8788)  ; Saturate(value)
  %8790 = fsub fast float %8781, %8777
  %8791 = fsub fast float %8782, %8778
  %8792 = fsub fast float %8783, %8779
  %8793 = fmul fast float %8789, %8790
  %8794 = fmul fast float %8789, %8791
  %8795 = fmul fast float %8789, %8792
  %8796 = fadd fast float %8793, %8777
  %8797 = fadd fast float %8794, %8778
  %8798 = fadd fast float %8795, %8779
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 0
  %8801 = extractvalue %dx.types.CBufRet.f32 %8799, 1
  %8802 = fadd fast float %8801, %8800
  %8803 = call float @dx.op.unary.f32(i32 7, float %8802)  ; Saturate(value)
  %8804 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %8805 = extractvalue %dx.types.CBufRet.f32 %8799, 3
  %8806 = fadd fast float %8805, %8804
  %8807 = call float @dx.op.unary.f32(i32 7, float %8806)  ; Saturate(value)
  %8808 = fmul fast float %8803, %8787
  %8809 = fmul fast float %8808, %8807
  br label %9051

; <label>:8810                                    ; preds = %8764
  br i1 %8765, label %8811, label %8832

; <label>:8811                                    ; preds = %8810
  %8812 = call float @dx.op.binary.f32(i32 36, float %8761, float %8751)  ; FMin(a,b)
  %8813 = fsub fast float %8761, %8812
  %8814 = fsub fast float %8813, %8750
  %8815 = call float @dx.op.unary.f32(i32 6, float %8814)  ; FAbs(value)
  %8816 = fadd fast float %8813, %8750
  %8817 = fmul fast float %8816, %8681
  %8818 = fadd fast float %8817, %8694
  %8819 = fmul fast float %8818, %8815
  %8820 = fsub fast float %8756, %8819
  br label %8832

; <label>:8821                                    ; preds = %8749
  br i1 %8763, label %8822, label %8832

; <label>:8822                                    ; preds = %8821
  %8823 = call float @dx.op.binary.f32(i32 35, float %8751, float %8761)  ; FMax(a,b)
  %8824 = icmp eq i32 %8700, 0
  %8825 = select i1 %8824, float %8761, float 0.000000e+00
  %8826 = fsub fast float -0.000000e+00, %8825
  %8827 = call float @dx.op.unary.f32(i32 6, float %8826)  ; FAbs(value)
  %8828 = fmul fast float %8825, %8681
  %8829 = fadd fast float %8828, %8694
  %8830 = fmul fast float %8827, %8829
  %8831 = fsub fast float %8756, %8830
  br label %8832

; <label>:8832                                    ; preds = %8822, %8821, %8811, %8810
  %8833 = phi float [ %8751, %8810 ], [ %8751, %8811 ], [ %8823, %8822 ], [ %8751, %8821 ]
  %8834 = phi float [ 0.000000e+00, %8810 ], [ %8815, %8811 ], [ %8827, %8822 ], [ 0.000000e+00, %8821 ]
  %8835 = phi float [ %8756, %8810 ], [ %8820, %8811 ], [ %8831, %8822 ], [ %8756, %8821 ]
  %8836 = phi float [ %8761, %8810 ], [ %8761, %8811 ], [ %8750, %8822 ], [ %8750, %8821 ]
  %8837 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 0
  store float -1.000000e+00, float* %8837, align 4, !tbaa !126, !noalias !141
  %8838 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 1
  store float -1.000000e+00, float* %8838, align 4, !tbaa !126, !noalias !141
  %8839 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 2
  store float -1.000000e+00, float* %8839, align 4, !tbaa !126, !noalias !141
  %8840 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 0
  store float -1.000000e+00, float* %8840, align 4, !tbaa !126, !noalias !141
  %8841 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 1
  store float -1.000000e+00, float* %8841, align 4, !tbaa !126, !noalias !141
  %8842 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 2
  store float -1.000000e+00, float* %8842, align 4, !tbaa !126, !noalias !141
  %8843 = icmp sgt i32 %8702, 0
  br i1 %8843, label %8844, label %8905

; <label>:8844                                    ; preds = %8832
  br label %8845

; <label>:8845                                    ; preds = %8894, %8844
  %8846 = phi i32 [ %8895, %8894 ], [ 0, %8844 ]
  %8847 = phi i32 [ %8896, %8894 ], [ 0, %8844 ]
  %8848 = add nuw i32 %8847, 171
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8848)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = extractvalue %dx.types.CBufRet.f32 %8849, 1
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 0
  %8854 = extractvalue %dx.types.CBufRet.f32 %8852, 1
  %8855 = fsub fast float %8850, %8853
  %8856 = fsub fast float %8851, %8854
  %8857 = extractvalue %dx.types.CBufRet.f32 %8849, 2
  %8858 = fsub fast float -0.000000e+00, %8855
  %8859 = fsub fast float -0.000000e+00, %8856
  %8860 = call float @dx.op.dot2.f32(i32 54, float %8679, float %8680, float %8858, float %8859)  ; Dot2(ax,ay,bx,by)
  %8861 = fmul fast float %8860, 2.000000e+00
  %8862 = call float @dx.op.dot2.f32(i32 54, float %8858, float %8859, float %8858, float %8859)  ; Dot2(ax,ay,bx,by)
  %8863 = fmul fast float %8857, %8857
  %8864 = fsub fast float %8862, %8863
  %8865 = fmul fast float %8861, %8861
  %8866 = fmul fast float %8722, %8864
  %8867 = fsub fast float %8865, %8866
  %8868 = fcmp fast ogt float %8867, 0.000000e+00
  br i1 %8868, label %8869, label %8884

; <label>:8869                                    ; preds = %8845
  %8870 = fcmp fast ogt float %8861, 0.000000e+00
  %8871 = call float @dx.op.unary.f32(i32 24, float %8867)  ; Sqrt(value)
  %8872 = fsub fast float -0.000000e+00, %8871
  %8873 = select i1 %8870, float %8871, float %8872
  %8874 = fadd fast float %8873, %8861
  %8875 = fmul float %8874, -5.000000e-01
  %8876 = fdiv fast float %8875, %8715
  %8877 = call float @dx.op.binary.f32(i32 35, float %8876, float 0.000000e+00)  ; FMax(a,b)
  %8878 = call float @dx.op.binary.f32(i32 36, float %8750, float %8877)  ; FMin(a,b)
  %8879 = fdiv fast float %8864, %8875
  %8880 = call float @dx.op.binary.f32(i32 35, float %8879, float 0.000000e+00)  ; FMax(a,b)
  %8881 = call float @dx.op.binary.f32(i32 36, float %8750, float %8880)  ; FMin(a,b)
  %8882 = call float @dx.op.binary.f32(i32 36, float %8878, float %8881)  ; FMin(a,b)
  %8883 = call float @dx.op.binary.f32(i32 35, float %8878, float %8881)  ; FMax(a,b)
  br label %8884

; <label>:8884                                    ; preds = %8869, %8845
  %8885 = phi float [ %8883, %8869 ], [ -1.000000e+00, %8845 ]
  %8886 = phi float [ %8882, %8869 ], [ -1.000000e+00, %8845 ]
  %8887 = phi i1 [ true, %8869 ], [ false, %8845 ]
  br i1 %8887, label %8888, label %8894

; <label>:8888                                    ; preds = %8884
  %8889 = call float @dx.op.binary.f32(i32 35, float %8833, float %8886)  ; FMax(a,b)
  %8890 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %8847
  store float %8889, float* %8890, align 4, !tbaa !126, !noalias !141
  %8891 = call float @dx.op.binary.f32(i32 35, float %8833, float %8885)  ; FMax(a,b)
  %8892 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %8847
  store float %8891, float* %8892, align 4, !tbaa !126, !noalias !141
  %8893 = add nsw i32 %8846, 1
  br label %8894

; <label>:8894                                    ; preds = %8888, %8884
  %8895 = phi i32 [ %8893, %8888 ], [ %8846, %8884 ]
  %8896 = add nuw nsw i32 %8847, 1
  %8897 = icmp eq i32 %8896, %8702
  br i1 %8897, label %8898, label %8845

; <label>:8898                                    ; preds = %8894
  %8899 = load float, float* %8839, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8900 = load float, float* %8838, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %8901 = load float, float* %8837, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %8902 = load float, float* %8842, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8903 = load float, float* %8841, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %8904 = load float, float* %8840, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %8905

; <label>:8905                                    ; preds = %8898, %8832
  %8906 = phi float [ -1.000000e+00, %8832 ], [ %8904, %8898 ]
  %8907 = phi float [ -1.000000e+00, %8832 ], [ %8903, %8898 ]
  %8908 = phi float [ -1.000000e+00, %8832 ], [ %8902, %8898 ]
  %8909 = phi float [ -1.000000e+00, %8832 ], [ %8901, %8898 ]
  %8910 = phi float [ -1.000000e+00, %8832 ], [ %8900, %8898 ]
  %8911 = phi float [ -1.000000e+00, %8832 ], [ %8899, %8898 ]
  %8912 = phi i32 [ 0, %8832 ], [ %8895, %8898 ]
  %8913 = call float @dx.op.binary.f32(i32 36, float %8910, float %8911)  ; FMin(a,b)
  %8914 = call float @dx.op.binary.f32(i32 36, float %8909, float %8913)  ; FMin(a,b)
  %8915 = call float @dx.op.binary.f32(i32 35, float %8909, float %8910)  ; FMax(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8915, float %8911)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 36, float %8909, float %8910)  ; FMin(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %8917, float %8916)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 35, float %8910, float %8911)  ; FMax(a,b)
  %8920 = call float @dx.op.binary.f32(i32 35, float %8909, float %8919)  ; FMax(a,b)
  store float %8914, float* %8837, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %8918, float* %8838, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %8920, float* %8839, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8921 = call float @dx.op.binary.f32(i32 36, float %8907, float %8908)  ; FMin(a,b)
  %8922 = call float @dx.op.binary.f32(i32 36, float %8906, float %8921)  ; FMin(a,b)
  %8923 = call float @dx.op.binary.f32(i32 35, float %8906, float %8907)  ; FMax(a,b)
  %8924 = call float @dx.op.binary.f32(i32 36, float %8923, float %8908)  ; FMin(a,b)
  %8925 = call float @dx.op.binary.f32(i32 36, float %8906, float %8907)  ; FMin(a,b)
  %8926 = call float @dx.op.binary.f32(i32 35, float %8925, float %8924)  ; FMax(a,b)
  %8927 = call float @dx.op.binary.f32(i32 35, float %8907, float %8908)  ; FMax(a,b)
  %8928 = call float @dx.op.binary.f32(i32 35, float %8906, float %8927)  ; FMax(a,b)
  store float %8922, float* %8840, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %8926, float* %8841, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %8928, float* %8842, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8929 = sub nsw i32 3, %8912
  %8930 = icmp sgt i32 %8929, 2
  br i1 %8930, label %8931, label %8969

; <label>:8931                                    ; preds = %8905
  %8932 = icmp eq i32 %8700, 0
  %8933 = fsub fast float %8750, %8834
  %8934 = select i1 %8932, float %8933, float %8834
  %8935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8935, 0
  %8937 = extractvalue %dx.types.CBufRet.f32 %8935, 1
  %8938 = extractvalue %dx.types.CBufRet.f32 %8935, 2
  %8939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8940 = extractvalue %dx.types.CBufRet.f32 %8939, 0
  %8941 = extractvalue %dx.types.CBufRet.f32 %8939, 1
  %8942 = extractvalue %dx.types.CBufRet.f32 %8939, 2
  %8943 = extractvalue %dx.types.CBufRet.f32 %8939, 3
  %8944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8945 = extractvalue %dx.types.CBufRet.f32 %8944, 3
  %8946 = call float @dx.op.binary.f32(i32 36, float %8835, float %8945)  ; FMin(a,b)
  %8947 = fmul fast float %8943, %8934
  %8948 = call float @dx.op.unary.f32(i32 7, float %8947)  ; Saturate(value)
  %8949 = fsub fast float %8940, %8936
  %8950 = fsub fast float %8941, %8937
  %8951 = fsub fast float %8942, %8938
  %8952 = fmul fast float %8948, %8949
  %8953 = fmul fast float %8948, %8950
  %8954 = fmul fast float %8948, %8951
  %8955 = fadd fast float %8952, %8936
  %8956 = fadd fast float %8953, %8937
  %8957 = fadd fast float %8954, %8938
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 0
  %8960 = extractvalue %dx.types.CBufRet.f32 %8958, 1
  %8961 = fadd fast float %8960, %8959
  %8962 = call float @dx.op.unary.f32(i32 7, float %8961)  ; Saturate(value)
  %8963 = extractvalue %dx.types.CBufRet.f32 %8958, 2
  %8964 = extractvalue %dx.types.CBufRet.f32 %8958, 3
  %8965 = fadd fast float %8964, %8963
  %8966 = call float @dx.op.unary.f32(i32 7, float %8965)  ; Saturate(value)
  %8967 = fmul fast float %8962, %8946
  %8968 = fmul fast float %8967, %8966
  br label %9051

; <label>:8969                                    ; preds = %8905
  %8970 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %8929
  %8971 = load float, float* %8970, align 4, !tbaa !126, !noalias !141
  %8972 = fcmp fast olt float %8971, %8836
  %8973 = icmp sgt i32 %8912, 0
  %8974 = and i1 %8973, %8972
  br i1 %8974, label %8975, label %9012

; <label>:8975                                    ; preds = %8969
  br label %8976

; <label>:8976                                    ; preds = %9005, %8975
  %8977 = phi float [ %9006, %9005 ], [ %8834, %8975 ]
  %8978 = phi float [ %9007, %9005 ], [ %8835, %8975 ]
  %8979 = phi float [ %8987, %9005 ], [ %8971, %8975 ]
  %8980 = phi i32 [ %8984, %9005 ], [ %8929, %8975 ]
  %8981 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %8980
  %8982 = load float, float* %8981, align 4, !tbaa !126, !noalias !141
  %8983 = icmp slt i32 %8980, 2
  %8984 = add nsw i32 %8980, 1
  %8985 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %8984
  %8986 = load float, float* %8985, align 4, !tbaa !126, !noalias !141
  %8987 = select i1 %8983, float %8986, float %8750
  %8988 = call float @dx.op.binary.f32(i32 36, float %8987, float %8982)  ; FMin(a,b)
  %8989 = call float @dx.op.binary.f32(i32 36, float %8836, float %8988)  ; FMin(a,b)
  %8990 = icmp eq i32 %8700, 0
  %8991 = fadd fast float %8989, %8979
  %8992 = fmul fast float %8991, %8681
  %8993 = fadd fast float %8992, %8694
  br i1 %8990, label %8999, label %8994

; <label>:8994                                    ; preds = %8976
  %8995 = fsub fast float %8989, %8979
  %8996 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8995)  ; FMax(a,b)
  %8997 = fmul fast float %8996, %8993
  %8998 = fadd fast float %8997, %8978
  br label %9005

; <label>:8999                                    ; preds = %8976
  %9000 = fsub fast float %8979, %8989
  %9001 = call float @dx.op.unary.f32(i32 6, float %9000)  ; FAbs(value)
  %9002 = fadd fast float %9001, %8977
  %9003 = fmul fast float %9001, %8993
  %9004 = fsub fast float %8978, %9003
  br label %9005

; <label>:9005                                    ; preds = %8999, %8994
  %9006 = phi float [ %8996, %8994 ], [ %9002, %8999 ]
  %9007 = phi float [ %8998, %8994 ], [ %9004, %8999 ]
  %9008 = fcmp fast olt float %8987, %8836
  %9009 = icmp slt i32 %8984, 3
  %9010 = and i1 %9009, %9008
  br i1 %9010, label %8976, label %9011

; <label>:9011                                    ; preds = %9005
  br label %9012

; <label>:9012                                    ; preds = %9011, %8969
  %9013 = phi float [ %8834, %8969 ], [ %9006, %9011 ]
  %9014 = phi float [ %8835, %8969 ], [ %9007, %9011 ]
  %9015 = fsub fast float %8750, %9013
  %9016 = select i1 %8752, float %9013, float %9015
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 0
  %9019 = extractvalue %dx.types.CBufRet.f32 %9017, 1
  %9020 = extractvalue %dx.types.CBufRet.f32 %9017, 2
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9021, 1
  %9024 = extractvalue %dx.types.CBufRet.f32 %9021, 2
  %9025 = extractvalue %dx.types.CBufRet.f32 %9021, 3
  %9026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9026, 3
  %9028 = call float @dx.op.binary.f32(i32 36, float %9014, float %9027)  ; FMin(a,b)
  %9029 = fmul fast float %9025, %9016
  %9030 = call float @dx.op.unary.f32(i32 7, float %9029)  ; Saturate(value)
  %9031 = fsub fast float %9022, %9018
  %9032 = fsub fast float %9023, %9019
  %9033 = fsub fast float %9024, %9020
  %9034 = fmul fast float %9030, %9031
  %9035 = fmul fast float %9030, %9032
  %9036 = fmul fast float %9030, %9033
  %9037 = fadd fast float %9034, %9018
  %9038 = fadd fast float %9035, %9019
  %9039 = fadd fast float %9036, %9020
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 0
  %9042 = extractvalue %dx.types.CBufRet.f32 %9040, 1
  %9043 = fadd fast float %9042, %9041
  %9044 = call float @dx.op.unary.f32(i32 7, float %9043)  ; Saturate(value)
  %9045 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9046 = extractvalue %dx.types.CBufRet.f32 %9040, 3
  %9047 = fadd fast float %9046, %9045
  %9048 = call float @dx.op.unary.f32(i32 7, float %9047)  ; Saturate(value)
  %9049 = fmul fast float %9044, %9028
  %9050 = fmul fast float %9049, %9048
  br label %9051

; <label>:9051                                    ; preds = %9012, %8931, %8766, %8748, %8746
  %9052 = phi float [ %8775, %8766 ], [ %8934, %8931 ], [ %9016, %9012 ], [ 0.000000e+00, %8746 ], [ 0.000000e+00, %8748 ]
  %9053 = phi float [ %8809, %8766 ], [ %8968, %8931 ], [ %9050, %9012 ], [ 0.000000e+00, %8746 ], [ 0.000000e+00, %8748 ]
  %9054 = phi float [ %8796, %8766 ], [ %8955, %8931 ], [ %9037, %9012 ], [ 0.000000e+00, %8746 ], [ 0.000000e+00, %8748 ]
  %9055 = phi float [ %8797, %8766 ], [ %8956, %8931 ], [ %9038, %9012 ], [ 0.000000e+00, %8746 ], [ 0.000000e+00, %8748 ]
  %9056 = phi float [ %8798, %8766 ], [ %8957, %8931 ], [ %9039, %9012 ], [ 0.000000e+00, %8746 ], [ 0.000000e+00, %8748 ]
  %9057 = fmul fast float %8689, %9053
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 2
  %9060 = fsub fast float %8696, %9059
  %9061 = fcmp fast olt float %9057, -2.000000e+01
  %9062 = call float @dx.op.unary.f32(i32 21, float %9057)  ; Exp(value)
  %9063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9064 = extractvalue %dx.types.CBufRet.f32 %9063, 2
  %9065 = extractvalue %dx.types.CBufRet.f32 %9063, 3
  %9066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9067 = extractvalue %dx.types.CBufRet.f32 %9066, 2
  %9068 = fmul fast float %9065, %9060
  %9069 = call float @dx.op.unary.f32(i32 7, float %9068)  ; Saturate(value)
  %9070 = fsub fast float 1.000000e+00, %9069
  %9071 = fmul fast float %8681, 5.000000e-01
  %9072 = fadd fast float %9071, 5.000000e-01
  %9073 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9074 = fsub fast float 1.000000e+00, %9073
  %9075 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9070)  ; FMax(a,b)
  %9076 = fdiv fast float %9074, %9075
  %9077 = fsub fast float %9060, %8638
  %9078 = call float @dx.op.unary.f32(i32 6, float %9077)  ; FAbs(value)
  %9079 = fmul fast float %9078, %9064
  %9080 = call float @dx.op.unary.f32(i32 7, float %9076)  ; Saturate(value)
  %9081 = fsub fast float 1.000000e+00, %9079
  %9082 = fmul fast float %9081, %9080
  %9083 = fadd fast float %9082, %9079
  %9084 = fmul fast float %9067, %9060
  %9085 = call float @dx.op.unary.f32(i32 7, float %9084)  ; Saturate(value)
  %9086 = fsub fast float 1.000000e+00, %9083
  %9087 = fmul fast float %9086, %9085
  %9088 = fadd fast float %9087, %9083
  %9089 = call float @dx.op.unary.f32(i32 7, float %9088)  ; Saturate(value)
  %9090 = fadd fast float %9062, -1.000000e+00
  %9091 = select i1 %9061, float -1.000000e+00, float %9090
  %9092 = fmul fast float %9089, %9091
  %9093 = fadd fast float %9092, 1.000000e+00
  %9094 = fsub fast float -0.000000e+00, %9092
  %9095 = fmul fast float %9054, %9094
  %9096 = fmul fast float %9055, %9094
  %9097 = fmul fast float %9056, %9094
  br label %9098

; <label>:9098                                    ; preds = %9051, %8647
  %9099 = phi float [ %9052, %9051 ], [ 0.000000e+00, %8647 ]
  %9100 = phi float [ %9093, %9051 ], [ 1.000000e+00, %8647 ]
  %9101 = phi float [ %9095, %9051 ], [ 0.000000e+00, %8647 ]
  %9102 = phi float [ %9096, %9051 ], [ 0.000000e+00, %8647 ]
  %9103 = phi float [ %9097, %9051 ], [ 0.000000e+00, %8647 ]
  %9104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9105 = extractvalue %dx.types.CBufRet.f32 %9104, 1
  %9106 = fsub fast float 1.000000e+00, %9100
  %9107 = fmul fast float %9106, %8682
  %9108 = fmul fast float %9107, %9105
  %9109 = fsub fast float %8682, %9108
  br i1 %8675, label %9110, label %9139, !dx.controlflow.hints !177

; <label>:9110                                    ; preds = %9098
  %9111 = fmul fast float %8683, %8672
  %9112 = fadd fast float %9111, %8673
  %9113 = call float @dx.op.unary.f32(i32 7, float %9112)  ; Saturate(value)
  %9114 = fmul fast float %8654, %9109
  %9115 = fsub fast float -0.000000e+00, %9114
  %9116 = fmul fast float %8655, %9109
  %9117 = fsub fast float -0.000000e+00, %9116
  %9118 = call float @dx.op.unary.f32(i32 21, float %9115)  ; Exp(value)
  %9119 = call float @dx.op.unary.f32(i32 21, float %9117)  ; Exp(value)
  %9120 = call float @dx.op.binary.f32(i32 35, float %8662, float %9118)  ; FMax(a,b)
  %9121 = call float @dx.op.binary.f32(i32 35, float %8662, float %9119)  ; FMax(a,b)
  %9122 = fsub fast float %9121, %9120
  %9123 = fmul fast float %9122, %9113
  %9124 = fadd fast float %9123, %9120
  %9125 = call float @dx.op.unary.f32(i32 7, float %9124)  ; Saturate(value)
  %9126 = fsub fast float %8659, %8664
  %9127 = fsub fast float %8660, %8665
  %9128 = fsub fast float %8661, %8666
  %9129 = fmul fast float %9113, %9126
  %9130 = fmul fast float %9113, %9127
  %9131 = fmul fast float %9113, %9128
  %9132 = fadd fast float %9129, %8664
  %9133 = fadd fast float %9130, %8665
  %9134 = fadd fast float %9131, %8666
  %9135 = fsub fast float 1.000000e+00, %9125
  %9136 = fmul fast float %9135, %9132
  %9137 = fmul fast float %9135, %9133
  %9138 = fmul fast float %9135, %9134
  br label %9198

; <label>:9139                                    ; preds = %9098
  %9140 = fmul fast float %9109, %8671
  %9141 = call float @dx.op.unary.f32(i32 7, float %9140)  ; Saturate(value)
  %9142 = fsub fast float 2.000000e+00, %9141
  %9143 = fmul fast float %9141, 9.921875e-01
  %9144 = fmul fast float %9143, %9142
  %9145 = fadd fast float %9144, 3.906250e-03
  %9146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9145, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9147 = extractvalue %dx.types.ResRet.f32 %9146, 0
  %9148 = fsub fast float %9141, %9147
  %9149 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9148)  ; FMax(a,b)
  %9150 = fmul fast float %8657, %8638
  %9151 = call float @dx.op.unary.f32(i32 6, float %9150)  ; FAbs(value)
  %9152 = fcmp fast ogt float %9151, 0x3EB0C6F7A0000000
  br i1 %9152, label %9153, label %9159, !dx.controlflow.hints !178

; <label>:9153                                    ; preds = %9139
  %9154 = fmul fast float %9150, 0xBFF7154760000000
  %9155 = call float @dx.op.unary.f32(i32 21, float %9154)  ; Exp(value)
  %9156 = fsub fast float 1.000000e+00, %9155
  %9157 = fdiv fast float %9156, %9150
  %9158 = fmul fast float %9157, %8667
  br label %9159

; <label>:9159                                    ; preds = %9153, %9139
  %9160 = phi float [ %9158, %9153 ], [ %8667, %9139 ]
  %9161 = fadd fast float %9160, %8669
  %9162 = fmul fast float %9161, %9149
  %9163 = fmul fast float %8654, %9162
  %9164 = fsub fast float -0.000000e+00, %9163
  %9165 = fmul fast float %8655, %9162
  %9166 = fsub fast float -0.000000e+00, %9165
  %9167 = fmul fast float %8656, %9162
  %9168 = fsub fast float -0.000000e+00, %9167
  %9169 = call float @dx.op.unary.f32(i32 21, float %9164)  ; Exp(value)
  %9170 = call float @dx.op.unary.f32(i32 21, float %9166)  ; Exp(value)
  %9171 = call float @dx.op.unary.f32(i32 21, float %9168)  ; Exp(value)
  %9172 = fmul fast float %8683, %8683
  %9173 = fadd fast float %9172, 1.000000e+00
  %9174 = fmul fast float %9173, 0x3FAE8EC8A0000000
  %9175 = fmul fast float %9174, %8664
  %9176 = fmul fast float %9174, %8665
  %9177 = fmul fast float %9174, %8666
  %9178 = fmul fast float %8683, %8662
  %9179 = fsub fast float 1.000000e+00, %9178
  %9180 = fmul fast float %8662, %8662
  %9181 = fsub fast float 1.000000e+00, %9180
  %9182 = fmul fast float %9181, 0x3FB45F3060000000
  %9183 = fmul fast float %9179, %9179
  %9184 = fdiv fast float 1.000000e+00, %9183
  %9185 = fmul fast float %9182, %9184
  %9186 = fmul fast float %9185, %8659
  %9187 = fmul fast float %9185, %8660
  %9188 = fmul fast float %9185, %8661
  %9189 = fadd fast float %9186, %9175
  %9190 = fadd fast float %9187, %9176
  %9191 = fadd fast float %9188, %9177
  %9192 = fsub fast float 1.000000e+00, %9169
  %9193 = fsub fast float 1.000000e+00, %9170
  %9194 = fsub fast float 1.000000e+00, %9171
  %9195 = fmul fast float %9189, %9192
  %9196 = fmul fast float %9190, %9193
  %9197 = fmul fast float %9191, %9194
  br label %9198

; <label>:9198                                    ; preds = %9159, %9110
  %9199 = phi float [ %9136, %9110 ], [ %9195, %9159 ]
  %9200 = phi float [ %9137, %9110 ], [ %9196, %9159 ]
  %9201 = phi float [ %9138, %9110 ], [ %9197, %9159 ]
  %9202 = phi float [ %9125, %9110 ], [ %9169, %9159 ]
  %9203 = phi float [ %9125, %9110 ], [ %9170, %9159 ]
  %9204 = phi float [ %9125, %9110 ], [ %9171, %9159 ]
  br i1 %8691, label %9205, label %9403, !dx.controlflow.hints !179

; <label>:9205                                    ; preds = %9198
  %9206 = extractvalue %dx.types.CBufRet.f32 %9104, 0
  %9207 = fmul fast float %9206, %9106
  %9208 = fsub fast float %9101, %9199
  %9209 = fsub fast float %9102, %9200
  %9210 = fsub fast float %9103, %9201
  %9211 = fmul fast float %9207, %9208
  %9212 = fmul fast float %9207, %9209
  %9213 = fmul fast float %9207, %9210
  %9214 = fadd fast float %9211, %9199
  %9215 = fadd fast float %9212, %9200
  %9216 = fadd fast float %9213, %9201
  %9217 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9202)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9203)  ; FMax(a,b)
  %9219 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9204)  ; FMax(a,b)
  %9220 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9100)  ; FMax(a,b)
  %9221 = call float @dx.op.binary.f32(i32 35, float %9099, float %9109)  ; FMax(a,b)
  %9222 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9221)  ; FMax(a,b)
  %9223 = fdiv fast float %9099, %9222
  %9224 = call float @dx.op.unary.f32(i32 7, float %9223)  ; Saturate(value)
  %9225 = fdiv fast float %9109, %9222
  %9226 = call float @dx.op.unary.f32(i32 7, float %9225)  ; Saturate(value)
  %9227 = fcmp fast une float %9220, 1.000000e+00
  br i1 %9227, label %9228, label %9241, !dx.controlflow.hints !180

; <label>:9228                                    ; preds = %9205
  %9229 = call float @dx.op.unary.f32(i32 23, float %9220)  ; Log(value)
  %9230 = fmul fast float %9229, 0x3FE62E4300000000
  %9231 = fmul fast float %9101, %9230
  %9232 = fsub fast float -0.000000e+00, %9231
  %9233 = fmul fast float %9102, %9230
  %9234 = fsub fast float -0.000000e+00, %9233
  %9235 = fmul fast float %9103, %9230
  %9236 = fsub fast float -0.000000e+00, %9235
  %9237 = fsub fast float 1.000000e+00, %9220
  %9238 = fdiv fast float %9232, %9237
  %9239 = fdiv fast float %9234, %9237
  %9240 = fdiv fast float %9236, %9237
  br label %9241

; <label>:9241                                    ; preds = %9228, %9205
  %9242 = phi float [ %9238, %9228 ], [ %9101, %9205 ]
  %9243 = phi float [ %9239, %9228 ], [ %9102, %9205 ]
  %9244 = phi float [ %9240, %9228 ], [ %9103, %9205 ]
  %9245 = phi float [ %9230, %9228 ], [ 0.000000e+00, %9205 ]
  %9246 = fcmp fast une float %9217, 1.000000e+00
  br i1 %9246, label %9247, label %9254, !dx.controlflow.hints !181

; <label>:9247                                    ; preds = %9241
  %9248 = call float @dx.op.unary.f32(i32 23, float %9217)  ; Log(value)
  %9249 = fmul fast float %9248, 0x3FE62E4300000000
  %9250 = fmul fast float %9214, %9249
  %9251 = fsub fast float -0.000000e+00, %9250
  %9252 = fsub fast float 1.000000e+00, %9217
  %9253 = fdiv fast float %9251, %9252
  br label %9254

; <label>:9254                                    ; preds = %9247, %9241
  %9255 = phi float [ %9253, %9247 ], [ %9214, %9241 ]
  %9256 = phi float [ %9249, %9247 ], [ 0.000000e+00, %9241 ]
  %9257 = fcmp fast une float %9218, 1.000000e+00
  br i1 %9257, label %9258, label %9265, !dx.controlflow.hints !181

; <label>:9258                                    ; preds = %9254
  %9259 = call float @dx.op.unary.f32(i32 23, float %9218)  ; Log(value)
  %9260 = fmul fast float %9259, 0x3FE62E4300000000
  %9261 = fmul fast float %9215, %9260
  %9262 = fsub fast float -0.000000e+00, %9261
  %9263 = fsub fast float 1.000000e+00, %9218
  %9264 = fdiv fast float %9262, %9263
  br label %9265

; <label>:9265                                    ; preds = %9258, %9254
  %9266 = phi float [ %9264, %9258 ], [ %9215, %9254 ]
  %9267 = phi float [ %9260, %9258 ], [ 0.000000e+00, %9254 ]
  %9268 = fcmp fast une float %9219, 1.000000e+00
  br i1 %9268, label %9269, label %9276, !dx.controlflow.hints !181

; <label>:9269                                    ; preds = %9265
  %9270 = call float @dx.op.unary.f32(i32 23, float %9219)  ; Log(value)
  %9271 = fmul fast float %9270, 0x3FE62E4300000000
  %9272 = fmul fast float %9216, %9271
  %9273 = fsub fast float -0.000000e+00, %9272
  %9274 = fsub fast float 1.000000e+00, %9219
  %9275 = fdiv fast float %9273, %9274
  br label %9276

; <label>:9276                                    ; preds = %9269, %9265
  %9277 = phi float [ %9275, %9269 ], [ %9216, %9265 ]
  %9278 = phi float [ %9271, %9269 ], [ 0.000000e+00, %9265 ]
  %9279 = fmul fast float %9242, %9226
  %9280 = fmul fast float %9243, %9226
  %9281 = fmul fast float %9244, %9226
  %9282 = fmul fast float %9245, %9226
  %9283 = fmul fast float %9255, %9224
  %9284 = fmul fast float %9266, %9224
  %9285 = fmul fast float %9277, %9224
  %9286 = fmul fast float %9256, %9224
  %9287 = fmul fast float %9267, %9224
  %9288 = fmul fast float %9278, %9224
  %9289 = fadd fast float %9283, %9279
  %9290 = fadd fast float %9284, %9280
  %9291 = fadd fast float %9285, %9281
  %9292 = fadd fast float %9286, %9282
  %9293 = fadd fast float %9287, %9282
  %9294 = fadd fast float %9288, %9282
  %9295 = fcmp fast une float %9292, 0.000000e+00
  br i1 %9295, label %9296, label %9303, !dx.controlflow.hints !182

; <label>:9296                                    ; preds = %9276
  %9297 = fmul fast float %9292, 0x3FF7154760000000
  %9298 = call float @dx.op.unary.f32(i32 21, float %9297)  ; Exp(value)
  %9299 = fsub fast float 1.000000e+00, %9298
  %9300 = fmul fast float %9289, %9299
  %9301 = fsub fast float -0.000000e+00, %9300
  %9302 = fdiv fast float %9301, %9292
  br label %9303

; <label>:9303                                    ; preds = %9296, %9276
  %9304 = phi float [ %9298, %9296 ], [ 1.000000e+00, %9276 ]
  %9305 = phi float [ %9302, %9296 ], [ %9289, %9276 ]
  %9306 = fcmp fast une float %9293, 0.000000e+00
  br i1 %9306, label %9307, label %9314, !dx.controlflow.hints !182

; <label>:9307                                    ; preds = %9303
  %9308 = fmul fast float %9293, 0x3FF7154760000000
  %9309 = call float @dx.op.unary.f32(i32 21, float %9308)  ; Exp(value)
  %9310 = fsub fast float 1.000000e+00, %9309
  %9311 = fmul fast float %9290, %9310
  %9312 = fsub fast float -0.000000e+00, %9311
  %9313 = fdiv fast float %9312, %9293
  br label %9314

; <label>:9314                                    ; preds = %9307, %9303
  %9315 = phi float [ %9309, %9307 ], [ 1.000000e+00, %9303 ]
  %9316 = phi float [ %9313, %9307 ], [ %9290, %9303 ]
  %9317 = fcmp fast une float %9294, 0.000000e+00
  br i1 %9317, label %9318, label %9325, !dx.controlflow.hints !182

; <label>:9318                                    ; preds = %9314
  %9319 = fmul fast float %9294, 0x3FF7154760000000
  %9320 = call float @dx.op.unary.f32(i32 21, float %9319)  ; Exp(value)
  %9321 = fsub fast float 1.000000e+00, %9320
  %9322 = fmul fast float %9291, %9321
  %9323 = fsub fast float -0.000000e+00, %9322
  %9324 = fdiv fast float %9323, %9294
  br label %9325

; <label>:9325                                    ; preds = %9318, %9314
  %9326 = phi float [ %9320, %9318 ], [ 1.000000e+00, %9314 ]
  %9327 = phi float [ %9324, %9318 ], [ %9291, %9314 ]
  %9328 = fcmp fast ogt float %9224, %9226
  br i1 %9328, label %9329, label %9349

; <label>:9329                                    ; preds = %9325
  %9330 = fsub fast float 1.000000e+00, %9226
  %9331 = fmul fast float %9242, %9330
  %9332 = fmul fast float %9243, %9330
  %9333 = fmul fast float %9244, %9330
  %9334 = fmul fast float %9245, %9330
  %9335 = fcmp fast une float %9334, 0.000000e+00
  br i1 %9335, label %9336, label %9387, !dx.controlflow.hints !183

; <label>:9336                                    ; preds = %9329
  %9337 = fmul fast float %9334, 0x3FF7154760000000
  %9338 = call float @dx.op.unary.f32(i32 21, float %9337)  ; Exp(value)
  %9339 = fsub fast float 1.000000e+00, %9338
  %9340 = fmul fast float %9331, %9339
  %9341 = fsub fast float -0.000000e+00, %9340
  %9342 = fmul fast float %9332, %9339
  %9343 = fsub fast float -0.000000e+00, %9342
  %9344 = fmul fast float %9333, %9339
  %9345 = fsub fast float -0.000000e+00, %9344
  %9346 = fdiv fast float %9341, %9334
  %9347 = fdiv fast float %9343, %9334
  %9348 = fdiv fast float %9345, %9334
  br label %9387

; <label>:9349                                    ; preds = %9325
  %9350 = fsub fast float 1.000000e+00, %9224
  %9351 = fmul fast float %9255, %9350
  %9352 = fmul fast float %9266, %9350
  %9353 = fmul fast float %9277, %9350
  %9354 = fmul fast float %9256, %9350
  %9355 = fmul fast float %9267, %9350
  %9356 = fmul fast float %9278, %9350
  %9357 = fcmp fast une float %9354, 0.000000e+00
  br i1 %9357, label %9358, label %9365, !dx.controlflow.hints !182

; <label>:9358                                    ; preds = %9349
  %9359 = fmul fast float %9354, 0x3FF7154760000000
  %9360 = call float @dx.op.unary.f32(i32 21, float %9359)  ; Exp(value)
  %9361 = fsub fast float 1.000000e+00, %9360
  %9362 = fmul fast float %9351, %9361
  %9363 = fsub fast float -0.000000e+00, %9362
  %9364 = fdiv fast float %9363, %9354
  br label %9365

; <label>:9365                                    ; preds = %9358, %9349
  %9366 = phi float [ %9364, %9358 ], [ %9351, %9349 ]
  %9367 = phi float [ %9360, %9358 ], [ 1.000000e+00, %9349 ]
  %9368 = fcmp fast une float %9355, 0.000000e+00
  br i1 %9368, label %9369, label %9376, !dx.controlflow.hints !182

; <label>:9369                                    ; preds = %9365
  %9370 = fmul fast float %9355, 0x3FF7154760000000
  %9371 = call float @dx.op.unary.f32(i32 21, float %9370)  ; Exp(value)
  %9372 = fsub fast float 1.000000e+00, %9371
  %9373 = fmul fast float %9352, %9372
  %9374 = fsub fast float -0.000000e+00, %9373
  %9375 = fdiv fast float %9374, %9355
  br label %9376

; <label>:9376                                    ; preds = %9369, %9365
  %9377 = phi float [ %9375, %9369 ], [ %9352, %9365 ]
  %9378 = phi float [ %9371, %9369 ], [ 1.000000e+00, %9365 ]
  %9379 = fcmp fast une float %9356, 0.000000e+00
  br i1 %9379, label %9380, label %9387, !dx.controlflow.hints !182

; <label>:9380                                    ; preds = %9376
  %9381 = fmul fast float %9356, 0x3FF7154760000000
  %9382 = call float @dx.op.unary.f32(i32 21, float %9381)  ; Exp(value)
  %9383 = fsub fast float 1.000000e+00, %9382
  %9384 = fmul fast float %9353, %9383
  %9385 = fsub fast float -0.000000e+00, %9384
  %9386 = fdiv fast float %9385, %9356
  br label %9387

; <label>:9387                                    ; preds = %9380, %9376, %9336, %9329
  %9388 = phi float [ %9386, %9380 ], [ %9348, %9336 ], [ %9333, %9329 ], [ %9353, %9376 ]
  %9389 = phi float [ %9377, %9380 ], [ %9347, %9336 ], [ %9332, %9329 ], [ %9377, %9376 ]
  %9390 = phi float [ %9366, %9380 ], [ %9346, %9336 ], [ %9331, %9329 ], [ %9366, %9376 ]
  %9391 = phi float [ %9382, %9380 ], [ %9338, %9336 ], [ 1.000000e+00, %9329 ], [ 1.000000e+00, %9376 ]
  %9392 = phi float [ %9378, %9380 ], [ %9338, %9336 ], [ 1.000000e+00, %9329 ], [ %9378, %9376 ]
  %9393 = phi float [ %9367, %9380 ], [ %9338, %9336 ], [ 1.000000e+00, %9329 ], [ %9367, %9376 ]
  %9394 = fmul fast float %9393, %9305
  %9395 = fmul fast float %9392, %9316
  %9396 = fmul fast float %9391, %9327
  %9397 = fadd fast float %9394, %9390
  %9398 = fadd fast float %9395, %9389
  %9399 = fadd fast float %9396, %9388
  %9400 = fmul fast float %9393, %9304
  %9401 = fmul fast float %9392, %9315
  %9402 = fmul fast float %9391, %9326
  br label %9403

; <label>:9403                                    ; preds = %9387, %9198
  %9404 = phi float [ %9402, %9387 ], [ %9204, %9198 ]
  %9405 = phi float [ %9401, %9387 ], [ %9203, %9198 ]
  %9406 = phi float [ %9400, %9387 ], [ %9202, %9198 ]
  %9407 = phi float [ %9399, %9387 ], [ %9201, %9198 ]
  %9408 = phi float [ %9398, %9387 ], [ %9200, %9198 ]
  %9409 = phi float [ %9397, %9387 ], [ %9199, %9198 ]
  %9410 = fmul fast float %9409, %8355
  %9411 = fmul fast float %9408, %8355
  %9412 = fmul fast float %9407, %8355
  %9413 = fmul fast float %9406, %8646
  %9414 = call float @dx.op.dot3.f32(i32 55, float %9406, float %9405, float %9404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9415 = call float @dx.op.dot3.f32(i32 55, float %9410, float %9411, float %9412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9416 = select i1 %278, float %9414, float %9406
  %9417 = select i1 %278, float %9414, float %9405
  %9418 = select i1 %278, float 1.000000e+00, float %9404
  %9419 = select i1 %278, float %9415, float %9410
  %9420 = select i1 %278, float 0.000000e+00, float %9411
  %9421 = select i1 %278, float 0.000000e+00, float %9412
  %9422 = fmul fast float %9416, %8640
  %9423 = fmul fast float %9417, %8641
  %9424 = fmul fast float %9418, %8642
  %9425 = fadd fast float %9422, %9419
  %9426 = fadd fast float %9423, %9420
  %9427 = fadd fast float %9421, %9424
  %9428 = fmul fast float %9416, %8643
  %9429 = fmul fast float %9417, %8644
  %9430 = fmul fast float %9418, %8645
  %9431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9432 = extractvalue %dx.types.CBufRet.i32 %9431, 0
  %9433 = icmp eq i32 %9432, 0
  br i1 %9433, label %9801, label %9434, !dx.controlflow.hints !184

; <label>:9434                                    ; preds = %9403
  %9435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9435, 2
  %9437 = extractvalue %dx.types.CBufRet.f32 %9435, 3
  %9438 = fmul fast float %9436, %123
  %9439 = fmul fast float %9437, %124
  %9440 = fmul fast float %9438, 2.000000e+00
  %9441 = fmul fast float %9439, 2.000000e+00
  %9442 = fsub fast float 1.000000e+00, %9440
  %9443 = fsub fast float 1.000000e+00, %9441
  %9444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9445 = extractvalue %dx.types.CBufRet.f32 %9444, 0
  %9446 = extractvalue %dx.types.CBufRet.f32 %9444, 1
  %9447 = extractvalue %dx.types.CBufRet.f32 %9444, 2
  %9448 = fmul fast float %9442, %9445
  %9449 = fmul fast float %9442, %9446
  %9450 = fmul fast float %9442, %9447
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 0
  %9453 = extractvalue %dx.types.CBufRet.f32 %9451, 1
  %9454 = extractvalue %dx.types.CBufRet.f32 %9451, 2
  %9455 = fmul fast float %9443, %9452
  %9456 = fmul fast float %9443, %9453
  %9457 = fmul fast float %9443, %9454
  %9458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9459 = extractvalue %dx.types.CBufRet.f32 %9458, 0
  %9460 = extractvalue %dx.types.CBufRet.f32 %9458, 1
  %9461 = extractvalue %dx.types.CBufRet.f32 %9458, 2
  %9462 = fadd fast float %9455, %9459
  %9463 = fadd fast float %9462, %9448
  %9464 = fadd fast float %9456, %9460
  %9465 = fadd fast float %9464, %9449
  %9466 = fadd fast float %9457, %9461
  %9467 = fadd fast float %9466, %9450
  %9468 = fmul fast float %9463, %8639
  %9469 = fmul fast float %9465, %8639
  %9470 = fmul fast float %9467, %8639
  %9471 = fmul fast float %9468, %9468
  %9472 = fmul fast float %9469, %9469
  %9473 = fadd fast float %9471, %9472
  %9474 = fmul fast float %9470, %9470
  %9475 = fadd fast float %9473, %9474
  %9476 = call float @dx.op.unary.f32(i32 24, float %9475)  ; Sqrt(value)
  %9477 = extractvalue %dx.types.CBufRet.f32 %8366, 0
  %9478 = fsub fast float %9476, %9477
  %9479 = extractvalue %dx.types.CBufRet.f32 %8366, 2
  %9480 = fmul fast float %9478, %9479
  %9481 = call float @dx.op.unary.f32(i32 7, float %9480)  ; Saturate(value)
  %9482 = fadd fast float %9481, -5.000000e-01
  %9483 = fmul fast float %9482, 2.000000e+00
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 2
  %9486 = call float @dx.op.binary.f32(i32 36, float %9485, float %9483)  ; FMin(a,b)
  %9487 = fsub fast float -0.000000e+00, %9485
  %9488 = fcmp fast ogt float %9486, %9487
  br i1 %9488, label %9489, label %9801, !dx.controlflow.hints !185

; <label>:9489                                    ; preds = %9434
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 3
  %9492 = fcmp fast ogt float %9491, 0.000000e+00
  br i1 %9492, label %9493, label %9568, !dx.controlflow.hints !186

; <label>:9493                                    ; preds = %9489
  %9494 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9495 = extractvalue %dx.types.Dimensions %9494, 0
  %9496 = sitofp i32 %9495 to float
  %9497 = extractvalue %dx.types.Dimensions %9494, 1
  %9498 = sitofp i32 %9497 to float
  %9499 = fmul fast float %9438, %9496
  %9500 = fmul fast float %9439, %9498
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 1
  %9503 = fsub fast float -0.000000e+00, %9502
  %9504 = fptoui float %9503 to i32
  %9505 = fptoui float %9499 to i32
  %9506 = fptoui float %9500 to i32
  %9507 = and i32 %9504, 31
  %9508 = lshr i32 %9505, %9507
  %9509 = lshr i32 %9506, %9507
  %9510 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9504, i32 %9508, i32 %9509, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9511 = extractvalue %dx.types.ResRet.f32 %9510, 0
  %9512 = fcmp fast olt float %9511, -1.000000e+00
  %9513 = fcmp fast ogt float %9511, -1.000000e+00
  %9514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9515 = extractvalue %dx.types.CBufRet.f32 %9514, 1
  %9516 = select i1 %9513, float %9515, float 1.000000e+00
  %9517 = fadd fast float %9511, 1.000000e+00
  %9518 = fmul fast float %9516, %9517
  %9519 = call float @dx.op.unary.f32(i32 6, float %9518)  ; FAbs(value)
  %9520 = extractvalue %dx.types.CBufRet.f32 %9514, 3
  %9521 = fcmp fast oge float %9519, %9520
  %9522 = select i1 %9521, float 0x4197782600000000, float %9519
  %9523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9524 = extractvalue %dx.types.CBufRet.f32 %9523, 0
  %9525 = extractvalue %dx.types.CBufRet.f32 %9523, 1
  %9526 = extractvalue %dx.types.CBufRet.f32 %9523, 2
  %9527 = select i1 %9512, float %9524, float %9445
  %9528 = select i1 %9512, float %9525, float %9446
  %9529 = select i1 %9512, float %9526, float %9447
  %9530 = fmul fast float %9527, %9442
  %9531 = fmul fast float %9528, %9442
  %9532 = fmul fast float %9529, %9442
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.CBufRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9537 = select i1 %9512, float %9534, float %9452
  %9538 = select i1 %9512, float %9535, float %9453
  %9539 = select i1 %9512, float %9536, float %9454
  %9540 = fmul fast float %9537, %9443
  %9541 = fmul fast float %9538, %9443
  %9542 = fmul fast float %9539, %9443
  %9543 = fadd fast float %9540, %9530
  %9544 = fadd fast float %9541, %9531
  %9545 = fadd fast float %9542, %9532
  %9546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9547 = extractvalue %dx.types.CBufRet.f32 %9546, 0
  %9548 = extractvalue %dx.types.CBufRet.f32 %9546, 1
  %9549 = extractvalue %dx.types.CBufRet.f32 %9546, 2
  %9550 = select i1 %9512, float %9547, float %9459
  %9551 = select i1 %9512, float %9548, float %9460
  %9552 = select i1 %9512, float %9549, float %9461
  %9553 = fadd fast float %9543, %9550
  %9554 = fadd fast float %9544, %9551
  %9555 = fadd fast float %9545, %9552
  %9556 = fmul fast float %9553, %9522
  %9557 = fmul fast float %9554, %9522
  %9558 = fmul fast float %9555, %9522
  %9559 = fmul fast float %9556, %9556
  %9560 = fmul fast float %9557, %9557
  %9561 = fadd fast float %9559, %9560
  %9562 = fmul fast float %9558, %9558
  %9563 = fadd fast float %9561, %9562
  %9564 = call float @dx.op.unary.f32(i32 24, float %9563)  ; Sqrt(value)
  %9565 = fsub fast float %9564, %9477
  %9566 = fmul fast float %9565, %9479
  %9567 = call float @dx.op.unary.f32(i32 7, float %9566)  ; Saturate(value)
  br label %9568

; <label>:9568                                    ; preds = %9493, %9489
  %9569 = phi float [ %9567, %9493 ], [ 1.000000e+00, %9489 ]
  %9570 = fmul fast float %9486, 5.000000e-01
  %9571 = fadd fast float %9570, 5.000000e-01
  %9572 = call float @dx.op.unary.f32(i32 22, float %9571)  ; Frc(value)
  %9573 = call float @dx.op.unary.f32(i32 27, float %9572)  ; Round_ni(value)
  %9574 = call float @dx.op.unary.f32(i32 22, float %9572)  ; Frc(value)
  %9575 = fmul fast float %9574, 2.000000e+00
  %9576 = fadd fast float %9575, -1.000000e+00
  %9577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9438, float %9439, float %9573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9578 = extractvalue %dx.types.ResRet.f32 %9577, 0
  %9579 = extractvalue %dx.types.ResRet.f32 %9577, 1
  %9580 = extractvalue %dx.types.ResRet.f32 %9577, 2
  %9581 = extractvalue %dx.types.ResRet.f32 %9577, 3
  %9582 = fadd fast float %9578, -5.000000e-01
  %9583 = fadd fast float %9580, -5.000000e-01
  %9584 = fmul fast float %9582, 0xBFD5555560000000
  %9585 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9583, float %9584)  ; FMad(a,b,c)
  %9586 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9579, float 0.000000e+00)  ; FMad(a,b,c)
  %9587 = fadd fast float %9586, %9581
  %9588 = fmul fast float %9582, -7.500000e-01
  %9589 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9583, float %9588)  ; FMad(a,b,c)
  %9590 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9579, float 0.000000e+00)  ; FMad(a,b,c)
  %9591 = fadd fast float %9590, %9581
  %9592 = call float @dx.op.binary.f32(i32 35, float %9585, float -1.000000e+00)  ; FMax(a,b)
  %9593 = call float @dx.op.binary.f32(i32 35, float %9587, float -1.000000e+00)  ; FMax(a,b)
  %9594 = call float @dx.op.binary.f32(i32 35, float %9589, float -1.000000e+00)  ; FMax(a,b)
  %9595 = call float @dx.op.binary.f32(i32 35, float %9591, float -1.000000e+00)  ; FMax(a,b)
  %9596 = call float @dx.op.binary.f32(i32 36, float %9592, float 1.000000e+00)  ; FMin(a,b)
  %9597 = call float @dx.op.binary.f32(i32 36, float %9593, float 1.000000e+00)  ; FMin(a,b)
  %9598 = call float @dx.op.binary.f32(i32 36, float %9594, float 1.000000e+00)  ; FMin(a,b)
  %9599 = call float @dx.op.binary.f32(i32 36, float %9595, float 1.000000e+00)  ; FMin(a,b)
  %9600 = fcmp fast olt float %9596, 0x3FEFFF8020000000
  br i1 %9600, label %9601, label %9716, !dx.controlflow.hints !187

; <label>:9601                                    ; preds = %9568
  %9602 = extractvalue %dx.types.CBufRet.f32 %9484, 3
  %9603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9604 = extractvalue %dx.types.CBufRet.f32 %9603, 0
  %9605 = extractvalue %dx.types.CBufRet.f32 %9603, 1
  %9606 = extractvalue %dx.types.CBufRet.f32 %9603, 2
  %9607 = extractvalue %dx.types.CBufRet.f32 %9603, 3
  %9608 = fsub fast float %9604, %9596
  %9609 = fsub fast float %9605, %9597
  %9610 = fsub fast float %9606, %9598
  %9611 = fsub fast float %9607, %9599
  %9612 = fmul fast float %9608, %9602
  %9613 = fmul fast float %9609, %9602
  %9614 = fmul fast float %9610, %9602
  %9615 = fmul fast float %9611, %9602
  %9616 = fadd fast float %9612, %9596
  %9617 = fadd fast float %9613, %9597
  %9618 = fsub fast float -0.000000e+00, %9617
  %9619 = fadd fast float %9614, %9598
  %9620 = fadd fast float %9615, %9599
  %9621 = fmul fast float %9616, %9616
  %9622 = fsub fast float %9617, %9621
  %9623 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9622)  ; FMax(a,b)
  %9624 = fdiv fast float 1.000000e+00, %9623
  %9625 = fmul fast float %9617, %9616
  %9626 = fsub fast float %9619, %9625
  %9627 = fsub fast float %9576, %9616
  %9628 = fmul fast float %9576, %9576
  %9629 = fsub fast float %9628, %9617
  %9630 = fmul fast float %9627, %9624
  %9631 = fmul fast float %9630, %9626
  %9632 = fsub fast float %9629, %9631
  %9633 = fmul fast float %9617, %9617
  %9634 = fsub fast float %9620, %9633
  %9635 = fmul fast float %9626, %9626
  %9636 = fmul fast float %9635, %9624
  %9637 = fsub fast float %9634, %9636
  %9638 = fdiv fast float %9632, %9637
  %9639 = fmul fast float %9626, %9638
  %9640 = fsub fast float %9627, %9639
  %9641 = fmul fast float %9640, %9624
  %9642 = fmul fast float %9641, %9616
  %9643 = fsub fast float 1.000000e+00, %9642
  %9644 = fmul fast float %9617, %9638
  %9645 = fsub fast float %9643, %9644
  %9646 = fmul fast float %9641, %9641
  %9647 = fmul fast float %9638, 4.000000e+00
  %9648 = fmul fast float %9647, %9645
  %9649 = fsub fast float %9646, %9648
  %9650 = call float @dx.op.unary.f32(i32 24, float %9649)  ; Sqrt(value)
  %9651 = fcmp fast oge float %9641, 0.000000e+00
  %9652 = fsub fast float -0.000000e+00, %9650
  %9653 = select i1 %9651, float %9652, float %9650
  %9654 = fsub fast float %9653, %9641
  %9655 = fdiv fast float %9654, %9638
  %9656 = fdiv fast float %9645, %9654
  %9657 = fmul fast float %9655, 5.000000e-01
  %9658 = fmul fast float %9656, 2.000000e+00
  %9659 = select i1 %9651, float %9657, float %9658
  %9660 = select i1 %9651, float %9658, float %9657
  %9661 = call float @dx.op.binary.f32(i32 35, float %9659, float %9660)  ; FMax(a,b)
  %9662 = call float @dx.op.binary.f32(i32 36, float %9659, float %9660)  ; FMin(a,b)
  %9663 = fcmp fast ogt float %9576, %9662
  br i1 %9663, label %9664, label %9674

; <label>:9664                                    ; preds = %9601
  %9665 = fsub fast float %9576, %9662
  %9666 = fsub fast float %9661, %9662
  %9667 = fmul fast float %9665, %9666
  %9668 = fmul fast float %9661, %9576
  %9669 = fadd fast float %9661, %9576
  %9670 = fmul fast float %9669, %9616
  %9671 = fadd fast float %9668, %9617
  %9672 = fsub fast float %9671, %9670
  %9673 = fdiv fast float %9672, %9667
  br label %9674

; <label>:9674                                    ; preds = %9664, %9601
  %9675 = phi float [ %9673, %9664 ], [ 0.000000e+00, %9601 ]
  %9676 = fcmp fast ogt float %9576, %9661
  %9677 = fsub fast float %9576, %9661
  br i1 %9676, label %9678, label %9688

; <label>:9678                                    ; preds = %9674
  %9679 = fsub fast float %9661, %9662
  %9680 = fmul fast float %9679, %9677
  %9681 = fmul fast float %9662, %9576
  %9682 = fadd fast float %9662, %9576
  %9683 = fmul fast float %9682, %9616
  %9684 = fsub fast float %9618, %9681
  %9685 = fadd fast float %9684, %9683
  %9686 = fdiv fast float %9685, %9680
  %9687 = fadd fast float %9686, %9675
  br label %9688

; <label>:9688                                    ; preds = %9678, %9674
  %9689 = phi float [ %9687, %9678 ], [ %9675, %9674 ]
  %9690 = fsub fast float %9576, %9662
  %9691 = fmul fast float %9690, %9677
  %9692 = fmul fast float %9662, %9661
  %9693 = fadd fast float %9662, %9661
  %9694 = fmul fast float %9693, %9616
  %9695 = fadd fast float %9692, %9617
  %9696 = fsub fast float %9695, %9694
  %9697 = fdiv fast float %9696, %9691
  %9698 = call float @dx.op.unary.f32(i32 7, float %9689)  ; Saturate(value)
  %9699 = fcmp fast oeq float %8367, 0.000000e+00
  %9700 = extractvalue %dx.types.CBufRet.f32 %9484, 0
  %9701 = fcmp fast oeq float %9700, 0.000000e+00
  %9702 = or i1 %9699, %9701
  %9703 = fmul fast float %9700, 2.000000e+00
  %9704 = fadd fast float %9485, %9486
  %9705 = fdiv fast float %9704, %9703
  %9706 = call float @dx.op.unary.f32(i32 7, float %9705)  ; Saturate(value)
  %9707 = fmul fast float %9706, 2.000000e+00
  %9708 = fsub fast float 3.000000e+00, %9707
  %9709 = fmul fast float %9706, %9706
  %9710 = fmul fast float %9709, %9708
  %9711 = select i1 %9702, float 1.000000e+00, float %9710
  %9712 = fmul fast float %9697, %8367
  %9713 = fadd fast float %9698, %9712
  %9714 = call float @dx.op.unary.f32(i32 7, float %9713)  ; Saturate(value)
  %9715 = fmul fast float %9711, %9714
  br label %9716

; <label>:9716                                    ; preds = %9688, %9568
  %9717 = phi float [ %9715, %9688 ], [ 0.000000e+00, %9568 ]
  %9718 = fsub fast float 1.000000e+00, %9717
  %9719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9438, float %9439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9720 = extractvalue %dx.types.ResRet.f32 %9719, 0
  %9721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.i32 %9721, 2
  %9723 = icmp eq i32 %9722, 0
  br i1 %9723, label %9729, label %9724

; <label>:9724                                    ; preds = %9716
  %9725 = call float @dx.op.unary.f32(i32 7, float %9717)  ; Saturate(value)
  %9726 = fadd fast float %9720, -1.000000e+00
  %9727 = fmul fast float %9725, %9726
  %9728 = fadd fast float %9727, 1.000000e+00
  br label %9729

; <label>:9729                                    ; preds = %9724, %9716
  %9730 = phi float [ %9728, %9724 ], [ %9718, %9716 ]
  br i1 %9492, label %9731, label %9749

; <label>:9731                                    ; preds = %9729
  %9732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.f32 %9732, 1
  %9734 = fsub fast float %9569, %9733
  %9735 = call float @dx.op.unary.f32(i32 7, float %9734)  ; Saturate(value)
  %9736 = fsub fast float %9569, %9491
  %9737 = call float @dx.op.unary.f32(i32 7, float %9736)  ; Saturate(value)
  %9738 = fsub fast float %9735, %9737
  %9739 = fsub fast float %9571, %9737
  %9740 = fdiv fast float %9739, %9738
  %9741 = call float @dx.op.unary.f32(i32 7, float %9740)  ; Saturate(value)
  %9742 = fmul fast float %9741, 2.000000e+00
  %9743 = fsub fast float 3.000000e+00, %9742
  %9744 = fsub fast float %9720, %9730
  %9745 = fmul fast float %9741, %9741
  %9746 = fmul fast float %9745, %9744
  %9747 = fmul fast float %9746, %9743
  %9748 = fadd fast float %9747, %9730
  br label %9749

; <label>:9749                                    ; preds = %9731, %9729
  %9750 = phi float [ %9748, %9731 ], [ %9730, %9729 ]
  %9751 = call float @dx.op.binary.f32(i32 35, float %9720, float %9750)  ; FMax(a,b)
  %9752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9753 = extractvalue %dx.types.CBufRet.i32 %9752, 2
  %9754 = and i32 %9753, 1
  %9755 = icmp eq i32 %9754, 0
  %9756 = fcmp fast une float %9751, 1.000000e+00
  %9757 = and i1 %9756, %9755
  br i1 %9757, label %9758, label %9777

; <label>:9758                                    ; preds = %9749
  %9759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9438, float %9439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9760 = extractvalue %dx.types.ResRet.f32 %9759, 0
  %9761 = extractvalue %dx.types.ResRet.f32 %9759, 1
  %9762 = extractvalue %dx.types.ResRet.f32 %9759, 2
  %9763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9764 = extractvalue %dx.types.CBufRet.f32 %9763, 1
  %9765 = fmul fast float %9764, %9760
  %9766 = fmul fast float %9764, %9761
  %9767 = fmul fast float %9764, %9762
  %9768 = fcmp fast ogt float %9720, 0x3FEFFF2E40000000
  %9769 = fsub fast float 1.000000e+00, %9751
  %9770 = fsub fast float 1.000000e+00, %9720
  %9771 = fdiv fast float %9769, %9770
  %9772 = call float @dx.op.unary.f32(i32 7, float %9771)  ; Saturate(value)
  %9773 = select i1 %9768, float 0.000000e+00, float %9772
  %9774 = fmul fast float %9765, %9773
  %9775 = fmul fast float %9766, %9773
  %9776 = fmul fast float %9767, %9773
  br label %9777

; <label>:9777                                    ; preds = %9758, %9749
  %9778 = phi float [ 0.000000e+00, %9749 ], [ %9774, %9758 ]
  %9779 = phi float [ 0.000000e+00, %9749 ], [ %9775, %9758 ]
  %9780 = phi float [ 0.000000e+00, %9749 ], [ %9776, %9758 ]
  %9781 = fmul fast float %9778, %8355
  %9782 = fmul fast float %9779, %8355
  %9783 = fmul fast float %9780, %8355
  %9784 = fmul fast float %9751, %9413
  %9785 = call float @dx.op.dot3.f32(i32 55, float %9751, float %9751, float %9751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9786 = call float @dx.op.dot3.f32(i32 55, float %9781, float %9782, float %9783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9787 = select i1 %278, float %9785, float %9751
  %9788 = select i1 %278, float 1.000000e+00, float %9751
  %9789 = select i1 %278, float %9786, float %9781
  %9790 = select i1 %278, float 0.000000e+00, float %9782
  %9791 = select i1 %278, float 0.000000e+00, float %9783
  %9792 = fmul fast float %9787, %9425
  %9793 = fmul fast float %9787, %9426
  %9794 = fmul fast float %9788, %9427
  %9795 = fadd fast float %9792, %9789
  %9796 = fadd fast float %9793, %9790
  %9797 = fadd fast float %9791, %9794
  %9798 = fmul fast float %9787, %9428
  %9799 = fmul fast float %9787, %9429
  %9800 = fmul fast float %9788, %9430
  br label %9801

; <label>:9801                                    ; preds = %9777, %9434, %9403, %8635
  %9802 = phi float [ %8640, %8635 ], [ %9425, %9403 ], [ %9795, %9777 ], [ %9425, %9434 ]
  %9803 = phi float [ %8641, %8635 ], [ %9426, %9403 ], [ %9796, %9777 ], [ %9426, %9434 ]
  %9804 = phi float [ %8642, %8635 ], [ %9427, %9403 ], [ %9797, %9777 ], [ %9427, %9434 ]
  %9805 = phi float [ %8643, %8635 ], [ %9428, %9403 ], [ %9798, %9777 ], [ %9428, %9434 ]
  %9806 = phi float [ %8644, %8635 ], [ %9429, %9403 ], [ %9799, %9777 ], [ %9429, %9434 ]
  %9807 = phi float [ %8645, %8635 ], [ %9430, %9403 ], [ %9800, %9777 ], [ %9430, %9434 ]
  %9808 = phi float [ %8646, %8635 ], [ %9413, %9403 ], [ %9784, %9777 ], [ %9413, %9434 ]
  %9809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9810 = extractvalue %dx.types.CBufRet.f32 %9809, 2
  %9811 = extractvalue %dx.types.CBufRet.f32 %9809, 3
  %9812 = fmul fast float %9810, %123
  %9813 = fmul fast float %9811, %124
  %9814 = call float @dx.op.unary.f32(i32 7, float %9812)  ; Saturate(value)
  %9815 = call float @dx.op.unary.f32(i32 7, float %9813)  ; Saturate(value)
  %9816 = select i1 %8377, i32 2, i32 0
  %9817 = or i32 %9816, 1
  %9818 = uitofp i32 %9817 to float
  %9819 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9814, float %9815, float %9818, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9820 = extractvalue %dx.types.ResRet.f32 %9819, 0
  %9821 = extractvalue %dx.types.ResRet.f32 %9819, 1
  %9822 = extractvalue %dx.types.ResRet.f32 %9819, 2
  %9823 = extractvalue %dx.types.ResRet.f32 %9819, 3
  %9824 = add nuw nsw i32 %9816, 2
  %9825 = uitofp i32 %9824 to float
  %9826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9814, float %9815, float %9825, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9827 = extractvalue %dx.types.ResRet.f32 %9826, 0
  %9828 = extractvalue %dx.types.ResRet.f32 %9826, 1
  %9829 = extractvalue %dx.types.ResRet.f32 %9826, 2
  %9830 = extractvalue %dx.types.ResRet.f32 %9826, 3
  %9831 = call float @dx.op.binary.f32(i32 35, float %9821, float %9822)  ; FMax(a,b)
  %9832 = call float @dx.op.binary.f32(i32 35, float %9820, float %9831)  ; FMax(a,b)
  %9833 = call float @dx.op.binary.f32(i32 35, float %9832, float %9823)  ; FMax(a,b)
  %9834 = call float @dx.op.binary.f32(i32 36, float %9828, float %9829)  ; FMin(a,b)
  %9835 = call float @dx.op.binary.f32(i32 36, float %9827, float %9834)  ; FMin(a,b)
  %9836 = call float @dx.op.binary.f32(i32 36, float %9835, float %9830)  ; FMin(a,b)
  %9837 = fmul fast float %9833, 2.550000e+02
  %9838 = fadd fast float %9837, 0x3F70101020000000
  %9839 = fptoui float %9838 to i32
  %9840 = fmul fast float %9836, 2.550000e+02
  %9841 = fadd fast float %9840, 0x3F70101020000000
  %9842 = fptoui float %9841 to i32
  %9843 = icmp ult i32 %9839, %9842
  br i1 %9843, label %9844, label %10013

; <label>:9844                                    ; preds = %9801
  %9845 = fcmp fast ogt float %109, 9.843750e-01
  %9846 = fadd fast float %8639, -4.000000e+00
  %9847 = select i1 %9845, float -4.000000e+00, float %9846
  %9848 = call float @dx.op.binary.f32(i32 35, float %9847, float 0.000000e+00)  ; FMax(a,b)
  %9849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9849, 0
  %9851 = fadd fast float %9850, %9848
  %9852 = extractvalue %dx.types.CBufRet.f32 %9849, 2
  %9853 = fmul fast float %9851, %9852
  %9854 = call float @dx.op.unary.f32(i32 23, float %9853)  ; Log(value)
  %9855 = extractvalue %dx.types.CBufRet.f32 %9849, 3
  %9856 = fmul fast float %9855, %9854
  %9857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9858 = extractvalue %dx.types.CBufRet.f32 %9857, 2
  %9859 = fmul fast float %9856, %9858
  %9860 = call float @dx.op.unary.f32(i32 7, float %9859)  ; Saturate(value)
  %9861 = uitofp i32 %9839 to float
  %9862 = uitofp i32 %9842 to float
  %9863 = fadd fast float %9861, 5.000000e-01
  %9864 = fadd fast float %9862, 5.000000e-01
  %9865 = fmul fast float %9858, %9863
  %9866 = fmul fast float %9858, %9864
  %9867 = fadd fast float %9865, 0x3F0FFB4800000000
  %9868 = fadd fast float %9866, 0xBF0FFB4800000000
  %9869 = call float @dx.op.binary.f32(i32 35, float %9860, float %9867)  ; FMax(a,b)
  %9870 = call float @dx.op.binary.f32(i32 36, float %9869, float %9868)  ; FMin(a,b)
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 1
  %9873 = extractvalue %dx.types.CBufRet.f32 %9871, 2
  %9874 = extractvalue %dx.types.CBufRet.f32 %9871, 0
  %9875 = select i1 %8377, float %9874, float 0.000000e+00
  %9876 = fmul fast float %9872, %9870
  %9877 = fadd fast float %9875, %9876
  %9878 = fadd fast float %9875, %9873
  %9879 = fsub fast float %9872, %9873
  %9880 = fadd fast float %9879, %9875
  %9881 = call float @dx.op.binary.f32(i32 35, float %9877, float %9878)  ; FMax(a,b)
  %9882 = call float @dx.op.binary.f32(i32 36, float %9881, float %9880)  ; FMin(a,b)
  %9883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9814, float %9815, float %9882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9884 = extractvalue %dx.types.ResRet.f32 %9883, 0
  %9885 = extractvalue %dx.types.ResRet.f32 %9883, 1
  %9886 = extractvalue %dx.types.ResRet.f32 %9883, 2
  %9887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9888 = extractvalue %dx.types.CBufRet.i32 %9887, 0
  %9889 = extractvalue %dx.types.CBufRet.i32 %9887, 1
  %9890 = uitofp i32 %9888 to float
  %9891 = uitofp i32 %9889 to float
  %9892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9893 = extractvalue %dx.types.CBufRet.f32 %9892, 0
  %9894 = extractvalue %dx.types.CBufRet.f32 %9892, 1
  %9895 = fmul fast float %9890, %9814
  %9896 = fmul fast float %9891, %9815
  %9897 = fadd fast float %9895, -5.000000e-01
  %9898 = fadd fast float %9896, -5.000000e-01
  %9899 = call float @dx.op.unary.f32(i32 22, float %9897)  ; Frc(value)
  %9900 = call float @dx.op.unary.f32(i32 22, float %9898)  ; Frc(value)
  %9901 = fmul fast float %9899, %9899
  %9902 = fmul fast float %9901, %9899
  %9903 = fsub fast float 3.000000e+00, %9899
  %9904 = fmul fast float %9901, %9903
  %9905 = fmul fast float %9899, 3.000000e+00
  %9906 = fmul fast float %9902, 3.000000e+00
  %9907 = fmul fast float %9901, 6.000000e+00
  %9908 = fsub fast float %9906, %9907
  %9909 = fadd fast float %9908, 4.000000e+00
  %9910 = fmul fast float %9909, 0x3FC5555560000000
  %9911 = fmul fast float %9902, -3.000000e+00
  %9912 = fadd fast float %9901, %9899
  %9913 = fmul fast float %9912, 3.000000e+00
  %9914 = fadd fast float %9911, 1.000000e+00
  %9915 = fadd fast float %9914, %9913
  %9916 = fmul fast float %9902, 0x3FC5555560000000
  %9917 = fmul fast float %9900, %9900
  %9918 = fmul fast float %9917, %9900
  %9919 = fsub fast float 3.000000e+00, %9900
  %9920 = fmul fast float %9917, %9919
  %9921 = fmul fast float %9900, 3.000000e+00
  %9922 = fmul fast float %9918, 3.000000e+00
  %9923 = fmul fast float %9917, 6.000000e+00
  %9924 = fsub fast float %9922, %9923
  %9925 = fadd fast float %9924, 4.000000e+00
  %9926 = fmul fast float %9925, 0x3FC5555560000000
  %9927 = fmul fast float %9918, -3.000000e+00
  %9928 = fadd fast float %9917, %9900
  %9929 = fmul fast float %9928, 3.000000e+00
  %9930 = fadd fast float %9927, 1.000000e+00
  %9931 = fadd fast float %9930, %9929
  %9932 = fmul fast float %9918, 0x3FC5555560000000
  %9933 = fadd fast float %9899, 1.000000e+00
  %9934 = fsub fast float 1.000000e+00, %9905
  %9935 = fadd fast float %9934, %9904
  %9936 = fadd fast float %9935, %9909
  %9937 = fmul fast float %9936, 0x3FC5555560000000
  %9938 = fdiv fast float %9910, %9937
  %9939 = fsub fast float %9933, %9938
  %9940 = fsub fast float 1.000000e+00, %9899
  %9941 = fadd fast float %9915, %9902
  %9942 = fmul fast float %9941, 0x3FC5555560000000
  %9943 = fdiv fast float %9916, %9942
  %9944 = fadd fast float %9940, %9943
  %9945 = fadd fast float %9900, 1.000000e+00
  %9946 = fsub fast float 1.000000e+00, %9921
  %9947 = fadd fast float %9946, %9920
  %9948 = fadd fast float %9947, %9925
  %9949 = fmul fast float %9948, 0x3FC5555560000000
  %9950 = fdiv fast float %9926, %9949
  %9951 = fsub fast float %9945, %9950
  %9952 = fsub fast float 1.000000e+00, %9900
  %9953 = fadd fast float %9931, %9918
  %9954 = fmul fast float %9953, 0x3FC5555560000000
  %9955 = fdiv fast float %9932, %9954
  %9956 = fadd fast float %9955, %9952
  %9957 = fmul fast float %9939, %9893
  %9958 = fsub fast float %9814, %9957
  %9959 = fmul fast float %9944, %9893
  %9960 = fadd fast float %9959, %9814
  %9961 = fmul fast float %9956, %9894
  %9962 = fadd fast float %9961, %9815
  %9963 = fmul fast float %9951, %9894
  %9964 = fsub fast float %9815, %9963
  %9965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9958, float %9964, float %9882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9966 = extractvalue %dx.types.ResRet.f32 %9965, 0
  %9967 = extractvalue %dx.types.ResRet.f32 %9965, 1
  %9968 = extractvalue %dx.types.ResRet.f32 %9965, 2
  %9969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9960, float %9964, float %9882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9970 = extractvalue %dx.types.ResRet.f32 %9969, 0
  %9971 = extractvalue %dx.types.ResRet.f32 %9969, 1
  %9972 = extractvalue %dx.types.ResRet.f32 %9969, 2
  %9973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9958, float %9962, float %9882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9974 = extractvalue %dx.types.ResRet.f32 %9973, 0
  %9975 = extractvalue %dx.types.ResRet.f32 %9973, 1
  %9976 = extractvalue %dx.types.ResRet.f32 %9973, 2
  %9977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9960, float %9962, float %9882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9978 = extractvalue %dx.types.ResRet.f32 %9977, 0
  %9979 = extractvalue %dx.types.ResRet.f32 %9977, 1
  %9980 = extractvalue %dx.types.ResRet.f32 %9977, 2
  %9981 = fsub fast float %9974, %9966
  %9982 = fsub fast float %9975, %9967
  %9983 = fsub fast float %9976, %9968
  %9984 = fmul fast float %9981, %9954
  %9985 = fmul fast float %9982, %9954
  %9986 = fmul fast float %9983, %9954
  %9987 = fadd fast float %9984, %9966
  %9988 = fadd fast float %9985, %9967
  %9989 = fadd fast float %9986, %9968
  %9990 = fsub fast float %9978, %9970
  %9991 = fsub fast float %9979, %9971
  %9992 = fsub fast float %9980, %9972
  %9993 = fmul fast float %9990, %9954
  %9994 = fmul fast float %9991, %9954
  %9995 = fmul fast float %9992, %9954
  %9996 = fsub fast float %9970, %9987
  %9997 = fadd fast float %9996, %9993
  %9998 = fsub fast float %9971, %9988
  %9999 = fadd fast float %9998, %9994
  %10000 = fsub fast float %9972, %9989
  %10001 = fadd fast float %10000, %9995
  %10002 = fmul fast float %9997, %9942
  %10003 = fmul fast float %9999, %9942
  %10004 = fmul fast float %10001, %9942
  %10005 = fadd fast float %10002, %9987
  %10006 = fadd fast float %10003, %9988
  %10007 = fadd fast float %10004, %9989
  %10008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10009 = extractvalue %dx.types.CBufRet.f32 %10008, 1
  %10010 = fmul fast float %10005, %10009
  %10011 = fmul fast float %10006, %10009
  %10012 = fmul fast float %10007, %10009
  br label %10013

; <label>:10013                                   ; preds = %9844, %9801
  %10014 = phi float [ %9884, %9844 ], [ 1.000000e+00, %9801 ]
  %10015 = phi float [ %9885, %9844 ], [ 1.000000e+00, %9801 ]
  %10016 = phi float [ %9886, %9844 ], [ 1.000000e+00, %9801 ]
  %10017 = phi float [ %10010, %9844 ], [ 0.000000e+00, %9801 ]
  %10018 = phi float [ %10011, %9844 ], [ 0.000000e+00, %9801 ]
  %10019 = phi float [ %10012, %9844 ], [ 0.000000e+00, %9801 ]
  %10020 = fmul fast float %10017, %8355
  %10021 = fmul fast float %10018, %8355
  %10022 = fmul fast float %10019, %8355
  %10023 = fmul fast float %10014, %9808
  %10024 = call float @dx.op.dot3.f32(i32 55, float %10014, float %10015, float %10016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10025 = call float @dx.op.dot3.f32(i32 55, float %10020, float %10021, float %10022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10026 = select i1 %278, float %10024, float %10014
  %10027 = select i1 %278, float %10024, float %10015
  %10028 = select i1 %278, float 1.000000e+00, float %10016
  %10029 = select i1 %278, float %10025, float %10020
  %10030 = select i1 %278, float 0.000000e+00, float %10021
  %10031 = select i1 %278, float 0.000000e+00, float %10022
  %10032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10033 = extractvalue %dx.types.CBufRet.i32 %10032, 3
  %10034 = and i32 %10033, 3
  %10035 = icmp ne i32 %10034, 0
  %10036 = and i32 %10033, 4
  %10037 = icmp ne i32 %10036, 0
  %10038 = and i1 %10035, %10037
  %10039 = and i1 %278, %10038
  br i1 %10039, label %10040, label %10046

; <label>:10040                                   ; preds = %10013
  %10041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10042 = extractvalue %dx.types.CBufRet.f32 %10041, 1
  %10043 = fadd fast float %10023, -1.000000e+00
  %10044 = fmul fast float %10042, %10043
  %10045 = fadd fast float %10044, 1.000000e+00
  br label %10046

; <label>:10046                                   ; preds = %10040, %10013
  %10047 = phi float [ %10045, %10040 ], [ %10023, %10013 ]
  %10048 = fadd fast float %9805, %9802
  %10049 = fmul fast float %10026, %10048
  %10050 = fadd fast float %10049, %10029
  %10051 = fadd fast float %9806, %9803
  %10052 = fmul fast float %10027, %10051
  %10053 = fadd fast float %10052, %10030
  %10054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10055 = extractvalue %dx.types.CBufRet.f32 %10054, 0
  br i1 %278, label %10056, label %10080

; <label>:10056                                   ; preds = %10046
  %10057 = fadd fast float %10050, %10053
  %10058 = fmul fast float %10055, %10057
  %10059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10060 = extractvalue %dx.types.CBufRet.f32 %10059, 3
  %10061 = extractvalue %dx.types.CBufRet.f32 %8359, 1
  %10062 = fsub fast float %8364, %8358
  %10063 = fadd fast float %10062, %8365
  %10064 = fsub fast float %10063, %10061
  %10065 = extractvalue %dx.types.CBufRet.f32 %8359, 2
  %10066 = fmul fast float %10064, %10065
  %10067 = call float @dx.op.unary.f32(i32 7, float %10066)  ; Saturate(value)
  %10068 = fsub fast float %10067, %10060
  %10069 = fmul fast float %10068, %10047
  %10070 = fadd fast float %10069, %10060
  %10071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10072 = extractvalue %dx.types.CBufRet.f32 %10071, 0
  %10073 = fsub fast float %10070, %10072
  %10074 = fmul fast float %10073, 1.000000e+01
  %10075 = call float @dx.op.unary.f32(i32 7, float %10074)  ; Saturate(value)
  %10076 = fsub fast float %3911, %8355
  %10077 = fmul fast float %10075, %10076
  %10078 = fadd fast float %10077, %8355
  %10079 = fmul fast float %10078, %10070
  br label %10104

; <label>:10080                                   ; preds = %10046
  %10081 = fadd fast float %9807, %9804
  %10082 = fmul fast float %10028, %10081
  %10083 = fadd fast float %10082, %10031
  %10084 = fmul fast float %10055, %10050
  %10085 = fmul fast float %10055, %10053
  %10086 = fmul fast float %10055, %10083
  %10087 = call float @dx.op.binary.f32(i32 35, float %10085, float %10086)  ; FMax(a,b)
  %10088 = call float @dx.op.binary.f32(i32 35, float %10084, float %10087)  ; FMax(a,b)
  %10089 = call float @dx.op.binary.f32(i32 35, float %10088, float %8355)  ; FMax(a,b)
  %10090 = fcmp fast ugt float %10089, 0x3F10000000000000
  br i1 %10090, label %10092, label %10091

; <label>:10091                                   ; preds = %10080
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10092

; <label>:10092                                   ; preds = %10091, %10080
  %10093 = add i32 %63, 356
  %10094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10093, i32 undef)  ; BufferLoad(srv,index,wot)
  %10095 = extractvalue %dx.types.ResRet.i32 %10094, 0
  %10096 = and i32 %10095, 32
  %10097 = icmp eq i32 %10096, 0
  br i1 %10097, label %10104, label %10098

; <label>:10098                                   ; preds = %10092
  %10099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10100 = extractvalue %dx.types.CBufRet.f32 %10099, 0
  %10101 = fmul fast float %10100, 0x3FE99999A0000000
  %10102 = fadd fast float %10100, %10084
  %10103 = fadd fast float %10101, %10086
  br label %10104

; <label>:10104                                   ; preds = %10098, %10092, %10056
  %10105 = phi float [ %10058, %10056 ], [ %10102, %10098 ], [ %10084, %10092 ]
  %10106 = phi float [ %10079, %10056 ], [ %10085, %10098 ], [ %10085, %10092 ]
  %10107 = phi float [ %10078, %10056 ], [ %10103, %10098 ], [ %10086, %10092 ]
  %10108 = phi float [ %10078, %10056 ], [ %8355, %10098 ], [ %8355, %10092 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10109 = call float @dx.op.binary.f32(i32 36, float %10105, float 3.225500e+04)  ; FMin(a,b)
  %10110 = call float @dx.op.binary.f32(i32 36, float %10106, float 3.225500e+04)  ; FMin(a,b)
  %10111 = call float @dx.op.binary.f32(i32 36, float %10107, float 3.225500e+04)  ; FMin(a,b)
  %10112 = call float @dx.op.binary.f32(i32 36, float %10108, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10109)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10110)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10111)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10112)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

