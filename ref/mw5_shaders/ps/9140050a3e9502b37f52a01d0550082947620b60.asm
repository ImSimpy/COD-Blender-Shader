;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; NORMAL                   0   xyz         1     NONE   float   xyz 
; FOAMMASK                 0      w        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; WATER_SUBTILE_ID         0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; SV_ClipDistance          0   x           4  CLIPDST   float       
; SV_ClipDistance          1    y          4  CLIPDST   float       
; DEBUG_VALUE              0   xyzw        5     NONE   float   xyz 
; WIREFRAME_COLOR          0   xyz         6     NONE   float   xyz 
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
; shader hash: 2a2a82e7f16e6593e5a3a8cd4764107c
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
; NORMAL                   0                 linear       
; TEXCOORD                 0                 linear       
; FOAMMASK                 0                 linear       
; WATER_SUBTILE_ID         0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_ClipDistance          0                 linear       
; SV_ClipDistance          1                 linear       
; DEBUG_VALUE              0                 linear       
; WIREFRAME_COLOR          0                 linear       
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
;   [3376 x i8] (type annotation not present)
;
; }
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
; Resource bind info for 
; {
;
;   [1144 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          2d      T2     t69,space2     1
;                                   texture    byte         r/o      T3             t0     1
;                                   textureunorm_f32          2d      T4             t1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t58,space2     1
;                                   texture     f32          2d      T7     t59,space2     1
;                                   texture     f32          2d      T8     t61,space2     1
;                                   texture    byte         r/o      T9     t45,space1     1
;                                   texture    byte         r/o     T10     t46,space1     1
;                                   texture    byte         r/o     T11     t47,space1     1
;                                   texture    byte         r/o     T12             t2     1
;                                   texture    byte         r/o     T13             t3     1
;                                   texture     f32     2darray     T14     t16,space2     1
;                                   texture     f32          3d     T15     t15,space2     1
;                                   texture     f32          2d     T16     t13,space2     1
;                                   texture     u32          2d     T17     t17,space2     1
;                                   texture     f32          3d     T18     t18,space2     1
;                                   texture    byte         r/o     T19      t3,space1     1
;                                   texture    byte         r/o     T20      t4,space1     1
;                                   texture    byte         r/o     T21      t5,space1     1
;                                   texture    byte         r/o     T22      t6,space1     1
;                                   texture     f32          2d     T23     t37,space2     1
;                                   texture     f32          2d     T24             t4     1
;                                   texture     f32     2darray     T25     t49,space2     1
;                                   texture     f32     2darray     T26     t35,space2     1
;                                   texture     f32          2d     T27     t34,space2     1
;                                   texture     f32          3d     T28     t31,space2     1
;                                   texture    byte         r/o     T29     t10,space1     1
;                                   texture    byte         r/o     T30      t1,space1     1
;                                   texture     f32          1d     T31     t32,space2     1
;                                   texture     f32          3d     T32     t82,space2     1
;                                   texture     f32     2darray     T33      t8,space2     1
;                                   texture    byte         r/o     T34     t68,space1     1
;                                   texture     f32          2d     T35      t0,space2     1
;                                   texture    byte         r/o     T36     t11,space1     1
;                                   texture    byte         r/o     T37     t13,space1     1
;                                   texture    byte         r/o     T38     t16,space1     1
;                                   texture    byte         r/o     T39     t17,space1     1
;                                   texture     f32          2d     T40             t8     1
;                                   texture     f32     2darray     T41             t5     1
;                                       UAV     f32          2d      U0             u7     1
;                                       UAV  struct         r/w      U1             u0     1
;
;
; ViewId state:
;
; Number of inputs: 27, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 21, 25 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 22, 26 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 24 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 21, 25 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 22, 26 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%"class.RWStructuredBuffer<GfxWaterReadBackInfo>" = type { %struct.GfxWaterReadBackInfo }
%struct.GfxWaterReadBackInfo = type { %struct.GfxWaterReadBackHitInfo, %struct.GfxWaterReadBackFrustumLight, %struct.GfxWaterReadBackCullingInfo, %struct.GfxWaterReadBackIndirectArgs }
%struct.GfxWaterReadBackHitInfo = type { i32, <3 x float>, <4 x float>, <2 x float>, float, float, float, float, float, float, <3 x float>, float, i32, i32, i32, i32, float, float, <3 x float>, <3 x float>, <2 x float>, <2 x float>, <2 x float>, float, i32, i32, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <4 x float>, <4 x float> }
%struct.GfxWaterReadBackFrustumLight = type { i32, <3 x float>, <3 x float>, float, float, <3 x float>, <4 x i32> }
%struct.GfxWaterReadBackCullingInfo = type { i32, i32, [39 x [4 x i32]] }
%struct.GfxWaterReadBackIndirectArgs = type { i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <3 x i32>, <3 x i32>, float, float }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4
@"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [33 x float] [float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FD9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [15 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x float], align 4
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = icmp ne i32 %57, 0
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %66
  %73 = fmul fast float %71, %67
  %74 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = call float @dx.op.unary.f32(i32 25, float %74)  ; Rsqrt(value)
  %76 = select i1 %58, float 1.000000e+00, float -1.000000e+00
  %77 = fmul fast float %63, %76
  %78 = fmul fast float %77, %75
  %79 = fmul fast float %64, %76
  %80 = fmul fast float %79, %75
  %81 = fmul fast float %65, %76
  %82 = fmul fast float %81, %75
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %72, 2.000000e+00
  %87 = fmul fast float %86, %84
  %88 = fmul fast float %73, 2.000000e+00
  %89 = fmul fast float %88, %85
  %90 = fsub fast float 1.000000e+00, %87
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %90, %94
  %98 = fmul fast float %90, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %91, %100
  %104 = fmul fast float %91, %101
  %105 = fmul fast float %91, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fadd fast float %103, %107
  %111 = fadd fast float %110, %96
  %112 = fadd fast float %104, %108
  %113 = fadd fast float %112, %97
  %114 = fadd fast float %105, %109
  %115 = fadd fast float %114, %98
  %116 = fmul fast float %111, %69
  %117 = fmul fast float %113, %69
  %118 = fmul fast float %115, %69
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %122 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %123 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %124 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %125 = fmul fast float %121, %120
  %126 = fmul fast float %122, %120
  %127 = fmul fast float %123, %120
  %128 = fmul fast float %124, %120
  %129 = call float @dx.op.dot2.f32(i32 54, float %127, float %128, float %127, float %128)  ; Dot2(ax,ay,bx,by)
  %130 = call float @dx.op.dot2.f32(i32 54, float %125, float %126, float %125, float %126)  ; Dot2(ax,ay,bx,by)
  %131 = call float @dx.op.binary.f32(i32 35, float %130, float %129)  ; FMax(a,b)
  %132 = call float @dx.op.unary.f32(i32 23, float %131)  ; Log(value)
  %133 = fmul fast float %132, 5.000000e-01
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %136 = fadd fast float %135, %133
  %137 = call float @dx.op.binary.f32(i32 35, float %136, float 0.000000e+00)  ; FMax(a,b)
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %140 = fadd fast float %139, %137
  %141 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %142 = shl i32 %141, 16
  %143 = or i32 %142, %141
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = fadd fast float %145, %116
  %148 = fadd fast float %146, %117
  %149 = fmul fast float %147, 0x3F53C37960000000
  %150 = fmul fast float %148, 0x3F53C37960000000
  %151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %151, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = fmul fast float %155, %153
  %157 = shl i32 %59, 3
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %159, 16383
  %161 = shl i32 %59, 2
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = and i32 %163, 255
  %165 = mul nuw nsw i32 %160, 148
  %166 = add nuw nsw i32 %165, 4
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = add nuw nsw i32 %165, 8
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = add nuw nsw i32 %165, 60
  %173 = add nuw nsw i32 %165, 92
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = add nuw nsw i32 %165, 96
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = add nuw nsw i32 %165, 100
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = add nuw nsw i32 %165, 104
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = add nuw nsw i32 %165, 108
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = add nuw nsw i32 %165, 116
  %188 = fsub fast float 1.000000e+00, %62
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = fmul fast float %190, %61
  %192 = fmul fast float %190, %188
  %193 = fadd fast float %191, %168
  %194 = fadd fast float %192, %171
  %195 = call float @dx.op.unary.f32(i32 84, float %193)  ; DerivCoarseY(value)
  %196 = call float @dx.op.unary.f32(i32 84, float %194)  ; DerivCoarseY(value)
  %197 = call float @dx.op.unary.f32(i32 83, float %193)  ; DerivCoarseX(value)
  %198 = call float @dx.op.unary.f32(i32 83, float %194)  ; DerivCoarseX(value)
  %199 = call float @dx.op.dot2.f32(i32 54, float %195, float %196, float %195, float %196)  ; Dot2(ax,ay,bx,by)
  %200 = call float @dx.op.dot2.f32(i32 54, float %197, float %198, float %197, float %198)  ; Dot2(ax,ay,bx,by)
  %201 = call float @dx.op.binary.f32(i32 35, float %200, float %199)  ; FMax(a,b)
  %202 = call float @dx.op.unary.f32(i32 23, float %201)  ; Log(value)
  %203 = fmul fast float %202, 5.000000e-01
  %204 = add nuw nsw i32 %165, 20
  %205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = add nuw nsw i32 %165, 24
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = add nuw nsw i32 %165, 28
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = add nuw nsw i32 %165, 32
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = add nuw nsw i32 %165, 40
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = add nuw nsw i32 %165, 44
  %220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = add nuw nsw i32 %165, 48
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = add nuw nsw i32 %165, 52
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = add nuw nsw i32 %165, 56
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = add nuw nsw i32 %165, 112
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = fmul fast float %243, %61
  %245 = fmul fast float %243, %62
  %246 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %247 = fadd fast float %244, %246
  %248 = fadd fast float %245, %246
  %249 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %250 = fmul fast float %249, %61
  %251 = fmul fast float %249, %62
  %252 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %253 = fadd fast float %250, %252
  %254 = fadd fast float %251, %252
  %255 = add i32 %232, 0
  %256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %256, i32 0)  ; GetDimensions(handle,mipLevel)
  %258 = extractvalue %dx.types.Dimensions %257, 0
  %259 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %258)  ; FirstbitLo(value)
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 1
  %262 = sub nsw i32 %261, %259
  %263 = sitofp i32 %262 to float
  %264 = fsub fast float %140, %263
  %265 = call float @dx.op.binary.f32(i32 35, float %264, float 0.000000e+00)  ; FMax(a,b)
  %266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %256, %dx.types.Handle %43, float %247, float %248, float %218, float undef, i32 0, i32 0, i32 undef, float %265)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = fmul fast float %267, %206
  %269 = fadd fast float %268, %209
  %270 = add i32 %234, 0
  %271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %270, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %272 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %271, i32 0)  ; GetDimensions(handle,mipLevel)
  %273 = extractvalue %dx.types.Dimensions %272, 0
  %274 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %273)  ; FirstbitLo(value)
  %275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.i32 %275, 1
  %277 = sub nsw i32 %276, %274
  %278 = sitofp i32 %277 to float
  %279 = fsub fast float %140, %278
  %280 = call float @dx.op.binary.f32(i32 35, float %279, float 0.000000e+00)  ; FMax(a,b)
  %281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %271, %dx.types.Handle %43, float %253, float %254, float %221, float undef, i32 0, i32 0, i32 undef, float %280)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fmul fast float %282, %212
  %284 = fadd fast float %283, %215
  %285 = add i32 %236, 0
  %286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %285, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %287 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %286, i32 0)  ; GetDimensions(handle,mipLevel)
  %288 = extractvalue %dx.types.Dimensions %287, 0
  %289 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %288)  ; FirstbitLo(value)
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 1
  %292 = sub nsw i32 %291, %289
  %293 = sitofp i32 %292 to float
  %294 = fsub fast float %140, %293
  %295 = call float @dx.op.binary.f32(i32 35, float %294, float 0.000000e+00)  ; FMax(a,b)
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %286, %dx.types.Handle %43, float %253, float %254, float %224, float undef, i32 0, i32 0, i32 undef, float %295)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %301 = fmul fast float %300, 2.000000e+00
  %302 = fmul fast float %301, %297
  %303 = fmul fast float %301, %298
  %304 = fsub fast float %302, %300
  %305 = fsub fast float %303, %300
  %306 = fmul fast float %304, %304
  %307 = fmul fast float %305, %305
  %308 = fadd fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %310 = add i32 %238, 0
  %311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %312 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %311, i32 0)  ; GetDimensions(handle,mipLevel)
  %313 = extractvalue %dx.types.Dimensions %312, 0
  %314 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %313)  ; FirstbitLo(value)
  %315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.i32 %315, 1
  %317 = sub nsw i32 %316, %314
  %318 = sitofp i32 %317 to float
  %319 = fsub fast float %140, %318
  %320 = call float @dx.op.binary.f32(i32 35, float %319, float 0.000000e+00)  ; FMax(a,b)
  %321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %311, %dx.types.Handle %43, float %253, float %254, float %227, float undef, i32 0, i32 0, i32 undef, float %320)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = add i32 %241, 0
  %324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %323, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %325 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %324, i32 0)  ; GetDimensions(handle,mipLevel)
  %326 = extractvalue %dx.types.Dimensions %325, 0
  %327 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %326)  ; FirstbitLo(value)
  %328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.i32 %328, 1
  %330 = sub nsw i32 %329, %327
  %331 = sitofp i32 %330 to float
  %332 = fsub fast float %140, %331
  %333 = call float @dx.op.binary.f32(i32 35, float %332, float 0.000000e+00)  ; FMax(a,b)
  %334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %324, %dx.types.Handle %43, float %253, float %254, float %230, float undef, i32 0, i32 0, i32 undef, float %333)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.i32 %336, 0
  %338 = call i32 @dx.op.binary.i32(i32 40, i32 %160, i32 %337)  ; UMin(a,b)
  %339 = mul i32 %338, 36
  %340 = add i32 %339, 4
  %341 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %164)  ; Countbits(value)
  %342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.i32 %342, 0
  %344 = icmp eq i32 %343, 32
  %345 = select i1 %344, float %54, float %140
  %346 = and i32 %343, -2
  %347 = icmp eq i32 %346, 30
  %348 = or i1 %347, %344
  br i1 %348, label %349, label %390

; <label>:349                                     ; preds = %0
  %350 = extractvalue %dx.types.ResRet.i32 %174, 0
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 0
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %369, label %354

; <label>:354                                     ; preds = %349
  %355 = icmp eq i32 %352, 1
  br i1 %355, label %369, label %356

; <label>:356                                     ; preds = %354
  %357 = icmp eq i32 %352, 2
  br i1 %357, label %369, label %358

; <label>:358                                     ; preds = %356
  %359 = icmp eq i32 %352, 3
  br i1 %359, label %369, label %360

; <label>:360                                     ; preds = %358
  %361 = icmp eq i32 %352, 4
  br i1 %361, label %369, label %362

; <label>:362                                     ; preds = %360
  %363 = call i32 @dx.op.binary.i32(i32 39, i32 %352, i32 6)  ; UMax(a,b)
  %364 = call i32 @dx.op.binary.i32(i32 40, i32 %363, i32 13)  ; UMin(a,b)
  %365 = shl i32 %364, 2
  %366 = add i32 %173, %365
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  br label %369

; <label>:369                                     ; preds = %362, %360, %358, %356, %354, %349
  %370 = phi i32 [ %368, %362 ], [ %350, %349 ], [ %177, %354 ], [ %180, %356 ], [ %183, %358 ], [ %186, %360 ]
  %371 = add i32 %370, 0
  %372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %371, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %373 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %372, i32 0)  ; GetDimensions(handle,mipLevel)
  %374 = extractvalue %dx.types.Dimensions %373, 0
  %375 = icmp eq i32 %374, 1
  %376 = icmp eq i32 %374, 4
  %377 = or i1 %375, %376
  br i1 %377, label %384, label %378

; <label>:378                                     ; preds = %369
  %379 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %374)  ; FirstbitLo(value)
  %380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.i32 %380, 1
  %382 = sub nsw i32 %381, %379
  %383 = call i32 @dx.op.binary.i32(i32 37, i32 %382, i32 0)  ; IMax(a,b)
  br label %384

; <label>:384                                     ; preds = %378, %369
  %385 = phi i32 [ %383, %378 ], [ -1, %369 ]
  %386 = sitofp i32 %385 to float
  %387 = icmp slt i32 %385, 0
  %388 = fsub fast float %345, %386
  %389 = select i1 %387, float 0.000000e+00, float %388
  br label %390

; <label>:390                                     ; preds = %384, %0
  %391 = phi float [ 0.000000e+00, %0 ], [ %386, %384 ]
  %392 = phi float [ 0.000000e+00, %0 ], [ %389, %384 ]
  %393 = icmp eq i32 %164, 0
  br i1 %393, label %1196, label %394

; <label>:394                                     ; preds = %390
  br label %395

; <label>:395                                     ; preds = %1175, %394
  %396 = phi float [ %1176, %1175 ], [ 0.000000e+00, %394 ]
  %397 = phi float [ %1177, %1175 ], [ 0.000000e+00, %394 ]
  %398 = phi float [ %1178, %1175 ], [ 0.000000e+00, %394 ]
  %399 = phi float [ %1179, %1175 ], [ 0.000000e+00, %394 ]
  %400 = phi float [ %1180, %1175 ], [ 0.000000e+00, %394 ]
  %401 = phi float [ %1181, %1175 ], [ 0.000000e+00, %394 ]
  %402 = phi float [ %1182, %1175 ], [ 0.000000e+00, %394 ]
  %403 = phi float [ %1183, %1175 ], [ 0.000000e+00, %394 ]
  %404 = phi i32 [ %1184, %1175 ], [ 0, %394 ]
  %405 = phi float [ %1185, %1175 ], [ 0.000000e+00, %394 ]
  %406 = phi i32 [ %1186, %1175 ], [ 0, %394 ]
  %407 = phi float [ %1187, %1175 ], [ 0.000000e+00, %394 ]
  %408 = phi float [ %1188, %1175 ], [ 0.000000e+00, %394 ]
  %409 = phi float [ %1189, %1175 ], [ 0.000000e+00, %394 ]
  %410 = phi i32 [ %419, %1175 ], [ %164, %394 ]
  %411 = phi i32 [ %1190, %1175 ], [ %143, %394 ]
  %412 = phi i32 [ %1191, %1175 ], [ %143, %394 ]
  %413 = phi i32 [ %1192, %1175 ], [ %143, %394 ]
  %414 = phi i32 [ %1193, %1175 ], [ %143, %394 ]
  %415 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %410)  ; FirstbitLo(value)
  %416 = and i32 %415, 31
  %417 = shl i32 1, %416
  %418 = xor i32 %417, -1
  %419 = and i32 %410, %418
  %420 = shl i32 %415, 2
  %421 = add i32 %172, %420
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = fmul fast float %425, %61
  %427 = fmul fast float %425, %62
  %428 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %429 = fadd fast float %426, %428
  %430 = fadd fast float %427, %428
  %431 = add i32 %420, %187
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = add i32 %433, 0
  %435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %434, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %436 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %435, i32 0)  ; GetDimensions(handle,mipLevel)
  %437 = extractvalue %dx.types.Dimensions %436, 0
  %438 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %437)  ; FirstbitLo(value)
  %439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.i32 %439, 1
  %441 = sub nsw i32 %440, %438
  %442 = sitofp i32 %441 to float
  %443 = fsub fast float %140, %442
  %444 = call float @dx.op.binary.f32(i32 35, float %443, float 0.000000e+00)  ; FMax(a,b)
  %445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %435, %dx.types.Handle %43, float %429, float %430, float %423, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = fcmp fast ogt float %446, 0.000000e+00
  br i1 %447, label %448, label %1175

; <label>:448                                     ; preds = %395
  %449 = add i32 %340, %420
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 32767
  %453 = add i32 %404, 1
  %454 = mul nuw nsw i32 %452, 928
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = or i32 %454, 8
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = or i32 %454, 12
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 1
  %463 = or i32 %454, 20
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = or i32 %454, 24
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = add nuw nsw i32 %454, 40
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = add nuw nsw i32 %454, 72
  %476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = add nuw nsw i32 %454, 80
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = add nuw nsw i32 %454, 228
  %483 = add nuw nsw i32 %454, 564
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = add nuw nsw i32 %454, 580
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = add nuw nsw i32 %454, 596
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = add nuw nsw i32 %454, 620
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = extractvalue %dx.types.ResRet.f32 %500, 1
  %503 = add nuw nsw i32 %454, 628
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = add nuw nsw i32 %454, 648
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = add nuw nsw i32 %454, 696
  %513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = add nuw nsw i32 %454, 708
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = add nuw nsw i32 %454, 812
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = add nuw nsw i32 %454, 816
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 1
  %526 = add nuw nsw i32 %454, 852
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = add nuw nsw i32 %454, 860
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = add nuw nsw i32 %454, 896
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add nuw nsw i32 %454, 900
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add nuw nsw i32 %454, 904
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %456, 512
  %544 = fcmp fast ole float %60, 0x3FA4B5DCC0000000
  %545 = fmul fast float %60, 0x3FB3D07220000000
  %546 = fadd fast float %60, 0x3FAC28F5C0000000
  %547 = fmul fast float %546, 0x3FEE54EDE0000000
  %548 = call float @dx.op.unary.f32(i32 23, float %547)  ; Log(value)
  %549 = fmul fast float %548, 0x4003333340000000
  %550 = call float @dx.op.unary.f32(i32 21, float %549)  ; Exp(value)
  %551 = select i1 %544, float %545, float %550
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = fmul fast float %497, %322
  %554 = fadd fast float %553, %498
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = fmul fast float %555, %446
  %557 = fadd fast float %556, %401
  %558 = call float @dx.op.binary.f32(i32 35, float %552, float %555)  ; FMax(a,b)
  %559 = add i32 %539, 0
  %560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %559, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.i32 %561, 0
  %563 = and i32 %562, 65536
  %564 = icmp eq i32 %563, 0
  %565 = and i32 %562, 262144
  %566 = icmp ne i32 %565, 0
  %567 = and i32 %562, 1048576
  %568 = icmp ne i32 %567, 0
  br i1 %564, label %843, label %569

; <label>:569                                     ; preds = %448
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = fadd fast float %573, %116
  %576 = fadd fast float %574, %117
  %577 = fmul fast float %116, %116
  %578 = fmul fast float %117, %117
  %579 = fadd fast float %577, %578
  %580 = fmul fast float %118, %118
  %581 = fadd fast float %579, %580
  %582 = call float @dx.op.unary.f32(i32 24, float %581)  ; Sqrt(value)
  br i1 %568, label %583, label %629

; <label>:583                                     ; preds = %569
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = fcmp fast ogt float %582, %585
  %587 = zext i1 %586 to i32
  %588 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %589 = fcmp fast ogt float %582, %588
  %590 = zext i1 %589 to i32
  %591 = add nuw nsw i32 %590, %587
  %592 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %593 = fcmp fast ogt float %582, %592
  %594 = zext i1 %593 to i32
  %595 = add nuw nsw i32 %591, %594
  %596 = icmp ult i32 %595, 3
  %597 = zext i1 %596 to i32
  %598 = shl nuw nsw i32 %595, 2
  %599 = add nuw nsw i32 %598, 48
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %599)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %602 = fcmp fast ogt float %582, %601
  %603 = zext i1 %602 to i32
  %604 = or i32 %598, 1
  %605 = add nuw nsw i32 %604, 48
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %605)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %608 = fcmp fast ogt float %582, %607
  %609 = zext i1 %608 to i32
  %610 = add nuw nsw i32 %609, %603
  %611 = or i32 %598, 2
  %612 = add nuw nsw i32 %611, 48
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %612)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %615 = fcmp fast ogt float %582, %614
  %616 = zext i1 %615 to i32
  %617 = add nuw nsw i32 %610, %616
  %618 = add i32 %465, -1
  %619 = call i32 @dx.op.binary.i32(i32 40, i32 %617, i32 %618)  ; UMin(a,b)
  %620 = add i32 %598, %619
  %621 = call i32 @dx.op.binary.i32(i32 40, i32 %620, i32 12)  ; UMin(a,b)
  %622 = add i32 %621, 48
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %622)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = fcmp fast oge float %582, %624
  %626 = zext i1 %625 to i32
  %627 = call i32 @dx.op.binary.i32(i32 40, i32 %465, i32 %597)  ; UMin(a,b)
  %628 = call i32 @dx.op.binary.i32(i32 40, i32 %626, i32 %627)  ; UMin(a,b)
  br label %629

; <label>:629                                     ; preds = %583, %569
  %630 = phi i32 [ %621, %583 ], [ 0, %569 ]
  %631 = phi i32 [ %628, %583 ], [ 0, %569 ]
  %632 = add i32 %631, %465
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %832, label %634

; <label>:634                                     ; preds = %629
  br label %635

; <label>:635                                     ; preds = %801, %634
  %636 = phi float [ %828, %801 ], [ 0.000000e+00, %634 ]
  %637 = phi float [ %820, %801 ], [ 0.000000e+00, %634 ]
  %638 = phi float [ %821, %801 ], [ 0.000000e+00, %634 ]
  %639 = phi i32 [ %651, %801 ], [ %630, %634 ]
  %640 = phi i32 [ %829, %801 ], [ 0, %634 ]
  %641 = add i32 %640, %639
  br i1 %568, label %642, label %650

; <label>:642                                     ; preds = %635
  %643 = and i32 %641, -4
  %644 = add i32 %643, %465
  %645 = icmp uge i32 %641, %644
  %646 = sub i32 4, %465
  %647 = select i1 %645, i32 %646, i32 0
  %648 = add i32 %647, %639
  %649 = add i32 %647, %641
  br label %650

; <label>:650                                     ; preds = %642, %635
  %651 = phi i32 [ %648, %642 ], [ %639, %635 ]
  %652 = phi i32 [ %649, %642 ], [ %641, %635 ]
  %653 = and i32 %652, 3
  %654 = select i1 %568, i32 %653, i32 %640
  %655 = lshr i32 %652, 2
  %656 = select i1 %568, i32 %655, i32 0
  %657 = add i32 %652, 32
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %657)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %661 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %662 = extractvalue %dx.types.CBufRet.f32 %658, 3
  %663 = fmul fast float %659, %582
  %664 = fadd fast float %663, %660
  %665 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %666 = fmul fast float %661, %582
  %667 = fadd fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %669 = call float @dx.op.binary.f32(i32 36, float %665, float %668)  ; FMin(a,b)
  %670 = select i1 %568, float %669, float 1.000000e+00
  %671 = mul i32 %654, 72
  %672 = add i32 %482, %671
  %673 = add i32 %672, 16
  %674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = extractvalue %dx.types.ResRet.f32 %674, 1
  %677 = extractvalue %dx.types.ResRet.f32 %674, 2
  %678 = extractvalue %dx.types.ResRet.f32 %674, 3
  %679 = add i32 %672, 36
  %680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = add i32 %672, 56
  %683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = fmul fast float %309, 3.906250e-03
  %686 = fmul fast float %685, %481
  %687 = fmul fast float %686, %681
  %688 = fmul fast float %687, %684
  %689 = extractvalue %dx.types.ResRet.f32 %683, 1
  %690 = fadd fast float %688, %689
  %691 = call float @dx.op.binary.f32(i32 35, float %690, float 0.000000e+00)  ; FMax(a,b)
  %692 = add i32 %672, 32
  %693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  br i1 %566, label %695, label %728

; <label>:695                                     ; preds = %650
  %696 = fmul fast float %681, %304
  %697 = fmul fast float %681, %305
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %700 = add i32 %672, 40
  %701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = extractvalue %dx.types.ResRet.f32 %701, 3
  %706 = fadd fast float %699, %156
  %707 = fadd fast float %706, %704
  %708 = fmul fast float %706, %703
  %709 = call float @dx.op.unary.f32(i32 29, float %708)  ; Round_z(value)
  %710 = fmul fast float %702, %709
  %711 = fsub fast float %706, %710
  %712 = fmul fast float %707, %703
  %713 = call float @dx.op.unary.f32(i32 29, float %712)  ; Round_z(value)
  %714 = fmul fast float %713, %702
  %715 = fsub fast float %707, %714
  %716 = fmul fast float %711, %696
  %717 = fmul fast float %711, %697
  %718 = fmul fast float %715, %696
  %719 = fmul fast float %715, %697
  %720 = fsub fast float %575, %716
  %721 = fsub fast float %576, %717
  %722 = fsub fast float %575, %718
  %723 = fsub fast float %576, %719
  %724 = fsub fast float %704, %711
  %725 = call float @dx.op.unary.f32(i32 6, float %724)  ; FAbs(value)
  %726 = fmul fast float %725, %705
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  br label %728

; <label>:728                                     ; preds = %695, %650
  %729 = phi float [ %720, %695 ], [ %575, %650 ]
  %730 = phi float [ %721, %695 ], [ %576, %650 ]
  %731 = phi float [ %722, %695 ], [ %575, %650 ]
  %732 = phi float [ %723, %695 ], [ %576, %650 ]
  %733 = phi float [ %727, %695 ], [ 0.000000e+00, %650 ]
  %734 = fmul fast float %459, 4.000000e+00
  %735 = uitofp i32 %656 to float
  %736 = fadd fast float %735, %734
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %739 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %740 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %741 = extractvalue %dx.types.CBufRet.f32 %737, 3
  %742 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %738, float* %742, align 4
  %743 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %739, float* %743, align 4
  %744 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %740, float* %744, align 4
  %745 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %741, float* %745, align 4
  %746 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 %656
  %747 = load float, float* %746, align 4, !tbaa !90, !noalias !94
  %748 = fmul fast float %747, %462
  %749 = select i1 %568, float %748, float %462
  %750 = fmul fast float %729, %675
  %751 = call float @dx.op.tertiary.f32(i32 46, float %676, float %730, float %750)  ; FMad(a,b,c)
  %752 = fmul fast float %729, %677
  %753 = call float @dx.op.tertiary.f32(i32 46, float %678, float %730, float %752)  ; FMad(a,b,c)
  %754 = add i32 %672, 8
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = fadd fast float %756, %751
  %759 = fadd fast float %757, %753
  %760 = fmul fast float %758, %749
  %761 = fmul fast float %759, %749
  %762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = fmul fast float %760, %763
  %766 = fmul fast float %761, %764
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %769 = fadd fast float %765, %768
  %770 = fadd fast float %766, %768
  %771 = fmul fast float %731, %675
  %772 = call float @dx.op.tertiary.f32(i32 46, float %676, float %732, float %771)  ; FMad(a,b,c)
  %773 = fmul fast float %731, %677
  %774 = call float @dx.op.tertiary.f32(i32 46, float %678, float %732, float %773)  ; FMad(a,b,c)
  %775 = fadd fast float %756, %772
  %776 = fadd fast float %757, %774
  %777 = fmul fast float %775, %749
  %778 = fmul fast float %776, %749
  %779 = fmul fast float %777, %763
  %780 = fmul fast float %778, %764
  %781 = fadd fast float %779, %768
  %782 = fadd fast float %780, %768
  %783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %769, float %770, float %736, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 3
  %787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %781, float %782, float %736, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %566, label %788, label %801

; <label>:788                                     ; preds = %728
  %789 = extractvalue %dx.types.ResRet.f32 %787, 3
  %790 = extractvalue %dx.types.ResRet.f32 %787, 1
  %791 = extractvalue %dx.types.ResRet.f32 %787, 0
  %792 = fsub fast float %791, %784
  %793 = fsub fast float %790, %785
  %794 = fsub fast float %789, %786
  %795 = fmul fast float %792, %733
  %796 = fmul fast float %793, %733
  %797 = fmul fast float %794, %733
  %798 = fadd fast float %795, %784
  %799 = fadd fast float %796, %785
  %800 = fadd fast float %797, %786
  br label %801

; <label>:801                                     ; preds = %788, %728
  %802 = phi float [ %798, %788 ], [ %784, %728 ]
  %803 = phi float [ %799, %788 ], [ %785, %728 ]
  %804 = phi float [ %800, %788 ], [ %786, %728 ]
  %805 = fmul fast float %802, 2.000000e+00
  %806 = fmul fast float %803, 2.000000e+00
  %807 = fadd fast float %805, -1.000000e+00
  %808 = fadd fast float %806, -1.000000e+00
  %809 = fmul fast float %807, %675
  %810 = call float @dx.op.tertiary.f32(i32 46, float %808, float %677, float %809)  ; FMad(a,b,c)
  %811 = fmul fast float %807, %676
  %812 = call float @dx.op.tertiary.f32(i32 46, float %808, float %678, float %811)  ; FMad(a,b,c)
  %813 = fmul fast float %670, %571
  %814 = fmul fast float %813, %691
  %815 = fmul fast float %814, %694
  %816 = fmul fast float %810, %815
  %817 = fmul fast float %816, %763
  %818 = fmul fast float %812, %815
  %819 = fmul fast float %818, %764
  %820 = fadd fast float %817, %637
  %821 = fadd fast float %819, %638
  %822 = add i32 %672, 64
  %823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = fmul fast float %824, %804
  %826 = extractvalue %dx.types.ResRet.f32 %823, 1
  %827 = fadd fast float %825, %826
  %828 = call float @dx.op.binary.f32(i32 35, float %636, float %827)  ; FMax(a,b)
  %829 = add nuw i32 %640, 1
  %830 = icmp eq i32 %829, %632
  br i1 %830, label %831, label %635

; <label>:831                                     ; preds = %801
  br label %832

; <label>:832                                     ; preds = %831, %629
  %833 = phi float [ 0.000000e+00, %629 ], [ %828, %831 ]
  %834 = phi float [ 0.000000e+00, %629 ], [ %820, %831 ]
  %835 = phi float [ 0.000000e+00, %629 ], [ %821, %831 ]
  %836 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float 1.000000e+00, float %834, float %835, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %837 = call float @dx.op.unary.f32(i32 25, float %836)  ; Rsqrt(value)
  %838 = fmul fast float %837, %834
  %839 = fmul fast float %837, %835
  %840 = fmul fast float %833, %501
  %841 = fadd fast float %840, %502
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  br label %843

; <label>:843                                     ; preds = %832, %448
  %844 = phi float [ %838, %832 ], [ 0.000000e+00, %448 ]
  %845 = phi float [ %839, %832 ], [ 0.000000e+00, %448 ]
  %846 = phi float [ %837, %832 ], [ 0.000000e+00, %448 ]
  %847 = phi float [ %842, %832 ], [ 0.000000e+00, %448 ]
  %848 = fmul fast float %844, %446
  %849 = fmul fast float %845, %446
  %850 = fadd fast float %848, %396
  %851 = fadd fast float %849, %397
  %852 = fadd fast float %847, %558
  %853 = fmul fast float %846, %446
  %854 = fadd fast float %848, %398
  %855 = fadd fast float %849, %399
  %856 = fadd fast float %853, %400
  %857 = fmul fast float %847, %446
  %858 = fadd fast float %857, %402
  %859 = fmul fast float %852, %446
  %860 = fadd fast float %859, %403
  %861 = icmp ne i32 %465, 0
  %862 = select i1 %861, i32 2, i32 0
  %863 = fcmp fast ogt float %847, 0.000000e+00
  %864 = select i1 %863, i32 4, i32 0
  %865 = icmp ne i32 %543, 0
  %866 = icmp ne i32 %528, 0
  %867 = and i1 %865, %866
  br i1 %867, label %868, label %936

; <label>:868                                     ; preds = %843
  %869 = add i32 %528, 0
  %870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %869, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %876 = fadd fast float %874, %116
  %877 = fadd fast float %875, %117
  %878 = fmul fast float %876, %486
  %879 = fmul fast float %877, %486
  %880 = fmul fast float %872, %487
  %881 = fmul fast float %872, %488
  %882 = fadd fast float %878, %880
  %883 = fadd fast float %879, %881
  %884 = fmul fast float %876, %492
  %885 = fmul fast float %877, %492
  %886 = fmul fast float %872, %493
  %887 = fmul fast float %872, %494
  %888 = fadd fast float %884, %886
  %889 = fadd fast float %885, %887
  %890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %870, %dx.types.Handle %890, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = extractvalue %dx.types.ResRet.f32 %891, 3
  %896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %870, %dx.types.Handle %890, float %888, float %889, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  %901 = fmul fast float %892, %531
  %902 = fadd fast float %901, %532
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = fadd fast float %893, %895
  %905 = fmul fast float %904, %533
  %906 = fsub fast float %905, %533
  %907 = fsub fast float %893, %895
  %908 = fmul fast float %907, %533
  %909 = fmul fast float %897, %531
  %910 = fadd fast float %909, %532
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fadd fast float %898, %900
  %913 = fmul fast float %912, %533
  %914 = fsub fast float %913, %533
  %915 = fsub fast float %898, %900
  %916 = fmul fast float %915, %533
  %917 = fmul fast float %906, %485
  %918 = fmul fast float %908, %485
  %919 = fmul fast float %914, %491
  %920 = fmul fast float %916, %491
  %921 = fadd fast float %919, %917
  %922 = fadd fast float %920, %918
  %923 = fmul fast float %894, %485
  %924 = fmul fast float %899, %491
  %925 = fadd fast float %924, %923
  %926 = fmul fast float %903, %485
  %927 = fmul fast float %911, %491
  %928 = fadd fast float %927, %926
  %929 = fmul fast float %921, %446
  %930 = fmul fast float %922, %446
  %931 = fadd fast float %929, %850
  %932 = fadd fast float %930, %851
  %933 = fmul fast float %925, %446
  %934 = fadd fast float %933, 1.000000e+00
  %935 = fmul fast float %928, %446
  br label %936

; <label>:936                                     ; preds = %868, %843
  %937 = phi float [ %931, %868 ], [ %850, %843 ]
  %938 = phi float [ %932, %868 ], [ %851, %843 ]
  %939 = phi float [ %934, %868 ], [ 1.000000e+00, %843 ]
  %940 = phi float [ %935, %868 ], [ %474, %843 ]
  %941 = fmul fast float %518, %309
  %942 = fadd fast float %941, %519
  %943 = call float @dx.op.binary.f32(i32 35, float %942, float 0.000000e+00)  ; FMax(a,b)
  %944 = fmul fast float %943, %514
  %945 = fadd fast float %944, %515
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = fmul fast float %859, %946
  %948 = fadd fast float %947, %405
  %949 = select i1 %866, i32 8, i32 0
  %950 = shl i32 %456, 3
  %951 = and i32 %950, 16
  %952 = shl i32 %456, 2
  %953 = and i32 %952, 256
  %954 = and i32 %456, 16
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %957

; <label>:956                                     ; preds = %936
  br label %1023

; <label>:957                                     ; preds = %936
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = fadd fast float %959, %116
  %962 = fadd fast float %960, %117
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = fsub fast float %961, %964
  %967 = fsub fast float %962, %965
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = fmul fast float %966, %969
  %971 = fmul fast float %967, %969
  %972 = fadd fast float %970, 5.000000e-01
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fcmp fast olt float %972, 0.000000e+00
  %975 = fcmp fast olt float %973, 0.000000e+00
  %976 = or i1 %974, %975
  %977 = fcmp fast oge float %972, 1.000000e+00
  %978 = fcmp fast oge float %973, 1.000000e+00
  %979 = or i1 %977, %978
  %980 = or i1 %976, %979
  br i1 %980, label %1014, label %981

; <label>:981                                     ; preds = %957
  %982 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %983 = fadd fast float %982, %118
  %984 = fmul fast float %969, %961
  %985 = fmul fast float %969, %962
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %988 = fsub fast float %983, %987
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %990 = fmul fast float %988, %989
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = call float @dx.op.binary.f32(i32 36, float %973, float %991)  ; FMin(a,b)
  %993 = call float @dx.op.binary.f32(i32 36, float %972, float %992)  ; FMin(a,b)
  %994 = call float @dx.op.binary.f32(i32 35, float %973, float %991)  ; FMax(a,b)
  %995 = call float @dx.op.binary.f32(i32 35, float %972, float %994)  ; FMax(a,b)
  %996 = fsub fast float 1.000000e+00, %995
  %997 = call float @dx.op.binary.f32(i32 36, float %993, float %996)  ; FMin(a,b)
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 3
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1002 = call float @dx.op.binary.f32(i32 35, float %1001, float %999)  ; FMax(a,b)
  %1003 = fsub fast float %1002, %1001
  %1004 = fsub fast float %997, %1001
  %1005 = fdiv fast float %1004, %1003
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = fmul fast float %1006, 2.000000e+00
  %1008 = fsub fast float 3.000000e+00, %1007
  %1009 = fmul fast float %1006, %1006
  %1010 = fmul fast float %1009, %1008
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %984, float %985, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = fmul fast float %1010, %1012
  br label %1014

; <label>:1014                                    ; preds = %981, %957
  %1015 = phi float [ %1013, %981 ], [ 0.000000e+00, %957 ]
  %1016 = fmul fast float %525, %193
  %1017 = fmul fast float %525, %194
  %1018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1019 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %560, %dx.types.Handle %1018, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = fmul fast float %1020, %1015
  %1022 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1021)  ; FMax(a,b)
  br label %1023

; <label>:1023                                    ; preds = %1014, %956
  %1024 = phi float [ %1022, %1014 ], [ 0.000000e+00, %956 ]
  %1025 = fmul fast float %194, 3.906250e-03
  %1026 = fmul fast float %193, 7.812500e-03
  %1027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1028 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %560, %dx.types.Handle %1027, float %1026, float %1025, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1029 = add i32 %539, 0
  %1030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1031 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1030, i32 0)  ; GetDimensions(handle,mipLevel)
  %1032 = extractvalue %dx.types.Dimensions %1031, 0
  %1033 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1032)  ; FirstbitLo(value)
  %1034 = uitofp i32 %1033 to float
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1039 = fadd fast float %203, -7.000000e+00
  %1040 = fadd fast float %1039, %1034
  %1041 = fadd fast float %1040, %1036
  %1042 = fadd fast float %1041, %1038
  %1043 = call float @dx.op.binary.f32(i32 35, float %1042, float 0.000000e+00)  ; FMax(a,b)
  %1044 = and i32 %456, 8
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1062, label %1046

; <label>:1046                                    ; preds = %1023
  %1047 = fadd fast float %522, 1.000000e+00
  %1048 = fmul fast float %852, %1047
  %1049 = fsub fast float %1048, %522
  %1050 = fsub fast float %1047, %1049
  %1051 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1052 = fsub fast float 1.000000e+00, %1048
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1054 = fsub fast float %1051, %1053
  %1055 = fsub fast float %1024, %1053
  %1056 = fdiv fast float %1055, %1054
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1058 = fmul fast float %1057, 2.000000e+00
  %1059 = fsub fast float 3.000000e+00, %1058
  %1060 = fmul fast float %1057, %1057
  %1061 = fmul fast float %1060, %1059
  br label %1062

; <label>:1062                                    ; preds = %1046, %1023
  %1063 = phi float [ %1061, %1046 ], [ %1024, %1023 ]
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  %1066 = fmul fast float %1065, %1063
  %1067 = fmul fast float %1066, %446
  %1068 = fadd fast float %1067, %409
  %1069 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1070 = and i32 %456, 32
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1088, label %1072

; <label>:1072                                    ; preds = %1062
  %1073 = add i32 %542, 0
  %1074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1073, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1074, %dx.types.Handle %45, float %1066, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = extractvalue %dx.types.ResRet.f32 %1075, 3
  %1080 = and i32 %536, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = lshr i32 %536, 8
  %1083 = and i32 %1082, 255
  %1084 = uitofp i32 %1083 to float
  %1085 = fmul fast float %1079, %1081
  %1086 = fadd fast float %1085, %1084
  %1087 = fmul fast float %1086, 0x3F70101000000000
  br label %1088

; <label>:1088                                    ; preds = %1072, %1062
  %1089 = phi float [ %1076, %1072 ], [ %505, %1062 ]
  %1090 = phi float [ %1077, %1072 ], [ %506, %1062 ]
  %1091 = phi float [ %1078, %1072 ], [ %507, %1062 ]
  %1092 = phi float [ %1087, %1072 ], [ %508, %1062 ]
  %1093 = fsub fast float %1089, %468
  %1094 = fsub fast float %1090, %469
  %1095 = fsub fast float %1091, %470
  %1096 = fmul fast float %1093, %1066
  %1097 = fmul fast float %1094, %1066
  %1098 = fmul fast float %1095, %1066
  %1099 = fadd fast float %1096, %468
  %1100 = fadd fast float %1097, %469
  %1101 = fadd fast float %1098, %470
  %1102 = fsub fast float %1092, %471
  %1103 = fmul fast float %1102, %1066
  %1104 = fadd fast float %1103, %471
  %1105 = fsub fast float %474, %940
  %1106 = fmul fast float %1066, %1105
  %1107 = fadd fast float %1106, %940
  %1108 = fsub fast float 1.000000e+00, %939
  %1109 = fmul fast float %1066, %1108
  %1110 = fadd fast float %1109, %939
  %1111 = fmul fast float %477, %335
  %1112 = fadd fast float %1111, %478
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1115 = fcmp fast oge float %1112, %1114
  %1116 = select i1 %1115, i32 512, i32 0
  %1117 = or i32 %951, %406
  %1118 = or i32 %1117, %953
  %1119 = or i32 %1118, %862
  %1120 = or i32 %1119, %949
  %1121 = or i32 %1120, %864
  %1122 = or i32 %1121, %1116
  %1123 = and i32 %411, 65535
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = lshr i32 %411, 16
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = and i32 %412, 65535
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = lshr i32 %412, 16
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = fmul fast float %1099, %446
  %1132 = fmul fast float %1100, %446
  %1133 = fmul fast float %1101, %446
  %1134 = fmul fast float %1104, %446
  %1135 = fadd fast float %1124, %1131
  %1136 = fadd fast float %1126, %1132
  %1137 = fadd fast float %1128, %1133
  %1138 = fadd fast float %1130, %1134
  %1139 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1135)  ; LegacyF32ToF16(value)
  %1140 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1136)  ; LegacyF32ToF16(value)
  %1141 = shl i32 %1140, 16
  %1142 = or i32 %1141, %1139
  %1143 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1137)  ; LegacyF32ToF16(value)
  %1144 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1138)  ; LegacyF32ToF16(value)
  %1145 = shl i32 %1144, 16
  %1146 = or i32 %1145, %1143
  %1147 = and i32 %414, 65535
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = lshr i32 %414, 16
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fmul fast float %1110, %446
  %1152 = fmul fast float %1107, %446
  %1153 = fadd fast float %1148, %1151
  %1154 = fadd fast float %1150, %1152
  %1155 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1153)  ; LegacyF32ToF16(value)
  %1156 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1154)  ; LegacyF32ToF16(value)
  %1157 = shl i32 %1156, 16
  %1158 = or i32 %1157, %1155
  %1159 = fcmp fast ogt float %1112, 0.000000e+00
  %1160 = select i1 %1159, float 1.000000e+00, float 0.000000e+00
  %1161 = and i32 %413, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = lshr i32 %413, 16
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = fmul fast float %1112, %446
  %1166 = fmul fast float %1160, %446
  %1167 = fadd fast float %1162, %1165
  %1168 = fadd fast float %1164, %1166
  %1169 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1170 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1171 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1169)  ; LegacyF32ToF16(value)
  %1172 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1170)  ; LegacyF32ToF16(value)
  %1173 = shl i32 %1172, 16
  %1174 = or i32 %1173, %1171
  br label %1175

; <label>:1175                                    ; preds = %1088, %395
  %1176 = phi float [ %937, %1088 ], [ %396, %395 ]
  %1177 = phi float [ %938, %1088 ], [ %397, %395 ]
  %1178 = phi float [ %854, %1088 ], [ %398, %395 ]
  %1179 = phi float [ %855, %1088 ], [ %399, %395 ]
  %1180 = phi float [ %856, %1088 ], [ %400, %395 ]
  %1181 = phi float [ %557, %1088 ], [ %401, %395 ]
  %1182 = phi float [ %858, %1088 ], [ %402, %395 ]
  %1183 = phi float [ %860, %1088 ], [ %403, %395 ]
  %1184 = phi i32 [ %453, %1088 ], [ %404, %395 ]
  %1185 = phi float [ %948, %1088 ], [ %405, %395 ]
  %1186 = phi i32 [ %1122, %1088 ], [ %406, %395 ]
  %1187 = phi float [ %1028, %1088 ], [ %407, %395 ]
  %1188 = phi float [ %1043, %1088 ], [ %408, %395 ]
  %1189 = phi float [ %1069, %1088 ], [ %409, %395 ]
  %1190 = phi i32 [ %1142, %1088 ], [ %411, %395 ]
  %1191 = phi i32 [ %1146, %1088 ], [ %412, %395 ]
  %1192 = phi i32 [ %1174, %1088 ], [ %413, %395 ]
  %1193 = phi i32 [ %1158, %1088 ], [ %414, %395 ]
  %1194 = icmp eq i32 %419, 0
  br i1 %1194, label %1195, label %395

; <label>:1195                                    ; preds = %1175
  br label %1196

; <label>:1196                                    ; preds = %1195, %390
  %1197 = phi float [ 0.000000e+00, %390 ], [ %1176, %1195 ]
  %1198 = phi float [ 0.000000e+00, %390 ], [ %1177, %1195 ]
  %1199 = phi float [ 0.000000e+00, %390 ], [ %1178, %1195 ]
  %1200 = phi float [ 0.000000e+00, %390 ], [ %1179, %1195 ]
  %1201 = phi float [ 0.000000e+00, %390 ], [ %1180, %1195 ]
  %1202 = phi float [ 0.000000e+00, %390 ], [ %1181, %1195 ]
  %1203 = phi float [ 0.000000e+00, %390 ], [ %1182, %1195 ]
  %1204 = phi float [ 0.000000e+00, %390 ], [ %1183, %1195 ]
  %1205 = phi i32 [ 0, %390 ], [ %1184, %1195 ]
  %1206 = phi float [ 0.000000e+00, %390 ], [ %1185, %1195 ]
  %1207 = phi i32 [ 0, %390 ], [ %1186, %1195 ]
  %1208 = phi float [ 0.000000e+00, %390 ], [ %1187, %1195 ]
  %1209 = phi float [ 0.000000e+00, %390 ], [ %1188, %1195 ]
  %1210 = phi float [ 0.000000e+00, %390 ], [ %1189, %1195 ]
  %1211 = phi i32 [ %143, %390 ], [ %1190, %1195 ]
  %1212 = phi i32 [ %143, %390 ], [ %1191, %1195 ]
  %1213 = phi i32 [ %143, %390 ], [ %1192, %1195 ]
  %1214 = phi i32 [ %143, %390 ], [ %1193, %1195 ]
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1217 = fmul fast float %1216, 0x3FE3C6EF40000000
  %1218 = frem fast float %72, 2.560000e+02
  %1219 = frem fast float %73, 2.560000e+02
  %1220 = fptoui float %1218 to i32
  %1221 = fptoui float %1219 to i32
  %1222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %1220, i32 %1221, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = fadd fast float %1223, %1217
  %1226 = fadd fast float %1224, %1217
  %1227 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1228 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1229 = fcmp fast ogt float %82, 0.000000e+00
  %1230 = fcmp fast olt float %82, 0.000000e+00
  %1231 = zext i1 %1229 to i32
  %1232 = zext i1 %1230 to i32
  %1233 = sub nsw i32 %1231, %1232
  %1234 = sitofp i32 %1233 to float
  %1235 = fadd fast float %1234, %82
  %1236 = fdiv fast float -1.000000e+00, %1235
  %1237 = fmul fast float %78, %80
  %1238 = fmul fast float %1237, %1236
  %1239 = fmul fast float %78, %78
  %1240 = fmul fast float %1239, %1234
  %1241 = fmul fast float %1240, %1236
  %1242 = fadd fast float %1241, 1.000000e+00
  %1243 = fmul fast float %1238, %1234
  %1244 = fmul fast float %1234, %78
  %1245 = fsub fast float -0.000000e+00, %1244
  %1246 = fmul fast float %80, %80
  %1247 = fmul fast float %1246, %1236
  %1248 = fadd fast float %1247, %1234
  %1249 = fsub fast float -0.000000e+00, %80
  %1250 = and i32 %1211, 65535
  %1251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1250)  ; LegacyF16ToF32(value)
  %1252 = lshr i32 %1211, 16
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = and i32 %1212, 65535
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = lshr i32 %1212, 16
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = and i32 %1214, 65535
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = lshr i32 %1214, 16
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %1264 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1265 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1266 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %1267 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1268 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1269 = fadd fast float %1263, %116
  %1270 = fadd fast float %1264, %117
  %1271 = fadd fast float %1265, %118
  %1272 = fadd fast float %1266, %116
  %1273 = fadd fast float %1267, %117
  %1274 = fadd fast float %1268, %118
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1282 = fmul fast float %1276, %72
  %1283 = fmul fast float %1282, %1280
  %1284 = fmul fast float %1277, %73
  %1285 = fmul fast float %1284, %1281
  %1286 = fptoui float %1283 to i32
  %1287 = fptoui float %1285 to i32
  %1288 = fadd fast float %1276, -1.000000e+00
  %1289 = fadd fast float %1277, -1.000000e+00
  %1290 = fptoui float %1288 to i32
  %1291 = fptoui float %1289 to i32
  %1292 = call i32 @dx.op.binary.i32(i32 40, i32 %1286, i32 %1290)  ; UMin(a,b)
  %1293 = call i32 @dx.op.binary.i32(i32 40, i32 %1287, i32 %1291)  ; UMin(a,b)
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1297 = fmul fast float %1295, %69
  %1298 = fsub fast float %1297, %1296
  %1299 = fadd fast float %1278, -1.000000e+00
  %1300 = call float @dx.op.binary.f32(i32 36, float %1298, float %1299)  ; FMin(a,b)
  %1301 = fptoui float %1300 to i32
  %1302 = fptoui float %1276 to i32
  %1303 = fptoui float %1277 to i32
  %1304 = mul i32 %1301, %1303
  %1305 = add i32 %1304, %1293
  %1306 = mul i32 %1305, %1302
  %1307 = add i32 %1306, %1292
  %1308 = shl i32 %1307, 2
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = and i32 %1310, 1023
  %1312 = lshr i32 %1310, 10
  %1313 = icmp eq i32 %1311, 0
  br i1 %1313, label %1710, label %1314

; <label>:1314                                    ; preds = %1196
  %1315 = and i32 %1310, 1023
  br label %1316

; <label>:1316                                    ; preds = %1437, %1314
  %1317 = phi float [ %1438, %1437 ], [ 0.000000e+00, %1314 ]
  %1318 = phi float [ %1439, %1437 ], [ 0.000000e+00, %1314 ]
  %1319 = phi float [ %1440, %1437 ], [ 0.000000e+00, %1314 ]
  %1320 = phi float [ %1441, %1437 ], [ %1197, %1314 ]
  %1321 = phi float [ %1442, %1437 ], [ %1198, %1314 ]
  %1322 = phi float [ %1443, %1437 ], [ %1259, %1314 ]
  %1323 = phi float [ %1444, %1437 ], [ %1262, %1314 ]
  %1324 = phi float [ %1445, %1437 ], [ 0.000000e+00, %1314 ]
  %1325 = phi float [ %1446, %1437 ], [ %1257, %1314 ]
  %1326 = phi float [ %1447, %1437 ], [ %1251, %1314 ]
  %1327 = phi float [ %1448, %1437 ], [ %1253, %1314 ]
  %1328 = phi float [ %1449, %1437 ], [ %1255, %1314 ]
  %1329 = phi i32 [ %1450, %1437 ], [ 0, %1314 ]
  %1330 = phi i32 [ %1386, %1437 ], [ 0, %1314 ]
  %1331 = add nuw nsw i32 %1330, %1312
  %1332 = shl i32 %1331, 2
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = shl i32 %1334, 8
  %1336 = or i32 %1335, 48
  %1337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = extractvalue %dx.types.ResRet.f32 %1337, 3
  %1342 = or i32 %1335, 64
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = extractvalue %dx.types.ResRet.i32 %1343, 1
  %1346 = or i32 %1335, 80
  %1347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 2
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 3
  %1350 = or i32 %1335, 96
  %1351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.ResRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1351, 2
  %1355 = extractvalue %dx.types.ResRet.f32 %1351, 3
  %1356 = or i32 %1335, 112
  %1357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1359 = or i32 %1335, 128
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = extractvalue %dx.types.ResRet.f32 %1360, 3
  %1365 = or i32 %1335, 144
  %1366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = extractvalue %dx.types.ResRet.f32 %1366, 3
  %1371 = or i32 %1335, 160
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = or i32 %1335, 192
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = or i32 %1335, 208
  %1380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = or i32 %1335, 248
  %1383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = add nuw nsw i32 %1330, 1
  %1387 = bitcast float %1341 to i32
  %1388 = and i32 %1387, 512
  %1389 = icmp ne i32 %1388, 0
  %1390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = extractvalue %dx.types.ResRet.f32 %1390, 3
  %1395 = call float @dx.op.dot4.f32(i32 56, float %1391, float %1392, float %1393, float %1394, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1396 = or i32 %1335, 16
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = extractvalue %dx.types.ResRet.f32 %1397, 3
  %1402 = call float @dx.op.dot4.f32(i32 56, float %1398, float %1399, float %1400, float %1401, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1403 = or i32 %1335, 32
  %1404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.ResRet.f32 %1404, 2
  %1408 = extractvalue %dx.types.ResRet.f32 %1404, 3
  %1409 = call float @dx.op.dot4.f32(i32 56, float %1405, float %1406, float %1407, float %1408, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1410 = call float @dx.op.unary.f32(i32 27, float %1395)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 6, float %1410)  ; FAbs(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1402)  ; Round_ni(value)
  %1413 = call float @dx.op.unary.f32(i32 6, float %1412)  ; FAbs(value)
  %1414 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1415 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1416 = fadd fast float %1413, %1411
  %1417 = fadd fast float %1416, %1415
  %1418 = fcmp fast oeq float %1417, 0.000000e+00
  %1419 = call float @dx.op.dot4.f32(i32 56, float %1391, float %1392, float %1393, float %1394, float %1269, float %1270, float %1271, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1420 = call float @dx.op.dot4.f32(i32 56, float %1398, float %1399, float %1400, float %1401, float %1269, float %1270, float %1271, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1421 = call float @dx.op.dot4.f32(i32 56, float %1391, float %1392, float %1393, float %1394, float %1272, float %1273, float %1274, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1422 = call float @dx.op.dot4.f32(i32 56, float %1398, float %1399, float %1400, float %1401, float %1272, float %1273, float %1274, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1423 = fsub fast float %1419, %1395
  %1424 = fsub fast float %1421, %1395
  %1425 = fsub fast float %1420, %1402
  %1426 = fsub fast float %1422, %1402
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %78, float %80, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1430 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1431 = fadd fast float %1430, %1429
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1434 = fcmp fast ogt float %1432, %1433
  %1435 = and i1 %1418, %1434
  %1436 = and i1 %1389, %1435
  br i1 %1436, label %1452, label %1437

; <label>:1437                                    ; preds = %1696, %1534, %1452, %1316
  %1438 = phi float [ %1317, %1452 ], [ %1317, %1534 ], [ %1706, %1696 ], [ %1317, %1316 ]
  %1439 = phi float [ %1318, %1452 ], [ %1318, %1534 ], [ %1707, %1696 ], [ %1318, %1316 ]
  %1440 = phi float [ %1319, %1452 ], [ %1319, %1534 ], [ %1708, %1696 ], [ %1319, %1316 ]
  %1441 = phi float [ %1320, %1452 ], [ %1320, %1534 ], [ %1670, %1696 ], [ %1320, %1316 ]
  %1442 = phi float [ %1321, %1452 ], [ %1321, %1534 ], [ %1671, %1696 ], [ %1321, %1316 ]
  %1443 = phi float [ %1322, %1452 ], [ %1322, %1534 ], [ %1665, %1696 ], [ %1322, %1316 ]
  %1444 = phi float [ %1323, %1452 ], [ %1323, %1534 ], [ %1662, %1696 ], [ %1323, %1316 ]
  %1445 = phi float [ %1324, %1452 ], [ %1324, %1534 ], [ %1659, %1696 ], [ %1324, %1316 ]
  %1446 = phi float [ %1325, %1452 ], [ %1325, %1534 ], [ %1657, %1696 ], [ %1325, %1316 ]
  %1447 = phi float [ %1326, %1452 ], [ %1326, %1534 ], [ %1652, %1696 ], [ %1326, %1316 ]
  %1448 = phi float [ %1327, %1452 ], [ %1327, %1534 ], [ %1653, %1696 ], [ %1327, %1316 ]
  %1449 = phi float [ %1328, %1452 ], [ %1328, %1534 ], [ %1654, %1696 ], [ %1328, %1316 ]
  %1450 = phi i32 [ %1460, %1452 ], [ %1460, %1534 ], [ %1460, %1696 ], [ %1329, %1316 ]
  %1451 = icmp eq i32 %1386, %1315
  br i1 %1451, label %1709, label %1316

; <label>:1452                                    ; preds = %1316
  %1453 = extractvalue %dx.types.ResRet.f32 %1357, 3
  %1454 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1455 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1458 = extractvalue %dx.types.ResRet.i32 %1343, 3
  %1459 = extractvalue %dx.types.ResRet.i32 %1343, 2
  %1460 = add i32 %1329, 1
  %1461 = add i32 %1458, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1461, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1464 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1462, %dx.types.Handle %1463, float %1395, float %1402, float undef, float undef, i32 0, i32 0, i32 undef, float %1423, float %1425, float undef, float %1424, float %1426, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = fmul fast float %1465, %1457
  %1467 = fadd fast float %1466, %1456
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1469 = fmul fast float %1395, %1352
  %1470 = call float @dx.op.tertiary.f32(i32 46, float %1353, float %1402, float %1469)  ; FMad(a,b,c)
  %1471 = fadd fast float %1470, %1455
  %1472 = fmul fast float %1395, %1354
  %1473 = call float @dx.op.tertiary.f32(i32 46, float %1355, float %1402, float %1472)  ; FMad(a,b,c)
  %1474 = fadd fast float %1473, %1454
  %1475 = fmul fast float %1423, %1352
  %1476 = call float @dx.op.tertiary.f32(i32 46, float %1353, float %1425, float %1475)  ; FMad(a,b,c)
  %1477 = fmul fast float %1423, %1354
  %1478 = call float @dx.op.tertiary.f32(i32 46, float %1355, float %1425, float %1477)  ; FMad(a,b,c)
  %1479 = fmul fast float %1424, %1352
  %1480 = call float @dx.op.tertiary.f32(i32 46, float %1353, float %1426, float %1479)  ; FMad(a,b,c)
  %1481 = fmul fast float %1424, %1354
  %1482 = call float @dx.op.tertiary.f32(i32 46, float %1355, float %1426, float %1481)  ; FMad(a,b,c)
  %1483 = add i32 %1459, 0
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1483, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1484, %dx.types.Handle %1463, float %1471, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float %1476, float %1478, float undef, float %1480, float %1482, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = and i32 %1387, 1024
  %1488 = icmp ne i32 %1487, 0
  %1489 = fcmp fast ogt float %1486, 0x3FE0101020000000
  %1490 = uitofp i1 %1489 to float
  %1491 = select i1 %1488, float %1490, float %1486
  %1492 = and i32 %1387, 8192
  %1493 = icmp ne i32 %1492, 0
  %1494 = select i1 %1493, float %1453, float 1.000000e+00
  %1495 = fmul fast float %1395, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1498 = fmul fast float %1497, %1384
  %1499 = fsub fast float %1498, %1384
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fmul fast float %1402, 2.000000e+00
  %1502 = fadd fast float %1501, -1.000000e+00
  %1503 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1504 = fmul fast float %1503, %1385
  %1505 = fsub fast float %1504, %1385
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fmul fast float %1414, %1348
  %1508 = fsub fast float %1507, %1348
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = fmul fast float %1468, %1494
  %1511 = fmul fast float %1510, %1465
  %1512 = fmul fast float %1511, %1500
  %1513 = fmul fast float %1512, %1491
  %1514 = fmul fast float %1513, %1506
  %1515 = fmul fast float %1514, %1509
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1519 = fsub fast float %1432, %1518
  %1520 = fmul fast float %1519, %1517
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fmul fast float %1515, %1349
  %1523 = fadd fast float %1515, %1349
  %1524 = fmul fast float %1523, %1358
  %1525 = fsub fast float %1524, %1358
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = and i32 %1387, 128
  %1528 = icmp ne i32 %1527, 0
  %1529 = select i1 %1528, float %1526, float %1522
  %1530 = fmul fast float %1529, %1521
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1533 = fcmp fast ugt float %1530, %1532
  br i1 %1533, label %1534, label %1437

; <label>:1534                                    ; preds = %1452
  br i1 %1493, label %1437, label %1535

; <label>:1535                                    ; preds = %1534
  %1536 = and i32 %1387, 4
  %1537 = and i32 %1387, 8
  %1538 = add i32 %1344, 0
  %1539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1539, %dx.types.Handle %1540, float %1471, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float %1476, float %1478, float undef, float %1480, float %1482, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.ResRet.f32 %1541, 1
  %1544 = extractvalue %dx.types.ResRet.f32 %1541, 2
  %1545 = extractvalue %dx.types.ResRet.f32 %1541, 3
  %1546 = bitcast float %1370 to i32
  %1547 = and i32 %1546, 255
  %1548 = uitofp i32 %1547 to float
  %1549 = lshr i32 %1546, 8
  %1550 = and i32 %1549, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1545, %1548
  %1553 = fadd fast float %1552, %1551
  %1554 = fmul fast float %1553, 0x3F70101000000000
  %1555 = add i32 %1345, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1556, %dx.types.Handle %1540, float %1471, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float %1476, float %1478, float undef, float %1480, float %1482, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = extractvalue %dx.types.ResRet.f32 %1557, 3
  %1562 = bitcast float %1364 to i32
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = lshr i32 %1562, 8
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = lshr i32 %1562, 16
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1570, 0x3F70101000000000
  %1572 = fmul fast float %1558, %1564
  %1573 = fadd fast float %1572, %1567
  %1574 = fmul fast float %1573, 0x3F70101000000000
  %1575 = fadd fast float %1559, -5.000000e-01
  %1576 = fadd fast float %1561, -5.000000e-01
  %1577 = fmul fast float %1575, %1571
  %1578 = fmul fast float %1576, %1571
  %1579 = fadd fast float %1577, 5.000000e-01
  %1580 = fadd fast float %1578, 5.000000e-01
  %1581 = fmul fast float %1542, %1373
  %1582 = fmul fast float %1543, %1374
  %1583 = fmul fast float %1544, %1375
  %1584 = fmul fast float %1579, 2.000000e+00
  %1585 = fadd fast float %1584, -1.000000e+00
  %1586 = fmul fast float %1580, 2.000000e+00
  %1587 = fadd fast float %1586, -1.000000e+00
  %1588 = fadd fast float %1585, %1587
  %1589 = fmul fast float %1588, 5.000000e-01
  %1590 = fsub fast float %1585, %1587
  %1591 = fmul fast float %1590, 5.000000e-01
  %1592 = call float @dx.op.unary.f32(i32 6, float %1589)  ; FAbs(value)
  %1593 = fsub fast float 1.000000e+00, %1592
  %1594 = call float @dx.op.unary.f32(i32 6, float %1591)  ; FAbs(value)
  %1595 = fsub fast float %1593, %1594
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1589, float %1591, float %1595, float %1589, float %1591, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = call float @dx.op.unary.f32(i32 25, float %1596)  ; Rsqrt(value)
  %1598 = fmul fast float %1589, %1597
  %1599 = fmul fast float %1591, %1597
  %1600 = fmul fast float %1597, %1595
  %1601 = fmul fast float %1600, %1338
  %1602 = fmul fast float %1600, %1339
  %1603 = fmul fast float %1600, %1340
  %1604 = fmul fast float %1598, %1361
  %1605 = fmul fast float %1598, %1362
  %1606 = fmul fast float %1598, %1363
  %1607 = fadd fast float %1604, %1601
  %1608 = fadd fast float %1605, %1602
  %1609 = fadd fast float %1606, %1603
  %1610 = fmul fast float %1599, %1367
  %1611 = fmul fast float %1599, %1368
  %1612 = fmul fast float %1599, %1369
  %1613 = fadd fast float %1607, %1610
  %1614 = fadd fast float %1608, %1611
  %1615 = fadd fast float %1609, %1612
  %1616 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1613, float %1614, float %1615)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = call float @dx.op.unary.f32(i32 25, float %1616)  ; Rsqrt(value)
  %1618 = fmul fast float %1613, %1617
  %1619 = fmul fast float %1614, %1617
  %1620 = fmul fast float %1615, %1617
  %1621 = fcmp fast ogt float %1427, %1433
  %1622 = fsub fast float -0.000000e+00, %1618
  %1623 = fsub fast float -0.000000e+00, %1619
  %1624 = fsub fast float -0.000000e+00, %1620
  %1625 = select i1 %1621, float %1618, float %1622
  %1626 = select i1 %1621, float %1619, float %1623
  %1627 = select i1 %1621, float %1620, float %1624
  %1628 = fmul fast float %1625, %1242
  %1629 = call float @dx.op.tertiary.f32(i32 46, float %1626, float %1243, float %1628)  ; FMad(a,b,c)
  %1630 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1245, float %1629)  ; FMad(a,b,c)
  %1631 = fmul fast float %1625, %1238
  %1632 = call float @dx.op.tertiary.f32(i32 46, float %1626, float %1248, float %1631)  ; FMad(a,b,c)
  %1633 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1249, float %1632)  ; FMad(a,b,c)
  %1634 = icmp ne i32 %1537, 0
  %1635 = select i1 %1634, float 1.000000e+00, float 0.000000e+00
  %1636 = fmul fast float %1530, %1635
  %1637 = and i32 %1387, 1
  %1638 = icmp ne i32 %1637, 0
  %1639 = fadd fast float %1630, %1320
  %1640 = fadd fast float %1633, %1321
  %1641 = select i1 %1638, float %1639, float %1630
  %1642 = select i1 %1638, float %1640, float %1633
  %1643 = icmp ne i32 %1536, 0
  %1644 = select i1 %1643, float 1.000000e+00, float 0.000000e+00
  %1645 = fmul fast float %1530, %1644
  %1646 = fsub fast float %1581, %1326
  %1647 = fsub fast float %1582, %1327
  %1648 = fsub fast float %1583, %1328
  %1649 = fmul fast float %1646, %1645
  %1650 = fmul fast float %1647, %1645
  %1651 = fmul fast float %1648, %1645
  %1652 = fadd fast float %1649, %1326
  %1653 = fadd fast float %1650, %1327
  %1654 = fadd fast float %1651, %1328
  %1655 = fsub fast float %1554, %1325
  %1656 = fmul fast float %1655, %1645
  %1657 = fadd fast float %1656, %1325
  %1658 = fadd fast float %1530, %1324
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = fsub fast float %1574, %1323
  %1661 = fmul fast float %1660, %1636
  %1662 = fadd fast float %1661, %1323
  %1663 = fsub fast float %1560, %1322
  %1664 = fmul fast float %1663, %1636
  %1665 = fadd fast float %1664, %1322
  %1666 = fsub fast float %1641, %1320
  %1667 = fsub fast float %1642, %1321
  %1668 = fmul fast float %1666, %1636
  %1669 = fmul fast float %1667, %1636
  %1670 = fadd fast float %1668, %1320
  %1671 = fadd fast float %1669, %1321
  %1672 = and i32 %1387, 16
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1696, label %1674

; <label>:1674                                    ; preds = %1535
  %1675 = bitcast float %1381 to i32
  %1676 = add i32 %1378, 0
  %1677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1676, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1677, %dx.types.Handle %1540, float %1471, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float %1476, float %1478, float undef, float %1480, float %1482, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = and i32 %1675, 65535
  %1683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1682)  ; LegacyF16ToF32(value)
  %1684 = fmul fast float %1679, %1373
  %1685 = fmul fast float %1680, %1374
  %1686 = fmul fast float %1681, %1375
  %1687 = and i32 %1387, 16384
  %1688 = icmp ne i32 %1687, 0
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = select i1 %1688, float %1690, float 1.000000e+00
  %1692 = fmul fast float %1691, %1683
  %1693 = fmul fast float %1684, %1692
  %1694 = fmul fast float %1685, %1692
  %1695 = fmul fast float %1686, %1692
  br label %1696

; <label>:1696                                    ; preds = %1674, %1535
  %1697 = phi float [ %1693, %1674 ], [ 0.000000e+00, %1535 ]
  %1698 = phi float [ %1694, %1674 ], [ 0.000000e+00, %1535 ]
  %1699 = phi float [ %1695, %1674 ], [ 0.000000e+00, %1535 ]
  %1700 = fsub fast float %1697, %1317
  %1701 = fsub fast float %1698, %1318
  %1702 = fsub fast float %1699, %1319
  %1703 = fmul fast float %1700, %1530
  %1704 = fmul fast float %1701, %1530
  %1705 = fmul fast float %1702, %1530
  %1706 = fadd fast float %1703, %1317
  %1707 = fadd fast float %1704, %1318
  %1708 = fadd fast float %1705, %1319
  br label %1437

; <label>:1709                                    ; preds = %1437
  br label %1710

; <label>:1710                                    ; preds = %1709, %1196
  %1711 = phi float [ 0.000000e+00, %1196 ], [ %1438, %1709 ]
  %1712 = phi float [ 0.000000e+00, %1196 ], [ %1439, %1709 ]
  %1713 = phi float [ 0.000000e+00, %1196 ], [ %1440, %1709 ]
  %1714 = phi float [ %1197, %1196 ], [ %1441, %1709 ]
  %1715 = phi float [ %1198, %1196 ], [ %1442, %1709 ]
  %1716 = phi float [ %1259, %1196 ], [ %1443, %1709 ]
  %1717 = phi float [ %1262, %1196 ], [ %1444, %1709 ]
  %1718 = phi float [ 0.000000e+00, %1196 ], [ %1445, %1709 ]
  %1719 = phi float [ %1257, %1196 ], [ %1446, %1709 ]
  %1720 = phi float [ %1251, %1196 ], [ %1447, %1709 ]
  %1721 = phi float [ %1253, %1196 ], [ %1448, %1709 ]
  %1722 = phi float [ %1255, %1196 ], [ %1449, %1709 ]
  %1723 = phi i32 [ 0, %1196 ], [ %1450, %1709 ]
  %1724 = uitofp i32 %1723 to float
  %1725 = fptoui float %1724 to i32
  %1726 = shl i32 %1725, 16
  %1727 = and i32 %1726, 16711680
  %1728 = call float @dx.op.dot2.f32(i32 54, float %1714, float %1715, float %1714, float %1715)  ; Dot2(ax,ay,bx,by)
  %1729 = fmul fast float %1728, 0x3FE3333340000000
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1730, float %1714, float %1715, float %1730)  ; Dot3(ax,ay,az,bx,by,bz)
  %1732 = call float @dx.op.unary.f32(i32 25, float %1731)  ; Rsqrt(value)
  %1733 = fmul fast float %1732, %1714
  %1734 = fmul fast float %1732, %1715
  %1735 = fmul fast float %1730, %1732
  %1736 = fmul fast float %1735, %78
  %1737 = fmul fast float %1735, %80
  %1738 = fmul fast float %1735, %82
  %1739 = fmul fast float %1733, %1242
  %1740 = fmul fast float %1733, %1243
  %1741 = fmul fast float %1733, %1245
  %1742 = fadd fast float %1736, %1739
  %1743 = fadd fast float %1737, %1740
  %1744 = fadd fast float %1738, %1741
  %1745 = fmul fast float %1734, %1238
  %1746 = fmul fast float %1734, %1248
  %1747 = fmul fast float %1734, %1249
  %1748 = fadd fast float %1742, %1745
  %1749 = fadd fast float %1743, %1746
  %1750 = fadd fast float %1744, %1747
  %1751 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %1752 = call float @dx.op.unary.f32(i32 25, float %1751)  ; Rsqrt(value)
  %1753 = fmul fast float %1748, %1752
  %1754 = fmul fast float %1749, %1752
  %1755 = fmul fast float %1750, %1752
  %1756 = fadd fast float %1719, 0xBFB99999A0000000
  %1757 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1758 = fmul fast float %1757, 0x3FF1C71C80000000
  %1759 = call float @dx.op.binary.f32(i32 36, float %1719, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1760 = fsub fast float 1.000000e+00, %1758
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1762 = fmul fast float %1761, %1720
  %1763 = fmul fast float %1761, %1721
  %1764 = fmul fast float %1761, %1722
  %1765 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1766 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1768 = fmul fast float %1758, %1720
  %1769 = fmul fast float %1758, %1721
  %1770 = fmul fast float %1758, %1722
  %1771 = fadd fast float %1768, %1759
  %1772 = fadd fast float %1769, %1759
  %1773 = fadd fast float %1770, %1759
  %1774 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1775 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1776 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1777 = fmul fast float %1775, 0x401CF23780000000
  %1778 = fadd fast float %1777, 0x3FF32641C0000000
  %1779 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1780 = call float @dx.op.unary.f32(i32 25, float %1779)  ; Rsqrt(value)
  %1781 = fmul fast float %1780, %116
  %1782 = fmul fast float %1780, %117
  %1783 = fmul fast float %1780, %118
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1786 = fdiv fast float 1.000000e+00, %1778
  %1787 = select i1 %58, float %1786, float %1778
  %1788 = fadd fast float %1787, -1.000000e+00
  %1789 = fadd fast float %1787, 1.000000e+00
  %1790 = fdiv fast float %1788, %1789
  %1791 = fmul fast float %1790, %1790
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1782, float %1783, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = select i1 %58, float 0.000000e+00, float %1785
  %1794 = fadd fast float %1792, %1793
  %1795 = call float @dx.op.binary.f32(i32 35, float %1794, float -1.000000e+00)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 36, float %1795, float 1.000000e+00)  ; FMin(a,b)
  %1797 = fmul fast float %1787, %1787
  %1798 = fmul fast float %1796, %1796
  %1799 = fsub fast float 1.000000e+00, %1798
  %1800 = fmul fast float %1797, %1799
  %1801 = fsub fast float 1.000000e+00, %1800
  %1802 = fcmp fast olt float %1787, 1.000000e+00
  %1803 = select i1 %1802, float %1798, float %1801
  %1804 = fcmp fast ogt float %1801, 0.000000e+00
  %1805 = fsub fast float 1.000000e+00, %1791
  %1806 = call float @dx.op.unary.f32(i32 24, float %1803)  ; Sqrt(value)
  %1807 = fsub fast float 1.000000e+00, %1806
  %1808 = call float @dx.op.unary.f32(i32 23, float %1807)  ; Log(value)
  %1809 = fmul fast float %1808, 5.000000e+00
  %1810 = call float @dx.op.unary.f32(i32 21, float %1809)  ; Exp(value)
  %1811 = fmul fast float %1810, %1805
  %1812 = fadd fast float %1811, %1791
  %1813 = select i1 %1804, float %1812, float 1.000000e+00
  %1814 = fsub fast float -0.000000e+00, %1781
  %1815 = fsub fast float -0.000000e+00, %1782
  %1816 = fsub fast float -0.000000e+00, %1783
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1753, float %1754, float %1755, float %1814, float %1815, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1819 = fsub fast float 1.000000e+00, %1774
  %1820 = fsub fast float 1.000000e+00, %1775
  %1821 = fsub fast float 1.000000e+00, %1776
  %1822 = fmul fast float %1813, %1819
  %1823 = fmul fast float %1813, %1820
  %1824 = fmul fast float %1813, %1821
  %1825 = fadd fast float %1822, %1774
  %1826 = fadd fast float %1823, %1775
  %1827 = fadd fast float %1824, %1776
  %1828 = and i32 %1213, 65535
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = lshr i32 %1213, 16
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1834 = fadd fast float %1833, %1829
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = fcmp fast ogt float %1835, 0.000000e+00
  %1837 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1838 = select i1 %1836, float %1837, float 0.000000e+00
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1835, float %1838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.ResRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.ResRet.f32 %1839, 2
  %1843 = fadd fast float %1840, -5.000000e-01
  %1844 = fadd fast float %1841, -5.000000e-01
  %1845 = fadd fast float %1842, -5.000000e-01
  %1846 = fmul fast float %1774, 4.000000e+00
  %1847 = fmul fast float %1846, %1819
  %1848 = fmul fast float %1847, %1831
  %1849 = fmul fast float %1848, %1843
  %1850 = fmul fast float %1775, 4.000000e+00
  %1851 = fmul fast float %1850, %1820
  %1852 = fmul fast float %1851, %1831
  %1853 = fmul fast float %1852, %1844
  %1854 = fmul fast float %1776, 4.000000e+00
  %1855 = fmul fast float %1854, %1821
  %1856 = fmul fast float %1855, %1831
  %1857 = fmul fast float %1856, %1845
  %1858 = fadd fast float %1825, %1849
  %1859 = fadd fast float %1826, %1853
  %1860 = fadd fast float %1827, %1857
  %1861 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1862 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1863 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  %1864 = fptoui float %72 to i32
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = fmul fast float %1866, 5.000000e-01
  %1868 = fptoui float %1867 to i32
  %1869 = icmp eq i32 %1864, %1868
  %1870 = fptoui float %73 to i32
  %1871 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1872 = fmul fast float %1871, 5.000000e-01
  %1873 = fptoui float %1872 to i32
  %1874 = icmp eq i32 %1870, %1873
  %1875 = and i1 %1869, %1874
  br i1 %1875, label %1876, label %1893

; <label>:1876                                    ; preds = %1710
  %1877 = call float @dx.op.binary.f32(i32 35, float %1862, float %1863)  ; FMax(a,b)
  %1878 = call float @dx.op.binary.f32(i32 35, float %1861, float %1877)  ; FMax(a,b)
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.CBufRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1884 = fadd fast float %1881, %116
  %1885 = fadd fast float %1882, %117
  %1886 = fadd fast float %1883, %118
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1889 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %1890 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %1891 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %1892 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %1884, float %1885, float %1886, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %72, float %73, float %68, float %69, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %304, float %305, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %267, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %269, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %282, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %284, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %1888, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1813, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %1861, float %1862, float %1863, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %1879, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %160, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %59, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %1206, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %1889, float %1890, float %1891, float %1892, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 180, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 196, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 200, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 204, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 208, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 212, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 216, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 220, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 232, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 244, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 256, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 268, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 280, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 292, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 308, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1893

; <label>:1893                                    ; preds = %1876, %1710
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1896 = fmul fast float %1895, %1717
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1899 = fsub fast float 1.000000e+00, %1718
  %1900 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1899)  ; FMin(a,b)
  %1901 = fmul fast float %61, 6.553500e+04
  %1902 = call float @dx.op.unary.f32(i32 26, float %1901)  ; Round_ne(value)
  %1903 = fptosi float %1902 to i32
  %1904 = call i32 @dx.op.binary.i32(i32 37, i32 %1903, i32 0)  ; IMax(a,b)
  %1905 = call i32 @dx.op.binary.i32(i32 38, i32 %1904, i32 65535)  ; IMin(a,b)
  %1906 = fmul fast float %62, 6.553500e+04
  %1907 = call float @dx.op.unary.f32(i32 26, float %1906)  ; Round_ne(value)
  %1908 = fptosi float %1907 to i32
  %1909 = call i32 @dx.op.binary.i32(i32 37, i32 %1908, i32 0)  ; IMax(a,b)
  %1910 = call i32 @dx.op.binary.i32(i32 38, i32 %1909, i32 65535)  ; IMin(a,b)
  %1911 = shl i32 %1910, 16
  %1912 = or i32 %1911, %1905
  %1913 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1914 = fsub fast float 1.000000e+00, %1913
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = and i32 %1916, 255
  %1918 = uitofp i32 %1917 to float
  %1919 = lshr i32 %1916, 8
  %1920 = and i32 %1919, 255
  %1921 = uitofp i32 %1920 to float
  %1922 = fmul fast float %1921, %1914
  %1923 = fadd fast float %1922, %1918
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.i32 %1929, 3
  %1931 = and i32 %1930, 3
  %1932 = icmp ne i32 %1931, 0
  %1933 = and i32 %1930, 4
  %1934 = icmp ne i32 %1933, 0
  %1935 = and i1 %1932, %1934
  br i1 %1935, label %1936, label %1947

; <label>:1936                                    ; preds = %1893
  %1937 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1938 = fmul fast float %1937, %73
  %1939 = extractvalue %dx.types.CBufRet.f32 %1928, 2
  %1940 = fmul fast float %1939, %72
  %1941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %45, float %1940, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = fsub fast float 1.000000e+00, %1942
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = fcmp fast olt float %1943, %1945
  br label %1950

; <label>:1947                                    ; preds = %1893
  %1948 = icmp eq i32 %1933, 0
  %1949 = and i1 %1932, %1948
  br label %1950

; <label>:1950                                    ; preds = %1947, %1936
  %1951 = phi i1 [ %1946, %1936 ], [ %1949, %1947 ]
  %1952 = select i1 %1951, float 0.000000e+00, float %1776
  %1953 = fmul fast float %1792, 2.000000e+00
  %1954 = fmul fast float %1953, %1753
  %1955 = fmul fast float %1953, %1754
  %1956 = fmul fast float %1953, %1755
  %1957 = fsub fast float %1781, %1954
  %1958 = fsub fast float %1782, %1955
  %1959 = fsub fast float %1783, %1956
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = bitcast float %1961 to i32
  %1963 = lshr i32 %1962, 8
  %1964 = and i32 %1963, 255
  %1965 = uitofp i32 %1964 to float
  %1966 = fptoui float %1965 to i32
  %1967 = and i32 %1966, 4
  %1968 = icmp ne i32 %1967, 0
  %1969 = select i1 %1968, float %1898, float 1.000000e+00
  %1970 = call float @dx.op.binary.f32(i32 36, float %1969, float 1.000000e+00)  ; FMin(a,b)
  %1971 = fsub fast float 1.000000e+00, %1970
  %1972 = bitcast float %1971 to i32
  %1973 = ashr i32 %1972, 1
  %1974 = add nsw i32 %1973, 532487669
  %1975 = bitcast i32 %1974 to float
  %1976 = fsub fast float 1.000000e+00, %1897
  %1977 = call float @dx.op.binary.f32(i32 35, float %1976, float 0x3F847AE140000000)  ; FMax(a,b)
  %1978 = fmul fast float %1977, %1977
  %1979 = fmul fast float %1978, %1978
  %1980 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %45, float %1975, float %1979, float %1980, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = and i32 %1966, 1
  %1984 = icmp ne i32 %1983, 0
  %1985 = fsub fast float 1.000000e+00, %1969
  %1986 = bitcast float %1985 to i32
  %1987 = sub nsw i32 2129859010, %1986
  %1988 = bitcast i32 %1987 to float
  %1989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.i32 %1989, 0
  %1991 = icmp eq i32 %1990, 1
  %1992 = select i1 %1991, float 0.000000e+00, float 1.000000e+00
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = fcmp fast ogt float %1994, 0.000000e+00
  %1996 = fcmp fast ogt float %1992, 0.000000e+00
  %1997 = and i1 %1995, %1996
  br i1 %1997, label %1998, label %2182, !dx.controlflow.hints !99

; <label>:1998                                    ; preds = %1950
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.CBufRet.f32 %1999, 2
  %2003 = fadd fast float %2000, %116
  %2004 = fadd fast float %2001, %117
  %2005 = fadd fast float %2002, %118
  %2006 = fmul fast float %1753, 3.200000e+01
  %2007 = fmul fast float %1754, 3.200000e+01
  %2008 = fadd fast float %2003, %2006
  %2009 = fadd fast float %2004, %2007
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.CBufRet.f32 %2010, 1
  %2013 = fsub fast float %2008, %2011
  %2014 = fsub fast float %2009, %2012
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2018 = fmul fast float %2013, %2016
  %2019 = fmul fast float %2014, %2017
  %2020 = fmul fast float %116, %116
  %2021 = fmul fast float %117, %117
  %2022 = fadd fast float %2020, %2021
  %2023 = call float @dx.op.unary.f32(i32 24, float %2022)  ; Sqrt(value)
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2027 = fsub fast float %2023, %2025
  %2028 = fdiv fast float %2027, %2026
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = fmul fast float %2029, 2.000000e+00
  %2031 = fsub fast float 3.000000e+00, %2030
  %2032 = fmul fast float %2029, %2029
  %2033 = fmul fast float %2032, %2031
  %2034 = fcmp fast oge float %2018, 0.000000e+00
  %2035 = fcmp fast ole float %2018, 1.000000e+00
  %2036 = and i1 %2035, %2034
  %2037 = fcmp fast oge float %2019, 0.000000e+00
  %2038 = and i1 %2037, %2036
  %2039 = fcmp fast ole float %2019, 1.000000e+00
  %2040 = and i1 %2039, %2038
  %2041 = fcmp fast ogt float %2033, 0.000000e+00
  %2042 = and i1 %2041, %2040
  br i1 %2042, label %2043, label %2166, !dx.controlflow.hints !100

; <label>:2043                                    ; preds = %1998
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 2
  %2046 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2047 = fmul fast float %2045, %2018
  %2048 = fmul fast float %2046, %2019
  %2049 = call float @dx.op.unary.f32(i32 27, float %2047)  ; Round_ni(value)
  %2050 = call float @dx.op.unary.f32(i32 27, float %2048)  ; Round_ni(value)
  %2051 = fptosi float %2049 to i32
  %2052 = fptosi float %2050 to i32
  %2053 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2051, i32 %2052, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = lshr i32 %2054, 16
  %2056 = icmp eq i32 %2055, 65535
  br i1 %2056, label %2166, label %2057

; <label>:2057                                    ; preds = %2043
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = fmul fast float %2059, %2018
  %2061 = extractvalue %dx.types.CBufRet.f32 %2058, 1
  %2062 = fadd fast float %2060, %2061
  %2063 = extractvalue %dx.types.CBufRet.f32 %2058, 2
  %2064 = fmul fast float %2063, %2019
  %2065 = extractvalue %dx.types.CBufRet.f32 %2058, 3
  %2066 = fadd fast float %2064, %2065
  %2067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %2062, float %2066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = extractvalue %dx.types.ResRet.f32 %2067, 1
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 1
  %2072 = extractvalue %dx.types.CBufRet.f32 %2070, 0
  %2073 = fsub fast float %2071, %2072
  %2074 = fmul fast float %2073, %2068
  %2075 = fadd fast float %2074, %2072
  %2076 = extractvalue %dx.types.CBufRet.f32 %2070, 3
  %2077 = extractvalue %dx.types.CBufRet.f32 %2070, 2
  %2078 = fsub fast float %2076, %2077
  %2079 = fmul fast float %2078, %2069
  %2080 = fadd fast float %2079, %2077
  %2081 = fsub fast float %2005, %2075
  %2082 = fsub fast float %2080, %2075
  %2083 = fdiv fast float %2081, %2082
  %2084 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2085 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %2086 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2087 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2088 = fmul fast float %2086, %2018
  %2089 = fmul fast float %2087, %2019
  %2090 = fmul fast float %2088, 1.250000e-01
  %2091 = fmul fast float %2089, 1.250000e-01
  %2092 = call float @dx.op.unary.f32(i32 27, float %2090)  ; Round_ni(value)
  %2093 = call float @dx.op.unary.f32(i32 27, float %2091)  ; Round_ni(value)
  %2094 = fmul fast float %2092, 8.000000e+00
  %2095 = fmul fast float %2093, 8.000000e+00
  %2096 = fsub fast float %2088, %2094
  %2097 = fsub fast float %2089, %2095
  %2098 = fadd fast float %2096, 5.000000e-01
  %2099 = fadd fast float %2097, 5.000000e-01
  %2100 = and i32 %2055, 255
  %2101 = lshr i32 %2054, 24
  %2102 = mul nuw nsw i32 %2100, 9
  %2103 = uitofp i32 %2102 to float
  %2104 = mul nuw nsw i32 %2101, 9
  %2105 = uitofp i32 %2104 to float
  %2106 = fadd fast float %2098, %2103
  %2107 = fadd fast float %2099, %2105
  %2108 = fdiv fast float %2106, %1994
  %2109 = fdiv fast float %2107, %2085
  %2110 = fmul fast float %2084, 4.375000e-01
  %2111 = fadd fast float %2110, 3.125000e-02
  %2112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2108, float %2109, float %2111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.ResRet.f32 %2112, 2
  %2116 = fadd fast float %2110, 5.312500e-01
  %2117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2108, float %2109, float %2116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2118 = extractvalue %dx.types.ResRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.ResRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.ResRet.f32 %2117, 2
  %2121 = fmul fast float %2118, 2.000000e+00
  %2122 = fmul fast float %2119, 2.000000e+00
  %2123 = fmul fast float %2120, 2.000000e+00
  %2124 = fadd fast float %2121, -1.000000e+00
  %2125 = fadd fast float %2122, -1.000000e+00
  %2126 = fadd fast float %2123, -1.000000e+00
  %2127 = fmul fast float %2124, %2124
  %2128 = fmul fast float %2125, %2125
  %2129 = fadd fast float %2127, %2128
  %2130 = fmul fast float %2126, %2126
  %2131 = fadd fast float %2129, %2130
  %2132 = call float @dx.op.unary.f32(i32 24, float %2131)  ; Sqrt(value)
  %2133 = fcmp fast ogt float %2132, 0.000000e+00
  br i1 %2133, label %2134, label %2138

; <label>:2134                                    ; preds = %2057
  %2135 = fdiv fast float %2124, %2132
  %2136 = fdiv fast float %2125, %2132
  %2137 = fdiv fast float %2126, %2132
  br label %2138

; <label>:2138                                    ; preds = %2134, %2057
  %2139 = phi float [ %2135, %2134 ], [ 0.000000e+00, %2057 ]
  %2140 = phi float [ %2136, %2134 ], [ 0.000000e+00, %2057 ]
  %2141 = phi float [ %2137, %2134 ], [ 0.000000e+00, %2057 ]
  %2142 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2142)  ; FMax(a,b)
  %2144 = fmul fast float %2143, 0x400C5BF8A0000000
  %2145 = fmul fast float %2113, %2033
  %2146 = fmul fast float %2145, %2144
  %2147 = fmul fast float %2114, %2033
  %2148 = fmul fast float %2147, %2144
  %2149 = fmul fast float %2115, %2033
  %2150 = fmul fast float %2149, %2144
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 3
  %2153 = fmul fast float %2146, %2152
  %2154 = fmul fast float %2148, %2152
  %2155 = fmul fast float %2150, %2152
  %2156 = fcmp fast ogt float %2005, %2080
  br i1 %2156, label %2157, label %2166

; <label>:2157                                    ; preds = %2138
  %2158 = fmul fast float %2082, 0x3FC24924A0000000
  %2159 = fsub fast float %2005, %2080
  %2160 = fdiv fast float %2159, %2158
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = fmul fast float %2162, %2153
  %2164 = fmul fast float %2162, %2154
  %2165 = fmul fast float %2162, %2155
  br label %2166

; <label>:2166                                    ; preds = %2157, %2138, %2043, %1998
  %2167 = phi float [ %2165, %2157 ], [ %2155, %2138 ], [ 0.000000e+00, %2043 ], [ 0.000000e+00, %1998 ]
  %2168 = phi float [ %2164, %2157 ], [ %2154, %2138 ], [ 0.000000e+00, %2043 ], [ 0.000000e+00, %1998 ]
  %2169 = phi float [ %2163, %2157 ], [ %2153, %2138 ], [ 0.000000e+00, %2043 ], [ 0.000000e+00, %1998 ]
  %2170 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2169)  ; FMax(a,b)
  %2171 = fmul fast float %2170, 0x3FD20DD760000000
  %2172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2168)  ; FMax(a,b)
  %2173 = fmul fast float %2172, 0x3FD20DD760000000
  %2174 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2167)  ; FMax(a,b)
  %2175 = fmul fast float %2174, 0x3FD20DD760000000
  %2176 = call float @dx.op.binary.f32(i32 35, float %2171, float 0.000000e+00)  ; FMax(a,b)
  %2177 = call float @dx.op.binary.f32(i32 35, float %2173, float 0.000000e+00)  ; FMax(a,b)
  %2178 = call float @dx.op.binary.f32(i32 35, float %2175, float 0.000000e+00)  ; FMax(a,b)
  %2179 = fmul fast float %2176, %1992
  %2180 = fmul fast float %2177, %1992
  %2181 = fmul fast float %2178, %1992
  br label %2182

; <label>:2182                                    ; preds = %2166, %1950
  %2183 = phi float [ %2179, %2166 ], [ 0.000000e+00, %1950 ]
  %2184 = phi float [ %2180, %2166 ], [ 0.000000e+00, %1950 ]
  %2185 = phi float [ %2181, %2166 ], [ 0.000000e+00, %1950 ]
  br i1 %1991, label %2186, label %2978, !dx.controlflow.hints !101

; <label>:2186                                    ; preds = %2182
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2191 = fadd fast float %2188, %116
  %2192 = fadd fast float %2189, %117
  %2193 = fadd fast float %2190, %118
  %2194 = fmul fast float %1753, 3.200000e+01
  %2195 = fmul fast float %1754, 3.200000e+01
  %2196 = fadd fast float %2191, %2194
  %2197 = fadd fast float %2192, %2195
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2201 = fsub fast float %2196, %2199
  %2202 = fsub fast float %2197, %2200
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2206 = fmul fast float %2201, %2204
  %2207 = fmul fast float %2202, %2205
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = fmul fast float %2206, %2209
  %2211 = extractvalue %dx.types.CBufRet.f32 %2208, 1
  %2212 = fadd fast float %2210, %2211
  %2213 = extractvalue %dx.types.CBufRet.f32 %2208, 2
  %2214 = fmul fast float %2213, %2207
  %2215 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2216 = fadd fast float %2214, %2215
  %2217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %2212, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2222 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2223 = fsub fast float %2221, %2222
  %2224 = fmul fast float %2223, %2218
  %2225 = fadd fast float %2224, %2222
  %2226 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2227 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2228 = fsub fast float %2226, %2227
  %2229 = fmul fast float %2228, %2219
  %2230 = fadd fast float %2229, %2227
  %2231 = fsub fast float %2193, %2225
  %2232 = fsub fast float %2230, %2225
  %2233 = fdiv fast float %2231, %2232
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = fmul fast float %2236, %2234
  %2238 = extractvalue %dx.types.CBufRet.f32 %2235, 1
  %2239 = fadd fast float %2237, %2238
  %2240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %2212, float %2216, float %2239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.ResRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.ResRet.f32 %2240, 2
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = extractvalue %dx.types.CBufRet.f32 %2244, 2
  %2248 = fmul fast float %2245, %2241
  %2249 = fmul fast float %2246, %2242
  %2250 = fmul fast float %2247, %2243
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2254 = extractvalue %dx.types.CBufRet.f32 %2251, 2
  %2255 = fadd fast float %2248, %2252
  %2256 = fadd fast float %2249, %2253
  %2257 = fadd fast float %2250, %2254
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = fmul fast float %2259, %2206
  %2261 = extractvalue %dx.types.CBufRet.f32 %2258, 1
  %2262 = fadd fast float %2260, %2261
  %2263 = extractvalue %dx.types.CBufRet.f32 %2258, 2
  %2264 = fmul fast float %2263, %2207
  %2265 = extractvalue %dx.types.CBufRet.f32 %2258, 3
  %2266 = fadd fast float %2264, %2265
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2270 = extractvalue %dx.types.CBufRet.f32 %2267, 2
  %2271 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.CBufRet.f32 %2272, 2
  %2276 = extractvalue %dx.types.CBufRet.f32 %2272, 3
  %2277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2262, float %2266, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.ResRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.ResRet.f32 %2277, 2
  %2281 = extractvalue %dx.types.ResRet.f32 %2277, 3
  %2282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2262, float %2266, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.ResRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.ResRet.f32 %2282, 2
  %2286 = extractvalue %dx.types.ResRet.f32 %2282, 3
  %2287 = fmul fast float %2278, %2255
  %2288 = fmul fast float %2283, %2255
  %2289 = fmul fast float %2285, %2255
  %2290 = fmul fast float %2281, %2255
  %2291 = fadd fast float %2287, %2268
  %2292 = fadd fast float %2288, %2269
  %2293 = fadd fast float %2289, %2270
  %2294 = fadd fast float %2290, %2271
  %2295 = fmul fast float %2279, %2255
  %2296 = fmul fast float %2284, %2255
  %2297 = fadd fast float %2295, %2273
  %2298 = fadd fast float %2296, %2274
  %2299 = fmul fast float %2280, %2255
  %2300 = fmul fast float %2286, %2255
  %2301 = fadd fast float %2299, %2275
  %2302 = fadd fast float %2300, %2276
  %2303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2262, float %2266, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.ResRet.f32 %2303, 3
  %2308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2262, float %2266, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2309 = extractvalue %dx.types.ResRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.ResRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.ResRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.ResRet.f32 %2308, 3
  %2313 = fmul fast float %2304, %2256
  %2314 = fmul fast float %2309, %2256
  %2315 = fmul fast float %2311, %2256
  %2316 = fmul fast float %2307, %2256
  %2317 = fadd fast float %2291, %2313
  %2318 = fadd fast float %2292, %2314
  %2319 = fadd fast float %2293, %2315
  %2320 = fadd fast float %2294, %2316
  %2321 = fmul fast float %2305, %2256
  %2322 = fmul fast float %2310, %2256
  %2323 = fadd fast float %2297, %2321
  %2324 = fadd fast float %2298, %2322
  %2325 = fmul fast float %2306, %2256
  %2326 = fmul fast float %2312, %2256
  %2327 = fadd fast float %2301, %2325
  %2328 = fadd fast float %2302, %2326
  %2329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2262, float %2266, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.ResRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.ResRet.f32 %2329, 2
  %2333 = extractvalue %dx.types.ResRet.f32 %2329, 3
  %2334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2262, float %2266, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.ResRet.f32 %2334, 1
  %2337 = extractvalue %dx.types.ResRet.f32 %2334, 2
  %2338 = extractvalue %dx.types.ResRet.f32 %2334, 3
  %2339 = fmul fast float %2330, %2257
  %2340 = fmul fast float %2335, %2257
  %2341 = fmul fast float %2337, %2257
  %2342 = fmul fast float %2333, %2257
  %2343 = fadd fast float %2317, %2339
  %2344 = fadd fast float %2318, %2340
  %2345 = fadd fast float %2319, %2341
  %2346 = fadd fast float %2320, %2342
  %2347 = fmul fast float %2331, %2257
  %2348 = fmul fast float %2336, %2257
  %2349 = fadd fast float %2323, %2347
  %2350 = fadd fast float %2324, %2348
  %2351 = fmul fast float %2332, %2257
  %2352 = fmul fast float %2338, %2257
  %2353 = fadd fast float %2327, %2351
  %2354 = fadd fast float %2328, %2352
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = fsub fast float %2191, %2356
  %2358 = fsub fast float %2199, %2191
  %2359 = call float @dx.op.binary.f32(i32 35, float %2358, float %2357)  ; FMax(a,b)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2361 = fsub fast float %2192, %2360
  %2362 = fsub fast float %2200, %2192
  %2363 = call float @dx.op.binary.f32(i32 35, float %2362, float %2361)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 35, float %2359, float %2363)  ; FMax(a,b)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2366 = fmul fast float %2365, %2364
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.CBufRet.f32 %2368, 2
  %2372 = extractvalue %dx.types.CBufRet.f32 %2368, 3
  %2373 = fsub fast float %2369, %2343
  %2374 = fsub fast float %2370, %2344
  %2375 = fsub fast float %2371, %2345
  %2376 = fsub fast float %2372, %2346
  %2377 = fmul fast float %2373, %2367
  %2378 = fmul fast float %2374, %2367
  %2379 = fmul fast float %2375, %2367
  %2380 = fmul fast float %2376, %2367
  %2381 = fadd fast float %2377, %2343
  %2382 = fadd fast float %2378, %2344
  %2383 = fadd fast float %2379, %2345
  %2384 = fadd fast float %2380, %2346
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 0
  %2387 = extractvalue %dx.types.CBufRet.f32 %2385, 1
  %2388 = fsub fast float %2386, %2349
  %2389 = fsub fast float %2387, %2350
  %2390 = fmul fast float %2388, %2367
  %2391 = fmul fast float %2389, %2367
  %2392 = fadd fast float %2390, %2349
  %2393 = fadd fast float %2391, %2350
  %2394 = extractvalue %dx.types.CBufRet.f32 %2385, 2
  %2395 = extractvalue %dx.types.CBufRet.f32 %2385, 3
  %2396 = fsub fast float %2394, %2353
  %2397 = fsub fast float %2395, %2354
  %2398 = fmul fast float %2396, %2367
  %2399 = fmul fast float %2397, %2367
  %2400 = fadd fast float %2398, %2353
  %2401 = fadd fast float %2399, %2354
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2404 = fmul fast float %2403, %2381
  %2405 = fmul fast float %2403, %2382
  %2406 = fmul fast float %2403, %2383
  %2407 = fmul fast float %2403, %2384
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = fmul fast float %2409, %2392
  %2411 = fmul fast float %2409, %2393
  %2412 = fadd fast float %2410, %2404
  %2413 = fadd fast float %2411, %2406
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 0
  %2416 = fmul fast float %2415, %2400
  %2417 = fmul fast float %2415, %2401
  %2418 = fadd fast float %2412, %2416
  %2419 = fadd fast float %2413, %2417
  %2420 = extractvalue %dx.types.CBufRet.f32 %2402, 1
  %2421 = fmul fast float %2420, %2381
  %2422 = fmul fast float %2420, %2382
  %2423 = fmul fast float %2420, %2383
  %2424 = fmul fast float %2420, %2384
  %2425 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2426 = fmul fast float %2425, %2392
  %2427 = fmul fast float %2425, %2393
  %2428 = fadd fast float %2426, %2421
  %2429 = fadd fast float %2427, %2423
  %2430 = extractvalue %dx.types.CBufRet.f32 %2414, 1
  %2431 = fmul fast float %2430, %2400
  %2432 = fmul fast float %2430, %2401
  %2433 = fadd fast float %2428, %2431
  %2434 = fadd fast float %2429, %2432
  %2435 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2436 = fmul fast float %2435, %2381
  %2437 = fmul fast float %2435, %2382
  %2438 = fmul fast float %2435, %2383
  %2439 = fmul fast float %2435, %2384
  %2440 = extractvalue %dx.types.CBufRet.f32 %2408, 2
  %2441 = fmul fast float %2440, %2392
  %2442 = fmul fast float %2440, %2393
  %2443 = fadd fast float %2441, %2436
  %2444 = fadd fast float %2442, %2438
  %2445 = extractvalue %dx.types.CBufRet.f32 %2414, 2
  %2446 = fmul fast float %2445, %2400
  %2447 = fmul fast float %2445, %2401
  %2448 = fadd fast float %2443, %2446
  %2449 = fadd fast float %2444, %2447
  %2450 = fmul fast float %2437, %2437
  %2451 = fmul fast float %2449, %2449
  %2452 = fmul fast float %2439, %2439
  %2453 = fadd fast float %2452, %2450
  %2454 = fadd fast float %2453, %2451
  %2455 = call float @dx.op.unary.f32(i32 24, float %2454)  ; Sqrt(value)
  %2456 = fcmp fast ugt float %2455, 0.000000e+00
  br i1 %2456, label %2457, label %2472

; <label>:2457                                    ; preds = %2186
  %2458 = fsub fast float -0.000000e+00, %2439
  %2459 = fdiv fast float %2458, %2455
  %2460 = fsub fast float -0.000000e+00, %2437
  %2461 = fdiv fast float %2460, %2455
  %2462 = fdiv fast float %2449, %2455
  %2463 = fmul fast float %2448, 0x3FE279A760000000
  %2464 = fmul fast float %2461, %2437
  %2465 = fmul fast float %2462, %2449
  %2466 = fmul fast float %2459, %2439
  %2467 = fadd fast float %2464, %2466
  %2468 = fsub fast float %2467, %2465
  %2469 = call float @dx.op.unary.f32(i32 6, float %2468)  ; FAbs(value)
  %2470 = fadd fast float %2469, 0x3DDB7CDFE0000000
  %2471 = fdiv fast float %2463, %2470
  br label %2472

; <label>:2472                                    ; preds = %2457, %2186
  %2473 = phi float [ %2471, %2457 ], [ 1.000000e+00, %2186 ]
  %2474 = fmul fast float %2422, %2422
  %2475 = fmul fast float %2434, %2434
  %2476 = fmul fast float %2424, %2424
  %2477 = fadd fast float %2476, %2474
  %2478 = fadd fast float %2477, %2475
  %2479 = call float @dx.op.unary.f32(i32 24, float %2478)  ; Sqrt(value)
  %2480 = fcmp fast ugt float %2479, 0.000000e+00
  br i1 %2480, label %2481, label %2496

; <label>:2481                                    ; preds = %2472
  %2482 = fsub fast float -0.000000e+00, %2424
  %2483 = fdiv fast float %2482, %2479
  %2484 = fsub fast float -0.000000e+00, %2422
  %2485 = fdiv fast float %2484, %2479
  %2486 = fdiv fast float %2434, %2479
  %2487 = fmul fast float %2433, 0x3FE279A760000000
  %2488 = fmul fast float %2485, %2422
  %2489 = fmul fast float %2486, %2434
  %2490 = fmul fast float %2483, %2424
  %2491 = fadd fast float %2488, %2490
  %2492 = fsub fast float %2491, %2489
  %2493 = call float @dx.op.unary.f32(i32 6, float %2492)  ; FAbs(value)
  %2494 = fadd fast float %2493, 0x3DDB7CDFE0000000
  %2495 = fdiv fast float %2487, %2494
  br label %2496

; <label>:2496                                    ; preds = %2481, %2472
  %2497 = phi float [ %2495, %2481 ], [ 1.000000e+00, %2472 ]
  %2498 = call float @dx.op.binary.f32(i32 36, float %2497, float %2473)  ; FMin(a,b)
  %2499 = fmul fast float %2405, %2405
  %2500 = fmul fast float %2419, %2419
  %2501 = fmul fast float %2407, %2407
  %2502 = fadd fast float %2501, %2499
  %2503 = fadd fast float %2502, %2500
  %2504 = call float @dx.op.unary.f32(i32 24, float %2503)  ; Sqrt(value)
  %2505 = fcmp fast ugt float %2504, 0.000000e+00
  br i1 %2505, label %2506, label %2521

; <label>:2506                                    ; preds = %2496
  %2507 = fsub fast float -0.000000e+00, %2407
  %2508 = fdiv fast float %2507, %2504
  %2509 = fsub fast float -0.000000e+00, %2405
  %2510 = fdiv fast float %2509, %2504
  %2511 = fdiv fast float %2419, %2504
  %2512 = fmul fast float %2418, 0x3FE279A760000000
  %2513 = fmul fast float %2510, %2405
  %2514 = fmul fast float %2511, %2419
  %2515 = fmul fast float %2508, %2407
  %2516 = fadd fast float %2513, %2515
  %2517 = fsub fast float %2516, %2514
  %2518 = call float @dx.op.unary.f32(i32 6, float %2517)  ; FAbs(value)
  %2519 = fadd fast float %2518, 0x3DDB7CDFE0000000
  %2520 = fdiv fast float %2512, %2519
  br label %2521

; <label>:2521                                    ; preds = %2506, %2496
  %2522 = phi float [ %2520, %2506 ], [ 1.000000e+00, %2496 ]
  %2523 = call float @dx.op.binary.f32(i32 36, float %2522, float %2498)  ; FMin(a,b)
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2525 = fcmp fast olt float %2524, 1.000000e+00
  br i1 %2525, label %2526, label %2536

; <label>:2526                                    ; preds = %2521
  %2527 = fmul fast float %2524, %2405
  %2528 = fmul fast float %2524, %2419
  %2529 = fmul fast float %2524, %2407
  %2530 = fmul fast float %2524, %2422
  %2531 = fmul fast float %2524, %2434
  %2532 = fmul fast float %2524, %2424
  %2533 = fmul fast float %2524, %2437
  %2534 = fmul fast float %2524, %2449
  %2535 = fmul fast float %2524, %2439
  br label %2536

; <label>:2536                                    ; preds = %2526, %2521
  %2537 = phi float [ %2533, %2526 ], [ %2437, %2521 ]
  %2538 = phi float [ %2534, %2526 ], [ %2449, %2521 ]
  %2539 = phi float [ %2535, %2526 ], [ %2439, %2521 ]
  %2540 = phi float [ %2530, %2526 ], [ %2422, %2521 ]
  %2541 = phi float [ %2531, %2526 ], [ %2434, %2521 ]
  %2542 = phi float [ %2532, %2526 ], [ %2424, %2521 ]
  %2543 = phi float [ %2527, %2526 ], [ %2405, %2521 ]
  %2544 = phi float [ %2528, %2526 ], [ %2419, %2521 ]
  %2545 = phi float [ %2529, %2526 ], [ %2407, %2521 ]
  %2546 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2418)  ; FMax(a,b)
  %2547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2433)  ; FMax(a,b)
  %2548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2448)  ; FMax(a,b)
  %2549 = fcmp fast oge float %2206, 0.000000e+00
  %2550 = and i1 %2549, %1995
  %2551 = fcmp fast ole float %2206, 1.000000e+00
  %2552 = and i1 %2551, %2550
  %2553 = fcmp fast oge float %2207, 0.000000e+00
  %2554 = and i1 %2553, %2552
  %2555 = fcmp fast ole float %2207, 1.000000e+00
  %2556 = and i1 %2555, %2554
  br i1 %2556, label %2557, label %2697, !dx.controlflow.hints !102

; <label>:2557                                    ; preds = %2536
  %2558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.f32 %2558, 2
  %2560 = extractvalue %dx.types.CBufRet.f32 %2558, 3
  %2561 = fmul fast float %2559, %2206
  %2562 = fmul fast float %2560, %2207
  %2563 = call float @dx.op.unary.f32(i32 27, float %2561)  ; Round_ni(value)
  %2564 = call float @dx.op.unary.f32(i32 27, float %2562)  ; Round_ni(value)
  %2565 = fptosi float %2563 to i32
  %2566 = fptosi float %2564 to i32
  %2567 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2565, i32 %2566, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 65535
  %2570 = lshr i32 %2568, 16
  %2571 = icmp eq i32 %2569, 65535
  br i1 %2571, label %2608, label %2572

; <label>:2572                                    ; preds = %2557
  %2573 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %2574 = extractvalue %dx.types.CBufRet.f32 %2558, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2558, 1
  %2576 = fmul fast float %2574, %2206
  %2577 = fmul fast float %2575, %2207
  %2578 = fmul fast float %2576, 1.250000e-01
  %2579 = fmul fast float %2577, 1.250000e-01
  %2580 = call float @dx.op.unary.f32(i32 27, float %2578)  ; Round_ni(value)
  %2581 = call float @dx.op.unary.f32(i32 27, float %2579)  ; Round_ni(value)
  %2582 = fmul fast float %2580, 8.000000e+00
  %2583 = fmul fast float %2581, 8.000000e+00
  %2584 = and i32 %2568, 255
  %2585 = lshr i32 %2568, 8
  %2586 = and i32 %2585, 255
  %2587 = mul nuw nsw i32 %2584, 9
  %2588 = uitofp i32 %2587 to float
  %2589 = mul nuw nsw i32 %2586, 9
  %2590 = uitofp i32 %2589 to float
  %2591 = fadd fast float %2588, 5.000000e-01
  %2592 = fadd fast float %2591, %2576
  %2593 = fsub fast float %2592, %2582
  %2594 = fadd fast float %2590, 5.000000e-01
  %2595 = fadd fast float %2594, %2577
  %2596 = fsub fast float %2595, %2583
  %2597 = fdiv fast float %2593, %1994
  %2598 = fdiv fast float %2596, %2573
  %2599 = fmul fast float %2234, 4.375000e-01
  %2600 = fadd fast float %2599, 3.125000e-02
  %2601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2597, float %2598, float %2600, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2602 = extractvalue %dx.types.ResRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.ResRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.ResRet.f32 %2601, 2
  %2605 = fadd fast float %2602, %2546
  %2606 = fadd fast float %2603, %2547
  %2607 = fadd fast float %2604, %2548
  br label %2608

; <label>:2608                                    ; preds = %2572, %2557
  %2609 = phi float [ %2607, %2572 ], [ %2548, %2557 ]
  %2610 = phi float [ %2606, %2572 ], [ %2547, %2557 ]
  %2611 = phi float [ %2605, %2572 ], [ %2546, %2557 ]
  %2612 = icmp eq i32 %2570, 65535
  br i1 %2612, label %2697, label %2613

; <label>:2613                                    ; preds = %2608
  %2614 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %2615 = extractvalue %dx.types.CBufRet.f32 %2558, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2558, 1
  %2617 = fmul fast float %2615, %2206
  %2618 = fmul fast float %2616, %2207
  %2619 = fmul fast float %2617, 1.250000e-01
  %2620 = fmul fast float %2618, 1.250000e-01
  %2621 = call float @dx.op.unary.f32(i32 27, float %2619)  ; Round_ni(value)
  %2622 = call float @dx.op.unary.f32(i32 27, float %2620)  ; Round_ni(value)
  %2623 = fmul fast float %2621, 8.000000e+00
  %2624 = fmul fast float %2622, 8.000000e+00
  %2625 = fsub fast float %2617, %2623
  %2626 = fsub fast float %2618, %2624
  %2627 = fadd fast float %2625, 5.000000e-01
  %2628 = fadd fast float %2626, 5.000000e-01
  %2629 = and i32 %2570, 255
  %2630 = lshr i32 %2568, 24
  %2631 = mul nuw nsw i32 %2629, 9
  %2632 = uitofp i32 %2631 to float
  %2633 = mul nuw nsw i32 %2630, 9
  %2634 = uitofp i32 %2633 to float
  %2635 = fadd fast float %2627, %2632
  %2636 = fadd fast float %2628, %2634
  %2637 = fdiv fast float %2635, %1994
  %2638 = fdiv fast float %2636, %2614
  %2639 = fmul fast float %2234, 4.375000e-01
  %2640 = fadd fast float %2639, 3.125000e-02
  %2641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2637, float %2638, float %2640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.ResRet.f32 %2641, 2
  %2645 = fadd fast float %2639, 5.312500e-01
  %2646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2637, float %2638, float %2645, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.ResRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.ResRet.f32 %2646, 2
  %2650 = fmul fast float %2647, 2.000000e+00
  %2651 = fmul fast float %2648, 2.000000e+00
  %2652 = fmul fast float %2649, 2.000000e+00
  %2653 = fadd fast float %2650, -1.000000e+00
  %2654 = fadd fast float %2651, -1.000000e+00
  %2655 = fadd fast float %2652, -1.000000e+00
  %2656 = fmul fast float %2653, %2653
  %2657 = fmul fast float %2654, %2654
  %2658 = fadd fast float %2656, %2657
  %2659 = fmul fast float %2655, %2655
  %2660 = fadd fast float %2658, %2659
  %2661 = call float @dx.op.unary.f32(i32 24, float %2660)  ; Sqrt(value)
  %2662 = fcmp fast ogt float %2661, 0.000000e+00
  br i1 %2662, label %2663, label %2667

; <label>:2663                                    ; preds = %2613
  %2664 = fdiv fast float %2653, %2661
  %2665 = fdiv fast float %2654, %2661
  %2666 = fdiv fast float %2655, %2661
  br label %2667

; <label>:2667                                    ; preds = %2663, %2613
  %2668 = phi float [ %2664, %2663 ], [ 0.000000e+00, %2613 ]
  %2669 = phi float [ %2665, %2663 ], [ 0.000000e+00, %2613 ]
  %2670 = phi float [ %2666, %2663 ], [ 0.000000e+00, %2613 ]
  %2671 = fmul fast float %116, %116
  %2672 = fmul fast float %117, %117
  %2673 = fadd fast float %2671, %2672
  %2674 = call float @dx.op.unary.f32(i32 24, float %2673)  ; Sqrt(value)
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.CBufRet.f32 %2675, 1
  %2678 = fsub fast float %2674, %2676
  %2679 = fdiv fast float %2678, %2677
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = fmul fast float %2680, 2.000000e+00
  %2682 = fsub fast float 3.000000e+00, %2681
  %2683 = fmul fast float %2680, %2680
  %2684 = fmul fast float %2683, %2682
  %2685 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2669, float %2670, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2685)  ; FMax(a,b)
  %2687 = fmul fast float %2686, 0x400C5BF8A0000000
  %2688 = fmul fast float %2684, %2642
  %2689 = fmul fast float %2688, %2687
  %2690 = fadd fast float %2689, %2611
  %2691 = fmul fast float %2684, %2643
  %2692 = fmul fast float %2691, %2687
  %2693 = fadd fast float %2692, %2610
  %2694 = fmul fast float %2684, %2644
  %2695 = fmul fast float %2694, %2687
  %2696 = fadd fast float %2695, %2609
  br label %2697

; <label>:2697                                    ; preds = %2667, %2608, %2536
  %2698 = phi float [ %2696, %2667 ], [ %2609, %2608 ], [ %2548, %2536 ]
  %2699 = phi float [ %2693, %2667 ], [ %2610, %2608 ], [ %2547, %2536 ]
  %2700 = phi float [ %2690, %2667 ], [ %2611, %2608 ], [ %2546, %2536 ]
  %2701 = fcmp fast ogt float %2193, %2230
  %2702 = and i1 %2549, %2701
  %2703 = and i1 %2551, %2702
  %2704 = and i1 %2553, %2703
  %2705 = and i1 %2555, %2704
  br i1 %2705, label %2706, label %2763, !dx.controlflow.hints !103

; <label>:2706                                    ; preds = %2697
  %2707 = fmul fast float %2232, 0x3FC24924A0000000
  %2708 = fsub fast float %2193, %2230
  %2709 = fdiv fast float %2708, %2707
  %2710 = call float @dx.op.unary.f32(i32 7, float %2709)  ; Saturate(value)
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.CBufRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.CBufRet.f32 %2713, 2
  %2717 = fsub fast float %2712, %2700
  %2718 = fsub fast float %2714, %2543
  %2719 = fsub fast float %2715, %2544
  %2720 = fsub fast float %2716, %2545
  %2721 = fmul fast float %2717, %2710
  %2722 = fmul fast float %2718, %2710
  %2723 = fmul fast float %2719, %2710
  %2724 = fmul fast float %2720, %2710
  %2725 = fadd fast float %2721, %2700
  %2726 = fadd fast float %2722, %2543
  %2727 = fadd fast float %2723, %2544
  %2728 = fadd fast float %2724, %2545
  %2729 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.CBufRet.f32 %2730, 1
  %2733 = extractvalue %dx.types.CBufRet.f32 %2730, 2
  %2734 = fsub fast float %2729, %2699
  %2735 = fsub fast float %2731, %2540
  %2736 = fsub fast float %2732, %2541
  %2737 = fsub fast float %2733, %2542
  %2738 = fmul fast float %2734, %2710
  %2739 = fmul fast float %2735, %2710
  %2740 = fmul fast float %2736, %2710
  %2741 = fmul fast float %2737, %2710
  %2742 = fadd fast float %2738, %2699
  %2743 = fadd fast float %2739, %2540
  %2744 = fadd fast float %2740, %2541
  %2745 = fadd fast float %2741, %2542
  %2746 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.CBufRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.CBufRet.f32 %2747, 2
  %2751 = fsub fast float %2746, %2698
  %2752 = fsub fast float %2748, %2537
  %2753 = fsub fast float %2749, %2538
  %2754 = fsub fast float %2750, %2539
  %2755 = fmul fast float %2751, %2710
  %2756 = fmul fast float %2752, %2710
  %2757 = fmul fast float %2753, %2710
  %2758 = fmul fast float %2754, %2710
  %2759 = fadd fast float %2755, %2698
  %2760 = fadd fast float %2756, %2537
  %2761 = fadd fast float %2757, %2538
  %2762 = fadd fast float %2758, %2539
  br label %2763

; <label>:2763                                    ; preds = %2706, %2697
  %2764 = phi float [ %2759, %2706 ], [ %2698, %2697 ]
  %2765 = phi float [ %2760, %2706 ], [ %2537, %2697 ]
  %2766 = phi float [ %2761, %2706 ], [ %2538, %2697 ]
  %2767 = phi float [ %2762, %2706 ], [ %2539, %2697 ]
  %2768 = phi float [ %2742, %2706 ], [ %2699, %2697 ]
  %2769 = phi float [ %2743, %2706 ], [ %2540, %2697 ]
  %2770 = phi float [ %2744, %2706 ], [ %2541, %2697 ]
  %2771 = phi float [ %2745, %2706 ], [ %2542, %2697 ]
  %2772 = phi float [ %2725, %2706 ], [ %2700, %2697 ]
  %2773 = phi float [ %2726, %2706 ], [ %2543, %2697 ]
  %2774 = phi float [ %2727, %2706 ], [ %2544, %2697 ]
  %2775 = phi float [ %2728, %2706 ], [ %2545, %2697 ]
  %2776 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2777 = fmul fast float %2776, %2772
  %2778 = fmul fast float %2776, %2768
  %2779 = fmul fast float %2776, %2764
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 3
  %2782 = fmul fast float %2777, %2781
  %2783 = fmul fast float %2778, %2781
  %2784 = fmul fast float %2779, %2781
  %2785 = call float @dx.op.dot3.f32(i32 55, float %2782, float %2783, float %2784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2786 = fmul fast float %2785, 0x3FD20DD760000000
  %2787 = fmul fast float %2773, 1.500000e+00
  %2788 = fmul fast float %2787, %2776
  %2789 = fmul fast float %2788, %2781
  %2790 = fmul fast float %2774, 1.500000e+00
  %2791 = fmul fast float %2790, %2776
  %2792 = fmul fast float %2791, %2781
  %2793 = fmul fast float %2775, 1.500000e+00
  %2794 = fmul fast float %2793, %2776
  %2795 = fmul fast float %2794, %2781
  %2796 = fmul fast float %2769, 1.500000e+00
  %2797 = fmul fast float %2796, %2776
  %2798 = fmul fast float %2797, %2781
  %2799 = fmul fast float %2770, 1.500000e+00
  %2800 = fmul fast float %2799, %2776
  %2801 = fmul fast float %2800, %2781
  %2802 = fmul fast float %2771, 1.500000e+00
  %2803 = fmul fast float %2802, %2776
  %2804 = fmul fast float %2803, %2781
  %2805 = fmul fast float %2765, 1.500000e+00
  %2806 = fmul fast float %2805, %2776
  %2807 = fmul fast float %2806, %2781
  %2808 = fmul fast float %2766, 1.500000e+00
  %2809 = fmul fast float %2808, %2776
  %2810 = fmul fast float %2809, %2781
  %2811 = fmul fast float %2767, 1.500000e+00
  %2812 = fmul fast float %2811, %2776
  %2813 = fmul fast float %2812, %2781
  %2814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2782)  ; FMax(a,b)
  %2815 = call float @dx.op.dot3.f32(i32 55, float %2789, float %2792, float %2795, float %2789, float %2792, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2816 = fcmp fast oeq float %2815, 0.000000e+00
  %2817 = fcmp fast oeq float %2814, 0.000000e+00
  %2818 = or i1 %2817, %2816
  br i1 %2818, label %2848, label %2819

; <label>:2819                                    ; preds = %2763
  %2820 = fsub fast float -0.000000e+00, %2795
  %2821 = fsub fast float -0.000000e+00, %2789
  %2822 = call float @dx.op.unary.f32(i32 24, float %2815)  ; Sqrt(value)
  %2823 = fdiv fast float %2822, %2814
  %2824 = fcmp fast ogt float %2823, 0x3FFB6F8900000000
  %2825 = select i1 %2824, float 0x3FFB6F8900000000, float %2823
  %2826 = fmul fast float %2825, 0x3FE8A23460000000
  %2827 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2828 = call float @dx.op.binary.f32(i32 35, float %2825, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2829 = fmul fast float %2827, %2814
  %2830 = fmul fast float %2828, 0x3FF279A740000000
  %2831 = fadd fast float %2830, -1.000000e+00
  %2832 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2821, float %2792, float %2820, float %2821, float %2792)  ; Dot3(ax,ay,az,bx,by,bz)
  %2833 = call float @dx.op.unary.f32(i32 25, float %2832)  ; Rsqrt(value)
  %2834 = fmul fast float %2833, %2820
  %2835 = fmul fast float %2833, %2821
  %2836 = fmul fast float %2833, %2792
  %2837 = fmul fast float %2831, %2831
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = fmul fast float %2828, 0x40005F8BE0000000
  %2840 = fsub fast float 0x400C5BF8A0000000, %2839
  %2841 = fdiv fast float %2829, %2840
  %2842 = fmul fast float %2841, 0x3FEE31C3C0000000
  %2843 = fmul fast float %2842, %2838
  %2844 = fmul fast float %2828, 0x3FDACB7480000000
  %2845 = fadd fast float %2844, 0xBFD7347680000000
  %2846 = fmul fast float %2845, %2841
  %2847 = fmul fast float %2846, %2838
  br label %2848

; <label>:2848                                    ; preds = %2819, %2763
  %2849 = phi float [ %2834, %2819 ], [ 0.000000e+00, %2763 ]
  %2850 = phi float [ %2835, %2819 ], [ 0.000000e+00, %2763 ]
  %2851 = phi float [ %2836, %2819 ], [ 0.000000e+00, %2763 ]
  %2852 = phi float [ %2843, %2819 ], [ 0.000000e+00, %2763 ]
  %2853 = phi float [ %2847, %2819 ], [ 0.000000e+00, %2763 ]
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2850, float %2851, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = fmul fast float %2854, %2854
  %2856 = fmul fast float %2855, 0x3FEE471020000000
  %2857 = fadd fast float %2856, 0xBFD42F6020000000
  %2858 = fmul fast float %2814, 0x3FD20DD760000000
  %2859 = fmul fast float %2857, %2853
  %2860 = fmul fast float %2852, 0x3FDF454380000000
  %2861 = fmul fast float %2860, %2854
  %2862 = fadd fast float %2861, %2858
  %2863 = fadd fast float %2862, %2859
  %2864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2783)  ; FMax(a,b)
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2798, float %2801, float %2804, float %2798, float %2801, float %2804)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = fcmp fast oeq float %2865, 0.000000e+00
  %2867 = fcmp fast oeq float %2864, 0.000000e+00
  %2868 = or i1 %2867, %2866
  br i1 %2868, label %2898, label %2869

; <label>:2869                                    ; preds = %2848
  %2870 = fsub fast float -0.000000e+00, %2804
  %2871 = fsub fast float -0.000000e+00, %2798
  %2872 = call float @dx.op.unary.f32(i32 24, float %2865)  ; Sqrt(value)
  %2873 = fdiv fast float %2872, %2864
  %2874 = fcmp fast ogt float %2873, 0x3FFB6F8900000000
  %2875 = select i1 %2874, float 0x3FFB6F8900000000, float %2873
  %2876 = fmul fast float %2875, 0x3FE8A23460000000
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = call float @dx.op.binary.f32(i32 35, float %2875, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2879 = fmul fast float %2877, %2864
  %2880 = fmul fast float %2878, 0x3FF279A740000000
  %2881 = fadd fast float %2880, -1.000000e+00
  %2882 = call float @dx.op.dot3.f32(i32 55, float %2870, float %2871, float %2801, float %2870, float %2871, float %2801)  ; Dot3(ax,ay,az,bx,by,bz)
  %2883 = call float @dx.op.unary.f32(i32 25, float %2882)  ; Rsqrt(value)
  %2884 = fmul fast float %2883, %2870
  %2885 = fmul fast float %2883, %2871
  %2886 = fmul fast float %2883, %2801
  %2887 = fmul fast float %2881, %2881
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = fmul fast float %2878, 0x40005F8BE0000000
  %2890 = fsub fast float 0x400C5BF8A0000000, %2889
  %2891 = fdiv fast float %2879, %2890
  %2892 = fmul fast float %2891, 0x3FEE31C3C0000000
  %2893 = fmul fast float %2892, %2888
  %2894 = fmul fast float %2878, 0x3FDACB7480000000
  %2895 = fadd fast float %2894, 0xBFD7347680000000
  %2896 = fmul fast float %2895, %2891
  %2897 = fmul fast float %2896, %2888
  br label %2898

; <label>:2898                                    ; preds = %2869, %2848
  %2899 = phi float [ %2884, %2869 ], [ 0.000000e+00, %2848 ]
  %2900 = phi float [ %2885, %2869 ], [ 0.000000e+00, %2848 ]
  %2901 = phi float [ %2886, %2869 ], [ 0.000000e+00, %2848 ]
  %2902 = phi float [ %2893, %2869 ], [ 0.000000e+00, %2848 ]
  %2903 = phi float [ %2897, %2869 ], [ 0.000000e+00, %2848 ]
  %2904 = call float @dx.op.dot3.f32(i32 55, float %2899, float %2900, float %2901, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2905 = fmul fast float %2904, %2904
  %2906 = fmul fast float %2905, 0x3FEE471020000000
  %2907 = fadd fast float %2906, 0xBFD42F6020000000
  %2908 = fmul fast float %2864, 0x3FD20DD760000000
  %2909 = fmul fast float %2907, %2903
  %2910 = fmul fast float %2902, 0x3FDF454380000000
  %2911 = fmul fast float %2910, %2904
  %2912 = fadd fast float %2911, %2908
  %2913 = fadd fast float %2912, %2909
  %2914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2784)  ; FMax(a,b)
  %2915 = call float @dx.op.dot3.f32(i32 55, float %2807, float %2810, float %2813, float %2807, float %2810, float %2813)  ; Dot3(ax,ay,az,bx,by,bz)
  %2916 = fcmp fast oeq float %2915, 0.000000e+00
  %2917 = fcmp fast oeq float %2914, 0.000000e+00
  %2918 = or i1 %2917, %2916
  br i1 %2918, label %2948, label %2919

; <label>:2919                                    ; preds = %2898
  %2920 = fsub fast float -0.000000e+00, %2813
  %2921 = fsub fast float -0.000000e+00, %2807
  %2922 = call float @dx.op.unary.f32(i32 24, float %2915)  ; Sqrt(value)
  %2923 = fdiv fast float %2922, %2914
  %2924 = fcmp fast ogt float %2923, 0x3FFB6F8900000000
  %2925 = select i1 %2924, float 0x3FFB6F8900000000, float %2923
  %2926 = fmul fast float %2925, 0x3FE8A23460000000
  %2927 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2928 = call float @dx.op.binary.f32(i32 35, float %2925, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2929 = fmul fast float %2927, %2914
  %2930 = fmul fast float %2928, 0x3FF279A740000000
  %2931 = fadd fast float %2930, -1.000000e+00
  %2932 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2921, float %2810, float %2920, float %2921, float %2810)  ; Dot3(ax,ay,az,bx,by,bz)
  %2933 = call float @dx.op.unary.f32(i32 25, float %2932)  ; Rsqrt(value)
  %2934 = fmul fast float %2933, %2920
  %2935 = fmul fast float %2933, %2921
  %2936 = fmul fast float %2933, %2810
  %2937 = fmul fast float %2931, %2931
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = fmul fast float %2928, 0x40005F8BE0000000
  %2940 = fsub fast float 0x400C5BF8A0000000, %2939
  %2941 = fdiv fast float %2929, %2940
  %2942 = fmul fast float %2941, 0x3FEE31C3C0000000
  %2943 = fmul fast float %2942, %2938
  %2944 = fmul fast float %2928, 0x3FDACB7480000000
  %2945 = fadd fast float %2944, 0xBFD7347680000000
  %2946 = fmul fast float %2945, %2941
  %2947 = fmul fast float %2946, %2938
  br label %2948

; <label>:2948                                    ; preds = %2919, %2898
  %2949 = phi float [ %2934, %2919 ], [ 0.000000e+00, %2898 ]
  %2950 = phi float [ %2935, %2919 ], [ 0.000000e+00, %2898 ]
  %2951 = phi float [ %2936, %2919 ], [ 0.000000e+00, %2898 ]
  %2952 = phi float [ %2943, %2919 ], [ 0.000000e+00, %2898 ]
  %2953 = phi float [ %2947, %2919 ], [ 0.000000e+00, %2898 ]
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2951, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = fmul fast float %2954, %2954
  %2956 = fmul fast float %2955, 0x3FEE471020000000
  %2957 = fadd fast float %2956, 0xBFD42F6020000000
  %2958 = fmul fast float %2914, 0x3FD20DD760000000
  %2959 = fmul fast float %2957, %2953
  %2960 = fmul fast float %2952, 0x3FDF454380000000
  %2961 = fmul fast float %2960, %2954
  %2962 = fadd fast float %2961, %2958
  %2963 = fadd fast float %2962, %2959
  %2964 = call float @dx.op.binary.f32(i32 35, float %2863, float 0.000000e+00)  ; FMax(a,b)
  %2965 = call float @dx.op.binary.f32(i32 35, float %2913, float 0.000000e+00)  ; FMax(a,b)
  %2966 = call float @dx.op.binary.f32(i32 35, float %2963, float 0.000000e+00)  ; FMax(a,b)
  %2967 = fsub fast float %2183, %2964
  %2968 = fsub fast float %2184, %2965
  %2969 = fsub fast float %2185, %2966
  %2970 = fmul fast float %2967, %1992
  %2971 = fmul fast float %2968, %1992
  %2972 = fmul fast float %2969, %1992
  %2973 = fadd fast float %2970, %2964
  %2974 = fadd fast float %2971, %2965
  %2975 = fadd fast float %2972, %2966
  %2976 = fmul fast float %2786, %1992
  %2977 = fsub fast float %2786, %2976
  br label %2978

; <label>:2978                                    ; preds = %2948, %2182
  %2979 = phi float [ %2977, %2948 ], [ 0.000000e+00, %2182 ]
  %2980 = phi float [ %2973, %2948 ], [ %2183, %2182 ]
  %2981 = phi float [ %2974, %2948 ], [ %2184, %2182 ]
  %2982 = phi float [ %2975, %2948 ], [ %2185, %2182 ]
  %2983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.f32 %2983, 0
  %2985 = call float @dx.op.binary.f32(i32 36, float %1765, float %2984)  ; FMin(a,b)
  %2986 = fmul fast float %2985, %1971
  %2987 = fsub fast float 1.000000e+00, %2986
  %2988 = bitcast float %2987 to i32
  %2989 = sub nsw i32 2129859010, %2988
  %2990 = bitcast i32 %2989 to float
  %2991 = call float @dx.op.binary.f32(i32 36, float %1766, float %2984)  ; FMin(a,b)
  %2992 = fmul fast float %2991, %1971
  %2993 = fsub fast float 1.000000e+00, %2992
  %2994 = bitcast float %2993 to i32
  %2995 = sub nsw i32 2129859010, %2994
  %2996 = bitcast i32 %2995 to float
  %2997 = call float @dx.op.binary.f32(i32 36, float %1767, float %2984)  ; FMin(a,b)
  %2998 = fmul fast float %2997, %1971
  %2999 = fsub fast float 1.000000e+00, %2998
  %3000 = bitcast float %2999 to i32
  %3001 = sub nsw i32 2129859010, %3000
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %2980, %1970
  %3004 = fmul fast float %3003, %2990
  %3005 = fmul fast float %2981, %1970
  %3006 = fmul fast float %3005, %2996
  %3007 = fmul fast float %2982, %1970
  %3008 = fmul fast float %3007, %3002
  %3009 = extractvalue %dx.types.CBufRet.i32 %1989, 2
  %3010 = and i32 %3009, 1
  %3011 = icmp ne i32 %3010, 0
  %3012 = fsub fast float 1.000000e+00, %1992
  %3013 = select i1 %3011, float %1992, float %3004
  %3014 = select i1 %3011, float %3012, float %3006
  %3015 = select i1 %3011, float 0.000000e+00, float %3008
  %3016 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %3015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = select i1 %1951, float 0.000000e+00, float %3013
  %3018 = select i1 %1951, float %3016, float %3014
  %3019 = select i1 %1951, float 0.000000e+00, float %3015
  %3020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3021 = extractvalue %dx.types.CBufRet.f32 %3020, 0
  %3022 = bitcast float %3021 to i32
  %3023 = lshr i32 %3022, 8
  %3024 = and i32 %3023, 255
  %3025 = uitofp i32 %3024 to float
  %3026 = fptoui float %3025 to i32
  %3027 = icmp eq i32 %3026, 23
  br i1 %3027, label %3028, label %3051

; <label>:3028                                    ; preds = %2978
  %3029 = fmul fast float %3002, %1970
  %3030 = fmul fast float %2996, %1970
  %3031 = fmul fast float %2990, %1970
  %3032 = fadd fast float %3031, 1.000000e+00
  %3033 = fadd fast float %3030, 1.000000e+00
  %3034 = fadd fast float %3029, 1.000000e+00
  %3035 = fmul fast float %3032, 5.000000e-01
  %3036 = fmul fast float %3033, 5.000000e-01
  %3037 = fmul fast float %3034, 5.000000e-01
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = fmul fast float %3038, 1.023000e+03
  %3042 = fmul fast float %3039, 1.023000e+03
  %3043 = fmul fast float %3040, 1.023000e+03
  %3044 = fptoui float %3041 to i32
  %3045 = fptoui float %3042 to i32
  %3046 = fptoui float %3043 to i32
  %3047 = shl i32 %3045, 10
  %3048 = or i32 %3047, %3044
  %3049 = shl i32 %3046, 20
  %3050 = or i32 %3048, %3049
  br label %3051

; <label>:3051                                    ; preds = %3028, %2978
  %3052 = phi i32 [ %3050, %3028 ], [ 0, %2978 ]
  %3053 = fsub fast float 1.000000e+00, %1952
  %3054 = fmul fast float %3053, %1813
  %3055 = fadd fast float %3054, %1952
  %3056 = fcmp fast ogt float %1829, 0.000000e+00
  %3057 = select i1 %3056, float %1837, float 0.000000e+00
  %3058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1829, float %3057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3059 = extractvalue %dx.types.ResRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.ResRet.f32 %3058, 1
  %3061 = extractvalue %dx.types.ResRet.f32 %3058, 2
  %3062 = fadd fast float %3059, -5.000000e-01
  %3063 = fadd fast float %3060, -5.000000e-01
  %3064 = fadd fast float %3061, -5.000000e-01
  %3065 = fmul fast float %1848, %3062
  %3066 = fmul fast float %1852, %3063
  %3067 = fmul fast float %1952, 4.000000e+00
  %3068 = fmul fast float %3067, %3053
  %3069 = fmul fast float %3068, %1831
  %3070 = fmul fast float %3069, %3064
  %3071 = fadd fast float %1825, %3065
  %3072 = fadd fast float %1826, %3066
  %3073 = fadd fast float %3055, %3070
  %3074 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3075 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3076 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3077 = call float @dx.op.binary.f32(i32 35, float %3075, float %3076)  ; FMax(a,b)
  %3078 = call float @dx.op.binary.f32(i32 35, float %3074, float %3077)  ; FMax(a,b)
  %3079 = fsub fast float 1.000000e+00, %3078
  %3080 = extractvalue %dx.types.CBufRet.f32 %1960, 2
  %3081 = fcmp fast olt float %3080, 0.000000e+00
  br i1 %3081, label %3082, label %3786

; <label>:3082                                    ; preds = %3051
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 2
  %3085 = extractvalue %dx.types.CBufRet.f32 %3083, 3
  %3086 = fmul fast float %3084, %72
  %3087 = fmul fast float %3085, %73
  %3088 = fptoui float %3086 to i32
  %3089 = fptoui float %3087 to i32
  %3090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3091 = extractvalue %dx.types.CBufRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.CBufRet.f32 %3090, 2
  %3093 = extractvalue %dx.types.CBufRet.f32 %3090, 3
  %3094 = fadd fast float %69, -4.000000e+00
  %3095 = call float @dx.op.binary.f32(i32 35, float %3094, float 0.000000e+00)  ; FMax(a,b)
  %3096 = fadd fast float %3095, %3091
  %3097 = fmul fast float %3096, %3092
  %3098 = call float @dx.op.unary.f32(i32 23, float %3097)  ; Log(value)
  %3099 = fmul fast float %3098, %3093
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3102 = fmul fast float %3099, %3101
  %3103 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3105 = extractvalue %dx.types.CBufRet.i32 %3104, 1
  %3106 = add i32 %3105, -1
  %3107 = uitofp i32 %3105 to float
  %3108 = fmul fast float %3107, %3103
  %3109 = fptoui float %3108 to i32
  %3110 = call i32 @dx.op.binary.i32(i32 40, i32 %3109, i32 %3106)  ; UMin(a,b)
  %3111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.i32 %3111, 2
  %3113 = extractvalue %dx.types.CBufRet.i32 %3111, 3
  %3114 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3089, i32 %3112, i32 %3088)  ; UMad(a,b,c)
  %3115 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3110, i32 %3113, i32 %3114)  ; UMad(a,b,c)
  %3116 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %3117 = fptoui float %3116 to i32
  %3118 = lshr i32 %3117, 5
  %3119 = call i32 @dx.op.binary.i32(i32 40, i32 %3118, i32 8191)  ; UMin(a,b)
  %3120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.i32 %3120, 2
  %3122 = add nsw i32 %3121, -1
  %3123 = call i32 @dx.op.binary.i32(i32 37, i32 %3122, i32 0)  ; IMax(a,b)
  %3124 = shl i32 %3119, 2
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = lshr i32 %3126, 16
  %3128 = and i32 %3126, 65535
  %3129 = lshr i32 %3126, 21
  %3130 = lshr i32 %3128, 5
  %3131 = call i32 @dx.op.binary.i32(i32 40, i32 %3130, i32 %3123)  ; UMin(a,b)
  %3132 = icmp ugt i32 %3129, %3131
  br i1 %3132, label %3711, label %3133

; <label>:3133                                    ; preds = %3082
  br label %3134

; <label>:3134                                    ; preds = %3693, %3133
  %3135 = phi i32 [ %3694, %3693 ], [ %1727, %3133 ]
  %3136 = phi i32 [ %3695, %3693 ], [ %3052, %3133 ]
  %3137 = phi float [ %3696, %3693 ], [ 0.000000e+00, %3133 ]
  %3138 = phi float [ %3697, %3693 ], [ 0.000000e+00, %3133 ]
  %3139 = phi float [ %3698, %3693 ], [ 0.000000e+00, %3133 ]
  %3140 = phi float [ %3699, %3693 ], [ 0.000000e+00, %3133 ]
  %3141 = phi float [ %3700, %3693 ], [ 0.000000e+00, %3133 ]
  %3142 = phi float [ %3701, %3693 ], [ 0.000000e+00, %3133 ]
  %3143 = phi i32 [ %3702, %3693 ], [ 0, %3133 ]
  %3144 = phi float [ %3703, %3693 ], [ 0.000000e+00, %3133 ]
  %3145 = phi float [ %3704, %3693 ], [ 0.000000e+00, %3133 ]
  %3146 = phi float [ %3705, %3693 ], [ 0.000000e+00, %3133 ]
  %3147 = phi i32 [ %3706, %3693 ], [ 1, %3133 ]
  %3148 = phi float [ %3707, %3693 ], [ 1.000000e+00, %3133 ]
  %3149 = phi i32 [ %3708, %3693 ], [ %3129, %3133 ]
  %3150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.i32 %3150, 2
  %3152 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3115, i32 %3151, i32 %3149)  ; UMad(a,b,c)
  %3153 = shl i32 %3152, 2
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = shl i32 %3149, 5
  %3157 = sub nsw i32 %3127, %3156
  %3158 = call i32 @dx.op.binary.i32(i32 37, i32 %3157, i32 0)  ; IMax(a,b)
  %3159 = call i32 @dx.op.binary.i32(i32 38, i32 %3158, i32 31)  ; IMin(a,b)
  %3160 = sub nsw i32 1, %3127
  %3161 = add nsw i32 %3160, %3128
  %3162 = call i32 @dx.op.binary.i32(i32 37, i32 %3161, i32 0)  ; IMax(a,b)
  %3163 = call i32 @dx.op.binary.i32(i32 38, i32 %3162, i32 32)  ; IMin(a,b)
  %3164 = and i32 %3163, 31
  %3165 = shl i32 -1, %3164
  %3166 = xor i32 %3165, -1
  %3167 = and i32 %3159, 31
  %3168 = shl i32 %3166, %3167
  %3169 = icmp eq i32 %3163, 32
  %3170 = select i1 %3169, i32 -1, i32 %3168
  %3171 = and i32 %3170, %3155
  %3172 = icmp eq i32 %3171, 0
  br i1 %3172, label %3693, label %3173

; <label>:3173                                    ; preds = %3134
  br label %3174

; <label>:3174                                    ; preds = %3308, %3173
  %3175 = phi i32 [ %3309, %3308 ], [ %3135, %3173 ]
  %3176 = phi i32 [ %3310, %3308 ], [ %3136, %3173 ]
  %3177 = phi float [ %3311, %3308 ], [ %3137, %3173 ]
  %3178 = phi float [ %3312, %3308 ], [ %3138, %3173 ]
  %3179 = phi float [ %3313, %3308 ], [ %3139, %3173 ]
  %3180 = phi float [ %3314, %3308 ], [ %3140, %3173 ]
  %3181 = phi float [ %3315, %3308 ], [ %3141, %3173 ]
  %3182 = phi float [ %3316, %3308 ], [ %3142, %3173 ]
  %3183 = phi i32 [ %3317, %3308 ], [ %3143, %3173 ]
  %3184 = phi float [ %3318, %3308 ], [ %3144, %3173 ]
  %3185 = phi float [ %3319, %3308 ], [ %3145, %3173 ]
  %3186 = phi float [ %3320, %3308 ], [ %3146, %3173 ]
  %3187 = phi i32 [ %3321, %3308 ], [ %3147, %3173 ]
  %3188 = phi float [ %3322, %3308 ], [ %3148, %3173 ]
  %3189 = phi i32 [ %3194, %3308 ], [ %3171, %3173 ]
  %3190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3189)  ; FirstbitLo(value)
  %3191 = add i32 %3190, %3156
  %3192 = and i32 %3190, 31
  %3193 = shl i32 1, %3192
  %3194 = xor i32 %3193, %3189
  %3195 = mul i32 %3191, 72
  %3196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.ResRet.f32 %3196, 1
  %3199 = extractvalue %dx.types.ResRet.f32 %3196, 2
  %3200 = add i32 %3195, 12
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = add i32 %3195, 16
  %3204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.ResRet.f32 %3204, 1
  %3207 = extractvalue %dx.types.ResRet.f32 %3204, 2
  %3208 = add i32 %3195, 28
  %3209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = add i32 %3195, 32
  %3212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = extractvalue %dx.types.ResRet.f32 %3212, 3
  %3217 = add i32 %3195, 48
  %3218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.ResRet.f32 %3218, 1
  %3221 = add i32 %3195, 56
  %3222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.ResRet.f32 %3222, 1
  %3225 = add i32 %3195, 64
  %3226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = mul i32 %3191, 60
  %3230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.ResRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.ResRet.f32 %3230, 2
  %3234 = add i32 %3229, 12
  %3235 = add i32 %3229, 48
  %3236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = and i32 %3202, 32767
  %3241 = bitcast float %3198 to i32
  %3242 = and i32 %3202, 32768
  %3243 = icmp ne i32 %3242, 0
  %3244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.CBufRet.f32 %3244, 1
  %3247 = extractvalue %dx.types.CBufRet.f32 %3244, 2
  %3248 = fsub fast float %3231, %3245
  %3249 = fsub fast float %3232, %3246
  %3250 = fsub fast float %3233, %3247
  %3251 = fsub fast float %116, %3248
  %3252 = fsub fast float %117, %3249
  %3253 = fsub fast float %118, %3250
  %3254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3252, float %3253, float %3255, float %3256, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = add i32 %3229, 24
  %3260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3252, float %3253, float %3261, float %3262, float %3263)  ; Dot3(ax,ay,az,bx,by,bz)
  %3265 = add i32 %3229, 36
  %3266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3252, float %3253, float %3267, float %3268, float %3269)  ; Dot3(ax,ay,az,bx,by,bz)
  %3271 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3272 = call float @dx.op.unary.f32(i32 6, float %3264)  ; FAbs(value)
  %3273 = call float @dx.op.unary.f32(i32 6, float %3270)  ; FAbs(value)
  %3274 = fsub fast float %3237, %3271
  %3275 = fsub fast float %3238, %3272
  %3276 = fsub fast float %3239, %3273
  %3277 = fmul fast float %3274, %3205
  %3278 = fmul fast float %3275, %3206
  %3279 = fmul fast float %3276, %3207
  %3280 = call float @dx.op.binary.f32(i32 36, float %3278, float %3279)  ; FMin(a,b)
  %3281 = call float @dx.op.binary.f32(i32 36, float %3277, float %3280)  ; FMin(a,b)
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = call float @dx.op.binary.f32(i32 36, float %3188, float %3282)  ; FMin(a,b)
  %3284 = uitofp i1 %3243 to float
  %3285 = select i1 %58, float 1.000000e+00, float 2.000000e+00
  %3286 = fsub fast float %3285, %3284
  %3287 = fmul fast float %3283, %3286
  %3288 = lshr i32 %3175, 8
  %3289 = and i32 %3288, 255
  %3290 = uitofp i32 %3289 to float
  %3291 = fptoui float %3290 to i32
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 1
  %3294 = bitcast float %3293 to i32
  %3295 = lshr i32 %3294, 24
  %3296 = uitofp i32 %3295 to float
  %3297 = fptoui float %3296 to i32
  %3298 = icmp ne i32 %3297, 1
  %3299 = zext i1 %3298 to i32
  %3300 = add i32 %3299, %3291
  %3301 = uitofp i32 %3300 to float
  %3302 = fptoui float %3301 to i32
  %3303 = shl i32 %3302, 8
  %3304 = and i32 %3303, 65280
  %3305 = and i32 %3175, -65281
  %3306 = or i32 %3304, %3305
  %3307 = fcmp fast ogt float %3287, 0.000000e+00
  br i1 %3307, label %3324, label %3308

; <label>:3308                                    ; preds = %3676, %3545, %3174
  %3309 = phi i32 [ %3623, %3545 ], [ %3306, %3174 ], [ %3623, %3676 ]
  %3310 = phi i32 [ %3176, %3545 ], [ %3176, %3174 ], [ %3691, %3676 ]
  %3311 = phi float [ %3609, %3545 ], [ %3177, %3174 ], [ %3609, %3676 ]
  %3312 = phi float [ %3610, %3545 ], [ %3178, %3174 ], [ %3610, %3676 ]
  %3313 = phi float [ %3611, %3545 ], [ %3179, %3174 ], [ %3611, %3676 ]
  %3314 = phi float [ %3670, %3545 ], [ %3180, %3174 ], [ %3670, %3676 ]
  %3315 = phi float [ %3671, %3545 ], [ %3181, %3174 ], [ %3671, %3676 ]
  %3316 = phi float [ %3672, %3545 ], [ %3182, %3174 ], [ %3672, %3676 ]
  %3317 = phi i32 [ %3674, %3545 ], [ %3183, %3174 ], [ %3674, %3676 ]
  %3318 = phi float [ %3627, %3545 ], [ %3184, %3174 ], [ %3627, %3676 ]
  %3319 = phi float [ %3628, %3545 ], [ %3185, %3174 ], [ %3628, %3676 ]
  %3320 = phi float [ %3629, %3545 ], [ %3186, %3174 ], [ %3629, %3676 ]
  %3321 = phi i32 [ 0, %3545 ], [ %3187, %3174 ], [ 0, %3676 ]
  %3322 = phi float [ %3612, %3545 ], [ %3188, %3174 ], [ %3612, %3676 ]
  %3323 = icmp eq i32 %3189, %3193
  br i1 %3323, label %3692, label %3174

; <label>:3324                                    ; preds = %3174
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 3
  %3327 = bitcast float %3197 to i32
  %3328 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3329 = bitcast float %3328 to i32
  %3330 = lshr i32 %3329, 8
  %3331 = and i32 %3330, 255
  %3332 = uitofp i32 %3331 to float
  %3333 = fptoui float %3332 to i32
  %3334 = and i32 %3333, 2
  %3335 = icmp eq i32 %3334, 0
  %3336 = select i1 %3335, float %1753, float %1781
  %3337 = select i1 %3335, float %1754, float %1782
  %3338 = select i1 %3335, float %1755, float %1783
  %3339 = icmp ne i32 %3327, -1
  %3340 = fcmp oeq float %3326, 0.000000e+00
  %3341 = and i1 %3340, %3339
  br i1 %3341, label %3342, label %3466

; <label>:3342                                    ; preds = %3324
  %3343 = fsub fast float -0.000000e+00, %3255
  %3344 = fsub fast float -0.000000e+00, %3256
  %3345 = fsub fast float -0.000000e+00, %3257
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3337, float %3338, float %3343, float %3344, float %3345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = fsub fast float -0.000000e+00, %3346
  %3348 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3252, float %3253, float %3343, float %3344, float %3345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3349 = fadd fast float %3348, %3220
  %3350 = fadd fast float %3219, %3348
  %3351 = fsub fast float -0.000000e+00, %3350
  %3352 = fcmp ogt float %3346, -0.000000e+00
  %3353 = select i1 %3352, float %3351, float %3349
  %3354 = call float @dx.op.unary.f32(i32 6, float %3347)  ; FAbs(value)
  %3355 = fdiv fast float 1.000000e+00, %3354
  %3356 = fmul fast float %3353, %3355
  %3357 = call float @dx.op.binary.f32(i32 35, float %3356, float 0.000000e+00)  ; FMax(a,b)
  %3358 = fsub fast float -0.000000e+00, %3261
  %3359 = fsub fast float -0.000000e+00, %3262
  %3360 = fsub fast float -0.000000e+00, %3263
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3337, float %3338, float %3358, float %3359, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = fsub fast float -0.000000e+00, %3361
  %3363 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3252, float %3253, float %3358, float %3359, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = fadd fast float %3363, %3224
  %3365 = fadd fast float %3223, %3363
  %3366 = fsub fast float -0.000000e+00, %3365
  %3367 = fcmp ogt float %3361, -0.000000e+00
  %3368 = select i1 %3367, float %3366, float %3364
  %3369 = call float @dx.op.unary.f32(i32 6, float %3362)  ; FAbs(value)
  %3370 = fdiv fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3368, %3370
  %3372 = call float @dx.op.binary.f32(i32 35, float %3371, float 0.000000e+00)  ; FMax(a,b)
  %3373 = fsub fast float -0.000000e+00, %3267
  %3374 = fsub fast float -0.000000e+00, %3268
  %3375 = fsub fast float -0.000000e+00, %3269
  %3376 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3337, float %3338, float %3373, float %3374, float %3375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3377 = fsub fast float -0.000000e+00, %3376
  %3378 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3252, float %3253, float %3373, float %3374, float %3375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3379 = fadd fast float %3378, %3228
  %3380 = fadd fast float %3227, %3378
  %3381 = fsub fast float -0.000000e+00, %3380
  %3382 = fcmp ogt float %3376, -0.000000e+00
  %3383 = select i1 %3382, float %3381, float %3379
  %3384 = call float @dx.op.unary.f32(i32 6, float %3377)  ; FAbs(value)
  %3385 = fdiv fast float 1.000000e+00, %3384
  %3386 = fmul fast float %3383, %3385
  %3387 = call float @dx.op.binary.f32(i32 35, float %3386, float 0.000000e+00)  ; FMax(a,b)
  %3388 = call float @dx.op.binary.f32(i32 36, float %3372, float %3387)  ; FMin(a,b)
  %3389 = call float @dx.op.binary.f32(i32 36, float %3357, float %3388)  ; FMin(a,b)
  %3390 = fmul fast float %3389, %3336
  %3391 = fmul fast float %3389, %3337
  %3392 = fmul fast float %3389, %3338
  %3393 = fadd fast float %3390, %116
  %3394 = fadd fast float %3391, %117
  %3395 = fadd fast float %3392, %118
  %3396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3397 = extractvalue %dx.types.CBufRet.f32 %3396, 0
  %3398 = extractvalue %dx.types.CBufRet.f32 %3396, 1
  %3399 = extractvalue %dx.types.CBufRet.f32 %3396, 2
  %3400 = fadd fast float %3393, %3397
  %3401 = fadd fast float %3394, %3398
  %3402 = fadd fast float %3395, %3399
  %3403 = fcmp fast olt float %3357, %3372
  %3404 = fcmp fast olt float %3357, %3387
  %3405 = and i1 %3403, %3404
  br i1 %3405, label %3409, label %3406

; <label>:3406                                    ; preds = %3342
  %3407 = fcmp fast olt float %3372, %3387
  br i1 %3407, label %3408, label %3409

; <label>:3408                                    ; preds = %3406
  br label %3409

; <label>:3409                                    ; preds = %3408, %3406, %3342
  %3410 = phi float [ 0.000000e+00, %3408 ], [ 0.000000e+00, %3406 ], [ 1.000000e+00, %3342 ]
  %3411 = phi float [ 1.000000e+00, %3408 ], [ 0.000000e+00, %3406 ], [ 0.000000e+00, %3342 ]
  %3412 = phi float [ 0.000000e+00, %3408 ], [ 1.000000e+00, %3406 ], [ 0.000000e+00, %3342 ]
  %3413 = phi float [ %3261, %3408 ], [ %3267, %3406 ], [ %3255, %3342 ]
  %3414 = phi float [ %3262, %3408 ], [ %3268, %3406 ], [ %3256, %3342 ]
  %3415 = phi float [ %3263, %3408 ], [ %3269, %3406 ], [ %3257, %3342 ]
  %3416 = call float @dx.op.unary.f32(i32 6, float %3415)  ; FAbs(value)
  %3417 = fcmp fast olt float %3416, 0x3FE276C8C0000000
  %3418 = select i1 %3417, float 0.000000e+00, float 1.000000e+00
  %3419 = select i1 %3417, float 1.000000e+00, float 0.000000e+00
  %3420 = fmul fast float %3419, %3414
  %3421 = fmul fast float %3418, %3415
  %3422 = fsub fast float %3420, %3421
  %3423 = fmul fast float %3413, %3419
  %3424 = fsub fast float -0.000000e+00, %3423
  %3425 = fmul fast float %3418, %3413
  %3426 = call float @dx.op.dot3.f32(i32 55, float %3422, float %3424, float %3425, float %3422, float %3424, float %3425)  ; Dot3(ax,ay,az,bx,by,bz)
  %3427 = call float @dx.op.unary.f32(i32 25, float %3426)  ; Rsqrt(value)
  %3428 = fmul fast float %3422, %3427
  %3429 = fmul fast float %3427, %3424
  %3430 = fmul fast float %3425, %3427
  %3431 = fmul fast float %3430, %3414
  %3432 = fmul fast float %3429, %3415
  %3433 = fsub fast float %3431, %3432
  %3434 = fmul fast float %3428, %3415
  %3435 = fmul fast float %3430, %3413
  %3436 = fsub fast float %3434, %3435
  %3437 = fmul fast float %3429, %3413
  %3438 = fmul fast float %3428, %3414
  %3439 = fsub fast float %3437, %3438
  %3440 = call float @dx.op.dot3.f32(i32 55, float %3433, float %3436, float %3439, float %3433, float %3436, float %3439)  ; Dot3(ax,ay,az,bx,by,bz)
  %3441 = call float @dx.op.unary.f32(i32 25, float %3440)  ; Rsqrt(value)
  %3442 = fmul fast float %3433, %3441
  %3443 = fmul fast float %3436, %3441
  %3444 = fmul fast float %3439, %3441
  %3445 = call float @dx.op.dot3.f32(i32 55, float %3400, float %3401, float %3402, float %3428, float %3429, float %3430)  ; Dot3(ax,ay,az,bx,by,bz)
  %3446 = call float @dx.op.dot3.f32(i32 55, float %3400, float %3401, float %3402, float %3442, float %3443, float %3444)  ; Dot3(ax,ay,az,bx,by,bz)
  %3447 = fmul fast float %3445, 0x3FA99999A0000000
  %3448 = fmul fast float %3446, 0x3FA99999A0000000
  %3449 = call float @dx.op.unary.f32(i32 22, float %3447)  ; Frc(value)
  %3450 = call float @dx.op.unary.f32(i32 22, float %3448)  ; Frc(value)
  %3451 = fadd fast float %3449, 0xBFB99999A0000000
  %3452 = fadd fast float %3450, 0xBFB99999A0000000
  %3453 = call float @dx.op.unary.f32(i32 6, float %3451)  ; FAbs(value)
  %3454 = call float @dx.op.unary.f32(i32 6, float %3452)  ; FAbs(value)
  %3455 = fmul fast float %3453, 1.000000e+01
  %3456 = fmul fast float %3454, 1.000000e+01
  %3457 = call float @dx.op.binary.f32(i32 36, float %3455, float %3456)  ; FMin(a,b)
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fsub fast float 1.000000e+00, %3458
  %3460 = fmul fast float %3459, %3410
  %3461 = fmul fast float %3459, %3411
  %3462 = fmul fast float %3459, %3412
  %3463 = fsub fast float %3393, %3197
  %3464 = fsub fast float %3394, %3198
  %3465 = fsub fast float %3395, %3199
  br label %3473

; <label>:3466                                    ; preds = %3324
  %3467 = fmul fast float %3336, 8.096000e+03
  %3468 = fmul fast float %3337, 8.096000e+03
  %3469 = fmul fast float %3338, 8.096000e+03
  %3470 = fadd fast float %3467, %116
  %3471 = fadd fast float %3468, %117
  %3472 = fadd fast float %3469, %118
  br label %3473

; <label>:3473                                    ; preds = %3466, %3409
  %3474 = phi float [ %3336, %3466 ], [ %3463, %3409 ]
  %3475 = phi float [ %3337, %3466 ], [ %3464, %3409 ]
  %3476 = phi float [ %3338, %3466 ], [ %3465, %3409 ]
  %3477 = phi float [ %3470, %3466 ], [ %3393, %3409 ]
  %3478 = phi float [ %3471, %3466 ], [ %3394, %3409 ]
  %3479 = phi float [ %3472, %3466 ], [ %3395, %3409 ]
  %3480 = phi float [ 0.000000e+00, %3466 ], [ %3460, %3409 ]
  %3481 = phi float [ 0.000000e+00, %3466 ], [ %3461, %3409 ]
  %3482 = phi float [ 0.000000e+00, %3466 ], [ %3462, %3409 ]
  %3483 = fcmp fast olt float %3216, 1.000000e+00
  br i1 %3483, label %3484, label %3515, !dx.controlflow.hints !104

; <label>:3484                                    ; preds = %3473
  %3485 = fmul fast float %3476, %3214
  %3486 = fmul fast float %3475, %3215
  %3487 = fsub fast float %3485, %3486
  %3488 = fmul fast float %3474, %3215
  %3489 = fmul fast float %3476, %3213
  %3490 = fsub fast float %3488, %3489
  %3491 = fmul fast float %3475, %3213
  %3492 = fmul fast float %3474, %3214
  %3493 = fsub fast float %3491, %3492
  %3494 = fmul fast float %3487, 2.000000e+00
  %3495 = fmul fast float %3490, 2.000000e+00
  %3496 = fmul fast float %3493, 2.000000e+00
  %3497 = fmul fast float %3494, %3216
  %3498 = fmul fast float %3495, %3216
  %3499 = fmul fast float %3496, %3216
  %3500 = fmul fast float %3496, %3214
  %3501 = fmul fast float %3495, %3215
  %3502 = fmul fast float %3494, %3215
  %3503 = fmul fast float %3496, %3213
  %3504 = fmul fast float %3495, %3213
  %3505 = fmul fast float %3494, %3214
  %3506 = fadd fast float %3500, %3474
  %3507 = fadd fast float %3506, %3497
  %3508 = fsub fast float %3507, %3501
  %3509 = fsub fast float %3475, %3503
  %3510 = fadd fast float %3509, %3498
  %3511 = fadd fast float %3510, %3502
  %3512 = fadd fast float %3499, %3476
  %3513 = fsub fast float %3512, %3505
  %3514 = fadd fast float %3513, %3504
  br label %3515

; <label>:3515                                    ; preds = %3484, %3473
  %3516 = phi float [ %3508, %3484 ], [ %3474, %3473 ]
  %3517 = phi float [ %3511, %3484 ], [ %3475, %3473 ]
  %3518 = phi float [ %3514, %3484 ], [ %3476, %3473 ]
  br i1 %3341, label %3519, label %3542

; <label>:3519                                    ; preds = %3515
  %3520 = fsub fast float %3477, %116
  %3521 = fsub fast float %3478, %117
  %3522 = fsub fast float %3479, %118
  %3523 = fsub fast float %3477, %3197
  %3524 = fsub fast float %3478, %3198
  %3525 = fsub fast float %3479, %3199
  %3526 = call float @dx.op.dot3.f32(i32 55, float %3520, float %3521, float %3522, float %3520, float %3521, float %3522)  ; Dot3(ax,ay,az,bx,by,bz)
  %3527 = call float @dx.op.dot3.f32(i32 55, float %3523, float %3524, float %3525, float %3523, float %3524, float %3525)  ; Dot3(ax,ay,az,bx,by,bz)
  %3528 = fadd fast float %3527, 0x3EE4F8B580000000
  %3529 = fdiv fast float %3526, %3528
  %3530 = bitcast float %3529 to i32
  %3531 = ashr i32 %3530, 1
  %3532 = add nsw i32 %3531, 532487669
  %3533 = bitcast i32 %3532 to float
  %3534 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  %3535 = fmul fast float %3534, 0x4009981AE0000000
  %3536 = fsub fast float 0x40111BBD80000000, %3535
  %3537 = fmul fast float %3536, %3534
  %3538 = fadd fast float %3537, 0xC0009F6020000000
  %3539 = fmul fast float %3538, %3534
  %3540 = fadd fast float %3539, 1.000000e+00
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  br label %3545

; <label>:3542                                    ; preds = %3515
  %3543 = icmp ne i32 %3241, -1
  %3544 = zext i1 %3543 to i32
  br label %3545

; <label>:3545                                    ; preds = %3542, %3519
  %3546 = phi float [ 0.000000e+00, %3542 ], [ %3541, %3519 ]
  %3547 = phi i32 [ %3544, %3542 ], [ 0, %3519 ]
  %3548 = fmul float %3546, 5.000000e+00
  %3549 = fsub float 5.000000e+00, %3548
  %3550 = icmp ne i32 %3547, 0
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 3
  %3553 = fadd fast float %3552, %3549
  %3554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3553)  ; FMax(a,b)
  %3555 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3556 = call float @dx.op.unary.f32(i32 6, float %3517)  ; FAbs(value)
  %3557 = fadd fast float %3556, %3555
  %3558 = call float @dx.op.unary.f32(i32 6, float %3518)  ; FAbs(value)
  %3559 = fadd fast float %3557, %3558
  %3560 = fcmp fast oeq float %3559, 0.000000e+00
  %3561 = fdiv fast float 1.000000e+00, %3559
  %3562 = select i1 %3560, float 1.000000e+00, float %3561
  %3563 = fmul fast float %3562, %3516
  %3564 = fmul fast float %3562, %3517
  %3565 = call float @dx.op.unary.f32(i32 6, float %3564)  ; FAbs(value)
  %3566 = call float @dx.op.unary.f32(i32 6, float %3563)  ; FAbs(value)
  %3567 = fsub fast float 1.000000e+00, %3565
  %3568 = fsub fast float 1.000000e+00, %3566
  %3569 = fcmp fast oge float %3563, 0.000000e+00
  %3570 = fcmp fast oge float %3564, 0.000000e+00
  %3571 = select i1 %3569, float 1.000000e+00, float -1.000000e+00
  %3572 = select i1 %3570, float 1.000000e+00, float -1.000000e+00
  %3573 = fcmp fast ole float %3518, 0.000000e+00
  %3574 = fmul fast float %3571, %3567
  %3575 = fmul fast float %3572, %3568
  %3576 = select i1 %3573, float %3574, float %3563
  %3577 = select i1 %3573, float %3575, float %3564
  %3578 = fmul fast float %3576, 5.000000e-01
  %3579 = fmul fast float %3577, 5.000000e-01
  %3580 = fadd fast float %3578, 5.000000e-01
  %3581 = fadd fast float %3579, 5.000000e-01
  %3582 = uitofp i32 %3240 to float
  %3583 = call float @dx.op.binary.f32(i32 36, float %3554, float 3.000000e+00)  ; FMin(a,b)
  %3584 = fadd fast float %3583, 2.000000e+00
  %3585 = call float @dx.op.unary.f32(i32 21, float %3584)  ; Exp(value)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3551, 1
  %3587 = fmul fast float %3586, %3585
  %3588 = fmul fast float %3587, 2.000000e+00
  %3589 = fsub fast float 1.000000e+00, %3588
  %3590 = fmul fast float %3580, %3589
  %3591 = fmul fast float %3581, %3589
  %3592 = fadd fast float %3590, %3587
  %3593 = fadd fast float %3591, %3587
  %3594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %3592, float %3593, float %3582, float undef, i32 0, i32 0, i32 undef, float %3554)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 3
  %3600 = fmul fast float %3599, %3210
  %3601 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3600)  ; FMin(a,b)
  %3602 = select i1 %3550, float %3601, float %3600
  %3603 = fmul fast float %3595, %3287
  %3604 = fmul fast float %3603, %3602
  %3605 = fmul fast float %3596, %3287
  %3606 = fmul fast float %3605, %3602
  %3607 = fmul fast float %3597, %3287
  %3608 = fmul fast float %3607, %3602
  %3609 = fadd fast float %3604, %3177
  %3610 = fadd fast float %3606, %3178
  %3611 = fadd fast float %3608, %3179
  %3612 = fsub fast float %3188, %3287
  %3613 = and i32 %3302, 255
  %3614 = uitofp i32 %3613 to float
  %3615 = fptoui float %3614 to i32
  %3616 = icmp eq i32 %3297, 1
  %3617 = zext i1 %3616 to i32
  %3618 = add i32 %3617, %3615
  %3619 = uitofp i32 %3618 to float
  %3620 = fptoui float %3619 to i32
  %3621 = shl i32 %3620, 8
  %3622 = and i32 %3621, 65280
  %3623 = or i32 %3622, %3305
  %3624 = fmul fast float %3480, %3287
  %3625 = fmul fast float %3481, %3287
  %3626 = fmul fast float %3482, %3287
  %3627 = fadd fast float %3624, %3184
  %3628 = fadd fast float %3625, %3185
  %3629 = fadd fast float %3626, %3186
  %3630 = fmul fast float %3582, 0x3FE3C6EF40000000
  %3631 = call float @dx.op.unary.f32(i32 22, float %3630)  ; Frc(value)
  %3632 = fadd fast float %3631, 0x3FE5555560000000
  %3633 = fadd fast float %3631, 0x3FD5555560000000
  %3634 = fsub fast float -0.000000e+00, %3631
  %3635 = fsub fast float -0.000000e+00, %3632
  %3636 = fsub fast float -0.000000e+00, %3633
  %3637 = fcmp fast oge float %3631, %3634
  %3638 = fcmp fast oge float %3632, %3635
  %3639 = fcmp fast oge float %3633, %3636
  %3640 = call float @dx.op.unary.f32(i32 6, float %3631)  ; FAbs(value)
  %3641 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3642 = call float @dx.op.unary.f32(i32 6, float %3633)  ; FAbs(value)
  %3643 = call float @dx.op.unary.f32(i32 22, float %3640)  ; Frc(value)
  %3644 = call float @dx.op.unary.f32(i32 22, float %3641)  ; Frc(value)
  %3645 = call float @dx.op.unary.f32(i32 22, float %3642)  ; Frc(value)
  %3646 = fsub fast float -0.000000e+00, %3643
  %3647 = fsub fast float -0.000000e+00, %3644
  %3648 = fsub fast float -0.000000e+00, %3645
  %3649 = select i1 %3637, float %3643, float %3646
  %3650 = select i1 %3638, float %3644, float %3647
  %3651 = select i1 %3639, float %3645, float %3648
  %3652 = fmul fast float %3649, 6.000000e+00
  %3653 = fmul fast float %3650, 6.000000e+00
  %3654 = fmul fast float %3651, 6.000000e+00
  %3655 = fadd fast float %3652, -3.000000e+00
  %3656 = fadd fast float %3653, -3.000000e+00
  %3657 = fadd fast float %3654, -3.000000e+00
  %3658 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3659 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3660 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3661 = fadd fast float %3658, -1.000000e+00
  %3662 = fadd fast float %3659, -1.000000e+00
  %3663 = fadd fast float %3660, -1.000000e+00
  %3664 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  %3665 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = fmul fast float %3664, %3287
  %3668 = fmul fast float %3665, %3287
  %3669 = fmul fast float %3666, %3287
  %3670 = fadd fast float %3667, %3180
  %3671 = fadd fast float %3668, %3181
  %3672 = fadd fast float %3669, %3182
  %3673 = icmp eq i32 %3240, 0
  %3674 = select i1 %3673, i32 1, i32 %3183
  %3675 = icmp eq i32 %3187, 0
  br i1 %3675, label %3308, label %3676

; <label>:3676                                    ; preds = %3545
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3679 = bitcast float %3678 to i32
  %3680 = lshr i32 %3679, 8
  %3681 = and i32 %3680, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = fptoui float %3682 to i32
  %3684 = icmp eq i32 %3683, 16
  %3685 = bitcast float %3600 to i32
  %3686 = select i1 %3684, i32 %3685, i32 %3176
  %3687 = icmp eq i32 %3683, 17
  %3688 = select i1 %3687, i32 1065353216, i32 %3686
  %3689 = icmp eq i32 %3683, 18
  %3690 = bitcast float %3602 to i32
  %3691 = select i1 %3689, i32 %3690, i32 %3688
  br label %3308

; <label>:3692                                    ; preds = %3308
  br label %3693

; <label>:3693                                    ; preds = %3692, %3134
  %3694 = phi i32 [ %3135, %3134 ], [ %3309, %3692 ]
  %3695 = phi i32 [ %3136, %3134 ], [ %3310, %3692 ]
  %3696 = phi float [ %3137, %3134 ], [ %3311, %3692 ]
  %3697 = phi float [ %3138, %3134 ], [ %3312, %3692 ]
  %3698 = phi float [ %3139, %3134 ], [ %3313, %3692 ]
  %3699 = phi float [ %3140, %3134 ], [ %3314, %3692 ]
  %3700 = phi float [ %3141, %3134 ], [ %3315, %3692 ]
  %3701 = phi float [ %3142, %3134 ], [ %3316, %3692 ]
  %3702 = phi i32 [ %3143, %3134 ], [ %3317, %3692 ]
  %3703 = phi float [ %3144, %3134 ], [ %3318, %3692 ]
  %3704 = phi float [ %3145, %3134 ], [ %3319, %3692 ]
  %3705 = phi float [ %3146, %3134 ], [ %3320, %3692 ]
  %3706 = phi i32 [ %3147, %3134 ], [ %3321, %3692 ]
  %3707 = phi float [ %3148, %3134 ], [ %3322, %3692 ]
  %3708 = add i32 %3149, 1
  %3709 = icmp ugt i32 %3708, %3131
  br i1 %3709, label %3710, label %3134, !llvm.loop !105

; <label>:3710                                    ; preds = %3693
  br label %3711

; <label>:3711                                    ; preds = %3710, %3082
  %3712 = phi i32 [ %1727, %3082 ], [ %3694, %3710 ]
  %3713 = phi i32 [ %3052, %3082 ], [ %3695, %3710 ]
  %3714 = phi float [ 0.000000e+00, %3082 ], [ %3696, %3710 ]
  %3715 = phi float [ 0.000000e+00, %3082 ], [ %3697, %3710 ]
  %3716 = phi float [ 0.000000e+00, %3082 ], [ %3698, %3710 ]
  %3717 = phi float [ 0.000000e+00, %3082 ], [ %3699, %3710 ]
  %3718 = phi float [ 0.000000e+00, %3082 ], [ %3700, %3710 ]
  %3719 = phi float [ 0.000000e+00, %3082 ], [ %3701, %3710 ]
  %3720 = phi i32 [ 0, %3082 ], [ %3702, %3710 ]
  %3721 = phi float [ 0.000000e+00, %3082 ], [ %3703, %3710 ]
  %3722 = phi float [ 0.000000e+00, %3082 ], [ %3704, %3710 ]
  %3723 = phi float [ 0.000000e+00, %3082 ], [ %3705, %3710 ]
  %3724 = call float @dx.op.dot3.f32(i32 55, float %3714, float %3715, float %3716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3725 = select i1 %1951, float %3724, float %3715
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = bitcast float %3727 to i32
  %3729 = lshr i32 %3728, 8
  %3730 = and i32 %3729, 255
  %3731 = uitofp i32 %3730 to float
  %3732 = fptoui float %3731 to i32
  %3733 = icmp eq i32 %3732, 13
  br i1 %3733, label %3734, label %3754

; <label>:3734                                    ; preds = %3711
  %3735 = fadd fast float %3717, 1.000000e+00
  %3736 = fadd fast float %3718, 1.000000e+00
  %3737 = fadd fast float %3719, 1.000000e+00
  %3738 = fmul fast float %3735, 5.000000e-01
  %3739 = fmul fast float %3736, 5.000000e-01
  %3740 = fmul fast float %3737, 5.000000e-01
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3744 = fmul fast float %3741, 1.023000e+03
  %3745 = fmul fast float %3742, 1.023000e+03
  %3746 = fmul fast float %3743, 1.023000e+03
  %3747 = fptoui float %3744 to i32
  %3748 = fptoui float %3745 to i32
  %3749 = fptoui float %3746 to i32
  %3750 = shl i32 %3748, 10
  %3751 = or i32 %3750, %3747
  %3752 = shl i32 %3749, 20
  %3753 = or i32 %3751, %3752
  br label %3754

; <label>:3754                                    ; preds = %3734, %3711
  %3755 = phi i32 [ %3753, %3734 ], [ %3713, %3711 ]
  %3756 = icmp eq i32 %3732, 14
  %3757 = select i1 %3756, i32 %3720, i32 %3755
  %3758 = icmp eq i32 %3732, 22
  br i1 %3758, label %3759, label %3779

; <label>:3759                                    ; preds = %3754
  %3760 = fadd fast float %3721, 1.000000e+00
  %3761 = fadd fast float %3722, 1.000000e+00
  %3762 = fadd fast float %3723, 1.000000e+00
  %3763 = fmul fast float %3760, 5.000000e-01
  %3764 = fmul fast float %3761, 5.000000e-01
  %3765 = fmul fast float %3762, 5.000000e-01
  %3766 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3767 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = fmul fast float %3766, 1.023000e+03
  %3770 = fmul fast float %3767, 1.023000e+03
  %3771 = fmul fast float %3768, 1.023000e+03
  %3772 = fptoui float %3769 to i32
  %3773 = fptoui float %3770 to i32
  %3774 = fptoui float %3771 to i32
  %3775 = shl i32 %3773, 10
  %3776 = or i32 %3775, %3772
  %3777 = shl i32 %3774, 20
  %3778 = or i32 %3776, %3777
  br label %3779

; <label>:3779                                    ; preds = %3759, %3754
  %3780 = phi i32 [ %3778, %3759 ], [ %3757, %3754 ]
  %3781 = fmul fast float %3714, 0x3FD45F3060000000
  %3782 = select i1 %1951, float 0.000000e+00, float %3781
  %3783 = fmul fast float %3725, 0x3FD45F3060000000
  %3784 = fmul fast float %3716, 0x3FD45F3060000000
  %3785 = select i1 %1951, float 0.000000e+00, float %3784
  br label %3786

; <label>:3786                                    ; preds = %3779, %3051
  %3787 = phi i32 [ %3712, %3779 ], [ %1727, %3051 ]
  %3788 = phi i32 [ %3780, %3779 ], [ %3052, %3051 ]
  %3789 = phi float [ %3782, %3779 ], [ %3017, %3051 ]
  %3790 = phi float [ %3783, %3779 ], [ %3018, %3051 ]
  %3791 = phi float [ %3785, %3779 ], [ %3019, %3051 ]
  %3792 = phi i1 [ false, %3779 ], [ true, %3051 ]
  %3793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.i32 %3793, 0
  %3795 = and i32 %3794, 524288
  %3796 = icmp ne i32 %3795, 0
  %3797 = select i1 %3796, float 0.000000e+00, float 1.000000e+00
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3800 = bitcast float %3799 to i32
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = fptoui float %3802 to i32
  %3804 = icmp eq i32 %3803, 38
  %3805 = select i1 %3804, i32 0, i32 %3788
  %3806 = lshr i32 %3800, 8
  %3807 = and i32 %3806, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = fptoui float %3808 to i32
  %3810 = icmp eq i32 %3809, 24
  br i1 %3810, label %3811, label %3822

; <label>:3811                                    ; preds = %3786
  %3812 = fadd fast float %1982, 1.000000e+00
  %3813 = fmul fast float %3812, 5.000000e-01
  %3814 = select i1 %1984, float %3813, float 1.000000e+00
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = fmul fast float %3815, 1.023000e+03
  %3817 = fptoui float %3816 to i32
  %3818 = shl i32 %3817, 10
  %3819 = or i32 %3818, %3817
  %3820 = shl i32 %3817, 20
  %3821 = or i32 %3819, %3820
  br label %3822

; <label>:3822                                    ; preds = %3811, %3786
  %3823 = phi i32 [ %3805, %3786 ], [ %3821, %3811 ]
  %3824 = xor i1 %3796, true
  %3825 = zext i1 %3824 to i32
  br i1 %3796, label %3826, label %4064

; <label>:3826                                    ; preds = %3822
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.CBufRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.CBufRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.CBufRet.f32 %3827, 3
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.CBufRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.CBufRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.CBufRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.CBufRet.f32 %3842, 2
  %3846 = extractvalue %dx.types.CBufRet.f32 %3842, 3
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %1957, float %1958, float %1959)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3861 = select i1 %58, float %3860, float %3859
  %3862 = fmul fast float %3857, 8.000000e+00
  %3863 = fmul fast float %3862, %3861
  %3864 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3865 = fcmp fast ogt float %3864, 0.000000e+00
  br i1 %3865, label %3866, label %4035, !dx.controlflow.hints !107

; <label>:3866                                    ; preds = %3826
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 1
  %3869 = fmul fast float %1227, 2.000000e+00
  %3870 = fmul fast float %1228, 2.000000e+00
  %3871 = fadd fast float %3869, -1.000000e+00
  %3872 = fadd fast float %3870, -1.000000e+00
  %3873 = fmul fast float %3868, %3871
  %3874 = fmul fast float %3868, %3872
  %3875 = fadd fast float %3873, %72
  %3876 = fadd fast float %3874, %73
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 2
  %3879 = extractvalue %dx.types.CBufRet.f32 %3877, 3
  %3880 = fmul fast float %3875, %3878
  %3881 = fmul fast float %3876, %3879
  %3882 = fadd fast float %1897, 0xBFE3333340000000
  %3883 = fmul fast float %3882, 0x4004000020000000
  %3884 = fsub fast float 1.000000e+00, %3883
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fmul fast float %3885, 3.000000e+00
  %3887 = fadd fast float %3886, %1227
  %3888 = call float @dx.op.unary.f32(i32 27, float %3887)  ; Round_ni(value)
  %3889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %3880, float %3881, float %3888, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %3891 = fcmp fast une float %3890, 0xFFF0000000000000
  %3892 = fcmp fast une float %3890, 0x7FF0000000000000
  %3893 = and i1 %3891, %3892
  %3894 = fcmp fast olt float %3890, 0.000000e+00
  %3895 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3896 = fsub fast float 1.000000e+00, %3895
  %3897 = select i1 %3893, float 1.000000e+00, float 0.000000e+00
  %3898 = fmul fast float %3897, %3864
  %3899 = fcmp fast ogt float %3898, 0.000000e+00
  br i1 %3899, label %3900, label %4035, !dx.controlflow.hints !108

; <label>:3900                                    ; preds = %3866
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.CBufRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3905 = select i1 %3894, float 0.000000e+00, float %3902
  %3906 = select i1 %3894, float 0.000000e+00, float %3903
  %3907 = select i1 %3894, float 0.000000e+00, float %3904
  %3908 = select i1 %3894, float %3828, float %3843
  %3909 = select i1 %3894, float %3833, float %3848
  %3910 = select i1 %3894, float %3838, float %3853
  %3911 = select i1 %3894, float %3829, float %3844
  %3912 = select i1 %3894, float %3834, float %3849
  %3913 = select i1 %3894, float %3839, float %3854
  %3914 = select i1 %3894, float %3830, float %3845
  %3915 = select i1 %3894, float %3835, float %3850
  %3916 = select i1 %3894, float %3840, float %3855
  %3917 = select i1 %3894, float %3831, float %3846
  %3918 = select i1 %3894, float %3836, float %3851
  %3919 = select i1 %3894, float %3841, float %3856
  %3920 = fadd fast float %3905, %116
  %3921 = fadd fast float %3906, %117
  %3922 = fadd fast float %3907, %118
  %3923 = fmul fast float %3920, %3908
  %3924 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3911, float %3923)  ; FMad(a,b,c)
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3914, float %3924)  ; FMad(a,b,c)
  %3926 = fadd fast float %3925, %3917
  %3927 = fmul fast float %3920, %3909
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3912, float %3927)  ; FMad(a,b,c)
  %3929 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3915, float %3928)  ; FMad(a,b,c)
  %3930 = fadd fast float %3929, %3918
  %3931 = fmul fast float %3920, %3910
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3913, float %3931)  ; FMad(a,b,c)
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3916, float %3932)  ; FMad(a,b,c)
  %3934 = fadd fast float %3933, %3919
  %3935 = fdiv fast float 1.000000e+00, %3934
  %3936 = fmul fast float %3935, %3926
  %3937 = fmul fast float %3935, %3930
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3941 = fmul fast float %3936, %3939
  %3942 = fmul fast float %3937, %3940
  %3943 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3944 = extractvalue %dx.types.CBufRet.f32 %3938, 3
  %3945 = fadd fast float %3941, %3943
  %3946 = fadd fast float %3942, %3944
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3949 = fmul fast float %3948, %1957
  %3950 = fmul fast float %3948, %1958
  %3951 = fmul fast float %3948, %1959
  %3952 = fadd fast float %3949, %3920
  %3953 = fadd fast float %3950, %3921
  %3954 = fadd fast float %3951, %3922
  %3955 = fmul fast float %3952, %3908
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %3911, float %3955)  ; FMad(a,b,c)
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3914, float %3956)  ; FMad(a,b,c)
  %3958 = fadd fast float %3957, %3917
  %3959 = fmul fast float %3952, %3909
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %3912, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3915, float %3960)  ; FMad(a,b,c)
  %3962 = fadd fast float %3961, %3918
  %3963 = fmul fast float %3952, %3910
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %3913, float %3963)  ; FMad(a,b,c)
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3916, float %3964)  ; FMad(a,b,c)
  %3966 = fadd fast float %3965, %3919
  %3967 = fdiv fast float 1.000000e+00, %3966
  %3968 = fmul fast float %3967, %3958
  %3969 = fmul fast float %3967, %3962
  %3970 = fmul fast float %3945, 2.000000e+00
  %3971 = fadd fast float %3970, -1.000000e+00
  %3972 = call float @dx.op.unary.f32(i32 6, float %3971)  ; FAbs(value)
  %3973 = fmul fast float %3972, 5.000000e+00
  %3974 = fadd fast float %3973, -4.000000e+00
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3976 = fsub fast float %3936, %3968
  %3977 = fmul fast float %3939, %3976
  %3978 = fmul fast float %3977, %3975
  %3979 = fsub fast float %3968, %3936
  %3980 = fmul fast float %3939, %3979
  %3981 = fadd fast float %3980, %3978
  %3982 = fsub fast float %3969, %3937
  %3983 = fmul fast float %3940, %3982
  %3984 = fmul fast float %3981, %3896
  %3985 = fmul fast float %3983, %3896
  %3986 = fadd fast float %3984, %3945
  %3987 = fadd fast float %3985, %3946
  %3988 = fsub fast float %3967, %3935
  %3989 = fmul fast float %3988, %3896
  %3990 = fadd fast float %3989, %3935
  %3991 = fdiv fast float 1.000000e+00, %3990
  %3992 = extractvalue %dx.types.CBufRet.f32 %3858, 3
  %3993 = fadd fast float %1897, -1.000000e+00
  %3994 = fsub fast float %3991, %3934
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %3997 = fmul fast float %3996, %3991
  %3998 = fdiv fast float 1.600000e+02, %3997
  %3999 = fmul fast float %3993, %3993
  %4000 = fmul fast float %3999, 0xBFB5B17960000000
  %4001 = fmul fast float %4000, %3994
  %4002 = fmul fast float %4001, %3998
  %4003 = call float @dx.op.unary.f32(i32 21, float %4002)  ; Exp(value)
  %4004 = fmul fast float %4003, 0x3FF04B2960000000
  %4005 = fsub fast float 0x3FF04B2960000000, %4004
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = fmul fast float %4006, 4.000000e+00
  %4008 = fadd fast float %4007, %3992
  %4009 = fadd fast float %1227, -5.000000e-01
  %4010 = fadd fast float %1228, -5.000000e-01
  %4011 = fmul fast float %4008, 0x3F9EB851E0000000
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = fmul fast float %4012, %4009
  %4014 = fmul fast float %4012, %4010
  %4015 = fadd fast float %3986, %4013
  %4016 = fadd fast float %3987, %4014
  %4017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %43, float %4015, float %4016, float undef, float undef, i32 0, i32 0, i32 undef, float %4008)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4023 = fmul fast float %4022, %4018
  %4024 = fmul fast float %4022, %4019
  %4025 = fmul fast float %4022, %4020
  %4026 = select i1 %1951, float 0.000000e+00, float %4024
  %4027 = select i1 %1951, float 0.000000e+00, float %4025
  %4028 = fmul fast float %4016, 2.000000e+00
  %4029 = fadd fast float %4028, -1.000000e+00
  %4030 = fmul fast float %4029, %4029
  %4031 = fsub fast float 1.000000e+00, %4030
  %4032 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4034 = fmul fast float %4033, %3898
  br label %4035

; <label>:4035                                    ; preds = %3900, %3866, %3826
  %4036 = phi float [ %4023, %3900 ], [ 0.000000e+00, %3866 ], [ 0.000000e+00, %3826 ]
  %4037 = phi float [ %4026, %3900 ], [ 0.000000e+00, %3866 ], [ 0.000000e+00, %3826 ]
  %4038 = phi float [ %4027, %3900 ], [ 0.000000e+00, %3866 ], [ 0.000000e+00, %3826 ]
  %4039 = phi float [ %4034, %3900 ], [ 0.000000e+00, %3866 ], [ 0.000000e+00, %3826 ]
  %4040 = phi float [ %3896, %3900 ], [ %3896, %3866 ], [ 0.000000e+00, %3826 ]
  %4041 = phi float [ %4034, %3900 ], [ %3898, %3866 ], [ 0.000000e+00, %3826 ]
  %4042 = phi float [ %4008, %3900 ], [ 0.000000e+00, %3866 ], [ 0.000000e+00, %3826 ]
  %4043 = icmp eq i32 %3809, 25
  br i1 %4043, label %4044, label %4047

; <label>:4044                                    ; preds = %4035
  %4045 = call float @dx.op.unary.f32(i32 6, float %4040)  ; FAbs(value)
  %4046 = bitcast float %4045 to i32
  br label %4047

; <label>:4047                                    ; preds = %4044, %4035
  %4048 = phi i32 [ %4046, %4044 ], [ %3823, %4035 ]
  %4049 = icmp eq i32 %3809, 26
  %4050 = bitcast float %4041 to i32
  %4051 = select i1 %4049, i32 %4050, i32 %4048
  %4052 = icmp eq i32 %3809, 27
  %4053 = fmul fast float %4042, 2.500000e-01
  %4054 = bitcast float %4053 to i32
  %4055 = select i1 %4052, i32 %4054, i32 %4051
  %4056 = fcmp fast olt float %4039, 1.000000e+00
  %4057 = or i1 %4056, %3824
  %4058 = zext i1 %4057 to i32
  %4059 = fmul fast float %4039, %3797
  %4060 = fsub fast float %4039, %4059
  %4061 = fmul fast float %4060, %4036
  %4062 = fmul fast float %4060, %4037
  %4063 = fmul fast float %4060, %4038
  br label %4064

; <label>:4064                                    ; preds = %4047, %3822
  %4065 = phi i32 [ %3823, %3822 ], [ %4055, %4047 ]
  %4066 = phi float [ 0.000000e+00, %3822 ], [ %4060, %4047 ]
  %4067 = phi float [ 0.000000e+00, %3822 ], [ %4061, %4047 ]
  %4068 = phi float [ 0.000000e+00, %3822 ], [ %4062, %4047 ]
  %4069 = phi float [ 0.000000e+00, %3822 ], [ %4063, %4047 ]
  %4070 = phi i32 [ %3825, %3822 ], [ %4058, %4047 ]
  %4071 = icmp ne i32 %4070, 0
  %4072 = add i32 %3809, -13
  %4073 = icmp ult i32 %4072, 2
  %4074 = or i1 %4073, %4071
  %4075 = icmp eq i32 %3809, 22
  %4076 = or i1 %4074, %4075
  br i1 %4076, label %4077, label %4804

; <label>:4077                                    ; preds = %4064
  %4078 = select i1 %3792, float %2979, float 1.000000e+00
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4081 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4082 = fmul fast float %4080, %72
  %4083 = fmul fast float %4081, %73
  %4084 = fptoui float %4082 to i32
  %4085 = fptoui float %4083 to i32
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4089 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4090 = fadd fast float %69, -4.000000e+00
  %4091 = call float @dx.op.binary.f32(i32 35, float %4090, float 0.000000e+00)  ; FMax(a,b)
  %4092 = fadd fast float %4091, %4087
  %4093 = fmul fast float %4092, %4088
  %4094 = call float @dx.op.unary.f32(i32 23, float %4093)  ; Log(value)
  %4095 = fmul fast float %4094, %4089
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4098 = fmul fast float %4095, %4097
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.i32 %4100, 1
  %4102 = add i32 %4101, -1
  %4103 = uitofp i32 %4101 to float
  %4104 = fmul fast float %4103, %4099
  %4105 = fptoui float %4104 to i32
  %4106 = call i32 @dx.op.binary.i32(i32 40, i32 %4105, i32 %4102)  ; UMin(a,b)
  %4107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.i32 %4107, 2
  %4109 = extractvalue %dx.types.CBufRet.i32 %4107, 3
  %4110 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4085, i32 %4108, i32 %4084)  ; UMad(a,b,c)
  %4111 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4106, i32 %4109, i32 %4110)  ; UMad(a,b,c)
  %4112 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %4113 = fptoui float %4112 to i32
  %4114 = lshr i32 %4113, 5
  %4115 = call i32 @dx.op.binary.i32(i32 40, i32 %4114, i32 8191)  ; UMin(a,b)
  %4116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.i32 %4116, 2
  %4118 = add nsw i32 %4117, -1
  %4119 = call i32 @dx.op.binary.i32(i32 37, i32 %4118, i32 0)  ; IMax(a,b)
  %4120 = shl i32 %4115, 2
  %4121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.i32 %4121, 0
  %4123 = lshr i32 %4122, 16
  %4124 = and i32 %4122, 65535
  %4125 = lshr i32 %4122, 21
  %4126 = lshr i32 %4124, 5
  %4127 = call i32 @dx.op.binary.i32(i32 40, i32 %4126, i32 %4119)  ; UMin(a,b)
  %4128 = icmp ugt i32 %4125, %4127
  br i1 %4128, label %4716, label %4129

; <label>:4129                                    ; preds = %4077
  br label %4130

; <label>:4130                                    ; preds = %4698, %4129
  %4131 = phi i32 [ %4699, %4698 ], [ %3787, %4129 ]
  %4132 = phi i32 [ %4700, %4698 ], [ %4065, %4129 ]
  %4133 = phi float [ %4701, %4698 ], [ 0.000000e+00, %4129 ]
  %4134 = phi float [ %4702, %4698 ], [ 0.000000e+00, %4129 ]
  %4135 = phi float [ %4703, %4698 ], [ 0.000000e+00, %4129 ]
  %4136 = phi float [ %4704, %4698 ], [ 0.000000e+00, %4129 ]
  %4137 = phi float [ %4705, %4698 ], [ 0.000000e+00, %4129 ]
  %4138 = phi float [ %4706, %4698 ], [ 0.000000e+00, %4129 ]
  %4139 = phi i32 [ %4707, %4698 ], [ 0, %4129 ]
  %4140 = phi float [ %4708, %4698 ], [ 0.000000e+00, %4129 ]
  %4141 = phi float [ %4709, %4698 ], [ 0.000000e+00, %4129 ]
  %4142 = phi float [ %4710, %4698 ], [ 0.000000e+00, %4129 ]
  %4143 = phi i32 [ %4711, %4698 ], [ 1, %4129 ]
  %4144 = phi float [ %4712, %4698 ], [ 1.000000e+00, %4129 ]
  %4145 = phi i32 [ %4713, %4698 ], [ %4125, %4129 ]
  %4146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.i32 %4146, 2
  %4148 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4111, i32 %4147, i32 %4145)  ; UMad(a,b,c)
  %4149 = shl i32 %4148, 2
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = shl i32 %4145, 5
  %4153 = sub nsw i32 %4123, %4152
  %4154 = call i32 @dx.op.binary.i32(i32 37, i32 %4153, i32 0)  ; IMax(a,b)
  %4155 = call i32 @dx.op.binary.i32(i32 38, i32 %4154, i32 31)  ; IMin(a,b)
  %4156 = sub nsw i32 1, %4123
  %4157 = add nsw i32 %4156, %4124
  %4158 = call i32 @dx.op.binary.i32(i32 37, i32 %4157, i32 0)  ; IMax(a,b)
  %4159 = call i32 @dx.op.binary.i32(i32 38, i32 %4158, i32 32)  ; IMin(a,b)
  %4160 = and i32 %4159, 31
  %4161 = shl i32 -1, %4160
  %4162 = xor i32 %4161, -1
  %4163 = and i32 %4155, 31
  %4164 = shl i32 %4162, %4163
  %4165 = icmp eq i32 %4159, 32
  %4166 = select i1 %4165, i32 -1, i32 %4164
  %4167 = and i32 %4166, %4151
  %4168 = icmp eq i32 %4167, 0
  br i1 %4168, label %4698, label %4169

; <label>:4169                                    ; preds = %4130
  br label %4170

; <label>:4170                                    ; preds = %4304, %4169
  %4171 = phi i32 [ %4305, %4304 ], [ %4131, %4169 ]
  %4172 = phi i32 [ %4306, %4304 ], [ %4132, %4169 ]
  %4173 = phi float [ %4307, %4304 ], [ %4133, %4169 ]
  %4174 = phi float [ %4308, %4304 ], [ %4134, %4169 ]
  %4175 = phi float [ %4309, %4304 ], [ %4135, %4169 ]
  %4176 = phi float [ %4310, %4304 ], [ %4136, %4169 ]
  %4177 = phi float [ %4311, %4304 ], [ %4137, %4169 ]
  %4178 = phi float [ %4312, %4304 ], [ %4138, %4169 ]
  %4179 = phi i32 [ %4313, %4304 ], [ %4139, %4169 ]
  %4180 = phi float [ %4314, %4304 ], [ %4140, %4169 ]
  %4181 = phi float [ %4315, %4304 ], [ %4141, %4169 ]
  %4182 = phi float [ %4316, %4304 ], [ %4142, %4169 ]
  %4183 = phi i32 [ %4317, %4304 ], [ %4143, %4169 ]
  %4184 = phi float [ %4318, %4304 ], [ %4144, %4169 ]
  %4185 = phi i32 [ %4190, %4304 ], [ %4167, %4169 ]
  %4186 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4185)  ; FirstbitLo(value)
  %4187 = add i32 %4186, %4152
  %4188 = and i32 %4186, 31
  %4189 = shl i32 1, %4188
  %4190 = xor i32 %4189, %4185
  %4191 = mul i32 %4187, 72
  %4192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.ResRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.ResRet.f32 %4192, 2
  %4196 = add i32 %4191, 12
  %4197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.i32 %4197, 0
  %4199 = add i32 %4191, 16
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = add i32 %4191, 28
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = add i32 %4191, 32
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4213 = add i32 %4191, 48
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = add i32 %4191, 56
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = add i32 %4191, 64
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = mul i32 %4187, 60
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4230 = add i32 %4225, 12
  %4231 = add i32 %4225, 48
  %4232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4231, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.ResRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.ResRet.f32 %4232, 2
  %4236 = and i32 %4198, 32767
  %4237 = bitcast float %4194 to i32
  %4238 = and i32 %4198, 32768
  %4239 = icmp ne i32 %4238, 0
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4244 = fsub fast float %4227, %4241
  %4245 = fsub fast float %4228, %4242
  %4246 = fsub fast float %4229, %4243
  %4247 = fsub fast float %116, %4244
  %4248 = fsub fast float %117, %4245
  %4249 = fsub fast float %118, %4246
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4251, float %4252, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = add i32 %4225, 24
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = extractvalue %dx.types.ResRet.f32 %4256, 1
  %4259 = extractvalue %dx.types.ResRet.f32 %4256, 2
  %4260 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4257, float %4258, float %4259)  ; Dot3(ax,ay,az,bx,by,bz)
  %4261 = add i32 %4225, 36
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4263, float %4264, float %4265)  ; Dot3(ax,ay,az,bx,by,bz)
  %4267 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4268 = call float @dx.op.unary.f32(i32 6, float %4260)  ; FAbs(value)
  %4269 = call float @dx.op.unary.f32(i32 6, float %4266)  ; FAbs(value)
  %4270 = fsub fast float %4233, %4267
  %4271 = fsub fast float %4234, %4268
  %4272 = fsub fast float %4235, %4269
  %4273 = fmul fast float %4270, %4201
  %4274 = fmul fast float %4271, %4202
  %4275 = fmul fast float %4272, %4203
  %4276 = call float @dx.op.binary.f32(i32 36, float %4274, float %4275)  ; FMin(a,b)
  %4277 = call float @dx.op.binary.f32(i32 36, float %4273, float %4276)  ; FMin(a,b)
  %4278 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4279 = call float @dx.op.binary.f32(i32 36, float %4184, float %4278)  ; FMin(a,b)
  %4280 = uitofp i1 %4239 to float
  %4281 = select i1 %58, float 1.000000e+00, float 2.000000e+00
  %4282 = fsub fast float %4281, %4280
  %4283 = fmul fast float %4279, %4282
  %4284 = lshr i32 %4171, 8
  %4285 = and i32 %4284, 255
  %4286 = uitofp i32 %4285 to float
  %4287 = fptoui float %4286 to i32
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4290 = bitcast float %4289 to i32
  %4291 = lshr i32 %4290, 24
  %4292 = uitofp i32 %4291 to float
  %4293 = fptoui float %4292 to i32
  %4294 = icmp ne i32 %4293, 1
  %4295 = zext i1 %4294 to i32
  %4296 = add i32 %4295, %4287
  %4297 = uitofp i32 %4296 to float
  %4298 = fptoui float %4297 to i32
  %4299 = shl i32 %4298, 8
  %4300 = and i32 %4299, 65280
  %4301 = and i32 %4171, -65281
  %4302 = or i32 %4300, %4301
  %4303 = fcmp fast ogt float %4283, 0.000000e+00
  br i1 %4303, label %4320, label %4304

; <label>:4304                                    ; preds = %4680, %4549, %4170
  %4305 = phi i32 [ %4627, %4549 ], [ %4302, %4170 ], [ %4627, %4680 ]
  %4306 = phi i32 [ %4172, %4549 ], [ %4172, %4170 ], [ %4696, %4680 ]
  %4307 = phi float [ %4613, %4549 ], [ %4173, %4170 ], [ %4613, %4680 ]
  %4308 = phi float [ %4614, %4549 ], [ %4174, %4170 ], [ %4614, %4680 ]
  %4309 = phi float [ %4615, %4549 ], [ %4175, %4170 ], [ %4615, %4680 ]
  %4310 = phi float [ %4674, %4549 ], [ %4176, %4170 ], [ %4674, %4680 ]
  %4311 = phi float [ %4675, %4549 ], [ %4177, %4170 ], [ %4675, %4680 ]
  %4312 = phi float [ %4676, %4549 ], [ %4178, %4170 ], [ %4676, %4680 ]
  %4313 = phi i32 [ %4678, %4549 ], [ %4179, %4170 ], [ %4678, %4680 ]
  %4314 = phi float [ %4631, %4549 ], [ %4180, %4170 ], [ %4631, %4680 ]
  %4315 = phi float [ %4632, %4549 ], [ %4181, %4170 ], [ %4632, %4680 ]
  %4316 = phi float [ %4633, %4549 ], [ %4182, %4170 ], [ %4633, %4680 ]
  %4317 = phi i32 [ 0, %4549 ], [ %4183, %4170 ], [ 0, %4680 ]
  %4318 = phi float [ %4616, %4549 ], [ %4184, %4170 ], [ %4616, %4680 ]
  %4319 = icmp eq i32 %4185, %4189
  br i1 %4319, label %4697, label %4170

; <label>:4320                                    ; preds = %4170
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = bitcast float %4193 to i32
  %4324 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4325 = bitcast float %4324 to i32
  %4326 = lshr i32 %4325, 8
  %4327 = and i32 %4326, 255
  %4328 = uitofp i32 %4327 to float
  %4329 = fptoui float %4328 to i32
  %4330 = and i32 %4329, 2
  %4331 = icmp eq i32 %4330, 0
  %4332 = select i1 %4331, float %1957, float %1781
  %4333 = select i1 %4331, float %1958, float %1782
  %4334 = select i1 %4331, float %1959, float %1783
  %4335 = icmp ne i32 %4323, -1
  %4336 = fcmp oeq float %4322, 0.000000e+00
  %4337 = and i1 %4336, %4335
  br i1 %4337, label %4338, label %4462

; <label>:4338                                    ; preds = %4320
  %4339 = fsub fast float -0.000000e+00, %4251
  %4340 = fsub fast float -0.000000e+00, %4252
  %4341 = fsub fast float -0.000000e+00, %4253
  %4342 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %4339, float %4340, float %4341)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = fsub fast float -0.000000e+00, %4342
  %4344 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4339, float %4340, float %4341)  ; Dot3(ax,ay,az,bx,by,bz)
  %4345 = fadd fast float %4344, %4216
  %4346 = fadd fast float %4215, %4344
  %4347 = fsub fast float -0.000000e+00, %4346
  %4348 = fcmp ogt float %4342, -0.000000e+00
  %4349 = select i1 %4348, float %4347, float %4345
  %4350 = call float @dx.op.unary.f32(i32 6, float %4343)  ; FAbs(value)
  %4351 = fdiv fast float 1.000000e+00, %4350
  %4352 = fmul fast float %4349, %4351
  %4353 = call float @dx.op.binary.f32(i32 35, float %4352, float 0.000000e+00)  ; FMax(a,b)
  %4354 = fsub fast float -0.000000e+00, %4257
  %4355 = fsub fast float -0.000000e+00, %4258
  %4356 = fsub fast float -0.000000e+00, %4259
  %4357 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %4354, float %4355, float %4356)  ; Dot3(ax,ay,az,bx,by,bz)
  %4358 = fsub fast float -0.000000e+00, %4357
  %4359 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4354, float %4355, float %4356)  ; Dot3(ax,ay,az,bx,by,bz)
  %4360 = fadd fast float %4359, %4220
  %4361 = fadd fast float %4219, %4359
  %4362 = fsub fast float -0.000000e+00, %4361
  %4363 = fcmp ogt float %4357, -0.000000e+00
  %4364 = select i1 %4363, float %4362, float %4360
  %4365 = call float @dx.op.unary.f32(i32 6, float %4358)  ; FAbs(value)
  %4366 = fdiv fast float 1.000000e+00, %4365
  %4367 = fmul fast float %4364, %4366
  %4368 = call float @dx.op.binary.f32(i32 35, float %4367, float 0.000000e+00)  ; FMax(a,b)
  %4369 = fsub fast float -0.000000e+00, %4263
  %4370 = fsub fast float -0.000000e+00, %4264
  %4371 = fsub fast float -0.000000e+00, %4265
  %4372 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %4369, float %4370, float %4371)  ; Dot3(ax,ay,az,bx,by,bz)
  %4373 = fsub fast float -0.000000e+00, %4372
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4369, float %4370, float %4371)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = fadd fast float %4374, %4224
  %4376 = fadd fast float %4223, %4374
  %4377 = fsub fast float -0.000000e+00, %4376
  %4378 = fcmp ogt float %4372, -0.000000e+00
  %4379 = select i1 %4378, float %4377, float %4375
  %4380 = call float @dx.op.unary.f32(i32 6, float %4373)  ; FAbs(value)
  %4381 = fdiv fast float 1.000000e+00, %4380
  %4382 = fmul fast float %4379, %4381
  %4383 = call float @dx.op.binary.f32(i32 35, float %4382, float 0.000000e+00)  ; FMax(a,b)
  %4384 = call float @dx.op.binary.f32(i32 36, float %4368, float %4383)  ; FMin(a,b)
  %4385 = call float @dx.op.binary.f32(i32 36, float %4353, float %4384)  ; FMin(a,b)
  %4386 = fmul fast float %4385, %4332
  %4387 = fmul fast float %4385, %4333
  %4388 = fmul fast float %4385, %4334
  %4389 = fadd fast float %4386, %116
  %4390 = fadd fast float %4387, %117
  %4391 = fadd fast float %4388, %118
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.CBufRet.f32 %4392, 2
  %4396 = fadd fast float %4389, %4393
  %4397 = fadd fast float %4390, %4394
  %4398 = fadd fast float %4391, %4395
  %4399 = fcmp fast olt float %4353, %4368
  %4400 = fcmp fast olt float %4353, %4383
  %4401 = and i1 %4399, %4400
  br i1 %4401, label %4405, label %4402

; <label>:4402                                    ; preds = %4338
  %4403 = fcmp fast olt float %4368, %4383
  br i1 %4403, label %4404, label %4405

; <label>:4404                                    ; preds = %4402
  br label %4405

; <label>:4405                                    ; preds = %4404, %4402, %4338
  %4406 = phi float [ 0.000000e+00, %4404 ], [ 0.000000e+00, %4402 ], [ 1.000000e+00, %4338 ]
  %4407 = phi float [ 1.000000e+00, %4404 ], [ 0.000000e+00, %4402 ], [ 0.000000e+00, %4338 ]
  %4408 = phi float [ 0.000000e+00, %4404 ], [ 1.000000e+00, %4402 ], [ 0.000000e+00, %4338 ]
  %4409 = phi float [ %4257, %4404 ], [ %4263, %4402 ], [ %4251, %4338 ]
  %4410 = phi float [ %4258, %4404 ], [ %4264, %4402 ], [ %4252, %4338 ]
  %4411 = phi float [ %4259, %4404 ], [ %4265, %4402 ], [ %4253, %4338 ]
  %4412 = call float @dx.op.unary.f32(i32 6, float %4411)  ; FAbs(value)
  %4413 = fcmp fast olt float %4412, 0x3FE276C8C0000000
  %4414 = select i1 %4413, float 0.000000e+00, float 1.000000e+00
  %4415 = select i1 %4413, float 1.000000e+00, float 0.000000e+00
  %4416 = fmul fast float %4415, %4410
  %4417 = fmul fast float %4414, %4411
  %4418 = fsub fast float %4416, %4417
  %4419 = fmul fast float %4409, %4415
  %4420 = fsub fast float -0.000000e+00, %4419
  %4421 = fmul fast float %4414, %4409
  %4422 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4420, float %4421, float %4418, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4423 = call float @dx.op.unary.f32(i32 25, float %4422)  ; Rsqrt(value)
  %4424 = fmul fast float %4418, %4423
  %4425 = fmul fast float %4423, %4420
  %4426 = fmul fast float %4421, %4423
  %4427 = fmul fast float %4426, %4410
  %4428 = fmul fast float %4425, %4411
  %4429 = fsub fast float %4427, %4428
  %4430 = fmul fast float %4424, %4411
  %4431 = fmul fast float %4426, %4409
  %4432 = fsub fast float %4430, %4431
  %4433 = fmul fast float %4425, %4409
  %4434 = fmul fast float %4424, %4410
  %4435 = fsub fast float %4433, %4434
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4429, float %4432, float %4435, float %4429, float %4432, float %4435)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 25, float %4436)  ; Rsqrt(value)
  %4438 = fmul fast float %4429, %4437
  %4439 = fmul fast float %4432, %4437
  %4440 = fmul fast float %4435, %4437
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4396, float %4397, float %4398, float %4424, float %4425, float %4426)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4396, float %4397, float %4398, float %4438, float %4439, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = fmul fast float %4441, 0x3FA99999A0000000
  %4444 = fmul fast float %4442, 0x3FA99999A0000000
  %4445 = call float @dx.op.unary.f32(i32 22, float %4443)  ; Frc(value)
  %4446 = call float @dx.op.unary.f32(i32 22, float %4444)  ; Frc(value)
  %4447 = fadd fast float %4445, 0xBFB99999A0000000
  %4448 = fadd fast float %4446, 0xBFB99999A0000000
  %4449 = call float @dx.op.unary.f32(i32 6, float %4447)  ; FAbs(value)
  %4450 = call float @dx.op.unary.f32(i32 6, float %4448)  ; FAbs(value)
  %4451 = fmul fast float %4449, 1.000000e+01
  %4452 = fmul fast float %4450, 1.000000e+01
  %4453 = call float @dx.op.binary.f32(i32 36, float %4451, float %4452)  ; FMin(a,b)
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fsub fast float 1.000000e+00, %4454
  %4456 = fmul fast float %4455, %4406
  %4457 = fmul fast float %4455, %4407
  %4458 = fmul fast float %4455, %4408
  %4459 = fsub fast float %4389, %4193
  %4460 = fsub fast float %4390, %4194
  %4461 = fsub fast float %4391, %4195
  br label %4469

; <label>:4462                                    ; preds = %4320
  %4463 = fmul fast float %4332, 8.096000e+03
  %4464 = fmul fast float %4333, 8.096000e+03
  %4465 = fmul fast float %4334, 8.096000e+03
  %4466 = fadd fast float %4463, %116
  %4467 = fadd fast float %4464, %117
  %4468 = fadd fast float %4465, %118
  br label %4469

; <label>:4469                                    ; preds = %4462, %4405
  %4470 = phi float [ %4332, %4462 ], [ %4459, %4405 ]
  %4471 = phi float [ %4333, %4462 ], [ %4460, %4405 ]
  %4472 = phi float [ %4334, %4462 ], [ %4461, %4405 ]
  %4473 = phi float [ %4466, %4462 ], [ %4389, %4405 ]
  %4474 = phi float [ %4467, %4462 ], [ %4390, %4405 ]
  %4475 = phi float [ %4468, %4462 ], [ %4391, %4405 ]
  %4476 = phi float [ 0.000000e+00, %4462 ], [ %4456, %4405 ]
  %4477 = phi float [ 0.000000e+00, %4462 ], [ %4457, %4405 ]
  %4478 = phi float [ 0.000000e+00, %4462 ], [ %4458, %4405 ]
  %4479 = fcmp fast olt float %4212, 1.000000e+00
  br i1 %4479, label %4480, label %4511, !dx.controlflow.hints !104

; <label>:4480                                    ; preds = %4469
  %4481 = fmul fast float %4472, %4210
  %4482 = fmul fast float %4471, %4211
  %4483 = fsub fast float %4481, %4482
  %4484 = fmul fast float %4470, %4211
  %4485 = fmul fast float %4472, %4209
  %4486 = fsub fast float %4484, %4485
  %4487 = fmul fast float %4471, %4209
  %4488 = fmul fast float %4470, %4210
  %4489 = fsub fast float %4487, %4488
  %4490 = fmul fast float %4483, 2.000000e+00
  %4491 = fmul fast float %4486, 2.000000e+00
  %4492 = fmul fast float %4489, 2.000000e+00
  %4493 = fmul fast float %4490, %4212
  %4494 = fmul fast float %4491, %4212
  %4495 = fmul fast float %4492, %4212
  %4496 = fmul fast float %4492, %4210
  %4497 = fmul fast float %4491, %4211
  %4498 = fmul fast float %4490, %4211
  %4499 = fmul fast float %4492, %4209
  %4500 = fmul fast float %4491, %4209
  %4501 = fmul fast float %4490, %4210
  %4502 = fadd fast float %4496, %4470
  %4503 = fadd fast float %4502, %4493
  %4504 = fsub fast float %4503, %4497
  %4505 = fsub fast float %4471, %4499
  %4506 = fadd fast float %4505, %4494
  %4507 = fadd fast float %4506, %4498
  %4508 = fadd fast float %4495, %4472
  %4509 = fsub fast float %4508, %4501
  %4510 = fadd fast float %4509, %4500
  br label %4511

; <label>:4511                                    ; preds = %4480, %4469
  %4512 = phi float [ %4504, %4480 ], [ %4470, %4469 ]
  %4513 = phi float [ %4507, %4480 ], [ %4471, %4469 ]
  %4514 = phi float [ %4510, %4480 ], [ %4472, %4469 ]
  br i1 %4337, label %4515, label %4546

; <label>:4515                                    ; preds = %4511
  %4516 = fmul fast float %1897, 0x400187C840000000
  %4517 = fadd fast float %4516, 0xC00EFC2120000000
  %4518 = fmul fast float %4517, %1897
  %4519 = fadd fast float %4518, 0x3FE5D16340000000
  %4520 = fmul fast float %4519, %1897
  %4521 = fadd fast float %4520, 1.000000e+00
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fsub fast float %4473, %116
  %4524 = fsub fast float %4474, %117
  %4525 = fsub fast float %4475, %118
  %4526 = fsub fast float %4473, %4193
  %4527 = fsub fast float %4474, %4194
  %4528 = fsub fast float %4475, %4195
  %4529 = call float @dx.op.dot3.f32(i32 55, float %4523, float %4524, float %4525, float %4523, float %4524, float %4525)  ; Dot3(ax,ay,az,bx,by,bz)
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4526, float %4527, float %4528, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = fadd fast float %4530, 0x3EE4F8B580000000
  %4532 = fdiv fast float %4529, %4531
  %4533 = bitcast float %4532 to i32
  %4534 = ashr i32 %4533, 1
  %4535 = add nsw i32 %4534, 532487669
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, %4522
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = fmul fast float %4538, 0x4009981AE0000000
  %4540 = fsub fast float 0x40111BBD80000000, %4539
  %4541 = fmul fast float %4540, %4538
  %4542 = fadd fast float %4541, 0xC0009F6020000000
  %4543 = fmul fast float %4542, %4538
  %4544 = fadd fast float %4543, 1.000000e+00
  %4545 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  br label %4549

; <label>:4546                                    ; preds = %4511
  %4547 = icmp ne i32 %4237, -1
  %4548 = zext i1 %4547 to i32
  br label %4549

; <label>:4549                                    ; preds = %4546, %4515
  %4550 = phi float [ %1897, %4546 ], [ %4545, %4515 ]
  %4551 = phi i32 [ %4548, %4546 ], [ 0, %4515 ]
  %4552 = fmul float %4550, 5.000000e+00
  %4553 = fsub float 5.000000e+00, %4552
  %4554 = icmp ne i32 %4551, 0
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 3
  %4557 = fadd fast float %4556, %4553
  %4558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4557)  ; FMax(a,b)
  %4559 = call float @dx.op.unary.f32(i32 6, float %4512)  ; FAbs(value)
  %4560 = call float @dx.op.unary.f32(i32 6, float %4513)  ; FAbs(value)
  %4561 = fadd fast float %4560, %4559
  %4562 = call float @dx.op.unary.f32(i32 6, float %4514)  ; FAbs(value)
  %4563 = fadd fast float %4561, %4562
  %4564 = fcmp fast oeq float %4563, 0.000000e+00
  %4565 = fdiv fast float 1.000000e+00, %4563
  %4566 = select i1 %4564, float 1.000000e+00, float %4565
  %4567 = fmul fast float %4566, %4512
  %4568 = fmul fast float %4566, %4513
  %4569 = call float @dx.op.unary.f32(i32 6, float %4568)  ; FAbs(value)
  %4570 = call float @dx.op.unary.f32(i32 6, float %4567)  ; FAbs(value)
  %4571 = fsub fast float 1.000000e+00, %4569
  %4572 = fsub fast float 1.000000e+00, %4570
  %4573 = fcmp fast oge float %4567, 0.000000e+00
  %4574 = fcmp fast oge float %4568, 0.000000e+00
  %4575 = select i1 %4573, float 1.000000e+00, float -1.000000e+00
  %4576 = select i1 %4574, float 1.000000e+00, float -1.000000e+00
  %4577 = fcmp fast ole float %4514, 0.000000e+00
  %4578 = fmul fast float %4575, %4571
  %4579 = fmul fast float %4576, %4572
  %4580 = select i1 %4577, float %4578, float %4567
  %4581 = select i1 %4577, float %4579, float %4568
  %4582 = fmul fast float %4580, 5.000000e-01
  %4583 = fmul fast float %4581, 5.000000e-01
  %4584 = fadd fast float %4582, 5.000000e-01
  %4585 = fadd fast float %4583, 5.000000e-01
  %4586 = uitofp i32 %4236 to float
  %4587 = call float @dx.op.binary.f32(i32 36, float %4558, float 3.000000e+00)  ; FMin(a,b)
  %4588 = fadd fast float %4587, 2.000000e+00
  %4589 = call float @dx.op.unary.f32(i32 21, float %4588)  ; Exp(value)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4555, 1
  %4591 = fmul fast float %4590, %4589
  %4592 = fmul fast float %4591, 2.000000e+00
  %4593 = fsub fast float 1.000000e+00, %4592
  %4594 = fmul fast float %4584, %4593
  %4595 = fmul fast float %4585, %4593
  %4596 = fadd fast float %4594, %4591
  %4597 = fadd fast float %4595, %4591
  %4598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %4596, float %4597, float %4586, float undef, i32 0, i32 0, i32 undef, float %4558)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 3
  %4604 = fmul fast float %4603, %4206
  %4605 = call float @dx.op.binary.f32(i32 36, float %4078, float %4604)  ; FMin(a,b)
  %4606 = select i1 %4554, float %4605, float %4604
  %4607 = fmul fast float %4599, %4283
  %4608 = fmul fast float %4607, %4606
  %4609 = fmul fast float %4600, %4283
  %4610 = fmul fast float %4609, %4606
  %4611 = fmul fast float %4601, %4283
  %4612 = fmul fast float %4611, %4606
  %4613 = fadd fast float %4608, %4173
  %4614 = fadd fast float %4610, %4174
  %4615 = fadd fast float %4612, %4175
  %4616 = fsub fast float %4184, %4283
  %4617 = and i32 %4298, 255
  %4618 = uitofp i32 %4617 to float
  %4619 = fptoui float %4618 to i32
  %4620 = icmp eq i32 %4293, 1
  %4621 = zext i1 %4620 to i32
  %4622 = add i32 %4621, %4619
  %4623 = uitofp i32 %4622 to float
  %4624 = fptoui float %4623 to i32
  %4625 = shl i32 %4624, 8
  %4626 = and i32 %4625, 65280
  %4627 = or i32 %4626, %4301
  %4628 = fmul fast float %4476, %4283
  %4629 = fmul fast float %4477, %4283
  %4630 = fmul fast float %4478, %4283
  %4631 = fadd fast float %4628, %4180
  %4632 = fadd fast float %4629, %4181
  %4633 = fadd fast float %4630, %4182
  %4634 = fmul fast float %4586, 0x3FE3C6EF40000000
  %4635 = call float @dx.op.unary.f32(i32 22, float %4634)  ; Frc(value)
  %4636 = fadd fast float %4635, 0x3FE5555560000000
  %4637 = fadd fast float %4635, 0x3FD5555560000000
  %4638 = fsub fast float -0.000000e+00, %4635
  %4639 = fsub fast float -0.000000e+00, %4636
  %4640 = fsub fast float -0.000000e+00, %4637
  %4641 = fcmp fast oge float %4635, %4638
  %4642 = fcmp fast oge float %4636, %4639
  %4643 = fcmp fast oge float %4637, %4640
  %4644 = call float @dx.op.unary.f32(i32 6, float %4635)  ; FAbs(value)
  %4645 = call float @dx.op.unary.f32(i32 6, float %4636)  ; FAbs(value)
  %4646 = call float @dx.op.unary.f32(i32 6, float %4637)  ; FAbs(value)
  %4647 = call float @dx.op.unary.f32(i32 22, float %4644)  ; Frc(value)
  %4648 = call float @dx.op.unary.f32(i32 22, float %4645)  ; Frc(value)
  %4649 = call float @dx.op.unary.f32(i32 22, float %4646)  ; Frc(value)
  %4650 = fsub fast float -0.000000e+00, %4647
  %4651 = fsub fast float -0.000000e+00, %4648
  %4652 = fsub fast float -0.000000e+00, %4649
  %4653 = select i1 %4641, float %4647, float %4650
  %4654 = select i1 %4642, float %4648, float %4651
  %4655 = select i1 %4643, float %4649, float %4652
  %4656 = fmul fast float %4653, 6.000000e+00
  %4657 = fmul fast float %4654, 6.000000e+00
  %4658 = fmul fast float %4655, 6.000000e+00
  %4659 = fadd fast float %4656, -3.000000e+00
  %4660 = fadd fast float %4657, -3.000000e+00
  %4661 = fadd fast float %4658, -3.000000e+00
  %4662 = call float @dx.op.unary.f32(i32 6, float %4659)  ; FAbs(value)
  %4663 = call float @dx.op.unary.f32(i32 6, float %4660)  ; FAbs(value)
  %4664 = call float @dx.op.unary.f32(i32 6, float %4661)  ; FAbs(value)
  %4665 = fadd fast float %4662, -1.000000e+00
  %4666 = fadd fast float %4663, -1.000000e+00
  %4667 = fadd fast float %4664, -1.000000e+00
  %4668 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = fmul fast float %4668, %4283
  %4672 = fmul fast float %4669, %4283
  %4673 = fmul fast float %4670, %4283
  %4674 = fadd fast float %4671, %4176
  %4675 = fadd fast float %4672, %4177
  %4676 = fadd fast float %4673, %4178
  %4677 = icmp eq i32 %4236, 0
  %4678 = select i1 %4677, i32 1, i32 %4179
  %4679 = icmp eq i32 %4183, 0
  br i1 %4679, label %4304, label %4680

; <label>:4680                                    ; preds = %4549
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = bitcast float %4682 to i32
  %4684 = lshr i32 %4683, 8
  %4685 = and i32 %4684, 255
  %4686 = uitofp i32 %4685 to float
  %4687 = fptoui float %4686 to i32
  %4688 = icmp eq i32 %4687, 16
  %4689 = bitcast float %4604 to i32
  %4690 = select i1 %4688, i32 %4689, i32 %4172
  %4691 = icmp eq i32 %4687, 17
  %4692 = bitcast float %4078 to i32
  %4693 = select i1 %4691, i32 %4692, i32 %4690
  %4694 = icmp eq i32 %4687, 18
  %4695 = bitcast float %4606 to i32
  %4696 = select i1 %4694, i32 %4695, i32 %4693
  br label %4304

; <label>:4697                                    ; preds = %4304
  br label %4698

; <label>:4698                                    ; preds = %4697, %4130
  %4699 = phi i32 [ %4131, %4130 ], [ %4305, %4697 ]
  %4700 = phi i32 [ %4132, %4130 ], [ %4306, %4697 ]
  %4701 = phi float [ %4133, %4130 ], [ %4307, %4697 ]
  %4702 = phi float [ %4134, %4130 ], [ %4308, %4697 ]
  %4703 = phi float [ %4135, %4130 ], [ %4309, %4697 ]
  %4704 = phi float [ %4136, %4130 ], [ %4310, %4697 ]
  %4705 = phi float [ %4137, %4130 ], [ %4311, %4697 ]
  %4706 = phi float [ %4138, %4130 ], [ %4312, %4697 ]
  %4707 = phi i32 [ %4139, %4130 ], [ %4313, %4697 ]
  %4708 = phi float [ %4140, %4130 ], [ %4314, %4697 ]
  %4709 = phi float [ %4141, %4130 ], [ %4315, %4697 ]
  %4710 = phi float [ %4142, %4130 ], [ %4316, %4697 ]
  %4711 = phi i32 [ %4143, %4130 ], [ %4317, %4697 ]
  %4712 = phi float [ %4144, %4130 ], [ %4318, %4697 ]
  %4713 = add i32 %4145, 1
  %4714 = icmp ugt i32 %4713, %4127
  br i1 %4714, label %4715, label %4130, !llvm.loop !105

; <label>:4715                                    ; preds = %4698
  br label %4716

; <label>:4716                                    ; preds = %4715, %4077
  %4717 = phi i32 [ %3787, %4077 ], [ %4699, %4715 ]
  %4718 = phi i32 [ %4065, %4077 ], [ %4700, %4715 ]
  %4719 = phi float [ 0.000000e+00, %4077 ], [ %4701, %4715 ]
  %4720 = phi float [ 0.000000e+00, %4077 ], [ %4702, %4715 ]
  %4721 = phi float [ 0.000000e+00, %4077 ], [ %4703, %4715 ]
  %4722 = phi float [ 0.000000e+00, %4077 ], [ %4704, %4715 ]
  %4723 = phi float [ 0.000000e+00, %4077 ], [ %4705, %4715 ]
  %4724 = phi float [ 0.000000e+00, %4077 ], [ %4706, %4715 ]
  %4725 = phi i32 [ 0, %4077 ], [ %4707, %4715 ]
  %4726 = phi float [ 0.000000e+00, %4077 ], [ %4708, %4715 ]
  %4727 = phi float [ 0.000000e+00, %4077 ], [ %4709, %4715 ]
  %4728 = phi float [ 0.000000e+00, %4077 ], [ %4710, %4715 ]
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4720, float %4721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = select i1 %1951, float 0.000000e+00, float %4719
  %4731 = select i1 %1951, float %4729, float %4720
  %4732 = select i1 %1951, float 0.000000e+00, float %4721
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = bitcast float %4734 to i32
  %4736 = lshr i32 %4735, 8
  %4737 = and i32 %4736, 255
  %4738 = uitofp i32 %4737 to float
  %4739 = fptoui float %4738 to i32
  %4740 = icmp eq i32 %4739, 13
  br i1 %4740, label %4741, label %4761

; <label>:4741                                    ; preds = %4716
  %4742 = fadd fast float %4722, 1.000000e+00
  %4743 = fadd fast float %4723, 1.000000e+00
  %4744 = fadd fast float %4724, 1.000000e+00
  %4745 = fmul fast float %4742, 5.000000e-01
  %4746 = fmul fast float %4743, 5.000000e-01
  %4747 = fmul fast float %4744, 5.000000e-01
  %4748 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4750 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4751 = fmul fast float %4748, 1.023000e+03
  %4752 = fmul fast float %4749, 1.023000e+03
  %4753 = fmul fast float %4750, 1.023000e+03
  %4754 = fptoui float %4751 to i32
  %4755 = fptoui float %4752 to i32
  %4756 = fptoui float %4753 to i32
  %4757 = shl i32 %4755, 10
  %4758 = or i32 %4757, %4754
  %4759 = shl i32 %4756, 20
  %4760 = or i32 %4758, %4759
  br label %4761

; <label>:4761                                    ; preds = %4741, %4716
  %4762 = phi i32 [ %4760, %4741 ], [ %4718, %4716 ]
  %4763 = icmp eq i32 %4739, 14
  %4764 = select i1 %4763, i32 %4725, i32 %4762
  %4765 = icmp eq i32 %4739, 22
  br i1 %4765, label %4766, label %4786

; <label>:4766                                    ; preds = %4761
  %4767 = fadd fast float %4726, 1.000000e+00
  %4768 = fadd fast float %4727, 1.000000e+00
  %4769 = fadd fast float %4728, 1.000000e+00
  %4770 = fmul fast float %4767, 5.000000e-01
  %4771 = fmul fast float %4768, 5.000000e-01
  %4772 = fmul fast float %4769, 5.000000e-01
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4776 = fmul fast float %4773, 1.023000e+03
  %4777 = fmul fast float %4774, 1.023000e+03
  %4778 = fmul fast float %4775, 1.023000e+03
  %4779 = fptoui float %4776 to i32
  %4780 = fptoui float %4777 to i32
  %4781 = fptoui float %4778 to i32
  %4782 = shl i32 %4780, 10
  %4783 = or i32 %4782, %4779
  %4784 = shl i32 %4781, 20
  %4785 = or i32 %4783, %4784
  br label %4786

; <label>:4786                                    ; preds = %4766, %4761
  %4787 = phi i32 [ %4785, %4766 ], [ %4764, %4761 ]
  %4788 = fcmp fast olt float %4066, 0.000000e+00
  %4789 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4790 = fmul fast float %4789, %4067
  %4791 = fmul fast float %4789, %4068
  %4792 = fmul fast float %4789, %4069
  %4793 = select i1 %4788, float %4067, float %4790
  %4794 = select i1 %4788, float %4068, float %4791
  %4795 = select i1 %4788, float %4069, float %4792
  %4796 = fsub fast float 1.000000e+00, %4789
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = fmul fast float %4797, %4730
  %4799 = fmul fast float %4797, %4731
  %4800 = fmul fast float %4797, %4732
  %4801 = fadd fast float %4793, %4798
  %4802 = fadd fast float %4794, %4799
  %4803 = fadd fast float %4795, %4800
  br label %4804

; <label>:4804                                    ; preds = %4786, %4064
  %4805 = phi i32 [ %3787, %4064 ], [ %4717, %4786 ]
  %4806 = phi i32 [ %4065, %4064 ], [ %4787, %4786 ]
  %4807 = phi float [ %4067, %4064 ], [ %4801, %4786 ]
  %4808 = phi float [ %4068, %4064 ], [ %4802, %4786 ]
  %4809 = phi float [ %4069, %4064 ], [ %4803, %4786 ]
  %4810 = fmul fast float %3789, %3079
  %4811 = fmul fast float %3790, %3079
  %4812 = fmul fast float %3791, %3079
  %4813 = fmul fast float %4807, %3074
  %4814 = fmul fast float %4808, %3075
  %4815 = fmul fast float %4809, %3076
  %4816 = fadd fast float %4813, %1711
  %4817 = fadd fast float %4814, %1712
  %4818 = fadd fast float %4815, %1713
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4821 = fcmp fast oeq float %4820, 0.000000e+00
  br i1 %4821, label %5169, label %4822

; <label>:4822                                    ; preds = %4804
  %4823 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4825 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4829 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4828, float %4829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = select i1 %1951, float %4831, float %4827
  %4835 = select i1 %1951, float %4833, float %4828
  %4836 = select i1 %1951, float %4832, float %4829
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4841 = extractvalue %dx.types.CBufRet.f32 %4837, 3
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4846 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4851 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4852 = fmul fast float %4838, %116
  %4853 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4839, float %4852)  ; FMad(a,b,c)
  %4854 = call float @dx.op.tertiary.f32(i32 46, float %118, float %4840, float %4853)  ; FMad(a,b,c)
  %4855 = fadd fast float %4854, %4841
  %4856 = fmul fast float %4843, %116
  %4857 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4844, float %4856)  ; FMad(a,b,c)
  %4858 = call float @dx.op.tertiary.f32(i32 46, float %118, float %4845, float %4857)  ; FMad(a,b,c)
  %4859 = fadd fast float %4858, %4846
  %4860 = fmul fast float %4848, %116
  %4861 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4849, float %4860)  ; FMad(a,b,c)
  %4862 = call float @dx.op.tertiary.f32(i32 46, float %118, float %4850, float %4861)  ; FMad(a,b,c)
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4866 = extractvalue %dx.types.CBufRet.f32 %4863, 3
  %4867 = fmul fast float %4866, %4855
  %4868 = fmul fast float %4866, %4859
  %4869 = fadd fast float %4867, %4864
  %4870 = fadd fast float %4868, %4865
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4875 = fmul fast float %4874, %4855
  %4876 = fmul fast float %4874, %4859
  %4877 = fadd fast float %4875, %4872
  %4878 = fadd fast float %4876, %4873
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4881 = fsub fast float -0.000000e+00, %4851
  %4882 = fsub fast float %4881, %4862
  %4883 = fadd fast float %4882, %4880
  %4884 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4885 = fmul fast float %4883, %4884
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = fsub fast float %4877, %4889
  %4892 = fsub fast float %4878, %4890
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4897 = fsub fast float %4869, %4895
  %4898 = fsub fast float %4870, %4896
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 0
  %4902 = extractvalue %dx.types.CBufRet.f32 %4900, 1
  %4903 = fsub fast float %4855, %4901
  %4904 = fsub fast float %4859, %4902
  %4905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = bitcast float %4907 to i32
  %4909 = lshr i32 %4908, 8
  %4910 = and i32 %4909, 255
  %4911 = uitofp i32 %4910 to float
  %4912 = fptoui float %4911 to i32
  %4913 = and i32 %4912, -2
  %4914 = icmp eq i32 %4913, 10
  br i1 %4914, label %4915, label %4985

; <label>:4915                                    ; preds = %4822
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = fcmp fast olt float %4903, 0.000000e+00
  %4919 = extractvalue %dx.types.CBufRet.f32 %4905, 0
  %4920 = extractvalue %dx.types.CBufRet.f32 %4905, 2
  %4921 = select i1 %4918, float %4919, float %4920
  %4922 = fmul fast float %4921, %4903
  %4923 = call float @dx.op.unary.f32(i32 6, float %4922)  ; FAbs(value)
  %4924 = fcmp fast olt float %4904, 0.000000e+00
  %4925 = extractvalue %dx.types.CBufRet.f32 %4905, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4905, 3
  %4927 = select i1 %4924, float %4925, float %4926
  %4928 = fmul fast float %4927, %4904
  %4929 = call float @dx.op.unary.f32(i32 6, float %4928)  ; FAbs(value)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4923, float %4929)  ; FMax(a,b)
  %4931 = fsub fast float %4917, %4930
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4932, %4887
  %4934 = fcmp fast olt float %4897, 0.000000e+00
  %4935 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4936 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4937 = select i1 %4934, float %4935, float %4936
  %4938 = fmul fast float %4937, %4897
  %4939 = call float @dx.op.unary.f32(i32 6, float %4938)  ; FAbs(value)
  %4940 = fcmp fast olt float %4898, 0.000000e+00
  %4941 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4942 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4943 = select i1 %4940, float %4941, float %4942
  %4944 = fmul fast float %4943, %4898
  %4945 = call float @dx.op.unary.f32(i32 6, float %4944)  ; FAbs(value)
  %4946 = call float @dx.op.binary.f32(i32 35, float %4939, float %4945)  ; FMax(a,b)
  %4947 = fsub fast float %4917, %4946
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fmul fast float %4948, %4887
  %4950 = fcmp fast olt float %4891, 0.000000e+00
  %4951 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4952 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4953 = select i1 %4950, float %4951, float %4952
  %4954 = fmul fast float %4953, %4891
  %4955 = call float @dx.op.unary.f32(i32 6, float %4954)  ; FAbs(value)
  %4956 = fcmp fast olt float %4892, 0.000000e+00
  %4957 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4958 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4959 = select i1 %4956, float %4957, float %4958
  %4960 = fmul fast float %4959, %4892
  %4961 = call float @dx.op.unary.f32(i32 6, float %4960)  ; FAbs(value)
  %4962 = call float @dx.op.binary.f32(i32 35, float %4955, float %4961)  ; FMax(a,b)
  %4963 = fsub fast float %4917, %4962
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, %4887
  %4966 = fadd fast float %4933, 1.000000e+00
  %4967 = fadd fast float %4949, 1.000000e+00
  %4968 = fadd fast float %4965, 1.000000e+00
  %4969 = fmul fast float %4966, 5.000000e-01
  %4970 = fmul fast float %4967, 5.000000e-01
  %4971 = fmul fast float %4968, 5.000000e-01
  %4972 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4975 = fmul fast float %4972, 1.023000e+03
  %4976 = fmul fast float %4973, 1.023000e+03
  %4977 = fmul fast float %4974, 1.023000e+03
  %4978 = fptoui float %4975 to i32
  %4979 = fptoui float %4976 to i32
  %4980 = fptoui float %4977 to i32
  %4981 = shl i32 %4979, 10
  %4982 = or i32 %4981, %4978
  %4983 = shl i32 %4980, 20
  %4984 = or i32 %4982, %4983
  br label %4985

; <label>:4985                                    ; preds = %4915, %4822
  %4986 = phi i32 [ %4984, %4915 ], [ %4806, %4822 ]
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 1
  %4989 = fcmp fast une float %4988, 0.000000e+00
  br i1 %4989, label %4990, label %5005

; <label>:4990                                    ; preds = %4985
  %4991 = lshr i32 %1864, 4
  %4992 = lshr i32 %1870, 4
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = fptoui float %4994 to i32
  %4996 = add i32 %4995, 15
  %4997 = lshr i32 %4996, 4
  %4998 = mul i32 %4997, %4992
  %4999 = add i32 %4998, %4991
  %5000 = shl i32 %4999, 3
  %5001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5000, i32 undef)  ; BufferLoad(srv,index,wot)
  %5002 = extractvalue %dx.types.ResRet.i32 %5001, 0
  %5003 = and i32 %5002, -268435456
  %5004 = icmp eq i32 %5003, -1342177280
  br i1 %5004, label %5015, label %5005

; <label>:5005                                    ; preds = %4990, %4985
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 2
  %5008 = extractvalue %dx.types.CBufRet.f32 %5006, 3
  %5009 = fmul fast float %5007, %72
  %5010 = fmul fast float %5008, %73
  %5011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %5009, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.ResRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.ResRet.f32 %5011, 2
  br label %5015

; <label>:5015                                    ; preds = %5005, %4990
  %5016 = phi float [ %5012, %5005 ], [ 0.000000e+00, %4990 ]
  %5017 = phi float [ %5013, %5005 ], [ 0.000000e+00, %4990 ]
  %5018 = phi float [ %5014, %5005 ], [ 0.000000e+00, %4990 ]
  %5019 = call float @dx.op.binary.f32(i32 36, float %5017, float %5018)  ; FMin(a,b)
  %5020 = call float @dx.op.binary.f32(i32 36, float %5016, float %5019)  ; FMin(a,b)
  %5021 = fcmp fast ogt float %5020, 0.000000e+00
  br i1 %5021, label %5022, label %5169, !dx.controlflow.hints !109

; <label>:5022                                    ; preds = %5015
  %5023 = fmul fast float %5016, %4834
  %5024 = fmul fast float %5017, %4835
  %5025 = fmul fast float %5018, %4836
  %5026 = fsub fast float %4823, %1781
  %5027 = fsub fast float %4824, %1782
  %5028 = fsub fast float %4825, %1783
  %5029 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5027, float %5028, float %5026, float %5027, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 25, float %5029)  ; Rsqrt(value)
  %5031 = fmul fast float %5030, %5026
  %5032 = fmul fast float %5030, %5027
  %5033 = fmul fast float %5030, %5028
  %5034 = call float @dx.op.dot3.f32(i32 55, float %4823, float %4824, float %4825, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1815, float %1816, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5037 = fmul fast float %5036, %5036
  %5038 = fmul fast float %5037, %1988
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5042 = bitcast float %5041 to i32
  %5043 = lshr i32 %5042, 8
  %5044 = and i32 %5043, 255
  %5045 = uitofp i32 %5044 to float
  %5046 = fptoui float %5045 to i32
  %5047 = and i32 %5046, 8
  %5048 = icmp ne i32 %5047, 0
  %5049 = select i1 %5048, float %5039, float 1.000000e+00
  %5050 = fmul fast float %5049, %5036
  %5051 = call float @dx.op.dot3.f32(i32 55, float %1753, float %1754, float %1755, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = fmul fast float %5051, %5051
  %5053 = call float @dx.op.unary.f32(i32 6, float %5034)  ; FAbs(value)
  %5054 = fsub fast float 1.000000e+00, %1979
  %5055 = fmul fast float %1818, %1818
  %5056 = fmul fast float %5055, %5054
  %5057 = fadd fast float %5056, %1979
  %5058 = bitcast float %5057 to i32
  %5059 = ashr i32 %5058, 1
  %5060 = add nsw i32 %5059, 532487669
  %5061 = bitcast i32 %5060 to float
  %5062 = fadd fast float %5061, %1818
  %5063 = fmul fast float %1979, %5052
  %5064 = fsub fast float 1.000000e+00, %5052
  %5065 = fadd fast float %5064, %5063
  %5066 = fmul fast float %5053, %5053
  %5067 = fmul fast float %5066, %5054
  %5068 = fadd fast float %5067, %1979
  %5069 = bitcast float %5068 to i32
  %5070 = ashr i32 %5069, 1
  %5071 = add nsw i32 %5070, 532487669
  %5072 = bitcast i32 %5071 to float
  %5073 = fadd fast float %5072, %5053
  %5074 = fmul fast float %5065, %5065
  %5075 = fmul fast float %5074, %5062
  %5076 = fmul fast float %5075, %5073
  %5077 = fdiv fast float 0x3FF0A00000000000, %5076
  %5078 = fmul fast float %5077, %1979
  %5079 = call float @dx.op.unary.f32(i32 6, float %5035)  ; FAbs(value)
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = bitcast float %5080 to i32
  %5082 = sitofp i32 %5081 to float
  %5083 = fmul fast float %5082, 5.000000e+00
  %5084 = fadd fast float %5083, 0xC1EFBF8940000000
  %5085 = fptosi float %5084 to i32
  %5086 = bitcast i32 %5085 to float
  %5087 = fmul fast float %5086, %1819
  %5088 = fmul fast float %5086, %1820
  %5089 = fmul fast float %5086, %3053
  %5090 = fadd fast float %5087, %1774
  %5091 = fadd fast float %5088, %1775
  %5092 = fadd fast float %5089, %1952
  %5093 = select i1 %3056, float %5079, float 0.000000e+00
  %5094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1829, float %5093, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5095 = extractvalue %dx.types.ResRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.ResRet.f32 %5094, 1
  %5097 = extractvalue %dx.types.ResRet.f32 %5094, 2
  %5098 = fadd fast float %5095, -5.000000e-01
  %5099 = fadd fast float %5096, -5.000000e-01
  %5100 = fadd fast float %5097, -5.000000e-01
  %5101 = fmul fast float %1848, %5098
  %5102 = fmul fast float %1852, %5099
  %5103 = fmul fast float %3069, %5100
  %5104 = fadd fast float %5090, %5101
  %5105 = fadd fast float %5091, %5102
  %5106 = fadd fast float %5092, %5103
  %5107 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = fmul fast float %5034, 9.843750e-01
  %5111 = fmul fast float %1897, 9.843750e-01
  %5112 = fadd fast float %5110, 7.812500e-03
  %5113 = fadd fast float %5111, 7.812500e-03
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 2
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 3
  %5117 = select i1 %3056, float %5034, float 0.000000e+00
  %5118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1829, float %5117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.ResRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.ResRet.f32 %5118, 2
  %5122 = fadd fast float %5119, -5.000000e-01
  %5123 = fadd fast float %5120, -5.000000e-01
  %5124 = fadd fast float %5121, -5.000000e-01
  %5125 = fmul fast float %1819, 4.000000e+00
  %5126 = fmul fast float %5125, %1831
  %5127 = fmul fast float %5126, %5122
  %5128 = fmul fast float %1820, 4.000000e+00
  %5129 = fmul fast float %5128, %1831
  %5130 = fmul fast float %5129, %5123
  %5131 = fmul fast float %3053, 4.000000e+00
  %5132 = fmul fast float %5131, %1831
  %5133 = fmul fast float %5132, %5124
  %5134 = fadd fast float %5127, %5115
  %5135 = fmul fast float %5134, %1774
  %5136 = fadd fast float %5135, %5116
  %5137 = fadd fast float %5130, %5115
  %5138 = fmul fast float %5137, %1775
  %5139 = fadd fast float %5138, %5116
  %5140 = fadd fast float %5133, %5115
  %5141 = fmul fast float %5140, %1952
  %5142 = fadd fast float %5141, %5116
  %5143 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = call float @dx.op.binary.f32(i32 35, float %5144, float %5145)  ; FMax(a,b)
  %5147 = call float @dx.op.binary.f32(i32 35, float %5143, float %5146)  ; FMax(a,b)
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = fmul fast float %5148, %5050
  %5150 = fmul fast float %5050, %5078
  %5151 = fmul fast float %5150, %5107
  %5152 = fmul fast float %5150, %5108
  %5153 = fmul fast float %5150, %5109
  %5154 = fmul fast float %5149, %5023
  %5155 = fmul fast float %5149, %5024
  %5156 = fmul fast float %5149, %5025
  %5157 = fadd fast float %5154, %4810
  %5158 = fadd fast float %5155, %4811
  %5159 = fadd fast float %5156, %4812
  %5160 = fmul fast float %5151, %5023
  %5161 = fmul fast float %5152, %5024
  %5162 = fmul fast float %5153, %5025
  %5163 = fadd fast float %5160, %4816
  %5164 = fadd fast float %5161, %4817
  %5165 = fadd fast float %5162, %4818
  %5166 = fadd fast float %5160, %4813
  %5167 = fadd fast float %5161, %4814
  %5168 = fadd fast float %5162, %4815
  br label %5169

; <label>:5169                                    ; preds = %5022, %5015, %4804
  %5170 = phi i32 [ %4986, %5022 ], [ %4806, %4804 ], [ %4986, %5015 ]
  %5171 = phi i32 [ 1, %5022 ], [ 0, %4804 ], [ 0, %5015 ]
  %5172 = phi float [ %5160, %5022 ], [ 0.000000e+00, %4804 ], [ 0.000000e+00, %5015 ]
  %5173 = phi float [ %5161, %5022 ], [ 0.000000e+00, %4804 ], [ 0.000000e+00, %5015 ]
  %5174 = phi float [ %5162, %5022 ], [ 0.000000e+00, %4804 ], [ 0.000000e+00, %5015 ]
  %5175 = phi float [ %5154, %5022 ], [ 0.000000e+00, %4804 ], [ 0.000000e+00, %5015 ]
  %5176 = phi float [ %5155, %5022 ], [ 0.000000e+00, %4804 ], [ 0.000000e+00, %5015 ]
  %5177 = phi float [ %5156, %5022 ], [ 0.000000e+00, %4804 ], [ 0.000000e+00, %5015 ]
  %5178 = phi float [ %5166, %5022 ], [ %4813, %4804 ], [ %4813, %5015 ]
  %5179 = phi float [ %5167, %5022 ], [ %4814, %4804 ], [ %4814, %5015 ]
  %5180 = phi float [ %5168, %5022 ], [ %4815, %4804 ], [ %4815, %5015 ]
  %5181 = phi float [ %5157, %5022 ], [ %4810, %4804 ], [ %4810, %5015 ]
  %5182 = phi float [ %5158, %5022 ], [ %4811, %4804 ], [ %4811, %5015 ]
  %5183 = phi float [ %5159, %5022 ], [ %4812, %4804 ], [ %4812, %5015 ]
  %5184 = phi float [ %5016, %5022 ], [ 0.000000e+00, %4804 ], [ 0.000000e+00, %5015 ]
  %5185 = phi float [ %5163, %5022 ], [ %4816, %4804 ], [ %4816, %5015 ]
  %5186 = phi float [ %5164, %5022 ], [ %4817, %4804 ], [ %4817, %5015 ]
  %5187 = phi float [ %5165, %5022 ], [ %4818, %4804 ], [ %4818, %5015 ]
  %5188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.i32 %5188, 0
  %5190 = icmp eq i32 %5189, 0
  br i1 %5190, label %6054, label %5191

; <label>:5191                                    ; preds = %5169
  %5192 = lshr i32 %1864, 4
  %5193 = lshr i32 %1870, 4
  %5194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.i32 %5194, 0
  %5196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5193, i32 %5195, i32 %5192)  ; UMad(a,b,c)
  %5197 = add nsw i32 %5189, -1
  %5198 = call i32 @dx.op.binary.i32(i32 37, i32 %5197, i32 0)  ; IMax(a,b)
  %5199 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5200 = fptoui float %5199 to i32
  %5201 = lshr i32 %5200, 5
  %5202 = call i32 @dx.op.binary.i32(i32 40, i32 %5201, i32 8191)  ; UMin(a,b)
  %5203 = shl i32 %5202, 2
  %5204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5203, i32 undef)  ; BufferLoad(srv,index,wot)
  %5205 = extractvalue %dx.types.ResRet.i32 %5204, 0
  %5206 = lshr i32 %5205, 16
  %5207 = and i32 %5205, 65535
  %5208 = lshr i32 %5205, 21
  %5209 = lshr i32 %5207, 5
  %5210 = call i32 @dx.op.binary.i32(i32 40, i32 %5209, i32 %5198)  ; UMin(a,b)
  %5211 = icmp ugt i32 %5208, %5210
  br i1 %5211, label %5987, label %5212

; <label>:5212                                    ; preds = %5191
  br label %5213

; <label>:5213                                    ; preds = %5956, %5212
  %5214 = phi i32 [ %5957, %5956 ], [ %5170, %5212 ]
  %5215 = phi i32 [ %5958, %5956 ], [ 0, %5212 ]
  %5216 = phi i32 [ %5959, %5956 ], [ 0, %5212 ]
  %5217 = phi i32 [ %5960, %5956 ], [ 0, %5212 ]
  %5218 = phi i32 [ %5961, %5956 ], [ 0, %5212 ]
  %5219 = phi i32 [ %5962, %5956 ], [ 0, %5212 ]
  %5220 = phi i32 [ %5963, %5956 ], [ 0, %5212 ]
  %5221 = phi i32 [ %5964, %5956 ], [ 0, %5212 ]
  %5222 = phi i32 [ %5965, %5956 ], [ 0, %5212 ]
  %5223 = phi i32 [ %5984, %5956 ], [ %5208, %5212 ]
  %5224 = phi float [ %5966, %5956 ], [ %5172, %5212 ]
  %5225 = phi float [ %5967, %5956 ], [ %5173, %5212 ]
  %5226 = phi float [ %5968, %5956 ], [ %5174, %5212 ]
  %5227 = phi float [ %5969, %5956 ], [ %5175, %5212 ]
  %5228 = phi float [ %5970, %5956 ], [ %5176, %5212 ]
  %5229 = phi float [ %5971, %5956 ], [ %5177, %5212 ]
  %5230 = phi float [ %5972, %5956 ], [ %5178, %5212 ]
  %5231 = phi float [ %5973, %5956 ], [ %5179, %5212 ]
  %5232 = phi float [ %5974, %5956 ], [ %5180, %5212 ]
  %5233 = phi float [ %5975, %5956 ], [ %5181, %5212 ]
  %5234 = phi float [ %5976, %5956 ], [ %5182, %5212 ]
  %5235 = phi float [ %5977, %5956 ], [ %5183, %5212 ]
  %5236 = phi float [ %5978, %5956 ], [ %5185, %5212 ]
  %5237 = phi float [ %5979, %5956 ], [ %5186, %5212 ]
  %5238 = phi float [ %5980, %5956 ], [ %5187, %5212 ]
  %5239 = phi float [ %5981, %5956 ], [ %5181, %5212 ]
  %5240 = phi float [ %5982, %5956 ], [ %5182, %5212 ]
  %5241 = phi float [ %5983, %5956 ], [ %5183, %5212 ]
  %5242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.i32 %5242, 0
  %5244 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5196, i32 %5243, i32 %5223)  ; UMad(a,b,c)
  %5245 = shl i32 %5244, 2
  %5246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.i32 %5246, 0
  %5248 = shl i32 %5223, 5
  %5249 = sub nsw i32 %5206, %5248
  %5250 = call i32 @dx.op.binary.i32(i32 37, i32 %5249, i32 0)  ; IMax(a,b)
  %5251 = call i32 @dx.op.binary.i32(i32 38, i32 %5250, i32 31)  ; IMin(a,b)
  %5252 = sub nsw i32 1, %5206
  %5253 = add nsw i32 %5252, %5207
  %5254 = call i32 @dx.op.binary.i32(i32 37, i32 %5253, i32 0)  ; IMax(a,b)
  %5255 = call i32 @dx.op.binary.i32(i32 38, i32 %5254, i32 32)  ; IMin(a,b)
  %5256 = and i32 %5255, 31
  %5257 = shl i32 -1, %5256
  %5258 = xor i32 %5257, -1
  %5259 = and i32 %5251, 31
  %5260 = shl i32 %5258, %5259
  %5261 = icmp eq i32 %5255, 32
  %5262 = select i1 %5261, i32 -1, i32 %5260
  %5263 = and i32 %5262, %5247
  %5264 = icmp eq i32 %5263, 0
  br i1 %5264, label %5956, label %5265

; <label>:5265                                    ; preds = %5213
  br label %5266

; <label>:5266                                    ; preds = %5452, %5265
  %5267 = phi i32 [ %5453, %5452 ], [ %5214, %5265 ]
  %5268 = phi i32 [ %5442, %5452 ], [ %5215, %5265 ]
  %5269 = phi i32 [ %5444, %5452 ], [ %5216, %5265 ]
  %5270 = phi i32 [ %5446, %5452 ], [ %5217, %5265 ]
  %5271 = phi i32 [ %5448, %5452 ], [ %5218, %5265 ]
  %5272 = phi i32 [ %5454, %5452 ], [ %5219, %5265 ]
  %5273 = phi i32 [ %5455, %5452 ], [ %5220, %5265 ]
  %5274 = phi i32 [ %5456, %5452 ], [ %5221, %5265 ]
  %5275 = phi i32 [ %5457, %5452 ], [ %5222, %5265 ]
  %5276 = phi i32 [ %5299, %5452 ], [ %5263, %5265 ]
  %5277 = phi float [ %5458, %5452 ], [ %5224, %5265 ]
  %5278 = phi float [ %5459, %5452 ], [ %5225, %5265 ]
  %5279 = phi float [ %5460, %5452 ], [ %5226, %5265 ]
  %5280 = phi float [ %5461, %5452 ], [ %5227, %5265 ]
  %5281 = phi float [ %5462, %5452 ], [ %5228, %5265 ]
  %5282 = phi float [ %5463, %5452 ], [ %5229, %5265 ]
  %5283 = phi float [ %5464, %5452 ], [ %5230, %5265 ]
  %5284 = phi float [ %5465, %5452 ], [ %5231, %5265 ]
  %5285 = phi float [ %5466, %5452 ], [ %5232, %5265 ]
  %5286 = phi float [ %5467, %5452 ], [ %5233, %5265 ]
  %5287 = phi float [ %5468, %5452 ], [ %5234, %5265 ]
  %5288 = phi float [ %5469, %5452 ], [ %5235, %5265 ]
  %5289 = phi float [ %5470, %5452 ], [ %5236, %5265 ]
  %5290 = phi float [ %5471, %5452 ], [ %5237, %5265 ]
  %5291 = phi float [ %5472, %5452 ], [ %5238, %5265 ]
  %5292 = phi float [ %5473, %5452 ], [ %5239, %5265 ]
  %5293 = phi float [ %5474, %5452 ], [ %5240, %5265 ]
  %5294 = phi float [ %5475, %5452 ], [ %5241, %5265 ]
  %5295 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5276)  ; FirstbitLo(value)
  %5296 = add i32 %5295, %5248
  %5297 = and i32 %5295, 31
  %5298 = shl i32 1, %5297
  %5299 = xor i32 %5298, %5276
  %5300 = mul i32 %5296, 112
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.ResRet.f32 %5301, 2
  %5305 = add i32 %5300, 16
  %5306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5305, i32 undef)  ; BufferLoad(srv,index,wot)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.ResRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.ResRet.f32 %5306, 2
  %5310 = add i32 %5300, 28
  %5311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.i32 %5311, 0
  %5313 = add i32 %5300, 32
  %5314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5313, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5318 = add i32 %5300, 44
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = add i32 %5300, 48
  %5322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.ResRet.f32 %5322, 1
  %5325 = extractvalue %dx.types.ResRet.f32 %5322, 2
  %5326 = extractvalue %dx.types.ResRet.f32 %5322, 3
  %5327 = add i32 %5300, 64
  %5328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5328, 2
  %5332 = extractvalue %dx.types.ResRet.f32 %5328, 3
  %5333 = add i32 %5300, 80
  %5334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 1
  %5336 = extractvalue %dx.types.ResRet.f32 %5334, 2
  %5337 = add i32 %5300, 92
  %5338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5337, i32 undef)  ; BufferLoad(srv,index,wot)
  %5339 = extractvalue %dx.types.ResRet.i32 %5338, 0
  %5340 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = select i1 %1951, float %5335, float %5302
  %5342 = select i1 %1951, float %5340, float %5303
  %5343 = select i1 %1951, float %5336, float %5304
  %5344 = and i32 %5339, 65535
  %5345 = uitofp i32 %5344 to float
  %5346 = lshr i32 %5339, 16
  %5347 = uitofp i32 %5346 to float
  %5348 = and i32 %5312, 65535
  %5349 = lshr i32 %5312, 24
  %5350 = and i32 %5349, 3
  %5351 = and i32 %5312, 536870912
  %5352 = icmp ne i32 %5351, 0
  %5353 = icmp eq i32 %5350, 2
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5315, float %5316, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = fsub fast float %116, %5323
  %5356 = fsub fast float %117, %5324
  %5357 = fsub fast float %118, %5325
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5355, float %5356, float %5357, float %5315, float %5316, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = fdiv fast float %5358, %5354
  %5360 = call float @dx.op.binary.f32(i32 35, float %5359, float -1.000000e+00)  ; FMax(a,b)
  %5361 = call float @dx.op.binary.f32(i32 36, float %5360, float 1.000000e+00)  ; FMin(a,b)
  %5362 = fmul fast float %5361, %5315
  %5363 = fmul fast float %5361, %5316
  %5364 = fmul fast float %5361, %5317
  %5365 = fadd fast float %5362, %5323
  %5366 = fadd fast float %5363, %5324
  %5367 = fadd fast float %5364, %5325
  %5368 = fsub fast float %5365, %116
  %5369 = fsub fast float %5366, %117
  %5370 = fsub fast float %5367, %118
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5369, float %5370, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = call float @dx.op.unary.f32(i32 24, float %5371)  ; Sqrt(value)
  %5373 = fdiv fast float 1.000000e+00, %5372
  %5374 = fmul fast float %5368, %5373
  %5375 = fmul fast float %5369, %5373
  %5376 = fmul fast float %5370, %5373
  br i1 %5353, label %5377, label %5401

; <label>:5377                                    ; preds = %5266
  %5378 = fmul fast float %5331, %5307
  %5379 = fmul fast float %5331, %5308
  %5380 = fmul fast float %5331, %5309
  %5381 = fsub fast float %5378, %116
  %5382 = fadd fast float %5381, %5365
  %5383 = fsub fast float %5379, %117
  %5384 = fadd fast float %5383, %5366
  %5385 = fsub fast float %5380, %118
  %5386 = fadd fast float %5385, %5367
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5384, float %5386, float %5382, float %5384, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 25, float %5387)  ; Rsqrt(value)
  %5389 = fmul fast float %5388, %5382
  %5390 = fmul fast float %5388, %5384
  %5391 = fmul fast float %5388, %5386
  %5392 = fsub fast float %116, %5365
  %5393 = fsub fast float %117, %5366
  %5394 = fsub fast float %118, %5367
  %5395 = fsub fast float -0.000000e+00, %5392
  %5396 = fsub fast float -0.000000e+00, %5393
  %5397 = fsub fast float -0.000000e+00, %5394
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5396, float %5397, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = fcmp fast ogt float %5398, 0.000000e+00
  %5400 = uitofp i1 %5399 to float
  br label %5401

; <label>:5401                                    ; preds = %5377, %5266
  %5402 = phi float [ %5400, %5377 ], [ 1.000000e+00, %5266 ]
  %5403 = phi float [ %5389, %5377 ], [ %5374, %5266 ]
  %5404 = phi float [ %5390, %5377 ], [ %5375, %5266 ]
  %5405 = phi float [ %5391, %5377 ], [ %5376, %5266 ]
  %5406 = call float @dx.op.dot3.f32(i32 55, float %5307, float %5308, float %5309, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5407 = fmul fast float %5406, %5406
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = fmul fast float %5409, 5.000000e-01
  %5411 = fcmp fast ogt float %5406, 0.000000e+00
  %5412 = fsub fast float 1.000000e+00, %5410
  %5413 = select i1 %5411, float %5410, float %5412
  %5414 = fmul fast float %5413, %5347
  %5415 = fadd fast float %5414, %5345
  %5416 = fmul fast float %5415, 0x3EF0001000000000
  %5417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %45, float %5416, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = fmul fast float %5406, %5329
  %5420 = fadd fast float %5419, %5330
  %5421 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5422 = select i1 %5353, float 1.000000e+00, float %5421
  %5423 = select i1 %5353, float %5421, float 1.000000e+00
  %5424 = fmul fast float %5372, %5326
  %5425 = fsub fast float 1.000000e+00, %5424
  %5426 = fmul fast float %5425, %5332
  %5427 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5428 = fmul fast float %5427, %5423
  %5429 = fmul fast float %5428, 2.000000e+00
  %5430 = fsub fast float 3.000000e+00, %5429
  %5431 = fmul fast float %5418, %5402
  %5432 = fmul fast float %5428, %5428
  %5433 = fmul fast float %5432, %5431
  %5434 = fmul fast float %5433, %5430
  %5435 = xor i1 %5352, true
  %5436 = and i1 %5353, %5435
  %5437 = icmp ne i32 %5350, 2
  %5438 = and i1 %5437, %5435
  %5439 = and i1 %5352, %5353
  %5440 = and i1 %5352, %5437
  %5441 = zext i1 %5436 to i32
  %5442 = add i32 %5441, %5268
  %5443 = zext i1 %5438 to i32
  %5444 = add i32 %5443, %5269
  %5445 = zext i1 %5439 to i32
  %5446 = add i32 %5445, %5270
  %5447 = zext i1 %5440 to i32
  %5448 = add i32 %5447, %5271
  %5449 = call float @dx.op.binary.f32(i32 36, float %5434, float %5434)  ; FMin(a,b)
  %5450 = call float @dx.op.binary.f32(i32 36, float %5434, float %5449)  ; FMin(a,b)
  %5451 = fcmp fast ogt float %5450, 0.000000e+00
  br i1 %5451, label %5477, label %5452, !dx.controlflow.hints !110

; <label>:5452                                    ; preds = %5940, %5401
  %5453 = phi i32 [ %5950, %5940 ], [ %5267, %5401 ]
  %5454 = phi i32 [ %5951, %5940 ], [ %5272, %5401 ]
  %5455 = phi i32 [ %5952, %5940 ], [ %5273, %5401 ]
  %5456 = phi i32 [ %5953, %5940 ], [ %5274, %5401 ]
  %5457 = phi i32 [ %5954, %5940 ], [ %5275, %5401 ]
  %5458 = phi float [ %5911, %5940 ], [ %5277, %5401 ]
  %5459 = phi float [ %5912, %5940 ], [ %5278, %5401 ]
  %5460 = phi float [ %5913, %5940 ], [ %5279, %5401 ]
  %5461 = phi float [ %5914, %5940 ], [ %5280, %5401 ]
  %5462 = phi float [ %5915, %5940 ], [ %5281, %5401 ]
  %5463 = phi float [ %5916, %5940 ], [ %5282, %5401 ]
  %5464 = phi float [ %5917, %5940 ], [ %5283, %5401 ]
  %5465 = phi float [ %5918, %5940 ], [ %5284, %5401 ]
  %5466 = phi float [ %5919, %5940 ], [ %5285, %5401 ]
  %5467 = phi float [ %5920, %5940 ], [ %5286, %5401 ]
  %5468 = phi float [ %5921, %5940 ], [ %5287, %5401 ]
  %5469 = phi float [ %5922, %5940 ], [ %5288, %5401 ]
  %5470 = phi float [ %5923, %5940 ], [ %5289, %5401 ]
  %5471 = phi float [ %5924, %5940 ], [ %5290, %5401 ]
  %5472 = phi float [ %5925, %5940 ], [ %5291, %5401 ]
  %5473 = phi float [ %5926, %5940 ], [ %5292, %5401 ]
  %5474 = phi float [ %5927, %5940 ], [ %5293, %5401 ]
  %5475 = phi float [ %5928, %5940 ], [ %5294, %5401 ]
  %5476 = icmp eq i32 %5276, %5298
  br i1 %5476, label %5955, label %5266

; <label>:5477                                    ; preds = %5401
  %5478 = icmp eq i32 %5348, 255
  br i1 %5478, label %5616, label %5479, !dx.controlflow.hints !111

; <label>:5479                                    ; preds = %5477
  %5480 = mul nuw nsw i32 %5348, 176
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.ResRet.f32 %5481, 3
  %5486 = add nuw nsw i32 %5480, 16
  %5487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5486, i32 undef)  ; BufferLoad(srv,index,wot)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = add nuw nsw i32 %5480, 32
  %5491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5490, i32 undef)  ; BufferLoad(srv,index,wot)
  %5492 = extractvalue %dx.types.ResRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.ResRet.f32 %5491, 1
  %5494 = add nuw nsw i32 %5480, 48
  %5495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5494, i32 undef)  ; BufferLoad(srv,index,wot)
  %5496 = extractvalue %dx.types.ResRet.f32 %5495, 0
  %5497 = extractvalue %dx.types.ResRet.f32 %5495, 1
  %5498 = extractvalue %dx.types.ResRet.f32 %5495, 2
  %5499 = extractvalue %dx.types.ResRet.f32 %5495, 3
  %5500 = add nuw nsw i32 %5480, 64
  %5501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5500, i32 undef)  ; BufferLoad(srv,index,wot)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.ResRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.ResRet.f32 %5501, 2
  %5505 = extractvalue %dx.types.ResRet.f32 %5501, 3
  %5506 = add nuw nsw i32 %5480, 80
  %5507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.ResRet.f32 %5507, 1
  %5510 = extractvalue %dx.types.ResRet.f32 %5507, 2
  %5511 = extractvalue %dx.types.ResRet.f32 %5507, 3
  %5512 = add nuw nsw i32 %5480, 96
  %5513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5512, i32 undef)  ; BufferLoad(srv,index,wot)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.ResRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.ResRet.f32 %5513, 2
  %5517 = extractvalue %dx.types.ResRet.f32 %5513, 3
  %5518 = bitcast float %5489 to i32
  %5519 = fmul fast float %5496, %116
  %5520 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5502, float %5519)  ; FMad(a,b,c)
  %5521 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5508, float %5520)  ; FMad(a,b,c)
  %5522 = fadd fast float %5521, %5514
  %5523 = fmul fast float %5497, %116
  %5524 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5503, float %5523)  ; FMad(a,b,c)
  %5525 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5509, float %5524)  ; FMad(a,b,c)
  %5526 = fadd fast float %5525, %5515
  %5527 = fmul fast float %5498, %116
  %5528 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5504, float %5527)  ; FMad(a,b,c)
  %5529 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5510, float %5528)  ; FMad(a,b,c)
  %5530 = fadd fast float %5529, %5516
  %5531 = fmul fast float %5499, %116
  %5532 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5505, float %5531)  ; FMad(a,b,c)
  %5533 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5511, float %5532)  ; FMad(a,b,c)
  %5534 = fadd fast float %5533, %5517
  %5535 = fdiv fast float %5522, %5534
  %5536 = fdiv fast float %5526, %5534
  %5537 = fdiv fast float %5530, %5534
  %5538 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5537)  ; FMax(a,b)
  %5539 = fmul fast float %1227, 0x401921FB60000000
  %5540 = call float @dx.op.unary.f32(i32 13, float %5539)  ; Sin(value)
  %5541 = call float @dx.op.unary.f32(i32 12, float %5539)  ; Cos(value)
  %5542 = fmul fast float %5541, %5493
  %5543 = call float @dx.op.tertiary.f32(i32 46, float %5540, float %5493, float 0.000000e+00)  ; FMad(a,b,c)
  %5544 = fmul fast float %5493, %5540
  %5545 = fsub fast float -0.000000e+00, %5544
  %5546 = call float @dx.op.tertiary.f32(i32 46, float %5541, float %5493, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5547

; <label>:5547                                    ; preds = %5547, %5479
  %5548 = phi float [ 0.000000e+00, %5479 ], [ %5580, %5547 ]
  %5549 = phi float [ 0.000000e+00, %5479 ], [ %5582, %5547 ]
  %5550 = phi i32 [ 0, %5479 ], [ %5583, %5547 ]
  %5551 = mul i32 %5550, 2
  %5552 = add i32 0, %5551
  %5553 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5552
  %5554 = load float, float* %5553, align 4
  %5555 = mul i32 %5550, 2
  %5556 = add i32 1, %5555
  %5557 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5556
  %5558 = load float, float* %5557, align 4
  %5559 = fmul fast float %5542, %5554
  %5560 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5545, float %5559)  ; FMad(a,b,c)
  %5561 = fmul fast float %5554, %5543
  %5562 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5546, float %5561)  ; FMad(a,b,c)
  %5563 = fadd fast float %5560, %5535
  %5564 = fadd fast float %5562, %5536
  %5565 = fmul fast float %5563, %5488
  %5566 = fmul fast float %5564, %5488
  %5567 = call float @dx.op.binary.f32(i32 35, float %5565, float %5484)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5566, float %5484)  ; FMax(a,b)
  %5569 = call float @dx.op.binary.f32(i32 36, float %5567, float %5485)  ; FMin(a,b)
  %5570 = call float @dx.op.binary.f32(i32 36, float %5568, float %5485)  ; FMin(a,b)
  %5571 = fadd fast float %5569, %5482
  %5572 = fadd fast float %5570, %5483
  %5573 = uitofp i32 %5518 to float
  %5574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %5571, float %5572, float %5573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 0
  %5576 = fsub fast float %5575, %5538
  %5577 = fsub fast float %5576, %5492
  %5578 = fcmp fast ogt float %5577, 0.000000e+00
  %5579 = select i1 %5578, float 1.000000e+00, float 0.000000e+00
  %5580 = fadd fast float %5579, %5548
  %5581 = select i1 %5578, float %5577, float 0.000000e+00
  %5582 = fadd fast float %5581, %5549
  %5583 = add nuw nsw i32 %5550, 1
  %5584 = icmp eq i32 %5583, 8
  br i1 %5584, label %5585, label %5547

; <label>:5585                                    ; preds = %5547
  %5586 = fdiv fast float 1.000000e+00, %5580
  %5587 = fmul fast float %5586, %5582
  %5588 = fdiv fast float 1.000000e+00, %5538
  %5589 = fmul fast float %5587, %5588
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = call float @dx.op.binary.f32(i32 35, float %5590, float 0.000000e+00)  ; FMax(a,b)
  %5592 = fmul fast float %5580, 1.250000e-01
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %5593, 2.000000e+00
  %5595 = fadd fast float %5594, -1.000000e+00
  %5596 = fcmp fast ogt float %5595, 0.000000e+00
  %5597 = fcmp fast olt float %5595, 0.000000e+00
  %5598 = zext i1 %5596 to i32
  %5599 = zext i1 %5597 to i32
  %5600 = sub nsw i32 %5598, %5599
  %5601 = sitofp i32 %5600 to float
  %5602 = fmul fast float %5601, %5595
  %5603 = fsub fast float 1.000000e+00, %5602
  %5604 = fmul fast float %5603, %5603
  %5605 = fmul fast float %5604, %5603
  %5606 = fsub fast float %5603, %5605
  %5607 = fmul fast float %5606, %5591
  %5608 = fsub fast float 1.000000e+00, %5605
  %5609 = fsub fast float %5608, %5607
  %5610 = fmul fast float %5601, 5.000000e-01
  %5611 = fmul fast float %5610, %5609
  %5612 = fsub fast float -5.000000e-01, %5611
  %5613 = fmul fast float %5612, %5422
  %5614 = fadd fast float %5613, 1.000000e+00
  %5615 = fmul fast float %5614, %5434
  br label %5616

; <label>:5616                                    ; preds = %5585, %5477
  %5617 = phi float [ %5615, %5585 ], [ %5434, %5477 ]
  %5618 = call float @dx.op.binary.f32(i32 36, float %5617, float %5617)  ; FMin(a,b)
  %5619 = call float @dx.op.binary.f32(i32 36, float %5617, float %5618)  ; FMin(a,b)
  %5620 = fcmp fast ogt float %5619, 0.000000e+00
  br i1 %5620, label %5621, label %5910

; <label>:5621                                    ; preds = %5616
  %5622 = fmul fast float %5617, %5341
  %5623 = fmul fast float %5617, %5342
  %5624 = fmul fast float %5617, %5343
  %5625 = fadd fast float %5374, %1753
  %5626 = fadd fast float %5375, %1754
  %5627 = fadd fast float %5376, %1755
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5625, float %5626, float %5627)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fdiv fast float 1.000000e+00, %5629
  %5631 = fmul fast float %5630, %5628
  %5632 = fmul fast float %5631, %5625
  %5633 = fmul fast float %5631, %5626
  %5634 = fmul fast float %5631, %5627
  %5635 = fadd fast float %5355, %5632
  %5636 = fadd fast float %5356, %5633
  %5637 = fadd fast float %5357, %5634
  %5638 = call float @dx.op.dot3.f32(i32 55, float %5635, float %5636, float %5637, float %5315, float %5316, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5639 = fdiv fast float %5638, %5354
  %5640 = call float @dx.op.binary.f32(i32 35, float %5639, float -1.000000e+00)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 36, float %5640, float 1.000000e+00)  ; FMin(a,b)
  %5642 = fmul fast float %5641, %5315
  %5643 = fmul fast float %5641, %5316
  %5644 = fmul fast float %5641, %5317
  %5645 = fsub fast float %5323, %116
  %5646 = fadd fast float %5645, %5642
  %5647 = fsub fast float %5324, %117
  %5648 = fadd fast float %5647, %5643
  %5649 = fsub fast float %5325, %118
  %5650 = fadd fast float %5649, %5644
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5648, float %5650, float %5646, float %5648, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.unary.f32(i32 25, float %5651)  ; Rsqrt(value)
  %5653 = fmul fast float %5646, %5652
  %5654 = fmul fast float %5648, %5652
  %5655 = fmul fast float %5650, %5652
  %5656 = fsub fast float %5653, %1781
  %5657 = fsub fast float %5654, %1782
  %5658 = fsub fast float %5655, %1783
  %5659 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float %5656, float %5657, float %5658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5660 = call float @dx.op.unary.f32(i32 25, float %5659)  ; Rsqrt(value)
  %5661 = fmul fast float %5656, %5660
  %5662 = fmul fast float %5657, %5660
  %5663 = fmul fast float %5658, %5660
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1815, float %1816, float %5661, float %5662, float %5663)  ; Dot3(ax,ay,az,bx,by,bz)
  %5666 = fmul fast float %5652, %5320
  %5667 = fmul fast float %5666, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = ashr i32 %5668, 1
  %5670 = sub nsw i32 1597463007, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = fmul fast float %5671, %5664
  %5673 = fmul fast float %5672, %5672
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = fmul fast float %5664, %5667
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = fmul fast float %5672, 5.000000e-01
  %5678 = fadd fast float %5677, 5.000000e-01
  %5679 = fmul fast float %5678, %5667
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = bitcast float %5680 to i32
  %5682 = ashr i32 %5681, 1
  %5683 = add nsw i32 %5682, 532487669
  %5684 = bitcast i32 %5683 to float
  %5685 = fmul fast float %5684, %5680
  %5686 = fcmp fast ogt float %5674, 0.000000e+00
  %5687 = select i1 %5686, float %5685, float %5676
  %5688 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5689 = fmul fast float %5688, %5688
  %5690 = fmul fast float %5689, %1988
  %5691 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5694 = bitcast float %5693 to i32
  %5695 = lshr i32 %5694, 8
  %5696 = and i32 %5695, 255
  %5697 = uitofp i32 %5696 to float
  %5698 = fptoui float %5697 to i32
  %5699 = and i32 %5698, 8
  %5700 = icmp ne i32 %5699, 0
  %5701 = select i1 %5700, float %5691, float 1.000000e+00
  %5702 = fmul fast float %5701, %5687
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %1957, float %1958, float %1959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = call float @dx.op.dot3.f32(i32 55, float %1957, float %1958, float %1959, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = fmul fast float %5703, %5703
  %5707 = fsub fast float %5354, %5706
  %5708 = fmul fast float %5705, %5703
  %5709 = fsub fast float %5708, %5704
  %5710 = fdiv fast float %5709, %5707
  %5711 = call float @dx.op.binary.f32(i32 35, float %5710, float -1.500000e+00)  ; FMax(a,b)
  %5712 = call float @dx.op.binary.f32(i32 36, float %5711, float 1.500000e+00)  ; FMin(a,b)
  %5713 = fmul fast float %5712, %5712
  %5714 = fmul fast float %5713, 0x3FC2F68380000000
  %5715 = fmul fast float %5714, %5712
  %5716 = fsub fast float %5712, %5715
  %5717 = fmul fast float %5716, %5315
  %5718 = fmul fast float %5716, %5316
  %5719 = fmul fast float %5716, %5317
  %5720 = fadd fast float %5717, %5365
  %5721 = fadd fast float %5718, %5366
  %5722 = fadd fast float %5719, %5367
  %5723 = fsub fast float %5720, %116
  %5724 = fsub fast float %5721, %117
  %5725 = fsub fast float %5722, %118
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %1957, float %1958, float %1959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = fmul fast float %5726, %1957
  %5728 = fmul fast float %5726, %1958
  %5729 = fmul fast float %5726, %1959
  %5730 = fsub fast float %5727, %5723
  %5731 = fsub fast float %5728, %5724
  %5732 = fsub fast float %5729, %5725
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = bitcast float %5733 to i32
  %5735 = ashr i32 %5734, 1
  %5736 = sub nsw i32 1597463007, %5735
  %5737 = bitcast i32 %5736 to float
  %5738 = fmul fast float %5737, %5320
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = bitcast float %5739 to i32
  %5741 = ashr i32 %5740, 1
  %5742 = sub nsw i32 1597463007, %5741
  %5743 = bitcast i32 %5742 to float
  %5744 = fmul fast float %5738, %5738
  %5745 = fadd fast float %5744, 1.250000e-01
  %5746 = call float @dx.op.unary.f32(i32 25, float %5745)  ; Rsqrt(value)
  %5747 = fmul fast float %5738, %5746
  %5748 = fmul fast float %5730, %5747
  %5749 = fmul fast float %5731, %5747
  %5750 = fmul fast float %5732, %5747
  %5751 = fadd fast float %5723, %5748
  %5752 = fadd fast float %5724, %5749
  %5753 = fadd fast float %5725, %5750
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5752, float %5753, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = call float @dx.op.unary.f32(i32 25, float %5754)  ; Rsqrt(value)
  %5756 = fmul fast float %5751, %5755
  %5757 = fmul fast float %5752, %5755
  %5758 = fmul fast float %5753, %5755
  %5759 = fsub fast float %5756, %1781
  %5760 = fsub fast float %5757, %1782
  %5761 = fsub fast float %5758, %1783
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5759, float %5760, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5759, %5763
  %5765 = fmul fast float %5760, %5763
  %5766 = fmul fast float %5761, %5763
  %5767 = call float @dx.op.dot3.f32(i32 55, float %1753, float %1754, float %1755, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = fmul fast float %5767, %5767
  %5769 = call float @dx.op.unary.f32(i32 6, float %5664)  ; FAbs(value)
  %5770 = fsub fast float 1.000000e+00, %1979
  %5771 = fmul fast float %1818, %1818
  %5772 = fmul fast float %5771, %5770
  %5773 = fadd fast float %5772, %1979
  %5774 = bitcast float %5773 to i32
  %5775 = ashr i32 %5774, 1
  %5776 = add nsw i32 %5775, 532487669
  %5777 = bitcast i32 %5776 to float
  %5778 = fadd fast float %5777, %1818
  %5779 = fmul fast float %1979, %5768
  %5780 = fsub fast float 1.000000e+00, %5768
  %5781 = fadd fast float %5780, %5779
  %5782 = fmul fast float %5769, %5769
  %5783 = fmul fast float %5782, %5770
  %5784 = fadd fast float %5783, %1979
  %5785 = bitcast float %5784 to i32
  %5786 = ashr i32 %5785, 1
  %5787 = add nsw i32 %5786, 532487669
  %5788 = bitcast i32 %5787 to float
  %5789 = fadd fast float %5788, %5769
  %5790 = fmul fast float %5781, %5781
  %5791 = fmul fast float %5790, %5778
  %5792 = fmul fast float %5791, %5789
  %5793 = fdiv fast float 1.000000e+00, %5792
  %5794 = bitcast float %1979 to i32
  %5795 = sitofp i32 %5794 to float
  %5796 = fmul fast float %5795, 0x3FE7F73180000000
  %5797 = fadd fast float %5796, 0x41AFE27C40000000
  %5798 = fptosi float %5797 to i32
  %5799 = bitcast i32 %5798 to float
  %5800 = fmul fast float %5320, 0x3FD80E9D60000000
  %5801 = fmul fast float %5800, %5743
  %5802 = fadd fast float %5799, %5801
  %5803 = bitcast float %5802 to i32
  %5804 = sub nsw i32 2129859010, %5803
  %5805 = bitcast i32 %5804 to float
  %5806 = fmul fast float %1979, %5793
  %5807 = fmul fast float %5806, %5799
  %5808 = fmul fast float %5807, %5805
  %5809 = call float @dx.op.unary.f32(i32 6, float %5665)  ; FAbs(value)
  %5810 = fsub fast float 1.000000e+00, %5809
  %5811 = bitcast float %5810 to i32
  %5812 = sitofp i32 %5811 to float
  %5813 = fmul fast float %5812, 5.000000e+00
  %5814 = fadd fast float %5813, 0xC1EFBF8940000000
  %5815 = fptosi float %5814 to i32
  %5816 = bitcast i32 %5815 to float
  %5817 = fmul fast float %5816, %1819
  %5818 = fmul fast float %5816, %1820
  %5819 = fmul fast float %5816, %3053
  %5820 = fadd fast float %5817, %1774
  %5821 = fadd fast float %5818, %1775
  %5822 = fadd fast float %5819, %1952
  %5823 = select i1 %3056, float %5809, float 0.000000e+00
  %5824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1829, float %5823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.ResRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.ResRet.f32 %5824, 2
  %5828 = fadd fast float %5825, -5.000000e-01
  %5829 = fadd fast float %5826, -5.000000e-01
  %5830 = fadd fast float %5827, -5.000000e-01
  %5831 = fmul fast float %1848, %5828
  %5832 = fmul fast float %1852, %5829
  %5833 = fmul fast float %3069, %5830
  %5834 = fadd fast float %5820, %5831
  %5835 = fadd fast float %5821, %5832
  %5836 = fadd fast float %5822, %5833
  %5837 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5838 = call float @dx.op.unary.f32(i32 7, float %5835)  ; Saturate(value)
  %5839 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5840 = fmul fast float %5664, 9.843750e-01
  %5841 = fmul fast float %1897, 9.843750e-01
  %5842 = fadd fast float %5840, 7.812500e-03
  %5843 = fadd fast float %5841, 7.812500e-03
  %5844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %5842, float %5843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5845 = extractvalue %dx.types.ResRet.f32 %5844, 2
  %5846 = extractvalue %dx.types.ResRet.f32 %5844, 3
  %5847 = select i1 %3056, float %5664, float 0.000000e+00
  %5848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1829, float %5847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.ResRet.f32 %5848, 1
  %5851 = extractvalue %dx.types.ResRet.f32 %5848, 2
  %5852 = fadd fast float %5849, -5.000000e-01
  %5853 = fadd fast float %5850, -5.000000e-01
  %5854 = fadd fast float %5851, -5.000000e-01
  %5855 = fmul fast float %1819, 4.000000e+00
  %5856 = fmul fast float %5855, %1831
  %5857 = fmul fast float %5856, %5852
  %5858 = fmul fast float %1820, 4.000000e+00
  %5859 = fmul fast float %5858, %1831
  %5860 = fmul fast float %5859, %5853
  %5861 = fmul fast float %3053, 4.000000e+00
  %5862 = fmul fast float %5861, %1831
  %5863 = fmul fast float %5862, %5854
  %5864 = fadd fast float %5857, %5845
  %5865 = fmul fast float %5864, %1774
  %5866 = fadd fast float %5865, %5846
  %5867 = fadd fast float %5860, %5845
  %5868 = fmul fast float %5867, %1775
  %5869 = fadd fast float %5868, %5846
  %5870 = fadd fast float %5863, %5845
  %5871 = fmul fast float %5870, %1952
  %5872 = fadd fast float %5871, %5846
  %5873 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5874 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5875 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5874, float %5875)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5873, float %5876)  ; FMax(a,b)
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = fmul fast float %5878, %5702
  %5880 = fmul fast float %5837, %5702
  %5881 = fmul fast float %5880, %5808
  %5882 = fmul fast float %5838, %5702
  %5883 = fmul fast float %5882, %5808
  %5884 = fmul fast float %5839, %5702
  %5885 = fmul fast float %5884, %5808
  %5886 = fmul fast float %5879, %5622
  %5887 = fmul fast float %5879, %5623
  %5888 = fmul fast float %5879, %5624
  %5889 = fadd fast float %5886, %5292
  %5890 = fadd fast float %5887, %5293
  %5891 = fadd fast float %5888, %5294
  %5892 = fmul fast float %5881, %5622
  %5893 = fmul fast float %5883, %5623
  %5894 = fmul fast float %5885, %5624
  %5895 = fadd fast float %5892, %5289
  %5896 = fadd fast float %5893, %5290
  %5897 = fadd fast float %5894, %5291
  %5898 = fadd fast float %5886, %5286
  %5899 = fadd fast float %5887, %5287
  %5900 = fadd fast float %5888, %5288
  %5901 = fadd fast float %5892, %5283
  %5902 = fadd fast float %5893, %5284
  %5903 = fadd fast float %5894, %5285
  %5904 = fadd fast float %5886, %5280
  %5905 = fadd fast float %5887, %5281
  %5906 = fadd fast float %5888, %5282
  %5907 = fadd fast float %5892, %5277
  %5908 = fadd fast float %5893, %5278
  %5909 = fadd fast float %5894, %5279
  br label %5910

; <label>:5910                                    ; preds = %5621, %5616
  %5911 = phi float [ %5277, %5616 ], [ %5907, %5621 ]
  %5912 = phi float [ %5278, %5616 ], [ %5908, %5621 ]
  %5913 = phi float [ %5279, %5616 ], [ %5909, %5621 ]
  %5914 = phi float [ %5280, %5616 ], [ %5904, %5621 ]
  %5915 = phi float [ %5281, %5616 ], [ %5905, %5621 ]
  %5916 = phi float [ %5282, %5616 ], [ %5906, %5621 ]
  %5917 = phi float [ %5283, %5616 ], [ %5901, %5621 ]
  %5918 = phi float [ %5284, %5616 ], [ %5902, %5621 ]
  %5919 = phi float [ %5285, %5616 ], [ %5903, %5621 ]
  %5920 = phi float [ %5286, %5616 ], [ %5898, %5621 ]
  %5921 = phi float [ %5287, %5616 ], [ %5899, %5621 ]
  %5922 = phi float [ %5288, %5616 ], [ %5900, %5621 ]
  %5923 = phi float [ %5289, %5616 ], [ %5895, %5621 ]
  %5924 = phi float [ %5290, %5616 ], [ %5896, %5621 ]
  %5925 = phi float [ %5291, %5616 ], [ %5897, %5621 ]
  %5926 = phi float [ %5292, %5616 ], [ %5889, %5621 ]
  %5927 = phi float [ %5293, %5616 ], [ %5890, %5621 ]
  %5928 = phi float [ %5294, %5616 ], [ %5891, %5621 ]
  %5929 = bitcast i32 %5267 to float
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 1
  %5932 = bitcast float %5931 to i32
  %5933 = and i32 %5932, 65535
  %5934 = icmp eq i32 %5933, 65535
  br i1 %5934, label %5935, label %5937

; <label>:5935                                    ; preds = %5910
  %5936 = call float @dx.op.binary.f32(i32 35, float %5929, float %5617)  ; FMax(a,b)
  br label %5940

; <label>:5937                                    ; preds = %5910
  %5938 = icmp eq i32 %5933, %5296
  %5939 = select i1 %5938, float %5617, float %5929
  br label %5940

; <label>:5940                                    ; preds = %5937, %5935
  %5941 = phi float [ %5936, %5935 ], [ %5939, %5937 ]
  %5942 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5943 = bitcast float %5942 to i32
  %5944 = lshr i32 %5943, 8
  %5945 = and i32 %5944, 255
  %5946 = uitofp i32 %5945 to float
  %5947 = fptoui float %5946 to i32
  %5948 = icmp eq i32 %5947, 15
  %5949 = bitcast float %5941 to i32
  %5950 = select i1 %5948, i32 %5949, i32 %5267
  %5951 = add i32 %5441, %5272
  %5952 = add i32 %5443, %5273
  %5953 = add i32 %5445, %5274
  %5954 = add i32 %5447, %5275
  br label %5452

; <label>:5955                                    ; preds = %5452
  br label %5956

; <label>:5956                                    ; preds = %5955, %5213
  %5957 = phi i32 [ %5214, %5213 ], [ %5453, %5955 ]
  %5958 = phi i32 [ %5215, %5213 ], [ %5442, %5955 ]
  %5959 = phi i32 [ %5216, %5213 ], [ %5444, %5955 ]
  %5960 = phi i32 [ %5217, %5213 ], [ %5446, %5955 ]
  %5961 = phi i32 [ %5218, %5213 ], [ %5448, %5955 ]
  %5962 = phi i32 [ %5219, %5213 ], [ %5454, %5955 ]
  %5963 = phi i32 [ %5220, %5213 ], [ %5455, %5955 ]
  %5964 = phi i32 [ %5221, %5213 ], [ %5456, %5955 ]
  %5965 = phi i32 [ %5222, %5213 ], [ %5457, %5955 ]
  %5966 = phi float [ %5224, %5213 ], [ %5458, %5955 ]
  %5967 = phi float [ %5225, %5213 ], [ %5459, %5955 ]
  %5968 = phi float [ %5226, %5213 ], [ %5460, %5955 ]
  %5969 = phi float [ %5227, %5213 ], [ %5461, %5955 ]
  %5970 = phi float [ %5228, %5213 ], [ %5462, %5955 ]
  %5971 = phi float [ %5229, %5213 ], [ %5463, %5955 ]
  %5972 = phi float [ %5230, %5213 ], [ %5464, %5955 ]
  %5973 = phi float [ %5231, %5213 ], [ %5465, %5955 ]
  %5974 = phi float [ %5232, %5213 ], [ %5466, %5955 ]
  %5975 = phi float [ %5233, %5213 ], [ %5467, %5955 ]
  %5976 = phi float [ %5234, %5213 ], [ %5468, %5955 ]
  %5977 = phi float [ %5235, %5213 ], [ %5469, %5955 ]
  %5978 = phi float [ %5236, %5213 ], [ %5470, %5955 ]
  %5979 = phi float [ %5237, %5213 ], [ %5471, %5955 ]
  %5980 = phi float [ %5238, %5213 ], [ %5472, %5955 ]
  %5981 = phi float [ %5239, %5213 ], [ %5473, %5955 ]
  %5982 = phi float [ %5240, %5213 ], [ %5474, %5955 ]
  %5983 = phi float [ %5241, %5213 ], [ %5475, %5955 ]
  %5984 = add i32 %5223, 1
  %5985 = icmp ugt i32 %5984, %5210
  br i1 %5985, label %5986, label %5213

; <label>:5986                                    ; preds = %5956
  br label %5987

; <label>:5987                                    ; preds = %5986, %5191
  %5988 = phi i32 [ %5170, %5191 ], [ %5957, %5986 ]
  %5989 = phi i32 [ 0, %5191 ], [ %5958, %5986 ]
  %5990 = phi i32 [ 0, %5191 ], [ %5959, %5986 ]
  %5991 = phi i32 [ 0, %5191 ], [ %5960, %5986 ]
  %5992 = phi i32 [ 0, %5191 ], [ %5961, %5986 ]
  %5993 = phi i32 [ 0, %5191 ], [ %5962, %5986 ]
  %5994 = phi i32 [ 0, %5191 ], [ %5963, %5986 ]
  %5995 = phi i32 [ 0, %5191 ], [ %5964, %5986 ]
  %5996 = phi i32 [ 0, %5191 ], [ %5965, %5986 ]
  %5997 = phi float [ %5172, %5191 ], [ %5966, %5986 ]
  %5998 = phi float [ %5173, %5191 ], [ %5967, %5986 ]
  %5999 = phi float [ %5174, %5191 ], [ %5968, %5986 ]
  %6000 = phi float [ %5175, %5191 ], [ %5969, %5986 ]
  %6001 = phi float [ %5176, %5191 ], [ %5970, %5986 ]
  %6002 = phi float [ %5177, %5191 ], [ %5971, %5986 ]
  %6003 = phi float [ %5178, %5191 ], [ %5972, %5986 ]
  %6004 = phi float [ %5179, %5191 ], [ %5973, %5986 ]
  %6005 = phi float [ %5180, %5191 ], [ %5974, %5986 ]
  %6006 = phi float [ %5181, %5191 ], [ %5975, %5986 ]
  %6007 = phi float [ %5182, %5191 ], [ %5976, %5986 ]
  %6008 = phi float [ %5183, %5191 ], [ %5977, %5986 ]
  %6009 = phi float [ %5185, %5191 ], [ %5978, %5986 ]
  %6010 = phi float [ %5186, %5191 ], [ %5979, %5986 ]
  %6011 = phi float [ %5187, %5191 ], [ %5980, %5986 ]
  %6012 = phi float [ %5181, %5191 ], [ %5981, %5986 ]
  %6013 = phi float [ %5182, %5191 ], [ %5982, %5986 ]
  %6014 = phi float [ %5183, %5191 ], [ %5983, %5986 ]
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6017 = bitcast float %6016 to i32
  %6018 = lshr i32 %6017, 24
  %6019 = uitofp i32 %6018 to float
  %6020 = fptoui float %6019 to i32
  %6021 = icmp eq i32 %6020, 1
  %6022 = select i1 %6021, i32 %5993, i32 %5989
  %6023 = uitofp i32 %6022 to float
  %6024 = fptoui float %6023 to i32
  %6025 = shl i32 %6024, 8
  %6026 = select i1 %6021, i32 %5994, i32 %5990
  %6027 = uitofp i32 %6026 to float
  %6028 = fptoui float %6027 to i32
  %6029 = shl i32 %6028, 16
  %6030 = and i32 %6025, 65280
  %6031 = or i32 %6030, %5171
  %6032 = select i1 %6021, i32 %5995, i32 %5991
  %6033 = uitofp i32 %6032 to float
  %6034 = fptoui float %6033 to i32
  %6035 = shl i32 %6034, 24
  %6036 = and i32 %6029, 16711680
  %6037 = or i32 %6031, %6036
  %6038 = or i32 %6037, %6035
  %6039 = select i1 %6021, i32 %5996, i32 %5992
  %6040 = uitofp i32 %6039 to float
  %6041 = fptoui float %6040 to i32
  %6042 = and i32 %6041, 255
  %6043 = and i32 %4805, -256
  %6044 = or i32 %6042, %6043
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = bitcast float %6046 to i32
  %6048 = lshr i32 %6047, 8
  %6049 = and i32 %6048, 255
  %6050 = uitofp i32 %6049 to float
  %6051 = fptoui float %6050 to i32
  %6052 = icmp eq i32 %6051, 12
  %6053 = select i1 %6052, i32 0, i32 %5988
  br label %6054

; <label>:6054                                    ; preds = %5987, %5169
  %6055 = phi i32 [ %4805, %5169 ], [ %6044, %5987 ]
  %6056 = phi i32 [ 0, %5169 ], [ %6038, %5987 ]
  %6057 = phi i32 [ %5170, %5169 ], [ %6053, %5987 ]
  %6058 = phi float [ %5172, %5169 ], [ %5997, %5987 ]
  %6059 = phi float [ %5173, %5169 ], [ %5998, %5987 ]
  %6060 = phi float [ %5174, %5169 ], [ %5999, %5987 ]
  %6061 = phi float [ %5175, %5169 ], [ %6000, %5987 ]
  %6062 = phi float [ %5176, %5169 ], [ %6001, %5987 ]
  %6063 = phi float [ %5177, %5169 ], [ %6002, %5987 ]
  %6064 = phi float [ %5178, %5169 ], [ %6003, %5987 ]
  %6065 = phi float [ %5179, %5169 ], [ %6004, %5987 ]
  %6066 = phi float [ %5180, %5169 ], [ %6005, %5987 ]
  %6067 = phi float [ %5181, %5169 ], [ %6006, %5987 ]
  %6068 = phi float [ %5182, %5169 ], [ %6007, %5987 ]
  %6069 = phi float [ %5183, %5169 ], [ %6008, %5987 ]
  %6070 = phi float [ %5185, %5169 ], [ %6009, %5987 ]
  %6071 = phi float [ %5186, %5169 ], [ %6010, %5987 ]
  %6072 = phi float [ %5187, %5169 ], [ %6011, %5987 ]
  %6073 = phi float [ %5181, %5169 ], [ %6012, %5987 ]
  %6074 = phi float [ %5182, %5169 ], [ %6013, %5987 ]
  %6075 = phi float [ %5183, %5169 ], [ %6014, %5987 ]
  br i1 %58, label %6076, label %6295

; <label>:6076                                    ; preds = %6054
  %6077 = and i32 %1905, 65535
  %6078 = uitofp i32 %6077 to float
  %6079 = fmul fast float %6078, 0x3EF0001000000000
  %6080 = lshr i32 %1912, 16
  %6081 = uitofp i32 %6080 to float
  %6082 = fmul fast float %6081, 0x3EF0001000000000
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6085 = fadd fast float %6084, 3.000000e+00
  %6086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.i32 %6086, 0
  %6088 = call i32 @dx.op.binary.i32(i32 40, i32 %160, i32 %6087)  ; UMin(a,b)
  %6089 = mul i32 %6088, 36
  %6090 = add i32 %6089, 4
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = fmul fast float %6079, %6092
  %6094 = fmul fast float %6082, %6092
  %6095 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6096 = fadd fast float %6093, %6095
  %6097 = fadd fast float %6094, %6095
  br i1 %393, label %6158, label %6098

; <label>:6098                                    ; preds = %6076
  br label %6099

; <label>:6099                                    ; preds = %6099, %6098
  %6100 = phi float [ %6143, %6099 ], [ 0.000000e+00, %6098 ]
  %6101 = phi float [ %6153, %6099 ], [ 0.000000e+00, %6098 ]
  %6102 = phi float [ %6154, %6099 ], [ 0.000000e+00, %6098 ]
  %6103 = phi float [ %6155, %6099 ], [ 0.000000e+00, %6098 ]
  %6104 = phi float [ %6147, %6099 ], [ 0.000000e+00, %6098 ]
  %6105 = phi float [ %6148, %6099 ], [ 0.000000e+00, %6098 ]
  %6106 = phi float [ %6149, %6099 ], [ 0.000000e+00, %6098 ]
  %6107 = phi i32 [ %6112, %6099 ], [ %164, %6098 ]
  %6108 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6107)  ; FirstbitLo(value)
  %6109 = and i32 %6108, 31
  %6110 = shl i32 1, %6109
  %6111 = xor i32 %6110, -1
  %6112 = and i32 %6107, %6111
  %6113 = shl i32 %6108, 2
  %6114 = add i32 %6090, %6113
  %6115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6114, i32 undef)  ; BufferLoad(srv,index,wot)
  %6116 = extractvalue %dx.types.ResRet.i32 %6115, 0
  %6117 = and i32 %6116, 32767
  %6118 = add i32 %172, %6113
  %6119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6118, i32 undef)  ; BufferLoad(srv,index,wot)
  %6120 = extractvalue %dx.types.ResRet.f32 %6119, 0
  %6121 = add i32 %187, %6113
  %6122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6121, i32 undef)  ; BufferLoad(srv,index,wot)
  %6123 = extractvalue %dx.types.ResRet.i32 %6122, 0
  %6124 = add i32 %6123, 0
  %6125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6124, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6125, %dx.types.Handle %43, float %6096, float %6097, float %6120, float undef, i32 0, i32 0, i32 undef, float %6085)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = mul nuw nsw i32 %6117, 928
  %6129 = add nuw nsw i32 %6128, 44
  %6130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6129, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.f32 %6130, 0
  %6132 = add nuw nsw i32 %6128, 48
  %6133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6132, i32 undef)  ; BufferLoad(srv,index,wot)
  %6134 = extractvalue %dx.types.ResRet.f32 %6133, 0
  %6135 = extractvalue %dx.types.ResRet.f32 %6133, 1
  %6136 = extractvalue %dx.types.ResRet.f32 %6133, 2
  %6137 = add nuw nsw i32 %6128, 60
  %6138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6137, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.ResRet.f32 %6138, 1
  %6141 = extractvalue %dx.types.ResRet.f32 %6138, 2
  %6142 = fmul fast float %6131, %6127
  %6143 = fadd fast float %6142, %6100
  %6144 = fmul fast float %6134, %6127
  %6145 = fmul fast float %6135, %6127
  %6146 = fmul fast float %6136, %6127
  %6147 = fadd fast float %6144, %6104
  %6148 = fadd fast float %6145, %6105
  %6149 = fadd fast float %6146, %6106
  %6150 = fmul fast float %6139, %6127
  %6151 = fmul fast float %6140, %6127
  %6152 = fmul fast float %6141, %6127
  %6153 = fadd fast float %6150, %6101
  %6154 = fadd fast float %6151, %6102
  %6155 = fadd fast float %6152, %6103
  %6156 = icmp eq i32 %6112, 0
  br i1 %6156, label %6157, label %6099

; <label>:6157                                    ; preds = %6099
  br label %6158

; <label>:6158                                    ; preds = %6157, %6076
  %6159 = phi float [ 0.000000e+00, %6076 ], [ %6143, %6157 ]
  %6160 = phi float [ 0.000000e+00, %6076 ], [ %6153, %6157 ]
  %6161 = phi float [ 0.000000e+00, %6076 ], [ %6154, %6157 ]
  %6162 = phi float [ 0.000000e+00, %6076 ], [ %6155, %6157 ]
  %6163 = phi float [ 0.000000e+00, %6076 ], [ %6147, %6157 ]
  %6164 = phi float [ 0.000000e+00, %6076 ], [ %6148, %6157 ]
  %6165 = phi float [ 0.000000e+00, %6076 ], [ %6149, %6157 ]
  %6166 = fmul fast float %6163, 0x3F847AE140000000
  %6167 = fmul fast float %6164, 0x3F847AE140000000
  %6168 = fmul fast float %6165, 0x3F847AE140000000
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.CBufRet.f32 %6169, 2
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6176 = call float @dx.op.dot3.f32(i32 55, float %6170, float %6171, float %6172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = select i1 %1951, float %6174, float %6170
  %6178 = select i1 %1951, float %6176, float %6171
  %6179 = select i1 %1951, float %6175, float %6172
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.CBufRet.f32 %6180, 2
  %6184 = fadd fast float %6163, %6160
  %6185 = fmul fast float %6184, 0x3F847AE140000000
  %6186 = fadd fast float %6164, %6161
  %6187 = fmul fast float %6186, 0x3F847AE140000000
  %6188 = fadd fast float %6165, %6162
  %6189 = fmul fast float %6188, 0x3F847AE140000000
  %6190 = call float @dx.op.dot3.f32(i32 55, float %6181, float %6182, float %6183, float %1781, float %1782, float %1783)  ; Dot3(ax,ay,az,bx,by,bz)
  %6191 = fcmp fast ogt float %6159, 0.000000e+00
  %6192 = select i1 %6191, float 1.000000e+00, float -1.000000e+00
  %6193 = fmul fast float %6192, 5.000000e-01
  %6194 = fmul fast float %6193, %6190
  %6195 = fmul fast float %6192, %6159
  %6196 = fadd fast float %6194, 4.921875e-01
  %6197 = fadd fast float %6195, -3.125000e-02
  %6198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %6196, float 0x3FB25F3060000000, float %6197, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = fmul fast float %6203, %6201
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6206 = fadd fast float %6204, %6205
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6209 = fmul fast float %6208, %5184
  %6210 = extractvalue %dx.types.CBufRet.f32 %6207, 1
  %6211 = fadd fast float %6209, %6210
  %6212 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6200, 3
  %6214 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6215 = fmul fast float %6214, %6213
  %6216 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6217 = fadd fast float %6215, %6216
  %6218 = fmul fast float %6199, 0x400921FB60000000
  %6219 = fmul fast float %6218, %6206
  %6220 = fmul fast float %6219, %6212
  %6221 = call float @dx.op.binary.f32(i32 35, float %6185, float 0x3F10000000000000)  ; FMax(a,b)
  %6222 = call float @dx.op.binary.f32(i32 35, float %6187, float 0x3F10000000000000)  ; FMax(a,b)
  %6223 = call float @dx.op.binary.f32(i32 35, float %6189, float 0x3F10000000000000)  ; FMax(a,b)
  %6224 = fdiv fast float 1.000000e+00, %6221
  %6225 = fdiv fast float 1.000000e+00, %6222
  %6226 = fdiv fast float 1.000000e+00, %6223
  %6227 = fmul fast float %6184, 0xBF8D8BE060000000
  %6228 = fmul fast float %6186, 0xBF8D8BE060000000
  %6229 = fmul fast float %6188, 0xBF8D8BE060000000
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 3
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6224, float %6225, float %6226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = fmul fast float %6231, %6232
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1814, float %1815, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = fdiv fast float 1.000000e+00, %6237
  %6239 = fmul fast float %6238, %6236
  %6240 = fcmp ogt float %1783, -0.000000e+00
  %6241 = select i1 %6240, float %6235, float %6239
  %6242 = call float @dx.op.binary.f32(i32 36, float %6241, float %6233)  ; FMin(a,b)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6244 = fmul fast float %6243, %6242
  %6245 = fmul fast float %6244, %6227
  %6246 = fmul fast float %6244, %6228
  %6247 = fmul fast float %6244, %6229
  %6248 = call float @dx.op.unary.f32(i32 21, float %6245)  ; Exp(value)
  %6249 = call float @dx.op.unary.f32(i32 21, float %6246)  ; Exp(value)
  %6250 = call float @dx.op.unary.f32(i32 21, float %6247)  ; Exp(value)
  %6251 = fmul fast float %6220, %6177
  %6252 = fmul fast float %6251, %6248
  %6253 = fmul fast float %6220, %6178
  %6254 = fmul fast float %6253, %6249
  %6255 = fmul fast float %6220, %6179
  %6256 = fmul fast float %6255, %6250
  %6257 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6258 = fmul fast float %6257, %6242
  %6259 = fmul fast float %6258, %6227
  %6260 = fmul fast float %6258, %6228
  %6261 = fmul fast float %6258, %6229
  %6262 = call float @dx.op.unary.f32(i32 21, float %6259)  ; Exp(value)
  %6263 = call float @dx.op.unary.f32(i32 21, float %6260)  ; Exp(value)
  %6264 = call float @dx.op.unary.f32(i32 21, float %6261)  ; Exp(value)
  %6265 = fmul fast float %6217, %3017
  %6266 = fmul fast float %6265, %6262
  %6267 = fmul fast float %6217, %3018
  %6268 = fmul fast float %6267, %6263
  %6269 = fmul fast float %6217, %3019
  %6270 = fmul fast float %6269, %6264
  %6271 = fadd fast float %6266, %6252
  %6272 = fmul fast float %6166, %6271
  %6273 = fadd fast float %6268, %6254
  %6274 = fmul fast float %6167, %6273
  %6275 = fadd fast float %6270, %6256
  %6276 = fmul fast float %6168, %6275
  %6277 = fmul fast float %6241, %6227
  %6278 = fmul fast float %6241, %6228
  %6279 = fmul fast float %6241, %6229
  %6280 = call float @dx.op.unary.f32(i32 21, float %6277)  ; Exp(value)
  %6281 = call float @dx.op.unary.f32(i32 21, float %6278)  ; Exp(value)
  %6282 = call float @dx.op.unary.f32(i32 21, float %6279)  ; Exp(value)
  %6283 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6284 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6285 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6286 = fmul fast float %6283, %6272
  %6287 = fmul fast float %6284, %6274
  %6288 = fmul fast float %6285, %6276
  %6289 = fsub fast float %6272, %6286
  %6290 = fsub fast float %6274, %6287
  %6291 = fsub fast float %6276, %6288
  %6292 = fmul fast float %6289, %6224
  %6293 = fmul fast float %6290, %6225
  %6294 = fmul fast float %6291, %6226
  br label %6295

; <label>:6295                                    ; preds = %6158, %6054
  %6296 = phi float [ 0.000000e+00, %6054 ], [ %6292, %6158 ]
  %6297 = phi float [ 0.000000e+00, %6054 ], [ %6293, %6158 ]
  %6298 = phi float [ 0.000000e+00, %6054 ], [ %6294, %6158 ]
  %6299 = fmul fast float %6296, %3079
  %6300 = fmul fast float %6297, %3079
  %6301 = fmul fast float %6298, %3079
  %6302 = fadd fast float %6299, %6070
  %6303 = fadd fast float %6300, %6071
  %6304 = fadd fast float %6301, %6072
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = bitcast float %6306 to i32
  %6308 = and i32 %6307, 255
  %6309 = uitofp i32 %6308 to float
  %6310 = fptoui float %6309 to i32
  %6311 = icmp eq i32 %6310, 13
  br i1 %6311, label %6312, label %6332

; <label>:6312                                    ; preds = %6295
  %6313 = fadd fast float %1241, 2.000000e+00
  %6314 = fadd fast float %1243, 1.000000e+00
  %6315 = fsub fast float 1.000000e+00, %1244
  %6316 = fmul fast float %6313, 5.000000e-01
  %6317 = fmul fast float %6314, 5.000000e-01
  %6318 = fmul fast float %6315, 5.000000e-01
  %6319 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6320 = call float @dx.op.unary.f32(i32 7, float %6317)  ; Saturate(value)
  %6321 = call float @dx.op.unary.f32(i32 7, float %6318)  ; Saturate(value)
  %6322 = fmul fast float %6319, 1.023000e+03
  %6323 = fmul fast float %6320, 1.023000e+03
  %6324 = fmul fast float %6321, 1.023000e+03
  %6325 = fptoui float %6322 to i32
  %6326 = fptoui float %6323 to i32
  %6327 = fptoui float %6324 to i32
  %6328 = shl i32 %6326, 10
  %6329 = or i32 %6328, %6325
  %6330 = shl i32 %6327, 20
  %6331 = or i32 %6329, %6330
  br label %6332

; <label>:6332                                    ; preds = %6312, %6295
  %6333 = phi i32 [ %6331, %6312 ], [ %6057, %6295 ]
  %6334 = icmp eq i32 %6310, 14
  br i1 %6334, label %6335, label %6355

; <label>:6335                                    ; preds = %6332
  %6336 = fadd fast float %1238, 1.000000e+00
  %6337 = fadd fast float %1248, 1.000000e+00
  %6338 = fsub fast float 1.000000e+00, %80
  %6339 = fmul fast float %6336, 5.000000e-01
  %6340 = fmul fast float %6337, 5.000000e-01
  %6341 = fmul fast float %6338, 5.000000e-01
  %6342 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6343 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6345 = fmul fast float %6342, 1.023000e+03
  %6346 = fmul fast float %6343, 1.023000e+03
  %6347 = fmul fast float %6344, 1.023000e+03
  %6348 = fptoui float %6345 to i32
  %6349 = fptoui float %6346 to i32
  %6350 = fptoui float %6347 to i32
  %6351 = shl i32 %6349, 10
  %6352 = or i32 %6351, %6348
  %6353 = shl i32 %6350, 20
  %6354 = or i32 %6352, %6353
  br label %6355

; <label>:6355                                    ; preds = %6335, %6332
  %6356 = phi i32 [ %6354, %6335 ], [ %6333, %6332 ]
  %6357 = icmp eq i32 %6310, 15
  br i1 %6357, label %6358, label %6378

; <label>:6358                                    ; preds = %6355
  %6359 = fadd fast float %78, 1.000000e+00
  %6360 = fadd fast float %80, 1.000000e+00
  %6361 = fadd fast float %82, 1.000000e+00
  %6362 = fmul fast float %6359, 5.000000e-01
  %6363 = fmul fast float %6360, 5.000000e-01
  %6364 = fmul fast float %6361, 5.000000e-01
  %6365 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6366 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6367 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6368 = fmul fast float %6365, 1.023000e+03
  %6369 = fmul fast float %6366, 1.023000e+03
  %6370 = fmul fast float %6367, 1.023000e+03
  %6371 = fptoui float %6368 to i32
  %6372 = fptoui float %6369 to i32
  %6373 = fptoui float %6370 to i32
  %6374 = shl i32 %6372, 10
  %6375 = or i32 %6374, %6371
  %6376 = shl i32 %6373, 20
  %6377 = or i32 %6375, %6376
  br label %6378

; <label>:6378                                    ; preds = %6358, %6355
  %6379 = phi i32 [ %6377, %6358 ], [ %6356, %6355 ]
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = fadd fast float %6075, %1927
  %6382 = icmp eq i32 %6310, 39
  %6383 = icmp eq i32 %6310, 40
  %6384 = select i1 %6383, float %1925, float 0.000000e+00
  %6385 = select i1 %6382, float %6381, float %6384
  %6386 = call float @dx.op.unary.f32(i32 24, float %1765)  ; Sqrt(value)
  %6387 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %6388 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %6389 = fmul fast float %6386, %6073
  %6390 = fmul fast float %6387, %6074
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  br i1 %1951, label %6393, label %6417

; <label>:6393                                    ; preds = %6378
  %6394 = extractvalue %dx.types.CBufRet.f32 %6380, 3
  %6395 = fmul fast float %1755, 2.000000e+00
  %6396 = fmul fast float %6395, %1792
  %6397 = fsub fast float %1783, %6396
  %6398 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6399 = fsub fast float 1.000000e+00, %6398
  %6400 = fmul fast float %6394, %6399
  %6401 = fsub fast float 1.000000e+00, %1925
  %6402 = call float @dx.op.unary.f32(i32 7, float %6401)  ; Saturate(value)
  %6403 = fmul fast float %6400, %6402
  %6404 = fmul fast float %6381, %1925
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6407 = fsub fast float 1.000000e+00, %1818
  %6408 = fmul fast float %6406, %6407
  %6409 = fadd fast float %6390, %6389
  %6410 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6411 = fsub fast float %6404, %6408
  %6412 = fadd fast float %6411, %6403
  %6413 = fsub fast float %6412, %6410
  %6414 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6415 = fmul fast float %6413, %6414
  %6416 = call float @dx.op.unary.f32(i32 7, float %6415)  ; Saturate(value)
  br label %6421

; <label>:6417                                    ; preds = %6378
  %6418 = fmul fast float %6388, %6075
  %6419 = fmul fast float %6392, %6390
  %6420 = fmul fast float %6418, %6392
  br label %6421

; <label>:6421                                    ; preds = %6417, %6393
  %6422 = phi float [ %6409, %6393 ], [ %6389, %6417 ]
  %6423 = phi float [ %6416, %6393 ], [ %6419, %6417 ]
  %6424 = phi float [ 1.000000e+00, %6393 ], [ %6420, %6417 ]
  %6425 = fmul float %6392, %6422
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 0
  %6428 = fmul fast float %6427, %6303
  %6429 = fmul fast float %6427, %6304
  %6430 = fadd fast float %6303, %6302
  %6431 = select i1 %1951, float %6430, float %6302
  %6432 = fmul float %6431, %6427
  %6433 = select i1 %1951, float 0.000000e+00, float %6428
  %6434 = select i1 %1951, float 0.000000e+00, float %6429
  switch i32 %6310, label %6734 [
    i32 0, label %6749
    i32 1, label %6435
    i32 2, label %6436
    i32 3, label %6448
    i32 4, label %6457
    i32 5, label %6458
    i32 6, label %6459
    i32 12, label %6460
    i32 13, label %6461
    i32 14, label %6473
    i32 15, label %6485
    i32 16, label %6497
    i32 17, label %6498
    i32 63, label %6733
    i32 18, label %6499
    i32 25, label %6521
    i32 27, label %6522
    i32 28, label %6523
    i32 29, label %6524
    i32 31, label %6525
    i32 32, label %6548
    i32 33, label %6609
    i32 37, label %6627
    i32 38, label %6628
    i32 39, label %6637
    i32 40, label %6660
    i32 41, label %6664
    i32 52, label %6665
    i32 53, label %6666
    i32 54, label %6667
    i32 55, label %6668
    i32 56, label %6669
    i32 57, label %6671
    i32 58, label %6673
    i32 59, label %6711
    i32 60, label %6713
    i32 61, label %6715
    i32 64, label %6717
    i32 62, label %6732
  ]

; <label>:6435                                    ; preds = %6421
  br label %6734

; <label>:6436                                    ; preds = %6421
  %6437 = call float @dx.op.dot3.f32(i32 55, float %1753, float %1754, float %1755, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %6438 = call float @dx.op.unary.f32(i32 25, float %6437)  ; Rsqrt(value)
  %6439 = fmul fast float %1753, 5.000000e-01
  %6440 = fmul fast float %6439, %6438
  %6441 = fmul fast float %1754, 5.000000e-01
  %6442 = fmul fast float %6441, %6438
  %6443 = fmul fast float %1755, 5.000000e-01
  %6444 = fmul fast float %6443, %6438
  %6445 = fadd fast float %6440, 5.000000e-01
  %6446 = fadd fast float %6442, 5.000000e-01
  %6447 = fadd fast float %6444, 5.000000e-01
  br label %6734

; <label>:6448                                    ; preds = %6421
  %6449 = fcmp fast ole float %1897, 0x3FA4B5DCC0000000
  %6450 = fmul fast float %1897, 0x3FB3D07220000000
  %6451 = fadd fast float %1897, 0x3FAC28F5C0000000
  %6452 = fmul fast float %6451, 0x3FEE54EDE0000000
  %6453 = call float @dx.op.unary.f32(i32 23, float %6452)  ; Log(value)
  %6454 = fmul fast float %6453, 0x4003333340000000
  %6455 = call float @dx.op.unary.f32(i32 21, float %6454)  ; Exp(value)
  %6456 = select i1 %6449, float %6450, float %6455
  br label %6734

; <label>:6457                                    ; preds = %6421
  br label %6734

; <label>:6458                                    ; preds = %6421
  br label %6734

; <label>:6459                                    ; preds = %6421
  br label %6734

; <label>:6460                                    ; preds = %6421
  br label %6734

; <label>:6461                                    ; preds = %6421
  %6462 = and i32 %6379, 1023
  %6463 = uitofp i32 %6462 to float
  %6464 = lshr i32 %6379, 10
  %6465 = and i32 %6464, 1023
  %6466 = uitofp i32 %6465 to float
  %6467 = lshr i32 %6379, 20
  %6468 = and i32 %6467, 1023
  %6469 = uitofp i32 %6468 to float
  %6470 = fmul fast float %6463, 0x3F50040100000000
  %6471 = fmul fast float %6466, 0x3F50040100000000
  %6472 = fmul fast float %6469, 0x3F50040100000000
  br label %6734

; <label>:6473                                    ; preds = %6421
  %6474 = and i32 %6379, 1023
  %6475 = uitofp i32 %6474 to float
  %6476 = lshr i32 %6379, 10
  %6477 = and i32 %6476, 1023
  %6478 = uitofp i32 %6477 to float
  %6479 = lshr i32 %6379, 20
  %6480 = and i32 %6479, 1023
  %6481 = uitofp i32 %6480 to float
  %6482 = fmul fast float %6475, 0x3F50040100000000
  %6483 = fmul fast float %6478, 0x3F50040100000000
  %6484 = fmul fast float %6481, 0x3F50040100000000
  br label %6734

; <label>:6485                                    ; preds = %6421
  %6486 = and i32 %6379, 1023
  %6487 = uitofp i32 %6486 to float
  %6488 = lshr i32 %6379, 10
  %6489 = and i32 %6488, 1023
  %6490 = uitofp i32 %6489 to float
  %6491 = lshr i32 %6379, 20
  %6492 = and i32 %6491, 1023
  %6493 = uitofp i32 %6492 to float
  %6494 = fmul fast float %6487, 0x3F50040100000000
  %6495 = fmul fast float %6490, 0x3F50040100000000
  %6496 = fmul fast float %6493, 0x3F50040100000000
  br label %6734

; <label>:6497                                    ; preds = %6421
  br label %6734

; <label>:6498                                    ; preds = %6421
  br label %6734

; <label>:6499                                    ; preds = %6421
  %6500 = fcmp fast ogt float %1774, 0x3FB99999A0000000
  %6501 = fcmp fast ogt float %1775, 0x3FB99999A0000000
  %6502 = or i1 %6500, %6501
  %6503 = fcmp fast ogt float %1776, 0x3FB99999A0000000
  %6504 = or i1 %6502, %6503
  %6505 = fcmp fast olt float %1774, 0x3FB99999A0000000
  %6506 = fcmp fast olt float %1775, 0x3FB99999A0000000
  %6507 = or i1 %6505, %6506
  %6508 = fcmp fast olt float %1776, 0x3FB99999A0000000
  %6509 = or i1 %6507, %6508
  %6510 = fadd fast float %1774, %1765
  %6511 = fcmp fast ogt float %6510, 1.000000e+00
  %6512 = fadd fast float %1775, %1766
  %6513 = fcmp fast ogt float %6512, 1.000000e+00
  %6514 = or i1 %6511, %6513
  %6515 = fadd fast float %1776, %1767
  %6516 = fcmp fast ogt float %6515, 1.000000e+00
  %6517 = or i1 %6514, %6516
  %6518 = select i1 %6517, float 1.000000e+00, float 0.000000e+00
  %6519 = and i1 %6504, %6509
  %6520 = select i1 %6519, float 1.000000e+00, float 0.000000e+00
  br label %6734

; <label>:6521                                    ; preds = %6421
  br label %6734

; <label>:6522                                    ; preds = %6421
  br label %6734

; <label>:6523                                    ; preds = %6421
  br label %6734

; <label>:6524                                    ; preds = %6421
  br label %6734

; <label>:6525                                    ; preds = %6421
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6530 = fcmp fast olt float %1897, %6527
  br i1 %6530, label %6531, label %6545

; <label>:6531                                    ; preds = %8478, %8476, %6545, %6525
  %6532 = phi i32 [ 0, %6525 ], [ 1, %6545 ], [ 2, %8476 ], [ 3, %8478 ]
  %6533 = mul i32 %6532, 3
  %6534 = add i32 0, %6533
  %6535 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6534
  %6536 = load float, float* %6535, align 4
  %6537 = mul i32 %6532, 3
  %6538 = add i32 1, %6537
  %6539 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6538
  %6540 = load float, float* %6539, align 4
  %6541 = mul i32 %6532, 3
  %6542 = add i32 2, %6541
  %6543 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6542
  %6544 = load float, float* %6543, align 4
  br label %6734

; <label>:6545                                    ; preds = %6525
  %6546 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6547 = fcmp fast olt float %1897, %6546
  br i1 %6547, label %6531, label %8476

; <label>:6548                                    ; preds = %6421
  %6549 = fcmp fast ole float %1765, 0x3F69A5C380000000
  %6550 = fcmp fast ole float %1766, 0x3F69A5C380000000
  %6551 = fcmp fast ole float %1767, 0x3F69A5C380000000
  %6552 = fmul fast float %1765, 0x4029D70A40000000
  %6553 = fmul fast float %1766, 0x4029D70A40000000
  %6554 = fmul fast float %1767, 0x4029D70A40000000
  %6555 = call float @dx.op.unary.f32(i32 23, float %1765)  ; Log(value)
  %6556 = call float @dx.op.unary.f32(i32 23, float %1766)  ; Log(value)
  %6557 = call float @dx.op.unary.f32(i32 23, float %1767)  ; Log(value)
  %6558 = fmul fast float %6555, 0x3FDAAAAAA0000000
  %6559 = fmul fast float %6556, 0x3FDAAAAAA0000000
  %6560 = fmul fast float %6557, 0x3FDAAAAAA0000000
  %6561 = call float @dx.op.unary.f32(i32 21, float %6558)  ; Exp(value)
  %6562 = call float @dx.op.unary.f32(i32 21, float %6559)  ; Exp(value)
  %6563 = call float @dx.op.unary.f32(i32 21, float %6560)  ; Exp(value)
  %6564 = fmul fast float %6561, 0x3FF0E147A0000000
  %6565 = fmul fast float %6562, 0x3FF0E147A0000000
  %6566 = fmul fast float %6563, 0x3FF0E147A0000000
  %6567 = fadd fast float %6564, 0xBFAC28F5C0000000
  %6568 = fadd fast float %6565, 0xBFAC28F5C0000000
  %6569 = fadd fast float %6566, 0xBFAC28F5C0000000
  %6570 = select i1 %6549, float %6552, float %6567
  %6571 = select i1 %6550, float %6553, float %6568
  %6572 = select i1 %6551, float %6554, float %6569
  %6573 = call float @dx.op.dot3.f32(i32 55, float %6570, float %6571, float %6572, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6574 = fcmp fast olt float %6573, 0x3FA0101020000000
  br i1 %6574, label %6583, label %6575

; <label>:6575                                    ; preds = %6548
  %6576 = fcmp fast ogt float %6573, 0x3FEEFEFF00000000
  br i1 %6576, label %6583, label %6577

; <label>:6577                                    ; preds = %6575
  %6578 = fcmp fast ogt float %6573, 0x3FEF5F5F60000000
  br i1 %6578, label %6583, label %6579

; <label>:6579                                    ; preds = %6577
  %6580 = fadd fast float %6573, %6573
  %6581 = fcmp fast ogt float %6580, 2.550000e+02
  br i1 %6581, label %6582, label %6583

; <label>:6582                                    ; preds = %6579
  br label %6583

; <label>:6583                                    ; preds = %6582, %6579, %6577, %6575, %6548
  %6584 = phi float [ 1.000000e+00, %6582 ], [ %6425, %6579 ], [ 1.000000e+00, %6548 ], [ 0x3FBD1D1D20000000, %6575 ], [ 0.000000e+00, %6577 ]
  %6585 = phi float [ 0.000000e+00, %6582 ], [ %6423, %6579 ], [ 0x3FE6666660000000, %6548 ], [ 1.000000e+00, %6575 ], [ 0.000000e+00, %6577 ]
  %6586 = phi float [ 1.000000e+00, %6582 ], [ %6424, %6579 ], [ 0.000000e+00, %6548 ], [ 0x3FDD5D5D60000000, %6575 ], [ 1.000000e+00, %6577 ]
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 3
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 3
  %6591 = fmul fast float %6590, 8.000000e+00
  %6592 = fmul fast float %73, 5.000000e+02
  %6593 = fmul fast float %6592, %6588
  %6594 = fsub fast float %6593, %6591
  %6595 = call float @dx.op.unary.f32(i32 13, float %6594)  ; Sin(value)
  %6596 = fmul fast float %6595, %6595
  %6597 = fmul fast float %6596, 2.000000e+00
  %6598 = fadd fast float %6597, -1.000000e+00
  %6599 = call float @dx.op.unary.f32(i32 7, float %6598)  ; Saturate(value)
  %6600 = fsub fast float %6584, %6425
  %6601 = fsub fast float %6585, %6423
  %6602 = fsub fast float %6586, %6424
  %6603 = fmul fast float %6599, %6600
  %6604 = fmul fast float %6599, %6601
  %6605 = fmul fast float %6599, %6602
  %6606 = fadd fast float %6603, %6425
  %6607 = fadd fast float %6604, %6423
  %6608 = fadd fast float %6605, %6424
  br label %6734

; <label>:6609                                    ; preds = %6421
  %6610 = fcmp fast olt float %69, 1.280000e+02
  br i1 %6610, label %6611, label %6625

; <label>:6611                                    ; preds = %8494, %8492, %8490, %8488, %8486, %8484, %8482, %8480, %6625, %6609
  %6612 = phi i32 [ 0, %6609 ], [ 1, %6625 ], [ 2, %8480 ], [ 3, %8482 ], [ 4, %8484 ], [ 5, %8486 ], [ 6, %8488 ], [ 7, %8490 ], [ 8, %8492 ], [ 9, %8494 ]
  %6613 = mul i32 %6612, 3
  %6614 = add i32 0, %6613
  %6615 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6614
  %6616 = load float, float* %6615, align 4
  %6617 = mul i32 %6612, 3
  %6618 = add i32 1, %6617
  %6619 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6618
  %6620 = load float, float* %6619, align 4
  %6621 = mul i32 %6612, 3
  %6622 = add i32 2, %6621
  %6623 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6622
  %6624 = load float, float* %6623, align 4
  br label %6734

; <label>:6625                                    ; preds = %6609
  %6626 = fcmp fast olt float %69, 2.560000e+02
  br i1 %6626, label %6611, label %8480

; <label>:6627                                    ; preds = %6421
  br label %6734

; <label>:6628                                    ; preds = %6421
  %6629 = bitcast i32 %6379 to float
  %6630 = fcmp fast ogt float %6629, 0.000000e+00
  %6631 = select i1 %6630, float 0.000000e+00, float 1.000000e+00
  %6632 = fcmp fast olt float %6629, 1.000000e+00
  %6633 = select i1 %6632, float 1.000000e+00, float 0.000000e+00
  %6634 = select i1 %6632, float %6631, float 0.000000e+00
  %6635 = fmul fast float %6633, %1897
  %6636 = fmul fast float %6634, %1897
  br label %6734

; <label>:6637                                    ; preds = %6421
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 0
  %6640 = extractvalue %dx.types.CBufRet.f32 %6638, 2
  %6641 = extractvalue %dx.types.CBufRet.f32 %6638, 3
  %6642 = fcmp fast olt float %6385, %6639
  br i1 %6642, label %6643, label %6657

; <label>:6643                                    ; preds = %8498, %8496, %6657, %6637
  %6644 = phi i32 [ 0, %6637 ], [ 1, %6657 ], [ 2, %8496 ], [ 3, %8498 ]
  %6645 = mul i32 %6644, 3
  %6646 = add i32 0, %6645
  %6647 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6646
  %6648 = load float, float* %6647, align 4
  %6649 = mul i32 %6644, 3
  %6650 = add i32 1, %6649
  %6651 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6650
  %6652 = load float, float* %6651, align 4
  %6653 = mul i32 %6644, 3
  %6654 = add i32 2, %6653
  %6655 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6654
  %6656 = load float, float* %6655, align 4
  br label %6734

; <label>:6657                                    ; preds = %6637
  %6658 = extractvalue %dx.types.CBufRet.f32 %6638, 1
  %6659 = fcmp fast olt float %6385, %6658
  br i1 %6659, label %6643, label %8496

; <label>:6660                                    ; preds = %6421
  %6661 = fadd fast float %6385, -5.000000e-01
  %6662 = fmul fast float %6661, 2.000000e+00
  %6663 = call float @dx.op.unary.f32(i32 7, float %6662)  ; Saturate(value)
  br label %6734

; <label>:6664                                    ; preds = %6421
  br label %6734

; <label>:6665                                    ; preds = %6421
  br label %6734

; <label>:6666                                    ; preds = %6421
  br label %6734

; <label>:6667                                    ; preds = %6421
  br label %6734

; <label>:6668                                    ; preds = %6421
  br label %6734

; <label>:6669                                    ; preds = %6421
  %6670 = bitcast i32 %6379 to float
  br label %6734

; <label>:6671                                    ; preds = %6421
  %6672 = bitcast i32 %6379 to float
  br label %6734

; <label>:6673                                    ; preds = %6421
  %6674 = and i32 %6379, 65535
  %6675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6674)  ; LegacyF16ToF32(value)
  %6676 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6677 = fptosi float %6676 to i32
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 0
  %6680 = extractvalue %dx.types.CBufRet.f32 %6678, 1
  %6681 = extractvalue %dx.types.CBufRet.f32 %6678, 2
  %6682 = fadd fast float %6679, %116
  %6683 = fadd fast float %6680, %117
  %6684 = fadd fast float %6681, %118
  %6685 = fptosi float %6682 to i32
  %6686 = fptosi float %6683 to i32
  %6687 = fptosi float %6684 to i32
  %6688 = xor i32 %6685, %6686
  %6689 = lshr i32 %6688, 1
  %6690 = and i32 %6689, 1
  %6691 = lshr i32 %6687, 1
  %6692 = and i32 %6691, 1
  %6693 = xor i32 %6692, 1
  %6694 = icmp ne i32 %6690, %6693
  switch i32 %6677, label %6734 [
    i32 -1, label %6695
    i32 -2, label %6696
    i32 -3, label %6698
    i32 -4, label %6700
    i32 -5, label %6702
    i32 -6, label %6703
    i32 -7, label %6704
  ]

; <label>:6695                                    ; preds = %6673
  br label %6734

; <label>:6696                                    ; preds = %6673
  %6697 = select i1 %6694, float 1.000000e+00, float 0.000000e+00
  br label %6734

; <label>:6698                                    ; preds = %6673
  %6699 = select i1 %6694, float 1.000000e+00, float 0.000000e+00
  br label %6734

; <label>:6700                                    ; preds = %6673
  %6701 = select i1 %6694, float 1.000000e+00, float 0.000000e+00
  br label %6734

; <label>:6702                                    ; preds = %6673
  br label %6734

; <label>:6703                                    ; preds = %6673
  br label %6734

; <label>:6704                                    ; preds = %6673
  %6705 = lshr i32 %6379, 16
  %6706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6705)  ; LegacyF16ToF32(value)
  %6707 = fmul fast float %6706, 0x3FD5555560000000
  %6708 = fsub fast float 1.000000e+00, %6707
  %6709 = fmul fast float %6707, %6675
  %6710 = fmul fast float %6708, %6675
  br label %6734

; <label>:6711                                    ; preds = %6421
  %6712 = bitcast i32 %6379 to float
  br label %6734

; <label>:6713                                    ; preds = %6421
  %6714 = bitcast i32 %6379 to float
  br label %6734

; <label>:6715                                    ; preds = %6421
  %6716 = bitcast i32 %6379 to float
  br label %6734

; <label>:6717                                    ; preds = %6421
  %6718 = and i32 %6379, 1023
  %6719 = uitofp i32 %6718 to float
  %6720 = lshr i32 %6379, 10
  %6721 = and i32 %6720, 1023
  %6722 = uitofp i32 %6721 to float
  %6723 = lshr i32 %6379, 20
  %6724 = and i32 %6723, 1023
  %6725 = uitofp i32 %6724 to float
  %6726 = fmul fast float %6719, 0x3F60040100000000
  %6727 = fmul fast float %6722, 0x3F60040100000000
  %6728 = fmul fast float %6725, 0x3F60040100000000
  %6729 = fadd fast float %6726, -1.000000e+00
  %6730 = fadd fast float %6727, -1.000000e+00
  %6731 = fadd fast float %6728, -1.000000e+00
  br label %6734

; <label>:6732                                    ; preds = %6421
  br label %6734

; <label>:6733                                    ; preds = %6421
  br label %6734

; <label>:6734                                    ; preds = %8498, %8494, %8478, %6733, %6732, %6717, %6715, %6713, %6711, %6704, %6703, %6702, %6700, %6698, %6696, %6695, %6673, %6671, %6669, %6668, %6667, %6666, %6665, %6664, %6660, %6643, %6628, %6627, %6611, %6583, %6531, %6524, %6523, %6522, %6521, %6499, %6498, %6497, %6485, %6473, %6461, %6460, %6459, %6458, %6457, %6448, %6436, %6435, %6421
  %6735 = phi float [ %6425, %6421 ], [ 0.000000e+00, %6732 ], [ %6729, %6717 ], [ %6716, %6715 ], [ %6714, %6713 ], [ %6712, %6711 ], [ %6425, %6673 ], [ 0.000000e+00, %6704 ], [ %6675, %6703 ], [ %6675, %6702 ], [ 0.000000e+00, %6700 ], [ %6699, %6698 ], [ %6697, %6696 ], [ %6675, %6695 ], [ %6672, %6671 ], [ %6670, %6669 ], [ 0.000000e+00, %6668 ], [ 0.000000e+00, %6667 ], [ 0.000000e+00, %6666 ], [ %116, %6664 ], [ %6663, %6660 ], [ %6635, %6628 ], [ 0.000000e+00, %6627 ], [ %6606, %6583 ], [ 0.000000e+00, %6524 ], [ 0.000000e+00, %6523 ], [ 0.000000e+00, %6522 ], [ 1.000000e+00, %6521 ], [ 0.000000e+00, %6733 ], [ 1.000000e+00, %6498 ], [ 5.000000e-01, %6497 ], [ %6494, %6485 ], [ %6482, %6473 ], [ %6470, %6461 ], [ %1900, %6460 ], [ %1898, %6459 ], [ %1774, %6458 ], [ %1711, %6457 ], [ %6456, %6448 ], [ %6445, %6436 ], [ %1765, %6435 ], [ %6536, %6531 ], [ %6616, %6611 ], [ %6648, %6643 ], [ 0.000000e+00, %6665 ], [ 1.000000e+00, %8478 ], [ 1.000000e+00, %8494 ], [ 1.000000e+00, %8498 ], [ %6518, %6499 ]
  %6736 = phi float [ %6423, %6421 ], [ 0.000000e+00, %6732 ], [ %6730, %6717 ], [ %6716, %6715 ], [ %6714, %6713 ], [ %6712, %6711 ], [ %6423, %6673 ], [ %6709, %6704 ], [ %6675, %6703 ], [ %6675, %6702 ], [ 0.000000e+00, %6700 ], [ 0.000000e+00, %6698 ], [ 0.000000e+00, %6696 ], [ %6675, %6695 ], [ %6672, %6671 ], [ %6670, %6669 ], [ 0.000000e+00, %6668 ], [ 0.000000e+00, %6667 ], [ 0.000000e+00, %6666 ], [ %117, %6664 ], [ %6663, %6660 ], [ %1897, %6628 ], [ 0.000000e+00, %6627 ], [ %6607, %6583 ], [ 1.000000e+00, %6524 ], [ 1.000000e+00, %6523 ], [ 1.000000e+00, %6522 ], [ 0x3FE6666660000000, %6521 ], [ 0.000000e+00, %6733 ], [ 1.000000e+00, %6498 ], [ 5.000000e-01, %6497 ], [ %6495, %6485 ], [ %6483, %6473 ], [ %6471, %6461 ], [ %1900, %6460 ], [ %1898, %6459 ], [ %1775, %6458 ], [ %1712, %6457 ], [ %6456, %6448 ], [ %6446, %6436 ], [ %1766, %6435 ], [ %6540, %6531 ], [ %6620, %6611 ], [ %6652, %6643 ], [ 0.000000e+00, %6665 ], [ 0.000000e+00, %8478 ], [ 0.000000e+00, %8494 ], [ 0.000000e+00, %8498 ], [ 0.000000e+00, %6499 ]
  %6737 = phi float [ %6424, %6421 ], [ 0.000000e+00, %6732 ], [ %6731, %6717 ], [ %6716, %6715 ], [ %6714, %6713 ], [ %6712, %6711 ], [ %6424, %6673 ], [ %6710, %6704 ], [ %6675, %6703 ], [ 0.000000e+00, %6702 ], [ %6701, %6700 ], [ 0.000000e+00, %6698 ], [ %6697, %6696 ], [ %6675, %6695 ], [ %6672, %6671 ], [ %6670, %6669 ], [ 0.000000e+00, %6668 ], [ 0.000000e+00, %6667 ], [ 0.000000e+00, %6666 ], [ %118, %6664 ], [ %6663, %6660 ], [ %6636, %6628 ], [ 0.000000e+00, %6627 ], [ %6608, %6583 ], [ 0.000000e+00, %6524 ], [ 0.000000e+00, %6523 ], [ 0.000000e+00, %6522 ], [ 0.000000e+00, %6521 ], [ 0.000000e+00, %6733 ], [ 1.000000e+00, %6498 ], [ 5.000000e-01, %6497 ], [ %6496, %6485 ], [ %6484, %6473 ], [ %6472, %6461 ], [ %1900, %6460 ], [ %1898, %6459 ], [ %1776, %6458 ], [ %1713, %6457 ], [ %6456, %6448 ], [ %6447, %6436 ], [ %1767, %6435 ], [ %6544, %6531 ], [ %6624, %6611 ], [ %6656, %6643 ], [ 1.000000e+00, %6665 ], [ 0.000000e+00, %8478 ], [ 0.000000e+00, %8494 ], [ 0.000000e+00, %8498 ], [ %6520, %6499 ]
  %6738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6739 = extractvalue %dx.types.CBufRet.f32 %6738, 3
  %6740 = fsub fast float %6735, %6425
  %6741 = fsub fast float %6736, %6423
  %6742 = fsub fast float %6737, %6424
  %6743 = fmul fast float %6739, %6740
  %6744 = fmul fast float %6739, %6741
  %6745 = fmul fast float %6739, %6742
  %6746 = fadd fast float %6743, %6425
  %6747 = fadd fast float %6744, %6423
  %6748 = fadd fast float %6745, %6424
  br label %6749

; <label>:6749                                    ; preds = %6734, %6421
  %6750 = phi float [ %6746, %6734 ], [ %6425, %6421 ]
  %6751 = phi float [ %6747, %6734 ], [ %6423, %6421 ]
  %6752 = phi float [ %6748, %6734 ], [ %6424, %6421 ]
  %6753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6753, 0
  %6755 = bitcast float %6754 to i32
  %6756 = lshr i32 %6755, 8
  %6757 = and i32 %6756, 255
  %6758 = uitofp i32 %6757 to float
  %6759 = fptoui float %6758 to i32
  switch i32 %6759, label %6996 [
    i32 1, label %6760
    i32 2, label %6766
    i32 3, label %6772
    i32 4, label %6778
    i32 5, label %6784
    i32 6, label %6790
    i32 7, label %6796
    i32 8, label %6802
    i32 9, label %6808
    i32 10, label %6810
    i32 11, label %6831
    i32 12, label %6852
    i32 13, label %6864
    i32 14, label %6879
    i32 15, label %6884
    i32 16, label %6886
    i32 17, label %6888
    i32 18, label %6890
    i32 19, label %6892
    i32 20, label %6903
    i32 21, label %6914
    i32 22, label %6926
    i32 23, label %6960
    i32 24, label %6975
    i32 25, label %6990
    i32 26, label %6992
    i32 27, label %6994
  ]

; <label>:6760                                    ; preds = %6749
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 0
  %6763 = fmul fast float %6762, %6067
  %6764 = fmul fast float %6762, %6068
  %6765 = fmul fast float %6762, %6069
  br label %6996

; <label>:6766                                    ; preds = %6749
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 0
  %6769 = fmul fast float %6768, %6064
  %6770 = fmul fast float %6768, %6065
  %6771 = fmul fast float %6768, %6066
  br label %6996

; <label>:6772                                    ; preds = %6749
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = fmul fast float %6774, %1711
  %6776 = fmul fast float %6774, %1712
  %6777 = fmul fast float %6774, %1713
  br label %6996

; <label>:6778                                    ; preds = %6749
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = fmul fast float %6780, %6061
  %6782 = fmul fast float %6780, %6062
  %6783 = fmul fast float %6780, %6063
  br label %6996

; <label>:6784                                    ; preds = %6749
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6787 = fmul fast float %6786, %6058
  %6788 = fmul fast float %6786, %6059
  %6789 = fmul fast float %6786, %6060
  br label %6996

; <label>:6790                                    ; preds = %6749
  %6791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6792 = extractvalue %dx.types.CBufRet.f32 %6791, 0
  %6793 = fmul fast float %6792, %4810
  %6794 = fmul fast float %6792, %4811
  %6795 = fmul fast float %6792, %4812
  br label %6996

; <label>:6796                                    ; preds = %6749
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 0
  %6799 = fmul fast float %6798, %4810
  %6800 = fmul fast float %6798, %4811
  %6801 = fmul fast float %6798, %4812
  br label %6996

; <label>:6802                                    ; preds = %6749
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = fmul fast float %4813, %6804
  %6806 = fmul fast float %4814, %6804
  %6807 = fmul fast float %4815, %6804
  br label %6996

; <label>:6808                                    ; preds = %6749
  %6809 = bitcast i32 %6379 to float
  br label %6996

; <label>:6810                                    ; preds = %6749
  %6811 = and i32 %6379, 1023
  %6812 = uitofp i32 %6811 to float
  %6813 = lshr i32 %6379, 10
  %6814 = and i32 %6813, 1023
  %6815 = uitofp i32 %6814 to float
  %6816 = lshr i32 %6379, 20
  %6817 = and i32 %6816, 1023
  %6818 = uitofp i32 %6817 to float
  %6819 = fmul fast float %6812, 0x3F60040100000000
  %6820 = fmul fast float %6815, 0x3F60040100000000
  %6821 = fmul fast float %6818, 0x3F60040100000000
  %6822 = fadd fast float %6819, -1.000000e+00
  %6823 = fadd fast float %6820, -1.000000e+00
  %6824 = fadd fast float %6821, -1.000000e+00
  %6825 = fcmp fast ogt float %6822, 0.000000e+00
  %6826 = select i1 %6825, float 1.000000e+00, float 0.000000e+00
  %6827 = fcmp fast ogt float %6823, 0.000000e+00
  %6828 = select i1 %6827, float 1.000000e+00, float 0.000000e+00
  %6829 = fcmp fast ogt float %6824, 0.000000e+00
  %6830 = select i1 %6829, float 1.000000e+00, float 0.000000e+00
  br label %6996

; <label>:6831                                    ; preds = %6749
  %6832 = and i32 %6379, 1023
  %6833 = uitofp i32 %6832 to float
  %6834 = lshr i32 %6379, 10
  %6835 = and i32 %6834, 1023
  %6836 = uitofp i32 %6835 to float
  %6837 = lshr i32 %6379, 20
  %6838 = and i32 %6837, 1023
  %6839 = uitofp i32 %6838 to float
  %6840 = fmul fast float %6833, 0x3F60040100000000
  %6841 = fmul fast float %6836, 0x3F60040100000000
  %6842 = fmul fast float %6839, 0x3F60040100000000
  %6843 = fadd fast float %6840, -1.000000e+00
  %6844 = fadd fast float %6841, -1.000000e+00
  %6845 = fadd fast float %6842, -1.000000e+00
  %6846 = fmul fast float %6845, %6844
  %6847 = fsub fast float %6845, %6846
  %6848 = fmul fast float %6844, %6843
  %6849 = fmul fast float %6847, %6843
  %6850 = fsub fast float %6844, %6848
  %6851 = fsub fast float %6847, %6849
  br label %6996

; <label>:6852                                    ; preds = %6749
  %6853 = and i32 %6379, 255
  %6854 = uitofp i32 %6853 to float
  %6855 = fmul fast float %6854, 0x3F70101020000000
  %6856 = lshr i32 %6379, 8
  %6857 = and i32 %6856, 255
  %6858 = uitofp i32 %6857 to float
  %6859 = fmul fast float %6858, 0x3F70101020000000
  %6860 = lshr i32 %6379, 16
  %6861 = and i32 %6860, 255
  %6862 = uitofp i32 %6861 to float
  %6863 = fmul fast float %6862, 0x3F70101020000000
  br label %6996

; <label>:6864                                    ; preds = %6749
  %6865 = and i32 %6379, 1023
  %6866 = uitofp i32 %6865 to float
  %6867 = lshr i32 %6379, 10
  %6868 = and i32 %6867, 1023
  %6869 = uitofp i32 %6868 to float
  %6870 = lshr i32 %6379, 20
  %6871 = and i32 %6870, 1023
  %6872 = uitofp i32 %6871 to float
  %6873 = fmul fast float %6866, 0x3F60040100000000
  %6874 = fmul fast float %6869, 0x3F60040100000000
  %6875 = fmul fast float %6872, 0x3F60040100000000
  %6876 = fadd fast float %6873, -1.000000e+00
  %6877 = fadd fast float %6874, -1.000000e+00
  %6878 = fadd fast float %6875, -1.000000e+00
  br label %6996

; <label>:6879                                    ; preds = %6749
  %6880 = icmp ne i32 %6379, 0
  %6881 = select i1 %6880, float 1.000000e+00, float %6750
  %6882 = select i1 %6880, float 0.000000e+00, float %6751
  %6883 = select i1 %6880, float 0.000000e+00, float %6752
  br label %6996

; <label>:6884                                    ; preds = %6749
  %6885 = bitcast i32 %6379 to float
  br label %6996

; <label>:6886                                    ; preds = %6749
  %6887 = bitcast i32 %6379 to float
  br label %6996

; <label>:6888                                    ; preds = %6749
  %6889 = bitcast i32 %6379 to float
  br label %6996

; <label>:6890                                    ; preds = %6749
  %6891 = bitcast i32 %6379 to float
  br label %6996

; <label>:6892                                    ; preds = %6749
  %6893 = and i32 %6379, 65535
  %6894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6893)  ; LegacyF16ToF32(value)
  %6895 = lshr i32 %6379, 16
  %6896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6895)  ; LegacyF16ToF32(value)
  %6897 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %6900 = fmul fast float %6899, %6894
  %6901 = fmul fast float %6899, %6896
  %6902 = fmul fast float %6899, %6897
  br label %6996

; <label>:6903                                    ; preds = %6749
  %6904 = and i32 %6379, 65535
  %6905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6904)  ; LegacyF16ToF32(value)
  %6906 = lshr i32 %6379, 16
  %6907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6906)  ; LegacyF16ToF32(value)
  %6908 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6909, 0
  %6911 = fmul fast float %6910, %6905
  %6912 = fmul fast float %6910, %6907
  %6913 = fmul fast float %6910, %6908
  br label %6996

; <label>:6914                                    ; preds = %6749
  %6915 = and i32 %6379, 1023
  %6916 = uitofp i32 %6915 to float
  %6917 = lshr i32 %6379, 10
  %6918 = and i32 %6917, 1023
  %6919 = uitofp i32 %6918 to float
  %6920 = lshr i32 %6379, 20
  %6921 = and i32 %6920, 1023
  %6922 = uitofp i32 %6921 to float
  %6923 = fmul fast float %6916, 0x3F50040100000000
  %6924 = fmul fast float %6919, 0x3F50040100000000
  %6925 = fmul fast float %6922, 0x3F50040100000000
  br label %6996

; <label>:6926                                    ; preds = %6749
  %6927 = and i32 %6379, 1023
  %6928 = uitofp i32 %6927 to float
  %6929 = lshr i32 %6379, 10
  %6930 = and i32 %6929, 1023
  %6931 = uitofp i32 %6930 to float
  %6932 = lshr i32 %6379, 20
  %6933 = and i32 %6932, 1023
  %6934 = uitofp i32 %6933 to float
  %6935 = fmul fast float %6928, 0x3F60040100000000
  %6936 = fmul fast float %6931, 0x3F60040100000000
  %6937 = fmul fast float %6934, 0x3F60040100000000
  %6938 = fadd fast float %6935, -1.000000e+00
  %6939 = fadd fast float %6936, -1.000000e+00
  %6940 = fadd fast float %6937, -1.000000e+00
  %6941 = call float @dx.op.binary.f32(i32 35, float %6939, float %6940)  ; FMax(a,b)
  %6942 = call float @dx.op.binary.f32(i32 35, float %6938, float %6941)  ; FMax(a,b)
  %6943 = fmul fast float %6942, 2.000000e+00
  %6944 = call float @dx.op.unary.f32(i32 7, float %6943)  ; Saturate(value)
  %6945 = fmul fast float %6928, 0x3F94050140000000
  %6946 = fadd fast float %6945, -1.000000e+01
  %6947 = fmul fast float %6931, 0x3F94050140000000
  %6948 = fadd fast float %6947, -1.000000e+01
  %6949 = fmul fast float %6934, 0x3F94050140000000
  %6950 = fadd fast float %6949, -1.000000e+01
  %6951 = fsub fast float %6946, %6750
  %6952 = fsub fast float %6948, %6751
  %6953 = fsub fast float %6950, %6752
  %6954 = fmul fast float %6944, %6951
  %6955 = fmul fast float %6944, %6952
  %6956 = fmul fast float %6944, %6953
  %6957 = fadd fast float %6954, %6750
  %6958 = fadd fast float %6955, %6751
  %6959 = fadd fast float %6956, %6752
  br label %6996

; <label>:6960                                    ; preds = %6749
  %6961 = and i32 %6379, 1023
  %6962 = uitofp i32 %6961 to float
  %6963 = lshr i32 %6379, 10
  %6964 = and i32 %6963, 1023
  %6965 = uitofp i32 %6964 to float
  %6966 = lshr i32 %6379, 20
  %6967 = and i32 %6966, 1023
  %6968 = uitofp i32 %6967 to float
  %6969 = fmul fast float %6962, 0x3F60040100000000
  %6970 = fmul fast float %6965, 0x3F60040100000000
  %6971 = fmul fast float %6968, 0x3F60040100000000
  %6972 = fadd fast float %6969, -1.000000e+00
  %6973 = fadd fast float %6970, -1.000000e+00
  %6974 = fadd fast float %6971, -1.000000e+00
  br label %6996

; <label>:6975                                    ; preds = %6749
  %6976 = and i32 %6379, 1023
  %6977 = uitofp i32 %6976 to float
  %6978 = lshr i32 %6379, 10
  %6979 = and i32 %6978, 1023
  %6980 = uitofp i32 %6979 to float
  %6981 = lshr i32 %6379, 20
  %6982 = and i32 %6981, 1023
  %6983 = uitofp i32 %6982 to float
  %6984 = fmul fast float %6977, 0x3F60040100000000
  %6985 = fmul fast float %6980, 0x3F60040100000000
  %6986 = fmul fast float %6983, 0x3F60040100000000
  %6987 = fadd fast float %6984, -1.000000e+00
  %6988 = fadd fast float %6985, -1.000000e+00
  %6989 = fadd fast float %6986, -1.000000e+00
  br label %6996

; <label>:6990                                    ; preds = %6749
  %6991 = bitcast i32 %6379 to float
  br label %6996

; <label>:6992                                    ; preds = %6749
  %6993 = bitcast i32 %6379 to float
  br label %6996

; <label>:6994                                    ; preds = %6749
  %6995 = bitcast i32 %6379 to float
  br label %6996

; <label>:6996                                    ; preds = %6994, %6992, %6990, %6975, %6960, %6926, %6914, %6903, %6892, %6890, %6888, %6886, %6884, %6879, %6864, %6852, %6831, %6810, %6808, %6802, %6796, %6790, %6784, %6778, %6772, %6766, %6760, %6749
  %6997 = phi float [ %6750, %6749 ], [ %6995, %6994 ], [ %6993, %6992 ], [ %6991, %6990 ], [ %6987, %6975 ], [ %6972, %6960 ], [ %6957, %6926 ], [ %6923, %6914 ], [ %6911, %6903 ], [ %6900, %6892 ], [ %6891, %6890 ], [ %6889, %6888 ], [ %6887, %6886 ], [ %6885, %6884 ], [ %6876, %6864 ], [ %6855, %6852 ], [ %6843, %6831 ], [ %6826, %6810 ], [ %6809, %6808 ], [ %6805, %6802 ], [ %6799, %6796 ], [ %6793, %6790 ], [ %6787, %6784 ], [ %6781, %6778 ], [ %6775, %6772 ], [ %6769, %6766 ], [ %6763, %6760 ], [ %6881, %6879 ]
  %6998 = phi float [ %6751, %6749 ], [ %6995, %6994 ], [ %6993, %6992 ], [ %6991, %6990 ], [ %6988, %6975 ], [ %6973, %6960 ], [ %6958, %6926 ], [ %6924, %6914 ], [ %6912, %6903 ], [ %6901, %6892 ], [ %6891, %6890 ], [ %6889, %6888 ], [ %6887, %6886 ], [ %6885, %6884 ], [ %6877, %6864 ], [ %6859, %6852 ], [ %6850, %6831 ], [ %6828, %6810 ], [ %6809, %6808 ], [ %6806, %6802 ], [ %6800, %6796 ], [ %6794, %6790 ], [ %6788, %6784 ], [ %6782, %6778 ], [ %6776, %6772 ], [ %6770, %6766 ], [ %6764, %6760 ], [ %6882, %6879 ]
  %6999 = phi float [ %6752, %6749 ], [ %6995, %6994 ], [ %6993, %6992 ], [ %6991, %6990 ], [ %6989, %6975 ], [ %6974, %6960 ], [ %6959, %6926 ], [ %6925, %6914 ], [ %6913, %6903 ], [ %6902, %6892 ], [ %6891, %6890 ], [ %6889, %6888 ], [ %6887, %6886 ], [ %6885, %6884 ], [ %6878, %6864 ], [ %6863, %6852 ], [ %6851, %6831 ], [ %6830, %6810 ], [ %6809, %6808 ], [ %6807, %6802 ], [ %6801, %6796 ], [ %6795, %6790 ], [ %6789, %6784 ], [ %6783, %6778 ], [ %6777, %6772 ], [ %6771, %6766 ], [ %6765, %6760 ], [ %6883, %6879 ]
  %7000 = extractvalue %dx.types.CBufRet.f32 %6753, 3
  %7001 = fsub fast float %6997, %6750
  %7002 = fsub fast float %6998, %6751
  %7003 = fsub fast float %6999, %6752
  %7004 = fmul fast float %7000, %7001
  %7005 = fmul fast float %7000, %7002
  %7006 = fmul fast float %7000, %7003
  %7007 = fadd fast float %7004, %6750
  %7008 = fadd fast float %7005, %6751
  %7009 = fadd fast float %7006, %6752
  %7010 = lshr i32 %6755, 16
  %7011 = and i32 %7010, 255
  %7012 = uitofp i32 %7011 to float
  %7013 = fptoui float %7012 to i32
  switch i32 %7013, label %7060 [
    i32 16, label %7045
    i32 12, label %7044
    i32 3, label %7014
    i32 4, label %7015
    i32 15, label %7016
    i32 5, label %7025
    i32 6, label %7034
    i32 7, label %7043
    i32 11, label %7044
  ]

; <label>:7014                                    ; preds = %6996
  br label %7060

; <label>:7015                                    ; preds = %6996
  br label %7060

; <label>:7016                                    ; preds = %6996
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7019 = fadd fast float %7018, %7007
  %7020 = fadd fast float %7018, %7008
  %7021 = fadd fast float %7018, %7009
  %7022 = call float @dx.op.unary.f32(i32 7, float %7019)  ; Saturate(value)
  %7023 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7024 = call float @dx.op.unary.f32(i32 7, float %7021)  ; Saturate(value)
  br label %7060

; <label>:7025                                    ; preds = %6996
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = bitcast float %7027 to i32
  %7029 = and i32 %7028, 2130706432
  %7030 = icmp eq i32 %7029, 0
  %7031 = select i1 %7030, float 0.000000e+00, float %7007
  %7032 = select i1 %7030, float 0.000000e+00, float %7008
  %7033 = select i1 %7030, float 0.000000e+00, float %7009
  br label %7060

; <label>:7034                                    ; preds = %6996
  %7035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7036 = extractvalue %dx.types.CBufRet.f32 %7035, 0
  %7037 = bitcast float %7036 to i32
  %7038 = and i32 %7037, 2130706432
  %7039 = icmp eq i32 %7038, 0
  %7040 = select i1 %7039, float 0.000000e+00, float %7007
  %7041 = select i1 %7039, float 0.000000e+00, float %7008
  %7042 = select i1 %7039, float 0.000000e+00, float %7009
  br label %7060

; <label>:7043                                    ; preds = %6996
  br label %7060

; <label>:7044                                    ; preds = %6996, %6996
  br label %7060

; <label>:7045                                    ; preds = %6996
  %7046 = and i32 %6379, 1023
  %7047 = uitofp i32 %7046 to float
  %7048 = lshr i32 %6379, 10
  %7049 = and i32 %7048, 1023
  %7050 = uitofp i32 %7049 to float
  %7051 = lshr i32 %6379, 20
  %7052 = and i32 %7051, 1023
  %7053 = uitofp i32 %7052 to float
  %7054 = fmul fast float %7047, 0x3F60040100000000
  %7055 = fmul fast float %7050, 0x3F60040100000000
  %7056 = fmul fast float %7053, 0x3F60040100000000
  %7057 = fadd fast float %7054, -1.000000e+00
  %7058 = fadd fast float %7055, -1.000000e+00
  %7059 = fadd fast float %7056, -1.000000e+00
  br label %7060

; <label>:7060                                    ; preds = %7045, %7044, %7043, %7034, %7025, %7016, %7015, %7014, %6996
  %7061 = phi float [ 0.000000e+00, %7043 ], [ %7022, %7016 ], [ 0.000000e+00, %7015 ], [ %51, %7044 ], [ %7057, %7045 ], [ 0.000000e+00, %7014 ], [ %7031, %7025 ], [ %7040, %7034 ], [ %7007, %6996 ]
  %7062 = phi float [ 0.000000e+00, %7043 ], [ %7023, %7016 ], [ 0.000000e+00, %7015 ], [ %52, %7044 ], [ %7058, %7045 ], [ 0.000000e+00, %7014 ], [ %7032, %7025 ], [ %7041, %7034 ], [ %7008, %6996 ]
  %7063 = phi float [ 0.000000e+00, %7043 ], [ %7024, %7016 ], [ 1.000000e+00, %7015 ], [ %53, %7044 ], [ %7059, %7045 ], [ 0.000000e+00, %7014 ], [ %7033, %7025 ], [ %7042, %7034 ], [ %7009, %6996 ]
  %7064 = fsub fast float %7061, %7007
  %7065 = fsub fast float %7062, %7008
  %7066 = fsub fast float %7063, %7009
  %7067 = fmul fast float %7000, %7064
  %7068 = fmul fast float %7000, %7065
  %7069 = fmul fast float %7000, %7066
  %7070 = fadd fast float %7067, %7007
  %7071 = fadd fast float %7068, %7008
  %7072 = fadd fast float %7069, %7009
  %7073 = and i32 %6056, 255
  %7074 = uitofp i32 %7073 to float
  %7075 = fptoui float %7074 to i32
  %7076 = lshr i32 %6056, 8
  %7077 = and i32 %7076, 255
  %7078 = uitofp i32 %7077 to float
  %7079 = fptoui float %7078 to i32
  %7080 = lshr i32 %6056, 16
  %7081 = and i32 %7080, 255
  %7082 = uitofp i32 %7081 to float
  %7083 = fptoui float %7082 to i32
  %7084 = lshr i32 %6056, 24
  %7085 = uitofp i32 %7084 to float
  %7086 = fptoui float %7085 to i32
  %7087 = and i32 %6055, 255
  %7088 = uitofp i32 %7087 to float
  %7089 = fptoui float %7088 to i32
  %7090 = lshr i32 %6055, 16
  %7091 = and i32 %7090, 255
  %7092 = uitofp i32 %7091 to float
  %7093 = fptoui float %7092 to i32
  %7094 = lshr i32 %6755, 24
  %7095 = uitofp i32 %7094 to float
  %7096 = fptoui float %7095 to i32
  switch i32 %7096, label %7335 [
    i32 1, label %7097
    i32 2, label %7124
    i32 3, label %7149
    i32 4, label %7172
    i32 5, label %7195
    i32 6, label %7218
    i32 7, label %7242
    i32 8, label %7265
    i32 9, label %7288
    i32 12, label %7310
    i32 13, label %7311
    i32 14, label %7334
  ]

; <label>:7097                                    ; preds = %7060
  %7098 = add i32 %7075, %7089
  %7099 = add i32 %7098, %7086
  %7100 = add i32 %7099, %7079
  %7101 = add i32 %7100, %7083
  %7102 = uitofp i32 %7101 to float
  %7103 = fadd fast float %7102, -4.000000e+00
  %7104 = fmul fast float %7103, 0x3FB5555560000000
  %7105 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  %7106 = icmp eq i32 %7101, 0
  %7107 = select i1 %7106, float 0.000000e+00, float %7105
  %7108 = icmp ult i32 %7101, 2
  %7109 = select i1 %7108, float 0.000000e+00, float %7105
  %7110 = add i32 %7101, -1
  %7111 = icmp ult i32 %7110, 2
  %7112 = select i1 %7111, float 1.000000e+00, float %7107
  %7113 = icmp ult i32 %7101, 4
  %7114 = select i1 %7113, float 0.000000e+00, float 1.000000e+00
  %7115 = and i32 %7101, -2
  %7116 = icmp eq i32 %7115, 2
  %7117 = icmp eq i32 %7101, 4
  %7118 = select i1 %7117, float 1.000000e+00, float %7114
  %7119 = or i1 %7117, %7116
  %7120 = select i1 %7119, float 1.000000e+00, float %7109
  %7121 = add i32 %7101, -3
  %7122 = icmp ult i32 %7121, 2
  %7123 = select i1 %7122, float 0.000000e+00, float %7112
  br label %7335

; <label>:7124                                    ; preds = %7060
  %7125 = add i32 %7079, %7075
  %7126 = add i32 %7125, %7083
  %7127 = uitofp i32 %7126 to float
  %7128 = fadd fast float %7127, -4.000000e+00
  %7129 = fmul fast float %7128, 0x3FB5555560000000
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = icmp eq i32 %7126, 0
  %7132 = select i1 %7131, float 0.000000e+00, float %7130
  %7133 = icmp ult i32 %7126, 2
  %7134 = select i1 %7133, float 0.000000e+00, float %7130
  %7135 = add i32 %7126, -1
  %7136 = icmp ult i32 %7135, 2
  %7137 = select i1 %7136, float 1.000000e+00, float %7132
  %7138 = icmp ult i32 %7126, 4
  %7139 = select i1 %7138, float 0.000000e+00, float 1.000000e+00
  %7140 = and i32 %7126, -2
  %7141 = icmp eq i32 %7140, 2
  %7142 = icmp eq i32 %7126, 4
  %7143 = select i1 %7142, float 1.000000e+00, float %7139
  %7144 = or i1 %7142, %7141
  %7145 = select i1 %7144, float 1.000000e+00, float %7134
  %7146 = add i32 %7126, -3
  %7147 = icmp ult i32 %7146, 2
  %7148 = select i1 %7147, float 0.000000e+00, float %7137
  br label %7335

; <label>:7149                                    ; preds = %7060
  %7150 = uitofp i32 %7075 to float
  %7151 = fadd fast float %7150, -4.000000e+00
  %7152 = fmul fast float %7151, 0x3FB5555560000000
  %7153 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7154 = icmp eq i32 %7075, 0
  %7155 = select i1 %7154, float 0.000000e+00, float %7153
  %7156 = icmp ult i32 %7075, 2
  %7157 = select i1 %7156, float 0.000000e+00, float %7153
  %7158 = add i32 %7075, -1
  %7159 = icmp ult i32 %7158, 2
  %7160 = select i1 %7159, float 1.000000e+00, float %7155
  %7161 = icmp ult i32 %7075, 4
  %7162 = select i1 %7161, float 0.000000e+00, float 1.000000e+00
  %7163 = and i32 %7075, -2
  %7164 = icmp eq i32 %7163, 2
  %7165 = icmp eq i32 %7075, 4
  %7166 = select i1 %7165, float 1.000000e+00, float %7162
  %7167 = or i1 %7165, %7164
  %7168 = select i1 %7167, float 1.000000e+00, float %7157
  %7169 = add i32 %7075, -3
  %7170 = icmp ult i32 %7169, 2
  %7171 = select i1 %7170, float 0.000000e+00, float %7160
  br label %7335

; <label>:7172                                    ; preds = %7060
  %7173 = uitofp i32 %7079 to float
  %7174 = fadd fast float %7173, -4.000000e+00
  %7175 = fmul fast float %7174, 0x3FB5555560000000
  %7176 = call float @dx.op.unary.f32(i32 7, float %7175)  ; Saturate(value)
  %7177 = icmp eq i32 %7079, 0
  %7178 = select i1 %7177, float 0.000000e+00, float %7176
  %7179 = icmp ult i32 %7079, 2
  %7180 = select i1 %7179, float 0.000000e+00, float %7176
  %7181 = add i32 %7079, -1
  %7182 = icmp ult i32 %7181, 2
  %7183 = select i1 %7182, float 1.000000e+00, float %7178
  %7184 = icmp ult i32 %7079, 4
  %7185 = select i1 %7184, float 0.000000e+00, float 1.000000e+00
  %7186 = and i32 %7079, -2
  %7187 = icmp eq i32 %7186, 2
  %7188 = icmp eq i32 %7079, 4
  %7189 = select i1 %7188, float 1.000000e+00, float %7185
  %7190 = or i1 %7188, %7187
  %7191 = select i1 %7190, float 1.000000e+00, float %7180
  %7192 = add i32 %7079, -3
  %7193 = icmp ult i32 %7192, 2
  %7194 = select i1 %7193, float 0.000000e+00, float %7183
  br label %7335

; <label>:7195                                    ; preds = %7060
  %7196 = uitofp i32 %7083 to float
  %7197 = fadd fast float %7196, -4.000000e+00
  %7198 = fmul fast float %7197, 0x3FB5555560000000
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = icmp eq i32 %7083, 0
  %7201 = select i1 %7200, float 0.000000e+00, float %7199
  %7202 = icmp ult i32 %7083, 2
  %7203 = select i1 %7202, float 0.000000e+00, float %7199
  %7204 = add i32 %7083, -1
  %7205 = icmp ult i32 %7204, 2
  %7206 = select i1 %7205, float 1.000000e+00, float %7201
  %7207 = icmp ult i32 %7083, 4
  %7208 = select i1 %7207, float 0.000000e+00, float 1.000000e+00
  %7209 = and i32 %7083, -2
  %7210 = icmp eq i32 %7209, 2
  %7211 = icmp eq i32 %7083, 4
  %7212 = select i1 %7211, float 1.000000e+00, float %7208
  %7213 = or i1 %7211, %7210
  %7214 = select i1 %7213, float 1.000000e+00, float %7203
  %7215 = add i32 %7083, -3
  %7216 = icmp ult i32 %7215, 2
  %7217 = select i1 %7216, float 0.000000e+00, float %7206
  br label %7335

; <label>:7218                                    ; preds = %7060
  %7219 = add i32 %7086, %7089
  %7220 = uitofp i32 %7219 to float
  %7221 = fadd fast float %7220, -4.000000e+00
  %7222 = fmul fast float %7221, 0x3FB5555560000000
  %7223 = call float @dx.op.unary.f32(i32 7, float %7222)  ; Saturate(value)
  %7224 = icmp eq i32 %7219, 0
  %7225 = select i1 %7224, float 0.000000e+00, float %7223
  %7226 = icmp ult i32 %7219, 2
  %7227 = select i1 %7226, float 0.000000e+00, float %7223
  %7228 = add i32 %7219, -1
  %7229 = icmp ult i32 %7228, 2
  %7230 = select i1 %7229, float 1.000000e+00, float %7225
  %7231 = icmp ult i32 %7219, 4
  %7232 = select i1 %7231, float 0.000000e+00, float 1.000000e+00
  %7233 = and i32 %7219, -2
  %7234 = icmp eq i32 %7233, 2
  %7235 = icmp eq i32 %7219, 4
  %7236 = select i1 %7235, float 1.000000e+00, float %7232
  %7237 = or i1 %7235, %7234
  %7238 = select i1 %7237, float 1.000000e+00, float %7227
  %7239 = add i32 %7219, -3
  %7240 = icmp ult i32 %7239, 2
  %7241 = select i1 %7240, float 0.000000e+00, float %7230
  br label %7335

; <label>:7242                                    ; preds = %7060
  %7243 = uitofp i32 %7086 to float
  %7244 = fadd fast float %7243, -4.000000e+00
  %7245 = fmul fast float %7244, 0x3FB5555560000000
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = icmp eq i32 %7086, 0
  %7248 = select i1 %7247, float 0.000000e+00, float %7246
  %7249 = icmp ult i32 %7086, 2
  %7250 = select i1 %7249, float 0.000000e+00, float %7246
  %7251 = add i32 %7086, -1
  %7252 = icmp ult i32 %7251, 2
  %7253 = select i1 %7252, float 1.000000e+00, float %7248
  %7254 = icmp ult i32 %7086, 4
  %7255 = select i1 %7254, float 0.000000e+00, float 1.000000e+00
  %7256 = and i32 %7086, -2
  %7257 = icmp eq i32 %7256, 2
  %7258 = icmp eq i32 %7086, 4
  %7259 = select i1 %7258, float 1.000000e+00, float %7255
  %7260 = or i1 %7258, %7257
  %7261 = select i1 %7260, float 1.000000e+00, float %7250
  %7262 = add i32 %7086, -3
  %7263 = icmp ult i32 %7262, 2
  %7264 = select i1 %7263, float 0.000000e+00, float %7253
  br label %7335

; <label>:7265                                    ; preds = %7060
  %7266 = uitofp i32 %7089 to float
  %7267 = fadd fast float %7266, -4.000000e+00
  %7268 = fmul fast float %7267, 0x3FB5555560000000
  %7269 = call float @dx.op.unary.f32(i32 7, float %7268)  ; Saturate(value)
  %7270 = icmp eq i32 %7089, 0
  %7271 = select i1 %7270, float 0.000000e+00, float %7269
  %7272 = icmp ult i32 %7089, 2
  %7273 = select i1 %7272, float 0.000000e+00, float %7269
  %7274 = add i32 %7089, -1
  %7275 = icmp ult i32 %7274, 2
  %7276 = select i1 %7275, float 1.000000e+00, float %7271
  %7277 = icmp ult i32 %7089, 4
  %7278 = select i1 %7277, float 0.000000e+00, float 1.000000e+00
  %7279 = and i32 %7089, -2
  %7280 = icmp eq i32 %7279, 2
  %7281 = icmp eq i32 %7089, 4
  %7282 = select i1 %7281, float 1.000000e+00, float %7278
  %7283 = or i1 %7281, %7280
  %7284 = select i1 %7283, float 1.000000e+00, float %7273
  %7285 = add i32 %7089, -3
  %7286 = icmp ult i32 %7285, 2
  %7287 = select i1 %7286, float 0.000000e+00, float %7276
  br label %7335

; <label>:7288                                    ; preds = %7060
  %7289 = lshr i32 %6055, 8
  %7290 = and i32 %7289, 255
  %7291 = uitofp i32 %7290 to float
  %7292 = fptoui float %7291 to i32
  %7293 = uitofp i32 %7292 to float
  %7294 = fcmp fast oge float %7293, 1.000000e+00
  %7295 = fcmp fast oge float %7293, 2.000000e+00
  %7296 = or i1 %7295, %7294
  %7297 = select i1 %7296, float 1.000000e+00, float 0.000000e+00
  %7298 = fcmp fast oge float %7293, 3.000000e+00
  %7299 = or i1 %7298, %7295
  %7300 = fcmp fast oge float %7293, 4.000000e+00
  %7301 = or i1 %7300, %7299
  %7302 = select i1 %7301, float 1.000000e+00, float 0.000000e+00
  %7303 = or i1 %7300, %7298
  %7304 = fcmp fast oge float %7293, 5.000000e+00
  %7305 = or i1 %7304, %7300
  %7306 = select i1 %7305, float 1.000000e+00, float 0.000000e+00
  %7307 = select i1 %7304, float 0.000000e+00, float %7302
  %7308 = or i1 %7304, %7303
  %7309 = select i1 %7308, float 0.000000e+00, float %7297
  br label %7335

; <label>:7310                                    ; preds = %7060
  br label %7335

; <label>:7311                                    ; preds = %7060
  %7312 = uitofp i32 %7093 to float
  %7313 = fadd fast float %7312, -4.000000e+00
  %7314 = fmul fast float %7313, 0x3FB5555560000000
  %7315 = call float @dx.op.unary.f32(i32 7, float %7314)  ; Saturate(value)
  %7316 = icmp eq i32 %7093, 0
  %7317 = select i1 %7316, float 0.000000e+00, float %7315
  %7318 = icmp ult i32 %7093, 2
  %7319 = select i1 %7318, float 0.000000e+00, float %7315
  %7320 = add i32 %7093, -1
  %7321 = icmp ult i32 %7320, 2
  %7322 = select i1 %7321, float 1.000000e+00, float %7317
  %7323 = icmp ult i32 %7093, 4
  %7324 = select i1 %7323, float 0.000000e+00, float 1.000000e+00
  %7325 = and i32 %7093, -2
  %7326 = icmp eq i32 %7325, 2
  %7327 = icmp eq i32 %7093, 4
  %7328 = select i1 %7327, float 1.000000e+00, float %7324
  %7329 = or i1 %7327, %7326
  %7330 = select i1 %7329, float 1.000000e+00, float %7319
  %7331 = add i32 %7093, -3
  %7332 = icmp ult i32 %7331, 2
  %7333 = select i1 %7332, float 0.000000e+00, float %7322
  br label %7335

; <label>:7334                                    ; preds = %7060
  br label %7335

; <label>:7335                                    ; preds = %7334, %7311, %7310, %7288, %7265, %7242, %7218, %7195, %7172, %7149, %7124, %7097, %7060
  %7336 = phi float [ %7070, %7060 ], [ 5.000000e-01, %7334 ], [ %7328, %7311 ], [ 0.000000e+00, %7310 ], [ %7306, %7288 ], [ %7282, %7265 ], [ %7259, %7242 ], [ %7236, %7218 ], [ %7212, %7195 ], [ %7189, %7172 ], [ %7166, %7149 ], [ %7143, %7124 ], [ %7118, %7097 ]
  %7337 = phi float [ %7071, %7060 ], [ 5.000000e-01, %7334 ], [ %7330, %7311 ], [ 0.000000e+00, %7310 ], [ %7307, %7288 ], [ %7284, %7265 ], [ %7261, %7242 ], [ %7238, %7218 ], [ %7214, %7195 ], [ %7191, %7172 ], [ %7168, %7149 ], [ %7145, %7124 ], [ %7120, %7097 ]
  %7338 = phi float [ %7072, %7060 ], [ 5.000000e-01, %7334 ], [ %7333, %7311 ], [ 0.000000e+00, %7310 ], [ %7309, %7288 ], [ %7287, %7265 ], [ %7264, %7242 ], [ %7241, %7218 ], [ %7217, %7195 ], [ %7194, %7172 ], [ %7171, %7149 ], [ %7148, %7124 ], [ %7123, %7097 ]
  %7339 = fsub fast float %7336, %7070
  %7340 = fsub fast float %7337, %7071
  %7341 = fsub fast float %7338, %7072
  %7342 = fmul fast float %7339, %7000
  %7343 = fmul fast float %7340, %7000
  %7344 = fmul fast float %7341, %7000
  %7345 = fadd fast float %7342, %7070
  %7346 = fadd fast float %7343, %7071
  %7347 = fadd fast float %7344, %7072
  %7348 = and i32 %6755, 255
  %7349 = uitofp i32 %7348 to float
  %7350 = fptoui float %7349 to i32
  %7351 = icmp ult i32 %7350, 25
  br i1 %7351, label %7352, label %7357

; <label>:7352                                    ; preds = %7335
  %7353 = trunc i32 %7350 to i25
  %7354 = lshr i25 1048574, %7353
  %7355 = and i25 %7354, 1
  %7356 = icmp ne i25 %7355, 0
  br label %7357

; <label>:7357                                    ; preds = %7352, %7335
  %7358 = phi i1 [ %7356, %7352 ], [ true, %7335 ]
  %7359 = or i32 %7013, %6759
  %7360 = or i32 %7359, %7096
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 3
  %7363 = bitcast float %7362 to i32
  %7364 = and i32 %7363, 255
  %7365 = uitofp i32 %7364 to float
  %7366 = fptoui float %7365 to i32
  %7367 = or i32 %7360, %7366
  %7368 = icmp ne i32 %7367, 0
  %7369 = or i1 %7358, %7368
  %7370 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7371 = bitcast float %7370 to i32
  %7372 = icmp slt i32 %7371, 0
  %7373 = or i1 %7372, %7369
  br i1 %7373, label %7374, label %7392

; <label>:7374                                    ; preds = %7357
  %7375 = icmp eq i32 %7096, 14
  br i1 %7375, label %7392, label %7376

; <label>:7376                                    ; preds = %7374
  %7377 = fsub fast float 1.000000e+00, %6386
  %7378 = fsub fast float 1.000000e+00, %6387
  %7379 = fsub fast float 1.000000e+00, %6388
  %7380 = fmul fast float %7000, %7377
  %7381 = fmul fast float %7000, %7378
  %7382 = fmul fast float %7000, %7379
  %7383 = fadd fast float %7380, %6386
  %7384 = fadd fast float %7381, %6387
  %7385 = fadd fast float %7382, %6388
  %7386 = fmul fast float %7000, %6432
  %7387 = fmul fast float %7000, %6433
  %7388 = fmul fast float %7000, %6434
  %7389 = fsub fast float %6432, %7386
  %7390 = fsub fast float %6433, %7387
  %7391 = fsub fast float %6434, %7388
  br label %7392

; <label>:7392                                    ; preds = %7376, %7374, %7357
  %7393 = phi float [ %7389, %7376 ], [ %6432, %7357 ], [ 0.000000e+00, %7374 ]
  %7394 = phi float [ %7390, %7376 ], [ %6433, %7357 ], [ 0.000000e+00, %7374 ]
  %7395 = phi float [ %7391, %7376 ], [ %6434, %7357 ], [ 0.000000e+00, %7374 ]
  %7396 = phi float [ %7383, %7376 ], [ %6386, %7357 ], [ 1.000000e+00, %7374 ]
  %7397 = phi float [ %7384, %7376 ], [ %6387, %7357 ], [ 1.000000e+00, %7374 ]
  %7398 = phi float [ %7385, %7376 ], [ %6388, %7357 ], [ 1.000000e+00, %7374 ]
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 2
  %7401 = extractvalue %dx.types.CBufRet.f32 %7399, 3
  %7402 = fmul fast float %7400, %72
  %7403 = fmul fast float %7401, %73
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 0
  %7406 = fcmp fast oge float %7402, %7405
  %7407 = extractvalue %dx.types.CBufRet.f32 %7404, 2
  %7408 = fcmp fast ole float %7402, %7407
  %7409 = and i1 %7406, %7408
  %7410 = extractvalue %dx.types.CBufRet.f32 %7404, 1
  %7411 = fcmp fast oge float %7403, %7410
  %7412 = and i1 %7409, %7411
  %7413 = extractvalue %dx.types.CBufRet.f32 %7404, 3
  %7414 = fcmp fast ole float %7403, %7413
  %7415 = and i1 %7412, %7414
  %7416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.i32 %7416, 0
  %7418 = icmp ne i32 %7417, 0
  %7419 = icmp ne i32 %7417, 35
  %7420 = and i1 %7418, %7419
  %7421 = and i1 %7415, %7420
  br i1 %7421, label %7422, label %7435

; <label>:7422                                    ; preds = %7392
  %7423 = call float @dx.op.binary.f32(i32 36, float %7345, float 3.225500e+04)  ; FMin(a,b)
  %7424 = call float @dx.op.binary.f32(i32 36, float %7346, float 3.225500e+04)  ; FMin(a,b)
  %7425 = call float @dx.op.binary.f32(i32 36, float %7347, float 3.225500e+04)  ; FMin(a,b)
  %7426 = fmul fast float %7423, %7396
  %7427 = fmul fast float %7424, %7397
  %7428 = fmul fast float %7425, %7398
  %7429 = call float @dx.op.binary.f32(i32 36, float %7393, float 3.225500e+04)  ; FMin(a,b)
  %7430 = call float @dx.op.binary.f32(i32 36, float %7394, float 3.225500e+04)  ; FMin(a,b)
  %7431 = call float @dx.op.binary.f32(i32 36, float %7395, float 3.225500e+04)  ; FMin(a,b)
  %7432 = fadd fast float %7429, %7426
  %7433 = fadd fast float %7430, %7427
  %7434 = fadd fast float %7431, %7428
  br label %7435

; <label>:7435                                    ; preds = %7422, %7392
  %7436 = phi float [ %7432, %7422 ], [ %7345, %7392 ]
  %7437 = phi float [ %7433, %7422 ], [ %7346, %7392 ]
  %7438 = phi float [ %7434, %7422 ], [ %7347, %7392 ]
  %7439 = and i1 %7415, %7418
  br i1 %7439, label %7440, label %8419

; <label>:7440                                    ; preds = %7435
  %7441 = icmp eq i32 %7417, 1
  br i1 %7441, label %7442, label %7481

; <label>:7442                                    ; preds = %7440
  %7443 = uitofp i32 %160 to float
  %7444 = fmul fast float %7443, 0x3FE3C6EF40000000
  %7445 = call float @dx.op.unary.f32(i32 22, float %7444)  ; Frc(value)
  %7446 = fadd fast float %7445, 0x3FE5555560000000
  %7447 = fadd fast float %7445, 0x3FD5555560000000
  %7448 = fsub fast float -0.000000e+00, %7445
  %7449 = fsub fast float -0.000000e+00, %7446
  %7450 = fsub fast float -0.000000e+00, %7447
  %7451 = fcmp fast oge float %7445, %7448
  %7452 = fcmp fast oge float %7446, %7449
  %7453 = fcmp fast oge float %7447, %7450
  %7454 = call float @dx.op.unary.f32(i32 6, float %7445)  ; FAbs(value)
  %7455 = call float @dx.op.unary.f32(i32 6, float %7446)  ; FAbs(value)
  %7456 = call float @dx.op.unary.f32(i32 6, float %7447)  ; FAbs(value)
  %7457 = call float @dx.op.unary.f32(i32 22, float %7454)  ; Frc(value)
  %7458 = call float @dx.op.unary.f32(i32 22, float %7455)  ; Frc(value)
  %7459 = call float @dx.op.unary.f32(i32 22, float %7456)  ; Frc(value)
  %7460 = fsub fast float -0.000000e+00, %7457
  %7461 = fsub fast float -0.000000e+00, %7458
  %7462 = fsub fast float -0.000000e+00, %7459
  %7463 = select i1 %7451, float %7457, float %7460
  %7464 = select i1 %7452, float %7458, float %7461
  %7465 = select i1 %7453, float %7459, float %7462
  %7466 = fmul fast float %7463, 6.000000e+00
  %7467 = fmul fast float %7464, 6.000000e+00
  %7468 = fmul fast float %7465, 6.000000e+00
  %7469 = fadd fast float %7466, -3.000000e+00
  %7470 = fadd fast float %7467, -3.000000e+00
  %7471 = fadd fast float %7468, -3.000000e+00
  %7472 = call float @dx.op.unary.f32(i32 6, float %7469)  ; FAbs(value)
  %7473 = call float @dx.op.unary.f32(i32 6, float %7470)  ; FAbs(value)
  %7474 = call float @dx.op.unary.f32(i32 6, float %7471)  ; FAbs(value)
  %7475 = fadd fast float %7472, -1.000000e+00
  %7476 = fadd fast float %7473, -1.000000e+00
  %7477 = fadd fast float %7474, -1.000000e+00
  %7478 = call float @dx.op.unary.f32(i32 7, float %7475)  ; Saturate(value)
  %7479 = call float @dx.op.unary.f32(i32 7, float %7476)  ; Saturate(value)
  %7480 = call float @dx.op.unary.f32(i32 7, float %7477)  ; Saturate(value)
  br label %8419

; <label>:7481                                    ; preds = %7440
  %7482 = icmp eq i32 %7417, 2
  br i1 %7482, label %7483, label %7487

; <label>:7483                                    ; preds = %7481
  %7484 = fmul fast float %7436, %54
  %7485 = fmul fast float %7437, %55
  %7486 = fmul fast float %7438, %56
  br label %8419

; <label>:7487                                    ; preds = %7481
  %7488 = icmp eq i32 %7417, 3
  %7489 = icmp eq i32 %7417, 26
  %7490 = or i1 %7488, %7489
  br i1 %7490, label %7491, label %7591

; <label>:7491                                    ; preds = %7487
  br i1 %7488, label %7492, label %7503

; <label>:7492                                    ; preds = %7491
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7495 = fsub fast float %140, %7494
  %7496 = fmul fast float %7495, 0x3FD5555560000000
  %7497 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  %7498 = fmul fast float %7497, 6.300000e+01
  %7499 = fptoui float %7498 to i32
  %7500 = uitofp i32 %7499 to float
  %7501 = fmul fast float %7500, 0x3FA8618620000000
  %7502 = fadd fast float %7501, %7494
  br label %7503

; <label>:7503                                    ; preds = %7492, %7491
  %7504 = phi float [ %7502, %7492 ], [ %54, %7491 ]
  %7505 = call float @dx.op.unary.f32(i32 27, float %7504)  ; Round_ni(value)
  %7506 = fadd fast float %7505, 1.000000e+00
  %7507 = call float @dx.op.unary.f32(i32 22, float %7504)  ; Frc(value)
  %7508 = fmul fast float %7505, 0x3FE3C6EF40000000
  %7509 = call float @dx.op.unary.f32(i32 22, float %7508)  ; Frc(value)
  %7510 = fadd fast float %7509, 0x3FE5555560000000
  %7511 = fadd fast float %7509, 0x3FD5555560000000
  %7512 = fsub fast float -0.000000e+00, %7509
  %7513 = fsub fast float -0.000000e+00, %7510
  %7514 = fsub fast float -0.000000e+00, %7511
  %7515 = fcmp fast oge float %7509, %7512
  %7516 = fcmp fast oge float %7510, %7513
  %7517 = fcmp fast oge float %7511, %7514
  %7518 = call float @dx.op.unary.f32(i32 6, float %7509)  ; FAbs(value)
  %7519 = call float @dx.op.unary.f32(i32 6, float %7510)  ; FAbs(value)
  %7520 = call float @dx.op.unary.f32(i32 6, float %7511)  ; FAbs(value)
  %7521 = call float @dx.op.unary.f32(i32 22, float %7518)  ; Frc(value)
  %7522 = call float @dx.op.unary.f32(i32 22, float %7519)  ; Frc(value)
  %7523 = call float @dx.op.unary.f32(i32 22, float %7520)  ; Frc(value)
  %7524 = fsub fast float -0.000000e+00, %7521
  %7525 = fsub fast float -0.000000e+00, %7522
  %7526 = fsub fast float -0.000000e+00, %7523
  %7527 = select i1 %7515, float %7521, float %7524
  %7528 = select i1 %7516, float %7522, float %7525
  %7529 = select i1 %7517, float %7523, float %7526
  %7530 = fmul fast float %7527, 6.000000e+00
  %7531 = fmul fast float %7528, 6.000000e+00
  %7532 = fmul fast float %7529, 6.000000e+00
  %7533 = fadd fast float %7530, -3.000000e+00
  %7534 = fadd fast float %7531, -3.000000e+00
  %7535 = fadd fast float %7532, -3.000000e+00
  %7536 = call float @dx.op.unary.f32(i32 6, float %7533)  ; FAbs(value)
  %7537 = call float @dx.op.unary.f32(i32 6, float %7534)  ; FAbs(value)
  %7538 = call float @dx.op.unary.f32(i32 6, float %7535)  ; FAbs(value)
  %7539 = fadd fast float %7536, -1.000000e+00
  %7540 = fadd fast float %7537, -1.000000e+00
  %7541 = fadd fast float %7538, -1.000000e+00
  %7542 = call float @dx.op.unary.f32(i32 7, float %7539)  ; Saturate(value)
  %7543 = call float @dx.op.unary.f32(i32 7, float %7540)  ; Saturate(value)
  %7544 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  %7545 = fmul fast float %7506, 0x3FE3C6EF40000000
  %7546 = call float @dx.op.unary.f32(i32 22, float %7545)  ; Frc(value)
  %7547 = fadd fast float %7546, 0x3FE5555560000000
  %7548 = fadd fast float %7546, 0x3FD5555560000000
  %7549 = fsub fast float -0.000000e+00, %7546
  %7550 = fsub fast float -0.000000e+00, %7547
  %7551 = fsub fast float -0.000000e+00, %7548
  %7552 = fcmp fast oge float %7546, %7549
  %7553 = fcmp fast oge float %7547, %7550
  %7554 = fcmp fast oge float %7548, %7551
  %7555 = call float @dx.op.unary.f32(i32 6, float %7546)  ; FAbs(value)
  %7556 = call float @dx.op.unary.f32(i32 6, float %7547)  ; FAbs(value)
  %7557 = call float @dx.op.unary.f32(i32 6, float %7548)  ; FAbs(value)
  %7558 = call float @dx.op.unary.f32(i32 22, float %7555)  ; Frc(value)
  %7559 = call float @dx.op.unary.f32(i32 22, float %7556)  ; Frc(value)
  %7560 = call float @dx.op.unary.f32(i32 22, float %7557)  ; Frc(value)
  %7561 = fsub fast float -0.000000e+00, %7558
  %7562 = fsub fast float -0.000000e+00, %7559
  %7563 = fsub fast float -0.000000e+00, %7560
  %7564 = select i1 %7552, float %7558, float %7561
  %7565 = select i1 %7553, float %7559, float %7562
  %7566 = select i1 %7554, float %7560, float %7563
  %7567 = fmul fast float %7564, 6.000000e+00
  %7568 = fmul fast float %7565, 6.000000e+00
  %7569 = fmul fast float %7566, 6.000000e+00
  %7570 = fadd fast float %7567, -3.000000e+00
  %7571 = fadd fast float %7568, -3.000000e+00
  %7572 = fadd fast float %7569, -3.000000e+00
  %7573 = call float @dx.op.unary.f32(i32 6, float %7570)  ; FAbs(value)
  %7574 = call float @dx.op.unary.f32(i32 6, float %7571)  ; FAbs(value)
  %7575 = call float @dx.op.unary.f32(i32 6, float %7572)  ; FAbs(value)
  %7576 = fadd fast float %7573, -1.000000e+00
  %7577 = fadd fast float %7574, -1.000000e+00
  %7578 = fadd fast float %7575, -1.000000e+00
  %7579 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7580 = call float @dx.op.unary.f32(i32 7, float %7577)  ; Saturate(value)
  %7581 = call float @dx.op.unary.f32(i32 7, float %7578)  ; Saturate(value)
  %7582 = fsub fast float %7579, %7542
  %7583 = fsub fast float %7580, %7543
  %7584 = fsub fast float %7581, %7544
  %7585 = fmul fast float %7582, %7507
  %7586 = fmul fast float %7583, %7507
  %7587 = fmul fast float %7584, %7507
  %7588 = fadd fast float %7585, %7542
  %7589 = fadd fast float %7586, %7543
  %7590 = fadd fast float %7587, %7544
  br label %8419

; <label>:7591                                    ; preds = %7487
  %7592 = and i32 %7417, -2
  %7593 = icmp eq i32 %7592, 4
  br i1 %7593, label %7594, label %7603

; <label>:7594                                    ; preds = %7591
  %7595 = uitofp i32 %160 to float
  %7596 = fmul fast float %7595, 0x3FE3C6EF40000000
  %7597 = call float @dx.op.unary.f32(i32 22, float %7596)  ; Frc(value)
  %7598 = fmul fast float %7597, 5.000000e-01
  %7599 = fadd fast float %7598, 5.000000e-01
  %7600 = fmul fast float %7599, %54
  %7601 = fmul fast float %7599, %55
  %7602 = fmul fast float %7599, %56
  br label %8419

; <label>:7603                                    ; preds = %7591
  %7604 = icmp eq i32 %7417, 6
  br i1 %7604, label %8419, label %7605

; <label>:7605                                    ; preds = %7603
  %7606 = icmp eq i32 %7417, 7
  br i1 %7606, label %8419, label %7607

; <label>:7607                                    ; preds = %7605
  %7608 = icmp eq i32 %7417, 8
  br i1 %7608, label %8419, label %7609

; <label>:7609                                    ; preds = %7607
  %7610 = icmp eq i32 %7417, 9
  br i1 %7610, label %7611, label %7623

; <label>:7611                                    ; preds = %7609
  %7612 = fcmp fast ogt float %309, 0.000000e+00
  %7613 = call float @dx.op.dot2.f32(i32 54, float %304, float %305, float %304, float %305)  ; Dot2(ax,ay,bx,by)
  %7614 = call float @dx.op.unary.f32(i32 25, float %7613)  ; Rsqrt(value)
  %7615 = fmul fast float %304, 5.000000e-01
  %7616 = fmul fast float %7615, %7614
  %7617 = fmul fast float %305, 5.000000e-01
  %7618 = fmul fast float %7617, %7614
  %7619 = fadd fast float %7616, 5.000000e-01
  %7620 = select i1 %7612, float %7619, float 5.000000e-01
  %7621 = fadd fast float %7618, 5.000000e-01
  %7622 = select i1 %7612, float %7621, float 5.000000e-01
  br label %8419

; <label>:7623                                    ; preds = %7609
  %7624 = icmp eq i32 %7417, 10
  br i1 %7624, label %7625, label %7627

; <label>:7625                                    ; preds = %7623
  %7626 = fmul fast float %309, 0x3F747AE140000000
  br label %8419

; <label>:7627                                    ; preds = %7623
  %7628 = icmp eq i32 %7417, 11
  br i1 %7628, label %8419, label %7629

; <label>:7629                                    ; preds = %7627
  %7630 = icmp eq i32 %7417, 12
  br i1 %7630, label %8419, label %7631

; <label>:7631                                    ; preds = %7629
  %7632 = icmp eq i32 %7417, 13
  br i1 %7632, label %8419, label %7633

; <label>:7633                                    ; preds = %7631
  %7634 = icmp eq i32 %7417, 14
  br i1 %7634, label %8419, label %7635

; <label>:7635                                    ; preds = %7633
  %7636 = icmp eq i32 %7417, 15
  br i1 %7636, label %8419, label %7637

; <label>:7637                                    ; preds = %7635
  %7638 = icmp eq i32 %7417, 16
  br i1 %7638, label %8419, label %7639

; <label>:7639                                    ; preds = %7637
  %7640 = icmp eq i32 %7417, 17
  br i1 %7640, label %8419, label %7641

; <label>:7641                                    ; preds = %7639
  %7642 = icmp eq i32 %7417, 18
  br i1 %7642, label %8419, label %7643

; <label>:7643                                    ; preds = %7641
  %7644 = icmp eq i32 %7417, 19
  br i1 %7644, label %8419, label %7645

; <label>:7645                                    ; preds = %7643
  %7646 = icmp eq i32 %7417, 20
  br i1 %7646, label %7647, label %7654

; <label>:7647                                    ; preds = %7645
  %7648 = fmul fast float %1199, 5.000000e-01
  %7649 = fmul fast float %1200, 5.000000e-01
  %7650 = fmul fast float %1201, 5.000000e-01
  %7651 = fadd fast float %7648, 5.000000e-01
  %7652 = fadd fast float %7649, 5.000000e-01
  %7653 = fadd fast float %7650, 5.000000e-01
  br label %8419

; <label>:7654                                    ; preds = %7645
  %7655 = and i32 %7417, -9
  %7656 = icmp eq i32 %7655, 21
  br i1 %7656, label %8419, label %7657

; <label>:7657                                    ; preds = %7654
  %7658 = icmp eq i32 %7417, 22
  %7659 = icmp eq i32 %7417, 38
  %7660 = or i1 %7658, %7659
  br i1 %7660, label %7661, label %7775

; <label>:7661                                    ; preds = %7657
  %7662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7663 = extractvalue %dx.types.CBufRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.CBufRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.CBufRet.f32 %7662, 2
  %7666 = fadd fast float %7663, %116
  %7667 = fadd fast float %7664, %117
  %7668 = fadd fast float %7665, %118
  %7669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7670 = extractvalue %dx.types.CBufRet.f32 %7669, 0
  %7671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7672 = extractvalue %dx.types.CBufRet.f32 %7671, 0
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.CBufRet.f32 %7669, 1
  %7676 = extractvalue %dx.types.CBufRet.f32 %7671, 1
  %7677 = extractvalue %dx.types.CBufRet.f32 %7673, 1
  %7678 = extractvalue %dx.types.CBufRet.f32 %7669, 3
  %7679 = extractvalue %dx.types.CBufRet.f32 %7671, 3
  %7680 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7681 = fadd fast float %7666, %7678
  %7682 = fadd fast float %7667, %7679
  %7683 = fadd fast float %7668, %7680
  %7684 = fmul fast float %7681, %7670
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %7682, float %7672, float %7684)  ; FMad(a,b,c)
  %7686 = call float @dx.op.tertiary.f32(i32 46, float %7683, float %7674, float %7685)  ; FMad(a,b,c)
  %7687 = fmul fast float %7681, %7675
  %7688 = call float @dx.op.tertiary.f32(i32 46, float %7682, float %7676, float %7687)  ; FMad(a,b,c)
  %7689 = call float @dx.op.tertiary.f32(i32 46, float %7683, float %7677, float %7688)  ; FMad(a,b,c)
  %7690 = fsub fast float %7686, %7678
  %7691 = fsub fast float %7689, %7679
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = fsub fast float %7690, %7693
  %7696 = fsub fast float %7691, %7694
  %7697 = fmul fast float %7695, %7695
  %7698 = fmul fast float %7696, %7696
  %7699 = fadd fast float %7697, %7698
  %7700 = call float @dx.op.unary.f32(i32 24, float %7699)  ; Sqrt(value)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7692, 2
  %7702 = fcmp fast olt float %7700, %7701
  br i1 %7702, label %7703, label %8419

; <label>:7703                                    ; preds = %7661
  %7704 = fadd fast float %7695, %7701
  %7705 = fadd fast float %7696, %7701
  %7706 = extractvalue %dx.types.CBufRet.f32 %7692, 3
  %7707 = fmul fast float %7704, %7706
  %7708 = fmul fast float %7705, %7706
  %7709 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7710 = call float @dx.op.unary.f32(i32 7, float %7708)  ; Saturate(value)
  %7711 = fsub fast float 1.000000e+00, %7709
  %7712 = fsub fast float 1.000000e+00, %7710
  %7713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %7711, float %7712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = fcmp fast ugt float %7714, 0.000000e+00
  br i1 %7715, label %7716, label %8419

; <label>:7716                                    ; preds = %7703
  br i1 %7658, label %7717, label %7722

; <label>:7717                                    ; preds = %7716
  %7718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %7711, float %7712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7719 = extractvalue %dx.types.ResRet.f32 %7718, 0
  %7720 = extractvalue %dx.types.ResRet.f32 %7718, 1
  %7721 = extractvalue %dx.types.ResRet.f32 %7718, 2
  br label %8419

; <label>:7722                                    ; preds = %7716
  %7723 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %38, i32 0)  ; GetDimensions(handle,mipLevel)
  %7724 = extractvalue %dx.types.Dimensions %7723, 0
  %7725 = sitofp i32 %7724 to float
  %7726 = extractvalue %dx.types.Dimensions %7723, 1
  %7727 = sitofp i32 %7726 to float
  %7728 = fmul fast float %7725, %7711
  %7729 = fmul fast float %7727, %7712
  %7730 = call float @dx.op.unary.f32(i32 27, float %7728)  ; Round_ni(value)
  %7731 = call float @dx.op.unary.f32(i32 27, float %7729)  ; Round_ni(value)
  %7732 = fptoui float %7725 to i32
  %7733 = uitofp i32 %7732 to float
  %7734 = fmul fast float %7733, %7731
  %7735 = fadd fast float %7734, %7730
  %7736 = fptoui float %7735 to i32
  %7737 = uitofp i32 %7736 to float
  %7738 = fmul fast float %7737, 0x3FE3C6EF40000000
  %7739 = call float @dx.op.unary.f32(i32 22, float %7738)  ; Frc(value)
  %7740 = fadd fast float %7739, 0x3FE5555560000000
  %7741 = fadd fast float %7739, 0x3FD5555560000000
  %7742 = fsub fast float -0.000000e+00, %7739
  %7743 = fsub fast float -0.000000e+00, %7740
  %7744 = fsub fast float -0.000000e+00, %7741
  %7745 = fcmp fast oge float %7739, %7742
  %7746 = fcmp fast oge float %7740, %7743
  %7747 = fcmp fast oge float %7741, %7744
  %7748 = call float @dx.op.unary.f32(i32 6, float %7739)  ; FAbs(value)
  %7749 = call float @dx.op.unary.f32(i32 6, float %7740)  ; FAbs(value)
  %7750 = call float @dx.op.unary.f32(i32 6, float %7741)  ; FAbs(value)
  %7751 = call float @dx.op.unary.f32(i32 22, float %7748)  ; Frc(value)
  %7752 = call float @dx.op.unary.f32(i32 22, float %7749)  ; Frc(value)
  %7753 = call float @dx.op.unary.f32(i32 22, float %7750)  ; Frc(value)
  %7754 = fsub fast float -0.000000e+00, %7751
  %7755 = fsub fast float -0.000000e+00, %7752
  %7756 = fsub fast float -0.000000e+00, %7753
  %7757 = select i1 %7745, float %7751, float %7754
  %7758 = select i1 %7746, float %7752, float %7755
  %7759 = select i1 %7747, float %7753, float %7756
  %7760 = fmul fast float %7757, 6.000000e+00
  %7761 = fmul fast float %7758, 6.000000e+00
  %7762 = fmul fast float %7759, 6.000000e+00
  %7763 = fadd fast float %7760, -3.000000e+00
  %7764 = fadd fast float %7761, -3.000000e+00
  %7765 = fadd fast float %7762, -3.000000e+00
  %7766 = call float @dx.op.unary.f32(i32 6, float %7763)  ; FAbs(value)
  %7767 = call float @dx.op.unary.f32(i32 6, float %7764)  ; FAbs(value)
  %7768 = call float @dx.op.unary.f32(i32 6, float %7765)  ; FAbs(value)
  %7769 = fadd fast float %7766, -1.000000e+00
  %7770 = fadd fast float %7767, -1.000000e+00
  %7771 = fadd fast float %7768, -1.000000e+00
  %7772 = call float @dx.op.unary.f32(i32 7, float %7769)  ; Saturate(value)
  %7773 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7774 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  br label %8419

; <label>:7775                                    ; preds = %7657
  %7776 = icmp eq i32 %7417, 39
  br i1 %7776, label %7777, label %7881

; <label>:7777                                    ; preds = %7775
  %7778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7779 = extractvalue %dx.types.CBufRet.f32 %7778, 0
  %7780 = extractvalue %dx.types.CBufRet.f32 %7778, 1
  %7781 = extractvalue %dx.types.CBufRet.f32 %7778, 2
  %7782 = fadd fast float %7779, %116
  %7783 = fadd fast float %7780, %117
  %7784 = fadd fast float %7781, %118
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 0
  %7789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.f32 %7789, 0
  %7791 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7792 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7793 = extractvalue %dx.types.CBufRet.f32 %7789, 1
  %7794 = extractvalue %dx.types.CBufRet.f32 %7785, 3
  %7795 = extractvalue %dx.types.CBufRet.f32 %7787, 3
  %7796 = extractvalue %dx.types.CBufRet.f32 %7789, 3
  %7797 = fadd fast float %7782, %7794
  %7798 = fadd fast float %7783, %7795
  %7799 = fadd fast float %7784, %7796
  %7800 = fmul fast float %7797, %7786
  %7801 = call float @dx.op.tertiary.f32(i32 46, float %7798, float %7788, float %7800)  ; FMad(a,b,c)
  %7802 = call float @dx.op.tertiary.f32(i32 46, float %7799, float %7790, float %7801)  ; FMad(a,b,c)
  %7803 = fmul fast float %7797, %7791
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %7798, float %7792, float %7803)  ; FMad(a,b,c)
  %7805 = call float @dx.op.tertiary.f32(i32 46, float %7799, float %7793, float %7804)  ; FMad(a,b,c)
  %7806 = fsub fast float %7802, %7794
  %7807 = fsub fast float %7805, %7795
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.CBufRet.f32 %7808, 1
  %7811 = fsub fast float %7806, %7809
  %7812 = fsub fast float %7807, %7810
  %7813 = fmul fast float %7811, %7811
  %7814 = fmul fast float %7812, %7812
  %7815 = fadd fast float %7813, %7814
  %7816 = call float @dx.op.unary.f32(i32 24, float %7815)  ; Sqrt(value)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %7818 = fcmp fast olt float %7816, %7817
  br i1 %7818, label %7819, label %8419

; <label>:7819                                    ; preds = %7777
  %7820 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7821 = extractvalue %dx.types.Dimensions %7820, 0
  %7822 = sitofp i32 %7821 to float
  %7823 = extractvalue %dx.types.Dimensions %7820, 1
  %7824 = sitofp i32 %7823 to float
  %7825 = fadd fast float %7811, %7817
  %7826 = fadd fast float %7812, %7817
  %7827 = extractvalue %dx.types.CBufRet.f32 %7808, 3
  %7828 = fmul fast float %7825, %7827
  %7829 = fmul fast float %7826, %7827
  %7830 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  %7831 = call float @dx.op.unary.f32(i32 7, float %7829)  ; Saturate(value)
  %7832 = fsub fast float 1.000000e+00, %7830
  %7833 = fsub fast float 1.000000e+00, %7831
  %7834 = fmul fast float %7832, %7822
  %7835 = fmul fast float %7833, %7824
  %7836 = call float @dx.op.unary.f32(i32 27, float %7834)  ; Round_ni(value)
  %7837 = call float @dx.op.unary.f32(i32 27, float %7835)  ; Round_ni(value)
  %7838 = fptoui float %7822 to i32
  %7839 = uitofp i32 %7838 to float
  %7840 = fmul fast float %7837, %7839
  %7841 = fadd fast float %7840, %7836
  %7842 = fptoui float %7841 to i32
  %7843 = uitofp i32 %7842 to float
  %7844 = fmul fast float %7843, 0x3FE3C6EF40000000
  %7845 = call float @dx.op.unary.f32(i32 22, float %7844)  ; Frc(value)
  %7846 = fadd fast float %7845, 0x3FE5555560000000
  %7847 = fadd fast float %7845, 0x3FD5555560000000
  %7848 = fsub fast float -0.000000e+00, %7845
  %7849 = fsub fast float -0.000000e+00, %7846
  %7850 = fsub fast float -0.000000e+00, %7847
  %7851 = fcmp fast oge float %7845, %7848
  %7852 = fcmp fast oge float %7846, %7849
  %7853 = fcmp fast oge float %7847, %7850
  %7854 = call float @dx.op.unary.f32(i32 6, float %7845)  ; FAbs(value)
  %7855 = call float @dx.op.unary.f32(i32 6, float %7846)  ; FAbs(value)
  %7856 = call float @dx.op.unary.f32(i32 6, float %7847)  ; FAbs(value)
  %7857 = call float @dx.op.unary.f32(i32 22, float %7854)  ; Frc(value)
  %7858 = call float @dx.op.unary.f32(i32 22, float %7855)  ; Frc(value)
  %7859 = call float @dx.op.unary.f32(i32 22, float %7856)  ; Frc(value)
  %7860 = fsub fast float -0.000000e+00, %7857
  %7861 = fsub fast float -0.000000e+00, %7858
  %7862 = fsub fast float -0.000000e+00, %7859
  %7863 = select i1 %7851, float %7857, float %7860
  %7864 = select i1 %7852, float %7858, float %7861
  %7865 = select i1 %7853, float %7859, float %7862
  %7866 = fmul fast float %7863, 6.000000e+00
  %7867 = fmul fast float %7864, 6.000000e+00
  %7868 = fmul fast float %7865, 6.000000e+00
  %7869 = fadd fast float %7866, -3.000000e+00
  %7870 = fadd fast float %7867, -3.000000e+00
  %7871 = fadd fast float %7868, -3.000000e+00
  %7872 = call float @dx.op.unary.f32(i32 6, float %7869)  ; FAbs(value)
  %7873 = call float @dx.op.unary.f32(i32 6, float %7870)  ; FAbs(value)
  %7874 = call float @dx.op.unary.f32(i32 6, float %7871)  ; FAbs(value)
  %7875 = fadd fast float %7872, -1.000000e+00
  %7876 = fadd fast float %7873, -1.000000e+00
  %7877 = fadd fast float %7874, -1.000000e+00
  %7878 = call float @dx.op.unary.f32(i32 7, float %7875)  ; Saturate(value)
  %7879 = call float @dx.op.unary.f32(i32 7, float %7876)  ; Saturate(value)
  %7880 = call float @dx.op.unary.f32(i32 7, float %7877)  ; Saturate(value)
  br label %8419

; <label>:7881                                    ; preds = %7775
  %7882 = icmp eq i32 %7417, 23
  br i1 %7882, label %8419, label %7883

; <label>:7883                                    ; preds = %7881
  %7884 = icmp eq i32 %7417, 24
  br i1 %7884, label %7885, label %7911

; <label>:7885                                    ; preds = %7883
  %7886 = and i32 %341, 255
  %7887 = uitofp i32 %7886 to float
  %7888 = fptoui float %7887 to i32
  %7889 = uitofp i32 %7888 to float
  %7890 = fadd fast float %7889, -4.000000e+00
  %7891 = fmul fast float %7890, 0x3FB5555560000000
  %7892 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  %7893 = icmp eq i32 %7888, 0
  %7894 = select i1 %7893, float 0.000000e+00, float %7892
  %7895 = icmp ult i32 %7888, 2
  %7896 = select i1 %7895, float 0.000000e+00, float %7892
  %7897 = add i32 %7888, -1
  %7898 = icmp ult i32 %7897, 2
  %7899 = select i1 %7898, float 1.000000e+00, float %7894
  %7900 = icmp ult i32 %7888, 4
  %7901 = select i1 %7900, float 0.000000e+00, float 1.000000e+00
  %7902 = and i32 %7888, -2
  %7903 = icmp eq i32 %7902, 2
  %7904 = icmp eq i32 %7888, 4
  %7905 = select i1 %7904, float 1.000000e+00, float %7901
  %7906 = or i1 %7904, %7903
  %7907 = select i1 %7906, float 1.000000e+00, float %7896
  %7908 = add i32 %7888, -3
  %7909 = icmp ult i32 %7908, 2
  %7910 = select i1 %7909, float 0.000000e+00, float %7899
  br label %8419

; <label>:7911                                    ; preds = %7883
  %7912 = icmp eq i32 %7417, 25
  br i1 %7912, label %7913, label %7939

; <label>:7913                                    ; preds = %7911
  %7914 = and i32 %1205, 255
  %7915 = uitofp i32 %7914 to float
  %7916 = fptoui float %7915 to i32
  %7917 = uitofp i32 %7916 to float
  %7918 = fadd fast float %7917, -4.000000e+00
  %7919 = fmul fast float %7918, 0x3FB5555560000000
  %7920 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  %7921 = icmp eq i32 %7916, 0
  %7922 = select i1 %7921, float 0.000000e+00, float %7920
  %7923 = icmp ult i32 %7916, 2
  %7924 = select i1 %7923, float 0.000000e+00, float %7920
  %7925 = add i32 %7916, -1
  %7926 = icmp ult i32 %7925, 2
  %7927 = select i1 %7926, float 1.000000e+00, float %7922
  %7928 = icmp ult i32 %7916, 4
  %7929 = select i1 %7928, float 0.000000e+00, float 1.000000e+00
  %7930 = and i32 %7916, -2
  %7931 = icmp eq i32 %7930, 2
  %7932 = icmp eq i32 %7916, 4
  %7933 = select i1 %7932, float 1.000000e+00, float %7929
  %7934 = or i1 %7932, %7931
  %7935 = select i1 %7934, float 1.000000e+00, float %7924
  %7936 = add i32 %7916, -3
  %7937 = icmp ult i32 %7936, 2
  %7938 = select i1 %7937, float 0.000000e+00, float %7927
  br label %8419

; <label>:7939                                    ; preds = %7911
  %7940 = icmp eq i32 %7417, 27
  br i1 %7940, label %7941, label %7996

; <label>:7941                                    ; preds = %7939
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 2
  %7944 = fptoui float %7943 to i32
  %7945 = fptoui float %140 to i32
  %7946 = and i32 %7945, 31
  %7947 = lshr i32 %7944, %7946
  %7948 = uitofp i32 %7947 to float
  %7949 = fmul fast float %7948, %61
  %7950 = fmul fast float %7948, %62
  %7951 = call float @dx.op.unary.f32(i32 27, float %7949)  ; Round_ni(value)
  %7952 = call float @dx.op.unary.f32(i32 27, float %7950)  ; Round_ni(value)
  %7953 = fptoui float %7951 to i32
  %7954 = fptoui float %7952 to i32
  %7955 = fptoui float %7948 to i32
  %7956 = mul i32 %7955, %7954
  %7957 = add i32 %7956, %7953
  %7958 = uitofp i32 %7957 to float
  %7959 = fmul fast float %7958, 0x3FE3C6EF40000000
  %7960 = call float @dx.op.unary.f32(i32 22, float %7959)  ; Frc(value)
  %7961 = fadd fast float %7960, 0x3FE5555560000000
  %7962 = fadd fast float %7960, 0x3FD5555560000000
  %7963 = fsub fast float -0.000000e+00, %7960
  %7964 = fsub fast float -0.000000e+00, %7961
  %7965 = fsub fast float -0.000000e+00, %7962
  %7966 = fcmp fast oge float %7960, %7963
  %7967 = fcmp fast oge float %7961, %7964
  %7968 = fcmp fast oge float %7962, %7965
  %7969 = call float @dx.op.unary.f32(i32 6, float %7960)  ; FAbs(value)
  %7970 = call float @dx.op.unary.f32(i32 6, float %7961)  ; FAbs(value)
  %7971 = call float @dx.op.unary.f32(i32 6, float %7962)  ; FAbs(value)
  %7972 = call float @dx.op.unary.f32(i32 22, float %7969)  ; Frc(value)
  %7973 = call float @dx.op.unary.f32(i32 22, float %7970)  ; Frc(value)
  %7974 = call float @dx.op.unary.f32(i32 22, float %7971)  ; Frc(value)
  %7975 = fsub fast float -0.000000e+00, %7972
  %7976 = fsub fast float -0.000000e+00, %7973
  %7977 = fsub fast float -0.000000e+00, %7974
  %7978 = select i1 %7966, float %7972, float %7975
  %7979 = select i1 %7967, float %7973, float %7976
  %7980 = select i1 %7968, float %7974, float %7977
  %7981 = fmul fast float %7978, 6.000000e+00
  %7982 = fmul fast float %7979, 6.000000e+00
  %7983 = fmul fast float %7980, 6.000000e+00
  %7984 = fadd fast float %7981, -3.000000e+00
  %7985 = fadd fast float %7982, -3.000000e+00
  %7986 = fadd fast float %7983, -3.000000e+00
  %7987 = call float @dx.op.unary.f32(i32 6, float %7984)  ; FAbs(value)
  %7988 = call float @dx.op.unary.f32(i32 6, float %7985)  ; FAbs(value)
  %7989 = call float @dx.op.unary.f32(i32 6, float %7986)  ; FAbs(value)
  %7990 = fadd fast float %7987, -1.000000e+00
  %7991 = fadd fast float %7988, -1.000000e+00
  %7992 = fadd fast float %7989, -1.000000e+00
  %7993 = call float @dx.op.unary.f32(i32 7, float %7990)  ; Saturate(value)
  %7994 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7995 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  br label %8419

; <label>:7996                                    ; preds = %7939
  %7997 = icmp eq i32 %7417, 30
  br i1 %7997, label %7998, label %8038

; <label>:7998                                    ; preds = %7996
  %7999 = fcmp fast olt float %391, 0.000000e+00
  br i1 %7999, label %8419, label %8000

; <label>:8000                                    ; preds = %7998
  %8001 = fmul fast float %391, 0x3FE3C6EF40000000
  %8002 = call float @dx.op.unary.f32(i32 22, float %8001)  ; Frc(value)
  %8003 = fadd fast float %8002, 0x3FE5555560000000
  %8004 = fadd fast float %8002, 0x3FD5555560000000
  %8005 = fsub fast float -0.000000e+00, %8002
  %8006 = fsub fast float -0.000000e+00, %8003
  %8007 = fsub fast float -0.000000e+00, %8004
  %8008 = fcmp fast oge float %8002, %8005
  %8009 = fcmp fast oge float %8003, %8006
  %8010 = fcmp fast oge float %8004, %8007
  %8011 = call float @dx.op.unary.f32(i32 6, float %8002)  ; FAbs(value)
  %8012 = call float @dx.op.unary.f32(i32 6, float %8003)  ; FAbs(value)
  %8013 = call float @dx.op.unary.f32(i32 6, float %8004)  ; FAbs(value)
  %8014 = call float @dx.op.unary.f32(i32 22, float %8011)  ; Frc(value)
  %8015 = call float @dx.op.unary.f32(i32 22, float %8012)  ; Frc(value)
  %8016 = call float @dx.op.unary.f32(i32 22, float %8013)  ; Frc(value)
  %8017 = fsub fast float -0.000000e+00, %8014
  %8018 = fsub fast float -0.000000e+00, %8015
  %8019 = fsub fast float -0.000000e+00, %8016
  %8020 = select i1 %8008, float %8014, float %8017
  %8021 = select i1 %8009, float %8015, float %8018
  %8022 = select i1 %8010, float %8016, float %8019
  %8023 = fmul fast float %8020, 6.000000e+00
  %8024 = fmul fast float %8021, 6.000000e+00
  %8025 = fmul fast float %8022, 6.000000e+00
  %8026 = fadd fast float %8023, -3.000000e+00
  %8027 = fadd fast float %8024, -3.000000e+00
  %8028 = fadd fast float %8025, -3.000000e+00
  %8029 = call float @dx.op.unary.f32(i32 6, float %8026)  ; FAbs(value)
  %8030 = call float @dx.op.unary.f32(i32 6, float %8027)  ; FAbs(value)
  %8031 = call float @dx.op.unary.f32(i32 6, float %8028)  ; FAbs(value)
  %8032 = fadd fast float %8029, -1.000000e+00
  %8033 = fadd fast float %8030, -1.000000e+00
  %8034 = fadd fast float %8031, -1.000000e+00
  %8035 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8036 = call float @dx.op.unary.f32(i32 7, float %8033)  ; Saturate(value)
  %8037 = call float @dx.op.unary.f32(i32 7, float %8034)  ; Saturate(value)
  br label %8419

; <label>:8038                                    ; preds = %7996
  %8039 = add i32 %7417, -31
  %8040 = icmp ult i32 %8039, 2
  br i1 %8040, label %8041, label %8049

; <label>:8041                                    ; preds = %8038
  %8042 = fcmp fast olt float %392, 0.000000e+00
  %8043 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %8044 = fmul fast float %8043, 5.000000e-01
  %8045 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8046 = select i1 %8042, float 0.000000e+00, float %8045
  %8047 = select i1 %8042, float %8045, float 0.000000e+00
  %8048 = fadd fast float %8045, 5.000000e-01
  br label %8419

; <label>:8049                                    ; preds = %8038
  %8050 = icmp eq i32 %7417, 36
  br i1 %8050, label %8051, label %8083

; <label>:8051                                    ; preds = %8049
  %8052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.i32 %8052, 0
  %8054 = and i32 %8053, 2048
  %8055 = icmp ne i32 %8054, 0
  %8056 = call float @dx.op.binary.f32(i32 35, float %1862, float %1863)  ; FMax(a,b)
  %8057 = call float @dx.op.binary.f32(i32 35, float %1861, float %8056)  ; FMax(a,b)
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8060 = fcmp fast oge float %8057, %8059
  %8061 = and i1 %8055, %8060
  br i1 %8061, label %8062, label %8068

; <label>:8062                                    ; preds = %8051
  %8063 = fsub fast float 1.000000e+00, %7436
  %8064 = fmul fast float %8063, 5.000000e-01
  %8065 = fadd fast float %8064, %7436
  %8066 = fmul fast float %7437, 5.000000e-01
  %8067 = fmul fast float %7438, 5.000000e-01
  br label %8419

; <label>:8068                                    ; preds = %8051
  %8069 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1815, float %1816, float %1753, float %1754, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %8070 = and i32 %8053, 1024
  %8071 = icmp ne i32 %8070, 0
  %8072 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8073 = fcmp fast ole float %8069, %8072
  %8074 = and i1 %8071, %8073
  br i1 %8074, label %8075, label %8419

; <label>:8075                                    ; preds = %8068
  %8076 = fsub fast float 1.000000e+00, %7436
  %8077 = fsub fast float 1.000000e+00, %7437
  %8078 = fmul fast float %8076, 5.000000e-01
  %8079 = fmul fast float %8077, 5.000000e-01
  %8080 = fadd fast float %8078, %7436
  %8081 = fadd fast float %8079, %7437
  %8082 = fmul fast float %7438, 5.000000e-01
  br label %8419

; <label>:8083                                    ; preds = %8049
  %8084 = icmp eq i32 %7417, 40
  br i1 %8084, label %8085, label %8328

; <label>:8085                                    ; preds = %8083
  %8086 = fmul fast float %116, %116
  %8087 = fmul fast float %117, %117
  %8088 = fadd fast float %8087, %8086
  %8089 = fmul fast float %118, %118
  %8090 = fadd fast float %8088, %8089
  %8091 = call float @dx.op.unary.f32(i32 24, float %8090)  ; Sqrt(value)
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = fcmp fast ogt float %8091, %8093
  %8095 = zext i1 %8094 to i32
  %8096 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8097 = fcmp fast ogt float %8091, %8096
  %8098 = zext i1 %8097 to i32
  %8099 = add nuw nsw i32 %8098, %8095
  %8100 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8101 = fcmp fast ogt float %8091, %8100
  %8102 = zext i1 %8101 to i32
  %8103 = add nuw nsw i32 %8099, %8102
  %8104 = icmp ult i32 %8103, 3
  %8105 = zext i1 %8104 to i32
  %8106 = shl nuw nsw i32 %8103, 2
  %8107 = add nuw nsw i32 %8106, 48
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8107)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 1
  %8110 = fcmp fast ogt float %8091, %8109
  %8111 = zext i1 %8110 to i32
  %8112 = or i32 %8106, 1
  %8113 = add nuw nsw i32 %8112, 48
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8113)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8116 = fcmp fast ogt float %8091, %8115
  %8117 = zext i1 %8116 to i32
  %8118 = add nuw nsw i32 %8117, %8111
  %8119 = or i32 %8106, 2
  %8120 = add nuw nsw i32 %8119, 48
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8120)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8123 = fcmp fast ogt float %8091, %8122
  %8124 = zext i1 %8123 to i32
  %8125 = add nuw nsw i32 %8118, %8124
  %8126 = call i32 @dx.op.binary.i32(i32 40, i32 %8125, i32 3)  ; UMin(a,b)
  %8127 = add i32 %8106, %8126
  %8128 = call i32 @dx.op.binary.i32(i32 40, i32 %8127, i32 12)  ; UMin(a,b)
  %8129 = add i32 %8128, 48
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8129)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 0
  %8132 = fcmp fast oge float %8091, %8131
  %8133 = zext i1 %8132 to i32
  %8134 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %8105)  ; UMin(a,b)
  %8135 = call i32 @dx.op.binary.i32(i32 40, i32 %8133, i32 %8134)  ; UMin(a,b)
  %8136 = fmul fast float %7407, 7.500000e-01
  %8137 = fadd fast float %8136, %7405
  %8138 = fcmp fast ult float %7402, %8137
  br i1 %8138, label %8178, label %8139

; <label>:8139                                    ; preds = %8085
  %8140 = uitofp i32 %8128 to float
  %8141 = fmul fast float %8140, 0x3FE3C6EF40000000
  %8142 = call float @dx.op.unary.f32(i32 22, float %8141)  ; Frc(value)
  %8143 = fadd fast float %8142, 0x3FE5555560000000
  %8144 = fadd fast float %8142, 0x3FD5555560000000
  %8145 = fsub fast float -0.000000e+00, %8142
  %8146 = fsub fast float -0.000000e+00, %8143
  %8147 = fsub fast float -0.000000e+00, %8144
  %8148 = fcmp fast oge float %8142, %8145
  %8149 = fcmp fast oge float %8143, %8146
  %8150 = fcmp fast oge float %8144, %8147
  %8151 = call float @dx.op.unary.f32(i32 6, float %8142)  ; FAbs(value)
  %8152 = call float @dx.op.unary.f32(i32 6, float %8143)  ; FAbs(value)
  %8153 = call float @dx.op.unary.f32(i32 6, float %8144)  ; FAbs(value)
  %8154 = call float @dx.op.unary.f32(i32 22, float %8151)  ; Frc(value)
  %8155 = call float @dx.op.unary.f32(i32 22, float %8152)  ; Frc(value)
  %8156 = call float @dx.op.unary.f32(i32 22, float %8153)  ; Frc(value)
  %8157 = fsub fast float -0.000000e+00, %8154
  %8158 = fsub fast float -0.000000e+00, %8155
  %8159 = fsub fast float -0.000000e+00, %8156
  %8160 = select i1 %8148, float %8154, float %8157
  %8161 = select i1 %8149, float %8155, float %8158
  %8162 = select i1 %8150, float %8156, float %8159
  %8163 = fmul fast float %8160, 6.000000e+00
  %8164 = fmul fast float %8161, 6.000000e+00
  %8165 = fmul fast float %8162, 6.000000e+00
  %8166 = fadd fast float %8163, -3.000000e+00
  %8167 = fadd fast float %8164, -3.000000e+00
  %8168 = fadd fast float %8165, -3.000000e+00
  %8169 = call float @dx.op.unary.f32(i32 6, float %8166)  ; FAbs(value)
  %8170 = call float @dx.op.unary.f32(i32 6, float %8167)  ; FAbs(value)
  %8171 = call float @dx.op.unary.f32(i32 6, float %8168)  ; FAbs(value)
  %8172 = fadd fast float %8169, -1.000000e+00
  %8173 = fadd fast float %8170, -1.000000e+00
  %8174 = fadd fast float %8171, -1.000000e+00
  %8175 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8176 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  br label %8315

; <label>:8178                                    ; preds = %8085
  %8179 = fmul fast float %7407, 5.000000e-01
  %8180 = fadd fast float %8179, %7405
  %8181 = fcmp fast ult float %7402, %8180
  br i1 %8181, label %8208, label %8182

; <label>:8182                                    ; preds = %8178
  %8183 = add i32 %8135, 4
  %8184 = icmp eq i32 %8183, 0
  br i1 %8184, label %8315, label %8185

; <label>:8185                                    ; preds = %8182
  br label %8186

; <label>:8186                                    ; preds = %8186, %8185
  %8187 = phi float [ %8203, %8186 ], [ 0.000000e+00, %8185 ]
  %8188 = phi i32 [ %8204, %8186 ], [ 0, %8185 ]
  %8189 = add i32 %8128, 32
  %8190 = add i32 %8189, %8188
  %8191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8190)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.f32 %8191, 0
  %8193 = extractvalue %dx.types.CBufRet.f32 %8191, 1
  %8194 = extractvalue %dx.types.CBufRet.f32 %8191, 2
  %8195 = extractvalue %dx.types.CBufRet.f32 %8191, 3
  %8196 = fmul fast float %8192, %8091
  %8197 = fadd fast float %8196, %8193
  %8198 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8199 = fmul fast float %8194, %8091
  %8200 = fadd fast float %8199, %8195
  %8201 = call float @dx.op.unary.f32(i32 7, float %8200)  ; Saturate(value)
  %8202 = call float @dx.op.binary.f32(i32 36, float %8198, float %8201)  ; FMin(a,b)
  %8203 = fadd fast float %8202, %8187
  %8204 = add nuw i32 %8188, 1
  %8205 = icmp eq i32 %8204, %8183
  br i1 %8205, label %8206, label %8186

; <label>:8206                                    ; preds = %8186
  %8207 = fmul float %8203, 2.500000e-01
  br label %8315

; <label>:8208                                    ; preds = %8178
  %8209 = fmul fast float %7407, 2.500000e-01
  %8210 = fadd fast float %8209, %7405
  %8211 = fcmp fast ult float %7402, %8210
  br i1 %8211, label %8311, label %8212

; <label>:8212                                    ; preds = %8208
  %8213 = add i32 %8128, 32
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8213)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 0
  %8216 = extractvalue %dx.types.CBufRet.f32 %8214, 1
  %8217 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %8218 = extractvalue %dx.types.CBufRet.f32 %8214, 3
  %8219 = fmul fast float %8215, %8091
  %8220 = fadd fast float %8219, %8216
  %8221 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8222 = fmul fast float %8217, %8091
  %8223 = fadd fast float %8222, %8218
  %8224 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8225 = call float @dx.op.binary.f32(i32 36, float %8221, float %8224)  ; FMin(a,b)
  %8226 = uitofp i32 %8128 to float
  %8227 = fmul fast float %8226, 0x3FE3C6EF40000000
  %8228 = call float @dx.op.unary.f32(i32 22, float %8227)  ; Frc(value)
  %8229 = fadd fast float %8228, 0x3FE5555560000000
  %8230 = fadd fast float %8228, 0x3FD5555560000000
  %8231 = fsub fast float -0.000000e+00, %8228
  %8232 = fsub fast float -0.000000e+00, %8229
  %8233 = fsub fast float -0.000000e+00, %8230
  %8234 = fcmp fast oge float %8228, %8231
  %8235 = fcmp fast oge float %8229, %8232
  %8236 = fcmp fast oge float %8230, %8233
  %8237 = call float @dx.op.unary.f32(i32 6, float %8228)  ; FAbs(value)
  %8238 = call float @dx.op.unary.f32(i32 6, float %8229)  ; FAbs(value)
  %8239 = call float @dx.op.unary.f32(i32 6, float %8230)  ; FAbs(value)
  %8240 = call float @dx.op.unary.f32(i32 22, float %8237)  ; Frc(value)
  %8241 = call float @dx.op.unary.f32(i32 22, float %8238)  ; Frc(value)
  %8242 = call float @dx.op.unary.f32(i32 22, float %8239)  ; Frc(value)
  %8243 = fsub fast float -0.000000e+00, %8240
  %8244 = fsub fast float -0.000000e+00, %8241
  %8245 = fsub fast float -0.000000e+00, %8242
  %8246 = select i1 %8234, float %8240, float %8243
  %8247 = select i1 %8235, float %8241, float %8244
  %8248 = select i1 %8236, float %8242, float %8245
  %8249 = fmul fast float %8246, 6.000000e+00
  %8250 = fmul fast float %8247, 6.000000e+00
  %8251 = fmul fast float %8248, 6.000000e+00
  %8252 = fadd fast float %8249, -3.000000e+00
  %8253 = fadd fast float %8250, -3.000000e+00
  %8254 = fadd fast float %8251, -3.000000e+00
  %8255 = call float @dx.op.unary.f32(i32 6, float %8252)  ; FAbs(value)
  %8256 = call float @dx.op.unary.f32(i32 6, float %8253)  ; FAbs(value)
  %8257 = call float @dx.op.unary.f32(i32 6, float %8254)  ; FAbs(value)
  %8258 = fadd fast float %8255, -1.000000e+00
  %8259 = fadd fast float %8256, -1.000000e+00
  %8260 = fadd fast float %8257, -1.000000e+00
  %8261 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8262 = call float @dx.op.unary.f32(i32 7, float %8259)  ; Saturate(value)
  %8263 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  %8264 = fadd fast float %8226, 1.000000e+00
  %8265 = fmul fast float %8264, 0x3FE3C6EF40000000
  %8266 = call float @dx.op.unary.f32(i32 22, float %8265)  ; Frc(value)
  %8267 = fadd fast float %8266, 0x3FE5555560000000
  %8268 = fadd fast float %8266, 0x3FD5555560000000
  %8269 = fsub fast float -0.000000e+00, %8266
  %8270 = fsub fast float -0.000000e+00, %8267
  %8271 = fsub fast float -0.000000e+00, %8268
  %8272 = fcmp fast oge float %8266, %8269
  %8273 = fcmp fast oge float %8267, %8270
  %8274 = fcmp fast oge float %8268, %8271
  %8275 = call float @dx.op.unary.f32(i32 6, float %8266)  ; FAbs(value)
  %8276 = call float @dx.op.unary.f32(i32 6, float %8267)  ; FAbs(value)
  %8277 = call float @dx.op.unary.f32(i32 6, float %8268)  ; FAbs(value)
  %8278 = call float @dx.op.unary.f32(i32 22, float %8275)  ; Frc(value)
  %8279 = call float @dx.op.unary.f32(i32 22, float %8276)  ; Frc(value)
  %8280 = call float @dx.op.unary.f32(i32 22, float %8277)  ; Frc(value)
  %8281 = fsub fast float -0.000000e+00, %8278
  %8282 = fsub fast float -0.000000e+00, %8279
  %8283 = fsub fast float -0.000000e+00, %8280
  %8284 = select i1 %8272, float %8278, float %8281
  %8285 = select i1 %8273, float %8279, float %8282
  %8286 = select i1 %8274, float %8280, float %8283
  %8287 = fmul fast float %8284, 6.000000e+00
  %8288 = fmul fast float %8285, 6.000000e+00
  %8289 = fmul fast float %8286, 6.000000e+00
  %8290 = fadd fast float %8287, -3.000000e+00
  %8291 = fadd fast float %8288, -3.000000e+00
  %8292 = fadd fast float %8289, -3.000000e+00
  %8293 = call float @dx.op.unary.f32(i32 6, float %8290)  ; FAbs(value)
  %8294 = call float @dx.op.unary.f32(i32 6, float %8291)  ; FAbs(value)
  %8295 = call float @dx.op.unary.f32(i32 6, float %8292)  ; FAbs(value)
  %8296 = fadd fast float %8293, -1.000000e+00
  %8297 = fadd fast float %8294, -1.000000e+00
  %8298 = fadd fast float %8295, -1.000000e+00
  %8299 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8300 = call float @dx.op.unary.f32(i32 7, float %8297)  ; Saturate(value)
  %8301 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8302 = fsub fast float %8299, %8261
  %8303 = fsub fast float %8300, %8262
  %8304 = fsub fast float %8301, %8263
  %8305 = fmul fast float %8302, %8225
  %8306 = fmul fast float %8303, %8225
  %8307 = fmul fast float %8304, %8225
  %8308 = fadd fast float %8305, %8261
  %8309 = fadd fast float %8306, %8262
  %8310 = fadd fast float %8307, %8263
  br label %8315

; <label>:8311                                    ; preds = %8208
  %8312 = icmp ne i32 %8135, 0
  %8313 = select i1 %8312, float 1.000000e+00, float 0.000000e+00
  %8314 = select i1 %8312, float 0.000000e+00, float 1.000000e+00
  br label %8315

; <label>:8315                                    ; preds = %8311, %8212, %8206, %8182, %8139
  %8316 = phi float [ %8175, %8139 ], [ %8308, %8212 ], [ %8313, %8311 ], [ 0.000000e+00, %8182 ], [ %8207, %8206 ]
  %8317 = phi float [ %8176, %8139 ], [ %8309, %8212 ], [ %8314, %8311 ], [ 0.000000e+00, %8182 ], [ %8207, %8206 ]
  %8318 = phi float [ %8177, %8139 ], [ %8310, %8212 ], [ 0.000000e+00, %8311 ], [ 0.000000e+00, %8182 ], [ %8207, %8206 ]
  %8319 = fsub fast float %8316, %7436
  %8320 = fsub fast float %8317, %7437
  %8321 = fsub fast float %8318, %7438
  %8322 = fmul fast float %8319, 5.000000e-01
  %8323 = fmul fast float %8320, 5.000000e-01
  %8324 = fmul fast float %8321, 5.000000e-01
  %8325 = fadd fast float %8322, %7436
  %8326 = fadd fast float %8323, %7437
  %8327 = fadd fast float %8324, %7438
  br label %8419

; <label>:8328                                    ; preds = %8083
  %8329 = icmp eq i32 %7417, 41
  br i1 %8329, label %8330, label %8411

; <label>:8330                                    ; preds = %8328
  %8331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %8332 = extractvalue %dx.types.CBufRet.i32 %8331, 0
  %8333 = icmp eq i32 %8332, 2
  %8334 = and i32 %1207, 2
  %8335 = icmp ne i32 %8334, 0
  %8336 = and i1 %8335, %8333
  %8337 = icmp eq i32 %8332, 3
  %8338 = and i32 %1207, 4
  %8339 = icmp ne i32 %8338, 0
  %8340 = and i1 %8339, %8337
  %8341 = or i1 %8340, %8336
  %8342 = icmp eq i32 %8332, 4
  %8343 = and i32 %1207, 8
  %8344 = icmp ne i32 %8343, 0
  %8345 = and i1 %8344, %8342
  %8346 = or i1 %8345, %8341
  %8347 = icmp eq i32 %8332, 5
  %8348 = and i32 %1207, 16
  %8349 = icmp ne i32 %8348, 0
  %8350 = and i1 %8349, %8347
  %8351 = or i1 %8350, %8346
  %8352 = icmp eq i32 %8332, 6
  %8353 = and i32 %1207, 32
  %8354 = icmp ne i32 %8353, 0
  %8355 = and i1 %8354, %8352
  %8356 = or i1 %8355, %8351
  %8357 = icmp eq i32 %8332, 8
  %8358 = and i32 %1207, 64
  %8359 = icmp ne i32 %8358, 0
  %8360 = and i1 %8359, %8357
  %8361 = or i1 %8360, %8356
  %8362 = icmp eq i32 %8332, 9
  %8363 = and i32 %1207, 128
  %8364 = icmp ne i32 %8363, 0
  %8365 = and i1 %8364, %8362
  %8366 = or i1 %8365, %8361
  %8367 = icmp eq i32 %8332, 11
  %8368 = and i32 %1207, 160
  %8369 = icmp ne i32 %8368, 0
  %8370 = and i1 %8369, %8367
  %8371 = or i1 %8370, %8366
  %8372 = icmp eq i32 %8332, 13
  %8373 = and i32 %1207, 256
  %8374 = icmp ne i32 %8373, 0
  %8375 = and i1 %8374, %8372
  %8376 = or i1 %8375, %8371
  %8377 = icmp eq i32 %8332, 14
  %8378 = and i32 %1207, 512
  %8379 = icmp ne i32 %8378, 0
  %8380 = and i1 %8379, %8377
  %8381 = or i1 %8380, %8376
  %8382 = icmp eq i32 %8332, 7
  %8383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %8384 = extractvalue %dx.types.ResRet.i32 %8383, 0
  %8385 = and i32 %8384, 1024
  %8386 = icmp ne i32 %8385, 0
  %8387 = and i1 %8382, %8386
  %8388 = or i1 %8387, %8381
  %8389 = icmp eq i32 %8332, 10
  %8390 = and i32 %8384, 2048
  %8391 = icmp ne i32 %8390, 0
  %8392 = and i1 %8389, %8391
  %8393 = or i1 %8392, %8388
  %8394 = icmp eq i32 %8332, 12
  %8395 = and i32 %8384, 3072
  %8396 = icmp ne i32 %8395, 0
  %8397 = and i1 %8394, %8396
  %8398 = or i1 %8397, %8393
  %8399 = icmp eq i32 %8332, 15
  %8400 = and i32 %8384, 4096
  %8401 = icmp ne i32 %8400, 0
  %8402 = and i1 %8399, %8401
  %8403 = or i1 %8402, %8398
  %8404 = select i1 %8403, float 5.000000e-01, float %7436
  %8405 = select i1 %8403, float 0x3FB99999A0000000, float %7437
  %8406 = select i1 %8403, float 0x3FB99999A0000000, float %7438
  %8407 = fcmp fast ogt float %54, 0.000000e+00
  %8408 = and i1 %8407, %8382
  %8409 = select i1 %8408, float 1.000000e+00, float %8405
  %8410 = select i1 %8408, float 1.000000e+00, float %8406
  br label %8419

; <label>:8411                                    ; preds = %8328
  %8412 = icmp eq i32 %7417, 45
  br i1 %8412, label %8413, label %8419

; <label>:8413                                    ; preds = %8411
  %8414 = fcmp fast ogt float %1208, %1209
  %8415 = fsub fast float %1208, %1209
  %8416 = call float @dx.op.unary.f32(i32 6, float %8415)  ; FAbs(value)
  %8417 = select i1 %8414, float %8416, float 0.000000e+00
  %8418 = select i1 %8414, float 0.000000e+00, float %8416
  br label %8419

; <label>:8419                                    ; preds = %8413, %8411, %8330, %8315, %8075, %8068, %8062, %8041, %8000, %7998, %7941, %7913, %7885, %7881, %7819, %7777, %7722, %7717, %7703, %7661, %7654, %7647, %7643, %7641, %7639, %7637, %7635, %7633, %7631, %7629, %7627, %7625, %7611, %7607, %7605, %7603, %7594, %7503, %7483, %7442, %7435
  %8420 = phi float [ %7478, %7442 ], [ %7484, %7483 ], [ %7588, %7503 ], [ %7600, %7594 ], [ %7620, %7611 ], [ %7626, %7625 ], [ %7651, %7647 ], [ %7719, %7717 ], [ %7772, %7722 ], [ %7878, %7819 ], [ %7905, %7885 ], [ %7933, %7913 ], [ %7993, %7941 ], [ %8035, %8000 ], [ %8048, %8041 ], [ %8065, %8062 ], [ %8080, %8075 ], [ %7436, %8068 ], [ %8325, %8315 ], [ %8404, %8330 ], [ %8417, %8413 ], [ %7436, %8411 ], [ %7436, %7435 ], [ 0.000000e+00, %7603 ], [ 0.000000e+00, %7641 ], [ %54, %7654 ], [ 1.000000e+00, %7703 ], [ 0.000000e+00, %7661 ], [ 0.000000e+00, %7777 ], [ 0.000000e+00, %7998 ], [ %267, %7605 ], [ %282, %7607 ], [ %322, %7627 ], [ %335, %7629 ], [ %1202, %7631 ], [ %60, %7633 ], [ %1203, %7635 ], [ %1204, %7637 ], [ %1210, %7639 ], [ %54, %7643 ], [ 0.000000e+00, %7881 ]
  %8421 = phi float [ %7479, %7442 ], [ %7485, %7483 ], [ %7589, %7503 ], [ %7601, %7594 ], [ %7622, %7611 ], [ %7626, %7625 ], [ %7652, %7647 ], [ %7720, %7717 ], [ %7773, %7722 ], [ %7879, %7819 ], [ %7907, %7885 ], [ %7935, %7913 ], [ %7994, %7941 ], [ %8036, %8000 ], [ %8046, %8041 ], [ %8066, %8062 ], [ %8081, %8075 ], [ %7437, %8068 ], [ %8326, %8315 ], [ %8409, %8330 ], [ %8418, %8413 ], [ %7437, %8411 ], [ %7437, %7435 ], [ 0.000000e+00, %7603 ], [ 1.000000e+00, %7641 ], [ %55, %7654 ], [ 0.000000e+00, %7703 ], [ 1.000000e+00, %7661 ], [ 1.000000e+00, %7777 ], [ 1.000000e+00, %7998 ], [ %267, %7605 ], [ %282, %7607 ], [ %322, %7627 ], [ %335, %7629 ], [ %1202, %7631 ], [ %60, %7633 ], [ %1203, %7635 ], [ %1204, %7637 ], [ %1210, %7639 ], [ %55, %7643 ], [ 0.000000e+00, %7881 ]
  %8422 = phi float [ %7480, %7442 ], [ %7486, %7483 ], [ %7590, %7503 ], [ %7602, %7594 ], [ 0.000000e+00, %7611 ], [ %7626, %7625 ], [ %7653, %7647 ], [ %7721, %7717 ], [ %7774, %7722 ], [ %7880, %7819 ], [ %7910, %7885 ], [ %7938, %7913 ], [ %7995, %7941 ], [ %8037, %8000 ], [ %8047, %8041 ], [ %8067, %8062 ], [ %8082, %8075 ], [ %7438, %8068 ], [ %8327, %8315 ], [ %8410, %8330 ], [ 0.000000e+00, %8413 ], [ %7438, %8411 ], [ %7438, %7435 ], [ 0.000000e+00, %7603 ], [ 1.000000e+00, %7641 ], [ %56, %7654 ], [ 1.000000e+00, %7703 ], [ 1.000000e+00, %7661 ], [ 1.000000e+00, %7777 ], [ 0.000000e+00, %7998 ], [ %267, %7605 ], [ %282, %7607 ], [ %322, %7627 ], [ %335, %7629 ], [ %1202, %7631 ], [ %60, %7633 ], [ %1203, %7635 ], [ %1204, %7637 ], [ %1210, %7639 ], [ %56, %7643 ], [ 0.000000e+00, %7881 ]
  %8423 = fadd fast float %1227, 0x3FE3C6EF40000000
  %8424 = call float @dx.op.unary.f32(i32 22, float %8423)  ; Frc(value)
  %8425 = call float @dx.op.unary.f32(i32 23, float %8420)  ; Log(value)
  %8426 = fadd fast float %8425, -7.000000e+00
  %8427 = call float @dx.op.unary.f32(i32 21, float %8426)  ; Exp(value)
  %8428 = fmul fast float %8424, 2.000000e+00
  %8429 = fadd fast float %8428, -1.000000e+00
  %8430 = fmul fast float %8427, %8429
  %8431 = fcmp fast ogt float %8420, 0.000000e+00
  %8432 = select i1 %8431, float %8430, float 0.000000e+00
  %8433 = fadd fast float %8432, %8420
  %8434 = fadd fast float %1227, 0x3FF3C6EF40000000
  %8435 = call float @dx.op.unary.f32(i32 22, float %8434)  ; Frc(value)
  %8436 = call float @dx.op.unary.f32(i32 23, float %8421)  ; Log(value)
  %8437 = fadd fast float %8436, -7.000000e+00
  %8438 = call float @dx.op.unary.f32(i32 21, float %8437)  ; Exp(value)
  %8439 = fmul fast float %8435, 2.000000e+00
  %8440 = fadd fast float %8439, -1.000000e+00
  %8441 = fmul fast float %8438, %8440
  %8442 = fcmp fast ogt float %8421, 0.000000e+00
  %8443 = select i1 %8442, float %8441, float 0.000000e+00
  %8444 = fadd fast float %8443, %8421
  %8445 = fadd fast float %1227, 0x3FFDAA66E0000000
  %8446 = call float @dx.op.unary.f32(i32 22, float %8445)  ; Frc(value)
  %8447 = call float @dx.op.unary.f32(i32 23, float %8422)  ; Log(value)
  %8448 = fadd fast float %8447, -6.000000e+00
  %8449 = call float @dx.op.unary.f32(i32 21, float %8448)  ; Exp(value)
  %8450 = fmul fast float %8446, 2.000000e+00
  %8451 = fadd fast float %8450, -1.000000e+00
  %8452 = fmul fast float %8449, %8451
  %8453 = fcmp fast ogt float %8422, 0.000000e+00
  %8454 = select i1 %8453, float %8452, float 0.000000e+00
  %8455 = fadd fast float %8454, %8422
  %8456 = call float @dx.op.binary.f32(i32 36, float %8433, float 3.225500e+04)  ; FMin(a,b)
  %8457 = call float @dx.op.binary.f32(i32 36, float %8444, float 3.225500e+04)  ; FMin(a,b)
  %8458 = call float @dx.op.binary.f32(i32 36, float %8455, float 3.225500e+04)  ; FMin(a,b)
  %8459 = call float @dx.op.binary.f32(i32 36, float %7393, float 3.225500e+04)  ; FMin(a,b)
  %8460 = call float @dx.op.binary.f32(i32 36, float %7394, float 3.225500e+04)  ; FMin(a,b)
  %8461 = call float @dx.op.binary.f32(i32 36, float %7395, float 3.225500e+04)  ; FMin(a,b)
  %8462 = fmul fast float %8456, %7396
  %8463 = fmul fast float %8457, %7397
  %8464 = fmul fast float %8458, %7398
  %8465 = fadd fast float %8459, %8462
  %8466 = fadd fast float %8460, %8463
  %8467 = fadd fast float %8461, %8464
  %8468 = select i1 %7421, float 0.000000e+00, float %8456
  %8469 = select i1 %7421, float 0.000000e+00, float %8457
  %8470 = select i1 %7421, float 0.000000e+00, float %8458
  %8471 = select i1 %7421, float %8456, float %8465
  %8472 = or i1 %7421, %1951
  %8473 = select i1 %8472, float %8457, float %8466
  %8474 = or i1 %7421, %1951
  %8475 = select i1 %8474, float %8458, float %8467
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1864, i32 %1870, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8471)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8473)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8475)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8468)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8469)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:8476                                    ; preds = %6545
  %8477 = fcmp fast olt float %1897, %6528
  br i1 %8477, label %6531, label %8478

; <label>:8478                                    ; preds = %8476
  %8479 = fcmp fast olt float %1897, %6529
  br i1 %8479, label %6531, label %6734

; <label>:8480                                    ; preds = %6625
  %8481 = fcmp fast olt float %69, 5.120000e+02
  br i1 %8481, label %6611, label %8482

; <label>:8482                                    ; preds = %8480
  %8483 = fcmp fast olt float %69, 1.024000e+03
  br i1 %8483, label %6611, label %8484

; <label>:8484                                    ; preds = %8482
  %8485 = fcmp fast olt float %69, 1.536000e+03
  br i1 %8485, label %6611, label %8486

; <label>:8486                                    ; preds = %8484
  %8487 = fcmp fast olt float %69, 2.048000e+03
  br i1 %8487, label %6611, label %8488

; <label>:8488                                    ; preds = %8486
  %8489 = fcmp fast olt float %69, 3.072000e+03
  br i1 %8489, label %6611, label %8490

; <label>:8490                                    ; preds = %8488
  %8491 = fcmp fast olt float %69, 4.096000e+03
  br i1 %8491, label %6611, label %8492

; <label>:8492                                    ; preds = %8490
  %8493 = fcmp fast olt float %69, 6.144000e+03
  br i1 %8493, label %6611, label %8494

; <label>:8494                                    ; preds = %8492
  %8495 = fcmp fast olt float %69, 8.192000e+03
  br i1 %8495, label %6611, label %6734

; <label>:8496                                    ; preds = %6657
  %8497 = fcmp fast olt float %6385, %6640
  br i1 %8497, label %6643, label %8498

; <label>:8498                                    ; preds = %8496
  %8499 = fcmp fast olt float %6385, %6641
  br i1 %8499, label %6643, label %6734
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!65}
!dx.entryPoints = !{!66}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !51, !55, !59}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !26}
!26 = !{i32 0, i32 5}
!27 = !{i32 18, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!28 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!35 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!41 = !{i32 32, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!42 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 7, i32 0, !7}
!51 = !{!52, !53}
!52 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!53 = !{i32 1, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !54}
!54 = !{i32 1, i32 1144}
!55 = !{!56, !57, !58}
!56 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!57 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!58 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!59 = !{!60, !61, !62, !63, !64}
!60 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!61 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!62 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!63 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!64 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!65 = !{[29 x i32] [i32 27, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 34, i32 68, i32 0, i32 17, i32 34, i32 68]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !89}
!67 = !{!68, !86, null}
!68 = !{!69, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 15}
!72 = !{i32 1, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 1, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 2, i8 0, !75}
!75 = !{i32 3, i32 3}
!76 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !70, i8 2, i32 1, i8 1, i32 1, i8 3, !77}
!77 = !{i32 3, i32 1}
!78 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !70, i8 1, i32 1, i8 1, i32 3, i8 0, !77}
!79 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !70, i8 1, i32 1, i8 1, i32 3, i8 1, !77}
!80 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !70, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!81 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !82, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!82 = !{i32 1}
!83 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 5, i8 0, !73}
!84 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 6, i8 0, !73}
!85 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!86 = !{!87, !88}
!87 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!88 = !{i32 1, !"SV_Target", i8 9, i8 16, !82, i8 0, i32 1, i8 4, i32 1, i8 0, !71}
!89 = !{i32 0, i64 24}
!90 = !{!91, !91, i64 0}
!91 = !{!"float", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !{!95, !97, !98}
!95 = distinct !{!95, !96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!96 = distinct !{!96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!97 = distinct !{!97, !96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!98 = distinct !{!98, !96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}

