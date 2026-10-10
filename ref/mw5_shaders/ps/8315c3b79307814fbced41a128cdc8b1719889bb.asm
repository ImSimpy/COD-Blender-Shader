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
; ENTITY_IDS               0    yz        13     NONE    uint     z 
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
; shader hash: 74fea32bdbd8336742e29c1c2a344834
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
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
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
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = alloca [4 x i32], align 4
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = alloca [12 x float], align 4
  %110 = alloca [12 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [4 x float], align 4
  %113 = alloca [4 x float], align 4
  %114 = alloca [4 x float], align 4
  %115 = alloca [3 x float], align 4
  %116 = alloca [3 x float], align 4
  %117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = fmul fast float %120, %105
  %122 = fmul fast float %120, %106
  %123 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %124 = bitcast float %123 to i32
  %125 = ashr i32 %124, 1
  %126 = sub nsw i32 1597250115, %125
  %127 = bitcast i32 %126 to float
  %128 = fmul fast float %127, %96
  %129 = fmul fast float %127, %97
  %130 = fmul fast float %127, %98
  %131 = fmul fast float %97, %94
  %132 = fmul fast float %98, %93
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %98, %92
  %135 = fmul fast float %96, %94
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %96, %93
  %138 = fmul fast float %97, %92
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %133, %95
  %141 = fmul fast float %136, %95
  %142 = fmul fast float %139, %95
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = fcmp fast une float %144, 0.000000e+00
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %121, 2.000000e+00
  %150 = fmul fast float %149, %147
  %151 = fmul fast float %122, 2.000000e+00
  %152 = fmul fast float %151, %148
  %153 = fsub fast float 1.000000e+00, %150
  %154 = fsub fast float 1.000000e+00, %152
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = select i1 %145, float %156, float %160
  %164 = select i1 %145, float %157, float %161
  %165 = select i1 %145, float %158, float %162
  %166 = fmul fast float %163, %153
  %167 = fmul fast float %164, %153
  %168 = fmul fast float %165, %153
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = select i1 %145, float %170, float %174
  %178 = select i1 %145, float %171, float %175
  %179 = select i1 %145, float %172, float %176
  %180 = fmul fast float %177, %154
  %181 = fmul fast float %178, %154
  %182 = fmul fast float %179, %154
  %183 = fadd fast float %180, %166
  %184 = fadd fast float %181, %167
  %185 = fadd fast float %182, %168
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = select i1 %145, float %187, float %191
  %195 = select i1 %145, float %188, float %192
  %196 = select i1 %145, float %189, float %193
  %197 = fadd fast float %183, %194
  %198 = fadd fast float %184, %195
  %199 = fadd fast float %185, %196
  %200 = fmul fast float %197, %108
  %201 = fmul fast float %198, %108
  %202 = fmul fast float %199, %108
  %203 = fmul fast float %121, 5.000000e-01
  %204 = fmul fast float %122, 5.000000e-01
  %205 = fptosi float %203 to i32
  %206 = fptosi float %204 to i32
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %226 = fmul fast float %224, %121
  %227 = fmul fast float %225, %122
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 114688
  %231 = icmp ne i32 %230, 0
  %232 = select i1 %231, float %226, float 0.000000e+00
  %233 = select i1 %231, float %227, float 0.000000e+00
  %234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %232, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fmul fast float %235, 2.550000e+02
  %237 = fptoui float %236 to i32
  %238 = select i1 %231, i32 %237, i32 0
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 3
  %241 = and i32 %240, 3
  %242 = icmp ne i32 %241, 0
  %243 = and i32 %240, 4
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %242, %244
  br i1 %245, label %246, label %255

; <label>:246                                     ; preds = %0
  %247 = fmul fast float %148, %122
  %248 = fmul fast float %147, %121
  %249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %248, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = fsub fast float 1.000000e+00, %250
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = fcmp fast olt float %251, %253
  br label %258

; <label>:255                                     ; preds = %0
  %256 = icmp eq i32 %243, 0
  %257 = and i1 %242, %256
  br label %258

; <label>:258                                     ; preds = %255, %246
  %259 = phi i1 [ %254, %246 ], [ %257, %255 ]
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = fmul fast float %261, 0x3FE3C6EF40000000
  %263 = frem fast float %121, 2.560000e+02
  %264 = frem fast float %122, 2.560000e+02
  %265 = fptoui float %263 to i32
  %266 = fptoui float %264 to i32
  %267 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %265, i32 %266, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fadd fast float %268, %262
  %270 = call float @dx.op.unary.f32(i32 22, float %269)  ; Frc(value)
  %271 = add i32 %61, 156
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %61, 216
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %61, 36
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %61, 288
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = mul i32 %62, 100
  %314 = add i32 %313, 28
  %315 = add i32 %313, 40
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = add i32 %61, 172
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = shl i32 %320, 4
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %320, 7
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %320, 22
  %328 = shl nuw nsw i32 %327, 5
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %61, 232
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %332, 8
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %332, 16
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = add i32 %61, 52
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %61, 304
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = shl i32 %359, 4
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %359, 7
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 22
  %367 = shl nuw nsw i32 %366, 5
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = and i32 %317, 1
  %370 = icmp ne i32 %369, 0
  %371 = select i1 %370, float %362, float %323
  %372 = select i1 %370, float %365, float %326
  %373 = select i1 %370, float %368, float %329
  %374 = add i32 %313, 44
  %375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = fmul fast float %376, %371
  %378 = fmul fast float %376, %372
  %379 = fmul fast float %376, %373
  %380 = add i32 %313, 48
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = shl i32 %382, 4
  %384 = and i32 %383, 32752
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %382, 7
  %387 = and i32 %386, 32752
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %382, 22
  %390 = shl nuw nsw i32 %389, 5
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = and i32 %317, 8
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, float %385, float %335
  %395 = select i1 %393, float %388, float %339
  %396 = select i1 %393, float %391, float %343
  %397 = add i32 %313, 52
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = and i32 %317, 2
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %401, float %348
  %407 = select i1 %405, float %403, float %350
  %408 = add i32 %313, 56
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %410, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = and i32 %317, 4
  %416 = icmp ne i32 %415, 0
  %417 = select i1 %416, float %412, float %355
  %418 = fmul float %417, 0x3F50624DE0000000
  %419 = select i1 %416, float %414, float %357
  %420 = fmul float %419, 0x3F50624DE0000000
  %421 = add i32 %313, 60
  %422 = add i32 %313, 32
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = add i32 %61, 188
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = shl i32 %427, 4
  %429 = and i32 %428, 32752
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %427, 7
  %432 = and i32 %431, 32752
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %427, 22
  %435 = shl nuw nsw i32 %434, 5
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = add i32 %61, 248
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 255
  %441 = uitofp i32 %440 to float
  %442 = fmul fast float %441, 0x3F70101020000000
  %443 = lshr i32 %439, 8
  %444 = and i32 %443, 255
  %445 = uitofp i32 %444 to float
  %446 = fmul fast float %445, 0x3F70101020000000
  %447 = lshr i32 %439, 16
  %448 = and i32 %447, 255
  %449 = uitofp i32 %448 to float
  %450 = fmul fast float %449, 0x3F70101020000000
  %451 = add i32 %61, 68
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = add i32 %61, 320
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = shl i32 %466, 4
  %468 = and i32 %467, 32752
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %466, 7
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %466, 22
  %474 = shl nuw nsw i32 %473, 5
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = and i32 %424, 1
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float %469, float %430
  %479 = select i1 %477, float %472, float %433
  %480 = select i1 %477, float %475, float %436
  %481 = add i32 %313, 64
  %482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = fmul fast float %483, %478
  %485 = fmul fast float %483, %479
  %486 = fmul fast float %483, %480
  %487 = add i32 %313, 68
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = shl i32 %489, 4
  %491 = and i32 %490, 32752
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %489, 7
  %494 = and i32 %493, 32752
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = lshr i32 %489, 22
  %497 = shl nuw nsw i32 %496, 5
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = and i32 %424, 8
  %500 = icmp ne i32 %499, 0
  %501 = select i1 %500, float %492, float %442
  %502 = select i1 %500, float %495, float %446
  %503 = select i1 %500, float %498, float %450
  %504 = add i32 %313, 72
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %506, 65535
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = lshr i32 %506, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = and i32 %424, 2
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %508, float %455
  %514 = select i1 %512, float %510, float %457
  %515 = add i32 %313, 76
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 65535
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = lshr i32 %517, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = and i32 %424, 4
  %523 = icmp ne i32 %522, 0
  %524 = select i1 %523, float %519, float %462
  %525 = fmul float %524, 0x3F50624DE0000000
  %526 = select i1 %523, float %521, float %464
  %527 = fmul float %526, 0x3F50624DE0000000
  %528 = add i32 %313, 80
  %529 = add i32 %313, 36
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = add i32 %61, 204
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = shl i32 %534, 4
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %534, 7
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %534, 22
  %542 = shl nuw nsw i32 %541, 5
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = add i32 %61, 264
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = and i32 %546, 255
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = lshr i32 %546, 8
  %551 = and i32 %550, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %552, 0x3F70101020000000
  %554 = lshr i32 %546, 16
  %555 = and i32 %554, 255
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3F70101020000000
  %558 = add i32 %61, 84
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %560, 16
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = add i32 %61, 336
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 65535
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %567, 16
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = shl i32 %573, 4
  %575 = and i32 %574, 32752
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %573, 7
  %578 = and i32 %577, 32752
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %573, 22
  %581 = shl nuw nsw i32 %580, 5
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = and i32 %531, 1
  %584 = icmp ne i32 %583, 0
  %585 = select i1 %584, float %576, float %537
  %586 = select i1 %584, float %579, float %540
  %587 = select i1 %584, float %582, float %543
  %588 = add i32 %313, 84
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = fmul fast float %590, %585
  %592 = fmul fast float %590, %586
  %593 = fmul fast float %590, %587
  %594 = add i32 %313, 88
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = shl i32 %596, 4
  %598 = and i32 %597, 32752
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %596, 7
  %601 = and i32 %600, 32752
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = lshr i32 %596, 22
  %604 = shl nuw nsw i32 %603, 5
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = and i32 %531, 8
  %607 = icmp ne i32 %606, 0
  %608 = select i1 %607, float %599, float %549
  %609 = select i1 %607, float %602, float %553
  %610 = select i1 %607, float %605, float %557
  %611 = add i32 %313, 92
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %613, 16
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %531, 2
  %619 = icmp ne i32 %618, 0
  %620 = select i1 %619, float %615, float %562
  %621 = select i1 %619, float %617, float %564
  %622 = add i32 %313, 96
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %624, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = and i32 %531, 4
  %630 = icmp ne i32 %629, 0
  %631 = select i1 %630, float %626, float %569
  %632 = fmul float %631, 0x3F50624DE0000000
  %633 = select i1 %630, float %628, float %571
  %634 = fmul float %633, 0x3F50624DE0000000
  %635 = add i32 %61, 348
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 32
  %639 = icmp eq i32 %638, 0
  %640 = and i32 %637, 64
  %641 = icmp eq i32 %640, 0
  %642 = and i32 %637, 128
  %643 = icmp eq i32 %642, 0
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 2
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %663, label %648

; <label>:648                                     ; preds = %258
  %649 = add i32 %61, 472
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %651, 0
  %653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %653, %dx.types.Handle %118, float %99, float %100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = extractvalue %dx.types.ResRet.f32 %654, 1
  %657 = extractvalue %dx.types.ResRet.f32 %654, 2
  %658 = extractvalue %dx.types.ResRet.f32 %654, 3
  %659 = fmul fast float %658, %101
  %660 = fmul fast float %655, %102
  %661 = fmul fast float %656, %103
  %662 = fmul fast float %657, %104
  br label %663

; <label>:663                                     ; preds = %648, %258
  %664 = phi float [ %104, %258 ], [ %662, %648 ]
  %665 = phi float [ %103, %258 ], [ %661, %648 ]
  %666 = phi float [ %102, %258 ], [ %660, %648 ]
  %667 = phi float [ %101, %258 ], [ %659, %648 ]
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = and i32 %669, 2
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %691, label %672

; <label>:672                                     ; preds = %663
  %673 = add i32 %61, 44
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 1
  %677 = icmp ne i32 %676, 0
  %678 = select i1 %677, float %666, float 1.000000e+00
  %679 = add i32 %61, 60
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 1
  %683 = icmp ne i32 %682, 0
  %684 = select i1 %683, float %665, float 1.000000e+00
  %685 = add i32 %61, 76
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 1
  %689 = icmp ne i32 %688, 0
  %690 = select i1 %689, float %664, float 1.000000e+00
  br label %691

; <label>:691                                     ; preds = %672, %663
  %692 = phi float [ %664, %663 ], [ %690, %672 ]
  %693 = phi float [ %665, %663 ], [ %684, %672 ]
  %694 = phi float [ %666, %663 ], [ %678, %672 ]
  %695 = lshr i32 %669, 20
  %696 = and i32 %695, 3
  %697 = add nuw nsw i32 %696, 1
  %698 = add i32 %61, 24
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %61, 28
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = or i32 %703, %700
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %1293, label %706

; <label>:706                                     ; preds = %691
  %707 = and i32 %700, 262144
  %708 = icmp ne i32 %707, 0
  %709 = select i1 %708, float %67, float 1.000000e+00
  %710 = select i1 %708, float %68, float 0.000000e+00
  %711 = select i1 %708, float %69, float 0.000000e+00
  %712 = select i1 %708, float %70, float 1.000000e+00
  %713 = select i1 %708, float %71, float %99
  %714 = select i1 %708, float %72, float %100
  %715 = add i32 %61, 284
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = lshr i32 %717, 16
  %719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %718)  ; LegacyF16ToF32(value)
  %720 = fmul fast float %719, 0x3F50624DE0000000
  %721 = add i32 %61, 88
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = lshr i32 %723, 16
  %725 = and i32 %724, 255
  %726 = lshr i32 %723, 24
  %727 = add i32 %61, 292
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %729, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = add i32 %61, 32
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = lshr i32 %736, 22
  %738 = shl nuw nsw i32 %737, 5
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = shl i32 %736, 4
  %741 = and i32 %740, 32752
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = lshr i32 %736, 7
  %744 = and i32 %743, 32752
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %748 = fmul fast float %747, 1.000000e+03
  %749 = fmul fast float %311, %748
  %750 = call float @dx.op.unary.f32(i32 22, float %749)  ; Frc(value)
  %751 = fadd fast float %750, %301
  %752 = fmul fast float %312, %748
  %753 = call float @dx.op.unary.f32(i32 22, float %752)  ; Frc(value)
  %754 = fadd fast float %753, %303
  %755 = fmul fast float %720, %748
  %756 = call float @dx.op.unary.f32(i32 22, float %755)  ; Frc(value)
  %757 = fmul fast float %756, 0x401921FB60000000
  %758 = fadd fast float %757, %739
  %759 = call float @dx.op.unary.f32(i32 13, float %758)  ; Sin(value)
  %760 = call float @dx.op.unary.f32(i32 12, float %758)  ; Cos(value)
  %761 = fsub fast float -0.000000e+00, %759
  %762 = fadd fast float %713, -5.000000e-01
  %763 = fadd fast float %714, -5.000000e-01
  %764 = fmul fast float %731, %762
  %765 = fmul fast float %733, %763
  %766 = fadd fast float %764, 5.000000e-01
  %767 = fadd fast float %765, 5.000000e-01
  %768 = fmul fast float %742, %766
  %769 = fmul fast float %745, %767
  %770 = fmul fast float %760, %768
  %771 = call float @dx.op.tertiary.f32(i32 46, float %761, float %769, float %770)  ; FMad(a,b,c)
  %772 = fmul fast float %759, %768
  %773 = call float @dx.op.tertiary.f32(i32 46, float %760, float %769, float %772)  ; FMad(a,b,c)
  %774 = fadd fast float %751, %771
  %775 = fadd fast float %754, %773
  %776 = icmp ugt i32 %725, 1
  %777 = icmp ugt i32 %723, 33554431
  %778 = or i1 %777, %776
  br i1 %778, label %779, label %804

; <label>:779                                     ; preds = %706
  %780 = add i32 %61, 228
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = lshr i32 %782, 16
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = fmul fast float %747, %784
  %786 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %787 = mul nuw nsw i32 %725, %726
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %786, %788
  %790 = call float @dx.op.unary.f32(i32 27, float %789)  ; Round_ni(value)
  %791 = fptoui float %790 to i32
  %792 = urem i32 %791, %725
  %793 = udiv i32 %791, %726
  %794 = call float @dx.op.unary.f32(i32 22, float %774)  ; Frc(value)
  %795 = call float @dx.op.unary.f32(i32 22, float %775)  ; Frc(value)
  %796 = uitofp i32 %792 to float
  %797 = uitofp i32 %793 to float
  %798 = fadd fast float %794, %796
  %799 = fadd fast float %795, %797
  %800 = uitofp i32 %725 to float
  %801 = uitofp i32 %726 to float
  %802 = fdiv fast float %798, %800
  %803 = fdiv fast float %799, %801
  br label %804

; <label>:804                                     ; preds = %779, %706
  %805 = phi float [ %802, %779 ], [ %774, %706 ]
  %806 = phi float [ %803, %779 ], [ %775, %706 ]
  %807 = and i32 %700, 256
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %855, label %809

; <label>:809                                     ; preds = %804
  %810 = add i32 %61, 424
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %812, 0
  %814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %814, %dx.types.Handle %118, float %805, float %806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = add i32 %61, 100
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = shl i32 %819, 4
  %821 = and i32 %820, 32752
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = lshr i32 %819, 7
  %824 = and i32 %823, 32752
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = fsub fast float 1.000000e+00, %667
  %827 = call float @dx.op.binary.f32(i32 35, float %826, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %828 = bitcast float %667 to i32
  %829 = sitofp i32 %828 to float
  %830 = fadd fast float %829, 0xC1CFBF8940000000
  %831 = fmul fast float %825, %830
  %832 = fadd fast float %831, 0x41CFBF8940000000
  %833 = fptosi float %832 to i32
  %834 = bitcast i32 %833 to float
  %835 = bitcast float %827 to i32
  %836 = sitofp i32 %835 to float
  %837 = fadd fast float %836, 0xC1CFBF8940000000
  %838 = fmul fast float %837, %825
  %839 = fadd fast float %838, 0x41CFBF8940000000
  %840 = fptosi float %839 to i32
  %841 = bitcast i32 %840 to float
  %842 = fmul fast float %834, %822
  %843 = fmul fast float %841, %822
  %844 = fsub fast float %827, %842
  %845 = fadd fast float %843, %827
  %846 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  %847 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %848 = fsub fast float %816, %846
  %849 = fsub fast float %847, %846
  %850 = bitcast float %849 to i32
  %851 = sub nsw i32 2129859010, %850
  %852 = bitcast i32 %851 to float
  %853 = fmul fast float %852, %848
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  br label %855

; <label>:855                                     ; preds = %809, %804
  %856 = phi float [ %854, %809 ], [ %667, %804 ]
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 128
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %877, label %861

; <label>:861                                     ; preds = %855
  %862 = add i32 %61, 408
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = add i32 %864, 0
  %866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %866, %dx.types.Handle %118, float %805, float %806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 524288
  %872 = icmp ne i32 %871, 0
  %873 = fcmp fast ogt float %868, 0x3FE0101020000000
  %874 = select i1 %873, float 1.000000e+00, float 0.000000e+00
  %875 = select i1 %872, float %874, float %868
  %876 = fmul fast float %875, %856
  br label %877

; <label>:877                                     ; preds = %861, %855
  %878 = phi float [ %876, %861 ], [ %856, %855 ]
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 16
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %1081, label %883

; <label>:883                                     ; preds = %877
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = add i32 %61, 360
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %888, 0
  %890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %890, %dx.types.Handle %117, float %805, float %806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = extractvalue %dx.types.ResRet.f32 %891, 3
  %896 = and i32 %885, 255
  %897 = uitofp i32 %896 to float
  %898 = lshr i32 %885, 8
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = fmul fast float %895, %897
  %902 = fadd fast float %901, %900
  %903 = fmul fast float %902, 0x3F70101000000000
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 512
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %916, label %908

; <label>:908                                     ; preds = %883
  %909 = add i32 %61, 440
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %911, 0
  %913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %913, %dx.types.Handle %118, float %805, float %806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  br label %916

; <label>:916                                     ; preds = %908, %883
  %917 = phi float [ %915, %908 ], [ 1.000000e+00, %883 ]
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 33554432
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %1028, label %922

; <label>:922                                     ; preds = %916
  %923 = add i32 %61, 224
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 65535
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = lshr i32 %925, 16
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = add i32 %61, 228
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = and i32 %932, 65535
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = lshr i32 %936, 24
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101020000000
  %940 = and i32 %936, 255
  %941 = uitofp i32 %940 to float
  %942 = fmul fast float %941, 0x3F70101020000000
  %943 = lshr i32 %936, 8
  %944 = and i32 %943, 255
  %945 = uitofp i32 %944 to float
  %946 = fmul fast float %945, 0x3F70101020000000
  %947 = lshr i32 %936, 16
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = add i32 %61, 220
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 24
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = and i32 %953, 255
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101020000000
  %960 = lshr i32 %953, 8
  %961 = and i32 %960, 255
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %962, 0x3F70101020000000
  %964 = lshr i32 %953, 16
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = bitcast float %892 to i32
  %969 = ashr i32 %968, 1
  %970 = sub nsw i32 1597463174, %969
  %971 = bitcast i32 %970 to float
  %972 = fmul fast float %892, 5.000000e-01
  %973 = fmul fast float %971, %971
  %974 = fmul fast float %973, %972
  %975 = fsub fast float 1.500000e+00, %974
  %976 = fmul fast float %971, %892
  %977 = fmul fast float %976, %975
  %978 = bitcast float %893 to i32
  %979 = ashr i32 %978, 1
  %980 = sub nsw i32 1597463174, %979
  %981 = bitcast i32 %980 to float
  %982 = fmul fast float %893, 5.000000e-01
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %983, %982
  %985 = fsub fast float 1.500000e+00, %984
  %986 = fmul fast float %981, %893
  %987 = fmul fast float %986, %985
  %988 = bitcast float %894 to i32
  %989 = ashr i32 %988, 1
  %990 = sub nsw i32 1597463174, %989
  %991 = bitcast i32 %990 to float
  %992 = fmul fast float %894, 5.000000e-01
  %993 = fmul fast float %991, %991
  %994 = fmul fast float %993, %992
  %995 = fsub fast float 1.500000e+00, %994
  %996 = fmul fast float %991, %894
  %997 = fmul fast float %996, %995
  %998 = fsub fast float %977, %959
  %999 = fsub fast float %987, %963
  %1000 = fsub fast float %997, %967
  %1001 = fmul fast float %998, %927
  %1002 = fmul fast float %999, %929
  %1003 = fmul fast float %1000, %934
  %1004 = fadd fast float %1001, %942
  %1005 = fadd fast float %1002, %946
  %1006 = fadd fast float %1003, %950
  %1007 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1008 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1009 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1010 = fmul fast float %1007, %1007
  %1011 = fmul fast float %1008, %1008
  %1012 = fmul fast float %1009, %1009
  %1013 = fsub fast float %1010, %892
  %1014 = fsub fast float %1011, %893
  %1015 = fsub fast float %1012, %894
  %1016 = fmul fast float %1013, %917
  %1017 = fmul fast float %1014, %917
  %1018 = fmul fast float %1015, %917
  %1019 = fadd fast float %1016, %892
  %1020 = fadd fast float %1017, %893
  %1021 = fadd fast float %1018, %894
  %1022 = fadd fast float %939, %903
  %1023 = fsub fast float %1022, %956
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1025 = fsub fast float %1024, %903
  %1026 = fmul fast float %1025, %917
  %1027 = fadd fast float %1026, %903
  br label %1081

; <label>:1028                                    ; preds = %916
  %1029 = and i32 %919, 134217728
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1065, label %1031

; <label>:1031                                    ; preds = %1028
  %1032 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1033 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1034 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1035 = fadd fast float %1032, -5.000000e-01
  %1036 = fadd fast float %1033, -5.000000e-01
  %1037 = fadd fast float %1034, -5.000000e-01
  %1038 = fmul fast float %1035, %917
  %1039 = fmul fast float %1036, %917
  %1040 = fmul fast float %1037, %917
  %1041 = fadd fast float %1038, 5.000000e-01
  %1042 = fadd fast float %1039, 5.000000e-01
  %1043 = fadd fast float %1040, 5.000000e-01
  %1044 = call float @dx.op.unary.f32(i32 24, float %892)  ; Sqrt(value)
  %1045 = call float @dx.op.unary.f32(i32 24, float %893)  ; Sqrt(value)
  %1046 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %1047 = fmul fast float %1041, 2.000000e+00
  %1048 = fsub fast float 1.000000e+00, %1047
  %1049 = fmul fast float %1048, %1044
  %1050 = fadd fast float %1049, %1047
  %1051 = fmul fast float %1050, %1044
  %1052 = fmul fast float %1042, 2.000000e+00
  %1053 = fsub fast float 1.000000e+00, %1052
  %1054 = fmul fast float %1053, %1045
  %1055 = fadd fast float %1054, %1052
  %1056 = fmul fast float %1055, %1045
  %1057 = fmul fast float %1043, 2.000000e+00
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1058, %1046
  %1060 = fadd fast float %1059, %1057
  %1061 = fmul fast float %1060, %1046
  %1062 = fmul fast float %1051, %1051
  %1063 = fmul fast float %1056, %1056
  %1064 = fmul fast float %1061, %1061
  br label %1081

; <label>:1065                                    ; preds = %1028
  %1066 = fmul fast float %288, %288
  %1067 = fmul fast float %292, %292
  %1068 = fmul fast float %296, %296
  %1069 = fadd fast float %1066, -1.000000e+00
  %1070 = fadd fast float %1067, -1.000000e+00
  %1071 = fadd fast float %1068, -1.000000e+00
  %1072 = fmul fast float %917, %1069
  %1073 = fmul fast float %917, %1070
  %1074 = fmul fast float %917, %1071
  %1075 = fadd fast float %1072, 1.000000e+00
  %1076 = fadd fast float %1073, 1.000000e+00
  %1077 = fadd fast float %1074, 1.000000e+00
  %1078 = fmul fast float %1075, %892
  %1079 = fmul fast float %1076, %893
  %1080 = fmul fast float %1077, %894
  br label %1081

; <label>:1081                                    ; preds = %1065, %1031, %922, %877
  %1082 = phi float [ %1027, %922 ], [ %903, %1031 ], [ %903, %1065 ], [ 0x3FA23C0BE0000000, %877 ]
  %1083 = phi float [ %1019, %922 ], [ %1062, %1031 ], [ %1078, %1065 ], [ 1.000000e+00, %877 ]
  %1084 = phi float [ %1020, %922 ], [ %1063, %1031 ], [ %1079, %1065 ], [ 1.000000e+00, %877 ]
  %1085 = phi float [ %1021, %922 ], [ %1064, %1031 ], [ %1080, %1065 ], [ 1.000000e+00, %877 ]
  %1086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.i32 %1086, 1
  %1088 = and i32 %1087, 1
  %1089 = icmp ne i32 %1088, 0
  %1090 = add i32 %61, 356
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 32
  %1094 = icmp ne i32 %1093, 0
  %1095 = and i1 %1089, %1094
  %1096 = select i1 %1095, float 1.000000e+00, float %1083
  %1097 = select i1 %1095, float 0x3FD3333340000000, float %1084
  %1098 = select i1 %1095, float 0x3FD3333340000000, float %1085
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 32
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1175, label %1103

; <label>:1103                                    ; preds = %1081
  %1104 = add i32 %61, 92
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = add i32 %61, 376
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = add i32 %1109, 0
  %1111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1111, %dx.types.Handle %117, float %805, float %806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = extractvalue %dx.types.ResRet.f32 %1112, 3
  %1117 = and i32 %1106, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = lshr i32 %1106, 8
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = lshr i32 %1106, 16
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F70101000000000
  %1126 = fmul fast float %1113, %1118
  %1127 = fadd fast float %1126, %1121
  %1128 = fmul fast float %1127, 0x3F70101000000000
  %1129 = fadd fast float %1114, -5.000000e-01
  %1130 = fadd fast float %1116, -5.000000e-01
  %1131 = fmul fast float %1129, %1125
  %1132 = fmul fast float %1130, %1125
  %1133 = fadd fast float %1131, 5.000000e-01
  %1134 = fadd fast float %1132, 5.000000e-01
  %1135 = fmul fast float %1133, 2.000000e+00
  %1136 = fadd fast float %1135, -1.000000e+00
  %1137 = fmul fast float %1134, 2.000000e+00
  %1138 = fadd fast float %1137, -1.000000e+00
  %1139 = fadd fast float %1136, %1138
  %1140 = fmul fast float %1139, 5.000000e-01
  %1141 = fsub fast float %1136, %1138
  %1142 = fmul fast float %1141, 5.000000e-01
  %1143 = call float @dx.op.unary.f32(i32 6, float %1140)  ; FAbs(value)
  %1144 = fsub fast float 1.000000e+00, %1143
  %1145 = call float @dx.op.unary.f32(i32 6, float %1142)  ; FAbs(value)
  %1146 = fsub fast float %1144, %1145
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1140, float %1142, float %1146, float %1140, float %1142, float %1146)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = call float @dx.op.unary.f32(i32 25, float %1147)  ; Rsqrt(value)
  %1149 = fmul fast float %1140, %1148
  %1150 = fmul fast float %1142, %1148
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = and i32 %1152, 67108864
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1171, label %1155

; <label>:1155                                    ; preds = %1103
  %1156 = add i32 %61, 280
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 65535
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 65535
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = lshr i32 %1158, 16
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = fsub fast float %1128, %1166
  %1168 = fmul fast float %1167, %1160
  %1169 = fadd fast float %1168, %1164
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  br label %1171

; <label>:1171                                    ; preds = %1155, %1103
  %1172 = phi float [ %1170, %1155 ], [ %1128, %1103 ]
  %1173 = call float @dx.op.dot2.f32(i32 54, float %1149, float %1150, float %709, float %710)  ; Dot2(ax,ay,bx,by)
  %1174 = call float @dx.op.dot2.f32(i32 54, float %1149, float %1150, float %711, float %712)  ; Dot2(ax,ay,bx,by)
  br label %1175

; <label>:1175                                    ; preds = %1171, %1081
  %1176 = phi float [ %1172, %1171 ], [ 0x3FD6666660000000, %1081 ]
  %1177 = phi float [ %1173, %1171 ], [ 0.000000e+00, %1081 ]
  %1178 = phi float [ %1174, %1171 ], [ 0.000000e+00, %1081 ]
  %1179 = phi float [ %1115, %1171 ], [ 1.000000e+00, %1081 ]
  %1180 = add i32 %61, 160
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 22
  %1184 = shl nuw nsw i32 %1183, 5
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 64
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1223, label %1190

; <label>:1190                                    ; preds = %1175
  %1191 = add i32 %61, 392
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 131072
  %1199 = icmp eq i32 %1198, 0
  %1200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %117, float %805, float %806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = fmul fast float %1201, %276
  %1205 = fmul fast float %1202, %279
  %1206 = fmul fast float %1203, %282
  br i1 %1199, label %1213, label %1207

; <label>:1207                                    ; preds = %1190
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = fmul fast float %1209, %1204
  %1211 = fmul fast float %1209, %1205
  %1212 = fmul fast float %1209, %1206
  br label %1213

; <label>:1213                                    ; preds = %1207, %1190
  %1214 = phi float [ %1210, %1207 ], [ %1204, %1190 ]
  %1215 = phi float [ %1211, %1207 ], [ %1205, %1190 ]
  %1216 = phi float [ %1212, %1207 ], [ %1206, %1190 ]
  %1217 = fmul fast float %1214, %1185
  %1218 = select i1 %259, float %1217, float %1214
  %1219 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1215, float %1216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1220 = select i1 %259, float 0.000000e+00, float %1214
  %1221 = select i1 %259, float %1219, float %1215
  %1222 = select i1 %259, float 0.000000e+00, float %1216
  br label %1223

; <label>:1223                                    ; preds = %1213, %1175
  %1224 = phi float [ %1220, %1213 ], [ 0.000000e+00, %1175 ]
  %1225 = phi float [ %1221, %1213 ], [ 0.000000e+00, %1175 ]
  %1226 = phi float [ %1222, %1213 ], [ 0.000000e+00, %1175 ]
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 10240
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1275, label %1231

; <label>:1231                                    ; preds = %1223
  %1232 = add i32 %61, 456
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = add i32 %1234, 0
  %1236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1236, %dx.types.Handle %118, float %805, float %806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 1048576
  %1243 = icmp ne i32 %1242, 0
  %1244 = and i32 %1241, 8192
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1261, label %1246

; <label>:1246                                    ; preds = %1231
  %1247 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1248 = select i1 %1243, float %1247, float %1238
  %1249 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1250 = select i1 %1243, float %1249, float %1238
  %1251 = add i32 %61, 96
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = lshr i32 %1253, 16
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F80101020000000
  %1258 = fmul fast float %1257, %1250
  %1259 = fmul fast float %1257, %1238
  %1260 = fmul fast float %1257, %1248
  br label %1261

; <label>:1261                                    ; preds = %1246, %1231
  %1262 = phi float [ %1258, %1246 ], [ 0.000000e+00, %1231 ]
  %1263 = phi float [ %1259, %1246 ], [ 0.000000e+00, %1231 ]
  %1264 = phi float [ %1260, %1246 ], [ 0.000000e+00, %1231 ]
  %1265 = and i32 %1241, 2048
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1275, label %1267

; <label>:1267                                    ; preds = %1261
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = shl i32 %1269, 4
  %1271 = and i32 %1270, 32752
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = fmul fast float %1272, %1239
  %1274 = call float @dx.op.binary.f32(i32 35, float %1273, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1275

; <label>:1275                                    ; preds = %1267, %1261, %1223
  %1276 = phi float [ %1262, %1267 ], [ %1262, %1261 ], [ 0.000000e+00, %1223 ]
  %1277 = phi float [ %1263, %1267 ], [ %1263, %1261 ], [ 0.000000e+00, %1223 ]
  %1278 = phi float [ %1264, %1267 ], [ %1264, %1261 ], [ 0.000000e+00, %1223 ]
  %1279 = phi float [ %1274, %1267 ], [ 0x3F70101020000000, %1261 ], [ 0x3F70101020000000, %1223 ]
  %1280 = add i32 %61, 96
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = lshr i32 %1282, 8
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1097, float %1098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1289 = fmul fast float %1287, %1288
  %1290 = fadd fast float %1289, %1284
  %1291 = fmul fast float %1290, 0x3F70101020000000
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  br label %1293

; <label>:1293                                    ; preds = %1275, %691
  %1294 = phi float [ 0.000000e+00, %691 ], [ %1177, %1275 ]
  %1295 = phi float [ 0.000000e+00, %691 ], [ %1178, %1275 ]
  %1296 = phi float [ 0.000000e+00, %691 ], [ %1096, %1275 ]
  %1297 = phi float [ 0.000000e+00, %691 ], [ %1097, %1275 ]
  %1298 = phi float [ 0.000000e+00, %691 ], [ %1098, %1275 ]
  %1299 = phi float [ 0.000000e+00, %691 ], [ %1224, %1275 ]
  %1300 = phi float [ 0.000000e+00, %691 ], [ %1225, %1275 ]
  %1301 = phi float [ 0.000000e+00, %691 ], [ %1226, %1275 ]
  %1302 = phi float [ 0.000000e+00, %691 ], [ %1276, %1275 ]
  %1303 = phi float [ 0.000000e+00, %691 ], [ %1277, %1275 ]
  %1304 = phi float [ 0.000000e+00, %691 ], [ %1278, %1275 ]
  %1305 = phi float [ 0.000000e+00, %691 ], [ %1082, %1275 ]
  %1306 = phi float [ 0.000000e+00, %691 ], [ %878, %1275 ]
  %1307 = phi float [ 0.000000e+00, %691 ], [ %1176, %1275 ]
  %1308 = phi float [ 0.000000e+00, %691 ], [ %1179, %1275 ]
  %1309 = phi float [ 0.000000e+00, %691 ], [ %1279, %1275 ]
  %1310 = phi float [ 0.000000e+00, %691 ], [ %1292, %1275 ]
  br i1 %639, label %2124, label %1311

; <label>:1311                                    ; preds = %1293
  %1312 = icmp ult i32 %697, 2
  %1313 = add i32 %61, 40
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = add i32 %61, 44
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = or i32 %1318, %1315
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %2124, label %1321

; <label>:1321                                    ; preds = %1311
  %1322 = and i32 %1315, 262144
  %1323 = icmp ne i32 %1322, 0
  %1324 = select i1 %1323, float %67, float 1.000000e+00
  %1325 = select i1 %1323, float %68, float 0.000000e+00
  %1326 = select i1 %1323, float %69, float 0.000000e+00
  %1327 = select i1 %1323, float %70, float 1.000000e+00
  %1328 = select i1 %1323, float %71, float %99
  %1329 = select i1 %1323, float %72, float %100
  %1330 = add i32 %61, 300
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = lshr i32 %1332, 16
  %1334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1333)  ; LegacyF16ToF32(value)
  %1335 = fmul fast float %1334, 0x3F50624DE0000000
  %1336 = add i32 %61, 104
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = lshr i32 %1338, 16
  %1340 = and i32 %1339, 255
  %1341 = lshr i32 %1338, 24
  %1342 = add i32 %61, 308
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 65535
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = lshr i32 %1344, 16
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = add i32 %61, 48
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = lshr i32 %1351, 22
  %1353 = shl nuw nsw i32 %1352, 5
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = shl i32 %1351, 4
  %1356 = and i32 %1355, 32752
  %1357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1356)  ; LegacyF16ToF32(value)
  %1358 = lshr i32 %1351, 7
  %1359 = and i32 %1358, 32752
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1363 = fmul fast float %1362, 1.000000e+03
  %1364 = fmul fast float %1363, %418
  %1365 = call float @dx.op.unary.f32(i32 22, float %1364)  ; Frc(value)
  %1366 = fadd fast float %1365, %406
  %1367 = fmul fast float %1363, %420
  %1368 = call float @dx.op.unary.f32(i32 22, float %1367)  ; Frc(value)
  %1369 = fadd fast float %1368, %407
  %1370 = fmul fast float %1335, %1363
  %1371 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1372 = fmul fast float %1371, 0x401921FB60000000
  %1373 = fadd fast float %1372, %1354
  %1374 = call float @dx.op.unary.f32(i32 13, float %1373)  ; Sin(value)
  %1375 = call float @dx.op.unary.f32(i32 12, float %1373)  ; Cos(value)
  %1376 = fsub fast float -0.000000e+00, %1374
  %1377 = fadd fast float %1328, -5.000000e-01
  %1378 = fadd fast float %1329, -5.000000e-01
  %1379 = fmul fast float %1346, %1377
  %1380 = fmul fast float %1348, %1378
  %1381 = fadd fast float %1379, 5.000000e-01
  %1382 = fadd fast float %1380, 5.000000e-01
  %1383 = fmul fast float %1357, %1381
  %1384 = fmul fast float %1360, %1382
  %1385 = fmul fast float %1375, %1383
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %1384, float %1385)  ; FMad(a,b,c)
  %1387 = fmul fast float %1374, %1383
  %1388 = call float @dx.op.tertiary.f32(i32 46, float %1375, float %1384, float %1387)  ; FMad(a,b,c)
  %1389 = fadd fast float %1366, %1386
  %1390 = fadd fast float %1369, %1388
  %1391 = icmp ugt i32 %1340, 1
  %1392 = icmp ugt i32 %1338, 33554431
  %1393 = or i1 %1392, %1391
  br i1 %1393, label %1394, label %1419

; <label>:1394                                    ; preds = %1321
  %1395 = add i32 %61, 244
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = lshr i32 %1397, 16
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = fmul fast float %1362, %1399
  %1401 = call float @dx.op.unary.f32(i32 22, float %1400)  ; Frc(value)
  %1402 = mul nuw nsw i32 %1340, %1341
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1401, %1403
  %1405 = call float @dx.op.unary.f32(i32 27, float %1404)  ; Round_ni(value)
  %1406 = fptoui float %1405 to i32
  %1407 = urem i32 %1406, %1340
  %1408 = udiv i32 %1406, %1341
  %1409 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1410 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1411 = uitofp i32 %1407 to float
  %1412 = uitofp i32 %1408 to float
  %1413 = fadd fast float %1409, %1411
  %1414 = fadd fast float %1410, %1412
  %1415 = uitofp i32 %1340 to float
  %1416 = uitofp i32 %1341 to float
  %1417 = fdiv fast float %1413, %1415
  %1418 = fdiv fast float %1414, %1416
  br label %1419

; <label>:1419                                    ; preds = %1394, %1321
  %1420 = phi float [ %1417, %1394 ], [ %1389, %1321 ]
  %1421 = phi float [ %1418, %1394 ], [ %1390, %1321 ]
  %1422 = and i32 %1315, 256
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1470, label %1424

; <label>:1424                                    ; preds = %1419
  %1425 = add i32 %61, 428
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %118, float %1420, float %1421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = add i32 %61, 116
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = shl i32 %1434, 4
  %1436 = and i32 %1435, 32752
  %1437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1436)  ; LegacyF16ToF32(value)
  %1438 = lshr i32 %1434, 7
  %1439 = and i32 %1438, 32752
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fsub fast float 1.000000e+00, %694
  %1442 = call float @dx.op.binary.f32(i32 35, float %1441, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1443 = bitcast float %694 to i32
  %1444 = sitofp i32 %1443 to float
  %1445 = fadd fast float %1444, 0xC1CFBF8940000000
  %1446 = fmul fast float %1440, %1445
  %1447 = fadd fast float %1446, 0x41CFBF8940000000
  %1448 = fptosi float %1447 to i32
  %1449 = bitcast i32 %1448 to float
  %1450 = bitcast float %1442 to i32
  %1451 = sitofp i32 %1450 to float
  %1452 = fadd fast float %1451, 0xC1CFBF8940000000
  %1453 = fmul fast float %1452, %1440
  %1454 = fadd fast float %1453, 0x41CFBF8940000000
  %1455 = fptosi float %1454 to i32
  %1456 = bitcast i32 %1455 to float
  %1457 = fmul fast float %1449, %1437
  %1458 = fmul fast float %1456, %1437
  %1459 = fsub fast float %1442, %1457
  %1460 = fadd fast float %1458, %1442
  %1461 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1463 = fsub fast float %1431, %1461
  %1464 = fsub fast float %1462, %1461
  %1465 = bitcast float %1464 to i32
  %1466 = sub nsw i32 2129859010, %1465
  %1467 = bitcast i32 %1466 to float
  %1468 = fmul fast float %1467, %1463
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  br label %1470

; <label>:1470                                    ; preds = %1424, %1419
  %1471 = phi float [ %1469, %1424 ], [ %694, %1419 ]
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 128
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1492, label %1476

; <label>:1476                                    ; preds = %1470
  %1477 = add i32 %61, 412
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %118, float %1420, float %1421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 524288
  %1487 = icmp ne i32 %1486, 0
  %1488 = fcmp fast ogt float %1483, 0x3FE0101020000000
  %1489 = select i1 %1488, float 1.000000e+00, float 0.000000e+00
  %1490 = select i1 %1487, float %1489, float %1483
  %1491 = fmul fast float %1490, %1471
  br label %1492

; <label>:1492                                    ; preds = %1476, %1470
  %1493 = phi float [ %1491, %1476 ], [ %1471, %1470 ]
  %1494 = fcmp fast ult float %1493, 0x3F70101020000000
  br i1 %1494, label %2124, label %1495

; <label>:1495                                    ; preds = %1492
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 16
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1698, label %1500

; <label>:1500                                    ; preds = %1495
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = add i32 %61, 364
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1507, %dx.types.Handle %117, float %1420, float %1421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.ResRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.ResRet.f32 %1508, 2
  %1512 = extractvalue %dx.types.ResRet.f32 %1508, 3
  %1513 = and i32 %1502, 255
  %1514 = uitofp i32 %1513 to float
  %1515 = lshr i32 %1502, 8
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1512, %1514
  %1519 = fadd fast float %1518, %1517
  %1520 = fmul fast float %1519, 0x3F70101000000000
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 512
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1533, label %1525

; <label>:1525                                    ; preds = %1500
  %1526 = add i32 %61, 444
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %1528, 0
  %1530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1530, %dx.types.Handle %118, float %1420, float %1421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  br label %1533

; <label>:1533                                    ; preds = %1525, %1500
  %1534 = phi float [ %1532, %1525 ], [ 1.000000e+00, %1500 ]
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 33554432
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1645, label %1539

; <label>:1539                                    ; preds = %1533
  %1540 = add i32 %61, 240
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 65535
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = lshr i32 %1542, 16
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = add i32 %61, 244
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 65535
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = lshr i32 %1553, 24
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = and i32 %1553, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = lshr i32 %1553, 8
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = lshr i32 %1553, 16
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = fmul fast float %1566, 0x3F70101020000000
  %1568 = add i32 %61, 236
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = lshr i32 %1570, 24
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = and i32 %1570, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = lshr i32 %1570, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = lshr i32 %1570, 16
  %1582 = and i32 %1581, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1583, 0x3F70101020000000
  %1585 = bitcast float %1509 to i32
  %1586 = ashr i32 %1585, 1
  %1587 = sub nsw i32 1597463174, %1586
  %1588 = bitcast i32 %1587 to float
  %1589 = fmul fast float %1509, 5.000000e-01
  %1590 = fmul fast float %1588, %1588
  %1591 = fmul fast float %1590, %1589
  %1592 = fsub fast float 1.500000e+00, %1591
  %1593 = fmul fast float %1588, %1509
  %1594 = fmul fast float %1593, %1592
  %1595 = bitcast float %1510 to i32
  %1596 = ashr i32 %1595, 1
  %1597 = sub nsw i32 1597463174, %1596
  %1598 = bitcast i32 %1597 to float
  %1599 = fmul fast float %1510, 5.000000e-01
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1600, %1599
  %1602 = fsub fast float 1.500000e+00, %1601
  %1603 = fmul fast float %1598, %1510
  %1604 = fmul fast float %1603, %1602
  %1605 = bitcast float %1511 to i32
  %1606 = ashr i32 %1605, 1
  %1607 = sub nsw i32 1597463174, %1606
  %1608 = bitcast i32 %1607 to float
  %1609 = fmul fast float %1511, 5.000000e-01
  %1610 = fmul fast float %1608, %1608
  %1611 = fmul fast float %1610, %1609
  %1612 = fsub fast float 1.500000e+00, %1611
  %1613 = fmul fast float %1608, %1511
  %1614 = fmul fast float %1613, %1612
  %1615 = fsub fast float %1594, %1576
  %1616 = fsub fast float %1604, %1580
  %1617 = fsub fast float %1614, %1584
  %1618 = fmul fast float %1615, %1544
  %1619 = fmul fast float %1616, %1546
  %1620 = fmul fast float %1617, %1551
  %1621 = fadd fast float %1618, %1559
  %1622 = fadd fast float %1619, %1563
  %1623 = fadd fast float %1620, %1567
  %1624 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1625 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1626 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1627 = fmul fast float %1624, %1624
  %1628 = fmul fast float %1625, %1625
  %1629 = fmul fast float %1626, %1626
  %1630 = fsub fast float %1627, %1509
  %1631 = fsub fast float %1628, %1510
  %1632 = fsub fast float %1629, %1511
  %1633 = fmul fast float %1630, %1534
  %1634 = fmul fast float %1631, %1534
  %1635 = fmul fast float %1632, %1534
  %1636 = fadd fast float %1633, %1509
  %1637 = fadd fast float %1634, %1510
  %1638 = fadd fast float %1635, %1511
  %1639 = fadd fast float %1556, %1520
  %1640 = fsub fast float %1639, %1573
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = fsub fast float %1641, %1520
  %1643 = fmul fast float %1642, %1534
  %1644 = fadd fast float %1643, %1520
  br label %1698

; <label>:1645                                    ; preds = %1533
  %1646 = and i32 %1536, 134217728
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1682, label %1648

; <label>:1648                                    ; preds = %1645
  %1649 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %1650 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %1651 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %1652 = fadd fast float %1649, -5.000000e-01
  %1653 = fadd fast float %1650, -5.000000e-01
  %1654 = fadd fast float %1651, -5.000000e-01
  %1655 = fmul fast float %1652, %1534
  %1656 = fmul fast float %1653, %1534
  %1657 = fmul fast float %1654, %1534
  %1658 = fadd fast float %1655, 5.000000e-01
  %1659 = fadd fast float %1656, 5.000000e-01
  %1660 = fadd fast float %1657, 5.000000e-01
  %1661 = call float @dx.op.unary.f32(i32 24, float %1509)  ; Sqrt(value)
  %1662 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1663 = call float @dx.op.unary.f32(i32 24, float %1511)  ; Sqrt(value)
  %1664 = fmul fast float %1658, 2.000000e+00
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = fmul fast float %1665, %1661
  %1667 = fadd fast float %1666, %1664
  %1668 = fmul fast float %1667, %1661
  %1669 = fmul fast float %1659, 2.000000e+00
  %1670 = fsub fast float 1.000000e+00, %1669
  %1671 = fmul fast float %1670, %1662
  %1672 = fadd fast float %1671, %1669
  %1673 = fmul fast float %1672, %1662
  %1674 = fmul fast float %1660, 2.000000e+00
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = fmul fast float %1675, %1663
  %1677 = fadd fast float %1676, %1674
  %1678 = fmul fast float %1677, %1663
  %1679 = fmul fast float %1668, %1668
  %1680 = fmul fast float %1673, %1673
  %1681 = fmul fast float %1678, %1678
  br label %1698

; <label>:1682                                    ; preds = %1645
  %1683 = fmul fast float %394, %394
  %1684 = fmul fast float %395, %395
  %1685 = fmul fast float %396, %396
  %1686 = fadd fast float %1683, -1.000000e+00
  %1687 = fadd fast float %1684, -1.000000e+00
  %1688 = fadd fast float %1685, -1.000000e+00
  %1689 = fmul fast float %1534, %1686
  %1690 = fmul fast float %1534, %1687
  %1691 = fmul fast float %1534, %1688
  %1692 = fadd fast float %1689, 1.000000e+00
  %1693 = fadd fast float %1690, 1.000000e+00
  %1694 = fadd fast float %1691, 1.000000e+00
  %1695 = fmul fast float %1692, %1509
  %1696 = fmul fast float %1693, %1510
  %1697 = fmul fast float %1694, %1511
  br label %1698

; <label>:1698                                    ; preds = %1682, %1648, %1539, %1495
  %1699 = phi float [ %1644, %1539 ], [ %1520, %1648 ], [ %1520, %1682 ], [ 0x3FA23C0BE0000000, %1495 ]
  %1700 = phi float [ %1636, %1539 ], [ %1679, %1648 ], [ %1695, %1682 ], [ 1.000000e+00, %1495 ]
  %1701 = phi float [ %1637, %1539 ], [ %1680, %1648 ], [ %1696, %1682 ], [ 1.000000e+00, %1495 ]
  %1702 = phi float [ %1638, %1539 ], [ %1681, %1648 ], [ %1697, %1682 ], [ 1.000000e+00, %1495 ]
  %1703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.i32 %1703, 1
  %1705 = and i32 %1704, 1
  %1706 = icmp ne i32 %1705, 0
  %1707 = add i32 %61, 356
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 32
  %1711 = icmp ne i32 %1710, 0
  %1712 = and i1 %1706, %1711
  %1713 = select i1 %1712, float 1.000000e+00, float %1700
  %1714 = select i1 %1712, float 0x3FD3333340000000, float %1701
  %1715 = select i1 %1712, float 0x3FD3333340000000, float %1702
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 32
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1792, label %1720

; <label>:1720                                    ; preds = %1698
  %1721 = add i32 %61, 108
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = add i32 %61, 380
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = add i32 %1726, 0
  %1728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1728, %dx.types.Handle %117, float %1420, float %1421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.ResRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.ResRet.f32 %1729, 3
  %1734 = and i32 %1723, 255
  %1735 = uitofp i32 %1734 to float
  %1736 = lshr i32 %1723, 8
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = lshr i32 %1723, 16
  %1740 = and i32 %1739, 255
  %1741 = uitofp i32 %1740 to float
  %1742 = fmul fast float %1741, 0x3F70101000000000
  %1743 = fmul fast float %1730, %1735
  %1744 = fadd fast float %1743, %1738
  %1745 = fmul fast float %1744, 0x3F70101000000000
  %1746 = fadd fast float %1731, -5.000000e-01
  %1747 = fadd fast float %1733, -5.000000e-01
  %1748 = fmul fast float %1746, %1742
  %1749 = fmul fast float %1747, %1742
  %1750 = fadd fast float %1748, 5.000000e-01
  %1751 = fadd fast float %1749, 5.000000e-01
  %1752 = fmul fast float %1750, 2.000000e+00
  %1753 = fadd fast float %1752, -1.000000e+00
  %1754 = fmul fast float %1751, 2.000000e+00
  %1755 = fadd fast float %1754, -1.000000e+00
  %1756 = fadd fast float %1753, %1755
  %1757 = fmul fast float %1756, 5.000000e-01
  %1758 = fsub fast float %1753, %1755
  %1759 = fmul fast float %1758, 5.000000e-01
  %1760 = call float @dx.op.unary.f32(i32 6, float %1757)  ; FAbs(value)
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = call float @dx.op.unary.f32(i32 6, float %1759)  ; FAbs(value)
  %1763 = fsub fast float %1761, %1762
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1757, float %1759, float %1763, float %1757, float %1759, float %1763)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = call float @dx.op.unary.f32(i32 25, float %1764)  ; Rsqrt(value)
  %1766 = fmul fast float %1757, %1765
  %1767 = fmul fast float %1759, %1765
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 67108864
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %1788, label %1772

; <label>:1772                                    ; preds = %1720
  %1773 = add i32 %61, 296
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 65535
  %1777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1776)  ; LegacyF16ToF32(value)
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 65535
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = lshr i32 %1775, 16
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = fsub fast float %1745, %1783
  %1785 = fmul fast float %1784, %1777
  %1786 = fadd fast float %1785, %1781
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  br label %1788

; <label>:1788                                    ; preds = %1772, %1720
  %1789 = phi float [ %1787, %1772 ], [ %1745, %1720 ]
  %1790 = call float @dx.op.dot2.f32(i32 54, float %1766, float %1767, float %1324, float %1325)  ; Dot2(ax,ay,bx,by)
  %1791 = call float @dx.op.dot2.f32(i32 54, float %1766, float %1767, float %1326, float %1327)  ; Dot2(ax,ay,bx,by)
  br label %1792

; <label>:1792                                    ; preds = %1788, %1698
  %1793 = phi float [ %1789, %1788 ], [ 0x3FD6666660000000, %1698 ]
  %1794 = phi float [ %1790, %1788 ], [ 0.000000e+00, %1698 ]
  %1795 = phi float [ %1791, %1788 ], [ 0.000000e+00, %1698 ]
  %1796 = phi float [ %1732, %1788 ], [ 1.000000e+00, %1698 ]
  %1797 = add i32 %61, 176
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = lshr i32 %1799, 22
  %1801 = shl nuw nsw i32 %1800, 5
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 64
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1840, label %1807

; <label>:1807                                    ; preds = %1792
  %1808 = add i32 %61, 396
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = add i32 %1810, 0
  %1812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1811, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 131072
  %1816 = icmp eq i32 %1815, 0
  %1817 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1812, %dx.types.Handle %117, float %1420, float %1421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.ResRet.f32 %1817, 2
  %1821 = fmul fast float %377, %1818
  %1822 = fmul fast float %378, %1819
  %1823 = fmul fast float %379, %1820
  br i1 %1816, label %1830, label %1824

; <label>:1824                                    ; preds = %1807
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = fmul fast float %1826, %1821
  %1828 = fmul fast float %1826, %1822
  %1829 = fmul fast float %1826, %1823
  br label %1830

; <label>:1830                                    ; preds = %1824, %1807
  %1831 = phi float [ %1827, %1824 ], [ %1821, %1807 ]
  %1832 = phi float [ %1828, %1824 ], [ %1822, %1807 ]
  %1833 = phi float [ %1829, %1824 ], [ %1823, %1807 ]
  %1834 = fmul fast float %1831, %1802
  %1835 = select i1 %259, float %1834, float %1831
  %1836 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1832, float %1833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = select i1 %259, float 0.000000e+00, float %1831
  %1838 = select i1 %259, float %1836, float %1832
  %1839 = select i1 %259, float 0.000000e+00, float %1833
  br label %1840

; <label>:1840                                    ; preds = %1830, %1792
  %1841 = phi float [ %1837, %1830 ], [ 0.000000e+00, %1792 ]
  %1842 = phi float [ %1838, %1830 ], [ 0.000000e+00, %1792 ]
  %1843 = phi float [ %1839, %1830 ], [ 0.000000e+00, %1792 ]
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 10240
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1892, label %1848

; <label>:1848                                    ; preds = %1840
  %1849 = add i32 %61, 460
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %1851, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1853, %dx.types.Handle %118, float %1420, float %1421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 1
  %1856 = extractvalue %dx.types.ResRet.f32 %1854, 3
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 1048576
  %1860 = icmp ne i32 %1859, 0
  %1861 = and i32 %1858, 8192
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %1878, label %1863

; <label>:1863                                    ; preds = %1848
  %1864 = extractvalue %dx.types.ResRet.f32 %1854, 2
  %1865 = select i1 %1860, float %1864, float %1855
  %1866 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1867 = select i1 %1860, float %1866, float %1855
  %1868 = add i32 %61, 112
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = lshr i32 %1870, 16
  %1872 = and i32 %1871, 255
  %1873 = uitofp i32 %1872 to float
  %1874 = fmul fast float %1873, 0x3F80101020000000
  %1875 = fmul fast float %1874, %1867
  %1876 = fmul fast float %1874, %1855
  %1877 = fmul fast float %1874, %1865
  br label %1878

; <label>:1878                                    ; preds = %1863, %1848
  %1879 = phi float [ %1875, %1863 ], [ 0.000000e+00, %1848 ]
  %1880 = phi float [ %1876, %1863 ], [ 0.000000e+00, %1848 ]
  %1881 = phi float [ %1877, %1863 ], [ 0.000000e+00, %1848 ]
  %1882 = and i32 %1858, 2048
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %1892, label %1884

; <label>:1884                                    ; preds = %1878
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = shl i32 %1886, 4
  %1888 = and i32 %1887, 32752
  %1889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1888)  ; LegacyF16ToF32(value)
  %1890 = fmul fast float %1889, %1856
  %1891 = call float @dx.op.binary.f32(i32 35, float %1890, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1892

; <label>:1892                                    ; preds = %1884, %1878, %1840
  %1893 = phi float [ %1879, %1884 ], [ %1879, %1878 ], [ 0.000000e+00, %1840 ]
  %1894 = phi float [ %1880, %1884 ], [ %1880, %1878 ], [ 0.000000e+00, %1840 ]
  %1895 = phi float [ %1881, %1884 ], [ %1881, %1878 ], [ 0.000000e+00, %1840 ]
  %1896 = phi float [ %1891, %1884 ], [ 0x3F70101020000000, %1878 ], [ 0x3F70101020000000, %1840 ]
  %1897 = add i32 %61, 112
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 255
  %1901 = uitofp i32 %1900 to float
  %1902 = lshr i32 %1899, 8
  %1903 = and i32 %1902, 255
  %1904 = uitofp i32 %1903 to float
  %1905 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1906 = fmul fast float %1904, %1905
  %1907 = fadd fast float %1906, %1901
  %1908 = fmul fast float %1907, 0x3F70101020000000
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  br i1 %1312, label %1910, label %1918

; <label>:1910                                    ; preds = %1892
  %1911 = fsub fast float 1.000000e+00, %1493
  %1912 = fmul fast float %1911, %1296
  %1913 = fmul fast float %1911, %1297
  %1914 = fmul fast float %1911, %1298
  %1915 = fmul fast float %1911, %1299
  %1916 = fmul fast float %1911, %1300
  %1917 = fmul fast float %1911, %1301
  br label %1918

; <label>:1918                                    ; preds = %1910, %1892
  %1919 = phi float [ %1912, %1910 ], [ %1296, %1892 ]
  %1920 = phi float [ %1913, %1910 ], [ %1297, %1892 ]
  %1921 = phi float [ %1914, %1910 ], [ %1298, %1892 ]
  %1922 = phi float [ %1915, %1910 ], [ %1299, %1892 ]
  %1923 = phi float [ %1916, %1910 ], [ %1300, %1892 ]
  %1924 = phi float [ %1917, %1910 ], [ %1301, %1892 ]
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 3
  %1928 = icmp eq i32 %1927, 3
  br i1 %1928, label %2007, label %1929

; <label>:1929                                    ; preds = %1918
  %1930 = and i32 %1926, 16
  %1931 = icmp ne i32 %1930, 0
  %1932 = select i1 %1931, float %1493, float 0.000000e+00
  %1933 = icmp eq i32 %1927, 0
  br i1 %1933, label %1934, label %1962

; <label>:1934                                    ; preds = %1929
  %1935 = and i32 %1926, 64
  %1936 = icmp ne i32 %1935, 0
  %1937 = select i1 %1936, float %1493, float 0.000000e+00
  %1938 = fsub fast float %1713, %1919
  %1939 = fsub fast float %1714, %1920
  %1940 = fsub fast float %1715, %1921
  %1941 = fmul fast float %1932, %1938
  %1942 = fmul fast float %1932, %1939
  %1943 = fmul fast float %1932, %1940
  %1944 = fadd fast float %1941, %1919
  %1945 = fadd fast float %1942, %1920
  %1946 = fadd fast float %1943, %1921
  %1947 = fsub fast float %1699, %1305
  %1948 = fmul fast float %1932, %1947
  %1949 = fadd fast float %1948, %1305
  %1950 = fsub fast float %1841, %1922
  %1951 = fsub fast float %1842, %1923
  %1952 = fsub fast float %1843, %1924
  %1953 = fmul fast float %1937, %1950
  %1954 = fmul fast float %1937, %1951
  %1955 = fmul fast float %1937, %1952
  %1956 = fadd fast float %1953, %1922
  %1957 = fadd fast float %1954, %1923
  %1958 = fadd fast float %1955, %1924
  %1959 = fsub fast float %1909, %1310
  %1960 = fmul fast float %1932, %1959
  %1961 = fadd fast float %1960, %1310
  br label %2007

; <label>:1962                                    ; preds = %1929
  %1963 = icmp eq i32 %1927, 1
  br i1 %1963, label %1964, label %1977

; <label>:1964                                    ; preds = %1962
  %1965 = fadd fast float %1713, -1.000000e+00
  %1966 = fadd fast float %1714, -1.000000e+00
  %1967 = fadd fast float %1715, -1.000000e+00
  %1968 = fmul fast float %1932, %1965
  %1969 = fmul fast float %1932, %1966
  %1970 = fmul fast float %1932, %1967
  %1971 = fadd fast float %1968, 1.000000e+00
  %1972 = fadd fast float %1969, 1.000000e+00
  %1973 = fadd fast float %1970, 1.000000e+00
  %1974 = fmul fast float %1971, %1919
  %1975 = fmul fast float %1972, %1920
  %1976 = fmul fast float %1973, %1921
  br label %2007

; <label>:1977                                    ; preds = %1962
  %1978 = icmp eq i32 %1927, 2
  br i1 %1978, label %1979, label %2007

; <label>:1979                                    ; preds = %1977
  %1980 = call float @dx.op.unary.f32(i32 24, float %1713)  ; Sqrt(value)
  %1981 = call float @dx.op.unary.f32(i32 24, float %1714)  ; Sqrt(value)
  %1982 = call float @dx.op.unary.f32(i32 24, float %1715)  ; Sqrt(value)
  %1983 = fadd fast float %1980, -5.000000e-01
  %1984 = fadd fast float %1981, -5.000000e-01
  %1985 = fadd fast float %1982, -5.000000e-01
  %1986 = fmul fast float %1983, %1932
  %1987 = fmul fast float %1984, %1932
  %1988 = fmul fast float %1985, %1932
  %1989 = fadd fast float %1986, 5.000000e-01
  %1990 = fadd fast float %1987, 5.000000e-01
  %1991 = fadd fast float %1988, 5.000000e-01
  %1992 = fmul fast float %1989, 2.000000e+00
  %1993 = fsub fast float 1.000000e+00, %1992
  %1994 = fmul fast float %1993, %1919
  %1995 = fadd fast float %1994, %1992
  %1996 = fmul fast float %1995, %1919
  %1997 = fmul fast float %1990, 2.000000e+00
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = fmul fast float %1998, %1920
  %2000 = fadd fast float %1999, %1997
  %2001 = fmul fast float %2000, %1920
  %2002 = fmul fast float %1991, 2.000000e+00
  %2003 = fsub fast float 1.000000e+00, %2002
  %2004 = fmul fast float %2003, %1921
  %2005 = fadd fast float %2004, %2002
  %2006 = fmul fast float %2005, %1921
  br label %2007

; <label>:2007                                    ; preds = %1979, %1977, %1964, %1934, %1918
  %2008 = phi float [ %1919, %1918 ], [ %1996, %1979 ], [ %1919, %1977 ], [ %1974, %1964 ], [ %1944, %1934 ]
  %2009 = phi float [ %1920, %1918 ], [ %2001, %1979 ], [ %1920, %1977 ], [ %1975, %1964 ], [ %1945, %1934 ]
  %2010 = phi float [ %1921, %1918 ], [ %2006, %1979 ], [ %1921, %1977 ], [ %1976, %1964 ], [ %1946, %1934 ]
  %2011 = phi float [ %1922, %1918 ], [ %1922, %1979 ], [ %1922, %1977 ], [ %1922, %1964 ], [ %1956, %1934 ]
  %2012 = phi float [ %1923, %1918 ], [ %1923, %1979 ], [ %1923, %1977 ], [ %1923, %1964 ], [ %1957, %1934 ]
  %2013 = phi float [ %1924, %1918 ], [ %1924, %1979 ], [ %1924, %1977 ], [ %1924, %1964 ], [ %1958, %1934 ]
  %2014 = phi float [ %1305, %1918 ], [ %1305, %1979 ], [ %1305, %1977 ], [ %1305, %1964 ], [ %1949, %1934 ]
  %2015 = phi float [ %1310, %1918 ], [ %1310, %1979 ], [ %1310, %1977 ], [ %1310, %1964 ], [ %1961, %1934 ]
  %2016 = and i32 %1926, 12
  %2017 = icmp eq i32 %2016, 12
  br i1 %2017, label %2124, label %2018

; <label>:2018                                    ; preds = %2007
  %2019 = and i32 %1926, 2097184
  %2020 = icmp eq i32 %2019, 2097184
  %2021 = select i1 %2020, float %1493, float 0.000000e+00
  %2022 = and i32 %1926, 4194336
  %2023 = icmp eq i32 %2022, 4194336
  %2024 = select i1 %2023, float %1493, float 0.000000e+00
  %2025 = and i32 %1926, 8388640
  %2026 = icmp eq i32 %2025, 8388640
  %2027 = select i1 %2026, float %1493, float 0.000000e+00
  %2028 = and i32 %1926, 2048
  %2029 = icmp ne i32 %2028, 0
  %2030 = select i1 %2029, float %1493, float 0.000000e+00
  %2031 = and i32 %1926, 8192
  %2032 = icmp ne i32 %2031, 0
  %2033 = select i1 %2032, float %1493, float 0.000000e+00
  %2034 = icmp eq i32 %2016, 0
  br i1 %2034, label %2035, label %2060

; <label>:2035                                    ; preds = %2018
  %2036 = fsub fast float %1794, %1294
  %2037 = fsub fast float %1795, %1295
  %2038 = fmul fast float %2021, %2036
  %2039 = fmul fast float %2021, %2037
  %2040 = fadd fast float %2038, %1294
  %2041 = fadd fast float %2039, %1295
  %2042 = fsub fast float %1796, %1308
  %2043 = fmul fast float %2024, %2042
  %2044 = fadd fast float %2043, %1308
  %2045 = fsub fast float %1793, %1307
  %2046 = fmul fast float %2027, %2045
  %2047 = fadd fast float %2046, %1307
  %2048 = fsub fast float %1896, %1309
  %2049 = fmul fast float %2030, %2048
  %2050 = fadd fast float %2049, %1309
  %2051 = fsub fast float %1893, %1302
  %2052 = fsub fast float %1894, %1303
  %2053 = fsub fast float %1895, %1304
  %2054 = fmul fast float %2033, %2051
  %2055 = fmul fast float %2033, %2052
  %2056 = fmul fast float %2033, %2053
  %2057 = fadd fast float %2054, %1302
  %2058 = fadd fast float %2055, %1303
  %2059 = fadd fast float %2056, %1304
  br label %2124

; <label>:2060                                    ; preds = %2018
  %2061 = icmp eq i32 %2016, 4
  br i1 %2061, label %2062, label %2102

; <label>:2062                                    ; preds = %2060
  %2063 = fmul fast float %2021, %1794
  %2064 = fmul fast float %2021, %1795
  %2065 = fadd fast float %2063, %1294
  %2066 = fadd fast float %2064, %1295
  %2067 = call float @dx.op.binary.f32(i32 36, float %1308, float %1796)  ; FMin(a,b)
  %2068 = fsub fast float %2067, %1308
  %2069 = fmul fast float %2068, %2024
  %2070 = fadd fast float %2069, %1308
  %2071 = fadd fast float %1793, %1307
  %2072 = fmul fast float %2071, 0x3FF337FAE0000000
  %2073 = fmul fast float %1307, %1307
  %2074 = fmul fast float %1793, %1793
  %2075 = fadd fast float %2074, %2073
  %2076 = fmul fast float %2075, 0x3FE5152B00000000
  %2077 = fmul fast float %1307, 0xBFCC1F85E0000000
  %2078 = fmul fast float %2077, %1793
  %2079 = fadd fast float %2078, 0xBFE1363700000000
  %2080 = fadd fast float %2079, %2072
  %2081 = fsub fast float %2080, %2076
  %2082 = fmul fast float %2071, 0x3FBA6F0D00000000
  %2083 = fmul fast float %2075, 0x3FD0432880000000
  %2084 = fmul fast float %1307, 0xBFEF110800000000
  %2085 = fmul fast float %2084, %1793
  %2086 = fadd fast float %2085, 1.000000e+00
  %2087 = fsub fast float %2086, %2082
  %2088 = fadd fast float %2087, %2083
  %2089 = fdiv fast float %2081, %2088
  %2090 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2091 = fsub fast float %2090, %1307
  %2092 = fmul fast float %2091, %2027
  %2093 = fadd fast float %2092, %1307
  %2094 = fmul fast float %2030, %1896
  %2095 = fadd fast float %2094, %1309
  %2096 = fmul fast float %2033, %1893
  %2097 = fmul fast float %2033, %1894
  %2098 = fmul fast float %2033, %1895
  %2099 = fadd fast float %2096, %1302
  %2100 = fadd fast float %2097, %1303
  %2101 = fadd fast float %2098, %1304
  br label %2124

; <label>:2102                                    ; preds = %2060
  %2103 = icmp eq i32 %2016, 8
  br i1 %2103, label %2104, label %2124

; <label>:2104                                    ; preds = %2102
  %2105 = fmul fast float %2021, %1794
  %2106 = fmul fast float %2021, %1795
  %2107 = fadd fast float %2105, %1294
  %2108 = fadd fast float %2106, %1295
  %2109 = call float @dx.op.binary.f32(i32 36, float %1308, float %1796)  ; FMin(a,b)
  %2110 = fsub fast float %2109, %1308
  %2111 = fmul fast float %2110, %2024
  %2112 = fadd fast float %2111, %1308
  %2113 = fsub fast float %1793, %1307
  %2114 = fmul fast float %2027, %2113
  %2115 = fadd fast float %2114, %1307
  %2116 = fmul fast float %2030, %1896
  %2117 = fadd fast float %2116, %1309
  %2118 = fmul fast float %2033, %1893
  %2119 = fmul fast float %2033, %1894
  %2120 = fmul fast float %2033, %1895
  %2121 = fadd fast float %2118, %1302
  %2122 = fadd fast float %2119, %1303
  %2123 = fadd fast float %2120, %1304
  br label %2124

; <label>:2124                                    ; preds = %2104, %2102, %2062, %2035, %2007, %1492, %1311, %1293
  %2125 = phi float [ %1294, %2007 ], [ %1294, %1492 ], [ %1294, %1293 ], [ %2107, %2104 ], [ %1294, %2102 ], [ %2065, %2062 ], [ %2040, %2035 ], [ %1294, %1311 ]
  %2126 = phi float [ %1295, %2007 ], [ %1295, %1492 ], [ %1295, %1293 ], [ %2108, %2104 ], [ %1295, %2102 ], [ %2066, %2062 ], [ %2041, %2035 ], [ %1295, %1311 ]
  %2127 = phi float [ %2008, %2007 ], [ %1296, %1492 ], [ %1296, %1293 ], [ %2008, %2104 ], [ %2008, %2102 ], [ %2008, %2062 ], [ %2008, %2035 ], [ %1296, %1311 ]
  %2128 = phi float [ %2009, %2007 ], [ %1297, %1492 ], [ %1297, %1293 ], [ %2009, %2104 ], [ %2009, %2102 ], [ %2009, %2062 ], [ %2009, %2035 ], [ %1297, %1311 ]
  %2129 = phi float [ %2010, %2007 ], [ %1298, %1492 ], [ %1298, %1293 ], [ %2010, %2104 ], [ %2010, %2102 ], [ %2010, %2062 ], [ %2010, %2035 ], [ %1298, %1311 ]
  %2130 = phi float [ %2011, %2007 ], [ %1299, %1492 ], [ %1299, %1293 ], [ %2011, %2104 ], [ %2011, %2102 ], [ %2011, %2062 ], [ %2011, %2035 ], [ %1299, %1311 ]
  %2131 = phi float [ %2012, %2007 ], [ %1300, %1492 ], [ %1300, %1293 ], [ %2012, %2104 ], [ %2012, %2102 ], [ %2012, %2062 ], [ %2012, %2035 ], [ %1300, %1311 ]
  %2132 = phi float [ %2013, %2007 ], [ %1301, %1492 ], [ %1301, %1293 ], [ %2013, %2104 ], [ %2013, %2102 ], [ %2013, %2062 ], [ %2013, %2035 ], [ %1301, %1311 ]
  %2133 = phi float [ %1302, %2007 ], [ %1302, %1492 ], [ %1302, %1293 ], [ %2121, %2104 ], [ %1302, %2102 ], [ %2099, %2062 ], [ %2057, %2035 ], [ %1302, %1311 ]
  %2134 = phi float [ %1303, %2007 ], [ %1303, %1492 ], [ %1303, %1293 ], [ %2122, %2104 ], [ %1303, %2102 ], [ %2100, %2062 ], [ %2058, %2035 ], [ %1303, %1311 ]
  %2135 = phi float [ %1304, %2007 ], [ %1304, %1492 ], [ %1304, %1293 ], [ %2123, %2104 ], [ %1304, %2102 ], [ %2101, %2062 ], [ %2059, %2035 ], [ %1304, %1311 ]
  %2136 = phi float [ %2014, %2007 ], [ %1305, %1492 ], [ %1305, %1293 ], [ %2014, %2104 ], [ %2014, %2102 ], [ %2014, %2062 ], [ %2014, %2035 ], [ %1305, %1311 ]
  %2137 = phi float [ %1307, %2007 ], [ %1307, %1492 ], [ %1307, %1293 ], [ %2115, %2104 ], [ %1307, %2102 ], [ %2093, %2062 ], [ %2047, %2035 ], [ %1307, %1311 ]
  %2138 = phi float [ %1308, %2007 ], [ %1308, %1492 ], [ %1308, %1293 ], [ %2112, %2104 ], [ %1308, %2102 ], [ %2070, %2062 ], [ %2044, %2035 ], [ %1308, %1311 ]
  %2139 = phi float [ %1309, %2007 ], [ %1309, %1492 ], [ %1309, %1293 ], [ %2117, %2104 ], [ %1309, %2102 ], [ %2095, %2062 ], [ %2050, %2035 ], [ %1309, %1311 ]
  %2140 = phi float [ %2015, %2007 ], [ %1310, %1492 ], [ %1310, %1293 ], [ %2015, %2104 ], [ %2015, %2102 ], [ %2015, %2062 ], [ %2015, %2035 ], [ %1310, %1311 ]
  br i1 %641, label %2954, label %2141

; <label>:2141                                    ; preds = %2124
  %2142 = icmp ult i32 %697, 3
  %2143 = add i32 %61, 56
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = add i32 %61, 60
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = or i32 %2148, %2145
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2954, label %2151

; <label>:2151                                    ; preds = %2141
  %2152 = and i32 %2145, 262144
  %2153 = icmp ne i32 %2152, 0
  %2154 = select i1 %2153, float %67, float 1.000000e+00
  %2155 = select i1 %2153, float %68, float 0.000000e+00
  %2156 = select i1 %2153, float %69, float 0.000000e+00
  %2157 = select i1 %2153, float %70, float 1.000000e+00
  %2158 = select i1 %2153, float %71, float %99
  %2159 = select i1 %2153, float %72, float %100
  %2160 = add i32 %61, 316
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = lshr i32 %2162, 16
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = fmul fast float %2164, 0x3F50624DE0000000
  %2166 = add i32 %61, 120
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = lshr i32 %2168, 16
  %2170 = and i32 %2169, 255
  %2171 = lshr i32 %2168, 24
  %2172 = add i32 %61, 324
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 65535
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = lshr i32 %2174, 16
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = add i32 %61, 64
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = lshr i32 %2181, 22
  %2183 = shl nuw nsw i32 %2182, 5
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = shl i32 %2181, 4
  %2186 = and i32 %2185, 32752
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = lshr i32 %2181, 7
  %2189 = and i32 %2188, 32752
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2193 = fmul fast float %2192, 1.000000e+03
  %2194 = fmul fast float %2193, %525
  %2195 = call float @dx.op.unary.f32(i32 22, float %2194)  ; Frc(value)
  %2196 = fadd fast float %2195, %513
  %2197 = fmul fast float %2193, %527
  %2198 = call float @dx.op.unary.f32(i32 22, float %2197)  ; Frc(value)
  %2199 = fadd fast float %2198, %514
  %2200 = fmul fast float %2165, %2193
  %2201 = call float @dx.op.unary.f32(i32 22, float %2200)  ; Frc(value)
  %2202 = fmul fast float %2201, 0x401921FB60000000
  %2203 = fadd fast float %2202, %2184
  %2204 = call float @dx.op.unary.f32(i32 13, float %2203)  ; Sin(value)
  %2205 = call float @dx.op.unary.f32(i32 12, float %2203)  ; Cos(value)
  %2206 = fsub fast float -0.000000e+00, %2204
  %2207 = fadd fast float %2158, -5.000000e-01
  %2208 = fadd fast float %2159, -5.000000e-01
  %2209 = fmul fast float %2176, %2207
  %2210 = fmul fast float %2178, %2208
  %2211 = fadd fast float %2209, 5.000000e-01
  %2212 = fadd fast float %2210, 5.000000e-01
  %2213 = fmul fast float %2187, %2211
  %2214 = fmul fast float %2190, %2212
  %2215 = fmul fast float %2205, %2213
  %2216 = call float @dx.op.tertiary.f32(i32 46, float %2206, float %2214, float %2215)  ; FMad(a,b,c)
  %2217 = fmul fast float %2204, %2213
  %2218 = call float @dx.op.tertiary.f32(i32 46, float %2205, float %2214, float %2217)  ; FMad(a,b,c)
  %2219 = fadd fast float %2196, %2216
  %2220 = fadd fast float %2199, %2218
  %2221 = icmp ugt i32 %2170, 1
  %2222 = icmp ugt i32 %2168, 33554431
  %2223 = or i1 %2222, %2221
  br i1 %2223, label %2224, label %2249

; <label>:2224                                    ; preds = %2151
  %2225 = add i32 %61, 260
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = lshr i32 %2227, 16
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = fmul fast float %2192, %2229
  %2231 = call float @dx.op.unary.f32(i32 22, float %2230)  ; Frc(value)
  %2232 = mul nuw nsw i32 %2170, %2171
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2231, %2233
  %2235 = call float @dx.op.unary.f32(i32 27, float %2234)  ; Round_ni(value)
  %2236 = fptoui float %2235 to i32
  %2237 = urem i32 %2236, %2170
  %2238 = udiv i32 %2236, %2171
  %2239 = call float @dx.op.unary.f32(i32 22, float %2219)  ; Frc(value)
  %2240 = call float @dx.op.unary.f32(i32 22, float %2220)  ; Frc(value)
  %2241 = uitofp i32 %2237 to float
  %2242 = uitofp i32 %2238 to float
  %2243 = fadd fast float %2239, %2241
  %2244 = fadd fast float %2240, %2242
  %2245 = uitofp i32 %2170 to float
  %2246 = uitofp i32 %2171 to float
  %2247 = fdiv fast float %2243, %2245
  %2248 = fdiv fast float %2244, %2246
  br label %2249

; <label>:2249                                    ; preds = %2224, %2151
  %2250 = phi float [ %2247, %2224 ], [ %2219, %2151 ]
  %2251 = phi float [ %2248, %2224 ], [ %2220, %2151 ]
  %2252 = and i32 %2145, 256
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2300, label %2254

; <label>:2254                                    ; preds = %2249
  %2255 = add i32 %61, 432
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %2257, 0
  %2259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2259, %dx.types.Handle %118, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = add i32 %61, 132
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = shl i32 %2264, 4
  %2266 = and i32 %2265, 32752
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = lshr i32 %2264, 7
  %2269 = and i32 %2268, 32752
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = fsub fast float 1.000000e+00, %693
  %2272 = call float @dx.op.binary.f32(i32 35, float %2271, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2273 = bitcast float %693 to i32
  %2274 = sitofp i32 %2273 to float
  %2275 = fadd fast float %2274, 0xC1CFBF8940000000
  %2276 = fmul fast float %2270, %2275
  %2277 = fadd fast float %2276, 0x41CFBF8940000000
  %2278 = fptosi float %2277 to i32
  %2279 = bitcast i32 %2278 to float
  %2280 = bitcast float %2272 to i32
  %2281 = sitofp i32 %2280 to float
  %2282 = fadd fast float %2281, 0xC1CFBF8940000000
  %2283 = fmul fast float %2282, %2270
  %2284 = fadd fast float %2283, 0x41CFBF8940000000
  %2285 = fptosi float %2284 to i32
  %2286 = bitcast i32 %2285 to float
  %2287 = fmul fast float %2279, %2267
  %2288 = fmul fast float %2286, %2267
  %2289 = fsub fast float %2272, %2287
  %2290 = fadd fast float %2288, %2272
  %2291 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2292 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2293 = fsub fast float %2261, %2291
  %2294 = fsub fast float %2292, %2291
  %2295 = bitcast float %2294 to i32
  %2296 = sub nsw i32 2129859010, %2295
  %2297 = bitcast i32 %2296 to float
  %2298 = fmul fast float %2297, %2293
  %2299 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  br label %2300

; <label>:2300                                    ; preds = %2254, %2249
  %2301 = phi float [ %2299, %2254 ], [ %693, %2249 ]
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 128
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2322, label %2306

; <label>:2306                                    ; preds = %2300
  %2307 = add i32 %61, 416
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = add i32 %2309, 0
  %2311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2311, %dx.types.Handle %118, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = and i32 %2315, 524288
  %2317 = icmp ne i32 %2316, 0
  %2318 = fcmp fast ogt float %2313, 0x3FE0101020000000
  %2319 = select i1 %2318, float 1.000000e+00, float 0.000000e+00
  %2320 = select i1 %2317, float %2319, float %2313
  %2321 = fmul fast float %2320, %2301
  br label %2322

; <label>:2322                                    ; preds = %2306, %2300
  %2323 = phi float [ %2321, %2306 ], [ %2301, %2300 ]
  %2324 = fcmp fast ult float %2323, 0x3F70101020000000
  br i1 %2324, label %2954, label %2325

; <label>:2325                                    ; preds = %2322
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 16
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2528, label %2330

; <label>:2330                                    ; preds = %2325
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = add i32 %61, 368
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %2335, 0
  %2337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2337, %dx.types.Handle %117, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = extractvalue %dx.types.ResRet.f32 %2338, 3
  %2343 = and i32 %2332, 255
  %2344 = uitofp i32 %2343 to float
  %2345 = lshr i32 %2332, 8
  %2346 = and i32 %2345, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2342, %2344
  %2349 = fadd fast float %2348, %2347
  %2350 = fmul fast float %2349, 0x3F70101000000000
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 512
  %2354 = icmp eq i32 %2353, 0
  br i1 %2354, label %2363, label %2355

; <label>:2355                                    ; preds = %2330
  %2356 = add i32 %61, 448
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = add i32 %2358, 0
  %2360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2360, %dx.types.Handle %118, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  br label %2363

; <label>:2363                                    ; preds = %2355, %2330
  %2364 = phi float [ %2362, %2355 ], [ 1.000000e+00, %2330 ]
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 33554432
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2475, label %2369

; <label>:2369                                    ; preds = %2363
  %2370 = add i32 %61, 256
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 65535
  %2374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2373)  ; LegacyF16ToF32(value)
  %2375 = lshr i32 %2372, 16
  %2376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2375)  ; LegacyF16ToF32(value)
  %2377 = add i32 %61, 260
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 65535
  %2381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2380)  ; LegacyF16ToF32(value)
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = lshr i32 %2383, 24
  %2385 = uitofp i32 %2384 to float
  %2386 = fmul fast float %2385, 0x3F70101020000000
  %2387 = and i32 %2383, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = fmul fast float %2388, 0x3F70101020000000
  %2390 = lshr i32 %2383, 8
  %2391 = and i32 %2390, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101020000000
  %2394 = lshr i32 %2383, 16
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = add i32 %61, 252
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = lshr i32 %2400, 24
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = and i32 %2400, 255
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2405, 0x3F70101020000000
  %2407 = lshr i32 %2400, 8
  %2408 = and i32 %2407, 255
  %2409 = uitofp i32 %2408 to float
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = lshr i32 %2400, 16
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101020000000
  %2415 = bitcast float %2339 to i32
  %2416 = ashr i32 %2415, 1
  %2417 = sub nsw i32 1597463174, %2416
  %2418 = bitcast i32 %2417 to float
  %2419 = fmul fast float %2339, 5.000000e-01
  %2420 = fmul fast float %2418, %2418
  %2421 = fmul fast float %2420, %2419
  %2422 = fsub fast float 1.500000e+00, %2421
  %2423 = fmul fast float %2418, %2339
  %2424 = fmul fast float %2423, %2422
  %2425 = bitcast float %2340 to i32
  %2426 = ashr i32 %2425, 1
  %2427 = sub nsw i32 1597463174, %2426
  %2428 = bitcast i32 %2427 to float
  %2429 = fmul fast float %2340, 5.000000e-01
  %2430 = fmul fast float %2428, %2428
  %2431 = fmul fast float %2430, %2429
  %2432 = fsub fast float 1.500000e+00, %2431
  %2433 = fmul fast float %2428, %2340
  %2434 = fmul fast float %2433, %2432
  %2435 = bitcast float %2341 to i32
  %2436 = ashr i32 %2435, 1
  %2437 = sub nsw i32 1597463174, %2436
  %2438 = bitcast i32 %2437 to float
  %2439 = fmul fast float %2341, 5.000000e-01
  %2440 = fmul fast float %2438, %2438
  %2441 = fmul fast float %2440, %2439
  %2442 = fsub fast float 1.500000e+00, %2441
  %2443 = fmul fast float %2438, %2341
  %2444 = fmul fast float %2443, %2442
  %2445 = fsub fast float %2424, %2406
  %2446 = fsub fast float %2434, %2410
  %2447 = fsub fast float %2444, %2414
  %2448 = fmul fast float %2445, %2374
  %2449 = fmul fast float %2446, %2376
  %2450 = fmul fast float %2447, %2381
  %2451 = fadd fast float %2448, %2389
  %2452 = fadd fast float %2449, %2393
  %2453 = fadd fast float %2450, %2397
  %2454 = call float @dx.op.unary.f32(i32 7, float %2451)  ; Saturate(value)
  %2455 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2456 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  %2457 = fmul fast float %2454, %2454
  %2458 = fmul fast float %2455, %2455
  %2459 = fmul fast float %2456, %2456
  %2460 = fsub fast float %2457, %2339
  %2461 = fsub fast float %2458, %2340
  %2462 = fsub fast float %2459, %2341
  %2463 = fmul fast float %2460, %2364
  %2464 = fmul fast float %2461, %2364
  %2465 = fmul fast float %2462, %2364
  %2466 = fadd fast float %2463, %2339
  %2467 = fadd fast float %2464, %2340
  %2468 = fadd fast float %2465, %2341
  %2469 = fadd fast float %2386, %2350
  %2470 = fsub fast float %2469, %2403
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  %2472 = fsub fast float %2471, %2350
  %2473 = fmul fast float %2472, %2364
  %2474 = fadd fast float %2473, %2350
  br label %2528

; <label>:2475                                    ; preds = %2363
  %2476 = and i32 %2366, 134217728
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2512, label %2478

; <label>:2478                                    ; preds = %2475
  %2479 = call float @dx.op.unary.f32(i32 24, float %501)  ; Sqrt(value)
  %2480 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %2481 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %2482 = fadd fast float %2479, -5.000000e-01
  %2483 = fadd fast float %2480, -5.000000e-01
  %2484 = fadd fast float %2481, -5.000000e-01
  %2485 = fmul fast float %2482, %2364
  %2486 = fmul fast float %2483, %2364
  %2487 = fmul fast float %2484, %2364
  %2488 = fadd fast float %2485, 5.000000e-01
  %2489 = fadd fast float %2486, 5.000000e-01
  %2490 = fadd fast float %2487, 5.000000e-01
  %2491 = call float @dx.op.unary.f32(i32 24, float %2339)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %2340)  ; Sqrt(value)
  %2493 = call float @dx.op.unary.f32(i32 24, float %2341)  ; Sqrt(value)
  %2494 = fmul fast float %2488, 2.000000e+00
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2495, %2491
  %2497 = fadd fast float %2496, %2494
  %2498 = fmul fast float %2497, %2491
  %2499 = fmul fast float %2489, 2.000000e+00
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2500, %2492
  %2502 = fadd fast float %2501, %2499
  %2503 = fmul fast float %2502, %2492
  %2504 = fmul fast float %2490, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2493
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2493
  %2509 = fmul fast float %2498, %2498
  %2510 = fmul fast float %2503, %2503
  %2511 = fmul fast float %2508, %2508
  br label %2528

; <label>:2512                                    ; preds = %2475
  %2513 = fmul fast float %501, %501
  %2514 = fmul fast float %502, %502
  %2515 = fmul fast float %503, %503
  %2516 = fadd fast float %2513, -1.000000e+00
  %2517 = fadd fast float %2514, -1.000000e+00
  %2518 = fadd fast float %2515, -1.000000e+00
  %2519 = fmul fast float %2364, %2516
  %2520 = fmul fast float %2364, %2517
  %2521 = fmul fast float %2364, %2518
  %2522 = fadd fast float %2519, 1.000000e+00
  %2523 = fadd fast float %2520, 1.000000e+00
  %2524 = fadd fast float %2521, 1.000000e+00
  %2525 = fmul fast float %2522, %2339
  %2526 = fmul fast float %2523, %2340
  %2527 = fmul fast float %2524, %2341
  br label %2528

; <label>:2528                                    ; preds = %2512, %2478, %2369, %2325
  %2529 = phi float [ %2474, %2369 ], [ %2350, %2478 ], [ %2350, %2512 ], [ 0x3FA23C0BE0000000, %2325 ]
  %2530 = phi float [ %2466, %2369 ], [ %2509, %2478 ], [ %2525, %2512 ], [ 1.000000e+00, %2325 ]
  %2531 = phi float [ %2467, %2369 ], [ %2510, %2478 ], [ %2526, %2512 ], [ 1.000000e+00, %2325 ]
  %2532 = phi float [ %2468, %2369 ], [ %2511, %2478 ], [ %2527, %2512 ], [ 1.000000e+00, %2325 ]
  %2533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.i32 %2533, 1
  %2535 = and i32 %2534, 1
  %2536 = icmp ne i32 %2535, 0
  %2537 = add i32 %61, 356
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 32
  %2541 = icmp ne i32 %2540, 0
  %2542 = and i1 %2536, %2541
  %2543 = select i1 %2542, float 1.000000e+00, float %2530
  %2544 = select i1 %2542, float 0x3FD3333340000000, float %2531
  %2545 = select i1 %2542, float 0x3FD3333340000000, float %2532
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = and i32 %2547, 32
  %2549 = icmp eq i32 %2548, 0
  br i1 %2549, label %2622, label %2550

; <label>:2550                                    ; preds = %2528
  %2551 = add i32 %61, 124
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = add i32 %61, 384
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = add i32 %2556, 0
  %2558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2558, %dx.types.Handle %117, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.ResRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.ResRet.f32 %2559, 2
  %2563 = extractvalue %dx.types.ResRet.f32 %2559, 3
  %2564 = and i32 %2553, 255
  %2565 = uitofp i32 %2564 to float
  %2566 = lshr i32 %2553, 8
  %2567 = and i32 %2566, 255
  %2568 = uitofp i32 %2567 to float
  %2569 = lshr i32 %2553, 16
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = fmul fast float %2571, 0x3F70101000000000
  %2573 = fmul fast float %2560, %2565
  %2574 = fadd fast float %2573, %2568
  %2575 = fmul fast float %2574, 0x3F70101000000000
  %2576 = fadd fast float %2561, -5.000000e-01
  %2577 = fadd fast float %2563, -5.000000e-01
  %2578 = fmul fast float %2576, %2572
  %2579 = fmul fast float %2577, %2572
  %2580 = fadd fast float %2578, 5.000000e-01
  %2581 = fadd fast float %2579, 5.000000e-01
  %2582 = fmul fast float %2580, 2.000000e+00
  %2583 = fadd fast float %2582, -1.000000e+00
  %2584 = fmul fast float %2581, 2.000000e+00
  %2585 = fadd fast float %2584, -1.000000e+00
  %2586 = fadd fast float %2583, %2585
  %2587 = fmul fast float %2586, 5.000000e-01
  %2588 = fsub fast float %2583, %2585
  %2589 = fmul fast float %2588, 5.000000e-01
  %2590 = call float @dx.op.unary.f32(i32 6, float %2587)  ; FAbs(value)
  %2591 = fsub fast float 1.000000e+00, %2590
  %2592 = call float @dx.op.unary.f32(i32 6, float %2589)  ; FAbs(value)
  %2593 = fsub fast float %2591, %2592
  %2594 = call float @dx.op.dot3.f32(i32 55, float %2587, float %2589, float %2593, float %2587, float %2589, float %2593)  ; Dot3(ax,ay,az,bx,by,bz)
  %2595 = call float @dx.op.unary.f32(i32 25, float %2594)  ; Rsqrt(value)
  %2596 = fmul fast float %2587, %2595
  %2597 = fmul fast float %2589, %2595
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 67108864
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2618, label %2602

; <label>:2602                                    ; preds = %2550
  %2603 = add i32 %61, 312
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 65535
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 65535
  %2611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2610)  ; LegacyF16ToF32(value)
  %2612 = lshr i32 %2605, 16
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = fsub fast float %2575, %2613
  %2615 = fmul fast float %2614, %2607
  %2616 = fadd fast float %2615, %2611
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  br label %2618

; <label>:2618                                    ; preds = %2602, %2550
  %2619 = phi float [ %2617, %2602 ], [ %2575, %2550 ]
  %2620 = call float @dx.op.dot2.f32(i32 54, float %2596, float %2597, float %2154, float %2155)  ; Dot2(ax,ay,bx,by)
  %2621 = call float @dx.op.dot2.f32(i32 54, float %2596, float %2597, float %2156, float %2157)  ; Dot2(ax,ay,bx,by)
  br label %2622

; <label>:2622                                    ; preds = %2618, %2528
  %2623 = phi float [ %2619, %2618 ], [ 0x3FD6666660000000, %2528 ]
  %2624 = phi float [ %2620, %2618 ], [ 0.000000e+00, %2528 ]
  %2625 = phi float [ %2621, %2618 ], [ 0.000000e+00, %2528 ]
  %2626 = phi float [ %2562, %2618 ], [ 1.000000e+00, %2528 ]
  %2627 = add i32 %61, 192
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = lshr i32 %2629, 22
  %2631 = shl nuw nsw i32 %2630, 5
  %2632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2631)  ; LegacyF16ToF32(value)
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 64
  %2636 = icmp eq i32 %2635, 0
  br i1 %2636, label %2670, label %2637

; <label>:2637                                    ; preds = %2622
  %2638 = add i32 %61, 400
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = add i32 %2640, 0
  %2642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 131072
  %2646 = icmp eq i32 %2645, 0
  %2647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2642, %dx.types.Handle %117, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.ResRet.f32 %2647, 1
  %2650 = extractvalue %dx.types.ResRet.f32 %2647, 2
  %2651 = fmul fast float %484, %2648
  %2652 = fmul fast float %485, %2649
  %2653 = fmul fast float %486, %2650
  br i1 %2646, label %2660, label %2654

; <label>:2654                                    ; preds = %2637
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2657 = fmul fast float %2656, %2651
  %2658 = fmul fast float %2656, %2652
  %2659 = fmul fast float %2656, %2653
  br label %2660

; <label>:2660                                    ; preds = %2654, %2637
  %2661 = phi float [ %2657, %2654 ], [ %2651, %2637 ]
  %2662 = phi float [ %2658, %2654 ], [ %2652, %2637 ]
  %2663 = phi float [ %2659, %2654 ], [ %2653, %2637 ]
  %2664 = fmul fast float %2661, %2632
  %2665 = select i1 %259, float %2664, float %2661
  %2666 = call float @dx.op.dot3.f32(i32 55, float %2665, float %2662, float %2663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2667 = select i1 %259, float 0.000000e+00, float %2661
  %2668 = select i1 %259, float %2666, float %2662
  %2669 = select i1 %259, float 0.000000e+00, float %2663
  br label %2670

; <label>:2670                                    ; preds = %2660, %2622
  %2671 = phi float [ %2667, %2660 ], [ 0.000000e+00, %2622 ]
  %2672 = phi float [ %2668, %2660 ], [ 0.000000e+00, %2622 ]
  %2673 = phi float [ %2669, %2660 ], [ 0.000000e+00, %2622 ]
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = and i32 %2675, 10240
  %2677 = icmp eq i32 %2676, 0
  br i1 %2677, label %2722, label %2678

; <label>:2678                                    ; preds = %2670
  %2679 = add i32 %61, 464
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = add i32 %2681, 0
  %2683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2683, %dx.types.Handle %118, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 1
  %2686 = extractvalue %dx.types.ResRet.f32 %2684, 3
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = and i32 %2688, 1048576
  %2690 = icmp ne i32 %2689, 0
  %2691 = and i32 %2688, 8192
  %2692 = icmp eq i32 %2691, 0
  br i1 %2692, label %2708, label %2693

; <label>:2693                                    ; preds = %2678
  %2694 = extractvalue %dx.types.ResRet.f32 %2684, 2
  %2695 = select i1 %2690, float %2694, float %2685
  %2696 = extractvalue %dx.types.ResRet.f32 %2684, 0
  %2697 = select i1 %2690, float %2696, float %2685
  %2698 = add i32 %61, 128
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = lshr i32 %2700, 16
  %2702 = and i32 %2701, 255
  %2703 = uitofp i32 %2702 to float
  %2704 = fmul fast float %2703, 0x3F80101020000000
  %2705 = fmul fast float %2704, %2697
  %2706 = fmul fast float %2704, %2685
  %2707 = fmul fast float %2704, %2695
  br label %2708

; <label>:2708                                    ; preds = %2693, %2678
  %2709 = phi float [ %2705, %2693 ], [ 0.000000e+00, %2678 ]
  %2710 = phi float [ %2706, %2693 ], [ 0.000000e+00, %2678 ]
  %2711 = phi float [ %2707, %2693 ], [ 0.000000e+00, %2678 ]
  %2712 = and i32 %2688, 2048
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2722, label %2714

; <label>:2714                                    ; preds = %2708
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = shl i32 %2716, 4
  %2718 = and i32 %2717, 32752
  %2719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2718)  ; LegacyF16ToF32(value)
  %2720 = fmul fast float %2719, %2686
  %2721 = call float @dx.op.binary.f32(i32 35, float %2720, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2722

; <label>:2722                                    ; preds = %2714, %2708, %2670
  %2723 = phi float [ %2709, %2714 ], [ %2709, %2708 ], [ 0.000000e+00, %2670 ]
  %2724 = phi float [ %2710, %2714 ], [ %2710, %2708 ], [ 0.000000e+00, %2670 ]
  %2725 = phi float [ %2711, %2714 ], [ %2711, %2708 ], [ 0.000000e+00, %2670 ]
  %2726 = phi float [ %2721, %2714 ], [ 0x3F70101020000000, %2708 ], [ 0x3F70101020000000, %2670 ]
  %2727 = add i32 %61, 128
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = and i32 %2729, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = lshr i32 %2729, 8
  %2733 = and i32 %2732, 255
  %2734 = uitofp i32 %2733 to float
  %2735 = call float @dx.op.dot3.f32(i32 55, float %2543, float %2544, float %2545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2736 = fmul fast float %2734, %2735
  %2737 = fadd fast float %2736, %2731
  %2738 = fmul fast float %2737, 0x3F70101020000000
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  br i1 %2142, label %2740, label %2748

; <label>:2740                                    ; preds = %2722
  %2741 = fsub fast float 1.000000e+00, %2323
  %2742 = fmul fast float %2741, %2127
  %2743 = fmul fast float %2741, %2128
  %2744 = fmul fast float %2741, %2129
  %2745 = fmul fast float %2741, %2130
  %2746 = fmul fast float %2741, %2131
  %2747 = fmul fast float %2741, %2132
  br label %2748

; <label>:2748                                    ; preds = %2740, %2722
  %2749 = phi float [ %2742, %2740 ], [ %2127, %2722 ]
  %2750 = phi float [ %2743, %2740 ], [ %2128, %2722 ]
  %2751 = phi float [ %2744, %2740 ], [ %2129, %2722 ]
  %2752 = phi float [ %2745, %2740 ], [ %2130, %2722 ]
  %2753 = phi float [ %2746, %2740 ], [ %2131, %2722 ]
  %2754 = phi float [ %2747, %2740 ], [ %2132, %2722 ]
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 3
  %2758 = icmp eq i32 %2757, 3
  br i1 %2758, label %2837, label %2759

; <label>:2759                                    ; preds = %2748
  %2760 = and i32 %2756, 16
  %2761 = icmp ne i32 %2760, 0
  %2762 = select i1 %2761, float %2323, float 0.000000e+00
  %2763 = icmp eq i32 %2757, 0
  br i1 %2763, label %2764, label %2792

; <label>:2764                                    ; preds = %2759
  %2765 = and i32 %2756, 64
  %2766 = icmp ne i32 %2765, 0
  %2767 = select i1 %2766, float %2323, float 0.000000e+00
  %2768 = fsub fast float %2543, %2749
  %2769 = fsub fast float %2544, %2750
  %2770 = fsub fast float %2545, %2751
  %2771 = fmul fast float %2762, %2768
  %2772 = fmul fast float %2762, %2769
  %2773 = fmul fast float %2762, %2770
  %2774 = fadd fast float %2771, %2749
  %2775 = fadd fast float %2772, %2750
  %2776 = fadd fast float %2773, %2751
  %2777 = fsub fast float %2529, %2136
  %2778 = fmul fast float %2762, %2777
  %2779 = fadd fast float %2778, %2136
  %2780 = fsub fast float %2671, %2752
  %2781 = fsub fast float %2672, %2753
  %2782 = fsub fast float %2673, %2754
  %2783 = fmul fast float %2767, %2780
  %2784 = fmul fast float %2767, %2781
  %2785 = fmul fast float %2767, %2782
  %2786 = fadd fast float %2783, %2752
  %2787 = fadd fast float %2784, %2753
  %2788 = fadd fast float %2785, %2754
  %2789 = fsub fast float %2739, %2140
  %2790 = fmul fast float %2762, %2789
  %2791 = fadd fast float %2790, %2140
  br label %2837

; <label>:2792                                    ; preds = %2759
  %2793 = icmp eq i32 %2757, 1
  br i1 %2793, label %2794, label %2807

; <label>:2794                                    ; preds = %2792
  %2795 = fadd fast float %2543, -1.000000e+00
  %2796 = fadd fast float %2544, -1.000000e+00
  %2797 = fadd fast float %2545, -1.000000e+00
  %2798 = fmul fast float %2762, %2795
  %2799 = fmul fast float %2762, %2796
  %2800 = fmul fast float %2762, %2797
  %2801 = fadd fast float %2798, 1.000000e+00
  %2802 = fadd fast float %2799, 1.000000e+00
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fmul fast float %2801, %2749
  %2805 = fmul fast float %2802, %2750
  %2806 = fmul fast float %2803, %2751
  br label %2837

; <label>:2807                                    ; preds = %2792
  %2808 = icmp eq i32 %2757, 2
  br i1 %2808, label %2809, label %2837

; <label>:2809                                    ; preds = %2807
  %2810 = call float @dx.op.unary.f32(i32 24, float %2543)  ; Sqrt(value)
  %2811 = call float @dx.op.unary.f32(i32 24, float %2544)  ; Sqrt(value)
  %2812 = call float @dx.op.unary.f32(i32 24, float %2545)  ; Sqrt(value)
  %2813 = fadd fast float %2810, -5.000000e-01
  %2814 = fadd fast float %2811, -5.000000e-01
  %2815 = fadd fast float %2812, -5.000000e-01
  %2816 = fmul fast float %2813, %2762
  %2817 = fmul fast float %2814, %2762
  %2818 = fmul fast float %2815, %2762
  %2819 = fadd fast float %2816, 5.000000e-01
  %2820 = fadd fast float %2817, 5.000000e-01
  %2821 = fadd fast float %2818, 5.000000e-01
  %2822 = fmul fast float %2819, 2.000000e+00
  %2823 = fsub fast float 1.000000e+00, %2822
  %2824 = fmul fast float %2823, %2749
  %2825 = fadd fast float %2824, %2822
  %2826 = fmul fast float %2825, %2749
  %2827 = fmul fast float %2820, 2.000000e+00
  %2828 = fsub fast float 1.000000e+00, %2827
  %2829 = fmul fast float %2828, %2750
  %2830 = fadd fast float %2829, %2827
  %2831 = fmul fast float %2830, %2750
  %2832 = fmul fast float %2821, 2.000000e+00
  %2833 = fsub fast float 1.000000e+00, %2832
  %2834 = fmul fast float %2833, %2751
  %2835 = fadd fast float %2834, %2832
  %2836 = fmul fast float %2835, %2751
  br label %2837

; <label>:2837                                    ; preds = %2809, %2807, %2794, %2764, %2748
  %2838 = phi float [ %2749, %2748 ], [ %2826, %2809 ], [ %2749, %2807 ], [ %2804, %2794 ], [ %2774, %2764 ]
  %2839 = phi float [ %2750, %2748 ], [ %2831, %2809 ], [ %2750, %2807 ], [ %2805, %2794 ], [ %2775, %2764 ]
  %2840 = phi float [ %2751, %2748 ], [ %2836, %2809 ], [ %2751, %2807 ], [ %2806, %2794 ], [ %2776, %2764 ]
  %2841 = phi float [ %2752, %2748 ], [ %2752, %2809 ], [ %2752, %2807 ], [ %2752, %2794 ], [ %2786, %2764 ]
  %2842 = phi float [ %2753, %2748 ], [ %2753, %2809 ], [ %2753, %2807 ], [ %2753, %2794 ], [ %2787, %2764 ]
  %2843 = phi float [ %2754, %2748 ], [ %2754, %2809 ], [ %2754, %2807 ], [ %2754, %2794 ], [ %2788, %2764 ]
  %2844 = phi float [ %2136, %2748 ], [ %2136, %2809 ], [ %2136, %2807 ], [ %2136, %2794 ], [ %2779, %2764 ]
  %2845 = phi float [ %2140, %2748 ], [ %2140, %2809 ], [ %2140, %2807 ], [ %2140, %2794 ], [ %2791, %2764 ]
  %2846 = and i32 %2756, 12
  %2847 = icmp eq i32 %2846, 12
  br i1 %2847, label %2954, label %2848

; <label>:2848                                    ; preds = %2837
  %2849 = and i32 %2756, 2097184
  %2850 = icmp eq i32 %2849, 2097184
  %2851 = select i1 %2850, float %2323, float 0.000000e+00
  %2852 = and i32 %2756, 4194336
  %2853 = icmp eq i32 %2852, 4194336
  %2854 = select i1 %2853, float %2323, float 0.000000e+00
  %2855 = and i32 %2756, 8388640
  %2856 = icmp eq i32 %2855, 8388640
  %2857 = select i1 %2856, float %2323, float 0.000000e+00
  %2858 = and i32 %2756, 2048
  %2859 = icmp ne i32 %2858, 0
  %2860 = select i1 %2859, float %2323, float 0.000000e+00
  %2861 = and i32 %2756, 8192
  %2862 = icmp ne i32 %2861, 0
  %2863 = select i1 %2862, float %2323, float 0.000000e+00
  %2864 = icmp eq i32 %2846, 0
  br i1 %2864, label %2865, label %2890

; <label>:2865                                    ; preds = %2848
  %2866 = fsub fast float %2624, %2125
  %2867 = fsub fast float %2625, %2126
  %2868 = fmul fast float %2851, %2866
  %2869 = fmul fast float %2851, %2867
  %2870 = fadd fast float %2868, %2125
  %2871 = fadd fast float %2869, %2126
  %2872 = fsub fast float %2626, %2138
  %2873 = fmul fast float %2854, %2872
  %2874 = fadd fast float %2873, %2138
  %2875 = fsub fast float %2623, %2137
  %2876 = fmul fast float %2857, %2875
  %2877 = fadd fast float %2876, %2137
  %2878 = fsub fast float %2726, %2139
  %2879 = fmul fast float %2860, %2878
  %2880 = fadd fast float %2879, %2139
  %2881 = fsub fast float %2723, %2133
  %2882 = fsub fast float %2724, %2134
  %2883 = fsub fast float %2725, %2135
  %2884 = fmul fast float %2863, %2881
  %2885 = fmul fast float %2863, %2882
  %2886 = fmul fast float %2863, %2883
  %2887 = fadd fast float %2884, %2133
  %2888 = fadd fast float %2885, %2134
  %2889 = fadd fast float %2886, %2135
  br label %2954

; <label>:2890                                    ; preds = %2848
  %2891 = icmp eq i32 %2846, 4
  br i1 %2891, label %2892, label %2932

; <label>:2892                                    ; preds = %2890
  %2893 = fmul fast float %2851, %2624
  %2894 = fmul fast float %2851, %2625
  %2895 = fadd fast float %2893, %2125
  %2896 = fadd fast float %2894, %2126
  %2897 = call float @dx.op.binary.f32(i32 36, float %2138, float %2626)  ; FMin(a,b)
  %2898 = fsub fast float %2897, %2138
  %2899 = fmul fast float %2898, %2854
  %2900 = fadd fast float %2899, %2138
  %2901 = fadd fast float %2623, %2137
  %2902 = fmul fast float %2901, 0x3FF337FAE0000000
  %2903 = fmul fast float %2137, %2137
  %2904 = fmul fast float %2623, %2623
  %2905 = fadd fast float %2904, %2903
  %2906 = fmul fast float %2905, 0x3FE5152B00000000
  %2907 = fmul fast float %2137, 0xBFCC1F85E0000000
  %2908 = fmul fast float %2907, %2623
  %2909 = fadd fast float %2908, 0xBFE1363700000000
  %2910 = fadd fast float %2909, %2902
  %2911 = fsub fast float %2910, %2906
  %2912 = fmul fast float %2901, 0x3FBA6F0D00000000
  %2913 = fmul fast float %2905, 0x3FD0432880000000
  %2914 = fmul fast float %2137, 0xBFEF110800000000
  %2915 = fmul fast float %2914, %2623
  %2916 = fadd fast float %2915, 1.000000e+00
  %2917 = fsub fast float %2916, %2912
  %2918 = fadd fast float %2917, %2913
  %2919 = fdiv fast float %2911, %2918
  %2920 = call float @dx.op.unary.f32(i32 7, float %2919)  ; Saturate(value)
  %2921 = fsub fast float %2920, %2137
  %2922 = fmul fast float %2921, %2857
  %2923 = fadd fast float %2922, %2137
  %2924 = fmul fast float %2860, %2726
  %2925 = fadd fast float %2924, %2139
  %2926 = fmul fast float %2863, %2723
  %2927 = fmul fast float %2863, %2724
  %2928 = fmul fast float %2863, %2725
  %2929 = fadd fast float %2926, %2133
  %2930 = fadd fast float %2927, %2134
  %2931 = fadd fast float %2928, %2135
  br label %2954

; <label>:2932                                    ; preds = %2890
  %2933 = icmp eq i32 %2846, 8
  br i1 %2933, label %2934, label %2954

; <label>:2934                                    ; preds = %2932
  %2935 = fmul fast float %2851, %2624
  %2936 = fmul fast float %2851, %2625
  %2937 = fadd fast float %2935, %2125
  %2938 = fadd fast float %2936, %2126
  %2939 = call float @dx.op.binary.f32(i32 36, float %2138, float %2626)  ; FMin(a,b)
  %2940 = fsub fast float %2939, %2138
  %2941 = fmul fast float %2940, %2854
  %2942 = fadd fast float %2941, %2138
  %2943 = fsub fast float %2623, %2137
  %2944 = fmul fast float %2857, %2943
  %2945 = fadd fast float %2944, %2137
  %2946 = fmul fast float %2860, %2726
  %2947 = fadd fast float %2946, %2139
  %2948 = fmul fast float %2863, %2723
  %2949 = fmul fast float %2863, %2724
  %2950 = fmul fast float %2863, %2725
  %2951 = fadd fast float %2948, %2133
  %2952 = fadd fast float %2949, %2134
  %2953 = fadd fast float %2950, %2135
  br label %2954

; <label>:2954                                    ; preds = %2934, %2932, %2892, %2865, %2837, %2322, %2141, %2124
  %2955 = phi float [ %2125, %2837 ], [ %2125, %2322 ], [ %2125, %2124 ], [ %2937, %2934 ], [ %2125, %2932 ], [ %2895, %2892 ], [ %2870, %2865 ], [ %2125, %2141 ]
  %2956 = phi float [ %2126, %2837 ], [ %2126, %2322 ], [ %2126, %2124 ], [ %2938, %2934 ], [ %2126, %2932 ], [ %2896, %2892 ], [ %2871, %2865 ], [ %2126, %2141 ]
  %2957 = phi float [ %2838, %2837 ], [ %2127, %2322 ], [ %2127, %2124 ], [ %2838, %2934 ], [ %2838, %2932 ], [ %2838, %2892 ], [ %2838, %2865 ], [ %2127, %2141 ]
  %2958 = phi float [ %2839, %2837 ], [ %2128, %2322 ], [ %2128, %2124 ], [ %2839, %2934 ], [ %2839, %2932 ], [ %2839, %2892 ], [ %2839, %2865 ], [ %2128, %2141 ]
  %2959 = phi float [ %2840, %2837 ], [ %2129, %2322 ], [ %2129, %2124 ], [ %2840, %2934 ], [ %2840, %2932 ], [ %2840, %2892 ], [ %2840, %2865 ], [ %2129, %2141 ]
  %2960 = phi float [ %2841, %2837 ], [ %2130, %2322 ], [ %2130, %2124 ], [ %2841, %2934 ], [ %2841, %2932 ], [ %2841, %2892 ], [ %2841, %2865 ], [ %2130, %2141 ]
  %2961 = phi float [ %2842, %2837 ], [ %2131, %2322 ], [ %2131, %2124 ], [ %2842, %2934 ], [ %2842, %2932 ], [ %2842, %2892 ], [ %2842, %2865 ], [ %2131, %2141 ]
  %2962 = phi float [ %2843, %2837 ], [ %2132, %2322 ], [ %2132, %2124 ], [ %2843, %2934 ], [ %2843, %2932 ], [ %2843, %2892 ], [ %2843, %2865 ], [ %2132, %2141 ]
  %2963 = phi float [ %2133, %2837 ], [ %2133, %2322 ], [ %2133, %2124 ], [ %2951, %2934 ], [ %2133, %2932 ], [ %2929, %2892 ], [ %2887, %2865 ], [ %2133, %2141 ]
  %2964 = phi float [ %2134, %2837 ], [ %2134, %2322 ], [ %2134, %2124 ], [ %2952, %2934 ], [ %2134, %2932 ], [ %2930, %2892 ], [ %2888, %2865 ], [ %2134, %2141 ]
  %2965 = phi float [ %2135, %2837 ], [ %2135, %2322 ], [ %2135, %2124 ], [ %2953, %2934 ], [ %2135, %2932 ], [ %2931, %2892 ], [ %2889, %2865 ], [ %2135, %2141 ]
  %2966 = phi float [ %2844, %2837 ], [ %2136, %2322 ], [ %2136, %2124 ], [ %2844, %2934 ], [ %2844, %2932 ], [ %2844, %2892 ], [ %2844, %2865 ], [ %2136, %2141 ]
  %2967 = phi float [ %2137, %2837 ], [ %2137, %2322 ], [ %2137, %2124 ], [ %2945, %2934 ], [ %2137, %2932 ], [ %2923, %2892 ], [ %2877, %2865 ], [ %2137, %2141 ]
  %2968 = phi float [ %2138, %2837 ], [ %2138, %2322 ], [ %2138, %2124 ], [ %2942, %2934 ], [ %2138, %2932 ], [ %2900, %2892 ], [ %2874, %2865 ], [ %2138, %2141 ]
  %2969 = phi float [ %2139, %2837 ], [ %2139, %2322 ], [ %2139, %2124 ], [ %2947, %2934 ], [ %2139, %2932 ], [ %2925, %2892 ], [ %2880, %2865 ], [ %2139, %2141 ]
  %2970 = phi float [ %2845, %2837 ], [ %2140, %2322 ], [ %2140, %2124 ], [ %2845, %2934 ], [ %2845, %2932 ], [ %2845, %2892 ], [ %2845, %2865 ], [ %2140, %2141 ]
  br i1 %643, label %3784, label %2971

; <label>:2971                                    ; preds = %2954
  %2972 = icmp ult i32 %697, 4
  %2973 = add i32 %61, 72
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = add i32 %61, 76
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = or i32 %2978, %2975
  %2980 = icmp eq i32 %2979, 0
  br i1 %2980, label %3784, label %2981

; <label>:2981                                    ; preds = %2971
  %2982 = and i32 %2975, 262144
  %2983 = icmp ne i32 %2982, 0
  %2984 = select i1 %2983, float %67, float 1.000000e+00
  %2985 = select i1 %2983, float %68, float 0.000000e+00
  %2986 = select i1 %2983, float %69, float 0.000000e+00
  %2987 = select i1 %2983, float %70, float 1.000000e+00
  %2988 = select i1 %2983, float %71, float %99
  %2989 = select i1 %2983, float %72, float %100
  %2990 = add i32 %61, 332
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = lshr i32 %2992, 16
  %2994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2993)  ; LegacyF16ToF32(value)
  %2995 = fmul fast float %2994, 0x3F50624DE0000000
  %2996 = add i32 %61, 136
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 16
  %3000 = and i32 %2999, 255
  %3001 = lshr i32 %2998, 24
  %3002 = add i32 %61, 340
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 65535
  %3006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3005)  ; LegacyF16ToF32(value)
  %3007 = lshr i32 %3004, 16
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = add i32 %61, 80
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = lshr i32 %3011, 22
  %3013 = shl nuw nsw i32 %3012, 5
  %3014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3013)  ; LegacyF16ToF32(value)
  %3015 = shl i32 %3011, 4
  %3016 = and i32 %3015, 32752
  %3017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3016)  ; LegacyF16ToF32(value)
  %3018 = lshr i32 %3011, 7
  %3019 = and i32 %3018, 32752
  %3020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3019)  ; LegacyF16ToF32(value)
  %3021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.f32 %3021, 3
  %3023 = fmul fast float %3022, 1.000000e+03
  %3024 = fmul fast float %3023, %632
  %3025 = call float @dx.op.unary.f32(i32 22, float %3024)  ; Frc(value)
  %3026 = fadd fast float %3025, %620
  %3027 = fmul fast float %3023, %634
  %3028 = call float @dx.op.unary.f32(i32 22, float %3027)  ; Frc(value)
  %3029 = fadd fast float %3028, %621
  %3030 = fmul fast float %2995, %3023
  %3031 = call float @dx.op.unary.f32(i32 22, float %3030)  ; Frc(value)
  %3032 = fmul fast float %3031, 0x401921FB60000000
  %3033 = fadd fast float %3032, %3014
  %3034 = call float @dx.op.unary.f32(i32 13, float %3033)  ; Sin(value)
  %3035 = call float @dx.op.unary.f32(i32 12, float %3033)  ; Cos(value)
  %3036 = fsub fast float -0.000000e+00, %3034
  %3037 = fadd fast float %2988, -5.000000e-01
  %3038 = fadd fast float %2989, -5.000000e-01
  %3039 = fmul fast float %3006, %3037
  %3040 = fmul fast float %3008, %3038
  %3041 = fadd fast float %3039, 5.000000e-01
  %3042 = fadd fast float %3040, 5.000000e-01
  %3043 = fmul fast float %3017, %3041
  %3044 = fmul fast float %3020, %3042
  %3045 = fmul fast float %3035, %3043
  %3046 = call float @dx.op.tertiary.f32(i32 46, float %3036, float %3044, float %3045)  ; FMad(a,b,c)
  %3047 = fmul fast float %3034, %3043
  %3048 = call float @dx.op.tertiary.f32(i32 46, float %3035, float %3044, float %3047)  ; FMad(a,b,c)
  %3049 = fadd fast float %3026, %3046
  %3050 = fadd fast float %3029, %3048
  %3051 = icmp ugt i32 %3000, 1
  %3052 = icmp ugt i32 %2998, 33554431
  %3053 = or i1 %3052, %3051
  br i1 %3053, label %3054, label %3079

; <label>:3054                                    ; preds = %2981
  %3055 = add i32 %61, 276
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = lshr i32 %3057, 16
  %3059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3058)  ; LegacyF16ToF32(value)
  %3060 = fmul fast float %3022, %3059
  %3061 = call float @dx.op.unary.f32(i32 22, float %3060)  ; Frc(value)
  %3062 = mul nuw nsw i32 %3000, %3001
  %3063 = uitofp i32 %3062 to float
  %3064 = fmul fast float %3061, %3063
  %3065 = call float @dx.op.unary.f32(i32 27, float %3064)  ; Round_ni(value)
  %3066 = fptoui float %3065 to i32
  %3067 = urem i32 %3066, %3000
  %3068 = udiv i32 %3066, %3001
  %3069 = call float @dx.op.unary.f32(i32 22, float %3049)  ; Frc(value)
  %3070 = call float @dx.op.unary.f32(i32 22, float %3050)  ; Frc(value)
  %3071 = uitofp i32 %3067 to float
  %3072 = uitofp i32 %3068 to float
  %3073 = fadd fast float %3069, %3071
  %3074 = fadd fast float %3070, %3072
  %3075 = uitofp i32 %3000 to float
  %3076 = uitofp i32 %3001 to float
  %3077 = fdiv fast float %3073, %3075
  %3078 = fdiv fast float %3074, %3076
  br label %3079

; <label>:3079                                    ; preds = %3054, %2981
  %3080 = phi float [ %3077, %3054 ], [ %3049, %2981 ]
  %3081 = phi float [ %3078, %3054 ], [ %3050, %2981 ]
  %3082 = and i32 %2975, 256
  %3083 = icmp eq i32 %3082, 0
  br i1 %3083, label %3130, label %3084

; <label>:3084                                    ; preds = %3079
  %3085 = add i32 %61, 436
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3085, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = add i32 %3087, 0
  %3089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3088, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3090 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3089, %dx.types.Handle %118, float %3080, float %3081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = add i32 %61, 148
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = shl i32 %3094, 4
  %3096 = and i32 %3095, 32752
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = lshr i32 %3094, 7
  %3099 = and i32 %3098, 32752
  %3100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3099)  ; LegacyF16ToF32(value)
  %3101 = fsub fast float 1.000000e+00, %692
  %3102 = call float @dx.op.binary.f32(i32 35, float %3101, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3103 = bitcast float %692 to i32
  %3104 = sitofp i32 %3103 to float
  %3105 = fadd fast float %3104, 0xC1CFBF8940000000
  %3106 = fmul fast float %3100, %3105
  %3107 = fadd fast float %3106, 0x41CFBF8940000000
  %3108 = fptosi float %3107 to i32
  %3109 = bitcast i32 %3108 to float
  %3110 = bitcast float %3102 to i32
  %3111 = sitofp i32 %3110 to float
  %3112 = fadd fast float %3111, 0xC1CFBF8940000000
  %3113 = fmul fast float %3112, %3100
  %3114 = fadd fast float %3113, 0x41CFBF8940000000
  %3115 = fptosi float %3114 to i32
  %3116 = bitcast i32 %3115 to float
  %3117 = fmul fast float %3109, %3097
  %3118 = fmul fast float %3116, %3097
  %3119 = fsub fast float %3102, %3117
  %3120 = fadd fast float %3118, %3102
  %3121 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3122 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3123 = fsub fast float %3091, %3121
  %3124 = fsub fast float %3122, %3121
  %3125 = bitcast float %3124 to i32
  %3126 = sub nsw i32 2129859010, %3125
  %3127 = bitcast i32 %3126 to float
  %3128 = fmul fast float %3127, %3123
  %3129 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  br label %3130

; <label>:3130                                    ; preds = %3084, %3079
  %3131 = phi float [ %3129, %3084 ], [ %692, %3079 ]
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 128
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3152, label %3136

; <label>:3136                                    ; preds = %3130
  %3137 = add i32 %61, 420
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = add i32 %3139, 0
  %3141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3141, %dx.types.Handle %118, float %3080, float %3081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3143 = extractvalue %dx.types.ResRet.f32 %3142, 0
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = and i32 %3145, 524288
  %3147 = icmp ne i32 %3146, 0
  %3148 = fcmp fast ogt float %3143, 0x3FE0101020000000
  %3149 = select i1 %3148, float 1.000000e+00, float 0.000000e+00
  %3150 = select i1 %3147, float %3149, float %3143
  %3151 = fmul fast float %3150, %3131
  br label %3152

; <label>:3152                                    ; preds = %3136, %3130
  %3153 = phi float [ %3151, %3136 ], [ %3131, %3130 ]
  %3154 = fcmp fast ult float %3153, 0x3F70101020000000
  br i1 %3154, label %3784, label %3155

; <label>:3155                                    ; preds = %3152
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 16
  %3159 = icmp eq i32 %3158, 0
  br i1 %3159, label %3358, label %3160

; <label>:3160                                    ; preds = %3155
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = add i32 %61, 372
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = add i32 %3165, 0
  %3167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3167, %dx.types.Handle %117, float %3080, float %3081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 0
  %3170 = extractvalue %dx.types.ResRet.f32 %3168, 1
  %3171 = extractvalue %dx.types.ResRet.f32 %3168, 2
  %3172 = extractvalue %dx.types.ResRet.f32 %3168, 3
  %3173 = and i32 %3162, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = lshr i32 %3162, 8
  %3176 = and i32 %3175, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = fmul fast float %3172, %3174
  %3179 = fadd fast float %3178, %3177
  %3180 = fmul fast float %3179, 0x3F70101000000000
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = and i32 %3182, 512
  %3184 = icmp eq i32 %3183, 0
  br i1 %3184, label %3193, label %3185

; <label>:3185                                    ; preds = %3160
  %3186 = add i32 %61, 452
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = add i32 %3188, 0
  %3190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3190, %dx.types.Handle %118, float %3080, float %3081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  br label %3193

; <label>:3193                                    ; preds = %3185, %3160
  %3194 = phi float [ %3192, %3185 ], [ 1.000000e+00, %3160 ]
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 33554432
  %3198 = icmp eq i32 %3197, 0
  br i1 %3198, label %3305, label %3199

; <label>:3199                                    ; preds = %3193
  %3200 = add i32 %61, 272
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 65535
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203)  ; LegacyF16ToF32(value)
  %3205 = lshr i32 %3202, 16
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = add i32 %61, 276
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = and i32 %3209, 65535
  %3211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3210)  ; LegacyF16ToF32(value)
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = lshr i32 %3213, 24
  %3215 = uitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 0x3F70101020000000
  %3217 = and i32 %3213, 255
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3218, 0x3F70101020000000
  %3220 = lshr i32 %3213, 8
  %3221 = and i32 %3220, 255
  %3222 = uitofp i32 %3221 to float
  %3223 = fmul fast float %3222, 0x3F70101020000000
  %3224 = lshr i32 %3213, 16
  %3225 = and i32 %3224, 255
  %3226 = uitofp i32 %3225 to float
  %3227 = fmul fast float %3226, 0x3F70101020000000
  %3228 = add i32 %61, 268
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = lshr i32 %3230, 24
  %3232 = uitofp i32 %3231 to float
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = and i32 %3230, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = fmul fast float %3235, 0x3F70101020000000
  %3237 = lshr i32 %3230, 8
  %3238 = and i32 %3237, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = fmul fast float %3239, 0x3F70101020000000
  %3241 = lshr i32 %3230, 16
  %3242 = and i32 %3241, 255
  %3243 = uitofp i32 %3242 to float
  %3244 = fmul fast float %3243, 0x3F70101020000000
  %3245 = bitcast float %3169 to i32
  %3246 = ashr i32 %3245, 1
  %3247 = sub nsw i32 1597463174, %3246
  %3248 = bitcast i32 %3247 to float
  %3249 = fmul fast float %3169, 5.000000e-01
  %3250 = fmul fast float %3248, %3248
  %3251 = fmul fast float %3250, %3249
  %3252 = fsub fast float 1.500000e+00, %3251
  %3253 = fmul fast float %3248, %3169
  %3254 = fmul fast float %3253, %3252
  %3255 = bitcast float %3170 to i32
  %3256 = ashr i32 %3255, 1
  %3257 = sub nsw i32 1597463174, %3256
  %3258 = bitcast i32 %3257 to float
  %3259 = fmul fast float %3170, 5.000000e-01
  %3260 = fmul fast float %3258, %3258
  %3261 = fmul fast float %3260, %3259
  %3262 = fsub fast float 1.500000e+00, %3261
  %3263 = fmul fast float %3258, %3170
  %3264 = fmul fast float %3263, %3262
  %3265 = bitcast float %3171 to i32
  %3266 = ashr i32 %3265, 1
  %3267 = sub nsw i32 1597463174, %3266
  %3268 = bitcast i32 %3267 to float
  %3269 = fmul fast float %3171, 5.000000e-01
  %3270 = fmul fast float %3268, %3268
  %3271 = fmul fast float %3270, %3269
  %3272 = fsub fast float 1.500000e+00, %3271
  %3273 = fmul fast float %3268, %3171
  %3274 = fmul fast float %3273, %3272
  %3275 = fsub fast float %3254, %3236
  %3276 = fsub fast float %3264, %3240
  %3277 = fsub fast float %3274, %3244
  %3278 = fmul fast float %3275, %3204
  %3279 = fmul fast float %3276, %3206
  %3280 = fmul fast float %3277, %3211
  %3281 = fadd fast float %3278, %3219
  %3282 = fadd fast float %3279, %3223
  %3283 = fadd fast float %3280, %3227
  %3284 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3285 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3286 = call float @dx.op.unary.f32(i32 7, float %3283)  ; Saturate(value)
  %3287 = fmul fast float %3284, %3284
  %3288 = fmul fast float %3285, %3285
  %3289 = fmul fast float %3286, %3286
  %3290 = fsub fast float %3287, %3169
  %3291 = fsub fast float %3288, %3170
  %3292 = fsub fast float %3289, %3171
  %3293 = fmul fast float %3290, %3194
  %3294 = fmul fast float %3291, %3194
  %3295 = fmul fast float %3292, %3194
  %3296 = fadd fast float %3293, %3169
  %3297 = fadd fast float %3294, %3170
  %3298 = fadd fast float %3295, %3171
  %3299 = fadd fast float %3216, %3180
  %3300 = fsub fast float %3299, %3233
  %3301 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  %3302 = fsub fast float %3301, %3180
  %3303 = fmul fast float %3302, %3194
  %3304 = fadd fast float %3303, %3180
  br label %3358

; <label>:3305                                    ; preds = %3193
  %3306 = and i32 %3196, 134217728
  %3307 = icmp eq i32 %3306, 0
  br i1 %3307, label %3342, label %3308

; <label>:3308                                    ; preds = %3305
  %3309 = call float @dx.op.unary.f32(i32 24, float %608)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %3311 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %3312 = fadd fast float %3309, -5.000000e-01
  %3313 = fadd fast float %3310, -5.000000e-01
  %3314 = fadd fast float %3311, -5.000000e-01
  %3315 = fmul fast float %3312, %3194
  %3316 = fmul fast float %3313, %3194
  %3317 = fmul fast float %3314, %3194
  %3318 = fadd fast float %3315, 5.000000e-01
  %3319 = fadd fast float %3316, 5.000000e-01
  %3320 = fadd fast float %3317, 5.000000e-01
  %3321 = call float @dx.op.unary.f32(i32 24, float %3169)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3170)  ; Sqrt(value)
  %3323 = call float @dx.op.unary.f32(i32 24, float %3171)  ; Sqrt(value)
  %3324 = fmul fast float %3318, 2.000000e+00
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = fmul fast float %3325, %3321
  %3327 = fadd fast float %3326, %3324
  %3328 = fmul fast float %3327, %3321
  %3329 = fmul fast float %3319, 2.000000e+00
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3330, %3322
  %3332 = fadd fast float %3331, %3329
  %3333 = fmul fast float %3332, %3322
  %3334 = fmul fast float %3320, 2.000000e+00
  %3335 = fsub fast float 1.000000e+00, %3334
  %3336 = fmul fast float %3335, %3323
  %3337 = fadd fast float %3336, %3334
  %3338 = fmul fast float %3337, %3323
  %3339 = fmul fast float %3328, %3328
  %3340 = fmul fast float %3333, %3333
  %3341 = fmul fast float %3338, %3338
  br label %3358

; <label>:3342                                    ; preds = %3305
  %3343 = fmul fast float %608, %608
  %3344 = fmul fast float %609, %609
  %3345 = fmul fast float %610, %610
  %3346 = fadd fast float %3343, -1.000000e+00
  %3347 = fadd fast float %3344, -1.000000e+00
  %3348 = fadd fast float %3345, -1.000000e+00
  %3349 = fmul fast float %3194, %3346
  %3350 = fmul fast float %3194, %3347
  %3351 = fmul fast float %3194, %3348
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fadd fast float %3351, 1.000000e+00
  %3355 = fmul fast float %3352, %3169
  %3356 = fmul fast float %3353, %3170
  %3357 = fmul fast float %3354, %3171
  br label %3358

; <label>:3358                                    ; preds = %3342, %3308, %3199, %3155
  %3359 = phi float [ %3304, %3199 ], [ %3180, %3308 ], [ %3180, %3342 ], [ 0x3FA23C0BE0000000, %3155 ]
  %3360 = phi float [ %3296, %3199 ], [ %3339, %3308 ], [ %3355, %3342 ], [ 1.000000e+00, %3155 ]
  %3361 = phi float [ %3297, %3199 ], [ %3340, %3308 ], [ %3356, %3342 ], [ 1.000000e+00, %3155 ]
  %3362 = phi float [ %3298, %3199 ], [ %3341, %3308 ], [ %3357, %3342 ], [ 1.000000e+00, %3155 ]
  %3363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3364 = extractvalue %dx.types.CBufRet.i32 %3363, 1
  %3365 = and i32 %3364, 1
  %3366 = icmp ne i32 %3365, 0
  %3367 = add i32 %61, 356
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = and i32 %3369, 32
  %3371 = icmp ne i32 %3370, 0
  %3372 = and i1 %3366, %3371
  %3373 = select i1 %3372, float 1.000000e+00, float %3360
  %3374 = select i1 %3372, float 0x3FD3333340000000, float %3361
  %3375 = select i1 %3372, float 0x3FD3333340000000, float %3362
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = and i32 %3377, 32
  %3379 = icmp eq i32 %3378, 0
  br i1 %3379, label %3452, label %3380

; <label>:3380                                    ; preds = %3358
  %3381 = add i32 %61, 140
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = add i32 %61, 388
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = add i32 %3386, 0
  %3388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3388, %dx.types.Handle %117, float %3080, float %3081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = extractvalue %dx.types.ResRet.f32 %3389, 3
  %3394 = and i32 %3383, 255
  %3395 = uitofp i32 %3394 to float
  %3396 = lshr i32 %3383, 8
  %3397 = and i32 %3396, 255
  %3398 = uitofp i32 %3397 to float
  %3399 = lshr i32 %3383, 16
  %3400 = and i32 %3399, 255
  %3401 = uitofp i32 %3400 to float
  %3402 = fmul fast float %3401, 0x3F70101000000000
  %3403 = fmul fast float %3390, %3395
  %3404 = fadd fast float %3403, %3398
  %3405 = fmul fast float %3404, 0x3F70101000000000
  %3406 = fadd fast float %3391, -5.000000e-01
  %3407 = fadd fast float %3393, -5.000000e-01
  %3408 = fmul fast float %3406, %3402
  %3409 = fmul fast float %3407, %3402
  %3410 = fadd fast float %3408, 5.000000e-01
  %3411 = fadd fast float %3409, 5.000000e-01
  %3412 = fmul fast float %3410, 2.000000e+00
  %3413 = fadd fast float %3412, -1.000000e+00
  %3414 = fmul fast float %3411, 2.000000e+00
  %3415 = fadd fast float %3414, -1.000000e+00
  %3416 = fadd fast float %3413, %3415
  %3417 = fmul fast float %3416, 5.000000e-01
  %3418 = fsub fast float %3413, %3415
  %3419 = fmul fast float %3418, 5.000000e-01
  %3420 = call float @dx.op.unary.f32(i32 6, float %3417)  ; FAbs(value)
  %3421 = fsub fast float 1.000000e+00, %3420
  %3422 = call float @dx.op.unary.f32(i32 6, float %3419)  ; FAbs(value)
  %3423 = fsub fast float %3421, %3422
  %3424 = call float @dx.op.dot3.f32(i32 55, float %3417, float %3419, float %3423, float %3417, float %3419, float %3423)  ; Dot3(ax,ay,az,bx,by,bz)
  %3425 = call float @dx.op.unary.f32(i32 25, float %3424)  ; Rsqrt(value)
  %3426 = fmul fast float %3417, %3425
  %3427 = fmul fast float %3419, %3425
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = and i32 %3429, 67108864
  %3431 = icmp eq i32 %3430, 0
  br i1 %3431, label %3448, label %3432

; <label>:3432                                    ; preds = %3380
  %3433 = add i32 %61, 328
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 65535
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 65535
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = lshr i32 %3435, 16
  %3443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3442)  ; LegacyF16ToF32(value)
  %3444 = fsub fast float %3405, %3443
  %3445 = fmul fast float %3444, %3437
  %3446 = fadd fast float %3445, %3441
  %3447 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  br label %3448

; <label>:3448                                    ; preds = %3432, %3380
  %3449 = phi float [ %3447, %3432 ], [ %3405, %3380 ]
  %3450 = call float @dx.op.dot2.f32(i32 54, float %3426, float %3427, float %2984, float %2985)  ; Dot2(ax,ay,bx,by)
  %3451 = call float @dx.op.dot2.f32(i32 54, float %3426, float %3427, float %2986, float %2987)  ; Dot2(ax,ay,bx,by)
  br label %3452

; <label>:3452                                    ; preds = %3448, %3358
  %3453 = phi float [ %3449, %3448 ], [ 0x3FD6666660000000, %3358 ]
  %3454 = phi float [ %3450, %3448 ], [ 0.000000e+00, %3358 ]
  %3455 = phi float [ %3451, %3448 ], [ 0.000000e+00, %3358 ]
  %3456 = phi float [ %3392, %3448 ], [ 1.000000e+00, %3358 ]
  %3457 = add i32 %61, 208
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = lshr i32 %3459, 22
  %3461 = shl nuw nsw i32 %3460, 5
  %3462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3461)  ; LegacyF16ToF32(value)
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 64
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3500, label %3467

; <label>:3467                                    ; preds = %3452
  %3468 = add i32 %61, 404
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = add i32 %3470, 0
  %3472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 131072
  %3476 = icmp eq i32 %3475, 0
  %3477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3472, %dx.types.Handle %117, float %3080, float %3081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3478 = extractvalue %dx.types.ResRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.ResRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.ResRet.f32 %3477, 2
  %3481 = fmul fast float %591, %3478
  %3482 = fmul fast float %592, %3479
  %3483 = fmul fast float %593, %3480
  br i1 %3476, label %3490, label %3484

; <label>:3484                                    ; preds = %3467
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = fmul fast float %3486, %3481
  %3488 = fmul fast float %3486, %3482
  %3489 = fmul fast float %3486, %3483
  br label %3490

; <label>:3490                                    ; preds = %3484, %3467
  %3491 = phi float [ %3487, %3484 ], [ %3481, %3467 ]
  %3492 = phi float [ %3488, %3484 ], [ %3482, %3467 ]
  %3493 = phi float [ %3489, %3484 ], [ %3483, %3467 ]
  %3494 = fmul fast float %3491, %3462
  %3495 = select i1 %259, float %3494, float %3491
  %3496 = call float @dx.op.dot3.f32(i32 55, float %3495, float %3492, float %3493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3497 = select i1 %259, float 0.000000e+00, float %3491
  %3498 = select i1 %259, float %3496, float %3492
  %3499 = select i1 %259, float 0.000000e+00, float %3493
  br label %3500

; <label>:3500                                    ; preds = %3490, %3452
  %3501 = phi float [ %3497, %3490 ], [ 0.000000e+00, %3452 ]
  %3502 = phi float [ %3498, %3490 ], [ 0.000000e+00, %3452 ]
  %3503 = phi float [ %3499, %3490 ], [ 0.000000e+00, %3452 ]
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 10240
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3552, label %3508

; <label>:3508                                    ; preds = %3500
  %3509 = add i32 %61, 468
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = add i32 %3511, 0
  %3513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3513, %dx.types.Handle %118, float %3080, float %3081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 3
  %3517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.i32 %3517, 0
  %3519 = and i32 %3518, 1048576
  %3520 = icmp ne i32 %3519, 0
  %3521 = and i32 %3518, 8192
  %3522 = icmp eq i32 %3521, 0
  br i1 %3522, label %3538, label %3523

; <label>:3523                                    ; preds = %3508
  %3524 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3525 = select i1 %3520, float %3524, float %3515
  %3526 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3527 = select i1 %3520, float %3526, float %3515
  %3528 = add i32 %61, 144
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = lshr i32 %3530, 16
  %3532 = and i32 %3531, 255
  %3533 = uitofp i32 %3532 to float
  %3534 = fmul fast float %3533, 0x3F80101020000000
  %3535 = fmul fast float %3534, %3527
  %3536 = fmul fast float %3534, %3515
  %3537 = fmul fast float %3534, %3525
  br label %3538

; <label>:3538                                    ; preds = %3523, %3508
  %3539 = phi float [ %3535, %3523 ], [ 0.000000e+00, %3508 ]
  %3540 = phi float [ %3536, %3523 ], [ 0.000000e+00, %3508 ]
  %3541 = phi float [ %3537, %3523 ], [ 0.000000e+00, %3508 ]
  %3542 = and i32 %3518, 2048
  %3543 = icmp eq i32 %3542, 0
  br i1 %3543, label %3552, label %3544

; <label>:3544                                    ; preds = %3538
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = shl i32 %3546, 4
  %3548 = and i32 %3547, 32752
  %3549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3548)  ; LegacyF16ToF32(value)
  %3550 = fmul fast float %3549, %3516
  %3551 = call float @dx.op.binary.f32(i32 35, float %3550, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3552

; <label>:3552                                    ; preds = %3544, %3538, %3500
  %3553 = phi float [ %3539, %3544 ], [ %3539, %3538 ], [ 0.000000e+00, %3500 ]
  %3554 = phi float [ %3540, %3544 ], [ %3540, %3538 ], [ 0.000000e+00, %3500 ]
  %3555 = phi float [ %3541, %3544 ], [ %3541, %3538 ], [ 0.000000e+00, %3500 ]
  %3556 = phi float [ %3551, %3544 ], [ 0x3F70101020000000, %3538 ], [ 0x3F70101020000000, %3500 ]
  %3557 = add i32 %61, 144
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = and i32 %3559, 255
  %3561 = uitofp i32 %3560 to float
  %3562 = lshr i32 %3559, 8
  %3563 = and i32 %3562, 255
  %3564 = uitofp i32 %3563 to float
  %3565 = call float @dx.op.dot3.f32(i32 55, float %3373, float %3374, float %3375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3566 = fmul fast float %3564, %3565
  %3567 = fadd fast float %3566, %3561
  %3568 = fmul fast float %3567, 0x3F70101020000000
  %3569 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  br i1 %2972, label %3570, label %3578

; <label>:3570                                    ; preds = %3552
  %3571 = fsub fast float 1.000000e+00, %3153
  %3572 = fmul fast float %3571, %2957
  %3573 = fmul fast float %3571, %2958
  %3574 = fmul fast float %3571, %2959
  %3575 = fmul fast float %3571, %2960
  %3576 = fmul fast float %3571, %2961
  %3577 = fmul fast float %3571, %2962
  br label %3578

; <label>:3578                                    ; preds = %3570, %3552
  %3579 = phi float [ %3572, %3570 ], [ %2957, %3552 ]
  %3580 = phi float [ %3573, %3570 ], [ %2958, %3552 ]
  %3581 = phi float [ %3574, %3570 ], [ %2959, %3552 ]
  %3582 = phi float [ %3575, %3570 ], [ %2960, %3552 ]
  %3583 = phi float [ %3576, %3570 ], [ %2961, %3552 ]
  %3584 = phi float [ %3577, %3570 ], [ %2962, %3552 ]
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 3
  %3588 = icmp eq i32 %3587, 3
  br i1 %3588, label %3667, label %3589

; <label>:3589                                    ; preds = %3578
  %3590 = and i32 %3586, 16
  %3591 = icmp ne i32 %3590, 0
  %3592 = select i1 %3591, float %3153, float 0.000000e+00
  %3593 = icmp eq i32 %3587, 0
  br i1 %3593, label %3594, label %3622

; <label>:3594                                    ; preds = %3589
  %3595 = and i32 %3586, 64
  %3596 = icmp ne i32 %3595, 0
  %3597 = select i1 %3596, float %3153, float 0.000000e+00
  %3598 = fsub fast float %3373, %3579
  %3599 = fsub fast float %3374, %3580
  %3600 = fsub fast float %3375, %3581
  %3601 = fmul fast float %3592, %3598
  %3602 = fmul fast float %3592, %3599
  %3603 = fmul fast float %3592, %3600
  %3604 = fadd fast float %3601, %3579
  %3605 = fadd fast float %3602, %3580
  %3606 = fadd fast float %3603, %3581
  %3607 = fsub fast float %3359, %2966
  %3608 = fmul fast float %3592, %3607
  %3609 = fadd fast float %3608, %2966
  %3610 = fsub fast float %3501, %3582
  %3611 = fsub fast float %3502, %3583
  %3612 = fsub fast float %3503, %3584
  %3613 = fmul fast float %3597, %3610
  %3614 = fmul fast float %3597, %3611
  %3615 = fmul fast float %3597, %3612
  %3616 = fadd fast float %3613, %3582
  %3617 = fadd fast float %3614, %3583
  %3618 = fadd fast float %3615, %3584
  %3619 = fsub fast float %3569, %2970
  %3620 = fmul fast float %3592, %3619
  %3621 = fadd fast float %3620, %2970
  br label %3667

; <label>:3622                                    ; preds = %3589
  %3623 = icmp eq i32 %3587, 1
  br i1 %3623, label %3624, label %3637

; <label>:3624                                    ; preds = %3622
  %3625 = fadd fast float %3373, -1.000000e+00
  %3626 = fadd fast float %3374, -1.000000e+00
  %3627 = fadd fast float %3375, -1.000000e+00
  %3628 = fmul fast float %3592, %3625
  %3629 = fmul fast float %3592, %3626
  %3630 = fmul fast float %3592, %3627
  %3631 = fadd fast float %3628, 1.000000e+00
  %3632 = fadd fast float %3629, 1.000000e+00
  %3633 = fadd fast float %3630, 1.000000e+00
  %3634 = fmul fast float %3631, %3579
  %3635 = fmul fast float %3632, %3580
  %3636 = fmul fast float %3633, %3581
  br label %3667

; <label>:3637                                    ; preds = %3622
  %3638 = icmp eq i32 %3587, 2
  br i1 %3638, label %3639, label %3667

; <label>:3639                                    ; preds = %3637
  %3640 = call float @dx.op.unary.f32(i32 24, float %3373)  ; Sqrt(value)
  %3641 = call float @dx.op.unary.f32(i32 24, float %3374)  ; Sqrt(value)
  %3642 = call float @dx.op.unary.f32(i32 24, float %3375)  ; Sqrt(value)
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fadd fast float %3642, -5.000000e-01
  %3646 = fmul fast float %3643, %3592
  %3647 = fmul fast float %3644, %3592
  %3648 = fmul fast float %3645, %3592
  %3649 = fadd fast float %3646, 5.000000e-01
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fadd fast float %3648, 5.000000e-01
  %3652 = fmul fast float %3649, 2.000000e+00
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3653, %3579
  %3655 = fadd fast float %3654, %3652
  %3656 = fmul fast float %3655, %3579
  %3657 = fmul fast float %3650, 2.000000e+00
  %3658 = fsub fast float 1.000000e+00, %3657
  %3659 = fmul fast float %3658, %3580
  %3660 = fadd fast float %3659, %3657
  %3661 = fmul fast float %3660, %3580
  %3662 = fmul fast float %3651, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3581
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3581
  br label %3667

; <label>:3667                                    ; preds = %3639, %3637, %3624, %3594, %3578
  %3668 = phi float [ %3579, %3578 ], [ %3656, %3639 ], [ %3579, %3637 ], [ %3634, %3624 ], [ %3604, %3594 ]
  %3669 = phi float [ %3580, %3578 ], [ %3661, %3639 ], [ %3580, %3637 ], [ %3635, %3624 ], [ %3605, %3594 ]
  %3670 = phi float [ %3581, %3578 ], [ %3666, %3639 ], [ %3581, %3637 ], [ %3636, %3624 ], [ %3606, %3594 ]
  %3671 = phi float [ %3582, %3578 ], [ %3582, %3639 ], [ %3582, %3637 ], [ %3582, %3624 ], [ %3616, %3594 ]
  %3672 = phi float [ %3583, %3578 ], [ %3583, %3639 ], [ %3583, %3637 ], [ %3583, %3624 ], [ %3617, %3594 ]
  %3673 = phi float [ %3584, %3578 ], [ %3584, %3639 ], [ %3584, %3637 ], [ %3584, %3624 ], [ %3618, %3594 ]
  %3674 = phi float [ %2966, %3578 ], [ %2966, %3639 ], [ %2966, %3637 ], [ %2966, %3624 ], [ %3609, %3594 ]
  %3675 = phi float [ %2970, %3578 ], [ %2970, %3639 ], [ %2970, %3637 ], [ %2970, %3624 ], [ %3621, %3594 ]
  %3676 = and i32 %3586, 12
  %3677 = icmp eq i32 %3676, 12
  br i1 %3677, label %3784, label %3678

; <label>:3678                                    ; preds = %3667
  %3679 = and i32 %3586, 2097184
  %3680 = icmp eq i32 %3679, 2097184
  %3681 = select i1 %3680, float %3153, float 0.000000e+00
  %3682 = and i32 %3586, 4194336
  %3683 = icmp eq i32 %3682, 4194336
  %3684 = select i1 %3683, float %3153, float 0.000000e+00
  %3685 = and i32 %3586, 8388640
  %3686 = icmp eq i32 %3685, 8388640
  %3687 = select i1 %3686, float %3153, float 0.000000e+00
  %3688 = and i32 %3586, 2048
  %3689 = icmp ne i32 %3688, 0
  %3690 = select i1 %3689, float %3153, float 0.000000e+00
  %3691 = and i32 %3586, 8192
  %3692 = icmp ne i32 %3691, 0
  %3693 = select i1 %3692, float %3153, float 0.000000e+00
  %3694 = icmp eq i32 %3676, 0
  br i1 %3694, label %3695, label %3720

; <label>:3695                                    ; preds = %3678
  %3696 = fsub fast float %3454, %2955
  %3697 = fsub fast float %3455, %2956
  %3698 = fmul fast float %3681, %3696
  %3699 = fmul fast float %3681, %3697
  %3700 = fadd fast float %3698, %2955
  %3701 = fadd fast float %3699, %2956
  %3702 = fsub fast float %3456, %2968
  %3703 = fmul fast float %3684, %3702
  %3704 = fadd fast float %3703, %2968
  %3705 = fsub fast float %3453, %2967
  %3706 = fmul fast float %3687, %3705
  %3707 = fadd fast float %3706, %2967
  %3708 = fsub fast float %3556, %2969
  %3709 = fmul fast float %3690, %3708
  %3710 = fadd fast float %3709, %2969
  %3711 = fsub fast float %3553, %2963
  %3712 = fsub fast float %3554, %2964
  %3713 = fsub fast float %3555, %2965
  %3714 = fmul fast float %3693, %3711
  %3715 = fmul fast float %3693, %3712
  %3716 = fmul fast float %3693, %3713
  %3717 = fadd fast float %3714, %2963
  %3718 = fadd fast float %3715, %2964
  %3719 = fadd fast float %3716, %2965
  br label %3784

; <label>:3720                                    ; preds = %3678
  %3721 = icmp eq i32 %3676, 4
  br i1 %3721, label %3722, label %3762

; <label>:3722                                    ; preds = %3720
  %3723 = fmul fast float %3681, %3454
  %3724 = fmul fast float %3681, %3455
  %3725 = fadd fast float %3723, %2955
  %3726 = fadd fast float %3724, %2956
  %3727 = call float @dx.op.binary.f32(i32 36, float %2968, float %3456)  ; FMin(a,b)
  %3728 = fsub fast float %3727, %2968
  %3729 = fmul fast float %3728, %3684
  %3730 = fadd fast float %3729, %2968
  %3731 = fadd fast float %3453, %2967
  %3732 = fmul fast float %3731, 0x3FF337FAE0000000
  %3733 = fmul fast float %2967, %2967
  %3734 = fmul fast float %3453, %3453
  %3735 = fadd fast float %3734, %3733
  %3736 = fmul fast float %3735, 0x3FE5152B00000000
  %3737 = fmul fast float %2967, 0xBFCC1F85E0000000
  %3738 = fmul fast float %3737, %3453
  %3739 = fadd fast float %3738, 0xBFE1363700000000
  %3740 = fadd fast float %3739, %3732
  %3741 = fsub fast float %3740, %3736
  %3742 = fmul fast float %3731, 0x3FBA6F0D00000000
  %3743 = fmul fast float %3735, 0x3FD0432880000000
  %3744 = fmul fast float %2967, 0xBFEF110800000000
  %3745 = fmul fast float %3744, %3453
  %3746 = fadd fast float %3745, 1.000000e+00
  %3747 = fsub fast float %3746, %3742
  %3748 = fadd fast float %3747, %3743
  %3749 = fdiv fast float %3741, %3748
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fsub fast float %3750, %2967
  %3752 = fmul fast float %3751, %3687
  %3753 = fadd fast float %3752, %2967
  %3754 = fmul fast float %3690, %3556
  %3755 = fadd fast float %3754, %2969
  %3756 = fmul fast float %3693, %3553
  %3757 = fmul fast float %3693, %3554
  %3758 = fmul fast float %3693, %3555
  %3759 = fadd fast float %3756, %2963
  %3760 = fadd fast float %3757, %2964
  %3761 = fadd fast float %3758, %2965
  br label %3784

; <label>:3762                                    ; preds = %3720
  %3763 = icmp eq i32 %3676, 8
  br i1 %3763, label %3764, label %3784

; <label>:3764                                    ; preds = %3762
  %3765 = fmul fast float %3681, %3454
  %3766 = fmul fast float %3681, %3455
  %3767 = fadd fast float %3765, %2955
  %3768 = fadd fast float %3766, %2956
  %3769 = call float @dx.op.binary.f32(i32 36, float %2968, float %3456)  ; FMin(a,b)
  %3770 = fsub fast float %3769, %2968
  %3771 = fmul fast float %3770, %3684
  %3772 = fadd fast float %3771, %2968
  %3773 = fsub fast float %3453, %2967
  %3774 = fmul fast float %3687, %3773
  %3775 = fadd fast float %3774, %2967
  %3776 = fmul fast float %3690, %3556
  %3777 = fadd fast float %3776, %2969
  %3778 = fmul fast float %3693, %3553
  %3779 = fmul fast float %3693, %3554
  %3780 = fmul fast float %3693, %3555
  %3781 = fadd fast float %3778, %2963
  %3782 = fadd fast float %3779, %2964
  %3783 = fadd fast float %3780, %2965
  br label %3784

; <label>:3784                                    ; preds = %3764, %3762, %3722, %3695, %3667, %3152, %2971, %2954
  %3785 = phi float [ %2955, %3667 ], [ %2955, %3152 ], [ %2955, %2954 ], [ %2955, %2971 ], [ %3700, %3695 ], [ %3725, %3722 ], [ %2955, %3762 ], [ %3767, %3764 ]
  %3786 = phi float [ %2956, %3667 ], [ %2956, %3152 ], [ %2956, %2954 ], [ %2956, %2971 ], [ %3701, %3695 ], [ %3726, %3722 ], [ %2956, %3762 ], [ %3768, %3764 ]
  %3787 = phi float [ %3668, %3667 ], [ %2957, %3152 ], [ %2957, %2954 ], [ %2957, %2971 ], [ %3668, %3695 ], [ %3668, %3722 ], [ %3668, %3762 ], [ %3668, %3764 ]
  %3788 = phi float [ %3669, %3667 ], [ %2958, %3152 ], [ %2958, %2954 ], [ %2958, %2971 ], [ %3669, %3695 ], [ %3669, %3722 ], [ %3669, %3762 ], [ %3669, %3764 ]
  %3789 = phi float [ %3670, %3667 ], [ %2959, %3152 ], [ %2959, %2954 ], [ %2959, %2971 ], [ %3670, %3695 ], [ %3670, %3722 ], [ %3670, %3762 ], [ %3670, %3764 ]
  %3790 = phi float [ %3671, %3667 ], [ %2960, %3152 ], [ %2960, %2954 ], [ %2960, %2971 ], [ %3671, %3695 ], [ %3671, %3722 ], [ %3671, %3762 ], [ %3671, %3764 ]
  %3791 = phi float [ %3672, %3667 ], [ %2961, %3152 ], [ %2961, %2954 ], [ %2961, %2971 ], [ %3672, %3695 ], [ %3672, %3722 ], [ %3672, %3762 ], [ %3672, %3764 ]
  %3792 = phi float [ %3673, %3667 ], [ %2962, %3152 ], [ %2962, %2954 ], [ %2962, %2971 ], [ %3673, %3695 ], [ %3673, %3722 ], [ %3673, %3762 ], [ %3673, %3764 ]
  %3793 = phi float [ %2963, %3667 ], [ %2963, %3152 ], [ %2963, %2954 ], [ %2963, %2971 ], [ %3717, %3695 ], [ %3759, %3722 ], [ %2963, %3762 ], [ %3781, %3764 ]
  %3794 = phi float [ %2964, %3667 ], [ %2964, %3152 ], [ %2964, %2954 ], [ %2964, %2971 ], [ %3718, %3695 ], [ %3760, %3722 ], [ %2964, %3762 ], [ %3782, %3764 ]
  %3795 = phi float [ %2965, %3667 ], [ %2965, %3152 ], [ %2965, %2954 ], [ %2965, %2971 ], [ %3719, %3695 ], [ %3761, %3722 ], [ %2965, %3762 ], [ %3783, %3764 ]
  %3796 = phi float [ %3674, %3667 ], [ %2966, %3152 ], [ %2966, %2954 ], [ %2966, %2971 ], [ %3674, %3695 ], [ %3674, %3722 ], [ %3674, %3762 ], [ %3674, %3764 ]
  %3797 = phi float [ %2967, %3667 ], [ %2967, %3152 ], [ %2967, %2954 ], [ %2967, %2971 ], [ %3707, %3695 ], [ %3753, %3722 ], [ %2967, %3762 ], [ %3775, %3764 ]
  %3798 = phi float [ %2968, %3667 ], [ %2968, %3152 ], [ %2968, %2954 ], [ %2968, %2971 ], [ %3704, %3695 ], [ %3730, %3722 ], [ %2968, %3762 ], [ %3772, %3764 ]
  %3799 = phi float [ %2969, %3667 ], [ %2969, %3152 ], [ %2969, %2954 ], [ %2969, %2971 ], [ %3710, %3695 ], [ %3755, %3722 ], [ %2969, %3762 ], [ %3777, %3764 ]
  %3800 = phi float [ %3675, %3667 ], [ %2970, %3152 ], [ %2970, %2954 ], [ %2970, %2971 ], [ %3675, %3695 ], [ %3675, %3722 ], [ %3675, %3762 ], [ %3675, %3764 ]
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = call float @dx.op.dot2.f32(i32 54, float %3785, float %3786, float %3785, float %3786)  ; Dot2(ax,ay,bx,by)
  %3804 = fmul fast float %3803, 0x3FE3333340000000
  %3805 = fsub fast float 1.000000e+00, %3804
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3786, float %3805, float %3785, float %3786, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 25, float %3806)  ; Rsqrt(value)
  %3808 = fmul fast float %3807, %3785
  %3809 = fmul fast float %3807, %3786
  %3810 = fmul fast float %3805, %3807
  %3811 = fmul fast float %3810, %128
  %3812 = fmul fast float %3810, %129
  %3813 = fmul fast float %3810, %130
  %3814 = fmul fast float %3808, %92
  %3815 = fmul fast float %3808, %93
  %3816 = fmul fast float %3808, %94
  %3817 = fadd fast float %3811, %3814
  %3818 = fadd fast float %3812, %3815
  %3819 = fadd fast float %3813, %3816
  %3820 = fmul fast float %140, %3809
  %3821 = fmul fast float %141, %3809
  %3822 = fmul fast float %142, %3809
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = fadd fast float %3819, %3822
  %3826 = call float @dx.op.dot3.f32(i32 55, float %3823, float %3824, float %3825, float %3823, float %3824, float %3825)  ; Dot3(ax,ay,az,bx,by,bz)
  %3827 = call float @dx.op.unary.f32(i32 25, float %3826)  ; Rsqrt(value)
  %3828 = fmul fast float %3823, %3827
  %3829 = fmul fast float %3824, %3827
  %3830 = fmul fast float %3825, %3827
  %3831 = icmp eq i32 %63, 65535
  br i1 %3831, label %4399, label %3832

; <label>:3832                                    ; preds = %3784
  %3833 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3834 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3835 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3836 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3837 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3838 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3839 = fadd fast float %3833, %64
  %3840 = fadd fast float %3834, %65
  %3841 = fadd fast float %3835, %66
  %3842 = fadd fast float %3836, %64
  %3843 = fadd fast float %3837, %65
  %3844 = fadd fast float %3838, %66
  %3845 = mul i32 %63, 48
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = add i32 %3845, 16
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = add i32 %3845, 32
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = bitcast float %3860 to i32
  %3862 = fmul fast float %3847, %64
  %3863 = fmul fast float %3848, %65
  %3864 = fmul fast float %3849, %66
  %3865 = fsub fast float %3862, %3852
  %3866 = fsub fast float %3863, %3853
  %3867 = fsub fast float %3864, %3854
  %3868 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = fmul fast float %3868, %3857
  %3872 = fmul fast float %3869, %3858
  %3873 = fmul fast float %3870, %3859
  %3874 = fadd fast float %3857, -1.000000e+00
  %3875 = fadd fast float %3858, -1.000000e+00
  %3876 = fadd fast float %3859, -1.000000e+00
  %3877 = call float @dx.op.unary.f32(i32 27, float %3871)  ; Round_ni(value)
  %3878 = call float @dx.op.unary.f32(i32 27, float %3872)  ; Round_ni(value)
  %3879 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3880 = call float @dx.op.binary.f32(i32 36, float %3877, float %3874)  ; FMin(a,b)
  %3881 = call float @dx.op.binary.f32(i32 36, float %3878, float %3875)  ; FMin(a,b)
  %3882 = call float @dx.op.binary.f32(i32 36, float %3879, float %3876)  ; FMin(a,b)
  %3883 = fmul fast float %3882, %3858
  %3884 = fadd fast float %3883, %3881
  %3885 = fmul fast float %3884, %3857
  %3886 = fadd fast float %3885, %3880
  %3887 = fptosi float %3886 to i32
  %3888 = add nsw i32 %3887, %3861
  %3889 = shl nsw i32 %3888, 2
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = lshr i32 %3891, 16
  %3893 = icmp eq i32 %3892, 0
  br i1 %3893, label %4365, label %3894

; <label>:3894                                    ; preds = %3832
  br label %3895

; <label>:3895                                    ; preds = %4019, %3894
  %3896 = phi i32 [ %3921, %4019 ], [ %3892, %3894 ]
  %3897 = phi float [ %4020, %4019 ], [ 0.000000e+00, %3894 ]
  %3898 = phi float [ %4021, %4019 ], [ %3802, %3894 ]
  %3899 = phi float [ %4022, %4019 ], [ %3800, %3894 ]
  %3900 = phi float [ %4023, %4019 ], [ 0.000000e+00, %3894 ]
  %3901 = phi float [ %4024, %4019 ], [ 0.000000e+00, %3894 ]
  %3902 = phi float [ %4025, %4019 ], [ %3793, %3894 ]
  %3903 = phi float [ %4026, %4019 ], [ %3794, %3894 ]
  %3904 = phi float [ %4027, %4019 ], [ %3795, %3894 ]
  %3905 = phi float [ %4028, %4019 ], [ %3790, %3894 ]
  %3906 = phi float [ %4029, %4019 ], [ %3791, %3894 ]
  %3907 = phi float [ %4030, %4019 ], [ %3792, %3894 ]
  %3908 = phi float [ %4031, %4019 ], [ %3828, %3894 ]
  %3909 = phi float [ %4032, %4019 ], [ %3829, %3894 ]
  %3910 = phi float [ %4033, %4019 ], [ %3830, %3894 ]
  %3911 = phi float [ %4034, %4019 ], [ %3798, %3894 ]
  %3912 = phi float [ %4035, %4019 ], [ %3797, %3894 ]
  %3913 = phi float [ %4036, %4019 ], [ 0.000000e+00, %3894 ]
  %3914 = phi float [ %4037, %4019 ], [ %3796, %3894 ]
  %3915 = phi float [ %4038, %4019 ], [ %3787, %3894 ]
  %3916 = phi float [ %4039, %4019 ], [ %3788, %3894 ]
  %3917 = phi float [ %4040, %4019 ], [ %3789, %3894 ]
  %3918 = shl nuw nsw i32 %3896, 2
  %3919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.i32 %3919, 0
  %3921 = lshr i32 %3920, 16
  %3922 = shl i32 %3920, 8
  %3923 = and i32 %3922, 16776960
  %3924 = or i32 %3923, 48
  %3925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3929 = or i32 %3923, 64
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.i32 %3930, 1
  %3933 = or i32 %3923, 80
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3936 = extractvalue %dx.types.ResRet.f32 %3934, 3
  %3937 = or i32 %3923, 96
  %3938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3938, 3
  %3943 = or i32 %3923, 112
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3946 = or i32 %3923, 128
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = or i32 %3923, 144
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = or i32 %3923, 160
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = or i32 %3923, 192
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = or i32 %3923, 208
  %3968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.f32 %3968, 0
  %3970 = or i32 %3923, 248
  %3971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.ResRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.ResRet.f32 %3974, 2
  %3978 = extractvalue %dx.types.ResRet.f32 %3974, 3
  %3979 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3980 = or i32 %3923, 16
  %3981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %3986 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3987 = or i32 %3923, 32
  %3988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.ResRet.f32 %3988, 1
  %3991 = extractvalue %dx.types.ResRet.f32 %3988, 2
  %3992 = extractvalue %dx.types.ResRet.f32 %3988, 3
  %3993 = call float @dx.op.dot4.f32(i32 56, float %3989, float %3990, float %3991, float %3992, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3994 = call float @dx.op.unary.f32(i32 27, float %3979)  ; Round_ni(value)
  %3995 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %3996 = call float @dx.op.unary.f32(i32 27, float %3986)  ; Round_ni(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3999 = call float @dx.op.unary.f32(i32 27, float %3998)  ; Round_ni(value)
  %4000 = fadd fast float %3997, %3995
  %4001 = fadd fast float %4000, %3999
  %4002 = fcmp fast oeq float %4001, 0.000000e+00
  %4003 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4004 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4005 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4006 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4007 = fsub fast float %4003, %3979
  %4008 = fsub fast float %4005, %3979
  %4009 = fsub fast float %4004, %3986
  %4010 = fsub fast float %4006, %3986
  %4011 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4014 = fadd fast float %4013, %4011
  %4015 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4017 = fcmp fast ogt float %4015, %4016
  %4018 = and i1 %4002, %4017
  br i1 %4018, label %4042, label %4019

; <label>:4019                                    ; preds = %4351, %4125, %4042, %3895
  %4020 = phi float [ %3897, %4042 ], [ %4128, %4125 ], [ %4128, %4351 ], [ %3897, %3895 ]
  %4021 = phi float [ %3898, %4042 ], [ %3898, %4125 ], [ %4327, %4351 ], [ %3898, %3895 ]
  %4022 = phi float [ %3899, %4042 ], [ %3899, %4125 ], [ %4325, %4351 ], [ %3899, %3895 ]
  %4023 = phi float [ %3900, %4042 ], [ %3900, %4125 ], [ %4252, %4351 ], [ %3900, %3895 ]
  %4024 = phi float [ %3901, %4042 ], [ %3901, %4125 ], [ %4250, %4351 ], [ %3901, %3895 ]
  %4025 = phi float [ %3902, %4042 ], [ %3902, %4125 ], [ %4295, %4351 ], [ %3902, %3895 ]
  %4026 = phi float [ %3903, %4042 ], [ %3903, %4125 ], [ %4296, %4351 ], [ %3903, %3895 ]
  %4027 = phi float [ %3904, %4042 ], [ %3904, %4125 ], [ %4297, %4351 ], [ %3904, %3895 ]
  %4028 = phi float [ %3905, %4042 ], [ %3905, %4125 ], [ %4361, %4351 ], [ %3905, %3895 ]
  %4029 = phi float [ %3906, %4042 ], [ %3906, %4125 ], [ %4362, %4351 ], [ %3906, %3895 ]
  %4030 = phi float [ %3907, %4042 ], [ %3907, %4125 ], [ %4363, %4351 ], [ %3907, %3895 ]
  %4031 = phi float [ %3908, %4042 ], [ %3908, %4125 ], [ %4231, %4351 ], [ %3908, %3895 ]
  %4032 = phi float [ %3909, %4042 ], [ %3909, %4125 ], [ %4232, %4351 ], [ %3909, %3895 ]
  %4033 = phi float [ %3910, %4042 ], [ %3910, %4125 ], [ %4233, %4351 ], [ %3910, %3895 ]
  %4034 = phi float [ %3911, %4042 ], [ %3911, %4125 ], [ %4305, %4351 ], [ %3911, %3895 ]
  %4035 = phi float [ %3912, %4042 ], [ %3912, %4125 ], [ %4302, %4351 ], [ %3912, %3895 ]
  %4036 = phi float [ %3913, %4042 ], [ %3913, %4125 ], [ %4299, %4351 ], [ %3913, %3895 ]
  %4037 = phi float [ %3914, %4042 ], [ %3914, %4125 ], [ %4248, %4351 ], [ %3914, %3895 ]
  %4038 = phi float [ %3915, %4042 ], [ %3915, %4125 ], [ %4243, %4351 ], [ %3915, %3895 ]
  %4039 = phi float [ %3916, %4042 ], [ %3916, %4125 ], [ %4244, %4351 ], [ %3916, %3895 ]
  %4040 = phi float [ %3917, %4042 ], [ %3917, %4125 ], [ %4245, %4351 ], [ %3917, %3895 ]
  %4041 = icmp eq i32 %3921, 0
  br i1 %4041, label %4364, label %3895

; <label>:4042                                    ; preds = %3895
  %4043 = extractvalue %dx.types.ResRet.f32 %3925, 3
  %4044 = extractvalue %dx.types.ResRet.f32 %3944, 3
  %4045 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %4049 = extractvalue %dx.types.ResRet.i32 %3930, 3
  %4050 = extractvalue %dx.types.ResRet.i32 %3930, 2
  %4051 = bitcast float %4043 to i32
  %4052 = add i32 %4049, 0
  %4053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4052, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4055 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4053, %dx.types.Handle %4054, float %3979, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float %4007, float %4009, float undef, float %4008, float %4010, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = fmul fast float %4056, %4048
  %4058 = fadd fast float %4057, %4047
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %3979, %3939
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3986, float %4060)  ; FMad(a,b,c)
  %4062 = fadd fast float %4061, %4046
  %4063 = fmul fast float %3979, %3941
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3986, float %4063)  ; FMad(a,b,c)
  %4065 = fadd fast float %4064, %4045
  %4066 = fmul fast float %4007, %3939
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4009, float %4066)  ; FMad(a,b,c)
  %4068 = fmul fast float %4007, %3941
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4009, float %4068)  ; FMad(a,b,c)
  %4070 = fmul fast float %4008, %3939
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4010, float %4070)  ; FMad(a,b,c)
  %4072 = fmul fast float %4008, %3941
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4010, float %4072)  ; FMad(a,b,c)
  %4074 = add i32 %4050, 0
  %4075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4074, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4075, %dx.types.Handle %4054, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = and i32 %4051, 1024
  %4079 = icmp ne i32 %4078, 0
  %4080 = fcmp fast ogt float %4077, 0x3FE0101020000000
  %4081 = uitofp i1 %4080 to float
  %4082 = select i1 %4079, float %4081, float %4077
  %4083 = and i32 %4051, 8192
  %4084 = icmp ne i32 %4083, 0
  %4085 = select i1 %4084, float %4044, float 1.000000e+00
  %4086 = fmul fast float %3979, 2.000000e+00
  %4087 = fadd fast float %4086, -1.000000e+00
  %4088 = call float @dx.op.unary.f32(i32 6, float %4087)  ; FAbs(value)
  %4089 = fmul fast float %4088, %3972
  %4090 = fsub fast float %4089, %3972
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %3986, 2.000000e+00
  %4093 = fadd fast float %4092, -1.000000e+00
  %4094 = call float @dx.op.unary.f32(i32 6, float %4093)  ; FAbs(value)
  %4095 = fmul fast float %4094, %3973
  %4096 = fsub fast float %4095, %3973
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fmul fast float %3998, %3935
  %4099 = fsub fast float %4098, %3935
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4059, %4085
  %4102 = fmul fast float %4101, %4056
  %4103 = fmul fast float %4102, %4091
  %4104 = fmul fast float %4103, %4082
  %4105 = fmul fast float %4104, %4097
  %4106 = fmul fast float %4105, %4100
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4110 = fsub fast float %4015, %4109
  %4111 = fmul fast float %4110, %4108
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = fmul fast float %4106, %3936
  %4114 = fadd fast float %4106, %3936
  %4115 = fmul fast float %4114, %3945
  %4116 = fsub fast float %4115, %3945
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = and i32 %4051, 128
  %4119 = icmp ne i32 %4118, 0
  %4120 = select i1 %4119, float %4117, float %4113
  %4121 = fmul fast float %4120, %4112
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = fcmp fast ugt float %4121, %4123
  br i1 %4124, label %4125, label %4019

; <label>:4125                                    ; preds = %4042
  %4126 = select i1 %4084, float %4121, float 0.000000e+00
  %4127 = fadd fast float %4126, %3897
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  br i1 %4084, label %4019, label %4129

; <label>:4129                                    ; preds = %4125
  %4130 = and i32 %4051, 4
  %4131 = and i32 %4051, 8
  %4132 = add i32 %3931, 0
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4132, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4133, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = extractvalue %dx.types.ResRet.f32 %4135, 3
  %4140 = bitcast float %3957 to i32
  %4141 = and i32 %4140, 255
  %4142 = uitofp i32 %4141 to float
  %4143 = lshr i32 %4140, 8
  %4144 = and i32 %4143, 255
  %4145 = uitofp i32 %4144 to float
  %4146 = fmul fast float %4139, %4142
  %4147 = fadd fast float %4146, %4145
  %4148 = fmul fast float %4147, 0x3F70101000000000
  %4149 = add i32 %3932, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = bitcast float %3951 to i32
  %4157 = and i32 %4156, 255
  %4158 = uitofp i32 %4157 to float
  %4159 = lshr i32 %4156, 8
  %4160 = and i32 %4159, 255
  %4161 = uitofp i32 %4160 to float
  %4162 = lshr i32 %4156, 16
  %4163 = and i32 %4162, 255
  %4164 = uitofp i32 %4163 to float
  %4165 = fmul fast float %4164, 0x3F70101000000000
  %4166 = fmul fast float %4152, %4158
  %4167 = fadd fast float %4166, %4161
  %4168 = fmul fast float %4167, 0x3F70101000000000
  %4169 = fadd fast float %4153, -5.000000e-01
  %4170 = fadd fast float %4155, -5.000000e-01
  %4171 = fmul fast float %4169, %4165
  %4172 = fmul fast float %4170, %4165
  %4173 = fadd fast float %4171, 5.000000e-01
  %4174 = fadd fast float %4172, 5.000000e-01
  %4175 = fmul fast float %4136, %3960
  %4176 = fmul fast float %4137, %3961
  %4177 = fmul fast float %4138, %3962
  %4178 = fmul fast float %4173, 2.000000e+00
  %4179 = fadd fast float %4178, -1.000000e+00
  %4180 = fmul fast float %4174, 2.000000e+00
  %4181 = fadd fast float %4180, -1.000000e+00
  %4182 = fadd fast float %4179, %4181
  %4183 = fmul fast float %4182, 5.000000e-01
  %4184 = fsub fast float %4179, %4181
  %4185 = fmul fast float %4184, 5.000000e-01
  %4186 = call float @dx.op.unary.f32(i32 6, float %4183)  ; FAbs(value)
  %4187 = fsub fast float 1.000000e+00, %4186
  %4188 = call float @dx.op.unary.f32(i32 6, float %4185)  ; FAbs(value)
  %4189 = fsub fast float %4187, %4188
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4183, float %4185, float %4189, float %4183, float %4185, float %4189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = call float @dx.op.unary.f32(i32 25, float %4190)  ; Rsqrt(value)
  %4192 = fmul fast float %4183, %4191
  %4193 = fmul fast float %4185, %4191
  %4194 = fmul fast float %4191, %4189
  %4195 = fmul fast float %4194, %3926
  %4196 = fmul fast float %4194, %3927
  %4197 = fmul fast float %4194, %3928
  %4198 = fmul fast float %4192, %3948
  %4199 = fmul fast float %4192, %3949
  %4200 = fmul fast float %4192, %3950
  %4201 = fadd fast float %4198, %4195
  %4202 = fadd fast float %4199, %4196
  %4203 = fadd fast float %4200, %4197
  %4204 = fmul fast float %4193, %3954
  %4205 = fmul fast float %4193, %3955
  %4206 = fmul fast float %4193, %3956
  %4207 = fadd fast float %4201, %4204
  %4208 = fadd fast float %4202, %4205
  %4209 = fadd fast float %4203, %4206
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4208, float %4209, float %4207, float %4208, float %4209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call float @dx.op.unary.f32(i32 25, float %4210)  ; Rsqrt(value)
  %4212 = fmul fast float %4207, %4211
  %4213 = fmul fast float %4208, %4211
  %4214 = fmul fast float %4209, %4211
  %4215 = icmp ne i32 %4131, 0
  %4216 = select i1 %4215, float 1.000000e+00, float 0.000000e+00
  %4217 = fmul fast float %4121, %4216
  %4218 = and i32 %4051, 1
  %4219 = icmp eq i32 %4218, 0
  br i1 %4219, label %4220, label %4224

; <label>:4220                                    ; preds = %4129
  %4221 = fsub fast float %4212, %3908
  %4222 = fsub fast float %4213, %3909
  %4223 = fsub fast float %4214, %3910
  br label %4224

; <label>:4224                                    ; preds = %4220, %4129
  %4225 = phi float [ %4221, %4220 ], [ %4212, %4129 ]
  %4226 = phi float [ %4222, %4220 ], [ %4213, %4129 ]
  %4227 = phi float [ %4223, %4220 ], [ %4214, %4129 ]
  %4228 = fmul float %4227, %4217
  %4229 = fmul float %4226, %4217
  %4230 = fmul float %4225, %4217
  %4231 = fadd fast float %4230, %3908
  %4232 = fadd fast float %4229, %3909
  %4233 = fadd fast float %4228, %3910
  %4234 = icmp ne i32 %4130, 0
  %4235 = select i1 %4234, float 1.000000e+00, float 0.000000e+00
  %4236 = fmul fast float %4121, %4235
  %4237 = fsub fast float %4175, %3915
  %4238 = fsub fast float %4176, %3916
  %4239 = fsub fast float %4177, %3917
  %4240 = fmul fast float %4237, %4236
  %4241 = fmul fast float %4238, %4236
  %4242 = fmul fast float %4239, %4236
  %4243 = fadd fast float %4240, %3915
  %4244 = fadd fast float %4241, %3916
  %4245 = fadd fast float %4242, %3917
  %4246 = fsub fast float %4148, %3914
  %4247 = fmul fast float %4246, %4236
  %4248 = fadd fast float %4247, %3914
  %4249 = fmul fast float %4236, %3901
  %4250 = fsub fast float %3901, %4249
  %4251 = fmul fast float %4236, %3900
  %4252 = fsub fast float %3900, %4251
  %4253 = bitcast float %3969 to i32
  %4254 = lshr i32 %4253, 16
  %4255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4254)  ; LegacyF16ToF32(value)
  %4256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.i32 %4256, 0
  %4258 = and i32 %4257, 1
  %4259 = icmp eq i32 %4258, 0
  br i1 %4259, label %4260, label %4285

; <label>:4260                                    ; preds = %4224
  %4261 = fadd fast float %4148, 0xBFB99999A0000000
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = fmul fast float %4262, 0x3FF1C71C80000000
  %4264 = fsub fast float 1.000000e+00, %4263
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = fmul fast float %4265, %4175
  %4267 = fmul fast float %4265, %4176
  %4268 = fmul fast float %4265, %4177
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = call float @dx.op.binary.f32(i32 35, float %4270, float %4271)  ; FMax(a,b)
  %4273 = call float @dx.op.binary.f32(i32 35, float %4269, float %4272)  ; FMax(a,b)
  %4274 = fcmp fast ogt float %4273, 0.000000e+00
  %4275 = bitcast float %4273 to i32
  %4276 = sub nsw i32 2129859010, %4275
  %4277 = bitcast i32 %4276 to float
  %4278 = select i1 %4274, float %4277, float 0.000000e+00
  %4279 = fmul fast float %4269, %4255
  %4280 = fmul fast float %4270, %4255
  %4281 = fmul fast float %4271, %4255
  %4282 = fmul fast float %4279, %4278
  %4283 = fmul fast float %4280, %4278
  %4284 = fmul fast float %4281, %4278
  br label %4285

; <label>:4285                                    ; preds = %4260, %4224
  %4286 = phi float [ %4255, %4224 ], [ %4282, %4260 ]
  %4287 = phi float [ %4255, %4224 ], [ %4283, %4260 ]
  %4288 = phi float [ %4255, %4224 ], [ %4284, %4260 ]
  %4289 = fsub fast float %4286, %3902
  %4290 = fsub fast float %4287, %3903
  %4291 = fsub fast float %4288, %3904
  %4292 = fmul fast float %4289, %4236
  %4293 = fmul fast float %4290, %4236
  %4294 = fmul fast float %4291, %4236
  %4295 = fadd fast float %4292, %3902
  %4296 = fadd fast float %4293, %3903
  %4297 = fadd fast float %4294, %3904
  %4298 = fadd fast float %4121, %3913
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = fsub fast float %4168, %3912
  %4301 = fmul fast float %4300, %4217
  %4302 = fadd fast float %4301, %3912
  %4303 = fsub fast float %4154, %3911
  %4304 = fmul fast float %4303, %4217
  %4305 = fadd fast float %4304, %3911
  %4306 = call float @dx.op.dot3.f32(i32 55, float %4175, float %4176, float %4177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4310 = fmul fast float %4309, %4306
  %4311 = fadd fast float %4310, %4308
  %4312 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4313 = bitcast float %3963 to i32
  %4314 = and i32 %4313, 65535
  %4315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4314)  ; LegacyF16ToF32(value)
  %4316 = lshr i32 %4313, 16
  %4317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4316)  ; LegacyF16ToF32(value)
  %4318 = fcmp fast oge float %4315, 0.000000e+00
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = select i1 %4318, float %4315, float %4320
  %4322 = fadd fast float %4321, %4317
  %4323 = fsub fast float %4312, %3899
  %4324 = fmul fast float %4323, %4121
  %4325 = fadd fast float %4324, %3899
  %4326 = fmul fast float %4322, %4121
  %4327 = call float @dx.op.binary.f32(i32 35, float %3898, float %4326)  ; FMax(a,b)
  %4328 = and i32 %4051, 16
  %4329 = icmp eq i32 %4328, 0
  br i1 %4329, label %4351, label %4330

; <label>:4330                                    ; preds = %4285
  %4331 = add i32 %3966, 0
  %4332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4332, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.ResRet.f32 %4333, 2
  %4337 = and i32 %4253, 65535
  %4338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4337)  ; LegacyF16ToF32(value)
  %4339 = fmul fast float %4334, %3960
  %4340 = fmul fast float %4335, %3961
  %4341 = fmul fast float %4336, %3962
  %4342 = and i32 %4051, 16384
  %4343 = icmp ne i32 %4342, 0
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = select i1 %4343, float %4345, float 1.000000e+00
  %4347 = fmul fast float %4346, %4338
  %4348 = fmul fast float %4339, %4347
  %4349 = fmul fast float %4340, %4347
  %4350 = fmul fast float %4341, %4347
  br label %4351

; <label>:4351                                    ; preds = %4330, %4285
  %4352 = phi float [ %4348, %4330 ], [ 0.000000e+00, %4285 ]
  %4353 = phi float [ %4349, %4330 ], [ 0.000000e+00, %4285 ]
  %4354 = phi float [ %4350, %4330 ], [ 0.000000e+00, %4285 ]
  %4355 = fsub fast float %4352, %3905
  %4356 = fsub fast float %4353, %3906
  %4357 = fsub fast float %4354, %3907
  %4358 = fmul fast float %4355, %4121
  %4359 = fmul fast float %4356, %4121
  %4360 = fmul fast float %4357, %4121
  %4361 = fadd fast float %4358, %3905
  %4362 = fadd fast float %4359, %3906
  %4363 = fadd fast float %4360, %3907
  br label %4019

; <label>:4364                                    ; preds = %4019
  br label %4365

; <label>:4365                                    ; preds = %4364, %3832
  %4366 = phi float [ 0.000000e+00, %3832 ], [ %4020, %4364 ]
  %4367 = phi float [ %3802, %3832 ], [ %4021, %4364 ]
  %4368 = phi float [ %3800, %3832 ], [ %4022, %4364 ]
  %4369 = phi float [ 0.000000e+00, %3832 ], [ %4023, %4364 ]
  %4370 = phi float [ 0.000000e+00, %3832 ], [ %4024, %4364 ]
  %4371 = phi float [ %3793, %3832 ], [ %4025, %4364 ]
  %4372 = phi float [ %3794, %3832 ], [ %4026, %4364 ]
  %4373 = phi float [ %3795, %3832 ], [ %4027, %4364 ]
  %4374 = phi float [ %3790, %3832 ], [ %4028, %4364 ]
  %4375 = phi float [ %3791, %3832 ], [ %4029, %4364 ]
  %4376 = phi float [ %3792, %3832 ], [ %4030, %4364 ]
  %4377 = phi float [ %3828, %3832 ], [ %4031, %4364 ]
  %4378 = phi float [ %3829, %3832 ], [ %4032, %4364 ]
  %4379 = phi float [ %3830, %3832 ], [ %4033, %4364 ]
  %4380 = phi float [ %3798, %3832 ], [ %4034, %4364 ]
  %4381 = phi float [ %3797, %3832 ], [ %4035, %4364 ]
  %4382 = phi float [ 0.000000e+00, %3832 ], [ %4036, %4364 ]
  %4383 = phi float [ %3796, %3832 ], [ %4037, %4364 ]
  %4384 = phi float [ %3787, %3832 ], [ %4038, %4364 ]
  %4385 = phi float [ %3788, %3832 ], [ %4039, %4364 ]
  %4386 = phi float [ %3789, %3832 ], [ %4040, %4364 ]
  %4387 = call float @dx.op.dot3.f32(i32 55, float %4377, float %4378, float %4379, float %4377, float %4378, float %4379)  ; Dot3(ax,ay,az,bx,by,bz)
  %4388 = call float @dx.op.unary.f32(i32 25, float %4387)  ; Rsqrt(value)
  %4389 = fmul fast float %4388, %4377
  %4390 = fmul fast float %4388, %4378
  %4391 = fmul fast float %4388, %4379
  %4392 = fadd fast float %4382, %1306
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4391, float %4389, float %4390, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4395 = call float @dx.op.unary.f32(i32 25, float %4394)  ; Rsqrt(value)
  %4396 = fmul fast float %4395, %4389
  %4397 = fmul fast float %4395, %4390
  %4398 = fmul fast float %4395, %4391
  br label %4399

; <label>:4399                                    ; preds = %4365, %3784
  %4400 = phi float [ %4396, %4365 ], [ %3828, %3784 ]
  %4401 = phi float [ %4397, %4365 ], [ %3829, %3784 ]
  %4402 = phi float [ %4398, %4365 ], [ %3830, %3784 ]
  %4403 = phi float [ %4384, %4365 ], [ %3787, %3784 ]
  %4404 = phi float [ %4385, %4365 ], [ %3788, %3784 ]
  %4405 = phi float [ %4386, %4365 ], [ %3789, %3784 ]
  %4406 = phi float [ %4374, %4365 ], [ %3790, %3784 ]
  %4407 = phi float [ %4375, %4365 ], [ %3791, %3784 ]
  %4408 = phi float [ %4376, %4365 ], [ %3792, %3784 ]
  %4409 = phi float [ %4371, %4365 ], [ %3793, %3784 ]
  %4410 = phi float [ %4372, %4365 ], [ %3794, %3784 ]
  %4411 = phi float [ %4373, %4365 ], [ %3795, %3784 ]
  %4412 = phi float [ %4383, %4365 ], [ %3796, %3784 ]
  %4413 = phi float [ %4393, %4365 ], [ %1306, %3784 ]
  %4414 = phi float [ %4381, %4365 ], [ %3797, %3784 ]
  %4415 = phi float [ %4380, %4365 ], [ %3798, %3784 ]
  %4416 = phi float [ %4370, %4365 ], [ 0.000000e+00, %3784 ]
  %4417 = phi float [ %4369, %4365 ], [ 0.000000e+00, %3784 ]
  %4418 = phi float [ %4366, %4365 ], [ 0.000000e+00, %3784 ]
  %4419 = phi float [ %4367, %4365 ], [ %3802, %3784 ]
  %4420 = phi float [ %4368, %4365 ], [ %3800, %3784 ]
  %4421 = fadd fast float %4412, 0xBFB99999A0000000
  %4422 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4423 = fmul fast float %4422, 0x3FF1C71C80000000
  %4424 = call float @dx.op.binary.f32(i32 36, float %4412, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4425 = fsub fast float 1.000000e+00, %4423
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = fmul fast float %4426, %4403
  %4428 = fmul fast float %4426, %4404
  %4429 = fmul fast float %4426, %4405
  %4430 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4433 = fmul fast float %4423, %4403
  %4434 = fmul fast float %4423, %4404
  %4435 = fmul fast float %4423, %4405
  %4436 = fadd fast float %4433, %4424
  %4437 = fadd fast float %4434, %4424
  %4438 = fadd fast float %4435, %4424
  %4439 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.i32 %4443, 0
  %4445 = and i32 %4444, 1
  %4446 = icmp eq i32 %4445, 0
  br i1 %4446, label %4461, label %4447

; <label>:4447                                    ; preds = %4399
  %4448 = call float @dx.op.binary.f32(i32 35, float %4431, float %4432)  ; FMax(a,b)
  %4449 = call float @dx.op.binary.f32(i32 35, float %4430, float %4448)  ; FMax(a,b)
  %4450 = fcmp fast ogt float %4449, 0.000000e+00
  %4451 = bitcast float %4449 to i32
  %4452 = sub nsw i32 2129859010, %4451
  %4453 = bitcast i32 %4452 to float
  %4454 = select i1 %4450, float %4453, float 0.000000e+00
  %4455 = fmul fast float %4430, %4409
  %4456 = fmul fast float %4431, %4410
  %4457 = fmul fast float %4432, %4411
  %4458 = fmul fast float %4455, %4454
  %4459 = fmul fast float %4456, %4454
  %4460 = fmul fast float %4457, %4454
  br label %4461

; <label>:4461                                    ; preds = %4447, %4399
  %4462 = phi float [ %4458, %4447 ], [ %4409, %4399 ]
  %4463 = phi float [ %4459, %4447 ], [ %4410, %4399 ]
  %4464 = phi float [ %4460, %4447 ], [ %4411, %4399 ]
  %4465 = fadd fast float %4430, 0xBFD51EB860000000
  %4466 = fadd fast float %4431, 0xBFD51EB860000000
  %4467 = fadd fast float %4432, 0xBFD51EB860000000
  %4468 = fmul fast float %4465, %4465
  %4469 = fmul fast float %4466, %4466
  %4470 = fmul fast float %4467, %4467
  %4471 = fmul fast float %4468, %4468
  %4472 = fmul fast float %4471, 1.000000e+02
  %4473 = fmul fast float %4469, %4469
  %4474 = fmul fast float %4473, 1.000000e+02
  %4475 = fmul fast float %4470, %4470
  %4476 = fmul fast float %4475, 1.000000e+02
  %4477 = fadd fast float %4472, 3.500000e+00
  %4478 = fadd fast float %4474, 3.500000e+00
  %4479 = fadd fast float %4476, 3.500000e+00
  %4480 = call float @dx.op.binary.f32(i32 35, float %4462, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4481 = call float @dx.op.binary.f32(i32 35, float %4463, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4482 = call float @dx.op.binary.f32(i32 35, float %4464, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4483 = fdiv fast float %4477, %4480
  %4484 = fdiv fast float %4478, %4481
  %4485 = fdiv fast float %4479, %4482
  %4486 = fmul fast float %3799, 0xBFF7154760000000
  %4487 = fmul fast float %4486, %4483
  %4488 = call float @dx.op.unary.f32(i32 21, float %4487)  ; Exp(value)
  %4489 = fmul fast float %4488, 2.500000e-01
  %4490 = fmul fast float %3799, 0xBFDEC709E0000000
  %4491 = fmul fast float %4490, %4483
  %4492 = call float @dx.op.unary.f32(i32 21, float %4491)  ; Exp(value)
  %4493 = fmul fast float %4492, 7.500000e-01
  %4494 = fmul fast float %4486, %4484
  %4495 = call float @dx.op.unary.f32(i32 21, float %4494)  ; Exp(value)
  %4496 = fmul fast float %4495, 2.500000e-01
  %4497 = fmul fast float %4490, %4484
  %4498 = call float @dx.op.unary.f32(i32 21, float %4497)  ; Exp(value)
  %4499 = fmul fast float %4498, 7.500000e-01
  %4500 = fmul fast float %4486, %4485
  %4501 = call float @dx.op.unary.f32(i32 21, float %4500)  ; Exp(value)
  %4502 = fmul fast float %4501, 2.500000e-01
  %4503 = fmul fast float %4490, %4485
  %4504 = call float @dx.op.unary.f32(i32 21, float %4503)  ; Exp(value)
  %4505 = fmul fast float %4504, 7.500000e-01
  %4506 = fadd fast float %4489, %4493
  %4507 = fadd fast float %4496, %4499
  %4508 = fadd fast float %4502, %4505
  %4509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.i32 %4509, 3
  %4511 = and i32 %4510, 8
  %4512 = icmp ne i32 %4511, 0
  %4513 = call float @dx.op.binary.f32(i32 35, float %4430, float %4403)  ; FMax(a,b)
  %4514 = call float @dx.op.binary.f32(i32 35, float %4431, float %4403)  ; FMax(a,b)
  %4515 = call float @dx.op.binary.f32(i32 35, float %4432, float %4403)  ; FMax(a,b)
  %4516 = call float @dx.op.dot3.f32(i32 55, float %4430, float %4431, float %4432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = select i1 %259, float %4403, float %4430
  %4518 = select i1 %259, float %4516, float %4431
  %4519 = select i1 %259, float 1.000000e+00, float %4432
  %4520 = select i1 %4512, float %4513, float %4517
  %4521 = select i1 %4512, float %4514, float %4518
  %4522 = select i1 %4512, float %4515, float %4519
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4527 = fadd fast float %4524, %200
  %4528 = fadd fast float %4525, %201
  %4529 = fadd fast float %4526, %202
  %4530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.f32 %4530, 0
  %4532 = extractvalue %dx.types.CBufRet.f32 %4530, 1
  %4533 = fsub fast float %4527, %4531
  %4534 = fsub fast float %4528, %4532
  %4535 = fmul fast float %4533, %4533
  %4536 = fmul fast float %4534, %4534
  %4537 = fadd fast float %4535, %4536
  %4538 = call float @dx.op.unary.f32(i32 24, float %4537)  ; Sqrt(value)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4530, 2
  %4540 = fcmp fast olt float %4538, %4539
  br i1 %4540, label %4541, label %4608

; <label>:4541                                    ; preds = %4461
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 0
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 0
  %4548 = extractvalue %dx.types.CBufRet.f32 %4542, 1
  %4549 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4550 = extractvalue %dx.types.CBufRet.f32 %4546, 1
  %4551 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4552 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4553 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4554 = fadd fast float %4551, %4527
  %4555 = fadd fast float %4552, %4528
  %4556 = fadd fast float %4553, %4529
  %4557 = fmul fast float %4554, %4543
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4545, float %4557)  ; FMad(a,b,c)
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4547, float %4558)  ; FMad(a,b,c)
  %4560 = fmul fast float %4554, %4548
  %4561 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4549, float %4560)  ; FMad(a,b,c)
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4550, float %4561)  ; FMad(a,b,c)
  %4563 = fsub fast float %4559, %4551
  %4564 = fsub fast float %4562, %4552
  %4565 = fsub fast float %4563, %4531
  %4566 = fadd fast float %4565, %4539
  %4567 = fsub fast float %4564, %4532
  %4568 = fadd fast float %4567, %4539
  %4569 = extractvalue %dx.types.CBufRet.f32 %4530, 3
  %4570 = fmul fast float %4566, %4569
  %4571 = fmul fast float %4568, %4569
  %4572 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4573 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4574 = fsub fast float 1.000000e+00, %4572
  %4575 = fsub fast float 1.000000e+00, %4573
  %4576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %4574, float %4575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = fcmp fast ugt float %4577, 0.000000e+00
  br i1 %4578, label %4579, label %4882

; <label>:4579                                    ; preds = %4541
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 2
  %4582 = fmul fast float %4581, %4577
  %4583 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4584 = fadd fast float %4583, %4582
  %4585 = extractvalue %dx.types.CBufRet.f32 %4546, 2
  %4586 = fadd fast float %4584, %4553
  %4587 = fmul fast float %4559, %4547
  %4588 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4550, float %4587)  ; FMad(a,b,c)
  %4589 = call float @dx.op.tertiary.f32(i32 46, float %4586, float %4585, float %4588)  ; FMad(a,b,c)
  %4590 = fsub fast float %4589, %4553
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 2
  %4593 = fsub fast float %4590, %4592
  %4594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4574, float %4575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.ResRet.f32 %4594, 2
  %4598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4574, float %4575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = fadd fast float %4599, %4595
  %4603 = fmul fast float %4602, 0x3F847AE140000000
  %4604 = fadd fast float %4600, %4596
  %4605 = fmul fast float %4604, 0x3F847AE140000000
  %4606 = fadd fast float %4601, %4597
  %4607 = fmul fast float %4606, 0x3F847AE140000000
  br label %4882

; <label>:4608                                    ; preds = %4461
  %4609 = and i32 %238, 1
  %4610 = icmp eq i32 %4609, 0
  br i1 %4610, label %4882, label %4611

; <label>:4611                                    ; preds = %4608
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 0
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4619 = extractvalue %dx.types.CBufRet.f32 %4614, 1
  %4620 = extractvalue %dx.types.CBufRet.f32 %4616, 1
  %4621 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4622 = extractvalue %dx.types.CBufRet.f32 %4614, 3
  %4623 = extractvalue %dx.types.CBufRet.f32 %4616, 3
  %4624 = fadd fast float %4621, %4527
  %4625 = fadd fast float %4622, %4528
  %4626 = fadd fast float %4623, %4529
  %4627 = fmul fast float %4624, %4613
  %4628 = call float @dx.op.tertiary.f32(i32 46, float %4625, float %4615, float %4627)  ; FMad(a,b,c)
  %4629 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4617, float %4628)  ; FMad(a,b,c)
  %4630 = fmul fast float %4624, %4618
  %4631 = call float @dx.op.tertiary.f32(i32 46, float %4625, float %4619, float %4630)  ; FMad(a,b,c)
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4620, float %4631)  ; FMad(a,b,c)
  %4633 = fsub fast float %4629, %4621
  %4634 = fsub fast float %4632, %4622
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.CBufRet.f32 %4635, 1
  %4638 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4639 = extractvalue %dx.types.CBufRet.f32 %4635, 3
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 3
  %4642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.i32 %4642, 0
  %4644 = extractvalue %dx.types.CBufRet.i32 %4642, 1
  %4645 = udiv i32 %4644, %4643
  %4646 = fsub fast float %4633, %4636
  %4647 = fsub fast float %4634, %4637
  %4648 = call float @dx.op.binary.f32(i32 35, float %4646, float 0.000000e+00)  ; FMax(a,b)
  %4649 = call float @dx.op.binary.f32(i32 35, float %4647, float 0.000000e+00)  ; FMax(a,b)
  %4650 = call float @dx.op.binary.f32(i32 36, float %4648, float %4638)  ; FMin(a,b)
  %4651 = call float @dx.op.binary.f32(i32 36, float %4649, float %4639)  ; FMin(a,b)
  %4652 = add i32 %4643, -1
  %4653 = add i32 %4645, -1
  %4654 = fmul fast float %4650, %4641
  %4655 = fmul fast float %4651, %4641
  %4656 = fptoui float %4654 to i32
  %4657 = fptoui float %4655 to i32
  %4658 = call i32 @dx.op.binary.i32(i32 40, i32 %4656, i32 %4652)  ; UMin(a,b)
  %4659 = call i32 @dx.op.binary.i32(i32 40, i32 %4657, i32 %4653)  ; UMin(a,b)
  %4660 = mul i32 %4659, %4643
  %4661 = add i32 %4660, %4658
  %4662 = shl i32 %4661, 2
  %4663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4662, i32 undef)  ; BufferLoad(srv,index,wot)
  %4664 = extractvalue %dx.types.ResRet.i32 %4663, 0
  %4665 = icmp eq i32 %4664, -1
  br i1 %4665, label %4882, label %4666

; <label>:4666                                    ; preds = %4611
  %4667 = mul i32 %4664, 148
  %4668 = add i32 %4667, 4
  %4669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = add i32 %4667, 8
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = add i32 %4667, 36
  %4675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4674, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = add i32 %4667, 60
  %4678 = add i32 %4667, 92
  %4679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.i32 %4679, 0
  %4681 = add i32 %4667, 116
  %4682 = fsub fast float %4633, %4670
  %4683 = fsub fast float %4634, %4673
  %4684 = fmul fast float %4641, %4682
  %4685 = fmul fast float %4641, %4683
  %4686 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4688 = fsub fast float 1.000000e+00, %4687
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 2
  %4691 = call float @dx.op.unary.f32(i32 83, float %4686)  ; DerivCoarseX(value)
  %4692 = call float @dx.op.unary.f32(i32 83, float %4688)  ; DerivCoarseX(value)
  %4693 = call float @dx.op.unary.f32(i32 84, float %4686)  ; DerivCoarseY(value)
  %4694 = call float @dx.op.unary.f32(i32 84, float %4688)  ; DerivCoarseY(value)
  %4695 = fmul fast float %4691, %4690
  %4696 = fmul fast float %4692, %4690
  %4697 = fmul fast float %4693, %4690
  %4698 = fmul fast float %4694, %4690
  %4699 = call float @dx.op.dot2.f32(i32 54, float %4697, float %4698, float %4697, float %4698)  ; Dot2(ax,ay,bx,by)
  %4700 = call float @dx.op.dot2.f32(i32 54, float %4695, float %4696, float %4695, float %4696)  ; Dot2(ax,ay,bx,by)
  %4701 = call float @dx.op.binary.f32(i32 35, float %4700, float %4699)  ; FMax(a,b)
  %4702 = call float @dx.op.unary.f32(i32 23, float %4701)  ; Log(value)
  %4703 = fmul fast float %4702, 5.000000e-01
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4706 = fadd fast float %4705, %4703
  %4707 = call float @dx.op.binary.f32(i32 35, float %4706, float 0.000000e+00)  ; FMax(a,b)
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 3
  %4710 = fadd fast float %4709, %4707
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 3
  %4713 = fadd fast float %4710, %4712
  %4714 = add i32 %4680, 0
  %4715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4716 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4715, i32 0)  ; GetDimensions(handle,mipLevel)
  %4717 = extractvalue %dx.types.Dimensions %4716, 0
  %4718 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4717)  ; FirstbitLo(value)
  %4719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.i32 %4719, 1
  %4721 = sub nsw i32 %4720, %4718
  %4722 = sitofp i32 %4721 to float
  %4723 = fsub fast float %4713, %4722
  %4724 = call float @dx.op.binary.f32(i32 35, float %4723, float 0.000000e+00)  ; FMax(a,b)
  %4725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4715, %dx.types.Handle %53, float %4686, float %4688, float %4676, float undef, i32 0, i32 0, i32 undef, float %4724)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4726 = extractvalue %dx.types.ResRet.f32 %4725, 0
  %4727 = fcmp ule float %4726, 0x3FE0101020000000
  %4728 = extractvalue %dx.types.CBufRet.i32 %4719, 0
  %4729 = and i32 %4728, 128
  %4730 = icmp ne i32 %4729, 0
  %4731 = and i1 %4727, %4730
  br i1 %4731, label %4882, label %4732

; <label>:4732                                    ; preds = %4666
  %4733 = add i32 %4667, 20
  %4734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4733, i32 undef)  ; BufferLoad(srv,index,wot)
  %4735 = extractvalue %dx.types.ResRet.f32 %4734, 0
  %4736 = add i32 %4667, 24
  %4737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4736, i32 undef)  ; BufferLoad(srv,index,wot)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = add i32 %4667, 40
  %4740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4739, i32 undef)  ; BufferLoad(srv,index,wot)
  %4741 = extractvalue %dx.types.ResRet.f32 %4740, 0
  %4742 = add i32 %4667, 96
  %4743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4742, i32 undef)  ; BufferLoad(srv,index,wot)
  %4744 = extractvalue %dx.types.ResRet.i32 %4743, 0
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4747 = fmul fast float %4746, %4686
  %4748 = fmul fast float %4746, %4688
  %4749 = extractvalue %dx.types.CBufRet.f32 %4745, 3
  %4750 = fadd fast float %4747, %4749
  %4751 = fadd fast float %4748, %4749
  %4752 = add i32 %4744, 0
  %4753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4754 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4753, i32 0)  ; GetDimensions(handle,mipLevel)
  %4755 = extractvalue %dx.types.Dimensions %4754, 0
  %4756 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4755)  ; FirstbitLo(value)
  %4757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.i32 %4757, 1
  %4759 = sub nsw i32 %4758, %4756
  %4760 = sitofp i32 %4759 to float
  %4761 = fsub fast float %4710, %4760
  %4762 = call float @dx.op.binary.f32(i32 35, float %4761, float 0.000000e+00)  ; FMax(a,b)
  %4763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4753, %dx.types.Handle %53, float %4750, float %4751, float %4741, float undef, i32 0, i32 0, i32 undef, float %4762)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = fmul fast float %4764, %4735
  %4766 = fadd fast float %4765, %4738
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.CBufRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 3
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 3
  %4775 = extractvalue %dx.types.CBufRet.f32 %4767, 3
  %4776 = fadd fast float %4772, %4633
  %4777 = fadd fast float %4774, %4634
  %4778 = fadd fast float %4766, %4775
  %4779 = fmul fast float %4776, %4768
  %4780 = call float @dx.op.tertiary.f32(i32 46, float %4777, float %4769, float %4779)  ; FMad(a,b,c)
  %4781 = call float @dx.op.tertiary.f32(i32 46, float %4778, float %4770, float %4780)  ; FMad(a,b,c)
  %4782 = fsub fast float %4781, %4775
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 2
  %4785 = fsub fast float %4782, %4784
  %4786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.i32 %4786, 0
  %4788 = call i32 @dx.op.binary.i32(i32 40, i32 %4664, i32 %4787)  ; UMin(a,b)
  %4789 = mul i32 %4788, 36
  %4790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4789, i32 undef)  ; BufferLoad(srv,index,wot)
  %4791 = extractvalue %dx.types.ResRet.i32 %4790, 0
  %4792 = add i32 %4789, 4
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  %4795 = fmul fast float %4794, %4686
  %4796 = fmul fast float %4794, %4688
  %4797 = extractvalue %dx.types.CBufRet.f32 %4793, 1
  %4798 = fadd fast float %4795, %4797
  %4799 = fadd fast float %4796, %4797
  %4800 = icmp eq i32 %4791, 0
  br i1 %4800, label %4869, label %4801

; <label>:4801                                    ; preds = %4732
  br label %4802

; <label>:4802                                    ; preds = %4859, %4801
  %4803 = phi float [ %4860, %4859 ], [ 0.000000e+00, %4801 ]
  %4804 = phi float [ %4861, %4859 ], [ 0.000000e+00, %4801 ]
  %4805 = phi float [ %4862, %4859 ], [ 0.000000e+00, %4801 ]
  %4806 = phi float [ %4863, %4859 ], [ 0.000000e+00, %4801 ]
  %4807 = phi float [ %4864, %4859 ], [ 0.000000e+00, %4801 ]
  %4808 = phi float [ %4865, %4859 ], [ 0.000000e+00, %4801 ]
  %4809 = phi i32 [ %4866, %4859 ], [ 0, %4801 ]
  %4810 = shl i32 %4809, 2
  %4811 = add i32 %4677, %4810
  %4812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4811, i32 undef)  ; BufferLoad(srv,index,wot)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = add i32 %4681, %4810
  %4815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.i32 %4815, 0
  %4817 = add i32 %4816, 0
  %4818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4817, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4819 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4818, i32 0)  ; GetDimensions(handle,mipLevel)
  %4820 = extractvalue %dx.types.Dimensions %4819, 0
  %4821 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4820)  ; FirstbitLo(value)
  %4822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.i32 %4822, 1
  %4824 = sub nsw i32 %4823, %4821
  %4825 = sitofp i32 %4824 to float
  %4826 = fsub fast float %4710, %4825
  %4827 = call float @dx.op.binary.f32(i32 35, float %4826, float 0.000000e+00)  ; FMax(a,b)
  %4828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4818, %dx.types.Handle %53, float %4798, float %4799, float %4813, float undef, i32 0, i32 0, i32 undef, float %4827)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = fcmp fast ogt float %4829, 0.000000e+00
  br i1 %4830, label %4831, label %4859

; <label>:4831                                    ; preds = %4802
  %4832 = add i32 %4792, %4810
  %4833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4832, i32 undef)  ; BufferLoad(srv,index,wot)
  %4834 = extractvalue %dx.types.ResRet.i32 %4833, 0
  %4835 = and i32 %4834, 32767
  %4836 = mul nuw nsw i32 %4835, 928
  %4837 = add nuw nsw i32 %4836, 48
  %4838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4837, i32 undef)  ; BufferLoad(srv,index,wot)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.ResRet.f32 %4838, 1
  %4841 = extractvalue %dx.types.ResRet.f32 %4838, 2
  %4842 = add nuw nsw i32 %4836, 60
  %4843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4842, i32 undef)  ; BufferLoad(srv,index,wot)
  %4844 = extractvalue %dx.types.ResRet.f32 %4843, 0
  %4845 = extractvalue %dx.types.ResRet.f32 %4843, 1
  %4846 = extractvalue %dx.types.ResRet.f32 %4843, 2
  %4847 = fmul fast float %4839, %4829
  %4848 = fmul fast float %4840, %4829
  %4849 = fmul fast float %4841, %4829
  %4850 = fadd fast float %4847, %4803
  %4851 = fadd fast float %4848, %4804
  %4852 = fadd fast float %4849, %4805
  %4853 = fmul fast float %4844, %4829
  %4854 = fmul fast float %4845, %4829
  %4855 = fmul fast float %4846, %4829
  %4856 = fadd fast float %4853, %4806
  %4857 = fadd fast float %4854, %4807
  %4858 = fadd fast float %4855, %4808
  br label %4859

; <label>:4859                                    ; preds = %4831, %4802
  %4860 = phi float [ %4850, %4831 ], [ %4803, %4802 ]
  %4861 = phi float [ %4851, %4831 ], [ %4804, %4802 ]
  %4862 = phi float [ %4852, %4831 ], [ %4805, %4802 ]
  %4863 = phi float [ %4856, %4831 ], [ %4806, %4802 ]
  %4864 = phi float [ %4857, %4831 ], [ %4807, %4802 ]
  %4865 = phi float [ %4858, %4831 ], [ %4808, %4802 ]
  %4866 = add nuw i32 %4809, 1
  %4867 = icmp eq i32 %4866, %4791
  br i1 %4867, label %4868, label %4802

; <label>:4868                                    ; preds = %4859
  br label %4869

; <label>:4869                                    ; preds = %4868, %4732
  %4870 = phi float [ 0.000000e+00, %4732 ], [ %4860, %4868 ]
  %4871 = phi float [ 0.000000e+00, %4732 ], [ %4861, %4868 ]
  %4872 = phi float [ 0.000000e+00, %4732 ], [ %4862, %4868 ]
  %4873 = phi float [ 0.000000e+00, %4732 ], [ %4863, %4868 ]
  %4874 = phi float [ 0.000000e+00, %4732 ], [ %4864, %4868 ]
  %4875 = phi float [ 0.000000e+00, %4732 ], [ %4865, %4868 ]
  %4876 = fadd fast float %4873, %4870
  %4877 = fmul fast float %4876, 0x3F847AE140000000
  %4878 = fadd fast float %4874, %4871
  %4879 = fmul fast float %4878, 0x3F847AE140000000
  %4880 = fadd fast float %4875, %4872
  %4881 = fmul fast float %4880, 0x3F847AE140000000
  br label %4882

; <label>:4882                                    ; preds = %4869, %4666, %4611, %4608, %4579, %4541
  %4883 = phi float [ %4593, %4579 ], [ -1.310720e+05, %4541 ], [ %4785, %4869 ], [ -1.310720e+05, %4611 ], [ -1.310720e+05, %4666 ], [ -1.310720e+05, %4608 ]
  %4884 = phi float [ %4603, %4579 ], [ 0.000000e+00, %4541 ], [ %4877, %4869 ], [ 0.000000e+00, %4611 ], [ 0.000000e+00, %4666 ], [ 0.000000e+00, %4608 ]
  %4885 = phi float [ %4605, %4579 ], [ 0.000000e+00, %4541 ], [ %4879, %4869 ], [ 0.000000e+00, %4611 ], [ 0.000000e+00, %4666 ], [ 0.000000e+00, %4608 ]
  %4886 = phi float [ %4607, %4579 ], [ 0.000000e+00, %4541 ], [ %4881, %4869 ], [ 0.000000e+00, %4611 ], [ 0.000000e+00, %4666 ], [ 0.000000e+00, %4608 ]
  %4887 = phi i1 [ true, %4579 ], [ false, %4541 ], [ true, %4869 ], [ false, %4611 ], [ false, %4666 ], [ false, %4608 ]
  %4888 = and i32 %238, 3
  %4889 = icmp eq i32 %4888, 1
  %4890 = select i1 %4889, float 1.000000e+00, float 0.000000e+00
  %4891 = fsub fast float %4883, %202
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = select i1 %4887, float %4892, float 1.000000e+00
  %4894 = fmul fast float %4893, %4890
  %4895 = icmp eq i32 %4888, 3
  %4896 = select i1 %4895, float 1.000000e+00, float %4894
  %4897 = call float @dx.op.binary.f32(i32 35, float %4418, float %4896)  ; FMax(a,b)
  %4898 = fcmp fast olt float %4896, 1.000000e+00
  %4899 = fcmp uge float %77, 0.000000e+00
  %4900 = and i1 %4899, %4898
  br i1 %4900, label %4901, label %4911

; <label>:4901                                    ; preds = %4882
  %4902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.ResRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.ResRet.f32 %4902, 2
  %4906 = fadd fast float %4903, %4897
  %4907 = fcmp ule float %76, 0.000000e+00
  %4908 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = select i1 %4907, float %4908, float 1.000000e+00
  %4910 = fmul fast float %4909, %4905
  br label %4911

; <label>:4911                                    ; preds = %4901, %4882
  %4912 = phi float [ %4906, %4901 ], [ %4897, %4882 ]
  %4913 = phi float [ %4904, %4901 ], [ 0.000000e+00, %4882 ]
  %4914 = phi float [ %4910, %4901 ], [ 0.000000e+00, %4882 ]
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = fcmp fast une float %4916, 0.000000e+00
  %4919 = fcmp fast une float %4917, 0.000000e+00
  %4920 = or i1 %4918, %4919
  br i1 %4920, label %4921, label %5480

; <label>:4921                                    ; preds = %4911
  br i1 %4918, label %4922, label %5195

; <label>:4922                                    ; preds = %4921
  %4923 = call float @dx.op.unary.f32(i32 23, float %4415)  ; Log(value)
  %4924 = fmul fast float %4923, 4.000000e+00
  %4925 = call float @dx.op.unary.f32(i32 21, float %4924)  ; Exp(value)
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 0
  %4928 = fmul fast float %4927, %64
  %4929 = fmul fast float %4927, %65
  %4930 = fmul fast float %4927, %66
  %4931 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4932 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4933 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4934 = call float @dx.op.unary.f32(i32 23, float %4931)  ; Log(value)
  %4935 = call float @dx.op.unary.f32(i32 23, float %4932)  ; Log(value)
  %4936 = call float @dx.op.unary.f32(i32 23, float %4933)  ; Log(value)
  %4937 = fmul fast float %4934, 4.000000e+00
  %4938 = fmul fast float %4935, 4.000000e+00
  %4939 = fmul fast float %4936, 4.000000e+00
  %4940 = call float @dx.op.unary.f32(i32 21, float %4937)  ; Exp(value)
  %4941 = call float @dx.op.unary.f32(i32 21, float %4938)  ; Exp(value)
  %4942 = call float @dx.op.unary.f32(i32 21, float %4939)  ; Exp(value)
  %4943 = fadd fast float %4941, %4940
  %4944 = fadd fast float %4943, %4942
  %4945 = fdiv fast float 1.000000e+00, %4944
  %4946 = fmul fast float %4945, %4940
  %4947 = fcmp fast ogt float %73, 0.000000e+00
  %4948 = fcmp fast ogt float %74, 0.000000e+00
  %4949 = fcmp fast ogt float %75, 0.000000e+00
  %4950 = fcmp fast olt float %73, 0.000000e+00
  %4951 = fcmp fast olt float %74, 0.000000e+00
  %4952 = fcmp fast olt float %75, 0.000000e+00
  %4953 = zext i1 %4947 to i32
  %4954 = zext i1 %4948 to i32
  %4955 = zext i1 %4949 to i32
  %4956 = zext i1 %4950 to i32
  %4957 = zext i1 %4951 to i32
  %4958 = zext i1 %4952 to i32
  %4959 = sub nsw i32 %4953, %4956
  %4960 = sub nsw i32 %4954, %4957
  %4961 = sub nsw i32 %4955, %4958
  %4962 = call float @dx.op.unary.f32(i32 83, float %4928)  ; DerivCoarseX(value)
  %4963 = call float @dx.op.unary.f32(i32 83, float %4929)  ; DerivCoarseX(value)
  %4964 = call float @dx.op.unary.f32(i32 83, float %4930)  ; DerivCoarseX(value)
  %4965 = call float @dx.op.unary.f32(i32 84, float %4928)  ; DerivCoarseY(value)
  %4966 = call float @dx.op.unary.f32(i32 84, float %4929)  ; DerivCoarseY(value)
  %4967 = call float @dx.op.unary.f32(i32 84, float %4930)  ; DerivCoarseY(value)
  %4968 = fcmp fast ole float %270, %4946
  %4969 = fmul fast float %4945, %4943
  %4970 = fcmp fast ole float %270, %4969
  %4971 = select i1 %4970, float %4930, float %4928
  %4972 = select i1 %4970, float %4928, float %4929
  %4973 = select i1 %4968, float %4929, float %4971
  %4974 = select i1 %4968, float %4930, float %4972
  %4975 = select i1 %4970, float %4964, float %4962
  %4976 = select i1 %4970, float %4962, float %4963
  %4977 = select i1 %4968, float %4963, float %4975
  %4978 = select i1 %4968, float %4964, float %4976
  %4979 = select i1 %4970, float %4967, float %4965
  %4980 = select i1 %4970, float %4965, float %4966
  %4981 = select i1 %4968, float %4966, float %4979
  %4982 = select i1 %4968, float %4967, float %4980
  %4983 = call float @dx.op.unary.f32(i32 27, float %4973)  ; Round_ni(value)
  %4984 = call float @dx.op.unary.f32(i32 27, float %4974)  ; Round_ni(value)
  %4985 = fptosi float %4983 to i32
  %4986 = fptosi float %4984 to i32
  %4987 = xor i32 %4986, %4985
  %4988 = sitofp i32 %4987 to float
  %4989 = fptosi float %4988 to i32
  %4990 = sitofp i32 %4989 to float
  %4991 = fmul fast float %4990, 0x3FE3C6EF40000000
  %4992 = frem fast float %4983, 2.560000e+02
  %4993 = frem fast float %4984, 2.560000e+02
  %4994 = fptoui float %4992 to i32
  %4995 = fptoui float %4993 to i32
  %4996 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4994, i32 %4995, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4997 = extractvalue %dx.types.ResRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.ResRet.f32 %4996, 1
  %4999 = extractvalue %dx.types.ResRet.f32 %4996, 2
  %5000 = fadd fast float %4997, %4991
  %5001 = fadd fast float %4998, %4991
  %5002 = fadd fast float %4999, %4991
  %5003 = call float @dx.op.unary.f32(i32 22, float %5000)  ; Frc(value)
  %5004 = call float @dx.op.unary.f32(i32 22, float %5001)  ; Frc(value)
  %5005 = call float @dx.op.unary.f32(i32 22, float %5002)  ; Frc(value)
  %5006 = fmul fast float %5005, 0x401921FB60000000
  %5007 = call float @dx.op.unary.f32(i32 13, float %5006)  ; Sin(value)
  %5008 = call float @dx.op.unary.f32(i32 12, float %5006)  ; Cos(value)
  %5009 = fsub fast float -0.000000e+00, %5008
  %5010 = fmul fast float %5008, %4973
  %5011 = call float @dx.op.tertiary.f32(i32 46, float %5007, float %4974, float %5010)  ; FMad(a,b,c)
  %5012 = fmul fast float %5007, %4973
  %5013 = call float @dx.op.tertiary.f32(i32 46, float %5009, float %4974, float %5012)  ; FMad(a,b,c)
  %5014 = fadd fast float %5011, %5003
  %5015 = fadd fast float %5013, %5004
  %5016 = extractvalue %dx.types.CBufRet.f32 %4926, 3
  %5017 = bitcast float %5016 to i32
  %5018 = icmp eq i32 %5017, 0
  br i1 %5018, label %5057, label %5019

; <label>:5019                                    ; preds = %4922
  %5020 = add i32 %5017, 0
  %5021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5022 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5021, %dx.types.Handle %118, float %5014, float %5015, float undef, float undef, i32 0, i32 0, i32 undef, float %4977, float %4978, float undef, float %4981, float %4982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 1
  %5026 = extractvalue %dx.types.CBufRet.f32 %5024, 2
  %5027 = fsub fast float 1.000000e+00, %4916
  %5028 = call float @dx.op.binary.f32(i32 35, float %5027, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5029 = bitcast float %4916 to i32
  %5030 = sitofp i32 %5029 to float
  %5031 = fadd fast float %5030, 0xC1CFBF8940000000
  %5032 = fmul fast float %5026, %5031
  %5033 = fadd fast float %5032, 0x41CFBF8940000000
  %5034 = fptosi float %5033 to i32
  %5035 = bitcast i32 %5034 to float
  %5036 = bitcast float %5028 to i32
  %5037 = sitofp i32 %5036 to float
  %5038 = fadd fast float %5037, 0xC1CFBF8940000000
  %5039 = fmul fast float %5038, %5026
  %5040 = fadd fast float %5039, 0x41CFBF8940000000
  %5041 = fptosi float %5040 to i32
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %5035, %5025
  %5044 = fmul fast float %5042, %5025
  %5045 = fsub fast float %5028, %5043
  %5046 = fadd fast float %5044, %5028
  %5047 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5048 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5049 = fsub fast float %5023, %5047
  %5050 = fsub fast float %5048, %5047
  %5051 = bitcast float %5050 to i32
  %5052 = sub nsw i32 2129859010, %5051
  %5053 = bitcast i32 %5052 to float
  %5054 = fmul fast float %5053, %5049
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fcmp fast olt float %5055, 0x3F70101020000000
  br i1 %5056, label %5195, label %5057

; <label>:5057                                    ; preds = %5019, %4922
  %5058 = phi float [ %5055, %5019 ], [ %4916, %4922 ]
  %5059 = fmul fast float %5058, %4925
  %5060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5061 = extractvalue %dx.types.CBufRet.i32 %5060, 1
  %5062 = extractvalue %dx.types.CBufRet.i32 %5060, 0
  %5063 = add i32 %5062, 0
  %5064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5065 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5064, %dx.types.Handle %117, float %5014, float %5015, float undef, float undef, i32 0, i32 0, i32 undef, float %4977, float %4978, float undef, float %4981, float %4982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5066 = extractvalue %dx.types.ResRet.f32 %5065, 0
  %5067 = extractvalue %dx.types.ResRet.f32 %5065, 1
  %5068 = extractvalue %dx.types.ResRet.f32 %5065, 2
  %5069 = extractvalue %dx.types.ResRet.f32 %5065, 3
  %5070 = and i32 %5061, 255
  %5071 = uitofp i32 %5070 to float
  %5072 = lshr i32 %5061, 8
  %5073 = and i32 %5072, 255
  %5074 = uitofp i32 %5073 to float
  %5075 = fmul fast float %5069, %5071
  %5076 = fadd fast float %5075, %5074
  %5077 = fmul fast float %5076, 0x3F70101000000000
  %5078 = fadd fast float %5077, 0xBFB99999A0000000
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, 0x3FF1C71C80000000
  %5081 = call float @dx.op.binary.f32(i32 36, float %5077, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5082 = fsub fast float 1.000000e+00, %5080
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %5083, %5066
  %5085 = fmul fast float %5083, %5067
  %5086 = fmul fast float %5083, %5068
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = fmul fast float %5080, %5066
  %5091 = fmul fast float %5080, %5067
  %5092 = fmul fast float %5080, %5068
  %5093 = fadd fast float %5090, %5081
  %5094 = fadd fast float %5091, %5081
  %5095 = fadd fast float %5092, %5081
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.i32 %5099, 3
  %5101 = extractvalue %dx.types.CBufRet.i32 %5099, 2
  %5102 = add i32 %5101, 0
  %5103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5103, %dx.types.Handle %117, float %5014, float %5015, float undef, float undef, i32 0, i32 0, i32 undef, float %4977, float %4978, float undef, float %4981, float %4982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.ResRet.f32 %5104, 1
  %5107 = extractvalue %dx.types.ResRet.f32 %5104, 2
  %5108 = extractvalue %dx.types.ResRet.f32 %5104, 3
  %5109 = and i32 %5100, 255
  %5110 = uitofp i32 %5109 to float
  %5111 = lshr i32 %5100, 8
  %5112 = and i32 %5111, 255
  %5113 = uitofp i32 %5112 to float
  %5114 = lshr i32 %5100, 16
  %5115 = and i32 %5114, 255
  %5116 = uitofp i32 %5115 to float
  %5117 = fmul fast float %5116, 0x3F70101000000000
  %5118 = fmul fast float %5105, %5110
  %5119 = fadd fast float %5118, %5113
  %5120 = fmul fast float %5119, 0x3F70101000000000
  %5121 = fadd fast float %5106, -5.000000e-01
  %5122 = fadd fast float %5108, -5.000000e-01
  %5123 = fmul fast float %5121, %5117
  %5124 = fmul fast float %5122, %5117
  %5125 = fadd fast float %5123, 5.000000e-01
  %5126 = fadd fast float %5124, 5.000000e-01
  %5127 = fmul fast float %5125, 2.000000e+00
  %5128 = fadd fast float %5127, -1.000000e+00
  %5129 = fmul fast float %5126, 2.000000e+00
  %5130 = fadd fast float %5129, -1.000000e+00
  %5131 = fadd fast float %5128, %5130
  %5132 = fmul fast float %5131, 5.000000e-01
  %5133 = fsub fast float %5128, %5130
  %5134 = fmul fast float %5133, 5.000000e-01
  %5135 = call float @dx.op.unary.f32(i32 6, float %5132)  ; FAbs(value)
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = call float @dx.op.unary.f32(i32 6, float %5134)  ; FAbs(value)
  %5138 = fsub fast float %5136, %5137
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5134, float %5138, float %5132, float %5134, float %5138)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = call float @dx.op.unary.f32(i32 25, float %5139)  ; Rsqrt(value)
  %5141 = fmul fast float %5132, %5140
  %5142 = fmul fast float %5134, %5140
  %5143 = select i1 %4970, i32 %4960, i32 %4961
  %5144 = select i1 %4968, i32 %4959, i32 %5143
  %5145 = sitofp i32 %5144 to float
  %5146 = fmul fast float %5138, %5145
  %5147 = fmul fast float %5146, %5140
  %5148 = select i1 %4970, float %5147, float %5142
  %5149 = select i1 %4970, float %5142, float %5147
  %5150 = select i1 %4968, float %5147, float %5141
  %5151 = select i1 %4968, float %5142, float %5148
  %5152 = select i1 %4968, float %5141, float %5149
  %5153 = fsub fast float %5087, %4520
  %5154 = fsub fast float %5088, %4521
  %5155 = fsub fast float %5089, %4522
  %5156 = fmul fast float %5153, %5059
  %5157 = fmul fast float %5154, %5059
  %5158 = fmul fast float %5155, %5059
  %5159 = fadd fast float %5156, %4520
  %5160 = fadd fast float %5157, %4521
  %5161 = fadd fast float %5158, %4522
  %5162 = fsub fast float %5096, %4439
  %5163 = fsub fast float %5097, %4440
  %5164 = fsub fast float %5098, %4441
  %5165 = fmul fast float %5162, %5059
  %5166 = fmul fast float %5163, %5059
  %5167 = fmul fast float %5164, %5059
  %5168 = fadd fast float %5165, %4439
  %5169 = fadd fast float %5166, %4440
  %5170 = fadd fast float %5167, %4441
  %5171 = fadd fast float %5150, %4400
  %5172 = fadd fast float %5151, %4401
  %5173 = fadd fast float %5152, %4402
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5172, float %5173, float %5171, float %5172, float %5173)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.unary.f32(i32 25, float %5174)  ; Rsqrt(value)
  %5176 = fmul fast float %5171, %5175
  %5177 = fmul fast float %5172, %5175
  %5178 = fmul fast float %5173, %5175
  %5179 = fsub fast float %5176, %4400
  %5180 = fsub fast float %5177, %4401
  %5181 = fsub fast float %5178, %4402
  %5182 = fmul fast float %5179, %5059
  %5183 = fmul fast float %5180, %5059
  %5184 = fmul fast float %5181, %5059
  %5185 = fadd fast float %5182, %4400
  %5186 = fadd fast float %5183, %4401
  %5187 = fadd fast float %5184, %4402
  %5188 = call float @dx.op.binary.f32(i32 36, float %4415, float %5107)  ; FMin(a,b)
  %5189 = fsub fast float %5188, %4415
  %5190 = fmul fast float %5189, %5059
  %5191 = fadd fast float %5190, %4415
  %5192 = fsub fast float %5120, %4442
  %5193 = fmul fast float %5192, %5059
  %5194 = fadd fast float %5193, %4442
  br label %5195

; <label>:5195                                    ; preds = %5057, %5019, %4921
  %5196 = phi float [ %5168, %5057 ], [ %4439, %5019 ], [ %4439, %4921 ]
  %5197 = phi float [ %5169, %5057 ], [ %4440, %5019 ], [ %4440, %4921 ]
  %5198 = phi float [ %5170, %5057 ], [ %4441, %5019 ], [ %4441, %4921 ]
  %5199 = phi float [ %5159, %5057 ], [ %4520, %5019 ], [ %4520, %4921 ]
  %5200 = phi float [ %5160, %5057 ], [ %4521, %5019 ], [ %4521, %4921 ]
  %5201 = phi float [ %5161, %5057 ], [ %4522, %5019 ], [ %4522, %4921 ]
  %5202 = phi float [ %5185, %5057 ], [ %4400, %5019 ], [ %4400, %4921 ]
  %5203 = phi float [ %5186, %5057 ], [ %4401, %5019 ], [ %4401, %4921 ]
  %5204 = phi float [ %5187, %5057 ], [ %4402, %5019 ], [ %4402, %4921 ]
  %5205 = phi float [ %5194, %5057 ], [ %4442, %5019 ], [ %4442, %4921 ]
  %5206 = phi float [ %5191, %5057 ], [ %4415, %5019 ], [ %4415, %4921 ]
  br i1 %4919, label %5207, label %5480

; <label>:5207                                    ; preds = %5195
  %5208 = call float @dx.op.unary.f32(i32 23, float %5206)  ; Log(value)
  %5209 = fmul fast float %5208, 4.000000e+00
  %5210 = call float @dx.op.unary.f32(i32 21, float %5209)  ; Exp(value)
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = fmul fast float %5212, %64
  %5214 = fmul fast float %5212, %65
  %5215 = fmul fast float %5212, %66
  %5216 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5217 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %5218 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %5219 = call float @dx.op.unary.f32(i32 23, float %5216)  ; Log(value)
  %5220 = call float @dx.op.unary.f32(i32 23, float %5217)  ; Log(value)
  %5221 = call float @dx.op.unary.f32(i32 23, float %5218)  ; Log(value)
  %5222 = fmul fast float %5219, 4.000000e+00
  %5223 = fmul fast float %5220, 4.000000e+00
  %5224 = fmul fast float %5221, 4.000000e+00
  %5225 = call float @dx.op.unary.f32(i32 21, float %5222)  ; Exp(value)
  %5226 = call float @dx.op.unary.f32(i32 21, float %5223)  ; Exp(value)
  %5227 = call float @dx.op.unary.f32(i32 21, float %5224)  ; Exp(value)
  %5228 = fadd fast float %5226, %5225
  %5229 = fadd fast float %5228, %5227
  %5230 = fdiv fast float 1.000000e+00, %5229
  %5231 = fmul fast float %5230, %5225
  %5232 = fcmp fast ogt float %73, 0.000000e+00
  %5233 = fcmp fast ogt float %74, 0.000000e+00
  %5234 = fcmp fast ogt float %75, 0.000000e+00
  %5235 = fcmp fast olt float %73, 0.000000e+00
  %5236 = fcmp fast olt float %74, 0.000000e+00
  %5237 = fcmp fast olt float %75, 0.000000e+00
  %5238 = zext i1 %5232 to i32
  %5239 = zext i1 %5233 to i32
  %5240 = zext i1 %5234 to i32
  %5241 = zext i1 %5235 to i32
  %5242 = zext i1 %5236 to i32
  %5243 = zext i1 %5237 to i32
  %5244 = sub nsw i32 %5238, %5241
  %5245 = sub nsw i32 %5239, %5242
  %5246 = sub nsw i32 %5240, %5243
  %5247 = call float @dx.op.unary.f32(i32 83, float %5213)  ; DerivCoarseX(value)
  %5248 = call float @dx.op.unary.f32(i32 83, float %5214)  ; DerivCoarseX(value)
  %5249 = call float @dx.op.unary.f32(i32 83, float %5215)  ; DerivCoarseX(value)
  %5250 = call float @dx.op.unary.f32(i32 84, float %5213)  ; DerivCoarseY(value)
  %5251 = call float @dx.op.unary.f32(i32 84, float %5214)  ; DerivCoarseY(value)
  %5252 = call float @dx.op.unary.f32(i32 84, float %5215)  ; DerivCoarseY(value)
  %5253 = fcmp fast ole float %270, %5231
  %5254 = fmul fast float %5230, %5228
  %5255 = fcmp fast ole float %270, %5254
  %5256 = select i1 %5255, float %5215, float %5213
  %5257 = select i1 %5255, float %5213, float %5214
  %5258 = select i1 %5253, float %5214, float %5256
  %5259 = select i1 %5253, float %5215, float %5257
  %5260 = select i1 %5255, float %5249, float %5247
  %5261 = select i1 %5255, float %5247, float %5248
  %5262 = select i1 %5253, float %5248, float %5260
  %5263 = select i1 %5253, float %5249, float %5261
  %5264 = select i1 %5255, float %5252, float %5250
  %5265 = select i1 %5255, float %5250, float %5251
  %5266 = select i1 %5253, float %5251, float %5264
  %5267 = select i1 %5253, float %5252, float %5265
  %5268 = call float @dx.op.unary.f32(i32 27, float %5258)  ; Round_ni(value)
  %5269 = call float @dx.op.unary.f32(i32 27, float %5259)  ; Round_ni(value)
  %5270 = fptosi float %5268 to i32
  %5271 = fptosi float %5269 to i32
  %5272 = xor i32 %5271, %5270
  %5273 = sitofp i32 %5272 to float
  %5274 = fptosi float %5273 to i32
  %5275 = sitofp i32 %5274 to float
  %5276 = fmul fast float %5275, 0x3FE3C6EF40000000
  %5277 = frem fast float %5268, 2.560000e+02
  %5278 = frem fast float %5269, 2.560000e+02
  %5279 = fptoui float %5277 to i32
  %5280 = fptoui float %5278 to i32
  %5281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5279, i32 %5280, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = fadd fast float %5282, %5276
  %5286 = fadd fast float %5283, %5276
  %5287 = fadd fast float %5284, %5276
  %5288 = call float @dx.op.unary.f32(i32 22, float %5285)  ; Frc(value)
  %5289 = call float @dx.op.unary.f32(i32 22, float %5286)  ; Frc(value)
  %5290 = call float @dx.op.unary.f32(i32 22, float %5287)  ; Frc(value)
  %5291 = fmul fast float %5290, 0x401921FB60000000
  %5292 = call float @dx.op.unary.f32(i32 13, float %5291)  ; Sin(value)
  %5293 = call float @dx.op.unary.f32(i32 12, float %5291)  ; Cos(value)
  %5294 = fsub fast float -0.000000e+00, %5293
  %5295 = fmul fast float %5293, %5258
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5292, float %5259, float %5295)  ; FMad(a,b,c)
  %5297 = fmul fast float %5292, %5258
  %5298 = call float @dx.op.tertiary.f32(i32 46, float %5294, float %5259, float %5297)  ; FMad(a,b,c)
  %5299 = fadd fast float %5296, %5288
  %5300 = fadd fast float %5298, %5289
  %5301 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5302 = bitcast float %5301 to i32
  %5303 = icmp eq i32 %5302, 0
  br i1 %5303, label %5342, label %5304

; <label>:5304                                    ; preds = %5207
  %5305 = add i32 %5302, 0
  %5306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5307 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5306, %dx.types.Handle %118, float %5299, float %5300, float undef, float undef, i32 0, i32 0, i32 undef, float %5262, float %5263, float undef, float %5266, float %5267, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5312 = fsub fast float 1.000000e+00, %4917
  %5313 = call float @dx.op.binary.f32(i32 35, float %5312, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5314 = bitcast float %4917 to i32
  %5315 = sitofp i32 %5314 to float
  %5316 = fadd fast float %5315, 0xC1CFBF8940000000
  %5317 = fmul fast float %5311, %5316
  %5318 = fadd fast float %5317, 0x41CFBF8940000000
  %5319 = fptosi float %5318 to i32
  %5320 = bitcast i32 %5319 to float
  %5321 = bitcast float %5313 to i32
  %5322 = sitofp i32 %5321 to float
  %5323 = fadd fast float %5322, 0xC1CFBF8940000000
  %5324 = fmul fast float %5323, %5311
  %5325 = fadd fast float %5324, 0x41CFBF8940000000
  %5326 = fptosi float %5325 to i32
  %5327 = bitcast i32 %5326 to float
  %5328 = fmul fast float %5320, %5310
  %5329 = fmul fast float %5327, %5310
  %5330 = fsub fast float %5313, %5328
  %5331 = fadd fast float %5329, %5313
  %5332 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5334 = fsub fast float %5308, %5332
  %5335 = fsub fast float %5333, %5332
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = fmul fast float %5338, %5334
  %5340 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5341 = fcmp fast olt float %5340, 0x3F70101020000000
  br i1 %5341, label %5480, label %5342

; <label>:5342                                    ; preds = %5304, %5207
  %5343 = phi float [ %5340, %5304 ], [ %4917, %5207 ]
  %5344 = fmul fast float %5343, %5210
  %5345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.i32 %5345, 1
  %5347 = extractvalue %dx.types.CBufRet.i32 %5345, 0
  %5348 = add i32 %5347, 0
  %5349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5350 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5349, %dx.types.Handle %117, float %5299, float %5300, float undef, float undef, i32 0, i32 0, i32 undef, float %5262, float %5263, float undef, float %5266, float %5267, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = extractvalue %dx.types.ResRet.f32 %5350, 1
  %5353 = extractvalue %dx.types.ResRet.f32 %5350, 2
  %5354 = extractvalue %dx.types.ResRet.f32 %5350, 3
  %5355 = and i32 %5346, 255
  %5356 = uitofp i32 %5355 to float
  %5357 = lshr i32 %5346, 8
  %5358 = and i32 %5357, 255
  %5359 = uitofp i32 %5358 to float
  %5360 = fmul fast float %5354, %5356
  %5361 = fadd fast float %5360, %5359
  %5362 = fmul fast float %5361, 0x3F70101000000000
  %5363 = fadd fast float %5362, 0xBFB99999A0000000
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = fmul fast float %5364, 0x3FF1C71C80000000
  %5366 = call float @dx.op.binary.f32(i32 36, float %5362, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5367 = fsub fast float 1.000000e+00, %5365
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = fmul fast float %5368, %5351
  %5370 = fmul fast float %5368, %5352
  %5371 = fmul fast float %5368, %5353
  %5372 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5375 = fmul fast float %5365, %5351
  %5376 = fmul fast float %5365, %5352
  %5377 = fmul fast float %5365, %5353
  %5378 = fadd fast float %5375, %5366
  %5379 = fadd fast float %5376, %5366
  %5380 = fadd fast float %5377, %5366
  %5381 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5382 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5383 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.i32 %5384, 3
  %5386 = extractvalue %dx.types.CBufRet.i32 %5384, 2
  %5387 = add i32 %5386, 0
  %5388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5388, %dx.types.Handle %117, float %5299, float %5300, float undef, float undef, i32 0, i32 0, i32 undef, float %5262, float %5263, float undef, float %5266, float %5267, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5389, 2
  %5393 = extractvalue %dx.types.ResRet.f32 %5389, 3
  %5394 = and i32 %5385, 255
  %5395 = uitofp i32 %5394 to float
  %5396 = lshr i32 %5385, 8
  %5397 = and i32 %5396, 255
  %5398 = uitofp i32 %5397 to float
  %5399 = lshr i32 %5385, 16
  %5400 = and i32 %5399, 255
  %5401 = uitofp i32 %5400 to float
  %5402 = fmul fast float %5401, 0x3F70101000000000
  %5403 = fmul fast float %5390, %5395
  %5404 = fadd fast float %5403, %5398
  %5405 = fmul fast float %5404, 0x3F70101000000000
  %5406 = fadd fast float %5391, -5.000000e-01
  %5407 = fadd fast float %5393, -5.000000e-01
  %5408 = fmul fast float %5406, %5402
  %5409 = fmul fast float %5407, %5402
  %5410 = fadd fast float %5408, 5.000000e-01
  %5411 = fadd fast float %5409, 5.000000e-01
  %5412 = fmul fast float %5410, 2.000000e+00
  %5413 = fadd fast float %5412, -1.000000e+00
  %5414 = fmul fast float %5411, 2.000000e+00
  %5415 = fadd fast float %5414, -1.000000e+00
  %5416 = fadd fast float %5413, %5415
  %5417 = fmul fast float %5416, 5.000000e-01
  %5418 = fsub fast float %5413, %5415
  %5419 = fmul fast float %5418, 5.000000e-01
  %5420 = call float @dx.op.unary.f32(i32 6, float %5417)  ; FAbs(value)
  %5421 = fsub fast float 1.000000e+00, %5420
  %5422 = call float @dx.op.unary.f32(i32 6, float %5419)  ; FAbs(value)
  %5423 = fsub fast float %5421, %5422
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5419, float %5423, float %5417, float %5419, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 25, float %5424)  ; Rsqrt(value)
  %5426 = fmul fast float %5417, %5425
  %5427 = fmul fast float %5419, %5425
  %5428 = select i1 %5255, i32 %5245, i32 %5246
  %5429 = select i1 %5253, i32 %5244, i32 %5428
  %5430 = sitofp i32 %5429 to float
  %5431 = fmul fast float %5423, %5430
  %5432 = fmul fast float %5431, %5425
  %5433 = select i1 %5255, float %5432, float %5427
  %5434 = select i1 %5255, float %5427, float %5432
  %5435 = select i1 %5253, float %5432, float %5426
  %5436 = select i1 %5253, float %5427, float %5433
  %5437 = select i1 %5253, float %5426, float %5434
  %5438 = fsub fast float %5372, %5199
  %5439 = fsub fast float %5373, %5200
  %5440 = fsub fast float %5374, %5201
  %5441 = fmul fast float %5438, %5344
  %5442 = fmul fast float %5439, %5344
  %5443 = fmul fast float %5440, %5344
  %5444 = fadd fast float %5441, %5199
  %5445 = fadd fast float %5442, %5200
  %5446 = fadd fast float %5443, %5201
  %5447 = fsub fast float %5381, %5196
  %5448 = fsub fast float %5382, %5197
  %5449 = fsub fast float %5383, %5198
  %5450 = fmul fast float %5447, %5344
  %5451 = fmul fast float %5448, %5344
  %5452 = fmul fast float %5449, %5344
  %5453 = fadd fast float %5450, %5196
  %5454 = fadd fast float %5451, %5197
  %5455 = fadd fast float %5452, %5198
  %5456 = fadd fast float %5435, %5202
  %5457 = fadd fast float %5436, %5203
  %5458 = fadd fast float %5437, %5204
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5457, float %5458, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = call float @dx.op.unary.f32(i32 25, float %5459)  ; Rsqrt(value)
  %5461 = fmul fast float %5456, %5460
  %5462 = fmul fast float %5457, %5460
  %5463 = fmul fast float %5458, %5460
  %5464 = fsub fast float %5461, %5202
  %5465 = fsub fast float %5462, %5203
  %5466 = fsub fast float %5463, %5204
  %5467 = fmul fast float %5464, %5344
  %5468 = fmul fast float %5465, %5344
  %5469 = fmul fast float %5466, %5344
  %5470 = fadd fast float %5467, %5202
  %5471 = fadd fast float %5468, %5203
  %5472 = fadd fast float %5469, %5204
  %5473 = call float @dx.op.binary.f32(i32 36, float %5206, float %5392)  ; FMin(a,b)
  %5474 = fsub fast float %5473, %5206
  %5475 = fmul fast float %5474, %5344
  %5476 = fadd fast float %5475, %5206
  %5477 = fsub fast float %5405, %5205
  %5478 = fmul fast float %5477, %5344
  %5479 = fadd fast float %5478, %5205
  br label %5480

; <label>:5480                                    ; preds = %5342, %5304, %5195, %4911
  %5481 = phi float [ %5453, %5342 ], [ %5196, %5304 ], [ %5196, %5195 ], [ %4439, %4911 ]
  %5482 = phi float [ %5454, %5342 ], [ %5197, %5304 ], [ %5197, %5195 ], [ %4440, %4911 ]
  %5483 = phi float [ %5455, %5342 ], [ %5198, %5304 ], [ %5198, %5195 ], [ %4441, %4911 ]
  %5484 = phi float [ %5444, %5342 ], [ %5199, %5304 ], [ %5199, %5195 ], [ %4520, %4911 ]
  %5485 = phi float [ %5445, %5342 ], [ %5200, %5304 ], [ %5200, %5195 ], [ %4521, %4911 ]
  %5486 = phi float [ %5446, %5342 ], [ %5201, %5304 ], [ %5201, %5195 ], [ %4522, %4911 ]
  %5487 = phi float [ %5470, %5342 ], [ %5202, %5304 ], [ %5202, %5195 ], [ %4400, %4911 ]
  %5488 = phi float [ %5471, %5342 ], [ %5203, %5304 ], [ %5203, %5195 ], [ %4401, %4911 ]
  %5489 = phi float [ %5472, %5342 ], [ %5204, %5304 ], [ %5204, %5195 ], [ %4402, %4911 ]
  %5490 = phi float [ %5479, %5342 ], [ %5205, %5304 ], [ %5205, %5195 ], [ %4442, %4911 ]
  %5491 = phi float [ %5476, %5342 ], [ %5206, %5304 ], [ %5206, %5195 ], [ %4415, %4911 ]
  %5492 = fcmp fast une float %4915, 0.000000e+00
  br i1 %5492, label %5493, label %5662

; <label>:5493                                    ; preds = %5480
  %5494 = call float @dx.op.dot3.f32(i32 55, float %200, float %201, float %202, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.unary.f32(i32 25, float %5494)  ; Rsqrt(value)
  %5496 = fmul fast float %200, %5495
  %5497 = fsub fast float -0.000000e+00, %5496
  %5498 = fmul fast float %201, %5495
  %5499 = fsub fast float -0.000000e+00, %5498
  %5500 = fmul fast float %202, %5495
  %5501 = fsub fast float -0.000000e+00, %5500
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5499, float %5501, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = fmul fast float %4915, 2.500000e+00
  %5504 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5505 = fmul fast float %4915, 0x4013FFFFE0000000
  %5506 = fadd fast float %5505, 0xBFFFFFFFE0000000
  %5507 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5508 = fmul fast float %4915, 0x4004000020000000
  %5509 = fadd fast float %5508, 0xBFF8000040000000
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %4421, 1.000000e+01
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fmul fast float %5512, 2.000000e+00
  %5514 = fsub fast float 3.000000e+00, %5513
  %5515 = fmul fast float %5512, %5512
  %5516 = fmul fast float %5515, %5514
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fsub fast float 0x3FE3333340000000, %5490
  %5519 = fmul fast float %5518, 0x400AAAAAA0000000
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fmul fast float %5517, %5520
  %5522 = fmul fast float %5484, 0x3FEA2B8620000000
  %5523 = fmul fast float %5485, 0x3FEA2B8620000000
  %5524 = fmul fast float %5486, 0x3FEA2B8620000000
  %5525 = fadd fast float %5522, 0x3FC81DFBA0000000
  %5526 = fmul fast float %5525, %5484
  %5527 = fadd fast float %5526, 0x3F910E6020000000
  %5528 = fadd fast float %5523, 0x3FC81DFBA0000000
  %5529 = fmul fast float %5528, %5485
  %5530 = fadd fast float %5529, 0x3F910E6020000000
  %5531 = fadd fast float %5524, 0x3FC81DFBA0000000
  %5532 = fmul fast float %5531, %5486
  %5533 = fadd fast float %5532, 0x3F910E6020000000
  %5534 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5535 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5536 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5537 = fsub fast float %5534, %5484
  %5538 = fsub fast float %5535, %5485
  %5539 = fsub fast float %5536, %5486
  %5540 = fmul fast float %5537, %5504
  %5541 = fmul fast float %5540, %5521
  %5542 = fmul fast float %5538, %5504
  %5543 = fmul fast float %5542, %5521
  %5544 = fmul fast float %5539, %5504
  %5545 = fmul fast float %5544, %5521
  %5546 = fadd fast float %5541, %5484
  %5547 = fadd fast float %5543, %5485
  %5548 = fadd fast float %5545, %5486
  %5549 = fmul fast float %5491, %5491
  %5550 = fmul fast float %5549, %5549
  %5551 = fadd fast float %5507, 1.000000e+00
  %5552 = fsub fast float %5551, %5521
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fsub fast float 1.000000e+00, %5550
  %5557 = call float @dx.op.binary.f32(i32 36, float %5553, float %5556)  ; FMin(a,b)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5559 = call float @dx.op.binary.f32(i32 35, float %5557, float %5558)  ; FMax(a,b)
  %5560 = fadd fast float %5555, 0xBFE4CCCCC0000000
  %5561 = fmul fast float %5560, 0x4006DB6DA0000000
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = fmul fast float %5562, 2.000000e+00
  %5564 = fsub fast float 3.000000e+00, %5563
  %5565 = bitcast float %5481 to i32
  %5566 = ashr i32 %5565, 1
  %5567 = add nsw i32 %5566, 532487669
  %5568 = bitcast i32 %5567 to float
  %5569 = fsub fast float 1.000000e+00, %5568
  %5570 = bitcast float %5569 to i32
  %5571 = sub nsw i32 2129859010, %5570
  %5572 = bitcast i32 %5571 to float
  %5573 = fmul fast float %5572, 2.000000e+00
  %5574 = bitcast float %5482 to i32
  %5575 = ashr i32 %5574, 1
  %5576 = add nsw i32 %5575, 532487669
  %5577 = bitcast i32 %5576 to float
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = bitcast float %5578 to i32
  %5580 = sub nsw i32 2129859010, %5579
  %5581 = bitcast i32 %5580 to float
  %5582 = fmul fast float %5581, 2.000000e+00
  %5583 = bitcast float %5483 to i32
  %5584 = ashr i32 %5583, 1
  %5585 = add nsw i32 %5584, 532487669
  %5586 = bitcast i32 %5585 to float
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = bitcast float %5587 to i32
  %5589 = sub nsw i32 2129859010, %5588
  %5590 = bitcast i32 %5589 to float
  %5591 = fmul fast float %5590, 2.000000e+00
  %5592 = fsub fast float 0x4002A9FBE0000000, %5573
  %5593 = fadd fast float %5573, 0x3FD54FDF00000000
  %5594 = bitcast float %5593 to i32
  %5595 = sub nsw i32 2129859010, %5594
  %5596 = bitcast i32 %5595 to float
  %5597 = fmul fast float %5596, %5592
  %5598 = fmul fast float %5597, %5597
  %5599 = fsub fast float 0x4002A9FBE0000000, %5582
  %5600 = fadd fast float %5582, 0x3FD54FDF00000000
  %5601 = bitcast float %5600 to i32
  %5602 = sub nsw i32 2129859010, %5601
  %5603 = bitcast i32 %5602 to float
  %5604 = fmul fast float %5603, %5599
  %5605 = fmul fast float %5604, %5604
  %5606 = fsub fast float 0x4002A9FBE0000000, %5591
  %5607 = fadd fast float %5591, 0x3FD54FDF00000000
  %5608 = bitcast float %5607 to i32
  %5609 = sub nsw i32 2129859010, %5608
  %5610 = bitcast i32 %5609 to float
  %5611 = fmul fast float %5610, %5606
  %5612 = fmul fast float %5611, %5611
  %5613 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5598)  ; FMax(a,b)
  %5614 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5605)  ; FMax(a,b)
  %5615 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5612)  ; FMax(a,b)
  %5616 = fsub fast float 1.000000e+00, %5502
  %5617 = fadd fast float %5616, %5517
  %5618 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5619 = fsub fast float 1.000000e+00, %4896
  %5620 = fmul fast float %5559, %5619
  %5621 = fmul fast float %5562, %5562
  %5622 = fmul fast float %5621, %5620
  %5623 = fmul fast float %5622, %5564
  %5624 = fmul fast float %5619, 0xBFE99999A0000000
  %5625 = fmul fast float %5624, %5504
  %5626 = fmul fast float %5625, %5521
  %5627 = fadd fast float %5626, 1.000000e+00
  %5628 = fadd fast float %5490, -1.000000e+00
  %5629 = fmul fast float %5627, %5628
  %5630 = fadd fast float %5629, 1.000000e+00
  %5631 = fsub fast float %5613, %5481
  %5632 = fsub fast float %5614, %5482
  %5633 = fsub fast float %5615, %5483
  %5634 = fmul fast float %5623, %5631
  %5635 = fmul fast float %5623, %5632
  %5636 = fmul fast float %5623, %5633
  %5637 = fadd fast float %5634, %5481
  %5638 = fadd fast float %5635, %5482
  %5639 = fadd fast float %5636, %5483
  %5640 = fsub fast float %128, %5487
  %5641 = fsub fast float %129, %5488
  %5642 = fsub fast float %130, %5489
  %5643 = fmul fast float %5623, %5640
  %5644 = fmul fast float %5623, %5641
  %5645 = fmul fast float %5623, %5642
  %5646 = fadd fast float %5643, %5487
  %5647 = fadd fast float %5644, %5488
  %5648 = fadd fast float %5645, %5489
  %5649 = fmul fast float %5623, %5618
  %5650 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5651 = fsub fast float 1.000000e+00, %5650
  %5652 = fmul fast float %5649, %5651
  %5653 = fadd fast float %5652, %5650
  %5654 = fsub fast float 1.000000e+00, %5491
  %5655 = fmul fast float %5623, %5654
  %5656 = fadd fast float %5655, %5491
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.unary.f32(i32 25, float %5657)  ; Rsqrt(value)
  %5659 = fmul fast float %5646, %5658
  %5660 = fmul fast float %5647, %5658
  %5661 = fmul fast float %5648, %5658
  br label %5662

; <label>:5662                                    ; preds = %5493, %5480
  %5663 = phi float [ %5637, %5493 ], [ %5481, %5480 ]
  %5664 = phi float [ %5638, %5493 ], [ %5482, %5480 ]
  %5665 = phi float [ %5639, %5493 ], [ %5483, %5480 ]
  %5666 = phi float [ %5546, %5493 ], [ %5484, %5480 ]
  %5667 = phi float [ %5547, %5493 ], [ %5485, %5480 ]
  %5668 = phi float [ %5548, %5493 ], [ %5486, %5480 ]
  %5669 = phi float [ %5659, %5493 ], [ %5487, %5480 ]
  %5670 = phi float [ %5660, %5493 ], [ %5488, %5480 ]
  %5671 = phi float [ %5661, %5493 ], [ %5489, %5480 ]
  %5672 = phi float [ %5653, %5493 ], [ %5490, %5480 ]
  %5673 = phi float [ %5656, %5493 ], [ %5491, %5480 ]
  %5674 = icmp eq i32 %62, 0
  br i1 %5674, label %5705, label %5675

; <label>:5675                                    ; preds = %5662
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 2
  %5678 = extractvalue %dx.types.CBufRet.f32 %5676, 3
  %5679 = fmul fast float %5677, %121
  %5680 = fmul fast float %5678, %122
  %5681 = fmul fast float %5679, 1.024000e+03
  %5682 = fmul fast float %5680, 1.024000e+03
  %5683 = fadd fast float %5681, -5.120000e+02
  %5684 = fadd fast float %5682, -5.120000e+02
  %5685 = fmul fast float %5679, 0x4081BEDF00000000
  %5686 = fadd fast float %5685, 0xC071BEDF00000000
  %5687 = call float @dx.op.unary.f32(i32 22, float %5686)  ; Frc(value)
  %5688 = fmul fast float %5683, %5687
  %5689 = fadd fast float %5688, %5684
  %5690 = fmul fast float %5680, 0x4073BEBE20000000
  %5691 = fadd fast float %5690, 0xC063BEBE20000000
  %5692 = call float @dx.op.unary.f32(i32 22, float %5691)  ; Frc(value)
  %5693 = fmul fast float %5684, %5692
  %5694 = fadd fast float %5693, %5683
  %5695 = fmul fast float %5689, %5694
  %5696 = call float @dx.op.unary.f32(i32 22, float %5695)  ; Frc(value)
  %5697 = add i32 %313, 12
  %5698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5697, i32 undef)  ; BufferLoad(srv,index,wot)
  %5699 = extractvalue %dx.types.ResRet.i32 %5698, 0
  %5700 = and i32 %5699, 255
  %5701 = uitofp i32 %5700 to float
  %5702 = fmul fast float %5701, 0x3F70101020000000
  %5703 = fcmp fast olt float %5696, %5702
  br i1 %5703, label %5704, label %5705

; <label>:5704                                    ; preds = %5675
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5705

; <label>:5705                                    ; preds = %5704, %5675, %5662
  %5706 = fsub fast float -0.000000e+00, %202
  %5707 = call float @dx.op.dot3.f32(i32 55, float %200, float %201, float %202, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = call float @dx.op.unary.f32(i32 25, float %5707)  ; Rsqrt(value)
  %5709 = fmul fast float %5708, %200
  %5710 = fmul fast float %5708, %201
  %5711 = fmul fast float %5708, %202
  %5712 = fsub fast float -0.000000e+00, %5709
  %5713 = fsub fast float -0.000000e+00, %5710
  %5714 = fsub fast float -0.000000e+00, %5711
  %5715 = select i1 %259, float 0.000000e+00, float %5665
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = fmul fast float %5718, 2.000000e+00
  %5720 = fmul fast float %5719, %5669
  %5721 = fmul fast float %5719, %5670
  %5722 = fmul fast float %5719, %5671
  %5723 = fsub fast float %5709, %5720
  %5724 = fsub fast float %5710, %5721
  %5725 = fsub fast float %5711, %5722
  %5726 = call float @dx.op.binary.f32(i32 36, float %5673, float 1.000000e+00)  ; FMin(a,b)
  %5727 = fsub fast float 1.000000e+00, %5726
  %5728 = bitcast float %5727 to i32
  %5729 = ashr i32 %5728, 1
  %5730 = add nsw i32 %5729, 532487669
  %5731 = bitcast i32 %5730 to float
  %5732 = fsub fast float 1.000000e+00, %5672
  %5733 = call float @dx.op.binary.f32(i32 35, float %5732, float 0x3F847AE140000000)  ; FMax(a,b)
  %5734 = fmul fast float %5733, %5733
  %5735 = fmul fast float %5734, %5734
  %5736 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5731, float %5735, float %5736, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5738 = extractvalue %dx.types.ResRet.f32 %5737, 0
  %5739 = fsub fast float 1.000000e+00, %5673
  %5740 = bitcast float %5739 to i32
  %5741 = sub nsw i32 2129859010, %5740
  %5742 = bitcast i32 %5741 to float
  %5743 = call float @dx.op.dot3.f32(i32 55, float %88, float %84, float %80, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = fmul fast float %5743, 0x3FD20DD760000000
  %5745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %88)  ; FMax(a,b)
  %5746 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fcmp fast oeq float %5746, 0.000000e+00
  %5748 = fcmp fast oeq float %5745, 0.000000e+00
  %5749 = or i1 %5748, %5747
  br i1 %5749, label %5779, label %5750

; <label>:5750                                    ; preds = %5705
  %5751 = fsub fast float -0.000000e+00, %91
  %5752 = fsub fast float -0.000000e+00, %89
  %5753 = call float @dx.op.unary.f32(i32 24, float %5746)  ; Sqrt(value)
  %5754 = fdiv fast float %5753, %5745
  %5755 = fcmp fast ogt float %5754, 0x3FFB6F8900000000
  %5756 = select i1 %5755, float 0x3FFB6F8900000000, float %5754
  %5757 = fmul fast float %5756, 0x3FE8A23460000000
  %5758 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5759 = call float @dx.op.binary.f32(i32 35, float %5756, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5760 = fmul fast float %5758, %5745
  %5761 = fmul fast float %5759, 0x3FF279A740000000
  %5762 = fadd fast float %5761, -1.000000e+00
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5752, float %90, float %5751, float %5752, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = call float @dx.op.unary.f32(i32 25, float %5763)  ; Rsqrt(value)
  %5765 = fmul fast float %5764, %5751
  %5766 = fmul fast float %5764, %5752
  %5767 = fmul fast float %5764, %90
  %5768 = fmul fast float %5762, %5762
  %5769 = fsub fast float 1.000000e+00, %5768
  %5770 = fmul fast float %5759, 0x40005F8BE0000000
  %5771 = fsub fast float 0x400C5BF8A0000000, %5770
  %5772 = fdiv fast float %5760, %5771
  %5773 = fmul fast float %5772, 0x3FEE31C3C0000000
  %5774 = fmul fast float %5773, %5769
  %5775 = fmul fast float %5759, 0x3FDACB7480000000
  %5776 = fadd fast float %5775, 0xBFD7347680000000
  %5777 = fmul fast float %5776, %5772
  %5778 = fmul fast float %5777, %5769
  br label %5779

; <label>:5779                                    ; preds = %5750, %5705
  %5780 = phi float [ %5765, %5750 ], [ 0.000000e+00, %5705 ]
  %5781 = phi float [ %5766, %5750 ], [ 0.000000e+00, %5705 ]
  %5782 = phi float [ %5767, %5750 ], [ 0.000000e+00, %5705 ]
  %5783 = phi float [ %5774, %5750 ], [ 0.000000e+00, %5705 ]
  %5784 = phi float [ %5778, %5750 ], [ 0.000000e+00, %5705 ]
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = fmul fast float %5785, 0x3FDF454380000000
  %5787 = fmul fast float %5785, %5785
  %5788 = fmul fast float %5787, 0x3FEE471020000000
  %5789 = fadd fast float %5788, 0xBFD42F6020000000
  %5790 = fmul fast float %5745, 0x3FD20DD760000000
  %5791 = fmul fast float %5789, %5784
  %5792 = fadd fast float %5791, %5790
  %5793 = fmul fast float %5786, %5783
  %5794 = fadd fast float %5792, %5793
  %5795 = fsub fast float %5792, %5793
  %5796 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5797 = fmul fast float %5796, 0x3FDF454380000000
  %5798 = fmul fast float %5796, %5796
  %5799 = fmul fast float %5798, 0x3FEE471020000000
  %5800 = fadd fast float %5799, 0xBFD42F6020000000
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5783, float %5784, float 0x3FD20DD760000000, float %5797, float %5800)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5803 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fcmp fast oeq float %5803, 0.000000e+00
  %5805 = fcmp fast oeq float %5802, 0.000000e+00
  %5806 = or i1 %5805, %5804
  br i1 %5806, label %5836, label %5807

; <label>:5807                                    ; preds = %5779
  %5808 = fsub fast float -0.000000e+00, %87
  %5809 = fsub fast float -0.000000e+00, %85
  %5810 = call float @dx.op.unary.f32(i32 24, float %5803)  ; Sqrt(value)
  %5811 = fdiv fast float %5810, %5802
  %5812 = fcmp fast ogt float %5811, 0x3FFB6F8900000000
  %5813 = select i1 %5812, float 0x3FFB6F8900000000, float %5811
  %5814 = fmul fast float %5813, 0x3FE8A23460000000
  %5815 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5816 = call float @dx.op.binary.f32(i32 35, float %5813, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5817 = fmul fast float %5815, %5802
  %5818 = fmul fast float %5816, 0x3FF279A740000000
  %5819 = fadd fast float %5818, -1.000000e+00
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5809, float %86, float %5808, float %5809, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.unary.f32(i32 25, float %5820)  ; Rsqrt(value)
  %5822 = fmul fast float %5821, %5808
  %5823 = fmul fast float %5821, %5809
  %5824 = fmul fast float %5821, %86
  %5825 = fmul fast float %5819, %5819
  %5826 = fsub fast float 1.000000e+00, %5825
  %5827 = fmul fast float %5816, 0x40005F8BE0000000
  %5828 = fsub fast float 0x400C5BF8A0000000, %5827
  %5829 = fdiv fast float %5817, %5828
  %5830 = fmul fast float %5829, 0x3FEE31C3C0000000
  %5831 = fmul fast float %5830, %5826
  %5832 = fmul fast float %5816, 0x3FDACB7480000000
  %5833 = fadd fast float %5832, 0xBFD7347680000000
  %5834 = fmul fast float %5833, %5829
  %5835 = fmul fast float %5834, %5826
  br label %5836

; <label>:5836                                    ; preds = %5807, %5779
  %5837 = phi float [ %5822, %5807 ], [ 0.000000e+00, %5779 ]
  %5838 = phi float [ %5823, %5807 ], [ 0.000000e+00, %5779 ]
  %5839 = phi float [ %5824, %5807 ], [ 0.000000e+00, %5779 ]
  %5840 = phi float [ %5831, %5807 ], [ 0.000000e+00, %5779 ]
  %5841 = phi float [ %5835, %5807 ], [ 0.000000e+00, %5779 ]
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5838, float %5839, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = fmul fast float %5842, 0x3FDF454380000000
  %5844 = fmul fast float %5842, %5842
  %5845 = fmul fast float %5844, 0x3FEE471020000000
  %5846 = fadd fast float %5845, 0xBFD42F6020000000
  %5847 = fmul fast float %5802, 0x3FD20DD760000000
  %5848 = fmul fast float %5846, %5841
  %5849 = fadd fast float %5848, %5847
  %5850 = fmul fast float %5843, %5840
  %5851 = fadd fast float %5849, %5850
  %5852 = fsub fast float %5849, %5850
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5838, float %5839, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = fmul fast float %5853, 0x3FDF454380000000
  %5855 = fmul fast float %5853, %5853
  %5856 = fmul fast float %5855, 0x3FEE471020000000
  %5857 = fadd fast float %5856, 0xBFD42F6020000000
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5840, float %5841, float 0x3FD20DD760000000, float %5854, float %5857)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5860 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fcmp fast oeq float %5860, 0.000000e+00
  %5862 = fcmp fast oeq float %5859, 0.000000e+00
  %5863 = or i1 %5862, %5861
  br i1 %5863, label %5893, label %5864

; <label>:5864                                    ; preds = %5836
  %5865 = fsub fast float -0.000000e+00, %83
  %5866 = fsub fast float -0.000000e+00, %81
  %5867 = call float @dx.op.unary.f32(i32 24, float %5860)  ; Sqrt(value)
  %5868 = fdiv fast float %5867, %5859
  %5869 = fcmp fast ogt float %5868, 0x3FFB6F8900000000
  %5870 = select i1 %5869, float 0x3FFB6F8900000000, float %5868
  %5871 = fmul fast float %5870, 0x3FE8A23460000000
  %5872 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5873 = call float @dx.op.binary.f32(i32 35, float %5870, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5874 = fmul fast float %5872, %5859
  %5875 = fmul fast float %5873, 0x3FF279A740000000
  %5876 = fadd fast float %5875, -1.000000e+00
  %5877 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %82, float %5865, float %5866, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5878 = call float @dx.op.unary.f32(i32 25, float %5877)  ; Rsqrt(value)
  %5879 = fmul fast float %5878, %5865
  %5880 = fmul fast float %5878, %5866
  %5881 = fmul fast float %5878, %82
  %5882 = fmul fast float %5876, %5876
  %5883 = fsub fast float 1.000000e+00, %5882
  %5884 = fmul fast float %5873, 0x40005F8BE0000000
  %5885 = fsub fast float 0x400C5BF8A0000000, %5884
  %5886 = fdiv fast float %5874, %5885
  %5887 = fmul fast float %5886, 0x3FEE31C3C0000000
  %5888 = fmul fast float %5887, %5883
  %5889 = fmul fast float %5873, 0x3FDACB7480000000
  %5890 = fadd fast float %5889, 0xBFD7347680000000
  %5891 = fmul fast float %5890, %5886
  %5892 = fmul fast float %5891, %5883
  br label %5893

; <label>:5893                                    ; preds = %5864, %5836
  %5894 = phi float [ %5879, %5864 ], [ 0.000000e+00, %5836 ]
  %5895 = phi float [ %5880, %5864 ], [ 0.000000e+00, %5836 ]
  %5896 = phi float [ %5881, %5864 ], [ 0.000000e+00, %5836 ]
  %5897 = phi float [ %5888, %5864 ], [ 0.000000e+00, %5836 ]
  %5898 = phi float [ %5892, %5864 ], [ 0.000000e+00, %5836 ]
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %5896, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = fmul fast float %5899, 0x3FDF454380000000
  %5901 = fmul fast float %5899, %5899
  %5902 = fmul fast float %5901, 0x3FEE471020000000
  %5903 = fadd fast float %5902, 0xBFD42F6020000000
  %5904 = fmul fast float %5859, 0x3FD20DD760000000
  %5905 = fmul fast float %5903, %5898
  %5906 = fadd fast float %5905, %5904
  %5907 = fmul fast float %5900, %5897
  %5908 = fadd fast float %5906, %5907
  %5909 = fsub fast float %5906, %5907
  %5910 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %5896, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = fmul fast float %5910, 0x3FDF454380000000
  %5912 = fmul fast float %5910, %5910
  %5913 = fmul fast float %5912, 0x3FEE471020000000
  %5914 = fadd fast float %5913, 0xBFD42F6020000000
  %5915 = call float @dx.op.dot3.f32(i32 55, float %5859, float %5897, float %5898, float 0x3FD20DD760000000, float %5911, float %5914)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = call float @dx.op.binary.f32(i32 35, float %5794, float 0.000000e+00)  ; FMax(a,b)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5851, float 0.000000e+00)  ; FMax(a,b)
  %5918 = call float @dx.op.binary.f32(i32 35, float %5908, float 0.000000e+00)  ; FMax(a,b)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5795, float 0.000000e+00)  ; FMax(a,b)
  %5920 = call float @dx.op.binary.f32(i32 35, float %5852, float 0.000000e+00)  ; FMax(a,b)
  %5921 = call float @dx.op.binary.f32(i32 35, float %5909, float 0.000000e+00)  ; FMax(a,b)
  %5922 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5915, float 0.000000e+00)  ; FMax(a,b)
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = call float @dx.op.binary.f32(i32 36, float %5666, float %5926)  ; FMin(a,b)
  %5928 = fmul fast float %5927, %5727
  %5929 = fsub fast float 1.000000e+00, %5928
  %5930 = bitcast float %5929 to i32
  %5931 = sub nsw i32 2129859010, %5930
  %5932 = bitcast i32 %5931 to float
  %5933 = call float @dx.op.binary.f32(i32 36, float %5667, float %5926)  ; FMin(a,b)
  %5934 = fmul fast float %5933, %5727
  %5935 = fsub fast float 1.000000e+00, %5934
  %5936 = bitcast float %5935 to i32
  %5937 = sub nsw i32 2129859010, %5936
  %5938 = bitcast i32 %5937 to float
  %5939 = call float @dx.op.binary.f32(i32 36, float %5668, float %5926)  ; FMin(a,b)
  %5940 = fmul fast float %5939, %5727
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = bitcast float %5941 to i32
  %5943 = sub nsw i32 2129859010, %5942
  %5944 = bitcast i32 %5943 to float
  %5945 = fmul fast float %5916, %5726
  %5946 = fmul fast float %5945, %5932
  %5947 = fmul fast float %5917, %5726
  %5948 = fmul fast float %5947, %5938
  %5949 = fmul fast float %5918, %5726
  %5950 = fmul fast float %5949, %5944
  %5951 = call float @dx.op.binary.f32(i32 36, float %5663, float %5926)  ; FMin(a,b)
  %5952 = fmul fast float %5951, %5727
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = bitcast float %5953 to i32
  %5955 = sub nsw i32 2129859010, %5954
  %5956 = bitcast i32 %5955 to float
  %5957 = call float @dx.op.binary.f32(i32 36, float %5664, float %5926)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5727
  %5959 = fsub fast float 1.000000e+00, %5958
  %5960 = bitcast float %5959 to i32
  %5961 = sub nsw i32 2129859010, %5960
  %5962 = bitcast i32 %5961 to float
  %5963 = call float @dx.op.binary.f32(i32 36, float %5715, float %5926)  ; FMin(a,b)
  %5964 = fmul fast float %5963, %5727
  %5965 = fsub fast float 1.000000e+00, %5964
  %5966 = bitcast float %5965 to i32
  %5967 = sub nsw i32 2129859010, %5966
  %5968 = bitcast i32 %5967 to float
  %5969 = fmul fast float %5922, %5726
  %5970 = fmul fast float %5969, %5956
  %5971 = fmul fast float %5923, %5726
  %5972 = fmul fast float %5971, %5962
  %5973 = fmul fast float %5924, %5726
  %5974 = fmul fast float %5973, %5968
  %5975 = call float @dx.op.dot3.f32(i32 55, float %5946, float %5948, float %5950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = select i1 %259, float 0.000000e+00, float %5946
  %5977 = select i1 %259, float %5975, float %5948
  %5978 = select i1 %259, float 0.000000e+00, float %5950
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = select i1 %259, float 0.000000e+00, float %5919
  %5981 = select i1 %259, float %5979, float %5920
  %5982 = select i1 %259, float 0.000000e+00, float %5921
  %5983 = call float @dx.op.dot3.f32(i32 55, float %5970, float %5972, float %5974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5984 = select i1 %259, float 0.000000e+00, float %5970
  %5985 = select i1 %259, float %5983, float %5972
  %5986 = select i1 %259, float 0.000000e+00, float %5974
  %5987 = fmul fast float %5717, 9.843750e-01
  %5988 = fmul fast float %5672, 9.843750e-01
  %5989 = fadd fast float %5987, 7.812500e-03
  %5990 = fadd fast float %5988, 7.812500e-03
  %5991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5989, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 2
  %5993 = extractvalue %dx.types.ResRet.f32 %5991, 3
  %5994 = fmul fast float %5992, %5663
  %5995 = fmul fast float %5992, %5664
  %5996 = fmul fast float %5992, %5715
  %5997 = fadd fast float %5994, %5993
  %5998 = fadd fast float %5995, %5993
  %5999 = fadd fast float %5996, %5993
  %6000 = fcmp fast ogt float %4416, 0.000000e+00
  br i1 %6000, label %6001, label %6027

; <label>:6001                                    ; preds = %5893
  %6002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4416, float %5717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6003 = extractvalue %dx.types.ResRet.f32 %6002, 0
  %6004 = extractvalue %dx.types.ResRet.f32 %6002, 1
  %6005 = extractvalue %dx.types.ResRet.f32 %6002, 2
  %6006 = fadd fast float %6003, -5.000000e-01
  %6007 = fadd fast float %6004, -5.000000e-01
  %6008 = fadd fast float %6005, -5.000000e-01
  %6009 = fsub fast float 1.000000e+00, %5663
  %6010 = fsub fast float 1.000000e+00, %5664
  %6011 = fsub fast float 1.000000e+00, %5715
  %6012 = fmul fast float %5663, 4.000000e+00
  %6013 = fmul fast float %6012, %6009
  %6014 = fmul fast float %6013, %6006
  %6015 = fmul fast float %5664, 4.000000e+00
  %6016 = fmul fast float %6015, %6010
  %6017 = fmul fast float %6016, %6007
  %6018 = fmul fast float %5715, 4.000000e+00
  %6019 = fmul fast float %6018, %6011
  %6020 = fmul fast float %6019, %6008
  %6021 = fadd fast float %6014, %5997
  %6022 = fadd fast float %6017, %5998
  %6023 = fadd fast float %6020, %5999
  %6024 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6025 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6026 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  br label %6027

; <label>:6027                                    ; preds = %6001, %5893
  %6028 = phi float [ %6024, %6001 ], [ %5997, %5893 ]
  %6029 = phi float [ %6025, %6001 ], [ %5998, %5893 ]
  %6030 = phi float [ %6026, %6001 ], [ %5999, %5893 ]
  %6031 = call float @dx.op.binary.f32(i32 35, float %6029, float %6030)  ; FMax(a,b)
  %6032 = call float @dx.op.binary.f32(i32 35, float %6028, float %6031)  ; FMax(a,b)
  %6033 = fsub fast float 1.000000e+00, %6032
  %6034 = fmul fast float %6032, %5672
  %6035 = fadd fast float %6034, %5672
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 2
  %6038 = extractvalue %dx.types.CBufRet.f32 %6036, 3
  %6039 = fmul fast float %6035, %6037
  %6040 = fadd fast float %6039, %6038
  %6041 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6042 = fsub fast float 1.000000e+00, %5738
  %6043 = fadd fast float %6042, %6041
  %6044 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6045 = fcmp fast olt float %6044, 1.000000e+00
  br i1 %6045, label %6046, label %6522

; <label>:6046                                    ; preds = %6027
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 3
  %6050 = fmul fast float %6048, %121
  %6051 = fmul fast float %6049, %122
  %6052 = fptoui float %6050 to i32
  %6053 = fptoui float %6051 to i32
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6056 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6057 = extractvalue %dx.types.CBufRet.f32 %6054, 3
  %6058 = fadd fast float %108, -4.000000e+00
  %6059 = call float @dx.op.binary.f32(i32 35, float %6058, float 0.000000e+00)  ; FMax(a,b)
  %6060 = fadd fast float %6059, %6055
  %6061 = fmul fast float %6060, %6056
  %6062 = call float @dx.op.unary.f32(i32 23, float %6061)  ; Log(value)
  %6063 = fmul fast float %6062, %6057
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6066 = fmul fast float %6063, %6065
  %6067 = call float @dx.op.unary.f32(i32 7, float %6066)  ; Saturate(value)
  %6068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.i32 %6068, 1
  %6070 = add i32 %6069, -1
  %6071 = uitofp i32 %6069 to float
  %6072 = fmul fast float %6071, %6067
  %6073 = fptoui float %6072 to i32
  %6074 = call i32 @dx.op.binary.i32(i32 40, i32 %6073, i32 %6070)  ; UMin(a,b)
  %6075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.i32 %6075, 2
  %6077 = extractvalue %dx.types.CBufRet.i32 %6075, 3
  %6078 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6053, i32 %6076, i32 %6052)  ; UMad(a,b,c)
  %6079 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6074, i32 %6077, i32 %6078)  ; UMad(a,b,c)
  %6080 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %6081 = fptoui float %6080 to i32
  %6082 = lshr i32 %6081, 5
  %6083 = call i32 @dx.op.binary.i32(i32 40, i32 %6082, i32 8191)  ; UMin(a,b)
  %6084 = fsub fast float %4883, %202
  %6085 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6086 = fcmp fast ogt float %6085, 0.000000e+00
  %6087 = fcmp fast ogt float %5725, 0.000000e+00
  %6088 = and i1 %6087, %6086
  br i1 %6088, label %6089, label %6118

; <label>:6089                                    ; preds = %6046
  %6090 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6091 = call float @dx.op.binary.f32(i32 35, float %6090, float -1.000000e+00)  ; FMax(a,b)
  %6092 = call float @dx.op.binary.f32(i32 36, float %6091, float 1.000000e+00)  ; FMin(a,b)
  %6093 = fmul fast float %6092, %6092
  %6094 = fsub fast float 1.000000e+00, %6093
  %6095 = fmul fast float %6094, 0x3FFC6E2300000000
  %6096 = fsub fast float 1.000000e+00, %6095
  %6097 = fcmp fast ogt float %6096, 0.000000e+00
  %6098 = call float @dx.op.unary.f32(i32 24, float %6096)  ; Sqrt(value)
  %6099 = fsub fast float 1.000000e+00, %6098
  %6100 = call float @dx.op.unary.f32(i32 23, float %6099)  ; Log(value)
  %6101 = fmul fast float %6100, 5.000000e+00
  %6102 = call float @dx.op.unary.f32(i32 21, float %6101)  ; Exp(value)
  %6103 = fmul fast float %6102, 0x3FEF591A60000000
  %6104 = fadd fast float %6103, 0x3F94DCB540000000
  %6105 = select i1 %6097, float %6104, float 1.000000e+00
  %6106 = fcmp fast oge float %6105, 1.000000e+00
  %6107 = fmul fast float %6090, 2.000000e+00
  %6108 = fadd fast float %6107, %5725
  %6109 = select i1 %6106, float %6108, float %5725
  %6110 = fsub fast float %6109, %5725
  %6111 = fmul fast float %6110, %6085
  %6112 = fadd fast float %6111, %5725
  %6113 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %6112, float %5723, float %5724, float %6112)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = call float @dx.op.unary.f32(i32 25, float %6113)  ; Rsqrt(value)
  %6115 = fmul fast float %6114, %5723
  %6116 = fmul fast float %6114, %5724
  %6117 = fmul fast float %6112, %6114
  br label %6118

; <label>:6118                                    ; preds = %6089, %6046
  %6119 = phi float [ %6115, %6089 ], [ %5723, %6046 ]
  %6120 = phi float [ %6116, %6089 ], [ %5724, %6046 ]
  %6121 = phi float [ %6117, %6089 ], [ %5725, %6046 ]
  %6122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.i32 %6122, 2
  %6124 = add nsw i32 %6123, -1
  %6125 = call i32 @dx.op.binary.i32(i32 37, i32 %6124, i32 0)  ; IMax(a,b)
  %6126 = shl i32 %6083, 2
  %6127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %6126, i32 undef)  ; BufferLoad(srv,index,wot)
  %6128 = extractvalue %dx.types.ResRet.i32 %6127, 0
  %6129 = lshr i32 %6128, 16
  %6130 = and i32 %6128, 65535
  %6131 = lshr i32 %6128, 21
  %6132 = lshr i32 %6130, 5
  %6133 = call i32 @dx.op.binary.i32(i32 40, i32 %6132, i32 %6125)  ; UMin(a,b)
  %6134 = icmp ugt i32 %6131, %6133
  br i1 %6134, label %6498, label %6135

; <label>:6135                                    ; preds = %6118
  br label %6136

; <label>:6136                                    ; preds = %6490, %6135
  %6137 = phi float [ %6491, %6490 ], [ 0.000000e+00, %6135 ]
  %6138 = phi float [ %6492, %6490 ], [ 0.000000e+00, %6135 ]
  %6139 = phi float [ %6493, %6490 ], [ 0.000000e+00, %6135 ]
  %6140 = phi float [ %6494, %6490 ], [ 1.000000e+00, %6135 ]
  %6141 = phi i32 [ %6495, %6490 ], [ %6131, %6135 ]
  %6142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.i32 %6142, 2
  %6144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6079, i32 %6143, i32 %6141)  ; UMad(a,b,c)
  %6145 = shl i32 %6144, 2
  %6146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6145, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.i32 %6146, 0
  %6148 = shl i32 %6141, 5
  %6149 = sub nsw i32 %6129, %6148
  %6150 = call i32 @dx.op.binary.i32(i32 37, i32 %6149, i32 0)  ; IMax(a,b)
  %6151 = call i32 @dx.op.binary.i32(i32 38, i32 %6150, i32 31)  ; IMin(a,b)
  %6152 = sub nsw i32 1, %6129
  %6153 = add nsw i32 %6152, %6130
  %6154 = call i32 @dx.op.binary.i32(i32 37, i32 %6153, i32 0)  ; IMax(a,b)
  %6155 = call i32 @dx.op.binary.i32(i32 38, i32 %6154, i32 32)  ; IMin(a,b)
  %6156 = and i32 %6155, 31
  %6157 = shl i32 -1, %6156
  %6158 = xor i32 %6157, -1
  %6159 = and i32 %6151, 31
  %6160 = shl i32 %6158, %6159
  %6161 = icmp eq i32 %6155, 32
  %6162 = select i1 %6161, i32 -1, i32 %6160
  %6163 = and i32 %6162, %6147
  %6164 = icmp eq i32 %6163, 0
  br i1 %6164, label %6490, label %6165

; <label>:6165                                    ; preds = %6136
  br label %6166

; <label>:6166                                    ; preds = %6273, %6165
  %6167 = phi float [ %6274, %6273 ], [ %6137, %6165 ]
  %6168 = phi float [ %6275, %6273 ], [ %6138, %6165 ]
  %6169 = phi float [ %6276, %6273 ], [ %6139, %6165 ]
  %6170 = phi float [ %6277, %6273 ], [ %6140, %6165 ]
  %6171 = phi i32 [ %6176, %6273 ], [ %6163, %6165 ]
  %6172 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6171)  ; FirstbitLo(value)
  %6173 = add i32 %6172, %6148
  %6174 = and i32 %6172, 31
  %6175 = shl i32 1, %6174
  %6176 = xor i32 %6175, %6171
  %6177 = mul i32 %6173, 72
  %6178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6177, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.f32 %6178, 0
  %6180 = extractvalue %dx.types.ResRet.f32 %6178, 1
  %6181 = extractvalue %dx.types.ResRet.f32 %6178, 2
  %6182 = add i32 %6177, 12
  %6183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6182, i32 undef)  ; BufferLoad(srv,index,wot)
  %6184 = extractvalue %dx.types.ResRet.i32 %6183, 0
  %6185 = add i32 %6177, 16
  %6186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6185, i32 undef)  ; BufferLoad(srv,index,wot)
  %6187 = extractvalue %dx.types.ResRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.ResRet.f32 %6186, 1
  %6189 = extractvalue %dx.types.ResRet.f32 %6186, 2
  %6190 = add i32 %6177, 28
  %6191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6190, i32 undef)  ; BufferLoad(srv,index,wot)
  %6192 = extractvalue %dx.types.ResRet.f32 %6191, 0
  %6193 = add i32 %6177, 32
  %6194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6193, i32 undef)  ; BufferLoad(srv,index,wot)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.ResRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.ResRet.f32 %6194, 2
  %6198 = extractvalue %dx.types.ResRet.f32 %6194, 3
  %6199 = add i32 %6177, 48
  %6200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6199, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.ResRet.f32 %6200, 1
  %6203 = add i32 %6177, 56
  %6204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6203, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.ResRet.f32 %6204, 1
  %6207 = add i32 %6177, 64
  %6208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6207, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.ResRet.f32 %6208, 1
  %6211 = mul i32 %6173, 60
  %6212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.ResRet.f32 %6212, 2
  %6216 = add i32 %6211, 12
  %6217 = add i32 %6211, 48
  %6218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6217, i32 undef)  ; BufferLoad(srv,index,wot)
  %6219 = extractvalue %dx.types.ResRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.ResRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.ResRet.f32 %6218, 2
  %6222 = and i32 %6184, 32767
  %6223 = bitcast float %6179 to i32
  %6224 = icmp eq i32 %6223, -1
  %6225 = bitcast float %6180 to i32
  %6226 = and i32 %6184, 32768
  %6227 = icmp ne i32 %6226, 0
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = fsub fast float %6213, %6229
  %6233 = fsub fast float %6214, %6230
  %6234 = fsub fast float %6215, %6231
  %6235 = fsub fast float %200, %6232
  %6236 = fsub fast float %201, %6233
  %6237 = fsub fast float %202, %6234
  %6238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6216, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.ResRet.f32 %6238, 2
  %6242 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6239, float %6240, float %6241)  ; Dot3(ax,ay,az,bx,by,bz)
  %6243 = add i32 %6211, 24
  %6244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6243, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.ResRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.ResRet.f32 %6244, 2
  %6248 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6245, float %6246, float %6247)  ; Dot3(ax,ay,az,bx,by,bz)
  %6249 = add i32 %6211, 36
  %6250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.ResRet.f32 %6250, 2
  %6254 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6251, float %6252, float %6253)  ; Dot3(ax,ay,az,bx,by,bz)
  %6255 = call float @dx.op.unary.f32(i32 6, float %6242)  ; FAbs(value)
  %6256 = call float @dx.op.unary.f32(i32 6, float %6248)  ; FAbs(value)
  %6257 = call float @dx.op.unary.f32(i32 6, float %6254)  ; FAbs(value)
  %6258 = fsub fast float %6219, %6255
  %6259 = fsub fast float %6220, %6256
  %6260 = fsub fast float %6221, %6257
  %6261 = fmul fast float %6258, %6187
  %6262 = fmul fast float %6259, %6188
  %6263 = fmul fast float %6260, %6189
  %6264 = call float @dx.op.binary.f32(i32 36, float %6262, float %6263)  ; FMin(a,b)
  %6265 = call float @dx.op.binary.f32(i32 36, float %6261, float %6264)  ; FMin(a,b)
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = call float @dx.op.binary.f32(i32 36, float %6170, float %6266)  ; FMin(a,b)
  %6268 = uitofp i1 %6227 to float
  %6269 = fadd fast float %6085, 1.000000e+00
  %6270 = fsub fast float %6269, %6268
  %6271 = fmul fast float %6267, %6270
  %6272 = fcmp fast ogt float %6271, 0.000000e+00
  br i1 %6272, label %6279, label %6273

; <label>:6273                                    ; preds = %6421, %6166
  %6274 = phi float [ %6485, %6421 ], [ %6167, %6166 ]
  %6275 = phi float [ %6486, %6421 ], [ %6168, %6166 ]
  %6276 = phi float [ %6487, %6421 ], [ %6169, %6166 ]
  %6277 = phi float [ %6488, %6421 ], [ %6170, %6166 ]
  %6278 = icmp eq i32 %6171, %6175
  br i1 %6278, label %6489, label %6166

; <label>:6279                                    ; preds = %6166
  br i1 %6224, label %6337, label %6280

; <label>:6280                                    ; preds = %6279
  %6281 = fsub fast float -0.000000e+00, %6239
  %6282 = fsub fast float -0.000000e+00, %6240
  %6283 = fsub fast float -0.000000e+00, %6241
  %6284 = call float @dx.op.dot3.f32(i32 55, float %6119, float %6120, float %6121, float %6281, float %6282, float %6283)  ; Dot3(ax,ay,az,bx,by,bz)
  %6285 = fsub fast float -0.000000e+00, %6284
  %6286 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6281, float %6282, float %6283)  ; Dot3(ax,ay,az,bx,by,bz)
  %6287 = fadd fast float %6286, %6202
  %6288 = fadd fast float %6201, %6286
  %6289 = fsub fast float -0.000000e+00, %6288
  %6290 = fcmp ogt float %6284, -0.000000e+00
  %6291 = select i1 %6290, float %6289, float %6287
  %6292 = call float @dx.op.unary.f32(i32 6, float %6285)  ; FAbs(value)
  %6293 = fdiv fast float 1.000000e+00, %6292
  %6294 = fmul fast float %6291, %6293
  %6295 = call float @dx.op.binary.f32(i32 35, float %6294, float 0.000000e+00)  ; FMax(a,b)
  %6296 = fsub fast float -0.000000e+00, %6245
  %6297 = fsub fast float -0.000000e+00, %6246
  %6298 = fsub fast float -0.000000e+00, %6247
  %6299 = call float @dx.op.dot3.f32(i32 55, float %6119, float %6120, float %6121, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = fsub fast float -0.000000e+00, %6299
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = fadd fast float %6301, %6206
  %6303 = fadd fast float %6205, %6301
  %6304 = fsub fast float -0.000000e+00, %6303
  %6305 = fcmp ogt float %6299, -0.000000e+00
  %6306 = select i1 %6305, float %6304, float %6302
  %6307 = call float @dx.op.unary.f32(i32 6, float %6300)  ; FAbs(value)
  %6308 = fdiv fast float 1.000000e+00, %6307
  %6309 = fmul fast float %6306, %6308
  %6310 = call float @dx.op.binary.f32(i32 35, float %6309, float 0.000000e+00)  ; FMax(a,b)
  %6311 = fsub fast float -0.000000e+00, %6251
  %6312 = fsub fast float -0.000000e+00, %6252
  %6313 = fsub fast float -0.000000e+00, %6253
  %6314 = call float @dx.op.dot3.f32(i32 55, float %6119, float %6120, float %6121, float %6311, float %6312, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = fsub fast float -0.000000e+00, %6314
  %6316 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6311, float %6312, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6317 = fadd fast float %6316, %6210
  %6318 = fadd fast float %6209, %6316
  %6319 = fsub fast float -0.000000e+00, %6318
  %6320 = fcmp ogt float %6314, -0.000000e+00
  %6321 = select i1 %6320, float %6319, float %6317
  %6322 = call float @dx.op.unary.f32(i32 6, float %6315)  ; FAbs(value)
  %6323 = fdiv fast float 1.000000e+00, %6322
  %6324 = fmul fast float %6321, %6323
  %6325 = call float @dx.op.binary.f32(i32 35, float %6324, float 0.000000e+00)  ; FMax(a,b)
  %6326 = call float @dx.op.binary.f32(i32 36, float %6310, float %6325)  ; FMin(a,b)
  %6327 = call float @dx.op.binary.f32(i32 36, float %6295, float %6326)  ; FMin(a,b)
  %6328 = fmul fast float %6327, %6119
  %6329 = fmul fast float %6327, %6120
  %6330 = fmul fast float %6327, %6121
  %6331 = fadd fast float %6328, %200
  %6332 = fadd fast float %6329, %201
  %6333 = fadd fast float %6330, %202
  %6334 = fsub fast float %6331, %6179
  %6335 = fsub fast float %6332, %6180
  %6336 = fsub fast float %6333, %6181
  br label %6344

; <label>:6337                                    ; preds = %6279
  %6338 = fmul fast float %6119, 8.096000e+03
  %6339 = fmul fast float %6120, 8.096000e+03
  %6340 = fmul fast float %6121, 8.096000e+03
  %6341 = fadd fast float %6338, %200
  %6342 = fadd fast float %6339, %201
  %6343 = fadd fast float %6340, %202
  br label %6344

; <label>:6344                                    ; preds = %6337, %6280
  %6345 = phi float [ %6119, %6337 ], [ %6334, %6280 ]
  %6346 = phi float [ %6120, %6337 ], [ %6335, %6280 ]
  %6347 = phi float [ %6121, %6337 ], [ %6336, %6280 ]
  %6348 = phi float [ %6341, %6337 ], [ %6331, %6280 ]
  %6349 = phi float [ %6342, %6337 ], [ %6332, %6280 ]
  %6350 = phi float [ %6343, %6337 ], [ %6333, %6280 ]
  %6351 = fcmp fast olt float %6198, 1.000000e+00
  br i1 %6351, label %6352, label %6383, !dx.controlflow.hints !106

; <label>:6352                                    ; preds = %6344
  %6353 = fmul fast float %6347, %6196
  %6354 = fmul fast float %6346, %6197
  %6355 = fsub fast float %6353, %6354
  %6356 = fmul fast float %6345, %6197
  %6357 = fmul fast float %6347, %6195
  %6358 = fsub fast float %6356, %6357
  %6359 = fmul fast float %6346, %6195
  %6360 = fmul fast float %6345, %6196
  %6361 = fsub fast float %6359, %6360
  %6362 = fmul fast float %6355, 2.000000e+00
  %6363 = fmul fast float %6358, 2.000000e+00
  %6364 = fmul fast float %6361, 2.000000e+00
  %6365 = fmul fast float %6362, %6198
  %6366 = fmul fast float %6363, %6198
  %6367 = fmul fast float %6364, %6198
  %6368 = fmul fast float %6364, %6196
  %6369 = fmul fast float %6363, %6197
  %6370 = fmul fast float %6362, %6197
  %6371 = fmul fast float %6364, %6195
  %6372 = fmul fast float %6363, %6195
  %6373 = fmul fast float %6362, %6196
  %6374 = fadd fast float %6368, %6345
  %6375 = fadd fast float %6374, %6365
  %6376 = fsub fast float %6375, %6369
  %6377 = fsub fast float %6346, %6371
  %6378 = fadd fast float %6377, %6366
  %6379 = fadd fast float %6378, %6370
  %6380 = fadd fast float %6367, %6347
  %6381 = fsub fast float %6380, %6373
  %6382 = fadd fast float %6381, %6372
  br label %6383

; <label>:6383                                    ; preds = %6352, %6344
  %6384 = phi float [ %6376, %6352 ], [ %6345, %6344 ]
  %6385 = phi float [ %6379, %6352 ], [ %6346, %6344 ]
  %6386 = phi float [ %6382, %6352 ], [ %6347, %6344 ]
  br i1 %6224, label %6418, label %6387

; <label>:6387                                    ; preds = %6383
  %6388 = fmul fast float %5672, 0x400187C840000000
  %6389 = fadd fast float %6388, 0xC00EFC2120000000
  %6390 = fmul fast float %6389, %5672
  %6391 = fadd fast float %6390, 0x3FE5D16340000000
  %6392 = fmul fast float %6391, %5672
  %6393 = fadd fast float %6392, 1.000000e+00
  %6394 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6395 = fsub fast float %6348, %200
  %6396 = fsub fast float %6349, %201
  %6397 = fsub fast float %6350, %202
  %6398 = fsub fast float %6348, %6179
  %6399 = fsub fast float %6349, %6180
  %6400 = fsub fast float %6350, %6181
  %6401 = call float @dx.op.dot3.f32(i32 55, float %6395, float %6396, float %6397, float %6395, float %6396, float %6397)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.dot3.f32(i32 55, float %6398, float %6399, float %6400, float %6398, float %6399, float %6400)  ; Dot3(ax,ay,az,bx,by,bz)
  %6403 = fadd fast float %6402, 0x3EE4F8B580000000
  %6404 = fdiv fast float %6401, %6403
  %6405 = bitcast float %6404 to i32
  %6406 = ashr i32 %6405, 1
  %6407 = add nsw i32 %6406, 532487669
  %6408 = bitcast i32 %6407 to float
  %6409 = fmul fast float %6408, %6394
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = fmul fast float %6410, 0x4009981AE0000000
  %6412 = fsub fast float 0x40111BBD80000000, %6411
  %6413 = fmul fast float %6412, %6410
  %6414 = fadd fast float %6413, 0xC0009F6020000000
  %6415 = fmul fast float %6414, %6410
  %6416 = fadd fast float %6415, 1.000000e+00
  %6417 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  br label %6421

; <label>:6418                                    ; preds = %6383
  %6419 = icmp ne i32 %6225, -1
  %6420 = zext i1 %6419 to i32
  br label %6421

; <label>:6421                                    ; preds = %6418, %6387
  %6422 = phi float [ %5672, %6418 ], [ %6417, %6387 ]
  %6423 = phi i32 [ %6420, %6418 ], [ 0, %6387 ]
  %6424 = fmul float %6422, 5.000000e+00
  %6425 = fsub float 5.000000e+00, %6424
  %6426 = icmp ne i32 %6423, 0
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 3
  %6429 = fadd fast float %6428, %6425
  %6430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6429)  ; FMax(a,b)
  %6431 = call float @dx.op.unary.f32(i32 6, float %6384)  ; FAbs(value)
  %6432 = call float @dx.op.unary.f32(i32 6, float %6385)  ; FAbs(value)
  %6433 = fadd fast float %6432, %6431
  %6434 = call float @dx.op.unary.f32(i32 6, float %6386)  ; FAbs(value)
  %6435 = fadd fast float %6433, %6434
  %6436 = fcmp fast oeq float %6435, 0.000000e+00
  %6437 = fdiv fast float 1.000000e+00, %6435
  %6438 = select i1 %6436, float 1.000000e+00, float %6437
  %6439 = fmul fast float %6438, %6384
  %6440 = fmul fast float %6438, %6385
  %6441 = call float @dx.op.unary.f32(i32 6, float %6440)  ; FAbs(value)
  %6442 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6443 = fsub fast float 1.000000e+00, %6441
  %6444 = fsub fast float 1.000000e+00, %6442
  %6445 = fcmp fast oge float %6439, 0.000000e+00
  %6446 = fcmp fast oge float %6440, 0.000000e+00
  %6447 = select i1 %6445, float 1.000000e+00, float -1.000000e+00
  %6448 = select i1 %6446, float 1.000000e+00, float -1.000000e+00
  %6449 = fcmp fast ole float %6386, 0.000000e+00
  %6450 = fmul fast float %6447, %6443
  %6451 = fmul fast float %6448, %6444
  %6452 = select i1 %6449, float %6450, float %6439
  %6453 = select i1 %6449, float %6451, float %6440
  %6454 = fmul fast float %6452, 5.000000e-01
  %6455 = fmul fast float %6453, 5.000000e-01
  %6456 = fadd fast float %6454, 5.000000e-01
  %6457 = fadd fast float %6455, 5.000000e-01
  %6458 = uitofp i32 %6222 to float
  %6459 = call float @dx.op.binary.f32(i32 36, float %6430, float 3.000000e+00)  ; FMin(a,b)
  %6460 = fadd fast float %6459, 2.000000e+00
  %6461 = call float @dx.op.unary.f32(i32 21, float %6460)  ; Exp(value)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6463 = fmul fast float %6462, %6461
  %6464 = fmul fast float %6463, 2.000000e+00
  %6465 = fsub fast float 1.000000e+00, %6464
  %6466 = fmul fast float %6456, %6465
  %6467 = fmul fast float %6457, %6465
  %6468 = fadd fast float %6466, %6463
  %6469 = fadd fast float %6467, %6463
  %6470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %6468, float %6469, float %6458, float undef, i32 0, i32 0, i32 undef, float %6430)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6471 = extractvalue %dx.types.ResRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.ResRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.ResRet.f32 %6470, 2
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6476 = fmul fast float %6475, %6192
  %6477 = call float @dx.op.binary.f32(i32 36, float %5744, float %6476)  ; FMin(a,b)
  %6478 = select i1 %6426, float %6477, float %6476
  %6479 = fmul fast float %6471, %6271
  %6480 = fmul fast float %6479, %6478
  %6481 = fmul fast float %6472, %6271
  %6482 = fmul fast float %6481, %6478
  %6483 = fmul fast float %6473, %6271
  %6484 = fmul fast float %6483, %6478
  %6485 = fadd fast float %6480, %6167
  %6486 = fadd fast float %6482, %6168
  %6487 = fadd fast float %6484, %6169
  %6488 = fsub fast float %6170, %6271
  br label %6273

; <label>:6489                                    ; preds = %6273
  br label %6490

; <label>:6490                                    ; preds = %6489, %6136
  %6491 = phi float [ %6137, %6136 ], [ %6274, %6489 ]
  %6492 = phi float [ %6138, %6136 ], [ %6275, %6489 ]
  %6493 = phi float [ %6139, %6136 ], [ %6276, %6489 ]
  %6494 = phi float [ %6140, %6136 ], [ %6277, %6489 ]
  %6495 = add i32 %6141, 1
  %6496 = icmp ugt i32 %6495, %6133
  br i1 %6496, label %6497, label %6136, !llvm.loop !107

; <label>:6497                                    ; preds = %6490
  br label %6498

; <label>:6498                                    ; preds = %6497, %6118
  %6499 = phi float [ 0.000000e+00, %6118 ], [ %6491, %6497 ]
  %6500 = phi float [ 0.000000e+00, %6118 ], [ %6492, %6497 ]
  %6501 = phi float [ 0.000000e+00, %6118 ], [ %6493, %6497 ]
  %6502 = call float @dx.op.dot3.f32(i32 55, float %6499, float %6500, float %6501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6503 = select i1 %259, float 0.000000e+00, float %6499
  %6504 = select i1 %259, float %6502, float %6500
  %6505 = select i1 %259, float 0.000000e+00, float %6501
  %6506 = fcmp fast olt float %6044, 0.000000e+00
  %6507 = call float @dx.op.unary.f32(i32 6, float %6044)  ; FAbs(value)
  %6508 = fmul fast float %6507, %5984
  %6509 = fmul fast float %6507, %5985
  %6510 = fmul fast float %6507, %5986
  %6511 = select i1 %6506, float %5984, float %6508
  %6512 = select i1 %6506, float %5985, float %6509
  %6513 = select i1 %6506, float %5986, float %6510
  %6514 = fsub fast float 1.000000e+00, %6507
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fmul fast float %6515, %6503
  %6517 = fmul fast float %6515, %6504
  %6518 = fmul fast float %6515, %6505
  %6519 = fadd fast float %6511, %6516
  %6520 = fadd fast float %6512, %6517
  %6521 = fadd fast float %6513, %6518
  br label %6522

; <label>:6522                                    ; preds = %6498, %6027
  %6523 = phi float [ %5984, %6027 ], [ %6519, %6498 ]
  %6524 = phi float [ %5985, %6027 ], [ %6520, %6498 ]
  %6525 = phi float [ %5986, %6027 ], [ %6521, %6498 ]
  %6526 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5667, float %5668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = fcmp fast ogt float %6526, 0x3E7FF19E20000000
  %6528 = fdiv fast float 1.000000e+00, %6526
  %6529 = select i1 %6527, float %6528, float 0.000000e+00
  %6530 = fmul fast float %6529, %5666
  %6531 = fmul fast float %6529, %5667
  %6532 = fmul fast float %6529, %5668
  %6533 = fadd fast float %6530, -1.000000e+00
  %6534 = fadd fast float %6531, -1.000000e+00
  %6535 = fadd fast float %6532, -1.000000e+00
  %6536 = fmul fast float %6533, 5.000000e-01
  %6537 = fmul fast float %6534, 5.000000e-01
  %6538 = fmul fast float %6535, 5.000000e-01
  %6539 = fadd fast float %6536, 1.000000e+00
  %6540 = fadd fast float %6537, 1.000000e+00
  %6541 = fadd fast float %6538, 1.000000e+00
  %6542 = fmul fast float %6033, %4506
  %6543 = fmul fast float %6033, %4507
  %6544 = fmul fast float %6033, %4508
  %6545 = fadd fast float %6542, -1.000000e+00
  %6546 = fadd fast float %6543, -1.000000e+00
  %6547 = fadd fast float %6544, -1.000000e+00
  %6548 = fmul fast float %6545, %4413
  %6549 = fmul fast float %6546, %4413
  %6550 = fmul fast float %6547, %4413
  %6551 = fmul fast float %6523, %6028
  %6552 = fmul fast float %6524, %6029
  %6553 = fmul fast float %6525, %6030
  %6554 = fsub fast float 1.000000e+00, %5717
  %6555 = bitcast float %6554 to i32
  %6556 = sitofp i32 %6555 to float
  %6557 = fmul fast float %6556, 5.000000e+00
  %6558 = fadd fast float %6557, 0xC1EFBF8940000000
  %6559 = fptosi float %6558 to i32
  %6560 = bitcast i32 %6559 to float
  %6561 = fmul fast float %6560, %4417
  %6562 = fmul fast float %5976, %6561
  %6563 = fmul fast float %6562, %6033
  %6564 = fmul fast float %6563, %6539
  %6565 = fmul fast float %5977, %6561
  %6566 = fmul fast float %6565, %6033
  %6567 = fmul fast float %6566, %6540
  %6568 = fmul fast float %5978, %6561
  %6569 = fmul fast float %6568, %6033
  %6570 = fmul fast float %6569, %6541
  %6571 = fadd fast float %6551, %4406
  %6572 = fadd fast float %6571, %6564
  %6573 = fmul fast float %6572, %4413
  %6574 = fadd fast float %6552, %4407
  %6575 = fadd fast float %6574, %6567
  %6576 = fmul fast float %6575, %4413
  %6577 = fadd fast float %6553, %4408
  %6578 = fadd fast float %6577, %6570
  %6579 = fmul fast float %6578, %4413
  %6580 = fadd fast float %6550, 1.000000e+00
  %6581 = fadd fast float %6549, 1.000000e+00
  %6582 = fadd fast float %6548, 1.000000e+00
  %6583 = fmul fast float %6033, %5978
  %6584 = fmul fast float %6033, %5977
  %6585 = fmul fast float %6033, %5976
  %6586 = fmul fast float %6582, %5980
  %6587 = fmul fast float %6581, %5981
  %6588 = fmul fast float %6580, %5982
  %6589 = fadd fast float %6586, %6585
  %6590 = fmul fast float %6589, %4413
  %6591 = fadd fast float %6587, %6584
  %6592 = fmul fast float %6591, %4413
  %6593 = fadd fast float %6588, %6583
  %6594 = fmul fast float %6593, %4413
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 3
  %6597 = fcmp fast oeq float %6596, 0.000000e+00
  br i1 %6597, label %8355, label %6598

; <label>:6598                                    ; preds = %6522
  %6599 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6600 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6601 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.CBufRet.f32 %6602, 1
  %6605 = extractvalue %dx.types.CBufRet.f32 %6602, 2
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6609 = call float @dx.op.dot3.f32(i32 55, float %6603, float %6604, float %6605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6610 = select i1 %259, float %6607, float %6603
  %6611 = select i1 %259, float %6609, float %6604
  %6612 = select i1 %259, float %6608, float %6605
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 2
  %6615 = fmul fast float %6614, %128
  %6616 = fmul fast float %6614, %129
  %6617 = fmul fast float %6614, %130
  %6618 = fadd fast float %6615, %200
  %6619 = fadd fast float %6616, %201
  %6620 = fadd fast float %6617, %202
  %6621 = fcmp fast olt float %6596, 0.000000e+00
  br i1 %6621, label %7879, label %6622

; <label>:6622                                    ; preds = %6598
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6626 = extractvalue %dx.types.CBufRet.f32 %6623, 2
  %6627 = extractvalue %dx.types.CBufRet.f32 %6623, 3
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6633, 3
  %6638 = fmul fast float %6624, %6618
  %6639 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6625, float %6638)  ; FMad(a,b,c)
  %6640 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %6626, float %6639)  ; FMad(a,b,c)
  %6641 = fadd fast float %6640, %6627
  %6642 = fmul fast float %6629, %6618
  %6643 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6630, float %6642)  ; FMad(a,b,c)
  %6644 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %6631, float %6643)  ; FMad(a,b,c)
  %6645 = fadd fast float %6644, %6632
  %6646 = fmul fast float %6634, %6618
  %6647 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6635, float %6646)  ; FMad(a,b,c)
  %6648 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %6636, float %6647)  ; FMad(a,b,c)
  %6649 = fadd fast float %6648, %6637
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = fcmp fast une float %6651, 0.000000e+00
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 1
  %6656 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6657 = fmul fast float %6656, %6641
  %6658 = fmul fast float %6656, %6645
  %6659 = fadd fast float %6657, %6654
  %6660 = fadd fast float %6658, %6655
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.CBufRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.CBufRet.f32 %6661, 3
  %6665 = fmul fast float %6664, %6641
  %6666 = fmul fast float %6664, %6645
  %6667 = fadd fast float %6665, %6662
  %6668 = fadd fast float %6666, %6663
  %6669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6669, 1
  %6671 = fsub fast float %6670, %6649
  %6672 = extractvalue %dx.types.CBufRet.f32 %6669, 2
  %6673 = fmul fast float %6671, %6672
  %6674 = fsub fast float 1.000000e+00, %6673
  %6675 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  br i1 %6652, label %6736, label %6676

; <label>:6676                                    ; preds = %6622
  %6677 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 2
  %6680 = fadd fast float %6679, %6677
  %6681 = fcmp fast ogt float %6680, 0.000000e+00
  br i1 %6681, label %6682, label %6706

; <label>:6682                                    ; preds = %6676
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = extractvalue %dx.types.CBufRet.f32 %6683, 1
  %6686 = fsub fast float %6667, %6684
  %6687 = fsub fast float %6668, %6685
  %6688 = fcmp fast olt float %6686, 0.000000e+00
  %6689 = fcmp fast olt float %6687, 0.000000e+00
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6694 = extractvalue %dx.types.CBufRet.f32 %6690, 3
  %6695 = select i1 %6688, float %6691, float %6693
  %6696 = select i1 %6689, float %6692, float %6694
  %6697 = fmul fast float %6695, %6686
  %6698 = fmul fast float %6696, %6687
  %6699 = call float @dx.op.unary.f32(i32 6, float %6697)  ; FAbs(value)
  %6700 = call float @dx.op.unary.f32(i32 6, float %6698)  ; FAbs(value)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6702 = call float @dx.op.binary.f32(i32 35, float %6699, float %6700)  ; FMax(a,b)
  %6703 = fsub fast float %6701, %6702
  %6704 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6705 = fmul fast float %6704, %6675
  br label %6706

; <label>:6706                                    ; preds = %6682, %6676
  %6707 = phi float [ %6705, %6682 ], [ 0.000000e+00, %6676 ]
  %6708 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6709 = extractvalue %dx.types.CBufRet.f32 %6678, 1
  %6710 = fadd fast float %6709, %6708
  %6711 = fcmp fast ogt float %6710, 0.000000e+00
  br i1 %6711, label %6712, label %6736

; <label>:6712                                    ; preds = %6706
  %6713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.CBufRet.f32 %6713, 1
  %6716 = fsub fast float %6659, %6714
  %6717 = fsub fast float %6660, %6715
  %6718 = fcmp fast olt float %6716, 0.000000e+00
  %6719 = fcmp fast olt float %6717, 0.000000e+00
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.CBufRet.f32 %6720, 1
  %6723 = extractvalue %dx.types.CBufRet.f32 %6720, 2
  %6724 = extractvalue %dx.types.CBufRet.f32 %6720, 3
  %6725 = select i1 %6718, float %6721, float %6723
  %6726 = select i1 %6719, float %6722, float %6724
  %6727 = fmul fast float %6725, %6716
  %6728 = fmul fast float %6726, %6717
  %6729 = call float @dx.op.unary.f32(i32 6, float %6727)  ; FAbs(value)
  %6730 = call float @dx.op.unary.f32(i32 6, float %6728)  ; FAbs(value)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6732 = call float @dx.op.binary.f32(i32 35, float %6729, float %6730)  ; FMax(a,b)
  %6733 = fsub fast float %6731, %6732
  %6734 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6735 = fmul fast float %6734, %6675
  br label %6736

; <label>:6736                                    ; preds = %6712, %6706, %6622
  %6737 = phi float [ 0.000000e+00, %6622 ], [ %6735, %6712 ], [ 0.000000e+00, %6706 ]
  %6738 = phi float [ 0.000000e+00, %6622 ], [ %6707, %6712 ], [ %6707, %6706 ]
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6741 = call float @dx.op.unary.f32(i32 7, float %6740)  ; Saturate(value)
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6745 = fsub fast float %6641, %6743
  %6746 = fsub fast float %6645, %6744
  %6747 = fcmp fast olt float %6745, 0.000000e+00
  %6748 = fcmp fast olt float %6746, 0.000000e+00
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6754 = select i1 %6747, float %6750, float %6752
  %6755 = select i1 %6748, float %6751, float %6753
  %6756 = fmul fast float %6754, %6745
  %6757 = fmul fast float %6755, %6746
  %6758 = call float @dx.op.unary.f32(i32 6, float %6756)  ; FAbs(value)
  %6759 = call float @dx.op.unary.f32(i32 6, float %6757)  ; FAbs(value)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6761 = call float @dx.op.binary.f32(i32 35, float %6758, float %6759)  ; FMax(a,b)
  %6762 = fsub fast float %6760, %6761
  %6763 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6764 = call float @dx.op.binary.f32(i32 36, float %6763, float %6741)  ; FMin(a,b)
  %6765 = fmul fast float %6764, %6675
  %6766 = fsub fast float %6737, %6765
  %6767 = fsub fast float %6738, %6737
  %6768 = fsub fast float %6767, %6765
  %6769 = call float @dx.op.binary.f32(i32 35, float %6737, float %6738)  ; FMax(a,b)
  %6770 = call float @dx.op.binary.f32(i32 35, float %6765, float %6769)  ; FMax(a,b)
  %6771 = fcmp fast olt float %6770, 1.000000e+00
  br i1 %6771, label %6772, label %7170, !dx.controlflow.hints !109

; <label>:6772                                    ; preds = %6736
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = fcmp fast une float %6774, 0.000000e+00
  br i1 %6775, label %6776, label %7170, !dx.controlflow.hints !110

; <label>:6776                                    ; preds = %6772
  %6777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6777, 0
  %6779 = extractvalue %dx.types.CBufRet.f32 %6777, 1
  %6780 = extractvalue %dx.types.CBufRet.f32 %6777, 2
  %6781 = extractvalue %dx.types.CBufRet.f32 %6777, 3
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 0
  %6784 = extractvalue %dx.types.CBufRet.f32 %6782, 1
  %6785 = extractvalue %dx.types.CBufRet.f32 %6782, 2
  %6786 = extractvalue %dx.types.CBufRet.f32 %6782, 3
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6790 = extractvalue %dx.types.CBufRet.f32 %6787, 2
  %6791 = extractvalue %dx.types.CBufRet.f32 %6787, 3
  %6792 = fmul fast float %6778, %6618
  %6793 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6779, float %6792)  ; FMad(a,b,c)
  %6794 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %6780, float %6793)  ; FMad(a,b,c)
  %6795 = fadd fast float %6794, %6781
  %6796 = fmul fast float %6783, %6618
  %6797 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6784, float %6796)  ; FMad(a,b,c)
  %6798 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %6785, float %6797)  ; FMad(a,b,c)
  %6799 = fadd fast float %6798, %6786
  %6800 = fmul fast float %6788, %6618
  %6801 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6789, float %6800)  ; FMad(a,b,c)
  %6802 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %6790, float %6801)  ; FMad(a,b,c)
  %6803 = fadd fast float %6802, %6791
  %6804 = fcmp fast oge float %6795, 1.000000e+00
  %6805 = fcmp fast oge float %6799, 1.000000e+00
  %6806 = or i1 %6804, %6805
  %6807 = fcmp fast olt float %6795, 0.000000e+00
  %6808 = fcmp fast olt float %6799, 0.000000e+00
  %6809 = or i1 %6807, %6808
  %6810 = or i1 %6806, %6809
  br i1 %6810, label %7170, label %6811, !dx.controlflow.hints !111

; <label>:6811                                    ; preds = %6776
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6816 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.i32 %6816, 2
  %6818 = uitofp i32 %6817 to float
  %6819 = extractvalue %dx.types.CBufRet.i32 %6816, 3
  %6820 = uitofp i32 %6819 to float
  %6821 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6822 = fmul fast float %6821, 2.000000e+00
  %6823 = fsub fast float %6795, %6813
  %6824 = fsub fast float %6799, %6814
  %6825 = fmul fast float %6822, %6823
  %6826 = fmul fast float %6822, %6824
  %6827 = fdiv fast float 1.000000e+00, %6601
  %6828 = fmul fast float %6826, %6827
  %6829 = call float @dx.op.unary.f32(i32 6, float %6828)  ; FAbs(value)
  %6830 = fmul fast float %6815, %6620
  %6831 = fmul fast float %6830, %6822
  %6832 = call float @dx.op.unary.f32(i32 6, float %6831)  ; FAbs(value)
  %6833 = call float @dx.op.unary.f32(i32 6, float %6825)  ; FAbs(value)
  %6834 = call float @dx.op.binary.f32(i32 35, float %6832, float %6829)  ; FMax(a,b)
  %6835 = call float @dx.op.binary.f32(i32 35, float %6833, float %6834)  ; FMax(a,b)
  %6836 = fmul fast float %6835, 2.000000e+00
  %6837 = call float @dx.op.unary.f32(i32 23, float %6836)  ; Log(value)
  %6838 = call float @dx.op.binary.f32(i32 35, float %6837, float %6818)  ; FMax(a,b)
  %6839 = call float @dx.op.unary.f32(i32 22, float %6838)  ; Frc(value)
  %6840 = fadd fast float %6839, 0xBFEA666660000000
  %6841 = fmul fast float %6840, 8.000000e+00
  %6842 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6843 = call float @dx.op.unary.f32(i32 27, float %6838)  ; Round_ni(value)
  %6844 = fadd fast float %6843, %6842
  %6845 = call float @dx.op.binary.f32(i32 36, float %6844, float %6820)  ; FMin(a,b)
  %6846 = call float @dx.op.unary.f32(i32 27, float %6845)  ; Round_ni(value)
  %6847 = fsub fast float -0.000000e+00, %6846
  %6848 = call float @dx.op.unary.f32(i32 21, float %6847)  ; Exp(value)
  %6849 = fmul fast float %6848, %6822
  %6850 = fmul fast float %6849, %6795
  %6851 = fmul fast float %6849, %6799
  %6852 = fmul fast float %6850, 2.500000e-01
  %6853 = fmul fast float %6851, 2.500000e-01
  %6854 = fadd fast float %6852, 5.000000e-01
  %6855 = fadd fast float %6853, 5.000000e-01
  %6856 = fsub fast float %6820, %6818
  %6857 = fptoui float %6856 to i32
  %6858 = add i32 %6857, 320
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6858)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 0
  %6861 = extractvalue %dx.types.CBufRet.f32 %6859, 1
  %6862 = fcmp fast une float %6845, %6820
  %6863 = fsub fast float %6795, %6860
  %6864 = fsub fast float %6799, %6861
  %6865 = call float @dx.op.unary.f32(i32 6, float %6863)  ; FAbs(value)
  %6866 = call float @dx.op.unary.f32(i32 6, float %6864)  ; FAbs(value)
  %6867 = fmul fast float %6865, %6849
  %6868 = fmul fast float %6866, %6849
  %6869 = fcmp fast olt float %6867, 1.000000e+00
  %6870 = fcmp fast olt float %6868, 1.000000e+00
  %6871 = and i1 %6869, %6870
  %6872 = or i1 %6862, %6871
  br i1 %6872, label %6873, label %7170, !dx.controlflow.hints !112

; <label>:6873                                    ; preds = %6811
  %6874 = fmul fast float %6851, 5.000000e-01
  %6875 = fmul fast float %6850, 5.000000e-01
  %6876 = fadd fast float %6874, 5.000000e-01
  %6877 = fadd fast float %6875, 5.000000e-01
  %6878 = sitofp i32 %6817 to float
  %6879 = fsub fast float %6845, %6878
  %6880 = call float @dx.op.unary.f32(i32 27, float %6879)  ; Round_ni(value)
  %6881 = call float @dx.op.unary.f32(i32 22, float %6845)  ; Frc(value)
  %6882 = call float @dx.op.unary.f32(i32 22, float %6877)  ; Frc(value)
  %6883 = call float @dx.op.unary.f32(i32 22, float %6876)  ; Frc(value)
  %6884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6882, float %6883, float %6880, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6885 = extractvalue %dx.types.ResRet.f32 %6884, 0
  %6886 = extractvalue %dx.types.ResRet.f32 %6884, 1
  %6887 = extractvalue %dx.types.ResRet.f32 %6884, 2
  %6888 = extractvalue %dx.types.ResRet.f32 %6884, 3
  %6889 = fcmp fast ogt float %6881, 0.000000e+00
  br i1 %6889, label %6890, label %6911, !dx.controlflow.hints !113

; <label>:6890                                    ; preds = %6873
  %6891 = fadd fast float %6880, 1.000000e+00
  %6892 = call float @dx.op.unary.f32(i32 22, float %6854)  ; Frc(value)
  %6893 = call float @dx.op.unary.f32(i32 22, float %6855)  ; Frc(value)
  %6894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6892, float %6893, float %6891, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6895 = extractvalue %dx.types.ResRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.ResRet.f32 %6894, 1
  %6897 = extractvalue %dx.types.ResRet.f32 %6894, 2
  %6898 = extractvalue %dx.types.ResRet.f32 %6894, 3
  %6899 = fsub fast float %6895, %6885
  %6900 = fsub fast float %6896, %6886
  %6901 = fsub fast float %6897, %6887
  %6902 = fsub fast float %6898, %6888
  %6903 = fmul fast float %6899, %6881
  %6904 = fmul fast float %6900, %6881
  %6905 = fmul fast float %6901, %6881
  %6906 = fmul fast float %6902, %6881
  %6907 = fadd fast float %6903, %6885
  %6908 = fadd fast float %6904, %6886
  %6909 = fadd fast float %6905, %6887
  %6910 = fadd fast float %6906, %6888
  br label %6911

; <label>:6911                                    ; preds = %6890, %6873
  %6912 = phi float [ %6907, %6890 ], [ %6885, %6873 ]
  %6913 = phi float [ %6908, %6890 ], [ %6886, %6873 ]
  %6914 = phi float [ %6909, %6890 ], [ %6887, %6873 ]
  %6915 = phi float [ %6910, %6890 ], [ %6888, %6873 ]
  %6916 = fadd fast float %6912, -5.000000e-01
  %6917 = fadd fast float %6914, -5.000000e-01
  %6918 = fmul fast float %6916, 0xBFD5555560000000
  %6919 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6917, float %6918)  ; FMad(a,b,c)
  %6920 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6913, float 0.000000e+00)  ; FMad(a,b,c)
  %6921 = fadd fast float %6920, %6915
  %6922 = fmul fast float %6916, -7.500000e-01
  %6923 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6917, float %6922)  ; FMad(a,b,c)
  %6924 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6913, float 0.000000e+00)  ; FMad(a,b,c)
  %6925 = fadd fast float %6924, %6915
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 0
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6933 = fsub fast float %6929, %6919
  %6934 = fsub fast float %6930, %6921
  %6935 = fsub fast float %6931, %6923
  %6936 = fsub fast float %6932, %6925
  %6937 = fmul fast float %6933, %6927
  %6938 = fmul fast float %6934, %6927
  %6939 = fmul fast float %6935, %6927
  %6940 = fmul fast float %6936, %6927
  %6941 = fadd fast float %6937, %6919
  %6942 = fadd fast float %6938, %6921
  %6943 = fadd fast float %6939, %6923
  %6944 = fadd fast float %6940, %6925
  %6945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6946 = extractvalue %dx.types.ResRet.i32 %6945, 0
  %6947 = and i32 %6946, 536870911
  %6948 = uitofp i32 %6947 to float
  %6949 = fmul fast float %6948, %6795
  %6950 = fmul fast float %6948, %6799
  %6951 = fptoui float %6949 to i32
  %6952 = fptoui float %6950 to i32
  %6953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6954 = extractvalue %dx.types.ResRet.i32 %6953, 0
  %6955 = and i32 %6954, 31
  %6956 = lshr i32 %6951, %6955
  %6957 = lshr i32 %6952, %6955
  %6958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6959 = extractvalue %dx.types.ResRet.i32 %6958, 0
  %6960 = and i32 %6959, 31
  %6961 = shl i32 1, %6960
  %6962 = call i32 @dx.op.binary.i32(i32 40, i32 %6961, i32 4)  ; UMin(a,b)
  %6963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6964 = extractvalue %dx.types.ResRet.i32 %6963, 0
  %6965 = extractvalue %dx.types.ResRet.i32 %6963, 1
  %6966 = icmp eq i32 %6962, 0
  br i1 %6966, label %7008, label %6967

; <label>:6967                                    ; preds = %6911
  br label %6968

; <label>:6968                                    ; preds = %6996, %6967
  %6969 = phi i32 [ %6999, %6996 ], [ 0, %6967 ]
  %6970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6971 = extractvalue %dx.types.ResRet.i32 %6970, 0
  %6972 = lshr i32 %6971, 16
  %6973 = and i32 %6972, 31
  %6974 = shl i32 %6957, %6973
  %6975 = add i32 %6974, %6956
  %6976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6977 = extractvalue %dx.types.ResRet.i32 %6976, 0
  %6978 = and i32 %6977, 31
  %6979 = shl i32 %6975, %6978
  %6980 = add i32 %6979, %6969
  %6981 = shl i32 %6980, 2
  %6982 = add i32 %6981, 32
  %6983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6982, i32 undef)  ; BufferLoad(srv,index,wot)
  %6984 = extractvalue %dx.types.ResRet.i32 %6983, 0
  %6985 = icmp slt i32 %6984, 0
  %6986 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6969
  %6987 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %6969
  %6988 = bitcast float* %6986 to i32*
  %6989 = bitcast float* %6987 to i32*
  br i1 %6985, label %6990, label %6996

; <label>:6990                                    ; preds = %6968
  %6991 = and i32 %6984, 1073741823
  %6992 = add nuw nsw i32 %6991, 20
  %6993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6992, i32 undef)  ; BufferLoad(srv,index,wot)
  %6994 = extractvalue %dx.types.ResRet.i32 %6993, 0
  %6995 = extractvalue %dx.types.ResRet.i32 %6993, 1
  br label %6996

; <label>:6996                                    ; preds = %6990, %6968
  %6997 = phi i32 [ %6994, %6990 ], [ %6964, %6968 ]
  %6998 = phi i32 [ %6995, %6990 ], [ %6965, %6968 ]
  store i32 %6997, i32* %6988, align 4
  store i32 %6998, i32* %6989, align 4
  %6999 = add nuw i32 %6969, 1
  %7000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.i32 %7000, 2
  %7002 = icmp eq i32 %7001, 0
  %7003 = icmp ugt i32 %6984, -1073741825
  %7004 = and i1 %7003, %7002
  %7005 = icmp ult i32 %6999, %6962
  %7006 = and i1 %7004, %7005
  br i1 %7006, label %6968, label %7007

; <label>:7007                                    ; preds = %6996
  br label %7008

; <label>:7008                                    ; preds = %7007, %6911
  %7009 = phi i32 [ 0, %6911 ], [ %6999, %7007 ]
  %7010 = extractvalue %dx.types.CBufRet.f32 %6773, 2
  %7011 = fptoui float %7010 to i32
  %7012 = icmp eq i32 %7011, 0
  br i1 %7012, label %7064, label %7013

; <label>:7013                                    ; preds = %7008
  br label %7014

; <label>:7014                                    ; preds = %7059, %7013
  %7015 = phi i32 [ %7060, %7059 ], [ %7009, %7013 ]
  %7016 = phi i32 [ %7061, %7059 ], [ 0, %7013 ]
  %7017 = lshr i32 %7016, 2
  %7018 = and i32 %7016, 3
  %7019 = add nuw nsw i32 %7017, 83
  %7020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %7019)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.i32 %7020, 0
  %7022 = extractvalue %dx.types.CBufRet.i32 %7020, 1
  %7023 = extractvalue %dx.types.CBufRet.i32 %7020, 2
  %7024 = extractvalue %dx.types.CBufRet.i32 %7020, 3
  %7025 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %7021, i32* %7025, align 4
  %7026 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %7022, i32* %7026, align 4
  %7027 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %7023, i32* %7027, align 4
  %7028 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %7024, i32* %7028, align 4
  %7029 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %7018
  %7030 = load i32, i32* %7029, align 4, !tbaa !114, !noalias !118
  %7031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7032 = extractvalue %dx.types.ResRet.i32 %7031, 0
  %7033 = lshr i32 %7032, 16
  %7034 = and i32 %7033, 31
  %7035 = shl i32 %6957, %7034
  %7036 = add i32 %7035, %6956
  %7037 = shl i32 %7036, 2
  %7038 = add i32 %7037, %7030
  %7039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7038, i32 undef)  ; BufferLoad(srv,index,wot)
  %7040 = extractvalue %dx.types.ResRet.i32 %7039, 0
  %7041 = icmp eq i32 %7040, 0
  br i1 %7041, label %7059, label %7042

; <label>:7042                                    ; preds = %7014
  %7043 = icmp slt i32 %7040, 0
  %7044 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %7015
  %7045 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %7015
  %7046 = bitcast float* %7044 to i32*
  %7047 = bitcast float* %7045 to i32*
  br i1 %7043, label %7048, label %7055

; <label>:7048                                    ; preds = %7042
  %7049 = and i32 %7040, 1073741823
  %7050 = add i32 %7030, 20
  %7051 = add i32 %7050, %7049
  %7052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7051, i32 undef)  ; BufferLoad(srv,index,wot)
  %7053 = extractvalue %dx.types.ResRet.i32 %7052, 0
  %7054 = extractvalue %dx.types.ResRet.i32 %7052, 1
  br label %7055

; <label>:7055                                    ; preds = %7048, %7042
  %7056 = phi i32 [ %7053, %7048 ], [ %6964, %7042 ]
  %7057 = phi i32 [ %7054, %7048 ], [ %6965, %7042 ]
  store i32 %7056, i32* %7046, align 4
  store i32 %7057, i32* %7047, align 4
  %7058 = add i32 %7015, 1
  br label %7059

; <label>:7059                                    ; preds = %7055, %7014
  %7060 = phi i32 [ %7015, %7014 ], [ %7058, %7055 ]
  %7061 = add nuw i32 %7016, 1
  %7062 = icmp eq i32 %7061, %7011
  br i1 %7062, label %7063, label %7014

; <label>:7063                                    ; preds = %7059
  br label %7064

; <label>:7064                                    ; preds = %7063, %7008
  %7065 = phi i32 [ %7009, %7008 ], [ %7060, %7063 ]
  %7066 = icmp eq i32 %7065, 1
  %7067 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  %7068 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 0
  br i1 %7066, label %7069, label %7072

; <label>:7069                                    ; preds = %7064
  %7070 = load float, float* %7067, align 4
  %7071 = load float, float* %7068, align 4
  br label %7099

; <label>:7072                                    ; preds = %7064
  %7073 = load float, float* %7067, align 4
  %7074 = load float, float* %7068, align 4
  %7075 = fdiv fast float 1.000000e+00, %7074
  %7076 = fsub fast float %7073, %7075
  %7077 = icmp ugt i32 %7065, 1
  br i1 %7077, label %7078, label %7094

; <label>:7078                                    ; preds = %7072
  br label %7079

; <label>:7079                                    ; preds = %7079, %7078
  %7080 = phi float [ %7089, %7079 ], [ %7076, %7078 ]
  %7081 = phi float [ %7090, %7079 ], [ %7073, %7078 ]
  %7082 = phi i32 [ %7091, %7079 ], [ 1, %7078 ]
  %7083 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %7082
  %7084 = load float, float* %7083, align 4
  %7085 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %7082
  %7086 = load float, float* %7085, align 4
  %7087 = fdiv fast float 1.000000e+00, %7086
  %7088 = fsub fast float %7084, %7087
  %7089 = call float @dx.op.binary.f32(i32 36, float %7080, float %7088)  ; FMin(a,b)
  %7090 = call float @dx.op.binary.f32(i32 35, float %7081, float %7084)  ; FMax(a,b)
  %7091 = add nuw i32 %7082, 1
  %7092 = icmp eq i32 %7091, %7065
  br i1 %7092, label %7093, label %7079

; <label>:7093                                    ; preds = %7079
  br label %7094

; <label>:7094                                    ; preds = %7093, %7072
  %7095 = phi float [ %7076, %7072 ], [ %7089, %7093 ]
  %7096 = phi float [ %7073, %7072 ], [ %7090, %7093 ]
  %7097 = fsub fast float %7096, %7095
  %7098 = fdiv fast float 1.000000e+00, %7097
  br label %7099

; <label>:7099                                    ; preds = %7094, %7069
  %7100 = phi float [ %7070, %7069 ], [ %7096, %7094 ]
  %7101 = phi float [ %7071, %7069 ], [ %7098, %7094 ]
  %7102 = fadd fast float %6803, %7100
  %7103 = fmul fast float %7102, %7101
  %7104 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7105 = fmul fast float %7104, 2.000000e+00
  %7106 = fsub fast float 1.000000e+00, %7105
  %7107 = fmul fast float %6941, %6941
  %7108 = fsub fast float %6942, %7107
  %7109 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7108)  ; FMax(a,b)
  %7110 = fdiv fast float 1.000000e+00, %7109
  %7111 = fmul fast float %6942, %6941
  %7112 = fsub fast float %6943, %7111
  %7113 = fsub fast float %7106, %6941
  %7114 = fmul fast float %7106, %7106
  %7115 = fsub fast float %7114, %6942
  %7116 = fmul fast float %7110, %7112
  %7117 = fmul fast float %7116, %7113
  %7118 = fsub fast float %7115, %7117
  %7119 = fmul fast float %6942, %6942
  %7120 = fsub fast float %6944, %7119
  %7121 = fmul fast float %7112, %7112
  %7122 = fmul fast float %7121, %7110
  %7123 = fsub fast float %7120, %7122
  %7124 = fdiv fast float %7118, %7123
  %7125 = fmul fast float %7124, %7112
  %7126 = fsub fast float %7113, %7125
  %7127 = fmul fast float %7126, %7110
  %7128 = fmul fast float %7127, %6941
  %7129 = fsub fast float 1.000000e+00, %7128
  %7130 = fmul fast float %7124, %6942
  %7131 = fsub fast float %7129, %7130
  %7132 = fmul fast float %7127, %7127
  %7133 = fmul fast float %7124, 4.000000e+00
  %7134 = fmul fast float %7133, %7131
  %7135 = fsub fast float %7132, %7134
  %7136 = call float @dx.op.unary.f32(i32 24, float %7135)  ; Sqrt(value)
  %7137 = fcmp fast oge float %7127, 0.000000e+00
  %7138 = fsub fast float -0.000000e+00, %7136
  %7139 = select i1 %7137, float %7138, float %7136
  %7140 = fsub fast float %7139, %7127
  %7141 = fdiv fast float %7140, %7124
  %7142 = fdiv fast float %7131, %7140
  %7143 = fmul fast float %7141, 5.000000e-01
  %7144 = fmul fast float %7142, 2.000000e+00
  %7145 = select i1 %7137, float %7143, float %7144
  %7146 = select i1 %7137, float %7144, float %7143
  %7147 = call float @dx.op.binary.f32(i32 35, float %7145, float %7146)  ; FMax(a,b)
  %7148 = call float @dx.op.binary.f32(i32 36, float %7145, float %7146)  ; FMin(a,b)
  %7149 = fcmp fast ogt float %7106, %7147
  %7150 = fsub fast float %7106, %7148
  %7151 = fsub fast float %7106, %7147
  %7152 = fsub fast float %7147, %7148
  %7153 = select i1 %7149, float %7151, float %7152
  %7154 = fmul float %7150, %7153
  %7155 = select i1 %7149, float %7148, float %7106
  %7156 = fcmp fast ogt float %7106, %7148
  %7157 = fmul fast float %7155, %7147
  %7158 = fadd fast float %7155, %7147
  %7159 = fmul fast float %7158, %6941
  %7160 = fadd fast float %7157, %6942
  %7161 = fsub fast float %7160, %7159
  %7162 = fdiv fast float %7161, %7154
  %7163 = select i1 %7156, float %7162, float 0.000000e+00
  %7164 = fsub fast float 1.000000e+00, %7163
  %7165 = select i1 %7149, float %7164, float %7163
  %7166 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  %7167 = extractvalue %dx.types.CBufRet.f32 %6926, 3
  %7168 = fmul fast float %7167, %7166
  %7169 = fsub fast float 1.000000e+00, %7168
  br label %7170

; <label>:7170                                    ; preds = %7099, %6811, %6776, %6772, %6736
  %7171 = phi float [ 1.000000e+00, %6736 ], [ %7169, %7099 ], [ 1.000000e+00, %6776 ], [ 1.000000e+00, %6811 ], [ 1.000000e+00, %6772 ]
  %7172 = fcmp fast ogt float %6768, 0.000000e+00
  br i1 %7172, label %7173, label %7337, !dx.controlflow.hints !127

; <label>:7173                                    ; preds = %7170
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7176 = fadd fast float %7175, %6649
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 2
  %7179 = extractvalue %dx.types.CBufRet.f32 %7177, 3
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %7182 = call float @dx.op.binary.f32(i32 35, float %7176, float 0.000000e+00)  ; FMax(a,b)
  %7183 = fadd fast float %7182, 0x3F10000000000000
  %7184 = fcmp fast oeq float %7181, 0.000000e+00
  br i1 %7184, label %7185, label %7252

; <label>:7185                                    ; preds = %7173
  %7186 = extractvalue %dx.types.CBufRet.f32 %7177, 1
  %7187 = extractvalue %dx.types.CBufRet.f32 %7177, 0
  %7188 = fmul fast float %7187, %6667
  %7189 = fmul fast float %7186, %6668
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
  %7227 = fmul fast float %7226, %7178
  %7228 = fadd fast float %7220, %7197
  %7229 = fmul fast float %7228, %7179
  %7230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7227, float %7229, float undef, float undef, i32 0, i32 0, i32 undef, float %7183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7231 = extractvalue %dx.types.ResRet.f32 %7230, 0
  %7232 = fmul fast float %7231, %7199
  %7233 = fadd fast float %7211, %7196
  %7234 = fmul fast float %7233, %7178
  %7235 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7234, float %7229, float undef, float undef, i32 0, i32 0, i32 undef, float %7183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7236 = extractvalue %dx.types.ResRet.f32 %7235, 0
  %7237 = fmul fast float %7236, %7200
  %7238 = fadd fast float %7225, %7197
  %7239 = fmul fast float %7238, %7179
  %7240 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7227, float %7239, float undef, float undef, i32 0, i32 0, i32 undef, float %7183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7241 = extractvalue %dx.types.ResRet.f32 %7240, 0
  %7242 = fmul fast float %7241, %7199
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7234, float %7239, float undef, float undef, i32 0, i32 0, i32 undef, float %7183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = fmul fast float %7244, %7200
  %7246 = fadd fast float %7245, %7242
  %7247 = fmul fast float %7246, %7214
  %7248 = fadd fast float %7237, %7232
  %7249 = fmul fast float %7248, %7213
  %7250 = fadd fast float %7249, %7247
  %7251 = fmul fast float %7250, 6.250000e-02
  br label %7337

; <label>:7252                                    ; preds = %7173
  %7253 = fmul fast float %270, 0x401921FB60000000
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
  %7273 = fmul fast float %7270, %7181
  %7274 = fmul fast float %7272, %7181
  %7275 = fadd fast float %7273, %6667
  %7276 = fadd fast float %7274, %6668
  %7277 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %7275, float %7276, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7278 = extractvalue %dx.types.ResRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.ResRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.ResRet.f32 %7277, 2
  %7281 = extractvalue %dx.types.ResRet.f32 %7277, 3
  %7282 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %7278, float* %7282, align 4
  %7283 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %7279, float* %7283, align 4
  %7284 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %7280, float* %7284, align 4
  %7285 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %7281, float* %7285, align 4
  %7286 = fsub fast float %7278, %7183
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
  %7296 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %7293
  %7297 = load float, float* %7296, align 4, !tbaa !128, !noalias !118
  %7298 = fsub fast float %7297, %7183
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
  %7312 = fdiv fast float 1.000000e+00, %7183
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

; <label>:7337                                    ; preds = %7309, %7185, %7170
  %7338 = phi float [ 1.000000e+00, %7170 ], [ %7251, %7185 ], [ %7336, %7309 ]
  %7339 = fcmp fast ogt float %6766, 0.000000e+00
  br i1 %7339, label %7340, label %7504, !dx.controlflow.hints !132

; <label>:7340                                    ; preds = %7337
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7343 = fadd fast float %7342, %6649
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 2
  %7346 = extractvalue %dx.types.CBufRet.f32 %7344, 3
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 1
  %7349 = call float @dx.op.binary.f32(i32 35, float %7343, float 0.000000e+00)  ; FMax(a,b)
  %7350 = fadd fast float %7349, 0x3F10000000000000
  %7351 = fcmp fast oeq float %7348, 0.000000e+00
  br i1 %7351, label %7352, label %7419

; <label>:7352                                    ; preds = %7340
  %7353 = extractvalue %dx.types.CBufRet.f32 %7344, 1
  %7354 = extractvalue %dx.types.CBufRet.f32 %7344, 0
  %7355 = fmul fast float %7354, %6659
  %7356 = fmul fast float %7353, %6660
  %7357 = fadd fast float %7355, 5.000000e-01
  %7358 = call float @dx.op.unary.f32(i32 27, float %7357)  ; Round_ni(value)
  %7359 = fadd fast float %7356, 5.000000e-01
  %7360 = call float @dx.op.unary.f32(i32 27, float %7359)  ; Round_ni(value)
  %7361 = fsub fast float %7357, %7358
  %7362 = fsub fast float %7359, %7360
  %7363 = fadd fast float %7358, -5.000000e-01
  %7364 = fadd fast float %7360, -5.000000e-01
  %7365 = fmul fast float %7361, 2.000000e+00
  %7366 = fsub fast float 3.000000e+00, %7365
  %7367 = fadd fast float %7365, 1.000000e+00
  %7368 = fsub fast float 2.000000e+00, %7361
  %7369 = bitcast float %7366 to i32
  %7370 = sub nsw i32 2129859010, %7369
  %7371 = bitcast i32 %7370 to float
  %7372 = fmul fast float %7371, %7368
  %7373 = fadd fast float %7372, -1.000000e+00
  %7374 = bitcast float %7367 to i32
  %7375 = sub nsw i32 2129859010, %7374
  %7376 = bitcast i32 %7375 to float
  %7377 = fmul fast float %7376, %7361
  %7378 = fadd fast float %7377, 1.000000e+00
  %7379 = fmul fast float %7362, 2.000000e+00
  %7380 = fsub fast float 3.000000e+00, %7379
  %7381 = fadd fast float %7379, 1.000000e+00
  %7382 = fsub fast float 2.000000e+00, %7362
  %7383 = bitcast float %7380 to i32
  %7384 = sub nsw i32 2129859010, %7383
  %7385 = bitcast i32 %7384 to float
  %7386 = fmul fast float %7385, %7382
  %7387 = fadd fast float %7386, -1.000000e+00
  %7388 = bitcast float %7381 to i32
  %7389 = sub nsw i32 2129859010, %7388
  %7390 = bitcast i32 %7389 to float
  %7391 = fmul fast float %7390, %7362
  %7392 = fadd fast float %7391, 1.000000e+00
  %7393 = fadd fast float %7373, %7363
  %7394 = fmul fast float %7393, %7345
  %7395 = fadd fast float %7387, %7364
  %7396 = fmul fast float %7395, %7346
  %7397 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7394, float %7396, float undef, float undef, i32 0, i32 0, i32 undef, float %7350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7398 = extractvalue %dx.types.ResRet.f32 %7397, 0
  %7399 = fmul fast float %7398, %7366
  %7400 = fadd fast float %7378, %7363
  %7401 = fmul fast float %7400, %7345
  %7402 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7401, float %7396, float undef, float undef, i32 0, i32 0, i32 undef, float %7350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7403 = extractvalue %dx.types.ResRet.f32 %7402, 0
  %7404 = fmul fast float %7403, %7367
  %7405 = fadd fast float %7392, %7364
  %7406 = fmul fast float %7405, %7346
  %7407 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7394, float %7406, float undef, float undef, i32 0, i32 0, i32 undef, float %7350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7408 = extractvalue %dx.types.ResRet.f32 %7407, 0
  %7409 = fmul fast float %7408, %7366
  %7410 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7401, float %7406, float undef, float undef, i32 0, i32 0, i32 undef, float %7350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7411 = extractvalue %dx.types.ResRet.f32 %7410, 0
  %7412 = fmul fast float %7411, %7367
  %7413 = fadd fast float %7412, %7409
  %7414 = fmul fast float %7413, %7381
  %7415 = fadd fast float %7404, %7399
  %7416 = fmul fast float %7415, %7380
  %7417 = fadd fast float %7416, %7414
  %7418 = fmul fast float %7417, 6.250000e-02
  br label %7504

; <label>:7419                                    ; preds = %7340
  %7420 = fmul fast float %270, 0x401921FB60000000
  %7421 = call float @dx.op.unary.f32(i32 13, float %7420)  ; Sin(value)
  %7422 = call float @dx.op.unary.f32(i32 12, float %7420)  ; Cos(value)
  %7423 = fsub fast float -0.000000e+00, %7421
  br label %7424

; <label>:7424                                    ; preds = %7473, %7419
  %7425 = phi float [ 0.000000e+00, %7419 ], [ %7468, %7473 ]
  %7426 = phi float [ 0.000000e+00, %7419 ], [ %7470, %7473 ]
  %7427 = phi i32 [ 0, %7419 ], [ %7474, %7473 ]
  %7428 = mul i32 %7427, 2
  %7429 = add i32 0, %7428
  %7430 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7429
  %7431 = load float, float* %7430, align 4
  %7432 = mul i32 %7427, 2
  %7433 = add i32 1, %7432
  %7434 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7433
  %7435 = load float, float* %7434, align 4
  %7436 = fmul fast float %7431, %7422
  %7437 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7423, float %7436)  ; FMad(a,b,c)
  %7438 = fmul fast float %7431, %7421
  %7439 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7422, float %7438)  ; FMad(a,b,c)
  %7440 = fmul fast float %7437, %7348
  %7441 = fmul fast float %7439, %7348
  %7442 = fadd fast float %7440, %6659
  %7443 = fadd fast float %7441, %6660
  %7444 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %7442, float %7443, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.ResRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.ResRet.f32 %7444, 2
  %7448 = extractvalue %dx.types.ResRet.f32 %7444, 3
  %7449 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %7445, float* %7449, align 4
  %7450 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %7446, float* %7450, align 4
  %7451 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %7447, float* %7451, align 4
  %7452 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %7448, float* %7452, align 4
  %7453 = fsub fast float %7445, %7350
  %7454 = fcmp fast olt float %7453, 0.000000e+00
  %7455 = select i1 %7454, float 0.000000e+00, float 1.000000e+00
  %7456 = fadd fast float %7455, %7425
  %7457 = fmul fast float %7455, %7453
  %7458 = fadd fast float %7457, %7426
  br label %7459

; <label>:7459                                    ; preds = %7459, %7424
  %7460 = phi i32 [ 1, %7424 ], [ %7471, %7459 ]
  %7461 = phi float [ %7458, %7424 ], [ %7470, %7459 ]
  %7462 = phi float [ %7456, %7424 ], [ %7468, %7459 ]
  %7463 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %7460
  %7464 = load float, float* %7463, align 4, !tbaa !128, !noalias !118
  %7465 = fsub fast float %7464, %7350
  %7466 = fcmp fast olt float %7465, 0.000000e+00
  %7467 = select i1 %7466, float 0.000000e+00, float 1.000000e+00
  %7468 = fadd fast float %7467, %7462
  %7469 = fmul fast float %7467, %7465
  %7470 = fadd fast float %7469, %7461
  %7471 = add nuw nsw i32 %7460, 1
  %7472 = icmp eq i32 %7471, 4
  br i1 %7472, label %7473, label %7459, !llvm.loop !130

; <label>:7473                                    ; preds = %7459
  %7474 = add nuw nsw i32 %7427, 1
  %7475 = icmp eq i32 %7474, 8
  br i1 %7475, label %7476, label %7424, !llvm.loop !131

; <label>:7476                                    ; preds = %7473
  %7477 = fdiv fast float 1.000000e+00, %7468
  %7478 = fmul fast float %7477, %7470
  %7479 = fdiv fast float 1.000000e+00, %7350
  %7480 = fmul fast float %7478, %7479
  %7481 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7482 = call float @dx.op.binary.f32(i32 35, float %7481, float 0.000000e+00)  ; FMax(a,b)
  %7483 = fmul fast float %7468, 3.125000e-02
  %7484 = call float @dx.op.unary.f32(i32 7, float %7483)  ; Saturate(value)
  %7485 = fmul fast float %7484, 2.000000e+00
  %7486 = fadd fast float %7485, -1.000000e+00
  %7487 = fcmp fast ogt float %7486, 0.000000e+00
  %7488 = fcmp fast olt float %7486, 0.000000e+00
  %7489 = zext i1 %7487 to i32
  %7490 = zext i1 %7488 to i32
  %7491 = sub nsw i32 %7489, %7490
  %7492 = sitofp i32 %7491 to float
  %7493 = fmul fast float %7492, %7486
  %7494 = fsub fast float 1.000000e+00, %7493
  %7495 = fmul fast float %7494, %7494
  %7496 = fmul fast float %7495, %7494
  %7497 = fsub fast float %7494, %7496
  %7498 = fmul fast float %7497, %7482
  %7499 = fsub fast float 1.000000e+00, %7496
  %7500 = fsub fast float %7499, %7498
  %7501 = fmul fast float %7492, 5.000000e-01
  %7502 = fmul fast float %7501, %7500
  %7503 = fsub fast float 5.000000e-01, %7502
  br label %7504

; <label>:7504                                    ; preds = %7476, %7352, %7337
  %7505 = phi float [ 1.000000e+00, %7337 ], [ %7418, %7352 ], [ %7503, %7476 ]
  %7506 = fcmp fast ogt float %6765, 0.000000e+00
  br i1 %7506, label %7507, label %7825, !dx.controlflow.hints !133

; <label>:7507                                    ; preds = %7504
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7510 = fadd fast float %7509, %6649
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 2
  %7513 = extractvalue %dx.types.CBufRet.f32 %7511, 3
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7516 = call float @dx.op.binary.f32(i32 35, float %7510, float 0.000000e+00)  ; FMax(a,b)
  %7517 = fadd fast float %7516, 0x3F10000000000000
  %7518 = fcmp fast oeq float %7515, 0.000000e+00
  br i1 %6652, label %7519, label %7672, !dx.controlflow.hints !134

; <label>:7519                                    ; preds = %7507
  br i1 %7518, label %7520, label %7587

; <label>:7520                                    ; preds = %7519
  %7521 = extractvalue %dx.types.CBufRet.f32 %7511, 1
  %7522 = extractvalue %dx.types.CBufRet.f32 %7511, 0
  %7523 = fmul fast float %7522, %6641
  %7524 = fmul fast float %7521, %6645
  %7525 = fadd fast float %7523, 5.000000e-01
  %7526 = call float @dx.op.unary.f32(i32 27, float %7525)  ; Round_ni(value)
  %7527 = fadd fast float %7524, 5.000000e-01
  %7528 = call float @dx.op.unary.f32(i32 27, float %7527)  ; Round_ni(value)
  %7529 = fsub fast float %7525, %7526
  %7530 = fsub fast float %7527, %7528
  %7531 = fadd fast float %7526, -5.000000e-01
  %7532 = fadd fast float %7528, -5.000000e-01
  %7533 = fmul fast float %7529, 2.000000e+00
  %7534 = fsub fast float 3.000000e+00, %7533
  %7535 = fadd fast float %7533, 1.000000e+00
  %7536 = fsub fast float 2.000000e+00, %7529
  %7537 = bitcast float %7534 to i32
  %7538 = sub nsw i32 2129859010, %7537
  %7539 = bitcast i32 %7538 to float
  %7540 = fmul fast float %7539, %7536
  %7541 = fadd fast float %7540, -1.000000e+00
  %7542 = bitcast float %7535 to i32
  %7543 = sub nsw i32 2129859010, %7542
  %7544 = bitcast i32 %7543 to float
  %7545 = fmul fast float %7544, %7529
  %7546 = fadd fast float %7545, 1.000000e+00
  %7547 = fmul fast float %7530, 2.000000e+00
  %7548 = fsub fast float 3.000000e+00, %7547
  %7549 = fadd fast float %7547, 1.000000e+00
  %7550 = fsub fast float 2.000000e+00, %7530
  %7551 = bitcast float %7548 to i32
  %7552 = sub nsw i32 2129859010, %7551
  %7553 = bitcast i32 %7552 to float
  %7554 = fmul fast float %7553, %7550
  %7555 = fadd fast float %7554, -1.000000e+00
  %7556 = bitcast float %7549 to i32
  %7557 = sub nsw i32 2129859010, %7556
  %7558 = bitcast i32 %7557 to float
  %7559 = fmul fast float %7558, %7530
  %7560 = fadd fast float %7559, 1.000000e+00
  %7561 = fadd fast float %7541, %7531
  %7562 = fmul fast float %7561, %7512
  %7563 = fadd fast float %7555, %7532
  %7564 = fmul fast float %7563, %7513
  %7565 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7562, float %7564, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7566 = extractvalue %dx.types.ResRet.f32 %7565, 0
  %7567 = fmul fast float %7566, %7534
  %7568 = fadd fast float %7546, %7531
  %7569 = fmul fast float %7568, %7512
  %7570 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7569, float %7564, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7571 = extractvalue %dx.types.ResRet.f32 %7570, 0
  %7572 = fmul fast float %7571, %7535
  %7573 = fadd fast float %7560, %7532
  %7574 = fmul fast float %7573, %7513
  %7575 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7562, float %7574, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7576 = extractvalue %dx.types.ResRet.f32 %7575, 0
  %7577 = fmul fast float %7576, %7534
  %7578 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7569, float %7574, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = fmul fast float %7579, %7535
  %7581 = fadd fast float %7580, %7577
  %7582 = fmul fast float %7581, %7549
  %7583 = fadd fast float %7572, %7567
  %7584 = fmul fast float %7583, %7548
  %7585 = fadd fast float %7584, %7582
  %7586 = fmul fast float %7585, 6.250000e-02
  br label %7825

; <label>:7587                                    ; preds = %7519
  %7588 = fmul fast float %270, 0x401921FB60000000
  %7589 = call float @dx.op.unary.f32(i32 13, float %7588)  ; Sin(value)
  %7590 = call float @dx.op.unary.f32(i32 12, float %7588)  ; Cos(value)
  %7591 = fsub fast float -0.000000e+00, %7589
  br label %7592

; <label>:7592                                    ; preds = %7641, %7587
  %7593 = phi float [ 0.000000e+00, %7587 ], [ %7636, %7641 ]
  %7594 = phi float [ 0.000000e+00, %7587 ], [ %7638, %7641 ]
  %7595 = phi i32 [ 0, %7587 ], [ %7642, %7641 ]
  %7596 = mul i32 %7595, 2
  %7597 = add i32 0, %7596
  %7598 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7597
  %7599 = load float, float* %7598, align 4
  %7600 = mul i32 %7595, 2
  %7601 = add i32 1, %7600
  %7602 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7601
  %7603 = load float, float* %7602, align 4
  %7604 = fmul fast float %7599, %7590
  %7605 = call float @dx.op.tertiary.f32(i32 46, float %7603, float %7591, float %7604)  ; FMad(a,b,c)
  %7606 = fmul fast float %7599, %7589
  %7607 = call float @dx.op.tertiary.f32(i32 46, float %7603, float %7590, float %7606)  ; FMad(a,b,c)
  %7608 = fmul fast float %7605, %7515
  %7609 = fmul fast float %7607, %7515
  %7610 = fadd fast float %7608, %6641
  %7611 = fadd fast float %7609, %6645
  %7612 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %7610, float %7611, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.ResRet.f32 %7612, 1
  %7615 = extractvalue %dx.types.ResRet.f32 %7612, 2
  %7616 = extractvalue %dx.types.ResRet.f32 %7612, 3
  %7617 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %7613, float* %7617, align 4
  %7618 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %7614, float* %7618, align 4
  %7619 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %7615, float* %7619, align 4
  %7620 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %7616, float* %7620, align 4
  %7621 = fsub fast float %7613, %7517
  %7622 = fcmp fast olt float %7621, 0.000000e+00
  %7623 = select i1 %7622, float 0.000000e+00, float 1.000000e+00
  %7624 = fadd fast float %7623, %7593
  %7625 = fmul fast float %7623, %7621
  %7626 = fadd fast float %7625, %7594
  br label %7627

; <label>:7627                                    ; preds = %7627, %7592
  %7628 = phi i32 [ 1, %7592 ], [ %7639, %7627 ]
  %7629 = phi float [ %7626, %7592 ], [ %7638, %7627 ]
  %7630 = phi float [ %7624, %7592 ], [ %7636, %7627 ]
  %7631 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %7628
  %7632 = load float, float* %7631, align 4, !tbaa !128, !noalias !118
  %7633 = fsub fast float %7632, %7517
  %7634 = fcmp fast olt float %7633, 0.000000e+00
  %7635 = select i1 %7634, float 0.000000e+00, float 1.000000e+00
  %7636 = fadd fast float %7635, %7630
  %7637 = fmul fast float %7635, %7633
  %7638 = fadd fast float %7637, %7629
  %7639 = add nuw nsw i32 %7628, 1
  %7640 = icmp eq i32 %7639, 4
  br i1 %7640, label %7641, label %7627, !llvm.loop !130

; <label>:7641                                    ; preds = %7627
  %7642 = add nuw nsw i32 %7595, 1
  %7643 = icmp eq i32 %7642, 8
  br i1 %7643, label %7644, label %7592, !llvm.loop !131

; <label>:7644                                    ; preds = %7641
  %7645 = fdiv fast float 1.000000e+00, %7636
  %7646 = fmul fast float %7645, %7638
  %7647 = fdiv fast float 1.000000e+00, %7517
  %7648 = fmul fast float %7646, %7647
  %7649 = call float @dx.op.unary.f32(i32 7, float %7648)  ; Saturate(value)
  %7650 = call float @dx.op.binary.f32(i32 35, float %7649, float 0.000000e+00)  ; FMax(a,b)
  %7651 = fmul fast float %7636, 3.125000e-02
  %7652 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7653 = fmul fast float %7652, 2.000000e+00
  %7654 = fadd fast float %7653, -1.000000e+00
  %7655 = fcmp fast ogt float %7654, 0.000000e+00
  %7656 = fcmp fast olt float %7654, 0.000000e+00
  %7657 = zext i1 %7655 to i32
  %7658 = zext i1 %7656 to i32
  %7659 = sub nsw i32 %7657, %7658
  %7660 = sitofp i32 %7659 to float
  %7661 = fmul fast float %7660, %7654
  %7662 = fsub fast float 1.000000e+00, %7661
  %7663 = fmul fast float %7662, %7662
  %7664 = fmul fast float %7663, %7662
  %7665 = fsub fast float %7662, %7664
  %7666 = fmul fast float %7665, %7650
  %7667 = fsub fast float 1.000000e+00, %7664
  %7668 = fsub fast float %7667, %7666
  %7669 = fmul fast float %7660, 5.000000e-01
  %7670 = fmul fast float %7669, %7668
  %7671 = fsub fast float 5.000000e-01, %7670
  br label %7825

; <label>:7672                                    ; preds = %7507
  br i1 %7518, label %7673, label %7740

; <label>:7673                                    ; preds = %7672
  %7674 = extractvalue %dx.types.CBufRet.f32 %7511, 1
  %7675 = extractvalue %dx.types.CBufRet.f32 %7511, 0
  %7676 = fmul fast float %7675, %6641
  %7677 = fmul fast float %7674, %6645
  %7678 = fadd fast float %7676, 5.000000e-01
  %7679 = call float @dx.op.unary.f32(i32 27, float %7678)  ; Round_ni(value)
  %7680 = fadd fast float %7677, 5.000000e-01
  %7681 = call float @dx.op.unary.f32(i32 27, float %7680)  ; Round_ni(value)
  %7682 = fsub fast float %7678, %7679
  %7683 = fsub fast float %7680, %7681
  %7684 = fadd fast float %7679, -5.000000e-01
  %7685 = fadd fast float %7681, -5.000000e-01
  %7686 = fmul fast float %7682, 2.000000e+00
  %7687 = fsub fast float 3.000000e+00, %7686
  %7688 = fadd fast float %7686, 1.000000e+00
  %7689 = fsub fast float 2.000000e+00, %7682
  %7690 = bitcast float %7687 to i32
  %7691 = sub nsw i32 2129859010, %7690
  %7692 = bitcast i32 %7691 to float
  %7693 = fmul fast float %7692, %7689
  %7694 = fadd fast float %7693, -1.000000e+00
  %7695 = bitcast float %7688 to i32
  %7696 = sub nsw i32 2129859010, %7695
  %7697 = bitcast i32 %7696 to float
  %7698 = fmul fast float %7697, %7682
  %7699 = fadd fast float %7698, 1.000000e+00
  %7700 = fmul fast float %7683, 2.000000e+00
  %7701 = fsub fast float 3.000000e+00, %7700
  %7702 = fadd fast float %7700, 1.000000e+00
  %7703 = fsub fast float 2.000000e+00, %7683
  %7704 = bitcast float %7701 to i32
  %7705 = sub nsw i32 2129859010, %7704
  %7706 = bitcast i32 %7705 to float
  %7707 = fmul fast float %7706, %7703
  %7708 = fadd fast float %7707, -1.000000e+00
  %7709 = bitcast float %7702 to i32
  %7710 = sub nsw i32 2129859010, %7709
  %7711 = bitcast i32 %7710 to float
  %7712 = fmul fast float %7711, %7683
  %7713 = fadd fast float %7712, 1.000000e+00
  %7714 = fadd fast float %7694, %7684
  %7715 = fmul fast float %7714, %7512
  %7716 = fadd fast float %7708, %7685
  %7717 = fmul fast float %7716, %7513
  %7718 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7715, float %7717, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7719 = extractvalue %dx.types.ResRet.f32 %7718, 0
  %7720 = fmul fast float %7719, %7687
  %7721 = fadd fast float %7699, %7684
  %7722 = fmul fast float %7721, %7512
  %7723 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7722, float %7717, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7724 = extractvalue %dx.types.ResRet.f32 %7723, 0
  %7725 = fmul fast float %7724, %7688
  %7726 = fadd fast float %7713, %7685
  %7727 = fmul fast float %7726, %7513
  %7728 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7715, float %7727, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7729 = extractvalue %dx.types.ResRet.f32 %7728, 0
  %7730 = fmul fast float %7729, %7687
  %7731 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7722, float %7727, float undef, float undef, i32 0, i32 0, i32 undef, float %7517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7732 = extractvalue %dx.types.ResRet.f32 %7731, 0
  %7733 = fmul fast float %7732, %7688
  %7734 = fadd fast float %7733, %7730
  %7735 = fmul fast float %7734, %7702
  %7736 = fadd fast float %7725, %7720
  %7737 = fmul fast float %7736, %7701
  %7738 = fadd fast float %7737, %7735
  %7739 = fmul fast float %7738, 6.250000e-02
  br label %7825

; <label>:7740                                    ; preds = %7672
  %7741 = fmul fast float %270, 0x401921FB60000000
  %7742 = call float @dx.op.unary.f32(i32 13, float %7741)  ; Sin(value)
  %7743 = call float @dx.op.unary.f32(i32 12, float %7741)  ; Cos(value)
  %7744 = fsub fast float -0.000000e+00, %7742
  br label %7745

; <label>:7745                                    ; preds = %7794, %7740
  %7746 = phi float [ 0.000000e+00, %7740 ], [ %7789, %7794 ]
  %7747 = phi float [ 0.000000e+00, %7740 ], [ %7791, %7794 ]
  %7748 = phi i32 [ 0, %7740 ], [ %7795, %7794 ]
  %7749 = mul i32 %7748, 2
  %7750 = add i32 0, %7749
  %7751 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7750
  %7752 = load float, float* %7751, align 4
  %7753 = mul i32 %7748, 2
  %7754 = add i32 1, %7753
  %7755 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7754
  %7756 = load float, float* %7755, align 4
  %7757 = fmul fast float %7752, %7743
  %7758 = call float @dx.op.tertiary.f32(i32 46, float %7756, float %7744, float %7757)  ; FMad(a,b,c)
  %7759 = fmul fast float %7752, %7742
  %7760 = call float @dx.op.tertiary.f32(i32 46, float %7756, float %7743, float %7759)  ; FMad(a,b,c)
  %7761 = fmul fast float %7758, %7515
  %7762 = fmul fast float %7760, %7515
  %7763 = fadd fast float %7761, %6641
  %7764 = fadd fast float %7762, %6645
  %7765 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7763, float %7764, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.ResRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.ResRet.f32 %7765, 2
  %7769 = extractvalue %dx.types.ResRet.f32 %7765, 3
  %7770 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7766, float* %7770, align 4
  %7771 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7767, float* %7771, align 4
  %7772 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7768, float* %7772, align 4
  %7773 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7769, float* %7773, align 4
  %7774 = fsub fast float %7766, %7517
  %7775 = fcmp fast olt float %7774, 0.000000e+00
  %7776 = select i1 %7775, float 0.000000e+00, float 1.000000e+00
  %7777 = fadd fast float %7776, %7746
  %7778 = fmul fast float %7776, %7774
  %7779 = fadd fast float %7778, %7747
  br label %7780

; <label>:7780                                    ; preds = %7780, %7745
  %7781 = phi i32 [ 1, %7745 ], [ %7792, %7780 ]
  %7782 = phi float [ %7779, %7745 ], [ %7791, %7780 ]
  %7783 = phi float [ %7777, %7745 ], [ %7789, %7780 ]
  %7784 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7781
  %7785 = load float, float* %7784, align 4, !tbaa !128, !noalias !118
  %7786 = fsub fast float %7785, %7517
  %7787 = fcmp fast olt float %7786, 0.000000e+00
  %7788 = select i1 %7787, float 0.000000e+00, float 1.000000e+00
  %7789 = fadd fast float %7788, %7783
  %7790 = fmul fast float %7788, %7786
  %7791 = fadd fast float %7790, %7782
  %7792 = add nuw nsw i32 %7781, 1
  %7793 = icmp eq i32 %7792, 4
  br i1 %7793, label %7794, label %7780, !llvm.loop !130

; <label>:7794                                    ; preds = %7780
  %7795 = add nuw nsw i32 %7748, 1
  %7796 = icmp eq i32 %7795, 8
  br i1 %7796, label %7797, label %7745, !llvm.loop !131

; <label>:7797                                    ; preds = %7794
  %7798 = fdiv fast float 1.000000e+00, %7789
  %7799 = fmul fast float %7798, %7791
  %7800 = fdiv fast float 1.000000e+00, %7517
  %7801 = fmul fast float %7799, %7800
  %7802 = call float @dx.op.unary.f32(i32 7, float %7801)  ; Saturate(value)
  %7803 = call float @dx.op.binary.f32(i32 35, float %7802, float 0.000000e+00)  ; FMax(a,b)
  %7804 = fmul fast float %7789, 3.125000e-02
  %7805 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7806 = fmul fast float %7805, 2.000000e+00
  %7807 = fadd fast float %7806, -1.000000e+00
  %7808 = fcmp fast ogt float %7807, 0.000000e+00
  %7809 = fcmp fast olt float %7807, 0.000000e+00
  %7810 = zext i1 %7808 to i32
  %7811 = zext i1 %7809 to i32
  %7812 = sub nsw i32 %7810, %7811
  %7813 = sitofp i32 %7812 to float
  %7814 = fmul fast float %7813, %7807
  %7815 = fsub fast float 1.000000e+00, %7814
  %7816 = fmul fast float %7815, %7815
  %7817 = fmul fast float %7816, %7815
  %7818 = fsub fast float %7815, %7817
  %7819 = fmul fast float %7818, %7803
  %7820 = fsub fast float 1.000000e+00, %7817
  %7821 = fsub fast float %7820, %7819
  %7822 = fmul fast float %7813, 5.000000e-01
  %7823 = fmul fast float %7822, %7821
  %7824 = fsub fast float 5.000000e-01, %7823
  br label %7825

; <label>:7825                                    ; preds = %7797, %7673, %7644, %7520, %7504
  %7826 = phi float [ 1.000000e+00, %7504 ], [ %7586, %7520 ], [ %7671, %7644 ], [ %7739, %7673 ], [ %7824, %7797 ]
  %7827 = fsub fast float %7338, %7171
  %7828 = fmul fast float %7827, %6738
  %7829 = fadd fast float %7828, %7171
  %7830 = fsub fast float %7505, %7829
  %7831 = fmul fast float %7830, %6737
  %7832 = fadd fast float %7831, %7829
  %7833 = fsub fast float %7826, %7832
  %7834 = fmul fast float %7833, %6765
  %7835 = fadd fast float %7834, %7832
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 2
  %7838 = fcmp fast ogt float %7837, 0.000000e+00
  br i1 %7838, label %7839, label %7879, !dx.controlflow.hints !135

; <label>:7839                                    ; preds = %7825
  %7840 = fcmp fast ugt float %7837, 0.000000e+00
  br i1 %7840, label %7841, label %7876

; <label>:7841                                    ; preds = %7839
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7845 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %7846 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7848 = extractvalue %dx.types.CBufRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.CBufRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.CBufRet.f32 %7847, 2
  %7851 = extractvalue %dx.types.CBufRet.f32 %7847, 3
  %7852 = extractvalue %dx.types.CBufRet.f32 %7836, 0
  %7853 = extractvalue %dx.types.CBufRet.f32 %7836, 1
  %7854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7855 = extractvalue %dx.types.CBufRet.f32 %7854, 0
  %7856 = extractvalue %dx.types.CBufRet.f32 %7854, 1
  %7857 = extractvalue %dx.types.CBufRet.f32 %7854, 2
  %7858 = fadd fast float %7855, %6618
  %7859 = fadd fast float %7856, %6619
  %7860 = fadd fast float %7857, %6620
  %7861 = fmul fast float %7858, %7843
  %7862 = call float @dx.op.tertiary.f32(i32 46, float %7844, float %7859, float %7861)  ; FMad(a,b,c)
  %7863 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7860, float %7862)  ; FMad(a,b,c)
  %7864 = fadd fast float %7863, %7846
  %7865 = fmul fast float %7858, %7848
  %7866 = call float @dx.op.tertiary.f32(i32 46, float %7849, float %7859, float %7865)  ; FMad(a,b,c)
  %7867 = call float @dx.op.tertiary.f32(i32 46, float %7850, float %7860, float %7866)  ; FMad(a,b,c)
  %7868 = fadd fast float %7867, %7851
  %7869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7864, float %7868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7870 = extractvalue %dx.types.ResRet.f32 %7869, 0
  %7871 = fmul fast float %7870, %7853
  %7872 = fadd fast float %7871, %7852
  %7873 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  %7874 = fmul fast float %7873, %7837
  %7875 = fsub fast float 1.000000e+00, %7874
  br label %7876

; <label>:7876                                    ; preds = %7841, %7839
  %7877 = phi float [ %7875, %7841 ], [ 1.000000e+00, %7839 ]
  %7878 = fmul fast float %7877, %7835
  br label %7879

; <label>:7879                                    ; preds = %7876, %7825, %6598
  %7880 = phi float [ 1.000000e+00, %6598 ], [ %7878, %7876 ], [ %7835, %7825 ]
  %7881 = call float @dx.op.binary.f32(i32 36, float %7880, float %7880)  ; FMin(a,b)
  %7882 = call float @dx.op.binary.f32(i32 36, float %7880, float %7881)  ; FMin(a,b)
  %7883 = fcmp fast ogt float %7882, 0.000000e+00
  br i1 %7883, label %7884, label %8049, !dx.controlflow.hints !136

; <label>:7884                                    ; preds = %7879
  %7885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.f32 %7885, 0
  %7887 = extractvalue %dx.types.CBufRet.f32 %7885, 1
  %7888 = extractvalue %dx.types.CBufRet.f32 %7885, 2
  %7889 = extractvalue %dx.types.CBufRet.f32 %7885, 3
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.CBufRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = extractvalue %dx.types.CBufRet.f32 %7890, 3
  %7895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7896 = extractvalue %dx.types.CBufRet.f32 %7895, 0
  %7897 = extractvalue %dx.types.CBufRet.f32 %7895, 1
  %7898 = extractvalue %dx.types.CBufRet.f32 %7895, 2
  %7899 = extractvalue %dx.types.CBufRet.f32 %7895, 3
  %7900 = fmul fast float %7886, %6618
  %7901 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %7887, float %7900)  ; FMad(a,b,c)
  %7902 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %7888, float %7901)  ; FMad(a,b,c)
  %7903 = fadd fast float %7902, %7889
  %7904 = fmul fast float %7891, %6618
  %7905 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %7892, float %7904)  ; FMad(a,b,c)
  %7906 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %7893, float %7905)  ; FMad(a,b,c)
  %7907 = fadd fast float %7906, %7894
  %7908 = fmul fast float %7896, %6618
  %7909 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %7897, float %7908)  ; FMad(a,b,c)
  %7910 = call float @dx.op.tertiary.f32(i32 46, float %6620, float %7898, float %7909)  ; FMad(a,b,c)
  %7911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7912 = extractvalue %dx.types.CBufRet.f32 %7911, 0
  %7913 = extractvalue %dx.types.CBufRet.f32 %7911, 1
  %7914 = extractvalue %dx.types.CBufRet.f32 %7911, 3
  %7915 = fmul fast float %7914, %7903
  %7916 = fmul fast float %7914, %7907
  %7917 = fadd fast float %7915, %7912
  %7918 = fadd fast float %7916, %7913
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = fsub fast float %7917, %7920
  %7923 = fsub fast float %7918, %7921
  %7924 = fcmp fast olt float %7922, 0.000000e+00
  %7925 = fcmp fast olt float %7923, 0.000000e+00
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = extractvalue %dx.types.CBufRet.f32 %7926, 3
  %7931 = select i1 %7924, float %7927, float %7929
  %7932 = select i1 %7925, float %7928, float %7930
  %7933 = fmul fast float %7931, %7922
  %7934 = fmul fast float %7932, %7923
  %7935 = call float @dx.op.unary.f32(i32 6, float %7933)  ; FAbs(value)
  %7936 = call float @dx.op.unary.f32(i32 6, float %7934)  ; FAbs(value)
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 0
  %7939 = call float @dx.op.binary.f32(i32 35, float %7935, float %7936)  ; FMax(a,b)
  %7940 = fsub fast float %7938, %7939
  %7941 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7942 = fcmp fast ogt float %7941, 0.000000e+00
  br i1 %7942, label %7943, label %7984, !dx.controlflow.hints !137

; <label>:7943                                    ; preds = %7884
  %7944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7917, float %7918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7945 = extractvalue %dx.types.ResRet.f32 %7944, 1
  %7946 = fcmp fast ogt float %7945, 0.000000e+00
  br i1 %7946, label %7947, label %7979

; <label>:7947                                    ; preds = %7943
  %7948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7917, float %7918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7949 = extractvalue %dx.types.ResRet.f32 %7948, 0
  %7950 = extractvalue %dx.types.ResRet.f32 %7948, 1
  %7951 = extractvalue %dx.types.ResRet.f32 %7948, 2
  %7952 = extractvalue %dx.types.ResRet.f32 %7948, 3
  %7953 = fsub fast float 1.000000e+00, %7899
  %7954 = fsub fast float %7953, %7910
  %7955 = fmul fast float %7954, 0x400921FB60000000
  %7956 = fadd fast float %7955, 0x3FF921FB60000000
  %7957 = call float @dx.op.unary.f32(i32 13, float %7956)  ; Sin(value)
  %7958 = fadd fast float %7957, -1.000000e+00
  %7959 = fmul fast float %7958, 0x3FD45F3060000000
  %7960 = fmul fast float %7954, 0x401921FB60000000
  %7961 = fadd fast float %7960, 0x400921FB60000000
  %7962 = call float @dx.op.unary.f32(i32 13, float %7961)  ; Sin(value)
  %7963 = fadd fast float %7962, 0x3E7777A5C0000000
  %7964 = fmul fast float %7963, 0x3FC45F3060000000
  %7965 = fmul fast float %7954, 0x4022D97C80000000
  %7966 = fadd fast float %7965, 0x4012D97C80000000
  %7967 = call float @dx.op.unary.f32(i32 13, float %7966)  ; Sin(value)
  %7968 = fadd fast float %7967, 1.000000e+00
  %7969 = fmul fast float %7968, 0x3FBB2995E0000000
  %7970 = fmul fast float %7954, 0x402921FB60000000
  %7971 = fadd fast float %7970, 0x401921FB60000000
  %7972 = call float @dx.op.unary.f32(i32 13, float %7971)  ; Sin(value)
  %7973 = fadd fast float %7972, 0xBE8777A5C0000000
  %7974 = fmul fast float %7973, 0x3FB45F3060000000
  %7975 = call float @dx.op.dot4.f32(i32 56, float %7949, float %7950, float %7951, float %7952, float %7959, float %7964, float %7969, float %7974)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7976 = fmul fast float %7975, 0xBFF7154760000000
  %7977 = call float @dx.op.unary.f32(i32 21, float %7976)  ; Exp(value)
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  br label %7979

; <label>:7979                                    ; preds = %7947, %7943
  %7980 = phi float [ %7978, %7947 ], [ 1.000000e+00, %7943 ]
  %7981 = fadd fast float %7980, -1.000000e+00
  %7982 = fmul fast float %7981, %7941
  %7983 = fadd fast float %7982, 1.000000e+00
  br label %7984

; <label>:7984                                    ; preds = %7979, %7884
  %7985 = phi float [ %7983, %7979 ], [ 1.000000e+00, %7884 ]
  %7986 = fmul fast float %7985, %7880
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 0
  %7989 = extractvalue %dx.types.CBufRet.f32 %7987, 1
  %7990 = extractvalue %dx.types.CBufRet.f32 %7987, 2
  %7991 = fadd fast float %7988, %200
  %7992 = fadd fast float %7989, %201
  %7993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7994 = extractvalue %dx.types.CBufRet.f32 %7993, 1
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 0
  %7997 = extractvalue %dx.types.CBufRet.f32 %7995, 1
  %7998 = extractvalue %dx.types.CBufRet.f32 %7995, 2
  %7999 = fsub fast float -0.000000e+00, %7991
  %8000 = fsub fast float -0.000000e+00, %7992
  %8001 = fsub fast float %5706, %7990
  %8002 = fadd fast float %8001, %7994
  %8003 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7999, float %8000, float %8002)  ; Dot3(ax,ay,az,bx,by,bz)
  %8004 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7996, float %7997, float %7998)  ; Dot3(ax,ay,az,bx,by,bz)
  %8005 = fdiv fast float 1.000000e+00, %8004
  %8006 = fmul fast float %8005, %8003
  %8007 = fmul fast float %7996, %8006
  %8008 = fmul fast float %7997, %8006
  %8009 = fadd fast float %8007, %7991
  %8010 = fadd fast float %8008, %7992
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 0
  %8013 = extractvalue %dx.types.CBufRet.f32 %8011, 1
  %8014 = fsub fast float %8009, %8012
  %8015 = fsub fast float %8010, %8013
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 2
  %8018 = extractvalue %dx.types.CBufRet.f32 %8016, 3
  %8019 = fmul fast float %8014, %8017
  %8020 = fmul fast float %8015, %8018
  %8021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.i32 %8021, 3
  %8023 = icmp eq i32 %8022, 0
  br i1 %8023, label %8029, label %8024

; <label>:8024                                    ; preds = %7984
  %8025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %8019, float %8020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8026 = extractvalue %dx.types.ResRet.f32 %8025, 0
  %8027 = extractvalue %dx.types.ResRet.f32 %8025, 1
  %8028 = extractvalue %dx.types.ResRet.f32 %8025, 2
  br label %8034

; <label>:8029                                    ; preds = %7984
  %8030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %8019, float %8020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8031 = extractvalue %dx.types.ResRet.f32 %8030, 0
  %8032 = extractvalue %dx.types.ResRet.f32 %8030, 1
  %8033 = extractvalue %dx.types.ResRet.f32 %8030, 2
  br label %8034

; <label>:8034                                    ; preds = %8029, %8024
  %8035 = phi float [ %8026, %8024 ], [ %8031, %8029 ]
  %8036 = phi float [ %8027, %8024 ], [ %8032, %8029 ]
  %8037 = phi float [ %8028, %8024 ], [ %8033, %8029 ]
  %8038 = extractvalue %dx.types.CBufRet.f32 %7993, 2
  %8039 = fmul fast float %8038, %8035
  %8040 = extractvalue %dx.types.CBufRet.f32 %7993, 0
  %8041 = fsub fast float %8006, %8040
  %8042 = fsub fast float %8041, %8039
  %8043 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8042)  ; FMax(a,b)
  %8044 = fmul fast float %8043, %8036
  %8045 = call float @dx.op.binary.f32(i32 36, float %8037, float %8044)  ; FMin(a,b)
  %8046 = fmul fast float %8045, 0xBFF7154760000000
  %8047 = call float @dx.op.unary.f32(i32 21, float %8046)  ; Exp(value)
  %8048 = fmul fast float %7986, %8047
  br label %8049

; <label>:8049                                    ; preds = %8034, %7879
  %8050 = phi float [ %8048, %8034 ], [ %7880, %7879 ]
  %8051 = call float @dx.op.binary.f32(i32 36, float %8050, float %8050)  ; FMin(a,b)
  %8052 = call float @dx.op.binary.f32(i32 36, float %8050, float %8051)  ; FMin(a,b)
  %8053 = fcmp fast ogt float %8052, 0.000000e+00
  br i1 %8053, label %8054, label %8355, !dx.controlflow.hints !138

; <label>:8054                                    ; preds = %8049
  %8055 = fmul fast float %8050, %6610
  %8056 = fmul fast float %8050, %6611
  %8057 = fmul fast float %8050, %6612
  %8058 = fsub fast float %202, %4883
  %8059 = fcmp fast ogt float %8058, 0.000000e+00
  %8060 = fmul fast float %6599, 5.120000e+02
  %8061 = fmul fast float %6600, 5.120000e+02
  %8062 = fmul fast float %6601, 5.120000e+02
  %8063 = fadd fast float %8062, %202
  %8064 = fsub fast float %4883, %8063
  %8065 = fmul fast float %8064, 2.000000e+00
  %8066 = fadd fast float %8065, %8063
  %8067 = select i1 %8059, float %8066, float %8063
  %8068 = fsub fast float %8067, %202
  %8069 = call float @dx.op.dot3.f32(i32 55, float %8060, float %8061, float %8068, float %8060, float %8061, float %8068)  ; Dot3(ax,ay,az,bx,by,bz)
  %8070 = call float @dx.op.unary.f32(i32 25, float %8069)  ; Rsqrt(value)
  %8071 = fmul fast float %8070, %8060
  %8072 = fmul fast float %8070, %8061
  %8073 = fmul fast float %8070, %8068
  %8074 = fsub fast float %4883, %202
  %8075 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8074)  ; Dot3(ax,ay,az,bx,by,bz)
  %8076 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8071, float %8072, float %8073)  ; Dot3(ax,ay,az,bx,by,bz)
  %8077 = fdiv fast float 1.000000e+00, %8076
  %8078 = fmul fast float %8077, %8075
  %8079 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8058, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8080 = fcmp fast ogt float %8079, 0.000000e+00
  %8081 = fcmp fast olt float %8079, 0.000000e+00
  %8082 = zext i1 %8080 to i32
  %8083 = zext i1 %8081 to i32
  %8084 = sub nsw i32 %8082, %8083
  %8085 = sitofp i32 %8084 to float
  %8086 = fsub fast float %8067, %4883
  %8087 = call float @dx.op.dot3.f32(i32 55, float %8060, float %8061, float %8086, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8088 = fcmp fast ogt float %8087, 0.000000e+00
  %8089 = fcmp fast olt float %8087, 0.000000e+00
  %8090 = zext i1 %8088 to i32
  %8091 = zext i1 %8089 to i32
  %8092 = sub nsw i32 %8090, %8091
  %8093 = sitofp i32 %8092 to float
  %8094 = fcmp fast une float %8085, %8093
  br i1 %8094, label %8095, label %8105

; <label>:8095                                    ; preds = %8054
  %8096 = fmul fast float %8078, %8073
  %8097 = fmul fast float %8078, %8072
  %8098 = fmul fast float %8078, %8071
  %8099 = fmul fast float %8098, %8098
  %8100 = fmul fast float %8097, %8097
  %8101 = fadd fast float %8099, %8100
  %8102 = fmul fast float %8096, %8096
  %8103 = fadd fast float %8101, %8102
  %8104 = call float @dx.op.unary.f32(i32 24, float %8103)  ; Sqrt(value)
  br label %8115

; <label>:8105                                    ; preds = %8054
  %8106 = icmp slt i32 %8084, 0
  br i1 %8106, label %8107, label %8115

; <label>:8107                                    ; preds = %8105
  %8108 = fsub fast float %202, %8067
  %8109 = fmul fast float %8060, %8060
  %8110 = fmul fast float %8061, %8061
  %8111 = fadd fast float %8109, %8110
  %8112 = fmul fast float %8108, %8108
  %8113 = fadd fast float %8111, %8112
  %8114 = call float @dx.op.unary.f32(i32 24, float %8113)  ; Sqrt(value)
  br label %8115

; <label>:8115                                    ; preds = %8107, %8105, %8095
  %8116 = phi float [ %8104, %8095 ], [ %8114, %8107 ], [ 0.000000e+00, %8105 ]
  %8117 = fsub fast float -0.000000e+00, %8116
  %8118 = select i1 %8059, float -0.000000e+00, float %8117
  %8119 = fmul fast float %4884, 0x3FF7154760000000
  %8120 = fmul fast float %8119, %8118
  %8121 = fmul fast float %4885, 0x3FF7154760000000
  %8122 = fmul fast float %8121, %8118
  %8123 = fmul fast float %4886, 0x3FF7154760000000
  %8124 = fmul fast float %8123, %8118
  %8125 = call float @dx.op.unary.f32(i32 21, float %8120)  ; Exp(value)
  %8126 = call float @dx.op.unary.f32(i32 21, float %8122)  ; Exp(value)
  %8127 = call float @dx.op.unary.f32(i32 21, float %8124)  ; Exp(value)
  %8128 = call float @dx.op.unary.f32(i32 7, float %8125)  ; Saturate(value)
  %8129 = call float @dx.op.unary.f32(i32 7, float %8126)  ; Saturate(value)
  %8130 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8131 = fmul fast float %8055, %8128
  %8132 = fmul fast float %8056, %8129
  %8133 = fmul fast float %8057, %8130
  %8134 = fsub fast float %6599, %5709
  %8135 = fsub fast float %6600, %5710
  %8136 = fsub fast float %6601, %5711
  %8137 = call float @dx.op.dot3.f32(i32 55, float %8134, float %8135, float %8136, float %8134, float %8135, float %8136)  ; Dot3(ax,ay,az,bx,by,bz)
  %8138 = call float @dx.op.unary.f32(i32 25, float %8137)  ; Rsqrt(value)
  %8139 = fmul fast float %8138, %8134
  %8140 = fmul fast float %8138, %8135
  %8141 = fmul fast float %8138, %8136
  %8142 = call float @dx.op.dot3.f32(i32 55, float %6599, float %6600, float %6601, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %8143 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %8139, float %8140, float %8141)  ; Dot3(ax,ay,az,bx,by,bz)
  %8144 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  %8145 = fmul fast float %8144, %8144
  %8146 = fmul fast float %8145, %5742
  %8147 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8148 = fmul fast float %8147, %8144
  %8149 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %8139, float %8140, float %8141)  ; Dot3(ax,ay,az,bx,by,bz)
  %8150 = fmul fast float %8149, %8149
  %8151 = call float @dx.op.unary.f32(i32 6, float %8142)  ; FAbs(value)
  %8152 = fsub fast float 1.000000e+00, %5735
  %8153 = fmul fast float %5717, %5717
  %8154 = fmul fast float %8153, %8152
  %8155 = fadd fast float %8154, %5735
  %8156 = bitcast float %8155 to i32
  %8157 = ashr i32 %8156, 1
  %8158 = add nsw i32 %8157, 532487669
  %8159 = bitcast i32 %8158 to float
  %8160 = fadd fast float %8159, %5717
  %8161 = fmul fast float %5735, %8150
  %8162 = fsub fast float 1.000000e+00, %8150
  %8163 = fadd fast float %8162, %8161
  %8164 = fmul fast float %8151, %8151
  %8165 = fmul fast float %8164, %8152
  %8166 = fadd fast float %8165, %5735
  %8167 = bitcast float %8166 to i32
  %8168 = ashr i32 %8167, 1
  %8169 = add nsw i32 %8168, 532487669
  %8170 = bitcast i32 %8169 to float
  %8171 = fadd fast float %8170, %8151
  %8172 = fmul fast float %8163, %8163
  %8173 = fmul fast float %8172, %8160
  %8174 = fmul fast float %8173, %8171
  %8175 = fdiv fast float 0x3FF0A00000000000, %8174
  %8176 = fmul fast float %8175, %5735
  %8177 = call float @dx.op.unary.f32(i32 6, float %8143)  ; FAbs(value)
  %8178 = fsub fast float 1.000000e+00, %8177
  %8179 = bitcast float %8178 to i32
  %8180 = sitofp i32 %8179 to float
  %8181 = fmul fast float %8180, 5.000000e+00
  %8182 = fadd fast float %8181, 0xC1EFBF8940000000
  %8183 = fptosi float %8182 to i32
  %8184 = bitcast i32 %8183 to float
  %8185 = fsub fast float 1.000000e+00, %5663
  %8186 = fsub fast float 1.000000e+00, %5664
  %8187 = fsub fast float 1.000000e+00, %5715
  %8188 = fmul fast float %8184, %8185
  %8189 = fmul fast float %8184, %8186
  %8190 = fmul fast float %8184, %8187
  %8191 = fadd fast float %8188, %5663
  %8192 = fadd fast float %8189, %5664
  %8193 = fadd fast float %8190, %5715
  br i1 %6000, label %8194, label %8217

; <label>:8194                                    ; preds = %8115
  %8195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4416, float %8177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.ResRet.f32 %8195, 1
  %8198 = extractvalue %dx.types.ResRet.f32 %8195, 2
  %8199 = fadd fast float %8196, -5.000000e-01
  %8200 = fadd fast float %8197, -5.000000e-01
  %8201 = fadd fast float %8198, -5.000000e-01
  %8202 = fmul fast float %5663, 4.000000e+00
  %8203 = fmul fast float %8202, %8185
  %8204 = fmul fast float %8203, %8199
  %8205 = fmul fast float %5664, 4.000000e+00
  %8206 = fmul fast float %8205, %8186
  %8207 = fmul fast float %8206, %8200
  %8208 = fmul fast float %5715, 4.000000e+00
  %8209 = fmul fast float %8208, %8187
  %8210 = fmul fast float %8209, %8201
  %8211 = fadd fast float %8204, %8191
  %8212 = fadd fast float %8207, %8192
  %8213 = fadd fast float %8210, %8193
  %8214 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8215 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8216 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  br label %8217

; <label>:8217                                    ; preds = %8194, %8115
  %8218 = phi float [ %8214, %8194 ], [ %8191, %8115 ]
  %8219 = phi float [ %8215, %8194 ], [ %8192, %8115 ]
  %8220 = phi float [ %8216, %8194 ], [ %8193, %8115 ]
  %8221 = fmul fast float %8142, 9.843750e-01
  %8222 = fadd fast float %8221, 7.812500e-03
  %8223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8222, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8224 = extractvalue %dx.types.ResRet.f32 %8223, 2
  %8225 = extractvalue %dx.types.ResRet.f32 %8223, 3
  %8226 = fmul fast float %8224, %5663
  %8227 = fmul fast float %8224, %5664
  %8228 = fmul fast float %8224, %5715
  %8229 = fadd fast float %8226, %8225
  %8230 = fadd fast float %8227, %8225
  %8231 = fadd fast float %8228, %8225
  br i1 %6000, label %8232, label %8255

; <label>:8232                                    ; preds = %8217
  %8233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4416, float %8142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8234 = extractvalue %dx.types.ResRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.ResRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.ResRet.f32 %8233, 2
  %8237 = fadd fast float %8234, -5.000000e-01
  %8238 = fadd fast float %8235, -5.000000e-01
  %8239 = fadd fast float %8236, -5.000000e-01
  %8240 = fmul fast float %5663, 4.000000e+00
  %8241 = fmul fast float %8240, %8185
  %8242 = fmul fast float %8241, %8237
  %8243 = fmul fast float %5664, 4.000000e+00
  %8244 = fmul fast float %8243, %8186
  %8245 = fmul fast float %8244, %8238
  %8246 = fmul fast float %5715, 4.000000e+00
  %8247 = fmul fast float %8246, %8187
  %8248 = fmul fast float %8247, %8239
  %8249 = fadd fast float %8242, %8229
  %8250 = fadd fast float %8245, %8230
  %8251 = fadd fast float %8248, %8231
  %8252 = call float @dx.op.unary.f32(i32 7, float %8249)  ; Saturate(value)
  %8253 = call float @dx.op.unary.f32(i32 7, float %8250)  ; Saturate(value)
  %8254 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  br label %8255

; <label>:8255                                    ; preds = %8232, %8217
  %8256 = phi float [ %8252, %8232 ], [ %8229, %8217 ]
  %8257 = phi float [ %8253, %8232 ], [ %8230, %8217 ]
  %8258 = phi float [ %8254, %8232 ], [ %8231, %8217 ]
  %8259 = call float @dx.op.binary.f32(i32 35, float %8257, float %8258)  ; FMax(a,b)
  %8260 = call float @dx.op.binary.f32(i32 35, float %8256, float %8259)  ; FMax(a,b)
  %8261 = fsub fast float 1.000000e+00, %8260
  %8262 = fsub fast float -0.000000e+00, %5669
  %8263 = fsub fast float -0.000000e+00, %5670
  %8264 = fsub fast float -0.000000e+00, %5671
  %8265 = call float @dx.op.dot3.f32(i32 55, float %6599, float %6600, float %6601, float %8262, float %8263, float %8264)  ; Dot3(ax,ay,az,bx,by,bz)
  %8266 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8267 = fmul fast float %8266, 9.843750e-01
  %8268 = fadd fast float %8267, 7.812500e-03
  %8269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8268, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8270 = extractvalue %dx.types.ResRet.f32 %8269, 2
  %8271 = extractvalue %dx.types.ResRet.f32 %8269, 3
  %8272 = fmul fast float %8270, %5663
  %8273 = fmul fast float %8270, %5664
  %8274 = fmul fast float %8270, %5715
  %8275 = fadd fast float %8272, %8271
  %8276 = fadd fast float %8273, %8271
  %8277 = fadd fast float %8274, %8271
  br i1 %6000, label %8278, label %8301

; <label>:8278                                    ; preds = %8255
  %8279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4416, float %8266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8280 = extractvalue %dx.types.ResRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.ResRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.ResRet.f32 %8279, 2
  %8283 = fadd fast float %8280, -5.000000e-01
  %8284 = fadd fast float %8281, -5.000000e-01
  %8285 = fadd fast float %8282, -5.000000e-01
  %8286 = fmul fast float %5663, 4.000000e+00
  %8287 = fmul fast float %8286, %8185
  %8288 = fmul fast float %8287, %8283
  %8289 = fmul fast float %5664, 4.000000e+00
  %8290 = fmul fast float %8289, %8186
  %8291 = fmul fast float %8290, %8284
  %8292 = fmul fast float %5715, 4.000000e+00
  %8293 = fmul fast float %8292, %8187
  %8294 = fmul fast float %8293, %8285
  %8295 = fadd fast float %8288, %8275
  %8296 = fadd fast float %8291, %8276
  %8297 = fadd fast float %8294, %8277
  %8298 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8299 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8300 = call float @dx.op.unary.f32(i32 7, float %8297)  ; Saturate(value)
  br label %8301

; <label>:8301                                    ; preds = %8278, %8255
  %8302 = phi float [ %8298, %8278 ], [ %8275, %8255 ]
  %8303 = phi float [ %8299, %8278 ], [ %8276, %8255 ]
  %8304 = phi float [ %8300, %8278 ], [ %8277, %8255 ]
  %8305 = call float @dx.op.binary.f32(i32 35, float %8303, float %8304)  ; FMax(a,b)
  %8306 = call float @dx.op.binary.f32(i32 35, float %8302, float %8305)  ; FMax(a,b)
  %8307 = fsub fast float 1.000000e+00, %8306
  %8308 = fmul fast float %8307, %8266
  %8309 = fmul fast float %8308, %4506
  %8310 = fmul fast float %8308, %4507
  %8311 = fmul fast float %8308, %4508
  %8312 = fmul fast float %8218, %8176
  %8313 = fmul fast float %8219, %8176
  %8314 = fmul fast float %8220, %8176
  %8315 = fsub fast float 1.000000e+00, %8143
  %8316 = bitcast float %8315 to i32
  %8317 = sitofp i32 %8316 to float
  %8318 = fmul fast float %8317, 5.000000e+00
  %8319 = fadd fast float %8318, 0xC1EFBF8940000000
  %8320 = fptosi float %8319 to i32
  %8321 = bitcast i32 %8320 to float
  %8322 = fmul fast float %8321, %4417
  %8323 = fmul fast float %8261, %8322
  %8324 = fmul fast float %8323, %6539
  %8325 = fmul fast float %8323, %6540
  %8326 = fmul fast float %8323, %6541
  %8327 = fmul fast float %8261, %8148
  %8328 = fadd fast float %8324, %8312
  %8329 = fadd fast float %8325, %8313
  %8330 = fadd fast float %8326, %8314
  %8331 = fadd fast float %8309, %8327
  %8332 = fadd fast float %8310, %8327
  %8333 = fadd fast float %8311, %8327
  %8334 = fmul fast float %8331, %8131
  %8335 = fmul fast float %8332, %8132
  %8336 = fmul fast float %8333, %8133
  %8337 = fmul fast float %8148, %8131
  %8338 = fmul fast float %8337, %8328
  %8339 = fmul fast float %8148, %8132
  %8340 = fmul fast float %8339, %8329
  %8341 = fmul fast float %8148, %8133
  %8342 = fmul fast float %8341, %8330
  %8343 = fadd fast float %8334, %6589
  %8344 = fmul fast float %8343, %4413
  %8345 = fadd fast float %8335, %6591
  %8346 = fmul fast float %8345, %4413
  %8347 = fadd fast float %8336, %6593
  %8348 = fmul fast float %8347, %4413
  %8349 = fadd fast float %8338, %6572
  %8350 = fmul fast float %8349, %4413
  %8351 = fadd fast float %8340, %6575
  %8352 = fmul fast float %8351, %4413
  %8353 = fadd fast float %8342, %6578
  %8354 = fmul fast float %8353, %4413
  br label %8355

; <label>:8355                                    ; preds = %8301, %8049, %6522
  %8356 = phi float [ %6573, %6522 ], [ %6573, %8049 ], [ %8350, %8301 ]
  %8357 = phi float [ %6576, %6522 ], [ %6576, %8049 ], [ %8352, %8301 ]
  %8358 = phi float [ %6579, %6522 ], [ %6579, %8049 ], [ %8354, %8301 ]
  %8359 = phi float [ %6590, %6522 ], [ %6590, %8049 ], [ %8344, %8301 ]
  %8360 = phi float [ %6592, %6522 ], [ %6592, %8049 ], [ %8346, %8301 ]
  %8361 = phi float [ %6594, %6522 ], [ %6594, %8049 ], [ %8348, %8301 ]
  %8362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.i32 %8362, 0
  %8364 = icmp eq i32 %8363, 0
  br i1 %8364, label %9082, label %8365

; <label>:8365                                    ; preds = %8355
  %8366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8366, 2
  %8368 = extractvalue %dx.types.CBufRet.f32 %8366, 3
  %8369 = fmul fast float %8367, %121
  %8370 = fmul fast float %8368, %122
  %8371 = fptoui float %8369 to i32
  %8372 = fptoui float %8370 to i32
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 2
  %8376 = extractvalue %dx.types.CBufRet.f32 %8373, 3
  %8377 = fadd fast float %108, -4.000000e+00
  %8378 = call float @dx.op.binary.f32(i32 35, float %8377, float 0.000000e+00)  ; FMax(a,b)
  %8379 = fadd fast float %8378, %8374
  %8380 = fmul fast float %8379, %8375
  %8381 = call float @dx.op.unary.f32(i32 23, float %8380)  ; Log(value)
  %8382 = fmul fast float %8381, %8376
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 2
  %8385 = fmul fast float %8382, %8384
  %8386 = call float @dx.op.unary.f32(i32 7, float %8385)  ; Saturate(value)
  %8387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.i32 %8387, 1
  %8389 = add i32 %8388, -1
  %8390 = uitofp i32 %8388 to float
  %8391 = fmul fast float %8390, %8386
  %8392 = fptoui float %8391 to i32
  %8393 = call i32 @dx.op.binary.i32(i32 40, i32 %8392, i32 %8389)  ; UMin(a,b)
  %8394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.i32 %8394, 2
  %8396 = extractvalue %dx.types.CBufRet.i32 %8394, 3
  %8397 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8372, i32 %8395, i32 %8371)  ; UMad(a,b,c)
  %8398 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8393, i32 %8396, i32 %8397)  ; UMad(a,b,c)
  %8399 = add nsw i32 %8363, -1
  %8400 = call i32 @dx.op.binary.i32(i32 37, i32 %8399, i32 0)  ; IMax(a,b)
  %8401 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %8402 = fptoui float %8401 to i32
  %8403 = lshr i32 %8402, 5
  %8404 = call i32 @dx.op.binary.i32(i32 40, i32 %8403, i32 8191)  ; UMin(a,b)
  %8405 = shl i32 %8404, 2
  %8406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8405, i32 undef)  ; BufferLoad(srv,index,wot)
  %8407 = extractvalue %dx.types.ResRet.i32 %8406, 0
  %8408 = lshr i32 %8407, 16
  %8409 = and i32 %8407, 65535
  %8410 = lshr i32 %8407, 21
  %8411 = lshr i32 %8409, 5
  %8412 = call i32 @dx.op.binary.i32(i32 40, i32 %8411, i32 %8400)  ; UMin(a,b)
  %8413 = icmp ugt i32 %8410, %8412
  br i1 %8413, label %9082, label %8414

; <label>:8414                                    ; preds = %8365
  br label %8415

; <label>:8415                                    ; preds = %9072, %8414
  %8416 = phi i32 [ %9079, %9072 ], [ %8410, %8414 ]
  %8417 = phi float [ %9073, %9072 ], [ %8356, %8414 ]
  %8418 = phi float [ %9074, %9072 ], [ %8357, %8414 ]
  %8419 = phi float [ %9075, %9072 ], [ %8358, %8414 ]
  %8420 = phi float [ %9076, %9072 ], [ %8359, %8414 ]
  %8421 = phi float [ %9077, %9072 ], [ %8360, %8414 ]
  %8422 = phi float [ %9078, %9072 ], [ %8361, %8414 ]
  %8423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8424 = extractvalue %dx.types.CBufRet.i32 %8423, 0
  %8425 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8398, i32 %8424, i32 %8416)  ; UMad(a,b,c)
  %8426 = shl i32 %8425, 2
  %8427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8426, i32 undef)  ; BufferLoad(srv,index,wot)
  %8428 = extractvalue %dx.types.ResRet.i32 %8427, 0
  %8429 = shl i32 %8416, 5
  %8430 = sub nsw i32 %8408, %8429
  %8431 = call i32 @dx.op.binary.i32(i32 37, i32 %8430, i32 0)  ; IMax(a,b)
  %8432 = call i32 @dx.op.binary.i32(i32 38, i32 %8431, i32 31)  ; IMin(a,b)
  %8433 = sub nsw i32 1, %8408
  %8434 = add nsw i32 %8433, %8409
  %8435 = call i32 @dx.op.binary.i32(i32 37, i32 %8434, i32 0)  ; IMax(a,b)
  %8436 = call i32 @dx.op.binary.i32(i32 38, i32 %8435, i32 32)  ; IMin(a,b)
  %8437 = and i32 %8436, 31
  %8438 = shl i32 -1, %8437
  %8439 = xor i32 %8438, -1
  %8440 = and i32 %8432, 31
  %8441 = shl i32 %8439, %8440
  %8442 = icmp eq i32 %8436, 32
  %8443 = select i1 %8442, i32 -1, i32 %8441
  %8444 = and i32 %8443, %8428
  %8445 = icmp eq i32 %8444, 0
  br i1 %8445, label %9072, label %8446

; <label>:8446                                    ; preds = %8415
  br label %8447

; <label>:8447                                    ; preds = %8581, %8446
  %8448 = phi i32 [ %8459, %8581 ], [ %8444, %8446 ]
  %8449 = phi float [ %8582, %8581 ], [ %8417, %8446 ]
  %8450 = phi float [ %8583, %8581 ], [ %8418, %8446 ]
  %8451 = phi float [ %8584, %8581 ], [ %8419, %8446 ]
  %8452 = phi float [ %8585, %8581 ], [ %8420, %8446 ]
  %8453 = phi float [ %8586, %8581 ], [ %8421, %8446 ]
  %8454 = phi float [ %8587, %8581 ], [ %8422, %8446 ]
  %8455 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8448)  ; FirstbitLo(value)
  %8456 = add i32 %8455, %8429
  %8457 = and i32 %8455, 31
  %8458 = shl i32 1, %8457
  %8459 = xor i32 %8458, %8448
  %8460 = mul i32 %8456, 112
  %8461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8460, i32 undef)  ; BufferLoad(srv,index,wot)
  %8462 = extractvalue %dx.types.ResRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.ResRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.ResRet.f32 %8461, 2
  %8465 = or i32 %8460, 12
  %8466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8465, i32 undef)  ; BufferLoad(srv,index,wot)
  %8467 = extractvalue %dx.types.ResRet.f32 %8466, 0
  %8468 = add i32 %8460, 16
  %8469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8468, i32 undef)  ; BufferLoad(srv,index,wot)
  %8470 = extractvalue %dx.types.ResRet.f32 %8469, 0
  %8471 = extractvalue %dx.types.ResRet.f32 %8469, 1
  %8472 = extractvalue %dx.types.ResRet.f32 %8469, 2
  %8473 = add i32 %8460, 28
  %8474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8473, i32 undef)  ; BufferLoad(srv,index,wot)
  %8475 = extractvalue %dx.types.ResRet.i32 %8474, 0
  %8476 = add i32 %8460, 44
  %8477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8476, i32 undef)  ; BufferLoad(srv,index,wot)
  %8478 = extractvalue %dx.types.ResRet.f32 %8477, 0
  %8479 = add i32 %8460, 48
  %8480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8479, i32 undef)  ; BufferLoad(srv,index,wot)
  %8481 = extractvalue %dx.types.ResRet.f32 %8480, 0
  %8482 = extractvalue %dx.types.ResRet.f32 %8480, 1
  %8483 = extractvalue %dx.types.ResRet.f32 %8480, 2
  %8484 = extractvalue %dx.types.ResRet.f32 %8480, 3
  %8485 = add i32 %8460, 64
  %8486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8485, i32 undef)  ; BufferLoad(srv,index,wot)
  %8487 = extractvalue %dx.types.ResRet.f32 %8486, 0
  %8488 = extractvalue %dx.types.ResRet.f32 %8486, 1
  %8489 = extractvalue %dx.types.ResRet.f32 %8486, 2
  %8490 = extractvalue %dx.types.ResRet.f32 %8486, 3
  %8491 = add i32 %8460, 80
  %8492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8491, i32 undef)  ; BufferLoad(srv,index,wot)
  %8493 = extractvalue %dx.types.ResRet.f32 %8492, 1
  %8494 = extractvalue %dx.types.ResRet.f32 %8492, 2
  %8495 = add i32 %8460, 92
  %8496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8495, i32 undef)  ; BufferLoad(srv,index,wot)
  %8497 = extractvalue %dx.types.ResRet.i32 %8496, 0
  %8498 = call float @dx.op.dot3.f32(i32 55, float %8462, float %8463, float %8464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8499 = select i1 %259, float %8493, float %8462
  %8500 = select i1 %259, float %8498, float %8463
  %8501 = select i1 %259, float %8494, float %8464
  %8502 = and i32 %8497, 65535
  %8503 = uitofp i32 %8502 to float
  %8504 = lshr i32 %8497, 16
  %8505 = uitofp i32 %8504 to float
  %8506 = and i32 %8475, 65535
  %8507 = and i32 %8475, 50331648
  %8508 = icmp eq i32 %8507, 33554432
  %8509 = fsub fast float %8481, %200
  %8510 = fsub fast float %8482, %201
  %8511 = fsub fast float %8483, %202
  %8512 = call float @dx.op.dot3.f32(i32 55, float %8509, float %8510, float %8511, float %8509, float %8510, float %8511)  ; Dot3(ax,ay,az,bx,by,bz)
  %8513 = call float @dx.op.unary.f32(i32 24, float %8512)  ; Sqrt(value)
  %8514 = fdiv fast float 1.000000e+00, %8513
  %8515 = fmul fast float %8514, %8509
  %8516 = fmul fast float %8514, %8510
  %8517 = fmul fast float %8514, %8511
  %8518 = fadd fast float %8513, %8467
  %8519 = fdiv fast float 1.000000e+00, %8518
  %8520 = fmul float %8478, %8519
  %8521 = fmul float %8520, %8520
  %8522 = call float @dx.op.unary.f32(i32 7, float %8521)  ; Saturate(value)
  br i1 %8508, label %8523, label %8544

; <label>:8523                                    ; preds = %8447
  %8524 = fmul fast float %8489, %8470
  %8525 = fmul fast float %8489, %8471
  %8526 = fmul fast float %8489, %8472
  %8527 = fadd fast float %8509, %8524
  %8528 = fadd fast float %8510, %8525
  %8529 = fadd fast float %8511, %8526
  %8530 = call float @dx.op.dot3.f32(i32 55, float %8527, float %8528, float %8529, float %8527, float %8528, float %8529)  ; Dot3(ax,ay,az,bx,by,bz)
  %8531 = call float @dx.op.unary.f32(i32 25, float %8530)  ; Rsqrt(value)
  %8532 = fmul fast float %8531, %8527
  %8533 = fmul fast float %8531, %8528
  %8534 = fmul fast float %8531, %8529
  %8535 = fsub fast float %200, %8481
  %8536 = fsub fast float %201, %8482
  %8537 = fsub fast float %202, %8483
  %8538 = fsub fast float -0.000000e+00, %8535
  %8539 = fsub fast float -0.000000e+00, %8536
  %8540 = fsub fast float -0.000000e+00, %8537
  %8541 = call float @dx.op.dot3.f32(i32 55, float %8538, float %8539, float %8540, float %8470, float %8471, float %8472)  ; Dot3(ax,ay,az,bx,by,bz)
  %8542 = fcmp fast ogt float %8541, 0.000000e+00
  %8543 = uitofp i1 %8542 to float
  br label %8544

; <label>:8544                                    ; preds = %8523, %8447
  %8545 = phi float [ %8543, %8523 ], [ 1.000000e+00, %8447 ]
  %8546 = phi float [ %8532, %8523 ], [ %8515, %8447 ]
  %8547 = phi float [ %8533, %8523 ], [ %8516, %8447 ]
  %8548 = phi float [ %8534, %8523 ], [ %8517, %8447 ]
  %8549 = call float @dx.op.dot3.f32(i32 55, float %8470, float %8471, float %8472, float %8546, float %8547, float %8548)  ; Dot3(ax,ay,az,bx,by,bz)
  %8550 = fmul fast float %8549, %8549
  %8551 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8552 = fsub fast float 1.000000e+00, %8551
  %8553 = fmul fast float %8552, 5.000000e-01
  %8554 = fcmp fast ogt float %8549, 0.000000e+00
  %8555 = fsub fast float 1.000000e+00, %8553
  %8556 = select i1 %8554, float %8553, float %8555
  %8557 = fmul fast float %8556, %8505
  %8558 = fadd fast float %8557, %8503
  %8559 = fmul fast float %8558, 0x3EF0001000000000
  %8560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %8559, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8561 = extractvalue %dx.types.ResRet.f32 %8560, 0
  %8562 = fmul fast float %8549, %8487
  %8563 = fadd fast float %8562, %8488
  %8564 = call float @dx.op.unary.f32(i32 7, float %8563)  ; Saturate(value)
  %8565 = select i1 %8508, float 1.000000e+00, float %8564
  %8566 = select i1 %8508, float %8564, float 1.000000e+00
  %8567 = fmul fast float %8513, %8484
  %8568 = fsub fast float 1.000000e+00, %8567
  %8569 = fmul fast float %8568, %8490
  %8570 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8571 = fmul fast float %8570, %8566
  %8572 = fmul fast float %8571, 2.000000e+00
  %8573 = fsub fast float 3.000000e+00, %8572
  %8574 = fmul fast float %8561, %8545
  %8575 = fmul fast float %8571, %8571
  %8576 = fmul fast float %8575, %8574
  %8577 = fmul fast float %8576, %8573
  %8578 = call float @dx.op.binary.f32(i32 36, float %8577, float %8577)  ; FMin(a,b)
  %8579 = call float @dx.op.binary.f32(i32 36, float %8577, float %8578)  ; FMin(a,b)
  %8580 = fcmp fast ogt float %8579, 0.000000e+00
  br i1 %8580, label %8589, label %8581, !dx.controlflow.hints !139

; <label>:8581                                    ; preds = %9020, %8735, %8544
  %8582 = phi float [ %8449, %8735 ], [ %8449, %8544 ], [ %9068, %9020 ]
  %8583 = phi float [ %8450, %8735 ], [ %8450, %8544 ], [ %9069, %9020 ]
  %8584 = phi float [ %8451, %8735 ], [ %8451, %8544 ], [ %9070, %9020 ]
  %8585 = phi float [ %8452, %8735 ], [ %8452, %8544 ], [ %9059, %9020 ]
  %8586 = phi float [ %8453, %8735 ], [ %8453, %8544 ], [ %9060, %9020 ]
  %8587 = phi float [ %8454, %8735 ], [ %8454, %8544 ], [ %9061, %9020 ]
  %8588 = icmp eq i32 %8448, %8458
  br i1 %8588, label %9071, label %8447

; <label>:8589                                    ; preds = %8544
  %8590 = icmp eq i32 %8506, 255
  br i1 %8590, label %8735, label %8591, !dx.controlflow.hints !140

; <label>:8591                                    ; preds = %8589
  %8592 = mul nuw nsw i32 %8506, 176
  %8593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8592, i32 undef)  ; BufferLoad(srv,index,wot)
  %8594 = extractvalue %dx.types.ResRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.ResRet.f32 %8593, 1
  %8596 = extractvalue %dx.types.ResRet.f32 %8593, 2
  %8597 = extractvalue %dx.types.ResRet.f32 %8593, 3
  %8598 = add nuw nsw i32 %8592, 16
  %8599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8598, i32 undef)  ; BufferLoad(srv,index,wot)
  %8600 = extractvalue %dx.types.ResRet.f32 %8599, 0
  %8601 = extractvalue %dx.types.ResRet.f32 %8599, 1
  %8602 = add nuw nsw i32 %8592, 32
  %8603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8602, i32 undef)  ; BufferLoad(srv,index,wot)
  %8604 = extractvalue %dx.types.ResRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.ResRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.ResRet.f32 %8603, 2
  %8607 = add nuw nsw i32 %8592, 48
  %8608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8607, i32 undef)  ; BufferLoad(srv,index,wot)
  %8609 = extractvalue %dx.types.ResRet.f32 %8608, 0
  %8610 = extractvalue %dx.types.ResRet.f32 %8608, 1
  %8611 = extractvalue %dx.types.ResRet.f32 %8608, 2
  %8612 = extractvalue %dx.types.ResRet.f32 %8608, 3
  %8613 = add nuw nsw i32 %8592, 64
  %8614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8613, i32 undef)  ; BufferLoad(srv,index,wot)
  %8615 = extractvalue %dx.types.ResRet.f32 %8614, 0
  %8616 = extractvalue %dx.types.ResRet.f32 %8614, 1
  %8617 = extractvalue %dx.types.ResRet.f32 %8614, 2
  %8618 = extractvalue %dx.types.ResRet.f32 %8614, 3
  %8619 = add nuw nsw i32 %8592, 80
  %8620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8619, i32 undef)  ; BufferLoad(srv,index,wot)
  %8621 = extractvalue %dx.types.ResRet.f32 %8620, 0
  %8622 = extractvalue %dx.types.ResRet.f32 %8620, 1
  %8623 = extractvalue %dx.types.ResRet.f32 %8620, 2
  %8624 = extractvalue %dx.types.ResRet.f32 %8620, 3
  %8625 = add nuw nsw i32 %8592, 96
  %8626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8625, i32 undef)  ; BufferLoad(srv,index,wot)
  %8627 = extractvalue %dx.types.ResRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.ResRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.ResRet.f32 %8626, 2
  %8630 = extractvalue %dx.types.ResRet.f32 %8626, 3
  %8631 = bitcast float %8601 to i32
  %8632 = fmul fast float %8606, %128
  %8633 = fmul fast float %8606, %129
  %8634 = fmul fast float %8606, %130
  %8635 = fadd fast float %8632, %200
  %8636 = fadd fast float %8633, %201
  %8637 = fadd fast float %8634, %202
  %8638 = fmul fast float %8635, %8609
  %8639 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8615, float %8638)  ; FMad(a,b,c)
  %8640 = call float @dx.op.tertiary.f32(i32 46, float %8637, float %8621, float %8639)  ; FMad(a,b,c)
  %8641 = fadd fast float %8640, %8627
  %8642 = fmul fast float %8635, %8610
  %8643 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8616, float %8642)  ; FMad(a,b,c)
  %8644 = call float @dx.op.tertiary.f32(i32 46, float %8637, float %8622, float %8643)  ; FMad(a,b,c)
  %8645 = fadd fast float %8644, %8628
  %8646 = fmul fast float %8635, %8611
  %8647 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8617, float %8646)  ; FMad(a,b,c)
  %8648 = call float @dx.op.tertiary.f32(i32 46, float %8637, float %8623, float %8647)  ; FMad(a,b,c)
  %8649 = fadd fast float %8648, %8629
  %8650 = fmul fast float %8635, %8612
  %8651 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8618, float %8650)  ; FMad(a,b,c)
  %8652 = call float @dx.op.tertiary.f32(i32 46, float %8637, float %8624, float %8651)  ; FMad(a,b,c)
  %8653 = fadd fast float %8652, %8630
  %8654 = fdiv fast float %8641, %8653
  %8655 = fdiv fast float %8645, %8653
  %8656 = fdiv fast float %8649, %8653
  %8657 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8656)  ; FMax(a,b)
  %8658 = fmul fast float %270, 0x401921FB60000000
  %8659 = call float @dx.op.unary.f32(i32 13, float %8658)  ; Sin(value)
  %8660 = call float @dx.op.unary.f32(i32 12, float %8658)  ; Cos(value)
  %8661 = fmul fast float %8660, %8605
  %8662 = call float @dx.op.tertiary.f32(i32 46, float %8659, float %8605, float 0.000000e+00)  ; FMad(a,b,c)
  %8663 = fmul fast float %8605, %8659
  %8664 = fsub fast float -0.000000e+00, %8663
  %8665 = call float @dx.op.tertiary.f32(i32 46, float %8660, float %8605, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8666

; <label>:8666                                    ; preds = %8666, %8591
  %8667 = phi float [ 0.000000e+00, %8591 ], [ %8699, %8666 ]
  %8668 = phi float [ 0.000000e+00, %8591 ], [ %8701, %8666 ]
  %8669 = phi i32 [ 0, %8591 ], [ %8702, %8666 ]
  %8670 = mul i32 %8669, 2
  %8671 = add i32 0, %8670
  %8672 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8671
  %8673 = load float, float* %8672, align 4
  %8674 = mul i32 %8669, 2
  %8675 = add i32 1, %8674
  %8676 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8675
  %8677 = load float, float* %8676, align 4
  %8678 = fmul fast float %8661, %8673
  %8679 = call float @dx.op.tertiary.f32(i32 46, float %8677, float %8664, float %8678)  ; FMad(a,b,c)
  %8680 = fmul fast float %8673, %8662
  %8681 = call float @dx.op.tertiary.f32(i32 46, float %8677, float %8665, float %8680)  ; FMad(a,b,c)
  %8682 = fadd fast float %8679, %8654
  %8683 = fadd fast float %8681, %8655
  %8684 = fmul fast float %8682, %8600
  %8685 = fmul fast float %8683, %8600
  %8686 = call float @dx.op.binary.f32(i32 35, float %8684, float %8596)  ; FMax(a,b)
  %8687 = call float @dx.op.binary.f32(i32 35, float %8685, float %8596)  ; FMax(a,b)
  %8688 = call float @dx.op.binary.f32(i32 36, float %8686, float %8597)  ; FMin(a,b)
  %8689 = call float @dx.op.binary.f32(i32 36, float %8687, float %8597)  ; FMin(a,b)
  %8690 = fadd fast float %8688, %8594
  %8691 = fadd fast float %8689, %8595
  %8692 = uitofp i32 %8631 to float
  %8693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8690, float %8691, float %8692, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8694 = extractvalue %dx.types.ResRet.f32 %8693, 0
  %8695 = fsub fast float %8694, %8657
  %8696 = fsub fast float %8695, %8604
  %8697 = fcmp fast ogt float %8696, 0.000000e+00
  %8698 = select i1 %8697, float 1.000000e+00, float 0.000000e+00
  %8699 = fadd fast float %8698, %8667
  %8700 = select i1 %8697, float %8696, float 0.000000e+00
  %8701 = fadd fast float %8700, %8668
  %8702 = add nuw nsw i32 %8669, 1
  %8703 = icmp eq i32 %8702, 8
  br i1 %8703, label %8704, label %8666

; <label>:8704                                    ; preds = %8666
  %8705 = fdiv fast float 1.000000e+00, %8699
  %8706 = fmul fast float %8705, %8701
  %8707 = fdiv fast float 1.000000e+00, %8657
  %8708 = fmul fast float %8706, %8707
  %8709 = call float @dx.op.unary.f32(i32 7, float %8708)  ; Saturate(value)
  %8710 = call float @dx.op.binary.f32(i32 35, float %8709, float 0.000000e+00)  ; FMax(a,b)
  %8711 = fmul fast float %8699, 1.250000e-01
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = fmul fast float %8712, 2.000000e+00
  %8714 = fadd fast float %8713, -1.000000e+00
  %8715 = fcmp fast ogt float %8714, 0.000000e+00
  %8716 = fcmp fast olt float %8714, 0.000000e+00
  %8717 = zext i1 %8715 to i32
  %8718 = zext i1 %8716 to i32
  %8719 = sub nsw i32 %8717, %8718
  %8720 = sitofp i32 %8719 to float
  %8721 = fmul fast float %8720, %8714
  %8722 = fsub fast float 1.000000e+00, %8721
  %8723 = fmul fast float %8722, %8722
  %8724 = fmul fast float %8723, %8722
  %8725 = fsub fast float %8722, %8724
  %8726 = fmul fast float %8725, %8710
  %8727 = fsub fast float 1.000000e+00, %8724
  %8728 = fsub fast float %8727, %8726
  %8729 = fmul fast float %8720, 5.000000e-01
  %8730 = fmul fast float %8729, %8728
  %8731 = fsub fast float -5.000000e-01, %8730
  %8732 = fmul fast float %8731, %8565
  %8733 = fadd fast float %8732, 1.000000e+00
  %8734 = fmul fast float %8733, %8577
  br label %8735

; <label>:8735                                    ; preds = %8704, %8589
  %8736 = phi float [ %8734, %8704 ], [ %8577, %8589 ]
  %8737 = call float @dx.op.binary.f32(i32 36, float %8736, float %8736)  ; FMin(a,b)
  %8738 = call float @dx.op.binary.f32(i32 36, float %8736, float %8737)  ; FMin(a,b)
  %8739 = fcmp fast ogt float %8738, 0.000000e+00
  br i1 %8739, label %8740, label %8581, !dx.controlflow.hints !141

; <label>:8740                                    ; preds = %8735
  %8741 = fmul fast float %8736, %8499
  %8742 = fmul fast float %8736, %8500
  %8743 = fmul fast float %8736, %8501
  %8744 = fsub fast float %8483, %4883
  %8745 = fcmp fast ogt float %8744, 0.000000e+00
  %8746 = fsub fast float %202, %4883
  %8747 = fcmp fast ogt float %8746, 0.000000e+00
  %8748 = xor i1 %8747, %8745
  %8749 = fsub fast float %4883, %8483
  %8750 = fmul fast float %8749, 2.000000e+00
  %8751 = fadd fast float %8750, %8483
  %8752 = select i1 %8748, float %8483, float %8751
  %8753 = fsub fast float %8752, %202
  %8754 = call float @dx.op.dot3.f32(i32 55, float %8509, float %8510, float %8753, float %8509, float %8510, float %8753)  ; Dot3(ax,ay,az,bx,by,bz)
  %8755 = call float @dx.op.unary.f32(i32 25, float %8754)  ; Rsqrt(value)
  %8756 = fmul fast float %8755, %8509
  %8757 = fmul fast float %8755, %8510
  %8758 = fmul fast float %8755, %8753
  %8759 = fsub fast float %4883, %202
  %8760 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8759)  ; Dot3(ax,ay,az,bx,by,bz)
  %8761 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8756, float %8757, float %8758)  ; Dot3(ax,ay,az,bx,by,bz)
  %8762 = fdiv fast float 1.000000e+00, %8761
  %8763 = fmul fast float %8762, %8760
  %8764 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8746, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8765 = fcmp fast ogt float %8764, 0.000000e+00
  %8766 = fcmp fast olt float %8764, 0.000000e+00
  %8767 = zext i1 %8765 to i32
  %8768 = zext i1 %8766 to i32
  %8769 = sub nsw i32 %8767, %8768
  %8770 = sitofp i32 %8769 to float
  %8771 = fsub fast float %8752, %4883
  %8772 = call float @dx.op.dot3.f32(i32 55, float %8509, float %8510, float %8771, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8773 = fcmp fast ogt float %8772, 0.000000e+00
  %8774 = fcmp fast olt float %8772, 0.000000e+00
  %8775 = zext i1 %8773 to i32
  %8776 = zext i1 %8774 to i32
  %8777 = sub nsw i32 %8775, %8776
  %8778 = sitofp i32 %8777 to float
  %8779 = fcmp fast une float %8770, %8778
  br i1 %8779, label %8780, label %8790

; <label>:8780                                    ; preds = %8740
  %8781 = fmul fast float %8763, %8758
  %8782 = fmul fast float %8763, %8757
  %8783 = fmul fast float %8763, %8756
  %8784 = fmul fast float %8783, %8783
  %8785 = fmul fast float %8782, %8782
  %8786 = fadd fast float %8784, %8785
  %8787 = fmul fast float %8781, %8781
  %8788 = fadd fast float %8786, %8787
  %8789 = call float @dx.op.unary.f32(i32 24, float %8788)  ; Sqrt(value)
  br label %8802

; <label>:8790                                    ; preds = %8740
  %8791 = icmp slt i32 %8769, 0
  br i1 %8791, label %8792, label %8802

; <label>:8792                                    ; preds = %8790
  %8793 = fsub fast float %200, %8481
  %8794 = fsub fast float %201, %8482
  %8795 = fsub fast float %202, %8752
  %8796 = fmul fast float %8793, %8793
  %8797 = fmul fast float %8794, %8794
  %8798 = fadd fast float %8796, %8797
  %8799 = fmul fast float %8795, %8795
  %8800 = fadd fast float %8798, %8799
  %8801 = call float @dx.op.unary.f32(i32 24, float %8800)  ; Sqrt(value)
  br label %8802

; <label>:8802                                    ; preds = %8792, %8790, %8780
  %8803 = phi float [ %8789, %8780 ], [ %8801, %8792 ], [ 0.000000e+00, %8790 ]
  %8804 = and i1 %8747, %8745
  %8805 = fsub fast float -0.000000e+00, %8803
  %8806 = select i1 %8804, float -0.000000e+00, float %8805
  %8807 = fmul fast float %4884, 0x3FF7154760000000
  %8808 = fmul fast float %8807, %8806
  %8809 = fmul fast float %4885, 0x3FF7154760000000
  %8810 = fmul fast float %8809, %8806
  %8811 = fmul fast float %4886, 0x3FF7154760000000
  %8812 = fmul fast float %8811, %8806
  %8813 = call float @dx.op.unary.f32(i32 21, float %8808)  ; Exp(value)
  %8814 = call float @dx.op.unary.f32(i32 21, float %8810)  ; Exp(value)
  %8815 = call float @dx.op.unary.f32(i32 21, float %8812)  ; Exp(value)
  %8816 = call float @dx.op.unary.f32(i32 7, float %8813)  ; Saturate(value)
  %8817 = call float @dx.op.unary.f32(i32 7, float %8814)  ; Saturate(value)
  %8818 = call float @dx.op.unary.f32(i32 7, float %8815)  ; Saturate(value)
  %8819 = fmul fast float %8741, %8816
  %8820 = fmul fast float %8742, %8817
  %8821 = fmul fast float %8743, %8818
  %8822 = fsub fast float %8515, %5709
  %8823 = fsub fast float %8516, %5710
  %8824 = fsub fast float %8517, %5711
  %8825 = call float @dx.op.dot3.f32(i32 55, float %8822, float %8823, float %8824, float %8822, float %8823, float %8824)  ; Dot3(ax,ay,az,bx,by,bz)
  %8826 = call float @dx.op.unary.f32(i32 25, float %8825)  ; Rsqrt(value)
  %8827 = fmul fast float %8826, %8822
  %8828 = fmul fast float %8826, %8823
  %8829 = fmul fast float %8826, %8824
  %8830 = call float @dx.op.dot3.f32(i32 55, float %8515, float %8516, float %8517, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %8831 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %8827, float %8828, float %8829)  ; Dot3(ax,ay,az,bx,by,bz)
  %8832 = call float @dx.op.unary.f32(i32 7, float %8830)  ; Saturate(value)
  %8833 = fmul fast float %8832, %8522
  %8834 = fmul fast float %8832, %8832
  %8835 = fmul fast float %8834, %5742
  %8836 = call float @dx.op.unary.f32(i32 7, float %8835)  ; Saturate(value)
  %8837 = fmul fast float %8833, %8836
  %8838 = bitcast float %8512 to i32
  %8839 = ashr i32 %8838, 1
  %8840 = sub nsw i32 1597463007, %8839
  %8841 = bitcast i32 %8840 to float
  %8842 = fmul fast float %8841, %8509
  %8843 = fmul fast float %8841, %8510
  %8844 = fmul fast float %8841, %8511
  %8845 = fsub fast float %8842, %5709
  %8846 = fsub fast float %8843, %5710
  %8847 = fsub fast float %8844, %5711
  %8848 = call float @dx.op.dot3.f32(i32 55, float %8845, float %8846, float %8847, float %8845, float %8846, float %8847)  ; Dot3(ax,ay,az,bx,by,bz)
  %8849 = call float @dx.op.unary.f32(i32 25, float %8848)  ; Rsqrt(value)
  %8850 = fmul fast float %8845, %8849
  %8851 = fmul fast float %8846, %8849
  %8852 = fmul fast float %8847, %8849
  %8853 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %8850, float %8851, float %8852)  ; Dot3(ax,ay,az,bx,by,bz)
  %8854 = fmul fast float %8853, %8853
  %8855 = call float @dx.op.unary.f32(i32 6, float %8830)  ; FAbs(value)
  %8856 = fsub fast float 1.000000e+00, %5735
  %8857 = fmul fast float %5717, %5717
  %8858 = fmul fast float %8857, %8856
  %8859 = fadd fast float %8858, %5735
  %8860 = bitcast float %8859 to i32
  %8861 = ashr i32 %8860, 1
  %8862 = add nsw i32 %8861, 532487669
  %8863 = bitcast i32 %8862 to float
  %8864 = fadd fast float %8863, %5717
  %8865 = fmul fast float %5735, %8854
  %8866 = fsub fast float 1.000000e+00, %8854
  %8867 = fadd fast float %8866, %8865
  %8868 = fmul fast float %8855, %8855
  %8869 = fmul fast float %8868, %8856
  %8870 = fadd fast float %8869, %5735
  %8871 = bitcast float %8870 to i32
  %8872 = ashr i32 %8871, 1
  %8873 = add nsw i32 %8872, 532487669
  %8874 = bitcast i32 %8873 to float
  %8875 = fadd fast float %8874, %8855
  %8876 = fmul fast float %8867, %8867
  %8877 = fmul fast float %8876, %8864
  %8878 = fmul fast float %8877, %8875
  %8879 = fdiv fast float 1.000000e+00, %8878
  %8880 = bitcast float %5735 to i32
  %8881 = sitofp i32 %8880 to float
  %8882 = fmul fast float %8881, 0x3FE7F73180000000
  %8883 = fadd fast float %8882, 0x41AFE27C40000000
  %8884 = fptosi float %8883 to i32
  %8885 = bitcast i32 %8884 to float
  %8886 = fmul fast float %8478, 0x3FD80E9D60000000
  %8887 = fmul fast float %8886, %8841
  %8888 = fadd fast float %8885, %8887
  %8889 = bitcast float %8888 to i32
  %8890 = sub nsw i32 2129859010, %8889
  %8891 = bitcast i32 %8890 to float
  %8892 = fmul fast float %5735, %8879
  %8893 = fmul fast float %8892, %8885
  %8894 = fmul fast float %8893, %8891
  %8895 = call float @dx.op.unary.f32(i32 6, float %8831)  ; FAbs(value)
  %8896 = fsub fast float 1.000000e+00, %8895
  %8897 = bitcast float %8896 to i32
  %8898 = sitofp i32 %8897 to float
  %8899 = fmul fast float %8898, 5.000000e+00
  %8900 = fadd fast float %8899, 0xC1EFBF8940000000
  %8901 = fptosi float %8900 to i32
  %8902 = bitcast i32 %8901 to float
  %8903 = fsub fast float 1.000000e+00, %5663
  %8904 = fsub fast float 1.000000e+00, %5664
  %8905 = fsub fast float 1.000000e+00, %5715
  %8906 = fmul fast float %8902, %8903
  %8907 = fmul fast float %8902, %8904
  %8908 = fmul fast float %8902, %8905
  %8909 = fadd fast float %8906, %5663
  %8910 = fadd fast float %8907, %5664
  %8911 = fadd fast float %8908, %5715
  br i1 %6000, label %8912, label %8935

; <label>:8912                                    ; preds = %8802
  %8913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4416, float %8895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8914 = extractvalue %dx.types.ResRet.f32 %8913, 0
  %8915 = extractvalue %dx.types.ResRet.f32 %8913, 1
  %8916 = extractvalue %dx.types.ResRet.f32 %8913, 2
  %8917 = fadd fast float %8914, -5.000000e-01
  %8918 = fadd fast float %8915, -5.000000e-01
  %8919 = fadd fast float %8916, -5.000000e-01
  %8920 = fmul fast float %5663, 4.000000e+00
  %8921 = fmul fast float %8920, %8903
  %8922 = fmul fast float %8921, %8917
  %8923 = fmul fast float %5664, 4.000000e+00
  %8924 = fmul fast float %8923, %8904
  %8925 = fmul fast float %8924, %8918
  %8926 = fmul fast float %5715, 4.000000e+00
  %8927 = fmul fast float %8926, %8905
  %8928 = fmul fast float %8927, %8919
  %8929 = fadd fast float %8922, %8909
  %8930 = fadd fast float %8925, %8910
  %8931 = fadd fast float %8928, %8911
  %8932 = call float @dx.op.unary.f32(i32 7, float %8929)  ; Saturate(value)
  %8933 = call float @dx.op.unary.f32(i32 7, float %8930)  ; Saturate(value)
  %8934 = call float @dx.op.unary.f32(i32 7, float %8931)  ; Saturate(value)
  br label %8935

; <label>:8935                                    ; preds = %8912, %8802
  %8936 = phi float [ %8932, %8912 ], [ %8909, %8802 ]
  %8937 = phi float [ %8933, %8912 ], [ %8910, %8802 ]
  %8938 = phi float [ %8934, %8912 ], [ %8911, %8802 ]
  %8939 = fmul fast float %8830, 9.843750e-01
  %8940 = fadd fast float %8939, 7.812500e-03
  %8941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8940, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8942 = extractvalue %dx.types.ResRet.f32 %8941, 2
  %8943 = extractvalue %dx.types.ResRet.f32 %8941, 3
  %8944 = fmul fast float %8942, %5663
  %8945 = fmul fast float %8942, %5664
  %8946 = fmul fast float %8942, %5715
  %8947 = fadd fast float %8944, %8943
  %8948 = fadd fast float %8945, %8943
  %8949 = fadd fast float %8946, %8943
  br i1 %6000, label %8950, label %8973

; <label>:8950                                    ; preds = %8935
  %8951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4416, float %8830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8952 = extractvalue %dx.types.ResRet.f32 %8951, 0
  %8953 = extractvalue %dx.types.ResRet.f32 %8951, 1
  %8954 = extractvalue %dx.types.ResRet.f32 %8951, 2
  %8955 = fadd fast float %8952, -5.000000e-01
  %8956 = fadd fast float %8953, -5.000000e-01
  %8957 = fadd fast float %8954, -5.000000e-01
  %8958 = fmul fast float %5663, 4.000000e+00
  %8959 = fmul fast float %8958, %8903
  %8960 = fmul fast float %8959, %8955
  %8961 = fmul fast float %5664, 4.000000e+00
  %8962 = fmul fast float %8961, %8904
  %8963 = fmul fast float %8962, %8956
  %8964 = fmul fast float %5715, 4.000000e+00
  %8965 = fmul fast float %8964, %8905
  %8966 = fmul fast float %8965, %8957
  %8967 = fadd fast float %8960, %8947
  %8968 = fadd fast float %8963, %8948
  %8969 = fadd fast float %8966, %8949
  %8970 = call float @dx.op.unary.f32(i32 7, float %8967)  ; Saturate(value)
  %8971 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  %8972 = call float @dx.op.unary.f32(i32 7, float %8969)  ; Saturate(value)
  br label %8973

; <label>:8973                                    ; preds = %8950, %8935
  %8974 = phi float [ %8970, %8950 ], [ %8947, %8935 ]
  %8975 = phi float [ %8971, %8950 ], [ %8948, %8935 ]
  %8976 = phi float [ %8972, %8950 ], [ %8949, %8935 ]
  %8977 = call float @dx.op.binary.f32(i32 35, float %8975, float %8976)  ; FMax(a,b)
  %8978 = call float @dx.op.binary.f32(i32 35, float %8974, float %8977)  ; FMax(a,b)
  %8979 = fsub fast float 1.000000e+00, %8978
  %8980 = fsub fast float -0.000000e+00, %5669
  %8981 = fsub fast float -0.000000e+00, %5670
  %8982 = fsub fast float -0.000000e+00, %5671
  %8983 = call float @dx.op.dot3.f32(i32 55, float %8515, float %8516, float %8517, float %8980, float %8981, float %8982)  ; Dot3(ax,ay,az,bx,by,bz)
  %8984 = call float @dx.op.unary.f32(i32 7, float %8983)  ; Saturate(value)
  %8985 = fmul fast float %8984, %8522
  %8986 = fmul fast float %8984, 9.843750e-01
  %8987 = fadd fast float %8986, 7.812500e-03
  %8988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8987, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8989 = extractvalue %dx.types.ResRet.f32 %8988, 2
  %8990 = extractvalue %dx.types.ResRet.f32 %8988, 3
  %8991 = fmul fast float %8989, %5663
  %8992 = fmul fast float %8989, %5664
  %8993 = fmul fast float %8989, %5715
  %8994 = fadd fast float %8991, %8990
  %8995 = fadd fast float %8992, %8990
  %8996 = fadd fast float %8993, %8990
  br i1 %6000, label %8997, label %9020

; <label>:8997                                    ; preds = %8973
  %8998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4416, float %8984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8999 = extractvalue %dx.types.ResRet.f32 %8998, 0
  %9000 = extractvalue %dx.types.ResRet.f32 %8998, 1
  %9001 = extractvalue %dx.types.ResRet.f32 %8998, 2
  %9002 = fadd fast float %8999, -5.000000e-01
  %9003 = fadd fast float %9000, -5.000000e-01
  %9004 = fadd fast float %9001, -5.000000e-01
  %9005 = fmul fast float %5663, 4.000000e+00
  %9006 = fmul fast float %9005, %8903
  %9007 = fmul fast float %9006, %9002
  %9008 = fmul fast float %5664, 4.000000e+00
  %9009 = fmul fast float %9008, %8904
  %9010 = fmul fast float %9009, %9003
  %9011 = fmul fast float %5715, 4.000000e+00
  %9012 = fmul fast float %9011, %8905
  %9013 = fmul fast float %9012, %9004
  %9014 = fadd fast float %9007, %8994
  %9015 = fadd fast float %9010, %8995
  %9016 = fadd fast float %9013, %8996
  %9017 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  %9018 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9019 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  br label %9020

; <label>:9020                                    ; preds = %8997, %8973
  %9021 = phi float [ %9017, %8997 ], [ %8994, %8973 ]
  %9022 = phi float [ %9018, %8997 ], [ %8995, %8973 ]
  %9023 = phi float [ %9019, %8997 ], [ %8996, %8973 ]
  %9024 = call float @dx.op.binary.f32(i32 35, float %9022, float %9023)  ; FMax(a,b)
  %9025 = call float @dx.op.binary.f32(i32 35, float %9021, float %9024)  ; FMax(a,b)
  %9026 = fsub fast float 1.000000e+00, %9025
  %9027 = fmul fast float %8985, %9026
  %9028 = fmul fast float %9027, %4506
  %9029 = fmul fast float %9027, %4507
  %9030 = fmul fast float %9027, %4508
  %9031 = fmul fast float %8936, %8894
  %9032 = fmul fast float %8937, %8894
  %9033 = fmul fast float %8938, %8894
  %9034 = fsub fast float 1.000000e+00, %8831
  %9035 = bitcast float %9034 to i32
  %9036 = sitofp i32 %9035 to float
  %9037 = fmul fast float %9036, 5.000000e+00
  %9038 = fadd fast float %9037, 0xC1EFBF8940000000
  %9039 = fptosi float %9038 to i32
  %9040 = bitcast i32 %9039 to float
  %9041 = fmul fast float %9040, %4417
  %9042 = fmul fast float %8979, %9041
  %9043 = fmul fast float %9042, %6539
  %9044 = fmul fast float %9042, %6540
  %9045 = fmul fast float %9042, %6541
  %9046 = fmul fast float %8979, %8837
  %9047 = fadd fast float %9043, %9031
  %9048 = fadd fast float %9044, %9032
  %9049 = fadd fast float %9045, %9033
  %9050 = fadd fast float %9028, %9046
  %9051 = fadd fast float %9029, %9046
  %9052 = fadd fast float %9030, %9046
  %9053 = fmul fast float %8819, %4413
  %9054 = fmul fast float %9053, %9050
  %9055 = fmul fast float %8820, %4413
  %9056 = fmul fast float %9055, %9051
  %9057 = fmul fast float %8821, %4413
  %9058 = fmul fast float %9057, %9052
  %9059 = fadd fast float %9054, %8452
  %9060 = fadd fast float %9056, %8453
  %9061 = fadd fast float %9058, %8454
  %9062 = fmul fast float %9053, %8837
  %9063 = fmul fast float %9062, %9047
  %9064 = fmul fast float %9055, %8837
  %9065 = fmul fast float %9064, %9048
  %9066 = fmul fast float %9057, %8837
  %9067 = fmul fast float %9066, %9049
  %9068 = fadd fast float %9063, %8449
  %9069 = fadd fast float %9065, %8450
  %9070 = fadd fast float %9067, %8451
  br label %8581

; <label>:9071                                    ; preds = %8581
  br label %9072

; <label>:9072                                    ; preds = %9071, %8415
  %9073 = phi float [ %8417, %8415 ], [ %8582, %9071 ]
  %9074 = phi float [ %8418, %8415 ], [ %8583, %9071 ]
  %9075 = phi float [ %8419, %8415 ], [ %8584, %9071 ]
  %9076 = phi float [ %8420, %8415 ], [ %8585, %9071 ]
  %9077 = phi float [ %8421, %8415 ], [ %8586, %9071 ]
  %9078 = phi float [ %8422, %8415 ], [ %8587, %9071 ]
  %9079 = add i32 %8416, 1
  %9080 = icmp ugt i32 %9079, %8412
  br i1 %9080, label %9081, label %8415

; <label>:9081                                    ; preds = %9072
  br label %9082

; <label>:9082                                    ; preds = %9081, %8365, %8355
  %9083 = phi float [ %8356, %8355 ], [ %8356, %8365 ], [ %9073, %9081 ]
  %9084 = phi float [ %8357, %8355 ], [ %8357, %8365 ], [ %9074, %9081 ]
  %9085 = phi float [ %8358, %8355 ], [ %8358, %8365 ], [ %9075, %9081 ]
  %9086 = phi float [ %8359, %8355 ], [ %8359, %8365 ], [ %9076, %9081 ]
  %9087 = phi float [ %8360, %8355 ], [ %8360, %8365 ], [ %9077, %9081 ]
  %9088 = phi float [ %8361, %8355 ], [ %8361, %8365 ], [ %9078, %9081 ]
  %9089 = fmul fast float %4413, %6548
  %9090 = fsub fast float -0.000000e+00, %9089
  %9091 = fmul fast float %4413, %6549
  %9092 = fsub fast float -0.000000e+00, %9091
  %9093 = fmul fast float %4413, %6550
  %9094 = fsub fast float -0.000000e+00, %9093
  %9095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9096 = extractvalue %dx.types.CBufRet.f32 %9095, 0
  %9097 = fmul fast float %9096, %6554
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 3
  %9100 = fsub fast float 1.000000e+00, %4420
  %9101 = call float @dx.op.unary.f32(i32 7, float %9100)  ; Saturate(value)
  %9102 = fadd fast float %9088, %4419
  %9103 = fmul fast float %9102, %4420
  %9104 = fmul fast float %9101, %9099
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 3
  %9107 = fmul fast float %9086, %5666
  %9108 = fmul fast float %9087, %5667
  %9109 = fmul fast float %9088, %5668
  %9110 = fcmp fast ogt float %108, %222
  %9111 = and i1 %9110, %4889
  %9112 = or i1 %4895, %9111
  %9113 = icmp eq i32 %4888, 2
  %9114 = fcmp fast ole float %108, %222
  %9115 = and i1 %9114, %9113
  %9116 = or i1 %9115, %9112
  br i1 %9111, label %9117, label %9374

; <label>:9117                                    ; preds = %9082
  %9118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9119 = extractvalue %dx.types.CBufRet.f32 %9118, 2
  %9120 = extractvalue %dx.types.CBufRet.f32 %9118, 3
  %9121 = fmul fast float %9119, %121
  %9122 = fmul fast float %9120, %122
  %9123 = call float @dx.op.unary.f32(i32 7, float %9121)  ; Saturate(value)
  %9124 = call float @dx.op.unary.f32(i32 7, float %9122)  ; Saturate(value)
  %9125 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9123, float %9124, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9126 = extractvalue %dx.types.ResRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.ResRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.ResRet.f32 %9125, 2
  %9129 = extractvalue %dx.types.ResRet.f32 %9125, 3
  %9130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9123, float %9124, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9131 = extractvalue %dx.types.ResRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.ResRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.ResRet.f32 %9130, 2
  %9134 = extractvalue %dx.types.ResRet.f32 %9130, 3
  %9135 = call float @dx.op.binary.f32(i32 35, float %9127, float %9128)  ; FMax(a,b)
  %9136 = call float @dx.op.binary.f32(i32 35, float %9126, float %9135)  ; FMax(a,b)
  %9137 = call float @dx.op.binary.f32(i32 35, float %9136, float %9129)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 36, float %9132, float %9133)  ; FMin(a,b)
  %9139 = call float @dx.op.binary.f32(i32 36, float %9131, float %9138)  ; FMin(a,b)
  %9140 = call float @dx.op.binary.f32(i32 36, float %9139, float %9134)  ; FMin(a,b)
  %9141 = fmul fast float %9137, 2.550000e+02
  %9142 = fadd fast float %9141, 0x3F70101020000000
  %9143 = fptoui float %9142 to i32
  %9144 = fmul fast float %9140, 2.550000e+02
  %9145 = fadd fast float %9144, 0x3F70101020000000
  %9146 = fptoui float %9145 to i32
  %9147 = icmp ult i32 %9143, %9146
  br i1 %9147, label %9148, label %9316

; <label>:9148                                    ; preds = %9117
  %9149 = fcmp fast ogt float %107, 9.843750e-01
  %9150 = fadd fast float %108, -4.000000e+00
  %9151 = select i1 %9149, float -4.000000e+00, float %9150
  %9152 = call float @dx.op.binary.f32(i32 35, float %9151, float 0.000000e+00)  ; FMax(a,b)
  %9153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9154 = extractvalue %dx.types.CBufRet.f32 %9153, 0
  %9155 = fadd fast float %9154, %9152
  %9156 = extractvalue %dx.types.CBufRet.f32 %9153, 2
  %9157 = fmul fast float %9155, %9156
  %9158 = call float @dx.op.unary.f32(i32 23, float %9157)  ; Log(value)
  %9159 = extractvalue %dx.types.CBufRet.f32 %9153, 3
  %9160 = fmul fast float %9159, %9158
  %9161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9162 = extractvalue %dx.types.CBufRet.f32 %9161, 2
  %9163 = fmul fast float %9160, %9162
  %9164 = call float @dx.op.unary.f32(i32 7, float %9163)  ; Saturate(value)
  %9165 = uitofp i32 %9143 to float
  %9166 = uitofp i32 %9146 to float
  %9167 = fadd fast float %9165, 5.000000e-01
  %9168 = fadd fast float %9166, 5.000000e-01
  %9169 = fmul fast float %9162, %9167
  %9170 = fmul fast float %9162, %9168
  %9171 = fadd fast float %9169, 0x3F0FFB4800000000
  %9172 = fadd fast float %9170, 0xBF0FFB4800000000
  %9173 = call float @dx.op.binary.f32(i32 35, float %9164, float %9171)  ; FMax(a,b)
  %9174 = call float @dx.op.binary.f32(i32 36, float %9173, float %9172)  ; FMin(a,b)
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 1
  %9177 = extractvalue %dx.types.CBufRet.f32 %9175, 2
  %9178 = extractvalue %dx.types.CBufRet.f32 %9175, 0
  %9179 = fmul fast float %9176, %9174
  %9180 = fadd fast float %9178, %9179
  %9181 = fadd fast float %9178, %9177
  %9182 = fsub fast float %9176, %9177
  %9183 = fadd fast float %9182, %9178
  %9184 = call float @dx.op.binary.f32(i32 35, float %9180, float %9181)  ; FMax(a,b)
  %9185 = call float @dx.op.binary.f32(i32 36, float %9184, float %9183)  ; FMin(a,b)
  %9186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9123, float %9124, float %9185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9187 = extractvalue %dx.types.ResRet.f32 %9186, 0
  %9188 = extractvalue %dx.types.ResRet.f32 %9186, 1
  %9189 = extractvalue %dx.types.ResRet.f32 %9186, 2
  %9190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9191 = extractvalue %dx.types.CBufRet.i32 %9190, 0
  %9192 = extractvalue %dx.types.CBufRet.i32 %9190, 1
  %9193 = uitofp i32 %9191 to float
  %9194 = uitofp i32 %9192 to float
  %9195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9196 = extractvalue %dx.types.CBufRet.f32 %9195, 0
  %9197 = extractvalue %dx.types.CBufRet.f32 %9195, 1
  %9198 = fmul fast float %9193, %9123
  %9199 = fmul fast float %9194, %9124
  %9200 = fadd fast float %9198, -5.000000e-01
  %9201 = fadd fast float %9199, -5.000000e-01
  %9202 = call float @dx.op.unary.f32(i32 22, float %9200)  ; Frc(value)
  %9203 = call float @dx.op.unary.f32(i32 22, float %9201)  ; Frc(value)
  %9204 = fmul fast float %9202, %9202
  %9205 = fmul fast float %9204, %9202
  %9206 = fsub fast float 3.000000e+00, %9202
  %9207 = fmul fast float %9204, %9206
  %9208 = fmul fast float %9202, 3.000000e+00
  %9209 = fmul fast float %9205, 3.000000e+00
  %9210 = fmul fast float %9204, 6.000000e+00
  %9211 = fsub fast float %9209, %9210
  %9212 = fadd fast float %9211, 4.000000e+00
  %9213 = fmul fast float %9212, 0x3FC5555560000000
  %9214 = fmul fast float %9205, -3.000000e+00
  %9215 = fadd fast float %9204, %9202
  %9216 = fmul fast float %9215, 3.000000e+00
  %9217 = fadd fast float %9214, 1.000000e+00
  %9218 = fadd fast float %9217, %9216
  %9219 = fmul fast float %9205, 0x3FC5555560000000
  %9220 = fmul fast float %9203, %9203
  %9221 = fmul fast float %9220, %9203
  %9222 = fsub fast float 3.000000e+00, %9203
  %9223 = fmul fast float %9220, %9222
  %9224 = fmul fast float %9203, 3.000000e+00
  %9225 = fmul fast float %9221, 3.000000e+00
  %9226 = fmul fast float %9220, 6.000000e+00
  %9227 = fsub fast float %9225, %9226
  %9228 = fadd fast float %9227, 4.000000e+00
  %9229 = fmul fast float %9228, 0x3FC5555560000000
  %9230 = fmul fast float %9221, -3.000000e+00
  %9231 = fadd fast float %9220, %9203
  %9232 = fmul fast float %9231, 3.000000e+00
  %9233 = fadd fast float %9230, 1.000000e+00
  %9234 = fadd fast float %9233, %9232
  %9235 = fmul fast float %9221, 0x3FC5555560000000
  %9236 = fadd fast float %9202, 1.000000e+00
  %9237 = fsub fast float 1.000000e+00, %9208
  %9238 = fadd fast float %9237, %9207
  %9239 = fadd fast float %9238, %9212
  %9240 = fmul fast float %9239, 0x3FC5555560000000
  %9241 = fdiv fast float %9213, %9240
  %9242 = fsub fast float %9236, %9241
  %9243 = fsub fast float 1.000000e+00, %9202
  %9244 = fadd fast float %9218, %9205
  %9245 = fmul fast float %9244, 0x3FC5555560000000
  %9246 = fdiv fast float %9219, %9245
  %9247 = fadd fast float %9243, %9246
  %9248 = fadd fast float %9203, 1.000000e+00
  %9249 = fsub fast float 1.000000e+00, %9224
  %9250 = fadd fast float %9249, %9223
  %9251 = fadd fast float %9250, %9228
  %9252 = fmul fast float %9251, 0x3FC5555560000000
  %9253 = fdiv fast float %9229, %9252
  %9254 = fsub fast float %9248, %9253
  %9255 = fsub fast float 1.000000e+00, %9203
  %9256 = fadd fast float %9234, %9221
  %9257 = fmul fast float %9256, 0x3FC5555560000000
  %9258 = fdiv fast float %9235, %9257
  %9259 = fadd fast float %9258, %9255
  %9260 = fmul fast float %9242, %9196
  %9261 = fsub fast float %9123, %9260
  %9262 = fmul fast float %9247, %9196
  %9263 = fadd fast float %9262, %9123
  %9264 = fmul fast float %9259, %9197
  %9265 = fadd fast float %9264, %9124
  %9266 = fmul fast float %9254, %9197
  %9267 = fsub fast float %9124, %9266
  %9268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9261, float %9267, float %9185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9269 = extractvalue %dx.types.ResRet.f32 %9268, 0
  %9270 = extractvalue %dx.types.ResRet.f32 %9268, 1
  %9271 = extractvalue %dx.types.ResRet.f32 %9268, 2
  %9272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9263, float %9267, float %9185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9273 = extractvalue %dx.types.ResRet.f32 %9272, 0
  %9274 = extractvalue %dx.types.ResRet.f32 %9272, 1
  %9275 = extractvalue %dx.types.ResRet.f32 %9272, 2
  %9276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9261, float %9265, float %9185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9277 = extractvalue %dx.types.ResRet.f32 %9276, 0
  %9278 = extractvalue %dx.types.ResRet.f32 %9276, 1
  %9279 = extractvalue %dx.types.ResRet.f32 %9276, 2
  %9280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9263, float %9265, float %9185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9281 = extractvalue %dx.types.ResRet.f32 %9280, 0
  %9282 = extractvalue %dx.types.ResRet.f32 %9280, 1
  %9283 = extractvalue %dx.types.ResRet.f32 %9280, 2
  %9284 = fsub fast float %9277, %9269
  %9285 = fsub fast float %9278, %9270
  %9286 = fsub fast float %9279, %9271
  %9287 = fmul fast float %9284, %9257
  %9288 = fmul fast float %9285, %9257
  %9289 = fmul fast float %9286, %9257
  %9290 = fadd fast float %9287, %9269
  %9291 = fadd fast float %9288, %9270
  %9292 = fadd fast float %9289, %9271
  %9293 = fsub fast float %9281, %9273
  %9294 = fsub fast float %9282, %9274
  %9295 = fsub fast float %9283, %9275
  %9296 = fmul fast float %9293, %9257
  %9297 = fmul fast float %9294, %9257
  %9298 = fmul fast float %9295, %9257
  %9299 = fsub fast float %9273, %9290
  %9300 = fadd fast float %9299, %9296
  %9301 = fsub fast float %9274, %9291
  %9302 = fadd fast float %9301, %9297
  %9303 = fsub fast float %9275, %9292
  %9304 = fadd fast float %9303, %9298
  %9305 = fmul fast float %9300, %9245
  %9306 = fmul fast float %9302, %9245
  %9307 = fmul fast float %9304, %9245
  %9308 = fadd fast float %9305, %9290
  %9309 = fadd fast float %9306, %9291
  %9310 = fadd fast float %9307, %9292
  %9311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9311, 1
  %9313 = fmul fast float %9308, %9312
  %9314 = fmul fast float %9309, %9312
  %9315 = fmul fast float %9310, %9312
  br label %9316

; <label>:9316                                    ; preds = %9148, %9117
  %9317 = phi float [ %9187, %9148 ], [ 1.000000e+00, %9117 ]
  %9318 = phi float [ %9188, %9148 ], [ 1.000000e+00, %9117 ]
  %9319 = phi float [ %9189, %9148 ], [ 1.000000e+00, %9117 ]
  %9320 = phi float [ %9313, %9148 ], [ 0.000000e+00, %9117 ]
  %9321 = phi float [ %9314, %9148 ], [ 0.000000e+00, %9117 ]
  %9322 = phi float [ %9315, %9148 ], [ 0.000000e+00, %9117 ]
  %9323 = fmul fast float %9320, %9090
  %9324 = fmul fast float %9321, %9092
  %9325 = fmul fast float %9322, %9094
  %9326 = call float @dx.op.dot3.f32(i32 55, float %9317, float %9318, float %9319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9327 = call float @dx.op.dot3.f32(i32 55, float %9323, float %9324, float %9325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9328 = select i1 %259, float %9326, float %9317
  %9329 = select i1 %259, float %9326, float %9318
  %9330 = select i1 %259, float 1.000000e+00, float %9319
  %9331 = select i1 %259, float %9327, float %9323
  %9332 = select i1 %259, float 0.000000e+00, float %9324
  %9333 = select i1 %259, float 0.000000e+00, float %9325
  %9334 = fmul fast float %9328, %9107
  %9335 = fmul fast float %9329, %9108
  %9336 = fmul fast float %9330, %9109
  %9337 = fadd fast float %9334, %9331
  %9338 = fadd fast float %9335, %9332
  %9339 = fadd fast float %9333, %9336
  %9340 = fmul fast float %9328, %9083
  %9341 = fmul fast float %9329, %9084
  %9342 = fmul fast float %9330, %9085
  %9343 = fmul fast float %149, %9119
  %9344 = fmul fast float %151, %9120
  %9345 = fsub fast float 1.000000e+00, %9343
  %9346 = fsub fast float 1.000000e+00, %9344
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 0
  %9349 = extractvalue %dx.types.CBufRet.f32 %9347, 1
  %9350 = extractvalue %dx.types.CBufRet.f32 %9347, 2
  %9351 = fmul fast float %9345, %9348
  %9352 = fmul fast float %9345, %9349
  %9353 = fmul fast float %9345, %9350
  %9354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9355 = extractvalue %dx.types.CBufRet.f32 %9354, 0
  %9356 = extractvalue %dx.types.CBufRet.f32 %9354, 1
  %9357 = extractvalue %dx.types.CBufRet.f32 %9354, 2
  %9358 = fmul fast float %9346, %9355
  %9359 = fmul fast float %9346, %9356
  %9360 = fmul fast float %9346, %9357
  %9361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.f32 %9361, 0
  %9363 = extractvalue %dx.types.CBufRet.f32 %9361, 1
  %9364 = extractvalue %dx.types.CBufRet.f32 %9361, 2
  %9365 = fadd fast float %9358, %9362
  %9366 = fadd fast float %9365, %9351
  %9367 = fadd fast float %9359, %9363
  %9368 = fadd fast float %9367, %9352
  %9369 = fadd fast float %9360, %9364
  %9370 = fadd fast float %9369, %9353
  %9371 = fmul fast float %9366, %222
  %9372 = fmul fast float %9368, %222
  %9373 = fmul fast float %9370, %222
  br label %9374

; <label>:9374                                    ; preds = %9316, %9082
  %9375 = phi float [ %9371, %9316 ], [ %200, %9082 ]
  %9376 = phi float [ %9372, %9316 ], [ %201, %9082 ]
  %9377 = phi float [ %9373, %9316 ], [ %202, %9082 ]
  %9378 = phi float [ %222, %9316 ], [ %108, %9082 ]
  %9379 = phi float [ %9337, %9316 ], [ %9107, %9082 ]
  %9380 = phi float [ %9338, %9316 ], [ %9108, %9082 ]
  %9381 = phi float [ %9339, %9316 ], [ %9109, %9082 ]
  %9382 = phi float [ %9340, %9316 ], [ %9083, %9082 ]
  %9383 = phi float [ %9341, %9316 ], [ %9084, %9082 ]
  %9384 = phi float [ %9342, %9316 ], [ %9085, %9082 ]
  %9385 = phi float [ %9317, %9316 ], [ 1.000000e+00, %9082 ]
  br i1 %9116, label %10540, label %9386

; <label>:9386                                    ; preds = %9374
  %9387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9388 = extractvalue %dx.types.CBufRet.f32 %9387, 0
  %9389 = extractvalue %dx.types.CBufRet.f32 %9387, 1
  %9390 = extractvalue %dx.types.CBufRet.f32 %9387, 2
  %9391 = extractvalue %dx.types.CBufRet.f32 %9387, 3
  %9392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9393 = extractvalue %dx.types.CBufRet.f32 %9392, 0
  %9394 = extractvalue %dx.types.CBufRet.f32 %9392, 1
  %9395 = extractvalue %dx.types.CBufRet.f32 %9392, 2
  %9396 = extractvalue %dx.types.CBufRet.f32 %9392, 3
  %9397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9398 = extractvalue %dx.types.CBufRet.f32 %9397, 0
  %9399 = extractvalue %dx.types.CBufRet.f32 %9397, 1
  %9400 = extractvalue %dx.types.CBufRet.f32 %9397, 2
  %9401 = extractvalue %dx.types.CBufRet.f32 %9397, 3
  %9402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9403 = extractvalue %dx.types.CBufRet.f32 %9402, 0
  %9404 = extractvalue %dx.types.CBufRet.f32 %9402, 1
  %9405 = extractvalue %dx.types.CBufRet.f32 %9402, 2
  %9406 = extractvalue %dx.types.CBufRet.f32 %9402, 3
  %9407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9408 = extractvalue %dx.types.CBufRet.f32 %9407, 3
  %9409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9410 = extractvalue %dx.types.CBufRet.f32 %9409, 3
  %9411 = extractvalue %dx.types.CBufRet.f32 %9409, 0
  %9412 = extractvalue %dx.types.CBufRet.f32 %9409, 1
  %9413 = extractvalue %dx.types.CBufRet.f32 %9409, 2
  %9414 = fcmp fast olt float %9413, -5.000000e-01
  %9415 = call float @dx.op.dot3.f32(i32 55, float %9375, float %9376, float %9377, float %9375, float %9376, float %9377)  ; Dot3(ax,ay,az,bx,by,bz)
  %9416 = call float @dx.op.unary.f32(i32 25, float %9415)  ; Rsqrt(value)
  %9417 = fmul fast float %9416, %9415
  %9418 = fmul fast float %9416, %9375
  %9419 = fmul fast float %9416, %9376
  %9420 = fmul fast float %9416, %9377
  %9421 = fadd fast float %9417, %9391
  %9422 = call float @dx.op.dot3.f32(i32 55, float %9418, float %9419, float %9420, float %9388, float %9389, float %9390)  ; Dot3(ax,ay,az,bx,by,bz)
  %9423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9424 = extractvalue %dx.types.CBufRet.i32 %9423, 1
  %9425 = and i32 %9424, 1
  %9426 = icmp ne i32 %9425, 0
  %9427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9428 = extractvalue %dx.types.CBufRet.f32 %9427, 2
  %9429 = fcmp fast ogt float %9428, 0.000000e+00
  %9430 = and i1 %9426, %9429
  br i1 %9430, label %9431, label %9837, !dx.controlflow.hints !142

; <label>:9431                                    ; preds = %9386
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 3
  %9434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9435 = extractvalue %dx.types.CBufRet.f32 %9434, 2
  %9436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9436, 2
  %9438 = fsub fast float %9435, %9437
  %9439 = and i32 %9424, 2
  %9440 = extractvalue %dx.types.CBufRet.i32 %9423, 0
  %9441 = call i32 @dx.op.binary.i32(i32 40, i32 %9440, i32 3)  ; UMin(a,b)
  %9442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9443 = extractvalue %dx.types.CBufRet.f32 %9442, 0
  %9444 = extractvalue %dx.types.CBufRet.f32 %9442, 1
  %9445 = extractvalue %dx.types.CBufRet.f32 %9436, 0
  %9446 = extractvalue %dx.types.CBufRet.f32 %9436, 1
  %9447 = fsub fast float %9443, %9445
  %9448 = fsub fast float %9444, %9446
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 0
  %9451 = fcmp fast ogt float %9450, 0.000000e+00
  %9452 = fsub fast float -0.000000e+00, %9447
  %9453 = fsub fast float -0.000000e+00, %9448
  %9454 = call float @dx.op.dot2.f32(i32 54, float %9418, float %9419, float %9418, float %9419)  ; Dot2(ax,ay,bx,by)
  %9455 = call float @dx.op.dot2.f32(i32 54, float %9418, float %9419, float %9452, float %9453)  ; Dot2(ax,ay,bx,by)
  %9456 = fmul fast float %9455, 2.000000e+00
  %9457 = call float @dx.op.dot2.f32(i32 54, float %9452, float %9453, float %9452, float %9453)  ; Dot2(ax,ay,bx,by)
  %9458 = fmul fast float %9450, %9450
  %9459 = fsub fast float %9457, %9458
  %9460 = fmul fast float %9456, %9456
  %9461 = fmul fast float %9454, 4.000000e+00
  %9462 = fmul fast float %9461, %9459
  %9463 = fsub fast float %9460, %9462
  %9464 = fcmp fast ogt float %9463, 0.000000e+00
  br i1 %9464, label %9465, label %9480

; <label>:9465                                    ; preds = %9431
  %9466 = fcmp fast ogt float %9456, 0.000000e+00
  %9467 = call float @dx.op.unary.f32(i32 24, float %9463)  ; Sqrt(value)
  %9468 = fsub fast float -0.000000e+00, %9467
  %9469 = select i1 %9466, float %9467, float %9468
  %9470 = fadd fast float %9469, %9456
  %9471 = fmul float %9470, -5.000000e-01
  %9472 = fdiv fast float %9471, %9454
  %9473 = call float @dx.op.binary.f32(i32 35, float %9472, float 0.000000e+00)  ; FMax(a,b)
  %9474 = call float @dx.op.binary.f32(i32 36, float %9417, float %9473)  ; FMin(a,b)
  %9475 = fdiv fast float %9459, %9471
  %9476 = call float @dx.op.binary.f32(i32 35, float %9475, float 0.000000e+00)  ; FMax(a,b)
  %9477 = call float @dx.op.binary.f32(i32 36, float %9417, float %9476)  ; FMin(a,b)
  %9478 = call float @dx.op.binary.f32(i32 36, float %9474, float %9477)  ; FMin(a,b)
  %9479 = call float @dx.op.binary.f32(i32 35, float %9474, float %9477)  ; FMax(a,b)
  br label %9480

; <label>:9480                                    ; preds = %9465, %9431
  %9481 = phi float [ %9479, %9465 ], [ -1.000000e+00, %9431 ]
  %9482 = phi float [ %9478, %9465 ], [ -1.000000e+00, %9431 ]
  %9483 = phi i1 [ true, %9465 ], [ false, %9431 ]
  %9484 = and i1 %9451, %9483
  br i1 %9484, label %9485, label %9487

; <label>:9485                                    ; preds = %9480
  %9486 = fcmp fast oeq float %9482, %9481
  br i1 %9486, label %9790, label %9488

; <label>:9487                                    ; preds = %9480
  br i1 %9451, label %9790, label %9488

; <label>:9488                                    ; preds = %9487, %9485
  %9489 = phi float [ %9417, %9487 ], [ %9481, %9485 ]
  %9490 = phi float [ 0.000000e+00, %9487 ], [ %9482, %9485 ]
  %9491 = icmp ne i32 %9439, 0
  %9492 = fmul fast float %9489, %9420
  %9493 = fadd fast float %9492, %9433
  %9494 = fmul fast float %9493, %9489
  %9495 = select i1 %9491, float 0.000000e+00, float %9494
  %9496 = fcmp fast oeq float %9420, 0.000000e+00
  %9497 = fdiv fast float %9438, %9420
  %9498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9497)  ; FMax(a,b)
  %9499 = select i1 %9496, float %9489, float %9498
  %9500 = call float @dx.op.binary.f32(i32 36, float %9489, float %9499)  ; FMin(a,b)
  %9501 = fcmp fast ogt float %9420, 0.000000e+00
  %9502 = fcmp fast olt float %9438, 0.000000e+00
  br i1 %9501, label %9503, label %9560

; <label>:9503                                    ; preds = %9488
  %9504 = icmp eq i32 %9439, 0
  br i1 %9502, label %9505, label %9549

; <label>:9505                                    ; preds = %9503
  %9506 = select i1 %9504, float %9489, float 0.000000e+00
  %9507 = fsub fast float -0.000000e+00, %9506
  %9508 = call float @dx.op.unary.f32(i32 6, float %9507)  ; FAbs(value)
  %9509 = fmul fast float %9506, %9420
  %9510 = fadd fast float %9509, %9433
  %9511 = fmul fast float %9508, %9510
  %9512 = fsub fast float %9495, %9511
  %9513 = fsub fast float %9489, %9508
  %9514 = select i1 %9504, float %9513, float 0.000000e+00
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9518 = extractvalue %dx.types.CBufRet.f32 %9515, 2
  %9519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9520 = extractvalue %dx.types.CBufRet.f32 %9519, 0
  %9521 = extractvalue %dx.types.CBufRet.f32 %9519, 1
  %9522 = extractvalue %dx.types.CBufRet.f32 %9519, 2
  %9523 = extractvalue %dx.types.CBufRet.f32 %9519, 3
  %9524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9525 = extractvalue %dx.types.CBufRet.f32 %9524, 3
  %9526 = call float @dx.op.binary.f32(i32 36, float %9512, float %9525)  ; FMin(a,b)
  %9527 = fmul fast float %9523, %9514
  %9528 = call float @dx.op.unary.f32(i32 7, float %9527)  ; Saturate(value)
  %9529 = fsub fast float %9520, %9516
  %9530 = fsub fast float %9521, %9517
  %9531 = fsub fast float %9522, %9518
  %9532 = fmul fast float %9528, %9529
  %9533 = fmul fast float %9528, %9530
  %9534 = fmul fast float %9528, %9531
  %9535 = fadd fast float %9532, %9516
  %9536 = fadd fast float %9533, %9517
  %9537 = fadd fast float %9534, %9518
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 0
  %9540 = extractvalue %dx.types.CBufRet.f32 %9538, 1
  %9541 = fadd fast float %9540, %9539
  %9542 = call float @dx.op.unary.f32(i32 7, float %9541)  ; Saturate(value)
  %9543 = extractvalue %dx.types.CBufRet.f32 %9538, 2
  %9544 = extractvalue %dx.types.CBufRet.f32 %9538, 3
  %9545 = fadd fast float %9544, %9543
  %9546 = call float @dx.op.unary.f32(i32 7, float %9545)  ; Saturate(value)
  %9547 = fmul fast float %9542, %9526
  %9548 = fmul fast float %9547, %9546
  br label %9790

; <label>:9549                                    ; preds = %9503
  br i1 %9504, label %9550, label %9571

; <label>:9550                                    ; preds = %9549
  %9551 = call float @dx.op.binary.f32(i32 36, float %9500, float %9490)  ; FMin(a,b)
  %9552 = fsub fast float %9500, %9551
  %9553 = fsub fast float %9552, %9489
  %9554 = call float @dx.op.unary.f32(i32 6, float %9553)  ; FAbs(value)
  %9555 = fadd fast float %9552, %9489
  %9556 = fmul fast float %9555, %9420
  %9557 = fadd fast float %9556, %9433
  %9558 = fmul fast float %9557, %9554
  %9559 = fsub fast float %9495, %9558
  br label %9571

; <label>:9560                                    ; preds = %9488
  br i1 %9502, label %9561, label %9571

; <label>:9561                                    ; preds = %9560
  %9562 = call float @dx.op.binary.f32(i32 35, float %9490, float %9500)  ; FMax(a,b)
  %9563 = icmp eq i32 %9439, 0
  %9564 = select i1 %9563, float %9500, float 0.000000e+00
  %9565 = fsub fast float -0.000000e+00, %9564
  %9566 = call float @dx.op.unary.f32(i32 6, float %9565)  ; FAbs(value)
  %9567 = fmul fast float %9564, %9420
  %9568 = fadd fast float %9567, %9433
  %9569 = fmul fast float %9566, %9568
  %9570 = fsub fast float %9495, %9569
  br label %9571

; <label>:9571                                    ; preds = %9561, %9560, %9550, %9549
  %9572 = phi float [ %9490, %9549 ], [ %9490, %9550 ], [ %9562, %9561 ], [ %9490, %9560 ]
  %9573 = phi float [ 0.000000e+00, %9549 ], [ %9554, %9550 ], [ %9566, %9561 ], [ 0.000000e+00, %9560 ]
  %9574 = phi float [ %9495, %9549 ], [ %9559, %9550 ], [ %9570, %9561 ], [ %9495, %9560 ]
  %9575 = phi float [ %9500, %9549 ], [ %9500, %9550 ], [ %9489, %9561 ], [ %9489, %9560 ]
  %9576 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %9576, align 4, !tbaa !128, !noalias !143
  %9577 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %9577, align 4, !tbaa !128, !noalias !143
  %9578 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %9578, align 4, !tbaa !128, !noalias !143
  %9579 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 0
  store float -1.000000e+00, float* %9579, align 4, !tbaa !128, !noalias !143
  %9580 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 1
  store float -1.000000e+00, float* %9580, align 4, !tbaa !128, !noalias !143
  %9581 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 2
  store float -1.000000e+00, float* %9581, align 4, !tbaa !128, !noalias !143
  %9582 = icmp sgt i32 %9441, 0
  br i1 %9582, label %9583, label %9644

; <label>:9583                                    ; preds = %9571
  br label %9584

; <label>:9584                                    ; preds = %9633, %9583
  %9585 = phi i32 [ %9634, %9633 ], [ 0, %9583 ]
  %9586 = phi i32 [ %9635, %9633 ], [ 0, %9583 ]
  %9587 = add nuw i32 %9586, 171
  %9588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %9587)  ; CBufferLoadLegacy(handle,regIndex)
  %9589 = extractvalue %dx.types.CBufRet.f32 %9588, 0
  %9590 = extractvalue %dx.types.CBufRet.f32 %9588, 1
  %9591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9592 = extractvalue %dx.types.CBufRet.f32 %9591, 0
  %9593 = extractvalue %dx.types.CBufRet.f32 %9591, 1
  %9594 = fsub fast float %9589, %9592
  %9595 = fsub fast float %9590, %9593
  %9596 = extractvalue %dx.types.CBufRet.f32 %9588, 2
  %9597 = fsub fast float -0.000000e+00, %9594
  %9598 = fsub fast float -0.000000e+00, %9595
  %9599 = call float @dx.op.dot2.f32(i32 54, float %9418, float %9419, float %9597, float %9598)  ; Dot2(ax,ay,bx,by)
  %9600 = fmul fast float %9599, 2.000000e+00
  %9601 = call float @dx.op.dot2.f32(i32 54, float %9597, float %9598, float %9597, float %9598)  ; Dot2(ax,ay,bx,by)
  %9602 = fmul fast float %9596, %9596
  %9603 = fsub fast float %9601, %9602
  %9604 = fmul fast float %9600, %9600
  %9605 = fmul fast float %9461, %9603
  %9606 = fsub fast float %9604, %9605
  %9607 = fcmp fast ogt float %9606, 0.000000e+00
  br i1 %9607, label %9608, label %9623

; <label>:9608                                    ; preds = %9584
  %9609 = fcmp fast ogt float %9600, 0.000000e+00
  %9610 = call float @dx.op.unary.f32(i32 24, float %9606)  ; Sqrt(value)
  %9611 = fsub fast float -0.000000e+00, %9610
  %9612 = select i1 %9609, float %9610, float %9611
  %9613 = fadd fast float %9612, %9600
  %9614 = fmul float %9613, -5.000000e-01
  %9615 = fdiv fast float %9614, %9454
  %9616 = call float @dx.op.binary.f32(i32 35, float %9615, float 0.000000e+00)  ; FMax(a,b)
  %9617 = call float @dx.op.binary.f32(i32 36, float %9489, float %9616)  ; FMin(a,b)
  %9618 = fdiv fast float %9603, %9614
  %9619 = call float @dx.op.binary.f32(i32 35, float %9618, float 0.000000e+00)  ; FMax(a,b)
  %9620 = call float @dx.op.binary.f32(i32 36, float %9489, float %9619)  ; FMin(a,b)
  %9621 = call float @dx.op.binary.f32(i32 36, float %9617, float %9620)  ; FMin(a,b)
  %9622 = call float @dx.op.binary.f32(i32 35, float %9617, float %9620)  ; FMax(a,b)
  br label %9623

; <label>:9623                                    ; preds = %9608, %9584
  %9624 = phi float [ %9622, %9608 ], [ -1.000000e+00, %9584 ]
  %9625 = phi float [ %9621, %9608 ], [ -1.000000e+00, %9584 ]
  %9626 = phi i1 [ true, %9608 ], [ false, %9584 ]
  br i1 %9626, label %9627, label %9633

; <label>:9627                                    ; preds = %9623
  %9628 = call float @dx.op.binary.f32(i32 35, float %9572, float %9625)  ; FMax(a,b)
  %9629 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9586
  store float %9628, float* %9629, align 4, !tbaa !128, !noalias !143
  %9630 = call float @dx.op.binary.f32(i32 35, float %9572, float %9624)  ; FMax(a,b)
  %9631 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %9586
  store float %9630, float* %9631, align 4, !tbaa !128, !noalias !143
  %9632 = add nsw i32 %9585, 1
  br label %9633

; <label>:9633                                    ; preds = %9627, %9623
  %9634 = phi i32 [ %9632, %9627 ], [ %9585, %9623 ]
  %9635 = add nuw nsw i32 %9586, 1
  %9636 = icmp eq i32 %9635, %9441
  br i1 %9636, label %9637, label %9584

; <label>:9637                                    ; preds = %9633
  %9638 = load float, float* %9578, align 4, !tbaa !128, !alias.scope !159, !noalias !162
  %9639 = load float, float* %9577, align 4, !tbaa !128, !alias.scope !165, !noalias !166
  %9640 = load float, float* %9576, align 4, !tbaa !128, !alias.scope !167, !noalias !168
  %9641 = load float, float* %9581, align 4, !tbaa !128, !alias.scope !169, !noalias !172
  %9642 = load float, float* %9580, align 4, !tbaa !128, !alias.scope !175, !noalias !176
  %9643 = load float, float* %9579, align 4, !tbaa !128, !alias.scope !177, !noalias !178
  br label %9644

; <label>:9644                                    ; preds = %9637, %9571
  %9645 = phi float [ -1.000000e+00, %9571 ], [ %9643, %9637 ]
  %9646 = phi float [ -1.000000e+00, %9571 ], [ %9642, %9637 ]
  %9647 = phi float [ -1.000000e+00, %9571 ], [ %9641, %9637 ]
  %9648 = phi float [ -1.000000e+00, %9571 ], [ %9640, %9637 ]
  %9649 = phi float [ -1.000000e+00, %9571 ], [ %9639, %9637 ]
  %9650 = phi float [ -1.000000e+00, %9571 ], [ %9638, %9637 ]
  %9651 = phi i32 [ 0, %9571 ], [ %9634, %9637 ]
  %9652 = call float @dx.op.binary.f32(i32 36, float %9649, float %9650)  ; FMin(a,b)
  %9653 = call float @dx.op.binary.f32(i32 36, float %9648, float %9652)  ; FMin(a,b)
  %9654 = call float @dx.op.binary.f32(i32 35, float %9648, float %9649)  ; FMax(a,b)
  %9655 = call float @dx.op.binary.f32(i32 36, float %9654, float %9650)  ; FMin(a,b)
  %9656 = call float @dx.op.binary.f32(i32 36, float %9648, float %9649)  ; FMin(a,b)
  %9657 = call float @dx.op.binary.f32(i32 35, float %9656, float %9655)  ; FMax(a,b)
  %9658 = call float @dx.op.binary.f32(i32 35, float %9649, float %9650)  ; FMax(a,b)
  %9659 = call float @dx.op.binary.f32(i32 35, float %9648, float %9658)  ; FMax(a,b)
  store float %9653, float* %9576, align 4, !tbaa !128, !alias.scope !167, !noalias !168
  store float %9657, float* %9577, align 4, !tbaa !128, !alias.scope !165, !noalias !166
  store float %9659, float* %9578, align 4, !tbaa !128, !alias.scope !159, !noalias !162
  %9660 = call float @dx.op.binary.f32(i32 36, float %9646, float %9647)  ; FMin(a,b)
  %9661 = call float @dx.op.binary.f32(i32 36, float %9645, float %9660)  ; FMin(a,b)
  %9662 = call float @dx.op.binary.f32(i32 35, float %9645, float %9646)  ; FMax(a,b)
  %9663 = call float @dx.op.binary.f32(i32 36, float %9662, float %9647)  ; FMin(a,b)
  %9664 = call float @dx.op.binary.f32(i32 36, float %9645, float %9646)  ; FMin(a,b)
  %9665 = call float @dx.op.binary.f32(i32 35, float %9664, float %9663)  ; FMax(a,b)
  %9666 = call float @dx.op.binary.f32(i32 35, float %9646, float %9647)  ; FMax(a,b)
  %9667 = call float @dx.op.binary.f32(i32 35, float %9645, float %9666)  ; FMax(a,b)
  store float %9661, float* %9579, align 4, !tbaa !128, !alias.scope !177, !noalias !178
  store float %9665, float* %9580, align 4, !tbaa !128, !alias.scope !175, !noalias !176
  store float %9667, float* %9581, align 4, !tbaa !128, !alias.scope !169, !noalias !172
  %9668 = sub nsw i32 3, %9651
  %9669 = icmp sgt i32 %9668, 2
  br i1 %9669, label %9670, label %9708

; <label>:9670                                    ; preds = %9644
  %9671 = icmp eq i32 %9439, 0
  %9672 = fsub fast float %9489, %9573
  %9673 = select i1 %9671, float %9672, float %9573
  %9674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9675 = extractvalue %dx.types.CBufRet.f32 %9674, 0
  %9676 = extractvalue %dx.types.CBufRet.f32 %9674, 1
  %9677 = extractvalue %dx.types.CBufRet.f32 %9674, 2
  %9678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9679 = extractvalue %dx.types.CBufRet.f32 %9678, 0
  %9680 = extractvalue %dx.types.CBufRet.f32 %9678, 1
  %9681 = extractvalue %dx.types.CBufRet.f32 %9678, 2
  %9682 = extractvalue %dx.types.CBufRet.f32 %9678, 3
  %9683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9684 = extractvalue %dx.types.CBufRet.f32 %9683, 3
  %9685 = call float @dx.op.binary.f32(i32 36, float %9574, float %9684)  ; FMin(a,b)
  %9686 = fmul fast float %9682, %9673
  %9687 = call float @dx.op.unary.f32(i32 7, float %9686)  ; Saturate(value)
  %9688 = fsub fast float %9679, %9675
  %9689 = fsub fast float %9680, %9676
  %9690 = fsub fast float %9681, %9677
  %9691 = fmul fast float %9687, %9688
  %9692 = fmul fast float %9687, %9689
  %9693 = fmul fast float %9687, %9690
  %9694 = fadd fast float %9691, %9675
  %9695 = fadd fast float %9692, %9676
  %9696 = fadd fast float %9693, %9677
  %9697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9698 = extractvalue %dx.types.CBufRet.f32 %9697, 0
  %9699 = extractvalue %dx.types.CBufRet.f32 %9697, 1
  %9700 = fadd fast float %9699, %9698
  %9701 = call float @dx.op.unary.f32(i32 7, float %9700)  ; Saturate(value)
  %9702 = extractvalue %dx.types.CBufRet.f32 %9697, 2
  %9703 = extractvalue %dx.types.CBufRet.f32 %9697, 3
  %9704 = fadd fast float %9703, %9702
  %9705 = call float @dx.op.unary.f32(i32 7, float %9704)  ; Saturate(value)
  %9706 = fmul fast float %9701, %9685
  %9707 = fmul fast float %9706, %9705
  br label %9790

; <label>:9708                                    ; preds = %9644
  %9709 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9668
  %9710 = load float, float* %9709, align 4, !tbaa !128, !noalias !143
  %9711 = fcmp fast olt float %9710, %9575
  %9712 = icmp sgt i32 %9651, 0
  %9713 = and i1 %9712, %9711
  br i1 %9713, label %9714, label %9751

; <label>:9714                                    ; preds = %9708
  br label %9715

; <label>:9715                                    ; preds = %9744, %9714
  %9716 = phi float [ %9745, %9744 ], [ %9573, %9714 ]
  %9717 = phi float [ %9746, %9744 ], [ %9574, %9714 ]
  %9718 = phi float [ %9726, %9744 ], [ %9710, %9714 ]
  %9719 = phi i32 [ %9723, %9744 ], [ %9668, %9714 ]
  %9720 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %9719
  %9721 = load float, float* %9720, align 4, !tbaa !128, !noalias !143
  %9722 = icmp slt i32 %9719, 2
  %9723 = add nsw i32 %9719, 1
  %9724 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9723
  %9725 = load float, float* %9724, align 4, !tbaa !128, !noalias !143
  %9726 = select i1 %9722, float %9725, float %9489
  %9727 = call float @dx.op.binary.f32(i32 36, float %9726, float %9721)  ; FMin(a,b)
  %9728 = call float @dx.op.binary.f32(i32 36, float %9575, float %9727)  ; FMin(a,b)
  %9729 = icmp eq i32 %9439, 0
  %9730 = fadd fast float %9728, %9718
  %9731 = fmul fast float %9730, %9420
  %9732 = fadd fast float %9731, %9433
  br i1 %9729, label %9738, label %9733

; <label>:9733                                    ; preds = %9715
  %9734 = fsub fast float %9728, %9718
  %9735 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9734)  ; FMax(a,b)
  %9736 = fmul fast float %9735, %9732
  %9737 = fadd fast float %9736, %9717
  br label %9744

; <label>:9738                                    ; preds = %9715
  %9739 = fsub fast float %9718, %9728
  %9740 = call float @dx.op.unary.f32(i32 6, float %9739)  ; FAbs(value)
  %9741 = fadd fast float %9740, %9716
  %9742 = fmul fast float %9740, %9732
  %9743 = fsub fast float %9717, %9742
  br label %9744

; <label>:9744                                    ; preds = %9738, %9733
  %9745 = phi float [ %9735, %9733 ], [ %9741, %9738 ]
  %9746 = phi float [ %9737, %9733 ], [ %9743, %9738 ]
  %9747 = fcmp fast olt float %9726, %9575
  %9748 = icmp slt i32 %9723, 3
  %9749 = and i1 %9748, %9747
  br i1 %9749, label %9715, label %9750

; <label>:9750                                    ; preds = %9744
  br label %9751

; <label>:9751                                    ; preds = %9750, %9708
  %9752 = phi float [ %9573, %9708 ], [ %9745, %9750 ]
  %9753 = phi float [ %9574, %9708 ], [ %9746, %9750 ]
  %9754 = fsub fast float %9489, %9752
  %9755 = select i1 %9491, float %9752, float %9754
  %9756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9757 = extractvalue %dx.types.CBufRet.f32 %9756, 0
  %9758 = extractvalue %dx.types.CBufRet.f32 %9756, 1
  %9759 = extractvalue %dx.types.CBufRet.f32 %9756, 2
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.CBufRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.CBufRet.f32 %9760, 2
  %9764 = extractvalue %dx.types.CBufRet.f32 %9760, 3
  %9765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9766 = extractvalue %dx.types.CBufRet.f32 %9765, 3
  %9767 = call float @dx.op.binary.f32(i32 36, float %9753, float %9766)  ; FMin(a,b)
  %9768 = fmul fast float %9764, %9755
  %9769 = call float @dx.op.unary.f32(i32 7, float %9768)  ; Saturate(value)
  %9770 = fsub fast float %9761, %9757
  %9771 = fsub fast float %9762, %9758
  %9772 = fsub fast float %9763, %9759
  %9773 = fmul fast float %9769, %9770
  %9774 = fmul fast float %9769, %9771
  %9775 = fmul fast float %9769, %9772
  %9776 = fadd fast float %9773, %9757
  %9777 = fadd fast float %9774, %9758
  %9778 = fadd fast float %9775, %9759
  %9779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9780 = extractvalue %dx.types.CBufRet.f32 %9779, 0
  %9781 = extractvalue %dx.types.CBufRet.f32 %9779, 1
  %9782 = fadd fast float %9781, %9780
  %9783 = call float @dx.op.unary.f32(i32 7, float %9782)  ; Saturate(value)
  %9784 = extractvalue %dx.types.CBufRet.f32 %9779, 2
  %9785 = extractvalue %dx.types.CBufRet.f32 %9779, 3
  %9786 = fadd fast float %9785, %9784
  %9787 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9788 = fmul fast float %9783, %9767
  %9789 = fmul fast float %9788, %9787
  br label %9790

; <label>:9790                                    ; preds = %9751, %9670, %9505, %9487, %9485
  %9791 = phi float [ %9514, %9505 ], [ %9673, %9670 ], [ %9755, %9751 ], [ 0.000000e+00, %9485 ], [ 0.000000e+00, %9487 ]
  %9792 = phi float [ %9548, %9505 ], [ %9707, %9670 ], [ %9789, %9751 ], [ 0.000000e+00, %9485 ], [ 0.000000e+00, %9487 ]
  %9793 = phi float [ %9535, %9505 ], [ %9694, %9670 ], [ %9776, %9751 ], [ 0.000000e+00, %9485 ], [ 0.000000e+00, %9487 ]
  %9794 = phi float [ %9536, %9505 ], [ %9695, %9670 ], [ %9777, %9751 ], [ 0.000000e+00, %9485 ], [ 0.000000e+00, %9487 ]
  %9795 = phi float [ %9537, %9505 ], [ %9696, %9670 ], [ %9778, %9751 ], [ 0.000000e+00, %9485 ], [ 0.000000e+00, %9487 ]
  %9796 = fmul fast float %9428, %9792
  %9797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9798 = extractvalue %dx.types.CBufRet.f32 %9797, 2
  %9799 = fsub fast float %9435, %9798
  %9800 = fcmp fast olt float %9796, -2.000000e+01
  %9801 = call float @dx.op.unary.f32(i32 21, float %9796)  ; Exp(value)
  %9802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9803 = extractvalue %dx.types.CBufRet.f32 %9802, 2
  %9804 = extractvalue %dx.types.CBufRet.f32 %9802, 3
  %9805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9806 = extractvalue %dx.types.CBufRet.f32 %9805, 2
  %9807 = fmul fast float %9804, %9799
  %9808 = call float @dx.op.unary.f32(i32 7, float %9807)  ; Saturate(value)
  %9809 = fsub fast float 1.000000e+00, %9808
  %9810 = fmul fast float %9420, 5.000000e-01
  %9811 = fadd fast float %9810, 5.000000e-01
  %9812 = call float @dx.op.unary.f32(i32 7, float %9811)  ; Saturate(value)
  %9813 = fsub fast float 1.000000e+00, %9812
  %9814 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9809)  ; FMax(a,b)
  %9815 = fdiv fast float %9813, %9814
  %9816 = fsub fast float %9799, %9377
  %9817 = call float @dx.op.unary.f32(i32 6, float %9816)  ; FAbs(value)
  %9818 = fmul fast float %9817, %9803
  %9819 = call float @dx.op.unary.f32(i32 7, float %9815)  ; Saturate(value)
  %9820 = fsub fast float 1.000000e+00, %9818
  %9821 = fmul fast float %9820, %9819
  %9822 = fadd fast float %9821, %9818
  %9823 = fmul fast float %9806, %9799
  %9824 = call float @dx.op.unary.f32(i32 7, float %9823)  ; Saturate(value)
  %9825 = fsub fast float 1.000000e+00, %9822
  %9826 = fmul fast float %9825, %9824
  %9827 = fadd fast float %9826, %9822
  %9828 = call float @dx.op.unary.f32(i32 7, float %9827)  ; Saturate(value)
  %9829 = fadd fast float %9801, -1.000000e+00
  %9830 = select i1 %9800, float -1.000000e+00, float %9829
  %9831 = fmul fast float %9828, %9830
  %9832 = fadd fast float %9831, 1.000000e+00
  %9833 = fsub fast float -0.000000e+00, %9831
  %9834 = fmul fast float %9793, %9833
  %9835 = fmul fast float %9794, %9833
  %9836 = fmul fast float %9795, %9833
  br label %9837

; <label>:9837                                    ; preds = %9790, %9386
  %9838 = phi float [ %9791, %9790 ], [ 0.000000e+00, %9386 ]
  %9839 = phi float [ %9832, %9790 ], [ 1.000000e+00, %9386 ]
  %9840 = phi float [ %9834, %9790 ], [ 0.000000e+00, %9386 ]
  %9841 = phi float [ %9835, %9790 ], [ 0.000000e+00, %9386 ]
  %9842 = phi float [ %9836, %9790 ], [ 0.000000e+00, %9386 ]
  %9843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9844 = extractvalue %dx.types.CBufRet.f32 %9843, 1
  %9845 = fsub fast float 1.000000e+00, %9839
  %9846 = fmul fast float %9845, %9421
  %9847 = fmul fast float %9846, %9844
  %9848 = fsub fast float %9421, %9847
  br i1 %9414, label %9849, label %9878, !dx.controlflow.hints !179

; <label>:9849                                    ; preds = %9837
  %9850 = fmul fast float %9422, %9411
  %9851 = fadd fast float %9850, %9412
  %9852 = call float @dx.op.unary.f32(i32 7, float %9851)  ; Saturate(value)
  %9853 = fmul fast float %9393, %9848
  %9854 = fsub fast float -0.000000e+00, %9853
  %9855 = fmul fast float %9394, %9848
  %9856 = fsub fast float -0.000000e+00, %9855
  %9857 = call float @dx.op.unary.f32(i32 21, float %9854)  ; Exp(value)
  %9858 = call float @dx.op.unary.f32(i32 21, float %9856)  ; Exp(value)
  %9859 = call float @dx.op.binary.f32(i32 35, float %9401, float %9857)  ; FMax(a,b)
  %9860 = call float @dx.op.binary.f32(i32 35, float %9401, float %9858)  ; FMax(a,b)
  %9861 = fsub fast float %9860, %9859
  %9862 = fmul fast float %9861, %9852
  %9863 = fadd fast float %9862, %9859
  %9864 = call float @dx.op.unary.f32(i32 7, float %9863)  ; Saturate(value)
  %9865 = fsub fast float %9398, %9403
  %9866 = fsub fast float %9399, %9404
  %9867 = fsub fast float %9400, %9405
  %9868 = fmul fast float %9852, %9865
  %9869 = fmul fast float %9852, %9866
  %9870 = fmul fast float %9852, %9867
  %9871 = fadd fast float %9868, %9403
  %9872 = fadd fast float %9869, %9404
  %9873 = fadd fast float %9870, %9405
  %9874 = fsub fast float 1.000000e+00, %9864
  %9875 = fmul fast float %9874, %9871
  %9876 = fmul fast float %9874, %9872
  %9877 = fmul fast float %9874, %9873
  br label %9937

; <label>:9878                                    ; preds = %9837
  %9879 = fmul fast float %9848, %9410
  %9880 = call float @dx.op.unary.f32(i32 7, float %9879)  ; Saturate(value)
  %9881 = fsub fast float 2.000000e+00, %9880
  %9882 = fmul fast float %9880, 9.921875e-01
  %9883 = fmul fast float %9882, %9881
  %9884 = fadd fast float %9883, 3.906250e-03
  %9885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9884, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9886 = extractvalue %dx.types.ResRet.f32 %9885, 0
  %9887 = fsub fast float %9880, %9886
  %9888 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9887)  ; FMax(a,b)
  %9889 = fmul fast float %9396, %9377
  %9890 = call float @dx.op.unary.f32(i32 6, float %9889)  ; FAbs(value)
  %9891 = fcmp fast ogt float %9890, 0x3EB0C6F7A0000000
  br i1 %9891, label %9892, label %9898, !dx.controlflow.hints !180

; <label>:9892                                    ; preds = %9878
  %9893 = fmul fast float %9889, 0xBFF7154760000000
  %9894 = call float @dx.op.unary.f32(i32 21, float %9893)  ; Exp(value)
  %9895 = fsub fast float 1.000000e+00, %9894
  %9896 = fdiv fast float %9895, %9889
  %9897 = fmul fast float %9896, %9406
  br label %9898

; <label>:9898                                    ; preds = %9892, %9878
  %9899 = phi float [ %9897, %9892 ], [ %9406, %9878 ]
  %9900 = fadd fast float %9899, %9408
  %9901 = fmul fast float %9900, %9888
  %9902 = fmul fast float %9393, %9901
  %9903 = fsub fast float -0.000000e+00, %9902
  %9904 = fmul fast float %9394, %9901
  %9905 = fsub fast float -0.000000e+00, %9904
  %9906 = fmul fast float %9395, %9901
  %9907 = fsub fast float -0.000000e+00, %9906
  %9908 = call float @dx.op.unary.f32(i32 21, float %9903)  ; Exp(value)
  %9909 = call float @dx.op.unary.f32(i32 21, float %9905)  ; Exp(value)
  %9910 = call float @dx.op.unary.f32(i32 21, float %9907)  ; Exp(value)
  %9911 = fmul fast float %9422, %9422
  %9912 = fadd fast float %9911, 1.000000e+00
  %9913 = fmul fast float %9912, 0x3FAE8EC8A0000000
  %9914 = fmul fast float %9913, %9403
  %9915 = fmul fast float %9913, %9404
  %9916 = fmul fast float %9913, %9405
  %9917 = fmul fast float %9422, %9401
  %9918 = fsub fast float 1.000000e+00, %9917
  %9919 = fmul fast float %9401, %9401
  %9920 = fsub fast float 1.000000e+00, %9919
  %9921 = fmul fast float %9920, 0x3FB45F3060000000
  %9922 = fmul fast float %9918, %9918
  %9923 = fdiv fast float 1.000000e+00, %9922
  %9924 = fmul fast float %9921, %9923
  %9925 = fmul fast float %9924, %9398
  %9926 = fmul fast float %9924, %9399
  %9927 = fmul fast float %9924, %9400
  %9928 = fadd fast float %9925, %9914
  %9929 = fadd fast float %9926, %9915
  %9930 = fadd fast float %9927, %9916
  %9931 = fsub fast float 1.000000e+00, %9908
  %9932 = fsub fast float 1.000000e+00, %9909
  %9933 = fsub fast float 1.000000e+00, %9910
  %9934 = fmul fast float %9928, %9931
  %9935 = fmul fast float %9929, %9932
  %9936 = fmul fast float %9930, %9933
  br label %9937

; <label>:9937                                    ; preds = %9898, %9849
  %9938 = phi float [ %9875, %9849 ], [ %9934, %9898 ]
  %9939 = phi float [ %9876, %9849 ], [ %9935, %9898 ]
  %9940 = phi float [ %9877, %9849 ], [ %9936, %9898 ]
  %9941 = phi float [ %9864, %9849 ], [ %9908, %9898 ]
  %9942 = phi float [ %9864, %9849 ], [ %9909, %9898 ]
  %9943 = phi float [ %9864, %9849 ], [ %9910, %9898 ]
  br i1 %9430, label %9944, label %10142, !dx.controlflow.hints !181

; <label>:9944                                    ; preds = %9937
  %9945 = extractvalue %dx.types.CBufRet.f32 %9843, 0
  %9946 = fmul fast float %9945, %9845
  %9947 = fsub fast float %9840, %9938
  %9948 = fsub fast float %9841, %9939
  %9949 = fsub fast float %9842, %9940
  %9950 = fmul fast float %9946, %9947
  %9951 = fmul fast float %9946, %9948
  %9952 = fmul fast float %9946, %9949
  %9953 = fadd fast float %9950, %9938
  %9954 = fadd fast float %9951, %9939
  %9955 = fadd fast float %9952, %9940
  %9956 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9941)  ; FMax(a,b)
  %9957 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9942)  ; FMax(a,b)
  %9958 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9943)  ; FMax(a,b)
  %9959 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9839)  ; FMax(a,b)
  %9960 = call float @dx.op.binary.f32(i32 35, float %9838, float %9848)  ; FMax(a,b)
  %9961 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9960)  ; FMax(a,b)
  %9962 = fdiv fast float %9838, %9961
  %9963 = call float @dx.op.unary.f32(i32 7, float %9962)  ; Saturate(value)
  %9964 = fdiv fast float %9848, %9961
  %9965 = call float @dx.op.unary.f32(i32 7, float %9964)  ; Saturate(value)
  %9966 = fcmp fast une float %9959, 1.000000e+00
  br i1 %9966, label %9967, label %9980, !dx.controlflow.hints !182

; <label>:9967                                    ; preds = %9944
  %9968 = call float @dx.op.unary.f32(i32 23, float %9959)  ; Log(value)
  %9969 = fmul fast float %9968, 0x3FE62E4300000000
  %9970 = fmul fast float %9840, %9969
  %9971 = fsub fast float -0.000000e+00, %9970
  %9972 = fmul fast float %9841, %9969
  %9973 = fsub fast float -0.000000e+00, %9972
  %9974 = fmul fast float %9842, %9969
  %9975 = fsub fast float -0.000000e+00, %9974
  %9976 = fsub fast float 1.000000e+00, %9959
  %9977 = fdiv fast float %9971, %9976
  %9978 = fdiv fast float %9973, %9976
  %9979 = fdiv fast float %9975, %9976
  br label %9980

; <label>:9980                                    ; preds = %9967, %9944
  %9981 = phi float [ %9977, %9967 ], [ %9840, %9944 ]
  %9982 = phi float [ %9978, %9967 ], [ %9841, %9944 ]
  %9983 = phi float [ %9979, %9967 ], [ %9842, %9944 ]
  %9984 = phi float [ %9969, %9967 ], [ 0.000000e+00, %9944 ]
  %9985 = fcmp fast une float %9956, 1.000000e+00
  br i1 %9985, label %9986, label %9993, !dx.controlflow.hints !183

; <label>:9986                                    ; preds = %9980
  %9987 = call float @dx.op.unary.f32(i32 23, float %9956)  ; Log(value)
  %9988 = fmul fast float %9987, 0x3FE62E4300000000
  %9989 = fmul fast float %9953, %9988
  %9990 = fsub fast float -0.000000e+00, %9989
  %9991 = fsub fast float 1.000000e+00, %9956
  %9992 = fdiv fast float %9990, %9991
  br label %9993

; <label>:9993                                    ; preds = %9986, %9980
  %9994 = phi float [ %9992, %9986 ], [ %9953, %9980 ]
  %9995 = phi float [ %9988, %9986 ], [ 0.000000e+00, %9980 ]
  %9996 = fcmp fast une float %9957, 1.000000e+00
  br i1 %9996, label %9997, label %10004, !dx.controlflow.hints !183

; <label>:9997                                    ; preds = %9993
  %9998 = call float @dx.op.unary.f32(i32 23, float %9957)  ; Log(value)
  %9999 = fmul fast float %9998, 0x3FE62E4300000000
  %10000 = fmul fast float %9954, %9999
  %10001 = fsub fast float -0.000000e+00, %10000
  %10002 = fsub fast float 1.000000e+00, %9957
  %10003 = fdiv fast float %10001, %10002
  br label %10004

; <label>:10004                                   ; preds = %9997, %9993
  %10005 = phi float [ %10003, %9997 ], [ %9954, %9993 ]
  %10006 = phi float [ %9999, %9997 ], [ 0.000000e+00, %9993 ]
  %10007 = fcmp fast une float %9958, 1.000000e+00
  br i1 %10007, label %10008, label %10015, !dx.controlflow.hints !183

; <label>:10008                                   ; preds = %10004
  %10009 = call float @dx.op.unary.f32(i32 23, float %9958)  ; Log(value)
  %10010 = fmul fast float %10009, 0x3FE62E4300000000
  %10011 = fmul fast float %9955, %10010
  %10012 = fsub fast float -0.000000e+00, %10011
  %10013 = fsub fast float 1.000000e+00, %9958
  %10014 = fdiv fast float %10012, %10013
  br label %10015

; <label>:10015                                   ; preds = %10008, %10004
  %10016 = phi float [ %10014, %10008 ], [ %9955, %10004 ]
  %10017 = phi float [ %10010, %10008 ], [ 0.000000e+00, %10004 ]
  %10018 = fmul fast float %9981, %9965
  %10019 = fmul fast float %9982, %9965
  %10020 = fmul fast float %9983, %9965
  %10021 = fmul fast float %9984, %9965
  %10022 = fmul fast float %9994, %9963
  %10023 = fmul fast float %10005, %9963
  %10024 = fmul fast float %10016, %9963
  %10025 = fmul fast float %9995, %9963
  %10026 = fmul fast float %10006, %9963
  %10027 = fmul fast float %10017, %9963
  %10028 = fadd fast float %10022, %10018
  %10029 = fadd fast float %10023, %10019
  %10030 = fadd fast float %10024, %10020
  %10031 = fadd fast float %10025, %10021
  %10032 = fadd fast float %10026, %10021
  %10033 = fadd fast float %10027, %10021
  %10034 = fcmp fast une float %10031, 0.000000e+00
  br i1 %10034, label %10035, label %10042, !dx.controlflow.hints !184

; <label>:10035                                   ; preds = %10015
  %10036 = fmul fast float %10031, 0x3FF7154760000000
  %10037 = call float @dx.op.unary.f32(i32 21, float %10036)  ; Exp(value)
  %10038 = fsub fast float 1.000000e+00, %10037
  %10039 = fmul fast float %10028, %10038
  %10040 = fsub fast float -0.000000e+00, %10039
  %10041 = fdiv fast float %10040, %10031
  br label %10042

; <label>:10042                                   ; preds = %10035, %10015
  %10043 = phi float [ %10037, %10035 ], [ 1.000000e+00, %10015 ]
  %10044 = phi float [ %10041, %10035 ], [ %10028, %10015 ]
  %10045 = fcmp fast une float %10032, 0.000000e+00
  br i1 %10045, label %10046, label %10053, !dx.controlflow.hints !184

; <label>:10046                                   ; preds = %10042
  %10047 = fmul fast float %10032, 0x3FF7154760000000
  %10048 = call float @dx.op.unary.f32(i32 21, float %10047)  ; Exp(value)
  %10049 = fsub fast float 1.000000e+00, %10048
  %10050 = fmul fast float %10029, %10049
  %10051 = fsub fast float -0.000000e+00, %10050
  %10052 = fdiv fast float %10051, %10032
  br label %10053

; <label>:10053                                   ; preds = %10046, %10042
  %10054 = phi float [ %10048, %10046 ], [ 1.000000e+00, %10042 ]
  %10055 = phi float [ %10052, %10046 ], [ %10029, %10042 ]
  %10056 = fcmp fast une float %10033, 0.000000e+00
  br i1 %10056, label %10057, label %10064, !dx.controlflow.hints !184

; <label>:10057                                   ; preds = %10053
  %10058 = fmul fast float %10033, 0x3FF7154760000000
  %10059 = call float @dx.op.unary.f32(i32 21, float %10058)  ; Exp(value)
  %10060 = fsub fast float 1.000000e+00, %10059
  %10061 = fmul fast float %10030, %10060
  %10062 = fsub fast float -0.000000e+00, %10061
  %10063 = fdiv fast float %10062, %10033
  br label %10064

; <label>:10064                                   ; preds = %10057, %10053
  %10065 = phi float [ %10059, %10057 ], [ 1.000000e+00, %10053 ]
  %10066 = phi float [ %10063, %10057 ], [ %10030, %10053 ]
  %10067 = fcmp fast ogt float %9963, %9965
  br i1 %10067, label %10068, label %10088

; <label>:10068                                   ; preds = %10064
  %10069 = fsub fast float 1.000000e+00, %9965
  %10070 = fmul fast float %9981, %10069
  %10071 = fmul fast float %9982, %10069
  %10072 = fmul fast float %9983, %10069
  %10073 = fmul fast float %9984, %10069
  %10074 = fcmp fast une float %10073, 0.000000e+00
  br i1 %10074, label %10075, label %10126, !dx.controlflow.hints !185

; <label>:10075                                   ; preds = %10068
  %10076 = fmul fast float %10073, 0x3FF7154760000000
  %10077 = call float @dx.op.unary.f32(i32 21, float %10076)  ; Exp(value)
  %10078 = fsub fast float 1.000000e+00, %10077
  %10079 = fmul fast float %10070, %10078
  %10080 = fsub fast float -0.000000e+00, %10079
  %10081 = fmul fast float %10071, %10078
  %10082 = fsub fast float -0.000000e+00, %10081
  %10083 = fmul fast float %10072, %10078
  %10084 = fsub fast float -0.000000e+00, %10083
  %10085 = fdiv fast float %10080, %10073
  %10086 = fdiv fast float %10082, %10073
  %10087 = fdiv fast float %10084, %10073
  br label %10126

; <label>:10088                                   ; preds = %10064
  %10089 = fsub fast float 1.000000e+00, %9963
  %10090 = fmul fast float %9994, %10089
  %10091 = fmul fast float %10005, %10089
  %10092 = fmul fast float %10016, %10089
  %10093 = fmul fast float %9995, %10089
  %10094 = fmul fast float %10006, %10089
  %10095 = fmul fast float %10017, %10089
  %10096 = fcmp fast une float %10093, 0.000000e+00
  br i1 %10096, label %10097, label %10104, !dx.controlflow.hints !184

; <label>:10097                                   ; preds = %10088
  %10098 = fmul fast float %10093, 0x3FF7154760000000
  %10099 = call float @dx.op.unary.f32(i32 21, float %10098)  ; Exp(value)
  %10100 = fsub fast float 1.000000e+00, %10099
  %10101 = fmul fast float %10090, %10100
  %10102 = fsub fast float -0.000000e+00, %10101
  %10103 = fdiv fast float %10102, %10093
  br label %10104

; <label>:10104                                   ; preds = %10097, %10088
  %10105 = phi float [ %10103, %10097 ], [ %10090, %10088 ]
  %10106 = phi float [ %10099, %10097 ], [ 1.000000e+00, %10088 ]
  %10107 = fcmp fast une float %10094, 0.000000e+00
  br i1 %10107, label %10108, label %10115, !dx.controlflow.hints !184

; <label>:10108                                   ; preds = %10104
  %10109 = fmul fast float %10094, 0x3FF7154760000000
  %10110 = call float @dx.op.unary.f32(i32 21, float %10109)  ; Exp(value)
  %10111 = fsub fast float 1.000000e+00, %10110
  %10112 = fmul fast float %10091, %10111
  %10113 = fsub fast float -0.000000e+00, %10112
  %10114 = fdiv fast float %10113, %10094
  br label %10115

; <label>:10115                                   ; preds = %10108, %10104
  %10116 = phi float [ %10114, %10108 ], [ %10091, %10104 ]
  %10117 = phi float [ %10110, %10108 ], [ 1.000000e+00, %10104 ]
  %10118 = fcmp fast une float %10095, 0.000000e+00
  br i1 %10118, label %10119, label %10126, !dx.controlflow.hints !184

; <label>:10119                                   ; preds = %10115
  %10120 = fmul fast float %10095, 0x3FF7154760000000
  %10121 = call float @dx.op.unary.f32(i32 21, float %10120)  ; Exp(value)
  %10122 = fsub fast float 1.000000e+00, %10121
  %10123 = fmul fast float %10092, %10122
  %10124 = fsub fast float -0.000000e+00, %10123
  %10125 = fdiv fast float %10124, %10095
  br label %10126

; <label>:10126                                   ; preds = %10119, %10115, %10075, %10068
  %10127 = phi float [ %10125, %10119 ], [ %10087, %10075 ], [ %10072, %10068 ], [ %10092, %10115 ]
  %10128 = phi float [ %10116, %10119 ], [ %10086, %10075 ], [ %10071, %10068 ], [ %10116, %10115 ]
  %10129 = phi float [ %10105, %10119 ], [ %10085, %10075 ], [ %10070, %10068 ], [ %10105, %10115 ]
  %10130 = phi float [ %10121, %10119 ], [ %10077, %10075 ], [ 1.000000e+00, %10068 ], [ 1.000000e+00, %10115 ]
  %10131 = phi float [ %10117, %10119 ], [ %10077, %10075 ], [ 1.000000e+00, %10068 ], [ %10117, %10115 ]
  %10132 = phi float [ %10106, %10119 ], [ %10077, %10075 ], [ 1.000000e+00, %10068 ], [ %10106, %10115 ]
  %10133 = fmul fast float %10132, %10044
  %10134 = fmul fast float %10131, %10055
  %10135 = fmul fast float %10130, %10066
  %10136 = fadd fast float %10133, %10129
  %10137 = fadd fast float %10134, %10128
  %10138 = fadd fast float %10135, %10127
  %10139 = fmul fast float %10132, %10043
  %10140 = fmul fast float %10131, %10054
  %10141 = fmul fast float %10130, %10065
  br label %10142

; <label>:10142                                   ; preds = %10126, %9937
  %10143 = phi float [ %10141, %10126 ], [ %9943, %9937 ]
  %10144 = phi float [ %10140, %10126 ], [ %9942, %9937 ]
  %10145 = phi float [ %10139, %10126 ], [ %9941, %9937 ]
  %10146 = phi float [ %10138, %10126 ], [ %9940, %9937 ]
  %10147 = phi float [ %10137, %10126 ], [ %9939, %9937 ]
  %10148 = phi float [ %10136, %10126 ], [ %9938, %9937 ]
  %10149 = fmul fast float %10148, %9090
  %10150 = fmul fast float %10147, %9092
  %10151 = fmul fast float %10146, %9094
  %10152 = fmul fast float %10145, %9385
  %10153 = call float @dx.op.dot3.f32(i32 55, float %10145, float %10144, float %10143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10154 = call float @dx.op.dot3.f32(i32 55, float %10149, float %10150, float %10151, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10155 = select i1 %259, float %10153, float %10145
  %10156 = select i1 %259, float %10153, float %10144
  %10157 = select i1 %259, float 1.000000e+00, float %10143
  %10158 = select i1 %259, float %10154, float %10149
  %10159 = select i1 %259, float 0.000000e+00, float %10150
  %10160 = select i1 %259, float 0.000000e+00, float %10151
  %10161 = fmul fast float %10155, %9379
  %10162 = fmul fast float %10156, %9380
  %10163 = fmul fast float %10157, %9381
  %10164 = fadd fast float %10161, %10158
  %10165 = fadd fast float %10162, %10159
  %10166 = fadd fast float %10160, %10163
  %10167 = fmul fast float %10155, %9382
  %10168 = fmul fast float %10156, %9383
  %10169 = fmul fast float %10157, %9384
  %10170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10171 = extractvalue %dx.types.CBufRet.i32 %10170, 0
  %10172 = icmp eq i32 %10171, 0
  br i1 %10172, label %10540, label %10173, !dx.controlflow.hints !186

; <label>:10173                                   ; preds = %10142
  %10174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10175 = extractvalue %dx.types.CBufRet.f32 %10174, 2
  %10176 = extractvalue %dx.types.CBufRet.f32 %10174, 3
  %10177 = fmul fast float %10175, %121
  %10178 = fmul fast float %10176, %122
  %10179 = fmul fast float %10177, 2.000000e+00
  %10180 = fmul fast float %10178, 2.000000e+00
  %10181 = fsub fast float 1.000000e+00, %10179
  %10182 = fsub fast float 1.000000e+00, %10180
  %10183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10184 = extractvalue %dx.types.CBufRet.f32 %10183, 0
  %10185 = extractvalue %dx.types.CBufRet.f32 %10183, 1
  %10186 = extractvalue %dx.types.CBufRet.f32 %10183, 2
  %10187 = fmul fast float %10181, %10184
  %10188 = fmul fast float %10181, %10185
  %10189 = fmul fast float %10181, %10186
  %10190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10191 = extractvalue %dx.types.CBufRet.f32 %10190, 0
  %10192 = extractvalue %dx.types.CBufRet.f32 %10190, 1
  %10193 = extractvalue %dx.types.CBufRet.f32 %10190, 2
  %10194 = fmul fast float %10182, %10191
  %10195 = fmul fast float %10182, %10192
  %10196 = fmul fast float %10182, %10193
  %10197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10198 = extractvalue %dx.types.CBufRet.f32 %10197, 0
  %10199 = extractvalue %dx.types.CBufRet.f32 %10197, 1
  %10200 = extractvalue %dx.types.CBufRet.f32 %10197, 2
  %10201 = fadd fast float %10194, %10198
  %10202 = fadd fast float %10201, %10187
  %10203 = fadd fast float %10195, %10199
  %10204 = fadd fast float %10203, %10188
  %10205 = fadd fast float %10196, %10200
  %10206 = fadd fast float %10205, %10189
  %10207 = fmul fast float %10202, %9378
  %10208 = fmul fast float %10204, %9378
  %10209 = fmul fast float %10206, %9378
  %10210 = fmul fast float %10207, %10207
  %10211 = fmul fast float %10208, %10208
  %10212 = fadd fast float %10210, %10211
  %10213 = fmul fast float %10209, %10209
  %10214 = fadd fast float %10212, %10213
  %10215 = call float @dx.op.unary.f32(i32 24, float %10214)  ; Sqrt(value)
  %10216 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %10217 = fsub fast float %10215, %10216
  %10218 = extractvalue %dx.types.CBufRet.f32 %9105, 2
  %10219 = fmul fast float %10217, %10218
  %10220 = call float @dx.op.unary.f32(i32 7, float %10219)  ; Saturate(value)
  %10221 = fadd fast float %10220, -5.000000e-01
  %10222 = fmul fast float %10221, 2.000000e+00
  %10223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10224 = extractvalue %dx.types.CBufRet.f32 %10223, 2
  %10225 = call float @dx.op.binary.f32(i32 36, float %10224, float %10222)  ; FMin(a,b)
  %10226 = fsub fast float -0.000000e+00, %10224
  %10227 = fcmp fast ogt float %10225, %10226
  br i1 %10227, label %10228, label %10540, !dx.controlflow.hints !187

; <label>:10228                                   ; preds = %10173
  %10229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10230 = extractvalue %dx.types.CBufRet.f32 %10229, 3
  %10231 = fcmp fast ogt float %10230, 0.000000e+00
  br i1 %10231, label %10232, label %10307, !dx.controlflow.hints !188

; <label>:10232                                   ; preds = %10228
  %10233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10234 = extractvalue %dx.types.Dimensions %10233, 0
  %10235 = sitofp i32 %10234 to float
  %10236 = extractvalue %dx.types.Dimensions %10233, 1
  %10237 = sitofp i32 %10236 to float
  %10238 = fmul fast float %10177, %10235
  %10239 = fmul fast float %10178, %10237
  %10240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10241 = extractvalue %dx.types.CBufRet.f32 %10240, 1
  %10242 = fsub fast float -0.000000e+00, %10241
  %10243 = fptoui float %10242 to i32
  %10244 = fptoui float %10238 to i32
  %10245 = fptoui float %10239 to i32
  %10246 = and i32 %10243, 31
  %10247 = lshr i32 %10244, %10246
  %10248 = lshr i32 %10245, %10246
  %10249 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10243, i32 %10247, i32 %10248, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10250 = extractvalue %dx.types.ResRet.f32 %10249, 0
  %10251 = fcmp fast olt float %10250, -1.000000e+00
  %10252 = fcmp fast ogt float %10250, -1.000000e+00
  %10253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10254 = extractvalue %dx.types.CBufRet.f32 %10253, 1
  %10255 = select i1 %10252, float %10254, float 1.000000e+00
  %10256 = fadd fast float %10250, 1.000000e+00
  %10257 = fmul fast float %10255, %10256
  %10258 = call float @dx.op.unary.f32(i32 6, float %10257)  ; FAbs(value)
  %10259 = extractvalue %dx.types.CBufRet.f32 %10253, 3
  %10260 = fcmp fast oge float %10258, %10259
  %10261 = select i1 %10260, float 0x4197782600000000, float %10258
  %10262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10263 = extractvalue %dx.types.CBufRet.f32 %10262, 0
  %10264 = extractvalue %dx.types.CBufRet.f32 %10262, 1
  %10265 = extractvalue %dx.types.CBufRet.f32 %10262, 2
  %10266 = select i1 %10251, float %10263, float %10184
  %10267 = select i1 %10251, float %10264, float %10185
  %10268 = select i1 %10251, float %10265, float %10186
  %10269 = fmul fast float %10266, %10181
  %10270 = fmul fast float %10267, %10181
  %10271 = fmul fast float %10268, %10181
  %10272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10273 = extractvalue %dx.types.CBufRet.f32 %10272, 0
  %10274 = extractvalue %dx.types.CBufRet.f32 %10272, 1
  %10275 = extractvalue %dx.types.CBufRet.f32 %10272, 2
  %10276 = select i1 %10251, float %10273, float %10191
  %10277 = select i1 %10251, float %10274, float %10192
  %10278 = select i1 %10251, float %10275, float %10193
  %10279 = fmul fast float %10276, %10182
  %10280 = fmul fast float %10277, %10182
  %10281 = fmul fast float %10278, %10182
  %10282 = fadd fast float %10279, %10269
  %10283 = fadd fast float %10280, %10270
  %10284 = fadd fast float %10281, %10271
  %10285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10286 = extractvalue %dx.types.CBufRet.f32 %10285, 0
  %10287 = extractvalue %dx.types.CBufRet.f32 %10285, 1
  %10288 = extractvalue %dx.types.CBufRet.f32 %10285, 2
  %10289 = select i1 %10251, float %10286, float %10198
  %10290 = select i1 %10251, float %10287, float %10199
  %10291 = select i1 %10251, float %10288, float %10200
  %10292 = fadd fast float %10282, %10289
  %10293 = fadd fast float %10283, %10290
  %10294 = fadd fast float %10284, %10291
  %10295 = fmul fast float %10292, %10261
  %10296 = fmul fast float %10293, %10261
  %10297 = fmul fast float %10294, %10261
  %10298 = fmul fast float %10295, %10295
  %10299 = fmul fast float %10296, %10296
  %10300 = fadd fast float %10298, %10299
  %10301 = fmul fast float %10297, %10297
  %10302 = fadd fast float %10300, %10301
  %10303 = call float @dx.op.unary.f32(i32 24, float %10302)  ; Sqrt(value)
  %10304 = fsub fast float %10303, %10216
  %10305 = fmul fast float %10304, %10218
  %10306 = call float @dx.op.unary.f32(i32 7, float %10305)  ; Saturate(value)
  br label %10307

; <label>:10307                                   ; preds = %10232, %10228
  %10308 = phi float [ %10306, %10232 ], [ 1.000000e+00, %10228 ]
  %10309 = fmul fast float %10225, 5.000000e-01
  %10310 = fadd fast float %10309, 5.000000e-01
  %10311 = call float @dx.op.unary.f32(i32 22, float %10310)  ; Frc(value)
  %10312 = call float @dx.op.unary.f32(i32 27, float %10311)  ; Round_ni(value)
  %10313 = call float @dx.op.unary.f32(i32 22, float %10311)  ; Frc(value)
  %10314 = fmul fast float %10313, 2.000000e+00
  %10315 = fadd fast float %10314, -1.000000e+00
  %10316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %10177, float %10178, float %10312, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10317 = extractvalue %dx.types.ResRet.f32 %10316, 0
  %10318 = extractvalue %dx.types.ResRet.f32 %10316, 1
  %10319 = extractvalue %dx.types.ResRet.f32 %10316, 2
  %10320 = extractvalue %dx.types.ResRet.f32 %10316, 3
  %10321 = fadd fast float %10317, -5.000000e-01
  %10322 = fadd fast float %10319, -5.000000e-01
  %10323 = fmul fast float %10321, 0xBFD5555560000000
  %10324 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10322, float %10323)  ; FMad(a,b,c)
  %10325 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10318, float 0.000000e+00)  ; FMad(a,b,c)
  %10326 = fadd fast float %10325, %10320
  %10327 = fmul fast float %10321, -7.500000e-01
  %10328 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10322, float %10327)  ; FMad(a,b,c)
  %10329 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10318, float 0.000000e+00)  ; FMad(a,b,c)
  %10330 = fadd fast float %10329, %10320
  %10331 = call float @dx.op.binary.f32(i32 35, float %10324, float -1.000000e+00)  ; FMax(a,b)
  %10332 = call float @dx.op.binary.f32(i32 35, float %10326, float -1.000000e+00)  ; FMax(a,b)
  %10333 = call float @dx.op.binary.f32(i32 35, float %10328, float -1.000000e+00)  ; FMax(a,b)
  %10334 = call float @dx.op.binary.f32(i32 35, float %10330, float -1.000000e+00)  ; FMax(a,b)
  %10335 = call float @dx.op.binary.f32(i32 36, float %10331, float 1.000000e+00)  ; FMin(a,b)
  %10336 = call float @dx.op.binary.f32(i32 36, float %10332, float 1.000000e+00)  ; FMin(a,b)
  %10337 = call float @dx.op.binary.f32(i32 36, float %10333, float 1.000000e+00)  ; FMin(a,b)
  %10338 = call float @dx.op.binary.f32(i32 36, float %10334, float 1.000000e+00)  ; FMin(a,b)
  %10339 = fcmp fast olt float %10335, 0x3FEFFF8020000000
  br i1 %10339, label %10340, label %10455, !dx.controlflow.hints !189

; <label>:10340                                   ; preds = %10307
  %10341 = extractvalue %dx.types.CBufRet.f32 %10223, 3
  %10342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10343 = extractvalue %dx.types.CBufRet.f32 %10342, 0
  %10344 = extractvalue %dx.types.CBufRet.f32 %10342, 1
  %10345 = extractvalue %dx.types.CBufRet.f32 %10342, 2
  %10346 = extractvalue %dx.types.CBufRet.f32 %10342, 3
  %10347 = fsub fast float %10343, %10335
  %10348 = fsub fast float %10344, %10336
  %10349 = fsub fast float %10345, %10337
  %10350 = fsub fast float %10346, %10338
  %10351 = fmul fast float %10347, %10341
  %10352 = fmul fast float %10348, %10341
  %10353 = fmul fast float %10349, %10341
  %10354 = fmul fast float %10350, %10341
  %10355 = fadd fast float %10351, %10335
  %10356 = fadd fast float %10352, %10336
  %10357 = fsub fast float -0.000000e+00, %10356
  %10358 = fadd fast float %10353, %10337
  %10359 = fadd fast float %10354, %10338
  %10360 = fmul fast float %10355, %10355
  %10361 = fsub fast float %10356, %10360
  %10362 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10361)  ; FMax(a,b)
  %10363 = fdiv fast float 1.000000e+00, %10362
  %10364 = fmul fast float %10356, %10355
  %10365 = fsub fast float %10358, %10364
  %10366 = fsub fast float %10315, %10355
  %10367 = fmul fast float %10315, %10315
  %10368 = fsub fast float %10367, %10356
  %10369 = fmul fast float %10366, %10363
  %10370 = fmul fast float %10369, %10365
  %10371 = fsub fast float %10368, %10370
  %10372 = fmul fast float %10356, %10356
  %10373 = fsub fast float %10359, %10372
  %10374 = fmul fast float %10365, %10365
  %10375 = fmul fast float %10374, %10363
  %10376 = fsub fast float %10373, %10375
  %10377 = fdiv fast float %10371, %10376
  %10378 = fmul fast float %10365, %10377
  %10379 = fsub fast float %10366, %10378
  %10380 = fmul fast float %10379, %10363
  %10381 = fmul fast float %10380, %10355
  %10382 = fsub fast float 1.000000e+00, %10381
  %10383 = fmul fast float %10356, %10377
  %10384 = fsub fast float %10382, %10383
  %10385 = fmul fast float %10380, %10380
  %10386 = fmul fast float %10377, 4.000000e+00
  %10387 = fmul fast float %10386, %10384
  %10388 = fsub fast float %10385, %10387
  %10389 = call float @dx.op.unary.f32(i32 24, float %10388)  ; Sqrt(value)
  %10390 = fcmp fast oge float %10380, 0.000000e+00
  %10391 = fsub fast float -0.000000e+00, %10389
  %10392 = select i1 %10390, float %10391, float %10389
  %10393 = fsub fast float %10392, %10380
  %10394 = fdiv fast float %10393, %10377
  %10395 = fdiv fast float %10384, %10393
  %10396 = fmul fast float %10394, 5.000000e-01
  %10397 = fmul fast float %10395, 2.000000e+00
  %10398 = select i1 %10390, float %10396, float %10397
  %10399 = select i1 %10390, float %10397, float %10396
  %10400 = call float @dx.op.binary.f32(i32 35, float %10398, float %10399)  ; FMax(a,b)
  %10401 = call float @dx.op.binary.f32(i32 36, float %10398, float %10399)  ; FMin(a,b)
  %10402 = fcmp fast ogt float %10315, %10401
  br i1 %10402, label %10403, label %10413

; <label>:10403                                   ; preds = %10340
  %10404 = fsub fast float %10315, %10401
  %10405 = fsub fast float %10400, %10401
  %10406 = fmul fast float %10404, %10405
  %10407 = fmul fast float %10400, %10315
  %10408 = fadd fast float %10400, %10315
  %10409 = fmul fast float %10408, %10355
  %10410 = fadd fast float %10407, %10356
  %10411 = fsub fast float %10410, %10409
  %10412 = fdiv fast float %10411, %10406
  br label %10413

; <label>:10413                                   ; preds = %10403, %10340
  %10414 = phi float [ %10412, %10403 ], [ 0.000000e+00, %10340 ]
  %10415 = fcmp fast ogt float %10315, %10400
  %10416 = fsub fast float %10315, %10400
  br i1 %10415, label %10417, label %10427

; <label>:10417                                   ; preds = %10413
  %10418 = fsub fast float %10400, %10401
  %10419 = fmul fast float %10418, %10416
  %10420 = fmul fast float %10401, %10315
  %10421 = fadd fast float %10401, %10315
  %10422 = fmul fast float %10421, %10355
  %10423 = fsub fast float %10357, %10420
  %10424 = fadd fast float %10423, %10422
  %10425 = fdiv fast float %10424, %10419
  %10426 = fadd fast float %10425, %10414
  br label %10427

; <label>:10427                                   ; preds = %10417, %10413
  %10428 = phi float [ %10426, %10417 ], [ %10414, %10413 ]
  %10429 = fsub fast float %10315, %10401
  %10430 = fmul fast float %10429, %10416
  %10431 = fmul fast float %10401, %10400
  %10432 = fadd fast float %10401, %10400
  %10433 = fmul fast float %10432, %10355
  %10434 = fadd fast float %10431, %10356
  %10435 = fsub fast float %10434, %10433
  %10436 = fdiv fast float %10435, %10430
  %10437 = call float @dx.op.unary.f32(i32 7, float %10428)  ; Saturate(value)
  %10438 = fcmp fast oeq float %9106, 0.000000e+00
  %10439 = extractvalue %dx.types.CBufRet.f32 %10223, 0
  %10440 = fcmp fast oeq float %10439, 0.000000e+00
  %10441 = or i1 %10438, %10440
  %10442 = fmul fast float %10439, 2.000000e+00
  %10443 = fadd fast float %10224, %10225
  %10444 = fdiv fast float %10443, %10442
  %10445 = call float @dx.op.unary.f32(i32 7, float %10444)  ; Saturate(value)
  %10446 = fmul fast float %10445, 2.000000e+00
  %10447 = fsub fast float 3.000000e+00, %10446
  %10448 = fmul fast float %10445, %10445
  %10449 = fmul fast float %10448, %10447
  %10450 = select i1 %10441, float 1.000000e+00, float %10449
  %10451 = fmul fast float %10436, %9106
  %10452 = fadd fast float %10437, %10451
  %10453 = call float @dx.op.unary.f32(i32 7, float %10452)  ; Saturate(value)
  %10454 = fmul fast float %10450, %10453
  br label %10455

; <label>:10455                                   ; preds = %10427, %10307
  %10456 = phi float [ %10454, %10427 ], [ 0.000000e+00, %10307 ]
  %10457 = fsub fast float 1.000000e+00, %10456
  %10458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %10177, float %10178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10459 = extractvalue %dx.types.ResRet.f32 %10458, 0
  %10460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10461 = extractvalue %dx.types.CBufRet.i32 %10460, 2
  %10462 = icmp eq i32 %10461, 0
  br i1 %10462, label %10468, label %10463

; <label>:10463                                   ; preds = %10455
  %10464 = call float @dx.op.unary.f32(i32 7, float %10456)  ; Saturate(value)
  %10465 = fadd fast float %10459, -1.000000e+00
  %10466 = fmul fast float %10464, %10465
  %10467 = fadd fast float %10466, 1.000000e+00
  br label %10468

; <label>:10468                                   ; preds = %10463, %10455
  %10469 = phi float [ %10467, %10463 ], [ %10457, %10455 ]
  br i1 %10231, label %10470, label %10488

; <label>:10470                                   ; preds = %10468
  %10471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10472 = extractvalue %dx.types.CBufRet.f32 %10471, 1
  %10473 = fsub fast float %10308, %10472
  %10474 = call float @dx.op.unary.f32(i32 7, float %10473)  ; Saturate(value)
  %10475 = fsub fast float %10308, %10230
  %10476 = call float @dx.op.unary.f32(i32 7, float %10475)  ; Saturate(value)
  %10477 = fsub fast float %10474, %10476
  %10478 = fsub fast float %10310, %10476
  %10479 = fdiv fast float %10478, %10477
  %10480 = call float @dx.op.unary.f32(i32 7, float %10479)  ; Saturate(value)
  %10481 = fmul fast float %10480, 2.000000e+00
  %10482 = fsub fast float 3.000000e+00, %10481
  %10483 = fsub fast float %10459, %10469
  %10484 = fmul fast float %10480, %10480
  %10485 = fmul fast float %10484, %10483
  %10486 = fmul fast float %10485, %10482
  %10487 = fadd fast float %10486, %10469
  br label %10488

; <label>:10488                                   ; preds = %10470, %10468
  %10489 = phi float [ %10487, %10470 ], [ %10469, %10468 ]
  %10490 = call float @dx.op.binary.f32(i32 35, float %10459, float %10489)  ; FMax(a,b)
  %10491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10492 = extractvalue %dx.types.CBufRet.i32 %10491, 2
  %10493 = and i32 %10492, 1
  %10494 = icmp eq i32 %10493, 0
  %10495 = fcmp fast une float %10490, 1.000000e+00
  %10496 = and i1 %10495, %10494
  br i1 %10496, label %10497, label %10516

; <label>:10497                                   ; preds = %10488
  %10498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %10177, float %10178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10499 = extractvalue %dx.types.ResRet.f32 %10498, 0
  %10500 = extractvalue %dx.types.ResRet.f32 %10498, 1
  %10501 = extractvalue %dx.types.ResRet.f32 %10498, 2
  %10502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10503 = extractvalue %dx.types.CBufRet.f32 %10502, 1
  %10504 = fmul fast float %10503, %10499
  %10505 = fmul fast float %10503, %10500
  %10506 = fmul fast float %10503, %10501
  %10507 = fcmp fast ogt float %10459, 0x3FEFFF2E40000000
  %10508 = fsub fast float 1.000000e+00, %10490
  %10509 = fsub fast float 1.000000e+00, %10459
  %10510 = fdiv fast float %10508, %10509
  %10511 = call float @dx.op.unary.f32(i32 7, float %10510)  ; Saturate(value)
  %10512 = select i1 %10507, float 0.000000e+00, float %10511
  %10513 = fmul fast float %10504, %10512
  %10514 = fmul fast float %10505, %10512
  %10515 = fmul fast float %10506, %10512
  br label %10516

; <label>:10516                                   ; preds = %10497, %10488
  %10517 = phi float [ 0.000000e+00, %10488 ], [ %10513, %10497 ]
  %10518 = phi float [ 0.000000e+00, %10488 ], [ %10514, %10497 ]
  %10519 = phi float [ 0.000000e+00, %10488 ], [ %10515, %10497 ]
  %10520 = fmul fast float %10517, %9090
  %10521 = fmul fast float %10518, %9092
  %10522 = fmul fast float %10519, %9094
  %10523 = fmul fast float %10490, %10152
  %10524 = call float @dx.op.dot3.f32(i32 55, float %10490, float %10490, float %10490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10525 = call float @dx.op.dot3.f32(i32 55, float %10520, float %10521, float %10522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10526 = select i1 %259, float %10524, float %10490
  %10527 = select i1 %259, float 1.000000e+00, float %10490
  %10528 = select i1 %259, float %10525, float %10520
  %10529 = select i1 %259, float 0.000000e+00, float %10521
  %10530 = select i1 %259, float 0.000000e+00, float %10522
  %10531 = fmul fast float %10526, %10164
  %10532 = fmul fast float %10526, %10165
  %10533 = fmul fast float %10527, %10166
  %10534 = fadd fast float %10531, %10528
  %10535 = fadd fast float %10532, %10529
  %10536 = fadd fast float %10530, %10533
  %10537 = fmul fast float %10526, %10167
  %10538 = fmul fast float %10526, %10168
  %10539 = fmul fast float %10527, %10169
  br label %10540

; <label>:10540                                   ; preds = %10516, %10173, %10142, %9374
  %10541 = phi float [ %9379, %9374 ], [ %10164, %10142 ], [ %10534, %10516 ], [ %10164, %10173 ]
  %10542 = phi float [ %9380, %9374 ], [ %10165, %10142 ], [ %10535, %10516 ], [ %10165, %10173 ]
  %10543 = phi float [ %9381, %9374 ], [ %10166, %10142 ], [ %10536, %10516 ], [ %10166, %10173 ]
  %10544 = phi float [ %9382, %9374 ], [ %10167, %10142 ], [ %10537, %10516 ], [ %10167, %10173 ]
  %10545 = phi float [ %9383, %9374 ], [ %10168, %10142 ], [ %10538, %10516 ], [ %10168, %10173 ]
  %10546 = phi float [ %9384, %9374 ], [ %10169, %10142 ], [ %10539, %10516 ], [ %10169, %10173 ]
  %10547 = phi float [ %9385, %9374 ], [ %10152, %10142 ], [ %10523, %10516 ], [ %10152, %10173 ]
  %10548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10549 = extractvalue %dx.types.CBufRet.f32 %10548, 2
  %10550 = extractvalue %dx.types.CBufRet.f32 %10548, 3
  %10551 = fmul fast float %10549, %121
  %10552 = fmul fast float %10550, %122
  %10553 = call float @dx.op.unary.f32(i32 7, float %10551)  ; Saturate(value)
  %10554 = call float @dx.op.unary.f32(i32 7, float %10552)  ; Saturate(value)
  %10555 = select i1 %9116, i32 2, i32 0
  %10556 = or i32 %10555, 1
  %10557 = uitofp i32 %10556 to float
  %10558 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10553, float %10554, float %10557, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10559 = extractvalue %dx.types.ResRet.f32 %10558, 0
  %10560 = extractvalue %dx.types.ResRet.f32 %10558, 1
  %10561 = extractvalue %dx.types.ResRet.f32 %10558, 2
  %10562 = extractvalue %dx.types.ResRet.f32 %10558, 3
  %10563 = add nuw nsw i32 %10555, 2
  %10564 = uitofp i32 %10563 to float
  %10565 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10553, float %10554, float %10564, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10566 = extractvalue %dx.types.ResRet.f32 %10565, 0
  %10567 = extractvalue %dx.types.ResRet.f32 %10565, 1
  %10568 = extractvalue %dx.types.ResRet.f32 %10565, 2
  %10569 = extractvalue %dx.types.ResRet.f32 %10565, 3
  %10570 = call float @dx.op.binary.f32(i32 35, float %10560, float %10561)  ; FMax(a,b)
  %10571 = call float @dx.op.binary.f32(i32 35, float %10559, float %10570)  ; FMax(a,b)
  %10572 = call float @dx.op.binary.f32(i32 35, float %10571, float %10562)  ; FMax(a,b)
  %10573 = call float @dx.op.binary.f32(i32 36, float %10567, float %10568)  ; FMin(a,b)
  %10574 = call float @dx.op.binary.f32(i32 36, float %10566, float %10573)  ; FMin(a,b)
  %10575 = call float @dx.op.binary.f32(i32 36, float %10574, float %10569)  ; FMin(a,b)
  %10576 = fmul fast float %10572, 2.550000e+02
  %10577 = fadd fast float %10576, 0x3F70101020000000
  %10578 = fptoui float %10577 to i32
  %10579 = fmul fast float %10575, 2.550000e+02
  %10580 = fadd fast float %10579, 0x3F70101020000000
  %10581 = fptoui float %10580 to i32
  %10582 = icmp ult i32 %10578, %10581
  br i1 %10582, label %10583, label %10752

; <label>:10583                                   ; preds = %10540
  %10584 = fcmp fast ogt float %107, 9.843750e-01
  %10585 = fadd fast float %9378, -4.000000e+00
  %10586 = select i1 %10584, float -4.000000e+00, float %10585
  %10587 = call float @dx.op.binary.f32(i32 35, float %10586, float 0.000000e+00)  ; FMax(a,b)
  %10588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10589 = extractvalue %dx.types.CBufRet.f32 %10588, 0
  %10590 = fadd fast float %10589, %10587
  %10591 = extractvalue %dx.types.CBufRet.f32 %10588, 2
  %10592 = fmul fast float %10590, %10591
  %10593 = call float @dx.op.unary.f32(i32 23, float %10592)  ; Log(value)
  %10594 = extractvalue %dx.types.CBufRet.f32 %10588, 3
  %10595 = fmul fast float %10594, %10593
  %10596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10597 = extractvalue %dx.types.CBufRet.f32 %10596, 2
  %10598 = fmul fast float %10595, %10597
  %10599 = call float @dx.op.unary.f32(i32 7, float %10598)  ; Saturate(value)
  %10600 = uitofp i32 %10578 to float
  %10601 = uitofp i32 %10581 to float
  %10602 = fadd fast float %10600, 5.000000e-01
  %10603 = fadd fast float %10601, 5.000000e-01
  %10604 = fmul fast float %10597, %10602
  %10605 = fmul fast float %10597, %10603
  %10606 = fadd fast float %10604, 0x3F0FFB4800000000
  %10607 = fadd fast float %10605, 0xBF0FFB4800000000
  %10608 = call float @dx.op.binary.f32(i32 35, float %10599, float %10606)  ; FMax(a,b)
  %10609 = call float @dx.op.binary.f32(i32 36, float %10608, float %10607)  ; FMin(a,b)
  %10610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10611 = extractvalue %dx.types.CBufRet.f32 %10610, 1
  %10612 = extractvalue %dx.types.CBufRet.f32 %10610, 2
  %10613 = extractvalue %dx.types.CBufRet.f32 %10610, 0
  %10614 = select i1 %9116, float %10613, float 0.000000e+00
  %10615 = fmul fast float %10611, %10609
  %10616 = fadd fast float %10614, %10615
  %10617 = fadd fast float %10614, %10612
  %10618 = fsub fast float %10611, %10612
  %10619 = fadd fast float %10618, %10614
  %10620 = call float @dx.op.binary.f32(i32 35, float %10616, float %10617)  ; FMax(a,b)
  %10621 = call float @dx.op.binary.f32(i32 36, float %10620, float %10619)  ; FMin(a,b)
  %10622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %10553, float %10554, float %10621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10623 = extractvalue %dx.types.ResRet.f32 %10622, 0
  %10624 = extractvalue %dx.types.ResRet.f32 %10622, 1
  %10625 = extractvalue %dx.types.ResRet.f32 %10622, 2
  %10626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10627 = extractvalue %dx.types.CBufRet.i32 %10626, 0
  %10628 = extractvalue %dx.types.CBufRet.i32 %10626, 1
  %10629 = uitofp i32 %10627 to float
  %10630 = uitofp i32 %10628 to float
  %10631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10632 = extractvalue %dx.types.CBufRet.f32 %10631, 0
  %10633 = extractvalue %dx.types.CBufRet.f32 %10631, 1
  %10634 = fmul fast float %10629, %10553
  %10635 = fmul fast float %10630, %10554
  %10636 = fadd fast float %10634, -5.000000e-01
  %10637 = fadd fast float %10635, -5.000000e-01
  %10638 = call float @dx.op.unary.f32(i32 22, float %10636)  ; Frc(value)
  %10639 = call float @dx.op.unary.f32(i32 22, float %10637)  ; Frc(value)
  %10640 = fmul fast float %10638, %10638
  %10641 = fmul fast float %10640, %10638
  %10642 = fsub fast float 3.000000e+00, %10638
  %10643 = fmul fast float %10640, %10642
  %10644 = fmul fast float %10638, 3.000000e+00
  %10645 = fmul fast float %10641, 3.000000e+00
  %10646 = fmul fast float %10640, 6.000000e+00
  %10647 = fsub fast float %10645, %10646
  %10648 = fadd fast float %10647, 4.000000e+00
  %10649 = fmul fast float %10648, 0x3FC5555560000000
  %10650 = fmul fast float %10641, -3.000000e+00
  %10651 = fadd fast float %10640, %10638
  %10652 = fmul fast float %10651, 3.000000e+00
  %10653 = fadd fast float %10650, 1.000000e+00
  %10654 = fadd fast float %10653, %10652
  %10655 = fmul fast float %10641, 0x3FC5555560000000
  %10656 = fmul fast float %10639, %10639
  %10657 = fmul fast float %10656, %10639
  %10658 = fsub fast float 3.000000e+00, %10639
  %10659 = fmul fast float %10656, %10658
  %10660 = fmul fast float %10639, 3.000000e+00
  %10661 = fmul fast float %10657, 3.000000e+00
  %10662 = fmul fast float %10656, 6.000000e+00
  %10663 = fsub fast float %10661, %10662
  %10664 = fadd fast float %10663, 4.000000e+00
  %10665 = fmul fast float %10664, 0x3FC5555560000000
  %10666 = fmul fast float %10657, -3.000000e+00
  %10667 = fadd fast float %10656, %10639
  %10668 = fmul fast float %10667, 3.000000e+00
  %10669 = fadd fast float %10666, 1.000000e+00
  %10670 = fadd fast float %10669, %10668
  %10671 = fmul fast float %10657, 0x3FC5555560000000
  %10672 = fadd fast float %10638, 1.000000e+00
  %10673 = fsub fast float 1.000000e+00, %10644
  %10674 = fadd fast float %10673, %10643
  %10675 = fadd fast float %10674, %10648
  %10676 = fmul fast float %10675, 0x3FC5555560000000
  %10677 = fdiv fast float %10649, %10676
  %10678 = fsub fast float %10672, %10677
  %10679 = fsub fast float 1.000000e+00, %10638
  %10680 = fadd fast float %10654, %10641
  %10681 = fmul fast float %10680, 0x3FC5555560000000
  %10682 = fdiv fast float %10655, %10681
  %10683 = fadd fast float %10679, %10682
  %10684 = fadd fast float %10639, 1.000000e+00
  %10685 = fsub fast float 1.000000e+00, %10660
  %10686 = fadd fast float %10685, %10659
  %10687 = fadd fast float %10686, %10664
  %10688 = fmul fast float %10687, 0x3FC5555560000000
  %10689 = fdiv fast float %10665, %10688
  %10690 = fsub fast float %10684, %10689
  %10691 = fsub fast float 1.000000e+00, %10639
  %10692 = fadd fast float %10670, %10657
  %10693 = fmul fast float %10692, 0x3FC5555560000000
  %10694 = fdiv fast float %10671, %10693
  %10695 = fadd fast float %10694, %10691
  %10696 = fmul fast float %10678, %10632
  %10697 = fsub fast float %10553, %10696
  %10698 = fmul fast float %10683, %10632
  %10699 = fadd fast float %10698, %10553
  %10700 = fmul fast float %10695, %10633
  %10701 = fadd fast float %10700, %10554
  %10702 = fmul fast float %10690, %10633
  %10703 = fsub fast float %10554, %10702
  %10704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10697, float %10703, float %10621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10705 = extractvalue %dx.types.ResRet.f32 %10704, 0
  %10706 = extractvalue %dx.types.ResRet.f32 %10704, 1
  %10707 = extractvalue %dx.types.ResRet.f32 %10704, 2
  %10708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10699, float %10703, float %10621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10709 = extractvalue %dx.types.ResRet.f32 %10708, 0
  %10710 = extractvalue %dx.types.ResRet.f32 %10708, 1
  %10711 = extractvalue %dx.types.ResRet.f32 %10708, 2
  %10712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10697, float %10701, float %10621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10713 = extractvalue %dx.types.ResRet.f32 %10712, 0
  %10714 = extractvalue %dx.types.ResRet.f32 %10712, 1
  %10715 = extractvalue %dx.types.ResRet.f32 %10712, 2
  %10716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10699, float %10701, float %10621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10717 = extractvalue %dx.types.ResRet.f32 %10716, 0
  %10718 = extractvalue %dx.types.ResRet.f32 %10716, 1
  %10719 = extractvalue %dx.types.ResRet.f32 %10716, 2
  %10720 = fsub fast float %10713, %10705
  %10721 = fsub fast float %10714, %10706
  %10722 = fsub fast float %10715, %10707
  %10723 = fmul fast float %10720, %10693
  %10724 = fmul fast float %10721, %10693
  %10725 = fmul fast float %10722, %10693
  %10726 = fadd fast float %10723, %10705
  %10727 = fadd fast float %10724, %10706
  %10728 = fadd fast float %10725, %10707
  %10729 = fsub fast float %10717, %10709
  %10730 = fsub fast float %10718, %10710
  %10731 = fsub fast float %10719, %10711
  %10732 = fmul fast float %10729, %10693
  %10733 = fmul fast float %10730, %10693
  %10734 = fmul fast float %10731, %10693
  %10735 = fsub fast float %10709, %10726
  %10736 = fadd fast float %10735, %10732
  %10737 = fsub fast float %10710, %10727
  %10738 = fadd fast float %10737, %10733
  %10739 = fsub fast float %10711, %10728
  %10740 = fadd fast float %10739, %10734
  %10741 = fmul fast float %10736, %10681
  %10742 = fmul fast float %10738, %10681
  %10743 = fmul fast float %10740, %10681
  %10744 = fadd fast float %10741, %10726
  %10745 = fadd fast float %10742, %10727
  %10746 = fadd fast float %10743, %10728
  %10747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10748 = extractvalue %dx.types.CBufRet.f32 %10747, 1
  %10749 = fmul fast float %10744, %10748
  %10750 = fmul fast float %10745, %10748
  %10751 = fmul fast float %10746, %10748
  br label %10752

; <label>:10752                                   ; preds = %10583, %10540
  %10753 = phi float [ %10623, %10583 ], [ 1.000000e+00, %10540 ]
  %10754 = phi float [ %10624, %10583 ], [ 1.000000e+00, %10540 ]
  %10755 = phi float [ %10625, %10583 ], [ 1.000000e+00, %10540 ]
  %10756 = phi float [ %10749, %10583 ], [ 0.000000e+00, %10540 ]
  %10757 = phi float [ %10750, %10583 ], [ 0.000000e+00, %10540 ]
  %10758 = phi float [ %10751, %10583 ], [ 0.000000e+00, %10540 ]
  %10759 = fmul fast float %10756, %9090
  %10760 = fmul fast float %10757, %9092
  %10761 = fmul fast float %10758, %9094
  %10762 = fmul fast float %10753, %10547
  %10763 = call float @dx.op.dot3.f32(i32 55, float %10753, float %10754, float %10755, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10764 = call float @dx.op.dot3.f32(i32 55, float %10759, float %10760, float %10761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10765 = select i1 %259, float %10763, float %10753
  %10766 = select i1 %259, float %10763, float %10754
  %10767 = select i1 %259, float 1.000000e+00, float %10755
  %10768 = select i1 %259, float %10764, float %10759
  %10769 = select i1 %259, float 0.000000e+00, float %10760
  %10770 = select i1 %259, float 0.000000e+00, float %10761
  %10771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10772 = extractvalue %dx.types.CBufRet.i32 %10771, 3
  %10773 = and i32 %10772, 3
  %10774 = icmp ne i32 %10773, 0
  %10775 = and i32 %10772, 4
  %10776 = icmp ne i32 %10775, 0
  %10777 = and i1 %10774, %10776
  %10778 = and i1 %259, %10777
  br i1 %10778, label %10779, label %10785

; <label>:10779                                   ; preds = %10752
  %10780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10781 = extractvalue %dx.types.CBufRet.f32 %10780, 1
  %10782 = fadd fast float %10762, -1.000000e+00
  %10783 = fmul fast float %10781, %10782
  %10784 = fadd fast float %10783, 1.000000e+00
  br label %10785

; <label>:10785                                   ; preds = %10779, %10752
  %10786 = phi float [ %10784, %10779 ], [ %10762, %10752 ]
  %10787 = fadd fast float %10544, %10541
  %10788 = fmul fast float %10765, %10787
  %10789 = fadd fast float %10788, %10768
  %10790 = fadd fast float %10545, %10542
  %10791 = fmul fast float %10766, %10790
  %10792 = fadd fast float %10791, %10769
  %10793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10794 = extractvalue %dx.types.CBufRet.f32 %10793, 0
  br i1 %259, label %10795, label %10810

; <label>:10795                                   ; preds = %10785
  %10796 = fadd fast float %10789, %10792
  %10797 = fmul fast float %10794, %10796
  %10798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10799 = extractvalue %dx.types.CBufRet.f32 %10798, 3
  %10800 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %10801 = fsub fast float %9103, %9097
  %10802 = fadd fast float %10801, %9104
  %10803 = fsub fast float %10802, %10800
  %10804 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %10805 = fmul fast float %10803, %10804
  %10806 = call float @dx.op.unary.f32(i32 7, float %10805)  ; Saturate(value)
  %10807 = fsub fast float %10806, %10799
  %10808 = fmul fast float %10807, %10786
  %10809 = fadd fast float %10808, %10799
  br label %10836

; <label>:10810                                   ; preds = %10785
  %10811 = fadd fast float %10546, %10543
  %10812 = fmul fast float %10767, %10811
  %10813 = fadd fast float %10812, %10770
  %10814 = fmul fast float %10794, %10789
  %10815 = fmul fast float %10794, %10792
  %10816 = fmul fast float %10794, %10813
  %10817 = call float @dx.op.binary.f32(i32 35, float %10815, float %10816)  ; FMax(a,b)
  %10818 = call float @dx.op.binary.f32(i32 35, float %10814, float %10817)  ; FMax(a,b)
  %10819 = call float @dx.op.binary.f32(i32 35, float %9092, float %9094)  ; FMax(a,b)
  %10820 = call float @dx.op.binary.f32(i32 35, float %9090, float %10819)  ; FMax(a,b)
  %10821 = call float @dx.op.binary.f32(i32 35, float %10818, float %10820)  ; FMax(a,b)
  %10822 = fcmp fast ugt float %10821, 0x3F10000000000000
  br i1 %10822, label %10824, label %10823

; <label>:10823                                   ; preds = %10810
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10824

; <label>:10824                                   ; preds = %10823, %10810
  %10825 = add i32 %61, 356
  %10826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10825, i32 undef)  ; BufferLoad(srv,index,wot)
  %10827 = extractvalue %dx.types.ResRet.i32 %10826, 0
  %10828 = and i32 %10827, 32
  %10829 = icmp eq i32 %10828, 0
  br i1 %10829, label %10836, label %10830

; <label>:10830                                   ; preds = %10824
  %10831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10832 = extractvalue %dx.types.CBufRet.f32 %10831, 0
  %10833 = fmul fast float %10832, 0x3FE99999A0000000
  %10834 = fadd fast float %10832, %10814
  %10835 = fadd fast float %10833, %10816
  br label %10836

; <label>:10836                                   ; preds = %10830, %10824, %10795
  %10837 = phi float [ 1.000000e+00, %10795 ], [ %9092, %10830 ], [ %9092, %10824 ]
  %10838 = phi float [ 1.000000e+00, %10795 ], [ %9094, %10830 ], [ %9094, %10824 ]
  %10839 = phi float [ %10797, %10795 ], [ %10834, %10830 ], [ %10814, %10824 ]
  %10840 = phi float [ %10809, %10795 ], [ %10815, %10830 ], [ %10815, %10824 ]
  %10841 = phi float [ 1.000000e+00, %10795 ], [ %10835, %10830 ], [ %10816, %10824 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10842 = call float @dx.op.binary.f32(i32 36, float %10839, float 3.225500e+04)  ; FMin(a,b)
  %10843 = call float @dx.op.binary.f32(i32 36, float %10840, float 3.225500e+04)  ; FMin(a,b)
  %10844 = call float @dx.op.binary.f32(i32 36, float %10841, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10842)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10843)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10844)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10845 = call float @dx.op.binary.f32(i32 36, float %9090, float 3.225500e+04)  ; FMin(a,b)
  %10846 = call float @dx.op.binary.f32(i32 36, float %10837, float 3.225500e+04)  ; FMin(a,b)
  %10847 = call float @dx.op.binary.f32(i32 36, float %10838, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10845)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10846)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10847)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!74 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !105}
!76 = !{!77, !101, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !99, !100}
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
!97 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !79, i8 1, i32 1, i8 2, i32 13, i8 1, !98}
!98 = !{i32 3, i32 2}
!99 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 14, i8 0, !96}
!100 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102, !103}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!103 = !{i32 1, !"SV_Target", i8 9, i8 16, !104, i8 0, i32 1, i8 4, i32 1, i8 0, !80}
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

