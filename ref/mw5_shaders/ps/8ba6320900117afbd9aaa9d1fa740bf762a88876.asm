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
; shader hash: e2ace18eddbaaa798d54dd26385b1f16
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
;   [4 x i8] (type annotation not present)
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
;                                   texture     f32          3d     T27     t31,space2     1
;                                   texture    byte         r/o     T28     t10,space1     1
;                                   texture    byte         r/o     T29      t1,space1     1
;                                   texture     f32          1d     T30     t32,space2     1
;                                   texture     f32          3d     T31     t82,space2     1
;                                   texture     f32     2darray     T32      t8,space2     1
;                                   texture    byte         r/o     T33     t68,space1     1
;                                   texture     f32          2d     T34      t0,space2     1
;                                   texture    byte         r/o     T35     t11,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;                                   texture    byte         r/o     T37     t16,space1     1
;                                   texture    byte         r/o     T38     t17,space1     1
;                                   texture     f32          2d     T39             t8     1
;                                   texture     f32     2darray     T40             t5     1
;                                       UAV     f32          2d      U0             u7     1
;                                       UAV  struct         r/w      U1             u9     1
;                                       UAV  struct         r/w      U2             u0     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
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
@"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim" = internal constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [33 x float] [float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FD9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [15 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %70 = alloca [4 x float], align 4
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %66
  %74 = fmul fast float %72, %67
  %75 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %76 = call float @dx.op.unary.f32(i32 25, float %75)  ; Rsqrt(value)
  %77 = select i1 %58, float 1.000000e+00, float -1.000000e+00
  %78 = fmul fast float %63, %77
  %79 = fmul fast float %78, %76
  %80 = fmul fast float %64, %77
  %81 = fmul fast float %80, %76
  %82 = fmul fast float %65, %77
  %83 = fmul fast float %82, %76
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %87 = fmul fast float %73, 2.000000e+00
  %88 = fmul fast float %87, %85
  %89 = fmul fast float %74, 2.000000e+00
  %90 = fmul fast float %89, %86
  %91 = fsub fast float 1.000000e+00, %88
  %92 = fsub fast float 1.000000e+00, %90
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %91, %94
  %98 = fmul fast float %91, %95
  %99 = fmul fast float %91, %96
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %92, %101
  %105 = fmul fast float %92, %102
  %106 = fmul fast float %92, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fadd fast float %104, %108
  %112 = fadd fast float %111, %97
  %113 = fadd fast float %105, %109
  %114 = fadd fast float %113, %98
  %115 = fadd fast float %106, %110
  %116 = fadd fast float %115, %99
  %117 = fmul fast float %112, %69
  %118 = fmul fast float %114, %69
  %119 = fmul fast float %116, %69
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %123 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %124 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %125 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %126 = fmul fast float %122, %121
  %127 = fmul fast float %123, %121
  %128 = fmul fast float %124, %121
  %129 = fmul fast float %125, %121
  %130 = call float @dx.op.dot2.f32(i32 54, float %128, float %129, float %128, float %129)  ; Dot2(ax,ay,bx,by)
  %131 = call float @dx.op.dot2.f32(i32 54, float %126, float %127, float %126, float %127)  ; Dot2(ax,ay,bx,by)
  %132 = call float @dx.op.binary.f32(i32 35, float %131, float %130)  ; FMax(a,b)
  %133 = call float @dx.op.unary.f32(i32 23, float %132)  ; Log(value)
  %134 = fmul fast float %133, 5.000000e-01
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %137 = fadd fast float %136, %134
  %138 = call float @dx.op.binary.f32(i32 35, float %137, float 0.000000e+00)  ; FMax(a,b)
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %141 = fadd fast float %140, %138
  %142 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %143 = shl i32 %142, 16
  %144 = or i32 %143, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = fadd fast float %146, %117
  %149 = fadd fast float %147, %118
  %150 = fmul fast float %148, 0x3F53C37960000000
  %151 = fmul fast float %149, 0x3F53C37960000000
  %152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %152, float %150, float %151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = fmul fast float %156, %154
  %158 = shl i32 %59, 3
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = and i32 %160, 16383
  %162 = shl i32 %59, 2
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %164, 255
  %166 = mul nuw nsw i32 %161, 148
  %167 = add nuw nsw i32 %166, 4
  %168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = add nuw nsw i32 %166, 8
  %171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = add nuw nsw i32 %166, 48
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = add nuw nsw i32 %166, 92
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = add nuw nsw i32 %166, 96
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = add nuw nsw i32 %166, 100
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = add nuw nsw i32 %166, 104
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = add nuw nsw i32 %166, 108
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = fsub fast float 1.000000e+00, %62
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %193 = fmul fast float %192, %61
  %194 = fmul fast float %192, %190
  %195 = fadd fast float %193, %169
  %196 = fadd fast float %194, %172
  %197 = call float @dx.op.unary.f32(i32 84, float %195)  ; DerivCoarseY(value)
  %198 = call float @dx.op.unary.f32(i32 84, float %196)  ; DerivCoarseY(value)
  %199 = call float @dx.op.unary.f32(i32 83, float %195)  ; DerivCoarseX(value)
  %200 = call float @dx.op.unary.f32(i32 83, float %196)  ; DerivCoarseX(value)
  %201 = call float @dx.op.dot2.f32(i32 54, float %197, float %198, float %197, float %198)  ; Dot2(ax,ay,bx,by)
  %202 = call float @dx.op.dot2.f32(i32 54, float %199, float %200, float %199, float %200)  ; Dot2(ax,ay,bx,by)
  %203 = call float @dx.op.binary.f32(i32 35, float %202, float %201)  ; FMax(a,b)
  %204 = call float @dx.op.unary.f32(i32 23, float %203)  ; Log(value)
  %205 = fmul fast float %204, 5.000000e-01
  %206 = add nuw nsw i32 %166, 20
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = add nuw nsw i32 %166, 24
  %210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = add nuw nsw i32 %166, 28
  %213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = add nuw nsw i32 %166, 32
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = add nuw nsw i32 %166, 40
  %219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = add nuw nsw i32 %166, 44
  %222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = add nuw nsw i32 %166, 52
  %227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = add nuw nsw i32 %166, 56
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = add nuw nsw i32 %166, 112
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %245 = fmul fast float %244, %61
  %246 = fmul fast float %244, %62
  %247 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %248 = fadd fast float %245, %247
  %249 = fadd fast float %246, %247
  %250 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %251 = fmul fast float %250, %61
  %252 = fmul fast float %250, %62
  %253 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %254 = fadd fast float %251, %253
  %255 = fadd fast float %252, %253
  %256 = add i32 %233, 0
  %257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %257, i32 0)  ; GetDimensions(handle,mipLevel)
  %259 = extractvalue %dx.types.Dimensions %258, 0
  %260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %259)  ; FirstbitLo(value)
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 1
  %263 = sub nsw i32 %262, %260
  %264 = sitofp i32 %263 to float
  %265 = fsub fast float %141, %264
  %266 = call float @dx.op.binary.f32(i32 35, float %265, float 0.000000e+00)  ; FMax(a,b)
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %257, %dx.types.Handle %43, float %248, float %249, float %220, float undef, i32 0, i32 0, i32 undef, float %266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fmul fast float %268, %208
  %270 = fadd fast float %269, %211
  %271 = add i32 %235, 0
  %272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %271, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %273 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %272, i32 0)  ; GetDimensions(handle,mipLevel)
  %274 = extractvalue %dx.types.Dimensions %273, 0
  %275 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %274)  ; FirstbitLo(value)
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 1
  %278 = sub nsw i32 %277, %275
  %279 = sitofp i32 %278 to float
  %280 = fsub fast float %141, %279
  %281 = call float @dx.op.binary.f32(i32 35, float %280, float 0.000000e+00)  ; FMax(a,b)
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %272, %dx.types.Handle %43, float %254, float %255, float %223, float undef, i32 0, i32 0, i32 undef, float %281)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fmul fast float %283, %214
  %285 = fadd fast float %284, %217
  %286 = add i32 %237, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %286, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %287, i32 0)  ; GetDimensions(handle,mipLevel)
  %289 = extractvalue %dx.types.Dimensions %288, 0
  %290 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %289)  ; FirstbitLo(value)
  %291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.i32 %291, 1
  %293 = sub nsw i32 %292, %290
  %294 = sitofp i32 %293 to float
  %295 = fsub fast float %141, %294
  %296 = call float @dx.op.binary.f32(i32 35, float %295, float 0.000000e+00)  ; FMax(a,b)
  %297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %287, %dx.types.Handle %43, float %254, float %255, float %225, float undef, i32 0, i32 0, i32 undef, float %296)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %302 = fmul fast float %301, 2.000000e+00
  %303 = fmul fast float %302, %298
  %304 = fmul fast float %302, %299
  %305 = fsub fast float %303, %301
  %306 = fsub fast float %304, %301
  %307 = fmul fast float %305, %305
  %308 = fmul fast float %306, %306
  %309 = fadd fast float %307, %308
  %310 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %311 = add i32 %239, 0
  %312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %311, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %313 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %312, i32 0)  ; GetDimensions(handle,mipLevel)
  %314 = extractvalue %dx.types.Dimensions %313, 0
  %315 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %314)  ; FirstbitLo(value)
  %316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.i32 %316, 1
  %318 = sub nsw i32 %317, %315
  %319 = sitofp i32 %318 to float
  %320 = fsub fast float %141, %319
  %321 = call float @dx.op.binary.f32(i32 35, float %320, float 0.000000e+00)  ; FMax(a,b)
  %322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %312, %dx.types.Handle %43, float %254, float %255, float %228, float undef, i32 0, i32 0, i32 undef, float %321)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = add i32 %242, 0
  %325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %325, i32 0)  ; GetDimensions(handle,mipLevel)
  %327 = extractvalue %dx.types.Dimensions %326, 0
  %328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %327)  ; FirstbitLo(value)
  %329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.i32 %329, 1
  %331 = sub nsw i32 %330, %328
  %332 = sitofp i32 %331 to float
  %333 = fsub fast float %141, %332
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %325, %dx.types.Handle %43, float %254, float %255, float %231, float undef, i32 0, i32 0, i32 undef, float %334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.i32 %337, 0
  %339 = call i32 @dx.op.binary.i32(i32 40, i32 %161, i32 %338)  ; UMin(a,b)
  %340 = mul i32 %339, 36
  %341 = add i32 %340, 4
  %342 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %165)  ; Countbits(value)
  %343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.i32 %343, 0
  %345 = icmp eq i32 %344, 32
  %346 = select i1 %345, float %54, float %141
  %347 = and i32 %344, -2
  %348 = icmp eq i32 %347, 30
  %349 = or i1 %348, %345
  br i1 %349, label %350, label %391

; <label>:350                                     ; preds = %0
  %351 = extractvalue %dx.types.ResRet.i32 %177, 0
  %352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.i32 %352, 0
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %370, label %355

; <label>:355                                     ; preds = %350
  %356 = icmp eq i32 %353, 1
  br i1 %356, label %370, label %357

; <label>:357                                     ; preds = %355
  %358 = icmp eq i32 %353, 2
  br i1 %358, label %370, label %359

; <label>:359                                     ; preds = %357
  %360 = icmp eq i32 %353, 3
  br i1 %360, label %370, label %361

; <label>:361                                     ; preds = %359
  %362 = icmp eq i32 %353, 4
  br i1 %362, label %370, label %363

; <label>:363                                     ; preds = %361
  %364 = call i32 @dx.op.binary.i32(i32 39, i32 %353, i32 6)  ; UMax(a,b)
  %365 = call i32 @dx.op.binary.i32(i32 40, i32 %364, i32 13)  ; UMin(a,b)
  %366 = shl i32 %365, 2
  %367 = add i32 %176, %366
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  br label %370

; <label>:370                                     ; preds = %363, %361, %359, %357, %355, %350
  %371 = phi i32 [ %369, %363 ], [ %351, %350 ], [ %180, %355 ], [ %183, %357 ], [ %186, %359 ], [ %189, %361 ]
  %372 = add i32 %371, 0
  %373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %372, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %374 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %373, i32 0)  ; GetDimensions(handle,mipLevel)
  %375 = extractvalue %dx.types.Dimensions %374, 0
  %376 = icmp eq i32 %375, 1
  %377 = icmp eq i32 %375, 4
  %378 = or i1 %376, %377
  br i1 %378, label %385, label %379

; <label>:379                                     ; preds = %370
  %380 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %375)  ; FirstbitLo(value)
  %381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.i32 %381, 1
  %383 = sub nsw i32 %382, %380
  %384 = call i32 @dx.op.binary.i32(i32 37, i32 %383, i32 0)  ; IMax(a,b)
  br label %385

; <label>:385                                     ; preds = %379, %370
  %386 = phi i32 [ %384, %379 ], [ -1, %370 ]
  %387 = sitofp i32 %386 to float
  %388 = icmp slt i32 %386, 0
  %389 = fsub fast float %346, %387
  %390 = select i1 %388, float 0.000000e+00, float %389
  br label %391

; <label>:391                                     ; preds = %385, %0
  %392 = phi float [ 0.000000e+00, %0 ], [ %387, %385 ]
  %393 = phi float [ 0.000000e+00, %0 ], [ %390, %385 ]
  %394 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %165)  ; FirstbitLo(value)
  %395 = shl i32 %394, 2
  %396 = add i32 %341, %395
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 32767
  %400 = mul nuw nsw i32 %399, 928
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = or i32 %400, 8
  %404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = or i32 %400, 12
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 1
  %409 = or i32 %400, 20
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = or i32 %400, 24
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = extractvalue %dx.types.ResRet.f32 %413, 3
  %418 = add nuw nsw i32 %400, 40
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = add nuw nsw i32 %400, 72
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = add nuw nsw i32 %400, 80
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = add nuw nsw i32 %400, 228
  %429 = add nuw nsw i32 %400, 516
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 1
  %432 = add nuw nsw i32 %400, 552
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 2
  %437 = add nuw nsw i32 %400, 564
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = add nuw nsw i32 %400, 580
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = add nuw nsw i32 %400, 596
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = add nuw nsw i32 %400, 620
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = add nuw nsw i32 %400, 628
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = extractvalue %dx.types.ResRet.f32 %458, 3
  %463 = add nuw nsw i32 %400, 644
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = add nuw nsw i32 %400, 648
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = add nuw nsw i32 %400, 664
  %470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = add nuw nsw i32 %400, 696
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = add nuw nsw i32 %400, 704
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = add nuw nsw i32 %400, 708
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = add nuw nsw i32 %400, 716
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = add nuw nsw i32 %400, 720
  %488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = extractvalue %dx.types.ResRet.f32 %488, 1
  %491 = add nuw nsw i32 %400, 732
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 1
  %494 = add nuw nsw i32 %400, 744
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = add nuw nsw i32 %400, 748
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = add nuw nsw i32 %400, 752
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = add nuw nsw i32 %400, 756
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = add nuw nsw i32 %400, 780
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = add nuw nsw i32 %400, 792
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = add nuw nsw i32 %400, 812
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = add nuw nsw i32 %400, 816
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 1
  %523 = add nuw nsw i32 %400, 852
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = add nuw nsw i32 %400, 860
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = add nuw nsw i32 %400, 896
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = add nuw nsw i32 %400, 900
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add nuw nsw i32 %400, 904
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add nuw nsw i32 %400, 916
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %402, 512
  %544 = fcmp fast ole float %60, 0x3FA4B5DCC0000000
  %545 = fmul fast float %60, 0x3FB3D07220000000
  %546 = fadd fast float %60, 0x3FAC28F5C0000000
  %547 = fmul fast float %546, 0x3FEE54EDE0000000
  %548 = call float @dx.op.unary.f32(i32 23, float %547)  ; Log(value)
  %549 = fmul fast float %548, 0x4003333340000000
  %550 = call float @dx.op.unary.f32(i32 21, float %549)  ; Exp(value)
  %551 = select i1 %544, float %545, float %550
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = fmul fast float %451, %323
  %554 = fadd fast float %553, %452
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = call float @dx.op.binary.f32(i32 35, float %552, float %555)  ; FMax(a,b)
  %557 = add i32 %536, 0
  %558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %557, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %559 = fmul fast float %427, %310
  %560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.i32 %560, 0
  %562 = and i32 %561, 65536
  %563 = icmp eq i32 %562, 0
  %564 = and i32 %561, 262144
  %565 = icmp ne i32 %564, 0
  %566 = and i32 %561, 1048576
  %567 = icmp ne i32 %566, 0
  br i1 %563, label %843, label %568

; <label>:568                                     ; preds = %391
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = fadd fast float %572, %117
  %575 = fadd fast float %573, %118
  %576 = fmul fast float %117, %117
  %577 = fmul fast float %118, %118
  %578 = fadd fast float %576, %577
  %579 = fmul fast float %119, %119
  %580 = fadd fast float %578, %579
  %581 = call float @dx.op.unary.f32(i32 24, float %580)  ; Sqrt(value)
  br i1 %567, label %582, label %628

; <label>:582                                     ; preds = %568
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = fcmp fast ogt float %581, %584
  %586 = zext i1 %585 to i32
  %587 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %588 = fcmp fast ogt float %581, %587
  %589 = zext i1 %588 to i32
  %590 = add nuw nsw i32 %589, %586
  %591 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %592 = fcmp fast ogt float %581, %591
  %593 = zext i1 %592 to i32
  %594 = add nuw nsw i32 %590, %593
  %595 = icmp ult i32 %594, 3
  %596 = zext i1 %595 to i32
  %597 = shl nuw nsw i32 %594, 2
  %598 = add nuw nsw i32 %597, 48
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %598)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %601 = fcmp fast ogt float %581, %600
  %602 = zext i1 %601 to i32
  %603 = or i32 %597, 1
  %604 = add nuw nsw i32 %603, 48
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %604)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %607 = fcmp fast ogt float %581, %606
  %608 = zext i1 %607 to i32
  %609 = add nuw nsw i32 %608, %602
  %610 = or i32 %597, 2
  %611 = add nuw nsw i32 %610, 48
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %611)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %614 = fcmp fast ogt float %581, %613
  %615 = zext i1 %614 to i32
  %616 = add nuw nsw i32 %609, %615
  %617 = add i32 %411, -1
  %618 = call i32 @dx.op.binary.i32(i32 40, i32 %616, i32 %617)  ; UMin(a,b)
  %619 = add i32 %597, %618
  %620 = call i32 @dx.op.binary.i32(i32 40, i32 %619, i32 12)  ; UMin(a,b)
  %621 = add i32 %620, 48
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %621)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = fcmp fast oge float %581, %623
  %625 = zext i1 %624 to i32
  %626 = call i32 @dx.op.binary.i32(i32 40, i32 %411, i32 %596)  ; UMin(a,b)
  %627 = call i32 @dx.op.binary.i32(i32 40, i32 %625, i32 %626)  ; UMin(a,b)
  br label %628

; <label>:628                                     ; preds = %582, %568
  %629 = phi i32 [ %620, %582 ], [ 0, %568 ]
  %630 = phi i32 [ %627, %582 ], [ 0, %568 ]
  %631 = fmul fast float %559, 3.906250e-03
  %632 = add i32 %630, %411
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %830, label %634

; <label>:634                                     ; preds = %628
  br label %635

; <label>:635                                     ; preds = %799, %634
  %636 = phi float [ %826, %799 ], [ 0.000000e+00, %634 ]
  %637 = phi float [ %818, %799 ], [ 0.000000e+00, %634 ]
  %638 = phi float [ %819, %799 ], [ 0.000000e+00, %634 ]
  %639 = phi i32 [ %651, %799 ], [ %629, %634 ]
  %640 = phi i32 [ %827, %799 ], [ 0, %634 ]
  %641 = add i32 %640, %639
  br i1 %567, label %642, label %650

; <label>:642                                     ; preds = %635
  %643 = and i32 %641, -4
  %644 = add i32 %643, %411
  %645 = icmp uge i32 %641, %644
  %646 = sub i32 4, %411
  %647 = select i1 %645, i32 %646, i32 0
  %648 = add i32 %647, %639
  %649 = add i32 %647, %641
  br label %650

; <label>:650                                     ; preds = %642, %635
  %651 = phi i32 [ %648, %642 ], [ %639, %635 ]
  %652 = phi i32 [ %649, %642 ], [ %641, %635 ]
  %653 = and i32 %652, 3
  %654 = select i1 %567, i32 %653, i32 %640
  %655 = lshr i32 %652, 2
  %656 = select i1 %567, i32 %655, i32 0
  %657 = add i32 %652, 32
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %657)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %661 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %662 = extractvalue %dx.types.CBufRet.f32 %658, 3
  %663 = fmul fast float %659, %581
  %664 = fadd fast float %663, %660
  %665 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %666 = fmul fast float %661, %581
  %667 = fadd fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %669 = call float @dx.op.binary.f32(i32 36, float %665, float %668)  ; FMin(a,b)
  %670 = select i1 %567, float %669, float 1.000000e+00
  %671 = mul i32 %654, 72
  %672 = add i32 %428, %671
  %673 = add i32 %672, 16
  %674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = extractvalue %dx.types.ResRet.f32 %674, 1
  %677 = extractvalue %dx.types.ResRet.f32 %674, 2
  %678 = extractvalue %dx.types.ResRet.f32 %674, 3
  %679 = add i32 %672, 36
  %680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = fmul fast float %631, %681
  %683 = add i32 %672, 56
  %684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = fmul fast float %682, %685
  %687 = extractvalue %dx.types.ResRet.f32 %684, 1
  %688 = fadd fast float %686, %687
  %689 = call float @dx.op.binary.f32(i32 35, float %688, float 0.000000e+00)  ; FMax(a,b)
  %690 = add i32 %672, 32
  %691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  br i1 %565, label %693, label %726

; <label>:693                                     ; preds = %650
  %694 = fmul fast float %681, %305
  %695 = fmul fast float %681, %306
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %698 = add i32 %672, 40
  %699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = extractvalue %dx.types.ResRet.f32 %699, 3
  %704 = fadd fast float %697, %157
  %705 = fadd fast float %704, %702
  %706 = fmul fast float %704, %701
  %707 = call float @dx.op.unary.f32(i32 29, float %706)  ; Round_z(value)
  %708 = fmul fast float %700, %707
  %709 = fsub fast float %704, %708
  %710 = fmul fast float %705, %701
  %711 = call float @dx.op.unary.f32(i32 29, float %710)  ; Round_z(value)
  %712 = fmul fast float %711, %700
  %713 = fsub fast float %705, %712
  %714 = fmul fast float %709, %694
  %715 = fmul fast float %709, %695
  %716 = fmul fast float %713, %694
  %717 = fmul fast float %713, %695
  %718 = fsub fast float %574, %714
  %719 = fsub fast float %575, %715
  %720 = fsub fast float %574, %716
  %721 = fsub fast float %575, %717
  %722 = fsub fast float %702, %709
  %723 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %724 = fmul fast float %723, %703
  %725 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  br label %726

; <label>:726                                     ; preds = %693, %650
  %727 = phi float [ %718, %693 ], [ %574, %650 ]
  %728 = phi float [ %719, %693 ], [ %575, %650 ]
  %729 = phi float [ %720, %693 ], [ %574, %650 ]
  %730 = phi float [ %721, %693 ], [ %575, %650 ]
  %731 = phi float [ %725, %693 ], [ 0.000000e+00, %650 ]
  %732 = fmul fast float %405, 4.000000e+00
  %733 = uitofp i32 %656 to float
  %734 = fadd fast float %733, %732
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %739 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %740 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %736, float* %740, align 4
  %741 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %737, float* %741, align 4
  %742 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %738, float* %742, align 4
  %743 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %739, float* %743, align 4
  %744 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 %656
  %745 = load float, float* %744, align 4, !tbaa !91, !noalias !95
  %746 = fmul fast float %745, %408
  %747 = select i1 %567, float %746, float %408
  %748 = fmul fast float %727, %675
  %749 = call float @dx.op.tertiary.f32(i32 46, float %676, float %728, float %748)  ; FMad(a,b,c)
  %750 = fmul fast float %727, %677
  %751 = call float @dx.op.tertiary.f32(i32 46, float %678, float %728, float %750)  ; FMad(a,b,c)
  %752 = add i32 %672, 8
  %753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = fadd fast float %754, %749
  %757 = fadd fast float %755, %751
  %758 = fmul fast float %756, %747
  %759 = fmul fast float %757, %747
  %760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = fmul fast float %758, %761
  %764 = fmul fast float %759, %762
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %767 = fadd fast float %763, %766
  %768 = fadd fast float %764, %766
  %769 = fmul fast float %729, %675
  %770 = call float @dx.op.tertiary.f32(i32 46, float %676, float %730, float %769)  ; FMad(a,b,c)
  %771 = fmul fast float %729, %677
  %772 = call float @dx.op.tertiary.f32(i32 46, float %678, float %730, float %771)  ; FMad(a,b,c)
  %773 = fadd fast float %754, %770
  %774 = fadd fast float %755, %772
  %775 = fmul fast float %773, %747
  %776 = fmul fast float %774, %747
  %777 = fmul fast float %775, %761
  %778 = fmul fast float %776, %762
  %779 = fadd fast float %777, %766
  %780 = fadd fast float %778, %766
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %767, float %768, float %734, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 3
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %779, float %780, float %734, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %565, label %786, label %799

; <label>:786                                     ; preds = %726
  %787 = extractvalue %dx.types.ResRet.f32 %785, 3
  %788 = extractvalue %dx.types.ResRet.f32 %785, 1
  %789 = extractvalue %dx.types.ResRet.f32 %785, 0
  %790 = fsub fast float %789, %782
  %791 = fsub fast float %788, %783
  %792 = fsub fast float %787, %784
  %793 = fmul fast float %790, %731
  %794 = fmul fast float %791, %731
  %795 = fmul fast float %792, %731
  %796 = fadd fast float %793, %782
  %797 = fadd fast float %794, %783
  %798 = fadd fast float %795, %784
  br label %799

; <label>:799                                     ; preds = %786, %726
  %800 = phi float [ %796, %786 ], [ %782, %726 ]
  %801 = phi float [ %797, %786 ], [ %783, %726 ]
  %802 = phi float [ %798, %786 ], [ %784, %726 ]
  %803 = fmul fast float %800, 2.000000e+00
  %804 = fmul fast float %801, 2.000000e+00
  %805 = fadd fast float %803, -1.000000e+00
  %806 = fadd fast float %804, -1.000000e+00
  %807 = fmul fast float %805, %675
  %808 = call float @dx.op.tertiary.f32(i32 46, float %806, float %677, float %807)  ; FMad(a,b,c)
  %809 = fmul fast float %805, %676
  %810 = call float @dx.op.tertiary.f32(i32 46, float %806, float %678, float %809)  ; FMad(a,b,c)
  %811 = fmul fast float %670, %570
  %812 = fmul fast float %811, %689
  %813 = fmul fast float %812, %692
  %814 = fmul fast float %808, %813
  %815 = fmul fast float %814, %761
  %816 = fmul fast float %810, %813
  %817 = fmul fast float %816, %762
  %818 = fadd fast float %815, %637
  %819 = fadd fast float %817, %638
  %820 = add i32 %672, 64
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = fmul fast float %822, %802
  %824 = extractvalue %dx.types.ResRet.f32 %821, 1
  %825 = fadd fast float %823, %824
  %826 = call float @dx.op.binary.f32(i32 35, float %636, float %825)  ; FMax(a,b)
  %827 = add nuw i32 %640, 1
  %828 = icmp eq i32 %827, %632
  br i1 %828, label %829, label %635

; <label>:829                                     ; preds = %799
  br label %830

; <label>:830                                     ; preds = %829, %628
  %831 = phi float [ 0.000000e+00, %628 ], [ %826, %829 ]
  %832 = phi float [ 0.000000e+00, %628 ], [ %818, %829 ]
  %833 = phi float [ 0.000000e+00, %628 ], [ %819, %829 ]
  %834 = call float @dx.op.dot3.f32(i32 55, float %832, float %833, float 1.000000e+00, float %832, float %833, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %835 = call float @dx.op.unary.f32(i32 25, float %834)  ; Rsqrt(value)
  %836 = fmul fast float %835, %832
  %837 = fmul fast float %835, %833
  %838 = fmul fast float %831, %455
  %839 = fadd fast float %838, %456
  %840 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %841 = fmul float %835, 5.000000e-01
  %842 = fadd float %841, 5.000000e-01
  br label %843

; <label>:843                                     ; preds = %830, %391
  %844 = phi float [ %836, %830 ], [ 0.000000e+00, %391 ]
  %845 = phi float [ %837, %830 ], [ 0.000000e+00, %391 ]
  %846 = phi float [ %842, %830 ], [ 5.000000e-01, %391 ]
  %847 = phi float [ %840, %830 ], [ 0.000000e+00, %391 ]
  %848 = fadd fast float %847, %556
  %849 = icmp ne i32 %411, 0
  %850 = select i1 %849, i32 2, i32 0
  %851 = fcmp fast ogt float %847, 0.000000e+00
  %852 = select i1 %851, i32 4, i32 0
  %853 = icmp ne i32 %543, 0
  %854 = icmp ne i32 %525, 0
  %855 = and i1 %853, %854
  br i1 %855, label %856, label %919

; <label>:856                                     ; preds = %843
  %857 = add i32 %525, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %864 = fadd fast float %862, %117
  %865 = fadd fast float %863, %118
  %866 = fmul fast float %864, %440
  %867 = fmul fast float %865, %440
  %868 = fmul fast float %860, %441
  %869 = fmul fast float %860, %442
  %870 = fadd fast float %866, %868
  %871 = fadd fast float %867, %869
  %872 = fmul fast float %864, %446
  %873 = fmul fast float %865, %446
  %874 = fmul fast float %860, %447
  %875 = fmul fast float %860, %448
  %876 = fadd fast float %872, %874
  %877 = fadd fast float %873, %875
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %878, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = extractvalue %dx.types.ResRet.f32 %879, 1
  %882 = extractvalue %dx.types.ResRet.f32 %879, 2
  %883 = extractvalue %dx.types.ResRet.f32 %879, 3
  %884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %878, float %876, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  %889 = fmul fast float %880, %528
  %890 = fadd fast float %889, %529
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = fadd fast float %881, %883
  %893 = fmul fast float %892, %530
  %894 = fsub fast float %893, %530
  %895 = fsub fast float %881, %883
  %896 = fmul fast float %885, %528
  %897 = fadd fast float %896, %529
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %899 = fadd fast float %886, %888
  %900 = fmul fast float %899, %530
  %901 = fsub fast float %900, %530
  %902 = fsub fast float %886, %888
  %903 = fmul fast float %894, %439
  %904 = fmul fast float %895, %439
  %905 = fmul fast float %901, %445
  %906 = fmul fast float %902, %445
  %907 = fmul fast float %882, %439
  %908 = fmul fast float %887, %445
  %909 = fmul fast float %891, %439
  %910 = fmul fast float %898, %445
  %911 = fadd fast float %910, %909
  %912 = fadd fast float %903, %844
  %913 = fadd fast float %912, %905
  %914 = fadd fast float %906, %904
  %915 = fmul fast float %914, %530
  %916 = fadd fast float %915, %845
  %917 = fadd fast float %907, 1.000000e+00
  %918 = fadd fast float %917, %908
  br label %919

; <label>:919                                     ; preds = %856, %843
  %920 = phi float [ %913, %856 ], [ %844, %843 ]
  %921 = phi float [ %916, %856 ], [ %845, %843 ]
  %922 = phi float [ %918, %856 ], [ 1.000000e+00, %843 ]
  %923 = phi float [ %911, %856 ], [ %420, %843 ]
  %924 = fmul fast float %482, %310
  %925 = fadd fast float %924, %483
  %926 = call float @dx.op.binary.f32(i32 35, float %925, float 0.000000e+00)  ; FMax(a,b)
  %927 = fmul fast float %926, %475
  %928 = fadd fast float %927, %476
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fmul fast float %929, %848
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %933 = fcmp fast oge float %930, %932
  %934 = select i1 %854, i32 8, i32 0
  %935 = shl i32 %402, 3
  %936 = and i32 %935, 16
  %937 = and i32 %402, 2
  %938 = icmp ne i32 %937, 0
  %939 = and i1 %938, %933
  %940 = select i1 %939, i32 32, i32 0
  %941 = shl i32 %402, 2
  %942 = and i32 %941, 256
  %943 = or i32 %942, %936
  %944 = or i32 %943, %850
  %945 = or i32 %944, %934
  %946 = or i32 %945, %852
  %947 = or i32 %946, %940
  %948 = and i32 %402, 514
  %949 = icmp eq i32 %948, 2
  %950 = and i1 %949, %933
  br i1 %950, label %951, label %1082

; <label>:951                                     ; preds = %919
  %952 = add i32 %186, 0
  %953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %954 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %953, i32 0)  ; GetDimensions(handle,mipLevel)
  %955 = extractvalue %dx.types.Dimensions %954, 0
  %956 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %955)  ; FirstbitLo(value)
  %957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.i32 %957, 1
  %959 = sub nsw i32 %958, %956
  %960 = sitofp i32 %959 to float
  %961 = fsub fast float %436, %960
  %962 = call float @dx.op.binary.f32(i32 35, float %961, float 0.000000e+00)  ; FMax(a,b)
  %963 = fmul fast float %431, %195
  %964 = fmul fast float %431, %196
  %965 = fmul fast float %434, %61
  %966 = fmul fast float %434, %62
  %967 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %968 = call float @dx.op.unary.f32(i32 22, float %966)  ; Frc(value)
  %969 = fmul fast float %967, 2.000000e+00
  %970 = fmul fast float %968, 2.000000e+00
  %971 = fadd fast float %969, -1.000000e+00
  %972 = fadd fast float %970, -1.000000e+00
  %973 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %974 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %975 = fsub fast float 1.000000e+00, %973
  %976 = fmul fast float %975, %974
  %977 = fsub fast float %975, %976
  %978 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %977, float* %978, align 4, !tbaa !91, !noalias !100
  %979 = fmul fast float %974, %973
  %980 = fsub fast float %973, %979
  %981 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %980, float* %981, align 4, !tbaa !91, !noalias !100
  %982 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %976, float* %982, align 4, !tbaa !91, !noalias !100
  %983 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %979, float* %983, align 4, !tbaa !91, !noalias !100
  br label %984

; <label>:984                                     ; preds = %1067, %951
  %985 = phi float [ 0.000000e+00, %951 ], [ %1068, %1067 ]
  %986 = phi float [ 0.000000e+00, %951 ], [ %1069, %1067 ]
  %987 = phi float [ 0.000000e+00, %951 ], [ %1070, %1067 ]
  %988 = phi i32 [ 0, %951 ], [ %1071, %1067 ]
  %989 = mul i32 %988, 2
  %990 = add i32 0, %989
  %991 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %990
  %992 = load float, float* %991, align 4
  %993 = mul i32 %988, 2
  %994 = add i32 1, %993
  %995 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %994
  %996 = load float, float* %995, align 4
  %997 = fmul fast float %992, 5.000000e-01
  %998 = fmul fast float %996, 5.000000e-01
  %999 = fsub fast float 1.000000e+00, %992
  %1000 = fsub fast float 1.000000e+00, %996
  %1001 = fmul fast float %999, 5.000000e-01
  %1002 = fmul fast float %1000, 5.000000e-01
  %1003 = fadd fast float %997, %965
  %1004 = fadd fast float %998, %966
  %1005 = call float @dx.op.unary.f32(i32 27, float %1003)  ; Round_ni(value)
  %1006 = call float @dx.op.unary.f32(i32 27, float %1004)  ; Round_ni(value)
  %1007 = fadd fast float %1005, %1001
  %1008 = fadd fast float %1006, %1002
  %1009 = fmul fast float %1007, %435
  %1010 = fmul fast float %1008, %435
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = fmul fast float %1009, %1012
  %1014 = fmul fast float %1010, %1012
  %1015 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1016 = fadd fast float %1013, %1015
  %1017 = fadd fast float %1014, %1015
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %953, %dx.types.Handle %46, float %1016, float %1017, float %175, float undef, i32 0, i32 0, i32 undef, float %962)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1023 = fmul fast float %1022, 2.000000e+00
  %1024 = fmul fast float %1023, %1019
  %1025 = fmul fast float %1023, %1020
  %1026 = fsub fast float %1024, %1022
  %1027 = fsub fast float %1025, %1022
  %1028 = fmul fast float %1026, %1026
  %1029 = fmul fast float %1027, %1027
  %1030 = fadd fast float %1028, %1029
  %1031 = call float @dx.op.unary.f32(i32 24, float %1030)  ; Sqrt(value)
  %1032 = fcmp fast ogt float %1031, 0.000000e+00
  %1033 = fdiv fast float 1.000000e+00, %1031
  %1034 = fmul fast float %1026, %1033
  %1035 = fmul fast float %1027, %1033
  %1036 = select i1 %1032, float %1034, float 0.000000e+00
  %1037 = select i1 %1032, float %1035, float 0.000000e+00
  %1038 = fcmp fast ogt float %848, 0.000000e+00
  %1039 = and i1 %938, %1038
  br i1 %1039, label %1040, label %1067

; <label>:1040                                    ; preds = %984
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1043 = fmul fast float %479, %431
  %1044 = fmul fast float %1043, %1031
  %1045 = fsub fast float -0.000000e+00, %1036
  %1046 = fmul fast float %1037, %963
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %964, float %1046)  ; FMad(a,b,c)
  %1048 = fmul fast float %1036, %963
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %964, float %1048)  ; FMad(a,b,c)
  %1050 = fmul fast float %1044, %1042
  %1051 = fsub fast float %1049, %1050
  %1052 = fmul fast float %1047, %471
  %1053 = fmul fast float %1051, %472
  %1054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1054, float %1052, float %1053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = fmul fast float %927, %1056
  %1058 = fadd fast float %1057, %476
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 %988
  %1061 = load float, float* %1060, align 4, !tbaa !91, !noalias !100
  %1062 = fmul fast float %1061, %1059
  %1063 = fadd fast float %1062, %985
  %1064 = fmul fast float %1062, %465
  %1065 = fadd fast float %1064, %986
  %1066 = fadd fast float %1062, %987
  br label %1067

; <label>:1067                                    ; preds = %1040, %984
  %1068 = phi float [ %1063, %1040 ], [ %985, %984 ]
  %1069 = phi float [ %1065, %1040 ], [ %986, %984 ]
  %1070 = phi float [ %1066, %1040 ], [ %987, %984 ]
  %1071 = add nuw nsw i32 %988, 1
  %1072 = icmp eq i32 %1071, 4
  br i1 %1072, label %1073, label %984, !llvm.loop !106

; <label>:1073                                    ; preds = %1067
  %1074 = fmul fast float %1070, %848
  %1075 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1074)  ; FMax(a,b)
  %1076 = fadd fast float %1068, -1.000000e+00
  %1077 = fmul fast float %1070, %1076
  %1078 = fadd fast float %1077, 1.000000e+00
  %1079 = fsub fast float %1069, %420
  %1080 = fmul fast float %1070, %1079
  %1081 = fadd fast float %1080, %420
  br label %1082

; <label>:1082                                    ; preds = %1073, %919
  %1083 = phi float [ %1075, %1073 ], [ 0.000000e+00, %919 ]
  %1084 = phi float [ %1078, %1073 ], [ 1.000000e+00, %919 ]
  %1085 = phi float [ %1081, %1073 ], [ %420, %919 ]
  %1086 = fmul fast float %515, %310
  %1087 = fadd fast float %1086, %516
  %1088 = call float @dx.op.binary.f32(i32 35, float %1087, float 0.000000e+00)  ; FMax(a,b)
  %1089 = fmul fast float %1088, %511
  %1090 = fadd fast float %1089, %512
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = fmul fast float %1091, %848
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1095 = fcmp fast oge float %1092, %1094
  %1096 = shl i32 %402, 4
  %1097 = and i32 %1096, 64
  %1098 = or i32 %947, %1097
  %1099 = and i32 %402, 4
  %1100 = icmp ne i32 %1099, 0
  %1101 = and i1 %1100, %1095
  %1102 = select i1 %1101, i32 128, i32 0
  %1103 = or i32 %1102, %1098
  br i1 %1101, label %1104, label %1280

; <label>:1104                                    ; preds = %1082
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1108 = fsub fast float %117, %195
  %1109 = fadd fast float %1108, %1106
  %1110 = fsub fast float %118, %196
  %1111 = fadd fast float %1110, %1107
  %1112 = fmul fast float %1109, %486
  %1113 = fmul fast float %1111, %486
  %1114 = fadd fast float %1112, %195
  %1115 = fadd fast float %1113, %196
  %1116 = add i32 %542, 0
  %1117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1116, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1118 = fmul fast float %1114, %493
  %1119 = fmul fast float %1115, %493
  %1120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1117, %dx.types.Handle %1120, float %1118, float %1119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = fmul fast float %1122, 2.000000e+00
  %1126 = fmul fast float %1123, 2.000000e+00
  %1127 = fadd fast float %1125, -1.000000e+00
  %1128 = fadd fast float %1126, -1.000000e+00
  %1129 = fmul fast float %1124, %489
  %1130 = fmul fast float %1129, %502
  %1131 = fmul fast float %1130, %1127
  %1132 = fmul fast float %1130, %1128
  %1133 = fsub fast float %305, %1131
  %1134 = fsub fast float %306, %1132
  %1135 = fmul fast float %1133, %499
  %1136 = fmul fast float %1134, %499
  %1137 = fadd fast float %1135, %1131
  %1138 = fadd fast float %1136, %1132
  %1139 = fmul fast float %1137, %502
  %1140 = fmul fast float %1138, %502
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 1
  %1143 = fmul fast float %502, %157
  %1144 = fadd fast float %1142, %1143
  %1145 = fadd fast float %1144, %507
  %1146 = fmul fast float %1144, %506
  %1147 = call float @dx.op.unary.f32(i32 29, float %1146)  ; Round_z(value)
  %1148 = fmul fast float %1147, %505
  %1149 = fsub fast float %1144, %1148
  %1150 = fmul fast float %1145, %506
  %1151 = call float @dx.op.unary.f32(i32 29, float %1150)  ; Round_z(value)
  %1152 = fmul fast float %1151, %505
  %1153 = fsub fast float %1145, %1152
  %1154 = fmul fast float %1139, %1149
  %1155 = fmul fast float %1140, %1149
  %1156 = fmul fast float %1139, %1153
  %1157 = fmul fast float %1140, %1153
  %1158 = fsub fast float %1114, %1154
  %1159 = fsub fast float %1115, %1155
  %1160 = fsub fast float %1114, %1156
  %1161 = fsub fast float %1115, %1157
  %1162 = fsub fast float %507, %1149
  %1163 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1164 = fmul fast float %1163, %508
  %1165 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1166 = fmul fast float %1158, %490
  %1167 = fmul fast float %1159, %490
  %1168 = fmul fast float %1160, %490
  %1169 = fmul fast float %1161, %490
  %1170 = fcmp fast ogt float %496, 0.000000e+00
  br i1 %1170, label %1171, label %1258

; <label>:1171                                    ; preds = %1104
  %1172 = fmul fast float %496, %157
  %1173 = fmul fast float %1172, 5.000000e-01
  %1174 = fadd fast float %1173, 5.000000e-01
  %1175 = call float @dx.op.unary.f32(i32 22, float %1174)  ; Frc(value)
  %1176 = call float @dx.op.unary.f32(i32 22, float %1173)  ; Frc(value)
  %1177 = call float @dx.op.unary.f32(i32 27, float %1174)  ; Round_ni(value)
  %1178 = call float @dx.op.unary.f32(i32 27, float %1173)  ; Round_ni(value)
  %1179 = fmul fast float %1177, 2.000000e+00
  %1180 = fmul fast float %1178, 2.000000e+00
  %1181 = fadd fast float %1180, 1.000000e+00
  %1182 = fsub fast float 1.000000e+00, %1175
  %1183 = fsub fast float 1.000000e+00, %1176
  %1184 = call float @dx.op.binary.f32(i32 36, float %1175, float %1182)  ; FMin(a,b)
  %1185 = call float @dx.op.binary.f32(i32 36, float %1176, float %1183)  ; FMin(a,b)
  %1186 = fmul fast float %1184, 2.000000e+00
  %1187 = fmul fast float %1185, 2.000000e+00
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1179, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = call float @dx.op.dot3.f32(i32 55, float %1179, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = call float @dx.op.dot3.f32(i32 55, float %1179, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = call float @dx.op.unary.f32(i32 13, float %1188)  ; Sin(value)
  %1192 = call float @dx.op.unary.f32(i32 13, float %1189)  ; Sin(value)
  %1193 = call float @dx.op.unary.f32(i32 13, float %1190)  ; Sin(value)
  %1194 = fmul fast float %1191, 0x40E55DD180000000
  %1195 = fmul fast float %1192, 0x40E55DD180000000
  %1196 = fmul fast float %1193, 0x40E55DD180000000
  %1197 = call float @dx.op.unary.f32(i32 22, float %1194)  ; Frc(value)
  %1198 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1199 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1200 = fmul fast float %1197, 0x401921FB60000000
  %1201 = call float @dx.op.unary.f32(i32 12, float %1200)  ; Cos(value)
  %1202 = call float @dx.op.unary.f32(i32 13, float %1200)  ; Sin(value)
  %1203 = fsub fast float -0.000000e+00, %1202
  %1204 = call float @dx.op.dot3.f32(i32 55, float %1181, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1205 = call float @dx.op.dot3.f32(i32 55, float %1181, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1206 = call float @dx.op.dot3.f32(i32 55, float %1181, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1207 = call float @dx.op.unary.f32(i32 13, float %1204)  ; Sin(value)
  %1208 = call float @dx.op.unary.f32(i32 13, float %1205)  ; Sin(value)
  %1209 = call float @dx.op.unary.f32(i32 13, float %1206)  ; Sin(value)
  %1210 = fmul fast float %1207, 0x40E55DD180000000
  %1211 = fmul fast float %1208, 0x40E55DD180000000
  %1212 = fmul fast float %1209, 0x40E55DD180000000
  %1213 = call float @dx.op.unary.f32(i32 22, float %1210)  ; Frc(value)
  %1214 = call float @dx.op.unary.f32(i32 22, float %1211)  ; Frc(value)
  %1215 = call float @dx.op.unary.f32(i32 22, float %1212)  ; Frc(value)
  %1216 = fmul fast float %1213, 0x401921FB60000000
  %1217 = call float @dx.op.unary.f32(i32 12, float %1216)  ; Cos(value)
  %1218 = call float @dx.op.unary.f32(i32 13, float %1216)  ; Sin(value)
  %1219 = fsub fast float -0.000000e+00, %1218
  %1220 = fmul fast float %1201, %1166
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1203, float %1220)  ; FMad(a,b,c)
  %1222 = fmul fast float %1202, %1166
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1201, float %1222)  ; FMad(a,b,c)
  %1224 = fadd fast float %1221, %1198
  %1225 = fadd fast float %1223, %1199
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1120, float %1224, float %1225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = fmul fast float %1227, %1186
  %1229 = fmul fast float %1217, %1166
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1219, float %1229)  ; FMad(a,b,c)
  %1231 = fmul fast float %1218, %1166
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1217, float %1231)  ; FMad(a,b,c)
  %1233 = fadd fast float %1230, %1214
  %1234 = fadd fast float %1232, %1215
  %1235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1120, float %1233, float %1234, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = fmul fast float %1236, %1187
  %1238 = fadd fast float %1237, %1228
  %1239 = fmul fast float %1201, %1168
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1203, float %1239)  ; FMad(a,b,c)
  %1241 = fmul fast float %1202, %1168
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1201, float %1241)  ; FMad(a,b,c)
  %1243 = fadd fast float %1240, %1198
  %1244 = fadd fast float %1242, %1199
  %1245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1120, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = fmul fast float %1246, %1186
  %1248 = fmul fast float %1217, %1168
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1219, float %1248)  ; FMad(a,b,c)
  %1250 = fmul fast float %1218, %1168
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1217, float %1250)  ; FMad(a,b,c)
  %1252 = fadd fast float %1249, %1214
  %1253 = fadd fast float %1251, %1215
  %1254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1120, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = fmul fast float %1255, %1187
  %1257 = fadd fast float %1256, %1247
  br label %1263

; <label>:1258                                    ; preds = %1104
  %1259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1120, float %1166, float %1167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1120, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  br label %1263

; <label>:1263                                    ; preds = %1258, %1171
  %1264 = phi float [ %1238, %1171 ], [ %1260, %1258 ]
  %1265 = phi float [ %1257, %1171 ], [ %1262, %1258 ]
  %1266 = fsub fast float %1265, %1264
  %1267 = fmul fast float %1266, %1165
  %1268 = fadd fast float %1267, %1264
  %1269 = fmul fast float %1089, %1268
  %1270 = fadd fast float %1269, %512
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fsub fast float 1.000000e+00, %1084
  %1273 = fmul fast float %1271, %1272
  %1274 = fadd fast float %1273, %1084
  %1275 = fsub fast float %465, %1085
  %1276 = fmul fast float %1271, %1275
  %1277 = fadd fast float %1276, %1085
  %1278 = fmul fast float %1271, %848
  %1279 = call float @dx.op.binary.f32(i32 35, float %1083, float %1278)  ; FMax(a,b)
  br label %1280

; <label>:1280                                    ; preds = %1263, %1082
  %1281 = phi float [ %1279, %1263 ], [ %1083, %1082 ]
  %1282 = phi float [ %1274, %1263 ], [ %1084, %1082 ]
  %1283 = phi float [ %1277, %1263 ], [ %1085, %1082 ]
  %1284 = and i32 %402, 16
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1352, label %1286

; <label>:1286                                    ; preds = %1280
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1290 = fadd fast float %1288, %117
  %1291 = fadd fast float %1289, %118
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = fsub fast float %1290, %1293
  %1296 = fsub fast float %1291, %1294
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1299 = fmul fast float %1295, %1298
  %1300 = fmul fast float %1296, %1298
  %1301 = fadd fast float %1299, 5.000000e-01
  %1302 = fadd fast float %1300, 5.000000e-01
  %1303 = fcmp fast olt float %1301, 0.000000e+00
  %1304 = fcmp fast olt float %1302, 0.000000e+00
  %1305 = or i1 %1303, %1304
  %1306 = fcmp fast oge float %1301, 1.000000e+00
  %1307 = fcmp fast oge float %1302, 1.000000e+00
  %1308 = or i1 %1306, %1307
  %1309 = or i1 %1305, %1308
  br i1 %1309, label %1343, label %1310

; <label>:1310                                    ; preds = %1286
  %1311 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1312 = fadd fast float %1311, %119
  %1313 = fmul fast float %1298, %1290
  %1314 = fmul fast float %1298, %1291
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1317 = fsub fast float %1312, %1316
  %1318 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1319 = fmul fast float %1317, %1318
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1302, float %1320)  ; FMin(a,b)
  %1322 = call float @dx.op.binary.f32(i32 36, float %1301, float %1321)  ; FMin(a,b)
  %1323 = call float @dx.op.binary.f32(i32 35, float %1302, float %1320)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1301, float %1323)  ; FMax(a,b)
  %1325 = fsub fast float 1.000000e+00, %1324
  %1326 = call float @dx.op.binary.f32(i32 36, float %1322, float %1325)  ; FMin(a,b)
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1331 = call float @dx.op.binary.f32(i32 35, float %1330, float %1328)  ; FMax(a,b)
  %1332 = fsub fast float %1331, %1330
  %1333 = fsub fast float %1326, %1330
  %1334 = fdiv fast float %1333, %1332
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fmul fast float %1335, 2.000000e+00
  %1337 = fsub fast float 3.000000e+00, %1336
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1338, %1337
  %1340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %1313, float %1314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = fmul fast float %1339, %1341
  br label %1343

; <label>:1343                                    ; preds = %1310, %1286
  %1344 = phi float [ %1342, %1310 ], [ 0.000000e+00, %1286 ]
  %1345 = fmul fast float %522, %195
  %1346 = fmul fast float %522, %196
  %1347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %1347, float %1345, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1349 = extractvalue %dx.types.ResRet.f32 %1348, 0
  %1350 = fmul fast float %1349, %1344
  %1351 = call float @dx.op.binary.f32(i32 35, float %1281, float %1350)  ; FMax(a,b)
  br label %1352

; <label>:1352                                    ; preds = %1343, %1280
  %1353 = phi float [ %1351, %1343 ], [ %1281, %1280 ]
  %1354 = fmul fast float %196, 3.906250e-03
  %1355 = fmul fast float %195, 7.812500e-03
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %558, %dx.types.Handle %1356, float %1355, float %1354, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1358 = add i32 %536, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1359, i32 0)  ; GetDimensions(handle,mipLevel)
  %1361 = extractvalue %dx.types.Dimensions %1360, 0
  %1362 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1361)  ; FirstbitLo(value)
  %1363 = uitofp i32 %1362 to float
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1368 = fadd fast float %205, -7.000000e+00
  %1369 = fadd fast float %1368, %1363
  %1370 = fadd fast float %1369, %1365
  %1371 = fadd fast float %1370, %1367
  %1372 = call float @dx.op.binary.f32(i32 35, float %1371, float 0.000000e+00)  ; FMax(a,b)
  %1373 = and i32 %402, 8
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1391, label %1375

; <label>:1375                                    ; preds = %1352
  %1376 = fadd fast float %519, 1.000000e+00
  %1377 = fmul fast float %848, %1376
  %1378 = fsub fast float %1377, %519
  %1379 = fsub fast float %1376, %1378
  %1380 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1381 = fsub fast float 1.000000e+00, %1377
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = fsub fast float %1380, %1382
  %1384 = fsub fast float %1353, %1382
  %1385 = fdiv fast float %1384, %1383
  %1386 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1387 = fmul fast float %1386, 2.000000e+00
  %1388 = fsub fast float 3.000000e+00, %1387
  %1389 = fmul fast float %1386, %1386
  %1390 = fmul fast float %1389, %1388
  br label %1391

; <label>:1391                                    ; preds = %1375, %1352
  %1392 = phi float [ %1390, %1375 ], [ %1353, %1352 ]
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1395 = fmul fast float %1394, %1392
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = and i32 %402, 32
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1415, label %1399

; <label>:1399                                    ; preds = %1391
  %1400 = add i32 %539, 0
  %1401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1400, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1401, %dx.types.Handle %45, float %1395, float %468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = extractvalue %dx.types.ResRet.f32 %1402, 3
  %1407 = and i32 %533, 255
  %1408 = uitofp i32 %1407 to float
  %1409 = lshr i32 %533, 8
  %1410 = and i32 %1409, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1406, %1408
  %1413 = fadd fast float %1412, %1411
  %1414 = fmul fast float %1413, 0x3F70101000000000
  br label %1415

; <label>:1415                                    ; preds = %1399, %1391
  %1416 = phi float [ %1403, %1399 ], [ %459, %1391 ]
  %1417 = phi float [ %1404, %1399 ], [ %460, %1391 ]
  %1418 = phi float [ %1405, %1399 ], [ %461, %1391 ]
  %1419 = phi float [ %1414, %1399 ], [ %462, %1391 ]
  %1420 = fsub fast float %1416, %414
  %1421 = fsub fast float %1417, %415
  %1422 = fsub fast float %1418, %416
  %1423 = fmul fast float %1420, %1395
  %1424 = fmul fast float %1421, %1395
  %1425 = fmul fast float %1422, %1395
  %1426 = fadd fast float %1423, %414
  %1427 = fadd fast float %1424, %415
  %1428 = fadd fast float %1425, %416
  %1429 = fsub fast float %1419, %417
  %1430 = fmul fast float %1429, %1395
  %1431 = fadd fast float %1430, %417
  %1432 = fsub fast float %1283, %923
  %1433 = fmul fast float %1395, %1432
  %1434 = fadd fast float %1433, %923
  %1435 = fsub fast float %1282, %922
  %1436 = fmul fast float %1395, %1435
  %1437 = fadd fast float %1436, %922
  %1438 = fmul fast float %423, %336
  %1439 = fadd fast float %1438, %424
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 2
  %1442 = fcmp fast oge float %1439, %1441
  %1443 = and i32 %142, 65535
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = lshr i32 %144, 16
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = fadd fast float %1426, %1444
  %1448 = fadd fast float %1427, %1446
  %1449 = fadd fast float %1428, %1444
  %1450 = fadd fast float %1431, %1446
  %1451 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1447)  ; LegacyF32ToF16(value)
  %1452 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1448)  ; LegacyF32ToF16(value)
  %1453 = shl i32 %1452, 16
  %1454 = or i32 %1453, %1451
  %1455 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1449)  ; LegacyF32ToF16(value)
  %1456 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1450)  ; LegacyF32ToF16(value)
  %1457 = shl i32 %1456, 16
  %1458 = or i32 %1457, %1455
  %1459 = fadd fast float %1437, %1444
  %1460 = fadd fast float %1434, %1446
  %1461 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1459)  ; LegacyF32ToF16(value)
  %1462 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1460)  ; LegacyF32ToF16(value)
  %1463 = shl i32 %1462, 16
  %1464 = or i32 %1463, %1461
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1469 = fadd fast float %1466, %117
  %1470 = fadd fast float %1467, %118
  %1471 = fadd fast float %1468, %119
  %1472 = call float @dx.op.unary.f32(i32 83, float %1469)  ; DerivCoarseX(value)
  %1473 = call float @dx.op.unary.f32(i32 83, float %1470)  ; DerivCoarseX(value)
  %1474 = call float @dx.op.unary.f32(i32 83, float %1471)  ; DerivCoarseX(value)
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 2
  %1477 = fmul fast float %1476, %1472
  %1478 = fmul fast float %1476, %1473
  %1479 = fmul fast float %1476, %1474
  %1480 = call float @dx.op.unary.f32(i32 84, float %1469)  ; DerivCoarseY(value)
  %1481 = call float @dx.op.unary.f32(i32 84, float %1470)  ; DerivCoarseY(value)
  %1482 = call float @dx.op.unary.f32(i32 84, float %1471)  ; DerivCoarseY(value)
  %1483 = fmul fast float %1476, %1480
  %1484 = fmul fast float %1476, %1481
  %1485 = fmul fast float %1476, %1482
  %1486 = fmul fast float %1485, %1478
  %1487 = fmul fast float %1484, %1479
  %1488 = fsub fast float %1486, %1487
  %1489 = fmul fast float %1483, %1479
  %1490 = fmul fast float %1485, %1477
  %1491 = fsub fast float %1489, %1490
  %1492 = fmul fast float %1484, %1477
  %1493 = fmul fast float %1483, %1478
  %1494 = fsub fast float %1492, %1493
  %1495 = add nuw nsw i32 %400, 832
  %1496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = add nuw nsw i32 %400, 836
  %1499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = add nuw nsw i32 %400, 920
  %1502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = add nuw nsw i32 %400, 924
  %1505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = fmul fast float %1508, %1500
  %1510 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1511 = fadd fast float %1509, %1510
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 0
  %1514 = fadd fast float %1513, %1497
  %1515 = fcmp fast ogt float %1511, 0.000000e+00
  %1516 = fcmp fast ogt float %1396, %1514
  %1517 = and i1 %1515, %1516
  br i1 %1517, label %1518, label %1593

; <label>:1518                                    ; preds = %1415
  %1519 = fmul fast float %1488, %1488
  %1520 = fmul fast float %1491, %1491
  %1521 = fadd fast float %1519, %1520
  %1522 = fmul fast float %1494, %1494
  %1523 = fadd fast float %1521, %1522
  %1524 = call float @dx.op.unary.f32(i32 24, float %1523)  ; Sqrt(value)
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1527 = fmul fast float %1469, 7.000000e+00
  %1528 = fadd fast float %1527, 9.175040e+05
  %1529 = fmul fast float %1470, 9.000000e+00
  %1530 = fadd fast float %1529, 1.179648e+06
  %1531 = fmul fast float %1526, 1.370000e+02
  %1532 = bitcast float %1528 to i32
  %1533 = bitcast float %1530 to i32
  %1534 = bitcast float %1531 to i32
  %1535 = shl i32 %1533, 17
  %1536 = xor i32 %1535, %1532
  %1537 = xor i32 %1536, %1534
  %1538 = xor i32 %1537, 61
  %1539 = lshr i32 %1537, 16
  %1540 = xor i32 %1538, %1539
  %1541 = mul i32 %1540, 9
  %1542 = lshr i32 %1541, 4
  %1543 = xor i32 %1542, %1541
  %1544 = mul i32 %1543, 668265261
  %1545 = lshr i32 %1544, 15
  %1546 = xor i32 %1545, %1544
  %1547 = uitofp i32 %1546 to float
  %1548 = fmul fast float %1547, 0x3DF0000000000000
  %1549 = fmul fast float %1524, %1511
  %1550 = fcmp fast ugt float %1548, %1549
  br i1 %1550, label %1593, label %1551

; <label>:1551                                    ; preds = %1518
  %1552 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1553 = add i32 %1552, 6
  %1554 = icmp ugt i32 %1553, 4095
  br i1 %1554, label %1555, label %1558

; <label>:1555                                    ; preds = %1551
  %1556 = icmp ult i32 %1552, 4096
  br i1 %1556, label %1557, label %1558

; <label>:1557                                    ; preds = %1555
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1552, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1558

; <label>:1558                                    ; preds = %1557, %1555, %1551
  %1559 = phi i32 [ %1552, %1551 ], [ 0, %1557 ], [ 0, %1555 ]
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1593, label %1561

; <label>:1561                                    ; preds = %1558
  %1562 = fsub fast float %1471, %270
  %1563 = shl nuw nsw i32 %399, 16
  %1564 = or i32 %1563, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1559, i32 0, i32 %1564, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1565 = bitcast float %1562 to i32
  %1566 = add i32 %1559, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1566, i32 0, i32 %1565, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1567 = bitcast float %1469 to i32
  %1568 = add i32 %1559, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1568, i32 0, i32 %1567, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1569 = bitcast float %1470 to i32
  %1570 = add i32 %1559, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1570, i32 0, i32 %1569, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1571 = bitcast float %1471 to i32
  %1572 = add i32 %1559, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1572, i32 0, i32 %1571, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1573 = fadd fast float %79, 1.000000e+00
  %1574 = fadd fast float %81, 1.000000e+00
  %1575 = fadd fast float %83, 1.000000e+00
  %1576 = fmul fast float %1573, 5.000000e-01
  %1577 = fmul fast float %1574, 5.000000e-01
  %1578 = fmul fast float %1575, 5.000000e-01
  %1579 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1580 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1581 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1582 = fmul fast float %1579, 1.023000e+03
  %1583 = fmul fast float %1580, 1.023000e+03
  %1584 = fmul fast float %1581, 1.023000e+03
  %1585 = fptoui float %1582 to i32
  %1586 = fptoui float %1583 to i32
  %1587 = fptoui float %1584 to i32
  %1588 = shl i32 %1586, 10
  %1589 = or i32 %1588, %1585
  %1590 = shl i32 %1587, 20
  %1591 = or i32 %1589, %1590
  %1592 = add i32 %1559, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1592, i32 0, i32 %1591, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1593

; <label>:1593                                    ; preds = %1561, %1558, %1518, %1415
  %1594 = phi i32 [ 1, %1561 ], [ 1, %1558 ], [ 1, %1518 ], [ 0, %1415 ]
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1597 = fmul fast float %1596, 0x3FE3C6EF40000000
  %1598 = frem fast float %73, 2.560000e+02
  %1599 = frem fast float %74, 2.560000e+02
  %1600 = fptoui float %1598 to i32
  %1601 = fptoui float %1599 to i32
  %1602 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %1600, i32 %1601, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = fadd fast float %1603, %1597
  %1606 = fadd fast float %1604, %1597
  %1607 = call float @dx.op.unary.f32(i32 22, float %1605)  ; Frc(value)
  %1608 = call float @dx.op.unary.f32(i32 22, float %1606)  ; Frc(value)
  %1609 = fcmp fast ogt float %83, 0.000000e+00
  %1610 = fcmp fast olt float %83, 0.000000e+00
  %1611 = zext i1 %1609 to i32
  %1612 = zext i1 %1610 to i32
  %1613 = sub nsw i32 %1611, %1612
  %1614 = sitofp i32 %1613 to float
  %1615 = fadd fast float %1614, %83
  %1616 = fdiv fast float -1.000000e+00, %1615
  %1617 = fmul fast float %79, %81
  %1618 = fmul fast float %1617, %1616
  %1619 = fmul fast float %79, %79
  %1620 = fmul fast float %1619, %1614
  %1621 = fmul fast float %1620, %1616
  %1622 = fadd fast float %1621, 1.000000e+00
  %1623 = fmul fast float %1618, %1614
  %1624 = fmul fast float %1614, %79
  %1625 = fsub fast float -0.000000e+00, %1624
  %1626 = fmul fast float %81, %81
  %1627 = fmul fast float %1626, %1616
  %1628 = fadd fast float %1627, %1614
  %1629 = fsub fast float -0.000000e+00, %81
  %1630 = and i32 %1451, 65535
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = lshr i32 %1454, 16
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = and i32 %1455, 65535
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = lshr i32 %1458, 16
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = and i32 %1461, 65535
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = lshr i32 %1464, 16
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1644 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1645 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1646 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1647 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1648 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1649 = fadd fast float %1643, %117
  %1650 = fadd fast float %1644, %118
  %1651 = fadd fast float %1645, %119
  %1652 = fadd fast float %1646, %117
  %1653 = fadd fast float %1647, %118
  %1654 = fadd fast float %1648, %119
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.CBufRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 2
  %1661 = extractvalue %dx.types.CBufRet.f32 %1659, 3
  %1662 = fmul fast float %1656, %73
  %1663 = fmul fast float %1662, %1660
  %1664 = fmul fast float %1657, %74
  %1665 = fmul fast float %1664, %1661
  %1666 = fptoui float %1663 to i32
  %1667 = fptoui float %1665 to i32
  %1668 = fadd fast float %1656, -1.000000e+00
  %1669 = fadd fast float %1657, -1.000000e+00
  %1670 = fptoui float %1668 to i32
  %1671 = fptoui float %1669 to i32
  %1672 = call i32 @dx.op.binary.i32(i32 40, i32 %1666, i32 %1670)  ; UMin(a,b)
  %1673 = call i32 @dx.op.binary.i32(i32 40, i32 %1667, i32 %1671)  ; UMin(a,b)
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 2
  %1676 = extractvalue %dx.types.CBufRet.f32 %1674, 3
  %1677 = fmul fast float %1675, %69
  %1678 = fsub fast float %1677, %1676
  %1679 = fadd fast float %1658, -1.000000e+00
  %1680 = call float @dx.op.binary.f32(i32 36, float %1678, float %1679)  ; FMin(a,b)
  %1681 = fptoui float %1680 to i32
  %1682 = fptoui float %1656 to i32
  %1683 = fptoui float %1657 to i32
  %1684 = mul i32 %1681, %1683
  %1685 = add i32 %1684, %1673
  %1686 = mul i32 %1685, %1682
  %1687 = add i32 %1686, %1672
  %1688 = shl i32 %1687, 2
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = and i32 %1690, 1023
  %1692 = lshr i32 %1690, 10
  %1693 = icmp eq i32 %1691, 0
  br i1 %1693, label %2090, label %1694

; <label>:1694                                    ; preds = %1593
  %1695 = and i32 %1690, 1023
  br label %1696

; <label>:1696                                    ; preds = %1817, %1694
  %1697 = phi float [ %1818, %1817 ], [ 0.000000e+00, %1694 ]
  %1698 = phi float [ %1819, %1817 ], [ 0.000000e+00, %1694 ]
  %1699 = phi float [ %1820, %1817 ], [ 0.000000e+00, %1694 ]
  %1700 = phi float [ %1821, %1817 ], [ %920, %1694 ]
  %1701 = phi float [ %1822, %1817 ], [ %921, %1694 ]
  %1702 = phi float [ %1823, %1817 ], [ %1639, %1694 ]
  %1703 = phi float [ %1824, %1817 ], [ %1642, %1694 ]
  %1704 = phi float [ %1825, %1817 ], [ 0.000000e+00, %1694 ]
  %1705 = phi float [ %1826, %1817 ], [ %1637, %1694 ]
  %1706 = phi float [ %1827, %1817 ], [ %1631, %1694 ]
  %1707 = phi float [ %1828, %1817 ], [ %1633, %1694 ]
  %1708 = phi float [ %1829, %1817 ], [ %1635, %1694 ]
  %1709 = phi i32 [ %1830, %1817 ], [ 0, %1694 ]
  %1710 = phi i32 [ %1766, %1817 ], [ 0, %1694 ]
  %1711 = add nuw nsw i32 %1710, %1692
  %1712 = shl i32 %1711, 2
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = shl i32 %1714, 8
  %1716 = or i32 %1715, 48
  %1717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.ResRet.f32 %1717, 3
  %1722 = or i32 %1715, 64
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.i32 %1723, 1
  %1726 = or i32 %1715, 80
  %1727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 2
  %1729 = extractvalue %dx.types.ResRet.f32 %1727, 3
  %1730 = or i32 %1715, 96
  %1731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1730, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.ResRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.ResRet.f32 %1731, 2
  %1735 = extractvalue %dx.types.ResRet.f32 %1731, 3
  %1736 = or i32 %1715, 112
  %1737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 2
  %1739 = or i32 %1715, 128
  %1740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.ResRet.f32 %1740, 2
  %1744 = extractvalue %dx.types.ResRet.f32 %1740, 3
  %1745 = or i32 %1715, 144
  %1746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = extractvalue %dx.types.ResRet.f32 %1746, 3
  %1751 = or i32 %1715, 160
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.ResRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.ResRet.f32 %1752, 2
  %1756 = or i32 %1715, 192
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = or i32 %1715, 208
  %1760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = or i32 %1715, 248
  %1763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = add nuw nsw i32 %1710, 1
  %1767 = bitcast float %1721 to i32
  %1768 = and i32 %1767, 512
  %1769 = icmp ne i32 %1768, 0
  %1770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1775 = call float @dx.op.dot4.f32(i32 56, float %1771, float %1772, float %1773, float %1774, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1776 = or i32 %1715, 16
  %1777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.ResRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.ResRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.ResRet.f32 %1777, 3
  %1782 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1783 = or i32 %1715, 32
  %1784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.f32 %1784, 0
  %1786 = extractvalue %dx.types.ResRet.f32 %1784, 1
  %1787 = extractvalue %dx.types.ResRet.f32 %1784, 2
  %1788 = extractvalue %dx.types.ResRet.f32 %1784, 3
  %1789 = call float @dx.op.dot4.f32(i32 56, float %1785, float %1786, float %1787, float %1788, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1790 = call float @dx.op.unary.f32(i32 27, float %1775)  ; Round_ni(value)
  %1791 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1792 = call float @dx.op.unary.f32(i32 27, float %1782)  ; Round_ni(value)
  %1793 = call float @dx.op.unary.f32(i32 6, float %1792)  ; FAbs(value)
  %1794 = call float @dx.op.unary.f32(i32 6, float %1789)  ; FAbs(value)
  %1795 = call float @dx.op.unary.f32(i32 27, float %1794)  ; Round_ni(value)
  %1796 = fadd fast float %1793, %1791
  %1797 = fadd fast float %1796, %1795
  %1798 = fcmp fast oeq float %1797, 0.000000e+00
  %1799 = call float @dx.op.dot4.f32(i32 56, float %1771, float %1772, float %1773, float %1774, float %1649, float %1650, float %1651, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1800 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %1649, float %1650, float %1651, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1801 = call float @dx.op.dot4.f32(i32 56, float %1771, float %1772, float %1773, float %1774, float %1652, float %1653, float %1654, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1802 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %1652, float %1653, float %1654, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1803 = fsub fast float %1799, %1775
  %1804 = fsub fast float %1801, %1775
  %1805 = fsub fast float %1800, %1782
  %1806 = fsub fast float %1802, %1782
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1718, float %1719, float %1720, float %79, float %81, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1810 = call float @dx.op.unary.f32(i32 6, float %1807)  ; FAbs(value)
  %1811 = fadd fast float %1810, %1809
  %1812 = call float @dx.op.unary.f32(i32 7, float %1811)  ; Saturate(value)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1808, 0
  %1814 = fcmp fast ogt float %1812, %1813
  %1815 = and i1 %1798, %1814
  %1816 = and i1 %1769, %1815
  br i1 %1816, label %1832, label %1817

; <label>:1817                                    ; preds = %2076, %1914, %1832, %1696
  %1818 = phi float [ %1697, %1832 ], [ %1697, %1914 ], [ %2086, %2076 ], [ %1697, %1696 ]
  %1819 = phi float [ %1698, %1832 ], [ %1698, %1914 ], [ %2087, %2076 ], [ %1698, %1696 ]
  %1820 = phi float [ %1699, %1832 ], [ %1699, %1914 ], [ %2088, %2076 ], [ %1699, %1696 ]
  %1821 = phi float [ %1700, %1832 ], [ %1700, %1914 ], [ %2050, %2076 ], [ %1700, %1696 ]
  %1822 = phi float [ %1701, %1832 ], [ %1701, %1914 ], [ %2051, %2076 ], [ %1701, %1696 ]
  %1823 = phi float [ %1702, %1832 ], [ %1702, %1914 ], [ %2045, %2076 ], [ %1702, %1696 ]
  %1824 = phi float [ %1703, %1832 ], [ %1703, %1914 ], [ %2042, %2076 ], [ %1703, %1696 ]
  %1825 = phi float [ %1704, %1832 ], [ %1704, %1914 ], [ %2039, %2076 ], [ %1704, %1696 ]
  %1826 = phi float [ %1705, %1832 ], [ %1705, %1914 ], [ %2037, %2076 ], [ %1705, %1696 ]
  %1827 = phi float [ %1706, %1832 ], [ %1706, %1914 ], [ %2032, %2076 ], [ %1706, %1696 ]
  %1828 = phi float [ %1707, %1832 ], [ %1707, %1914 ], [ %2033, %2076 ], [ %1707, %1696 ]
  %1829 = phi float [ %1708, %1832 ], [ %1708, %1914 ], [ %2034, %2076 ], [ %1708, %1696 ]
  %1830 = phi i32 [ %1840, %1832 ], [ %1840, %1914 ], [ %1840, %2076 ], [ %1709, %1696 ]
  %1831 = icmp eq i32 %1766, %1695
  br i1 %1831, label %2089, label %1696

; <label>:1832                                    ; preds = %1696
  %1833 = extractvalue %dx.types.ResRet.f32 %1737, 3
  %1834 = extractvalue %dx.types.ResRet.f32 %1737, 1
  %1835 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1836 = extractvalue %dx.types.ResRet.f32 %1727, 1
  %1837 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1838 = extractvalue %dx.types.ResRet.i32 %1723, 3
  %1839 = extractvalue %dx.types.ResRet.i32 %1723, 2
  %1840 = add i32 %1709, 1
  %1841 = add i32 %1838, 0
  %1842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1841, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1844 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1842, %dx.types.Handle %1843, float %1775, float %1782, float undef, float undef, i32 0, i32 0, i32 undef, float %1803, float %1805, float undef, float %1804, float %1806, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = fmul fast float %1845, %1837
  %1847 = fadd fast float %1846, %1836
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1849 = fmul fast float %1775, %1732
  %1850 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1782, float %1849)  ; FMad(a,b,c)
  %1851 = fadd fast float %1850, %1835
  %1852 = fmul fast float %1775, %1734
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1782, float %1852)  ; FMad(a,b,c)
  %1854 = fadd fast float %1853, %1834
  %1855 = fmul fast float %1803, %1732
  %1856 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1805, float %1855)  ; FMad(a,b,c)
  %1857 = fmul fast float %1803, %1734
  %1858 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1805, float %1857)  ; FMad(a,b,c)
  %1859 = fmul fast float %1804, %1732
  %1860 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1806, float %1859)  ; FMad(a,b,c)
  %1861 = fmul fast float %1804, %1734
  %1862 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1806, float %1861)  ; FMad(a,b,c)
  %1863 = add i32 %1839, 0
  %1864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1863, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1865 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1864, %dx.types.Handle %1843, float %1851, float %1854, float undef, float undef, i32 0, i32 0, i32 undef, float %1856, float %1858, float undef, float %1860, float %1862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = and i32 %1767, 1024
  %1868 = icmp ne i32 %1867, 0
  %1869 = fcmp fast ogt float %1866, 0x3FE0101020000000
  %1870 = uitofp i1 %1869 to float
  %1871 = select i1 %1868, float %1870, float %1866
  %1872 = and i32 %1767, 8192
  %1873 = icmp ne i32 %1872, 0
  %1874 = select i1 %1873, float %1833, float 1.000000e+00
  %1875 = fmul fast float %1775, 2.000000e+00
  %1876 = fadd fast float %1875, -1.000000e+00
  %1877 = call float @dx.op.unary.f32(i32 6, float %1876)  ; FAbs(value)
  %1878 = fmul fast float %1877, %1764
  %1879 = fsub fast float %1878, %1764
  %1880 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1881 = fmul fast float %1782, 2.000000e+00
  %1882 = fadd fast float %1881, -1.000000e+00
  %1883 = call float @dx.op.unary.f32(i32 6, float %1882)  ; FAbs(value)
  %1884 = fmul fast float %1883, %1765
  %1885 = fsub fast float %1884, %1765
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1887 = fmul fast float %1794, %1728
  %1888 = fsub fast float %1887, %1728
  %1889 = call float @dx.op.unary.f32(i32 7, float %1888)  ; Saturate(value)
  %1890 = fmul fast float %1848, %1874
  %1891 = fmul fast float %1890, %1845
  %1892 = fmul fast float %1891, %1880
  %1893 = fmul fast float %1892, %1871
  %1894 = fmul fast float %1893, %1886
  %1895 = fmul fast float %1894, %1889
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 1
  %1898 = extractvalue %dx.types.CBufRet.f32 %1896, 0
  %1899 = fsub fast float %1812, %1898
  %1900 = fmul fast float %1899, %1897
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1902 = fmul fast float %1895, %1729
  %1903 = fadd fast float %1895, %1729
  %1904 = fmul fast float %1903, %1738
  %1905 = fsub fast float %1904, %1738
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1907 = and i32 %1767, 128
  %1908 = icmp ne i32 %1907, 0
  %1909 = select i1 %1908, float %1906, float %1902
  %1910 = fmul fast float %1909, %1901
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = fcmp fast ugt float %1910, %1912
  br i1 %1913, label %1914, label %1817

; <label>:1914                                    ; preds = %1832
  br i1 %1873, label %1817, label %1915

; <label>:1915                                    ; preds = %1914
  %1916 = and i32 %1767, 4
  %1917 = and i32 %1767, 8
  %1918 = add i32 %1724, 0
  %1919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1918, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1921 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1919, %dx.types.Handle %1920, float %1851, float %1854, float undef, float undef, i32 0, i32 0, i32 undef, float %1856, float %1858, float undef, float %1860, float %1862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.ResRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.ResRet.f32 %1921, 2
  %1925 = extractvalue %dx.types.ResRet.f32 %1921, 3
  %1926 = bitcast float %1750 to i32
  %1927 = and i32 %1926, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = lshr i32 %1926, 8
  %1930 = and i32 %1929, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = fmul fast float %1925, %1928
  %1933 = fadd fast float %1932, %1931
  %1934 = fmul fast float %1933, 0x3F70101000000000
  %1935 = add i32 %1725, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1935, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1936, %dx.types.Handle %1920, float %1851, float %1854, float undef, float undef, i32 0, i32 0, i32 undef, float %1856, float %1858, float undef, float %1860, float %1862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.ResRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.ResRet.f32 %1937, 2
  %1941 = extractvalue %dx.types.ResRet.f32 %1937, 3
  %1942 = bitcast float %1744 to i32
  %1943 = and i32 %1942, 255
  %1944 = uitofp i32 %1943 to float
  %1945 = lshr i32 %1942, 8
  %1946 = and i32 %1945, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = lshr i32 %1942, 16
  %1949 = and i32 %1948, 255
  %1950 = uitofp i32 %1949 to float
  %1951 = fmul fast float %1950, 0x3F70101000000000
  %1952 = fmul fast float %1938, %1944
  %1953 = fadd fast float %1952, %1947
  %1954 = fmul fast float %1953, 0x3F70101000000000
  %1955 = fadd fast float %1939, -5.000000e-01
  %1956 = fadd fast float %1941, -5.000000e-01
  %1957 = fmul fast float %1955, %1951
  %1958 = fmul fast float %1956, %1951
  %1959 = fadd fast float %1957, 5.000000e-01
  %1960 = fadd fast float %1958, 5.000000e-01
  %1961 = fmul fast float %1922, %1753
  %1962 = fmul fast float %1923, %1754
  %1963 = fmul fast float %1924, %1755
  %1964 = fmul fast float %1959, 2.000000e+00
  %1965 = fadd fast float %1964, -1.000000e+00
  %1966 = fmul fast float %1960, 2.000000e+00
  %1967 = fadd fast float %1966, -1.000000e+00
  %1968 = fadd fast float %1965, %1967
  %1969 = fmul fast float %1968, 5.000000e-01
  %1970 = fsub fast float %1965, %1967
  %1971 = fmul fast float %1970, 5.000000e-01
  %1972 = call float @dx.op.unary.f32(i32 6, float %1969)  ; FAbs(value)
  %1973 = fsub fast float 1.000000e+00, %1972
  %1974 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1975 = fsub fast float %1973, %1974
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1971, float %1975, float %1969, float %1971, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.unary.f32(i32 25, float %1976)  ; Rsqrt(value)
  %1978 = fmul fast float %1969, %1977
  %1979 = fmul fast float %1971, %1977
  %1980 = fmul fast float %1977, %1975
  %1981 = fmul fast float %1980, %1718
  %1982 = fmul fast float %1980, %1719
  %1983 = fmul fast float %1980, %1720
  %1984 = fmul fast float %1978, %1741
  %1985 = fmul fast float %1978, %1742
  %1986 = fmul fast float %1978, %1743
  %1987 = fadd fast float %1984, %1981
  %1988 = fadd fast float %1985, %1982
  %1989 = fadd fast float %1986, %1983
  %1990 = fmul fast float %1979, %1747
  %1991 = fmul fast float %1979, %1748
  %1992 = fmul fast float %1979, %1749
  %1993 = fadd fast float %1987, %1990
  %1994 = fadd fast float %1988, %1991
  %1995 = fadd fast float %1989, %1992
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1993, float %1994, float %1995, float %1993, float %1994, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = call float @dx.op.unary.f32(i32 25, float %1996)  ; Rsqrt(value)
  %1998 = fmul fast float %1993, %1997
  %1999 = fmul fast float %1994, %1997
  %2000 = fmul fast float %1995, %1997
  %2001 = fcmp fast ogt float %1807, %1813
  %2002 = fsub fast float -0.000000e+00, %1998
  %2003 = fsub fast float -0.000000e+00, %1999
  %2004 = fsub fast float -0.000000e+00, %2000
  %2005 = select i1 %2001, float %1998, float %2002
  %2006 = select i1 %2001, float %1999, float %2003
  %2007 = select i1 %2001, float %2000, float %2004
  %2008 = fmul fast float %2005, %1622
  %2009 = call float @dx.op.tertiary.f32(i32 46, float %2006, float %1623, float %2008)  ; FMad(a,b,c)
  %2010 = call float @dx.op.tertiary.f32(i32 46, float %2007, float %1625, float %2009)  ; FMad(a,b,c)
  %2011 = fmul fast float %2005, %1618
  %2012 = call float @dx.op.tertiary.f32(i32 46, float %2006, float %1628, float %2011)  ; FMad(a,b,c)
  %2013 = call float @dx.op.tertiary.f32(i32 46, float %2007, float %1629, float %2012)  ; FMad(a,b,c)
  %2014 = icmp ne i32 %1917, 0
  %2015 = select i1 %2014, float 1.000000e+00, float 0.000000e+00
  %2016 = fmul fast float %1910, %2015
  %2017 = and i32 %1767, 1
  %2018 = icmp ne i32 %2017, 0
  %2019 = fadd fast float %2010, %1700
  %2020 = fadd fast float %2013, %1701
  %2021 = select i1 %2018, float %2019, float %2010
  %2022 = select i1 %2018, float %2020, float %2013
  %2023 = icmp ne i32 %1916, 0
  %2024 = select i1 %2023, float 1.000000e+00, float 0.000000e+00
  %2025 = fmul fast float %1910, %2024
  %2026 = fsub fast float %1961, %1706
  %2027 = fsub fast float %1962, %1707
  %2028 = fsub fast float %1963, %1708
  %2029 = fmul fast float %2026, %2025
  %2030 = fmul fast float %2027, %2025
  %2031 = fmul fast float %2028, %2025
  %2032 = fadd fast float %2029, %1706
  %2033 = fadd fast float %2030, %1707
  %2034 = fadd fast float %2031, %1708
  %2035 = fsub fast float %1934, %1705
  %2036 = fmul fast float %2035, %2025
  %2037 = fadd fast float %2036, %1705
  %2038 = fadd fast float %1910, %1704
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = fsub fast float %1954, %1703
  %2041 = fmul fast float %2040, %2016
  %2042 = fadd fast float %2041, %1703
  %2043 = fsub fast float %1940, %1702
  %2044 = fmul fast float %2043, %2016
  %2045 = fadd fast float %2044, %1702
  %2046 = fsub fast float %2021, %1700
  %2047 = fsub fast float %2022, %1701
  %2048 = fmul fast float %2046, %2016
  %2049 = fmul fast float %2047, %2016
  %2050 = fadd fast float %2048, %1700
  %2051 = fadd fast float %2049, %1701
  %2052 = and i32 %1767, 16
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %2076, label %2054

; <label>:2054                                    ; preds = %1915
  %2055 = bitcast float %1761 to i32
  %2056 = add i32 %1758, 0
  %2057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2056, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2058 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2057, %dx.types.Handle %1920, float %1851, float %1854, float undef, float undef, i32 0, i32 0, i32 undef, float %1856, float %1858, float undef, float %1860, float %1862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = and i32 %2055, 65535
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = fmul fast float %2059, %1753
  %2065 = fmul fast float %2060, %1754
  %2066 = fmul fast float %2061, %1755
  %2067 = and i32 %1767, 16384
  %2068 = icmp ne i32 %2067, 0
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = select i1 %2068, float %2070, float 1.000000e+00
  %2072 = fmul fast float %2071, %2063
  %2073 = fmul fast float %2064, %2072
  %2074 = fmul fast float %2065, %2072
  %2075 = fmul fast float %2066, %2072
  br label %2076

; <label>:2076                                    ; preds = %2054, %1915
  %2077 = phi float [ %2073, %2054 ], [ 0.000000e+00, %1915 ]
  %2078 = phi float [ %2074, %2054 ], [ 0.000000e+00, %1915 ]
  %2079 = phi float [ %2075, %2054 ], [ 0.000000e+00, %1915 ]
  %2080 = fsub fast float %2077, %1697
  %2081 = fsub fast float %2078, %1698
  %2082 = fsub fast float %2079, %1699
  %2083 = fmul fast float %2080, %1910
  %2084 = fmul fast float %2081, %1910
  %2085 = fmul fast float %2082, %1910
  %2086 = fadd fast float %2083, %1697
  %2087 = fadd fast float %2084, %1698
  %2088 = fadd fast float %2085, %1699
  br label %1817

; <label>:2089                                    ; preds = %1817
  br label %2090

; <label>:2090                                    ; preds = %2089, %1593
  %2091 = phi float [ 0.000000e+00, %1593 ], [ %1818, %2089 ]
  %2092 = phi float [ 0.000000e+00, %1593 ], [ %1819, %2089 ]
  %2093 = phi float [ 0.000000e+00, %1593 ], [ %1820, %2089 ]
  %2094 = phi float [ %920, %1593 ], [ %1821, %2089 ]
  %2095 = phi float [ %921, %1593 ], [ %1822, %2089 ]
  %2096 = phi float [ %1639, %1593 ], [ %1823, %2089 ]
  %2097 = phi float [ %1642, %1593 ], [ %1824, %2089 ]
  %2098 = phi float [ 0.000000e+00, %1593 ], [ %1825, %2089 ]
  %2099 = phi float [ %1637, %1593 ], [ %1826, %2089 ]
  %2100 = phi float [ %1631, %1593 ], [ %1827, %2089 ]
  %2101 = phi float [ %1633, %1593 ], [ %1828, %2089 ]
  %2102 = phi float [ %1635, %1593 ], [ %1829, %2089 ]
  %2103 = phi i32 [ 0, %1593 ], [ %1830, %2089 ]
  %2104 = uitofp i32 %2103 to float
  %2105 = fptoui float %2104 to i32
  %2106 = shl i32 %2105, 16
  %2107 = and i32 %2106, 16711680
  %2108 = call float @dx.op.dot2.f32(i32 54, float %2094, float %2095, float %2094, float %2095)  ; Dot2(ax,ay,bx,by)
  %2109 = fmul fast float %2108, 0x3FE3333340000000
  %2110 = fsub fast float 1.000000e+00, %2109
  %2111 = call float @dx.op.dot3.f32(i32 55, float %2094, float %2095, float %2110, float %2094, float %2095, float %2110)  ; Dot3(ax,ay,az,bx,by,bz)
  %2112 = call float @dx.op.unary.f32(i32 25, float %2111)  ; Rsqrt(value)
  %2113 = fmul fast float %2112, %2094
  %2114 = fmul fast float %2112, %2095
  %2115 = fmul fast float %2110, %2112
  %2116 = fmul fast float %2115, %79
  %2117 = fmul fast float %2115, %81
  %2118 = fmul fast float %2115, %83
  %2119 = fmul fast float %2113, %1622
  %2120 = fmul fast float %2113, %1623
  %2121 = fmul fast float %2113, %1625
  %2122 = fadd fast float %2116, %2119
  %2123 = fadd fast float %2117, %2120
  %2124 = fadd fast float %2118, %2121
  %2125 = fmul fast float %2114, %1618
  %2126 = fmul fast float %2114, %1628
  %2127 = fmul fast float %2114, %1629
  %2128 = fadd fast float %2122, %2125
  %2129 = fadd fast float %2123, %2126
  %2130 = fadd fast float %2124, %2127
  %2131 = call float @dx.op.dot3.f32(i32 55, float %2128, float %2129, float %2130, float %2128, float %2129, float %2130)  ; Dot3(ax,ay,az,bx,by,bz)
  %2132 = call float @dx.op.unary.f32(i32 25, float %2131)  ; Rsqrt(value)
  %2133 = fmul fast float %2128, %2132
  %2134 = fmul fast float %2129, %2132
  %2135 = fmul fast float %2130, %2132
  %2136 = fadd fast float %2099, 0xBFB99999A0000000
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fmul fast float %2137, 0x3FF1C71C80000000
  %2139 = call float @dx.op.binary.f32(i32 36, float %2099, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2140 = fsub fast float 1.000000e+00, %2138
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = fmul fast float %2141, %2100
  %2143 = fmul fast float %2141, %2101
  %2144 = fmul fast float %2141, %2102
  %2145 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2146 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2147 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2148 = fmul fast float %2138, %2100
  %2149 = fmul fast float %2138, %2101
  %2150 = fmul fast float %2138, %2102
  %2151 = fadd fast float %2148, %2139
  %2152 = fadd fast float %2149, %2139
  %2153 = fadd fast float %2150, %2139
  %2154 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2155 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2156 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2157 = fmul fast float %2155, 0x401CF23780000000
  %2158 = fadd fast float %2157, 0x3FF32641C0000000
  %2159 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2160 = call float @dx.op.unary.f32(i32 25, float %2159)  ; Rsqrt(value)
  %2161 = fmul fast float %2160, %117
  %2162 = fmul fast float %2160, %118
  %2163 = fmul fast float %2160, %119
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 0
  %2166 = fdiv fast float 1.000000e+00, %2158
  %2167 = select i1 %58, float %2166, float %2158
  %2168 = fadd fast float %2167, -1.000000e+00
  %2169 = fadd fast float %2167, 1.000000e+00
  %2170 = fdiv fast float %2168, %2169
  %2171 = fmul fast float %2170, %2170
  %2172 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %2173 = select i1 %58, float 0.000000e+00, float %2165
  %2174 = fadd fast float %2172, %2173
  %2175 = call float @dx.op.binary.f32(i32 35, float %2174, float -1.000000e+00)  ; FMax(a,b)
  %2176 = call float @dx.op.binary.f32(i32 36, float %2175, float 1.000000e+00)  ; FMin(a,b)
  %2177 = fmul fast float %2167, %2167
  %2178 = fmul fast float %2176, %2176
  %2179 = fsub fast float 1.000000e+00, %2178
  %2180 = fmul fast float %2177, %2179
  %2181 = fsub fast float 1.000000e+00, %2180
  %2182 = fcmp fast olt float %2167, 1.000000e+00
  %2183 = select i1 %2182, float %2178, float %2181
  %2184 = fcmp fast ogt float %2181, 0.000000e+00
  %2185 = fsub fast float 1.000000e+00, %2171
  %2186 = call float @dx.op.unary.f32(i32 24, float %2183)  ; Sqrt(value)
  %2187 = fsub fast float 1.000000e+00, %2186
  %2188 = call float @dx.op.unary.f32(i32 23, float %2187)  ; Log(value)
  %2189 = fmul fast float %2188, 5.000000e+00
  %2190 = call float @dx.op.unary.f32(i32 21, float %2189)  ; Exp(value)
  %2191 = fmul fast float %2190, %2185
  %2192 = fadd fast float %2191, %2171
  %2193 = select i1 %2184, float %2192, float 1.000000e+00
  %2194 = fsub fast float 1.000000e+00, %2154
  %2195 = fsub fast float 1.000000e+00, %2155
  %2196 = fsub fast float 1.000000e+00, %2156
  %2197 = fmul fast float %2193, %2194
  %2198 = fmul fast float %2193, %2195
  %2199 = fmul fast float %2193, %2196
  %2200 = fadd fast float %2197, %2154
  %2201 = fadd fast float %2198, %2155
  %2202 = fadd fast float %2199, %2156
  %2203 = fptoui float %73 to i32
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 0
  %2206 = fmul fast float %2205, 5.000000e-01
  %2207 = fptoui float %2206 to i32
  %2208 = icmp eq i32 %2203, %2207
  %2209 = fptoui float %74 to i32
  %2210 = extractvalue %dx.types.CBufRet.f32 %2204, 1
  %2211 = fmul fast float %2210, 5.000000e-01
  %2212 = fptoui float %2211 to i32
  %2213 = icmp eq i32 %2209, %2212
  %2214 = and i1 %2208, %2213
  br i1 %2214, label %2215, label %2232

; <label>:2215                                    ; preds = %2090
  %2216 = call float @dx.op.binary.f32(i32 35, float %2201, float %2202)  ; FMax(a,b)
  %2217 = call float @dx.op.binary.f32(i32 35, float %2200, float %2216)  ; FMax(a,b)
  %2218 = fsub fast float 1.000000e+00, %2217
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 0
  %2221 = extractvalue %dx.types.CBufRet.f32 %2219, 1
  %2222 = extractvalue %dx.types.CBufRet.f32 %2219, 2
  %2223 = fadd fast float %2220, %117
  %2224 = fadd fast float %2221, %118
  %2225 = fadd fast float %2222, %119
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 3
  %2228 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %2229 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %2230 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %2231 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %2223, float %2224, float %2225, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %73, float %74, float %68, float %69, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %305, float %306, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %268, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %270, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %283, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %285, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %2227, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %2193, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %2200, float %2201, float %2202, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %2218, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %161, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %59, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %930, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %1092, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %2228, float %2229, float %2230, float %2231, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %2232

; <label>:2232                                    ; preds = %2215, %2090
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2235 = fmul fast float %2234, %2097
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2238 = fsub fast float 1.000000e+00, %2098
  %2239 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %2238)  ; FMin(a,b)
  %2240 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2155, float %2156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = lshr i32 %2243, 8
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, %2241
  %2250 = fadd fast float %2249, %2245
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.i32 %2256, 3
  %2258 = and i32 %2257, 3
  %2259 = icmp ne i32 %2258, 0
  %2260 = and i32 %2257, 4
  %2261 = icmp ne i32 %2260, 0
  %2262 = and i1 %2259, %2261
  br i1 %2262, label %2263, label %2274

; <label>:2263                                    ; preds = %2232
  %2264 = extractvalue %dx.types.CBufRet.f32 %2255, 3
  %2265 = fmul fast float %2264, %74
  %2266 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2267 = fmul fast float %2266, %73
  %2268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %45, float %2267, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2269 = extractvalue %dx.types.ResRet.f32 %2268, 0
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2273 = fcmp fast olt float %2270, %2272
  br label %2277

; <label>:2274                                    ; preds = %2232
  %2275 = icmp eq i32 %2260, 0
  %2276 = and i1 %2259, %2275
  br label %2277

; <label>:2277                                    ; preds = %2274, %2263
  %2278 = phi i1 [ %2273, %2263 ], [ %2276, %2274 ]
  %2279 = fsub fast float -0.000000e+00, %2161
  %2280 = fsub fast float -0.000000e+00, %2162
  %2281 = fsub fast float -0.000000e+00, %2163
  %2282 = select i1 %2278, float 0.000000e+00, float %2156
  %2283 = call float @dx.op.dot3.f32(i32 55, float %2133, float %2134, float %2135, float %2279, float %2280, float %2281)  ; Dot3(ax,ay,az,bx,by,bz)
  %2284 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2285 = fmul fast float %2172, 2.000000e+00
  %2286 = fmul fast float %2285, %2133
  %2287 = fmul fast float %2285, %2134
  %2288 = fmul fast float %2285, %2135
  %2289 = fsub fast float %2161, %2286
  %2290 = fsub fast float %2162, %2287
  %2291 = fsub fast float %2163, %2288
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = bitcast float %2293 to i32
  %2295 = lshr i32 %2294, 8
  %2296 = and i32 %2295, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = fptoui float %2297 to i32
  %2299 = and i32 %2298, 4
  %2300 = icmp ne i32 %2299, 0
  %2301 = select i1 %2300, float %2237, float 1.000000e+00
  %2302 = call float @dx.op.binary.f32(i32 36, float %2301, float 1.000000e+00)  ; FMin(a,b)
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = bitcast float %2303 to i32
  %2305 = ashr i32 %2304, 1
  %2306 = add nsw i32 %2305, 532487669
  %2307 = bitcast i32 %2306 to float
  %2308 = fsub fast float 1.000000e+00, %2236
  %2309 = call float @dx.op.binary.f32(i32 35, float %2308, float 0x3F847AE140000000)  ; FMax(a,b)
  %2310 = fmul fast float %2309, %2309
  %2311 = fmul fast float %2310, %2310
  %2312 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %2307, float %2311, float %2312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = and i32 %2298, 1
  %2316 = icmp ne i32 %2315, 0
  %2317 = fsub fast float 1.000000e+00, %2301
  %2318 = bitcast float %2317 to i32
  %2319 = sub nsw i32 2129859010, %2318
  %2320 = bitcast i32 %2319 to float
  %2321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.i32 %2321, 0
  %2323 = icmp eq i32 %2322, 1
  %2324 = select i1 %2323, float 0.000000e+00, float 1.000000e+00
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = fcmp fast ogt float %2326, 0.000000e+00
  %2328 = fcmp fast ogt float %2324, 0.000000e+00
  %2329 = and i1 %2327, %2328
  br i1 %2329, label %2330, label %2514, !dx.controlflow.hints !108

; <label>:2330                                    ; preds = %2277
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2334 = extractvalue %dx.types.CBufRet.f32 %2331, 2
  %2335 = fadd fast float %2332, %117
  %2336 = fadd fast float %2333, %118
  %2337 = fadd fast float %2334, %119
  %2338 = fmul fast float %2133, 3.200000e+01
  %2339 = fmul fast float %2134, 3.200000e+01
  %2340 = fadd fast float %2335, %2338
  %2341 = fadd fast float %2336, %2339
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2345 = fsub fast float %2340, %2343
  %2346 = fsub fast float %2341, %2344
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2350 = fmul fast float %2345, %2348
  %2351 = fmul fast float %2346, %2349
  %2352 = fmul fast float %117, %117
  %2353 = fmul fast float %118, %118
  %2354 = fadd fast float %2352, %2353
  %2355 = call float @dx.op.unary.f32(i32 24, float %2354)  ; Sqrt(value)
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.CBufRet.f32 %2356, 1
  %2359 = fsub fast float %2355, %2357
  %2360 = fdiv fast float %2359, %2358
  %2361 = call float @dx.op.unary.f32(i32 7, float %2360)  ; Saturate(value)
  %2362 = fmul fast float %2361, 2.000000e+00
  %2363 = fsub fast float 3.000000e+00, %2362
  %2364 = fmul fast float %2361, %2361
  %2365 = fmul fast float %2364, %2363
  %2366 = fcmp fast oge float %2350, 0.000000e+00
  %2367 = fcmp fast ole float %2350, 1.000000e+00
  %2368 = and i1 %2367, %2366
  %2369 = fcmp fast oge float %2351, 0.000000e+00
  %2370 = and i1 %2369, %2368
  %2371 = fcmp fast ole float %2351, 1.000000e+00
  %2372 = and i1 %2371, %2370
  %2373 = fcmp fast ogt float %2365, 0.000000e+00
  %2374 = and i1 %2373, %2372
  br i1 %2374, label %2375, label %2498, !dx.controlflow.hints !109

; <label>:2375                                    ; preds = %2330
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2379 = fmul fast float %2377, %2350
  %2380 = fmul fast float %2378, %2351
  %2381 = call float @dx.op.unary.f32(i32 27, float %2379)  ; Round_ni(value)
  %2382 = call float @dx.op.unary.f32(i32 27, float %2380)  ; Round_ni(value)
  %2383 = fptosi float %2381 to i32
  %2384 = fptosi float %2382 to i32
  %2385 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2383, i32 %2384, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = lshr i32 %2386, 16
  %2388 = icmp eq i32 %2387, 65535
  br i1 %2388, label %2498, label %2389

; <label>:2389                                    ; preds = %2375
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = fmul fast float %2391, %2350
  %2393 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2394 = fadd fast float %2392, %2393
  %2395 = extractvalue %dx.types.CBufRet.f32 %2390, 2
  %2396 = fmul fast float %2395, %2351
  %2397 = extractvalue %dx.types.CBufRet.f32 %2390, 3
  %2398 = fadd fast float %2396, %2397
  %2399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %2394, float %2398, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2400 = extractvalue %dx.types.ResRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.ResRet.f32 %2399, 1
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 1
  %2404 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2405 = fsub fast float %2403, %2404
  %2406 = fmul fast float %2405, %2400
  %2407 = fadd fast float %2406, %2404
  %2408 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2409 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2410 = fsub fast float %2408, %2409
  %2411 = fmul fast float %2410, %2401
  %2412 = fadd fast float %2411, %2409
  %2413 = fsub fast float %2337, %2407
  %2414 = fsub fast float %2412, %2407
  %2415 = fdiv fast float %2413, %2414
  %2416 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2418 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2419 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2420 = fmul fast float %2418, %2350
  %2421 = fmul fast float %2419, %2351
  %2422 = fmul fast float %2420, 1.250000e-01
  %2423 = fmul fast float %2421, 1.250000e-01
  %2424 = call float @dx.op.unary.f32(i32 27, float %2422)  ; Round_ni(value)
  %2425 = call float @dx.op.unary.f32(i32 27, float %2423)  ; Round_ni(value)
  %2426 = fmul fast float %2424, 8.000000e+00
  %2427 = fmul fast float %2425, 8.000000e+00
  %2428 = fsub fast float %2420, %2426
  %2429 = fsub fast float %2421, %2427
  %2430 = fadd fast float %2428, 5.000000e-01
  %2431 = fadd fast float %2429, 5.000000e-01
  %2432 = and i32 %2387, 255
  %2433 = lshr i32 %2386, 24
  %2434 = mul nuw nsw i32 %2432, 9
  %2435 = uitofp i32 %2434 to float
  %2436 = mul nuw nsw i32 %2433, 9
  %2437 = uitofp i32 %2436 to float
  %2438 = fadd fast float %2430, %2435
  %2439 = fadd fast float %2431, %2437
  %2440 = fdiv fast float %2438, %2326
  %2441 = fdiv fast float %2439, %2417
  %2442 = fmul fast float %2416, 4.375000e-01
  %2443 = fadd fast float %2442, 3.125000e-02
  %2444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2440, float %2441, float %2443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = fadd fast float %2442, 5.312500e-01
  %2449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2440, float %2441, float %2448, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = fmul fast float %2450, 2.000000e+00
  %2454 = fmul fast float %2451, 2.000000e+00
  %2455 = fmul fast float %2452, 2.000000e+00
  %2456 = fadd fast float %2453, -1.000000e+00
  %2457 = fadd fast float %2454, -1.000000e+00
  %2458 = fadd fast float %2455, -1.000000e+00
  %2459 = fmul fast float %2456, %2456
  %2460 = fmul fast float %2457, %2457
  %2461 = fadd fast float %2459, %2460
  %2462 = fmul fast float %2458, %2458
  %2463 = fadd fast float %2461, %2462
  %2464 = call float @dx.op.unary.f32(i32 24, float %2463)  ; Sqrt(value)
  %2465 = fcmp fast ogt float %2464, 0.000000e+00
  br i1 %2465, label %2466, label %2470

; <label>:2466                                    ; preds = %2389
  %2467 = fdiv fast float %2456, %2464
  %2468 = fdiv fast float %2457, %2464
  %2469 = fdiv fast float %2458, %2464
  br label %2470

; <label>:2470                                    ; preds = %2466, %2389
  %2471 = phi float [ %2467, %2466 ], [ 0.000000e+00, %2389 ]
  %2472 = phi float [ %2468, %2466 ], [ 0.000000e+00, %2389 ]
  %2473 = phi float [ %2469, %2466 ], [ 0.000000e+00, %2389 ]
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2472, float %2473, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2474)  ; FMax(a,b)
  %2476 = fmul fast float %2475, 0x400C5BF8A0000000
  %2477 = fmul fast float %2445, %2365
  %2478 = fmul fast float %2477, %2476
  %2479 = fmul fast float %2446, %2365
  %2480 = fmul fast float %2479, %2476
  %2481 = fmul fast float %2447, %2365
  %2482 = fmul fast float %2481, %2476
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 3
  %2485 = fmul fast float %2478, %2484
  %2486 = fmul fast float %2480, %2484
  %2487 = fmul fast float %2482, %2484
  %2488 = fcmp fast ogt float %2337, %2412
  br i1 %2488, label %2489, label %2498

; <label>:2489                                    ; preds = %2470
  %2490 = fmul fast float %2414, 0x3FC24924A0000000
  %2491 = fsub fast float %2337, %2412
  %2492 = fdiv fast float %2491, %2490
  %2493 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2494, %2485
  %2496 = fmul fast float %2494, %2486
  %2497 = fmul fast float %2494, %2487
  br label %2498

; <label>:2498                                    ; preds = %2489, %2470, %2375, %2330
  %2499 = phi float [ %2497, %2489 ], [ %2487, %2470 ], [ 0.000000e+00, %2375 ], [ 0.000000e+00, %2330 ]
  %2500 = phi float [ %2496, %2489 ], [ %2486, %2470 ], [ 0.000000e+00, %2375 ], [ 0.000000e+00, %2330 ]
  %2501 = phi float [ %2495, %2489 ], [ %2485, %2470 ], [ 0.000000e+00, %2375 ], [ 0.000000e+00, %2330 ]
  %2502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2501)  ; FMax(a,b)
  %2503 = fmul fast float %2502, 0x3FD20DD760000000
  %2504 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2500)  ; FMax(a,b)
  %2505 = fmul fast float %2504, 0x3FD20DD760000000
  %2506 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2499)  ; FMax(a,b)
  %2507 = fmul fast float %2506, 0x3FD20DD760000000
  %2508 = call float @dx.op.binary.f32(i32 35, float %2503, float 0.000000e+00)  ; FMax(a,b)
  %2509 = call float @dx.op.binary.f32(i32 35, float %2505, float 0.000000e+00)  ; FMax(a,b)
  %2510 = call float @dx.op.binary.f32(i32 35, float %2507, float 0.000000e+00)  ; FMax(a,b)
  %2511 = fmul fast float %2508, %2324
  %2512 = fmul fast float %2509, %2324
  %2513 = fmul fast float %2510, %2324
  br label %2514

; <label>:2514                                    ; preds = %2498, %2277
  %2515 = phi float [ %2511, %2498 ], [ 0.000000e+00, %2277 ]
  %2516 = phi float [ %2512, %2498 ], [ 0.000000e+00, %2277 ]
  %2517 = phi float [ %2513, %2498 ], [ 0.000000e+00, %2277 ]
  br i1 %2323, label %2518, label %3310, !dx.controlflow.hints !110

; <label>:2518                                    ; preds = %2514
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = extractvalue %dx.types.CBufRet.f32 %2519, 1
  %2522 = extractvalue %dx.types.CBufRet.f32 %2519, 2
  %2523 = fadd fast float %2520, %117
  %2524 = fadd fast float %2521, %118
  %2525 = fadd fast float %2522, %119
  %2526 = fmul fast float %2133, 3.200000e+01
  %2527 = fmul fast float %2134, 3.200000e+01
  %2528 = fadd fast float %2523, %2526
  %2529 = fadd fast float %2524, %2527
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = fsub fast float %2528, %2531
  %2534 = fsub fast float %2529, %2532
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2538 = fmul fast float %2533, %2536
  %2539 = fmul fast float %2534, %2537
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2542 = fmul fast float %2538, %2541
  %2543 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2544 = fadd fast float %2542, %2543
  %2545 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2546 = fmul fast float %2545, %2539
  %2547 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2548 = fadd fast float %2546, %2547
  %2549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %2544, float %2548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2555 = fsub fast float %2553, %2554
  %2556 = fmul fast float %2555, %2550
  %2557 = fadd fast float %2556, %2554
  %2558 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2559 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2560 = fsub fast float %2558, %2559
  %2561 = fmul fast float %2560, %2551
  %2562 = fadd fast float %2561, %2559
  %2563 = fsub fast float %2525, %2557
  %2564 = fsub fast float %2562, %2557
  %2565 = fdiv fast float %2563, %2564
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2569 = fmul fast float %2568, %2566
  %2570 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2571 = fadd fast float %2569, %2570
  %2572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %2544, float %2548, float %2571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2573 = extractvalue %dx.types.ResRet.f32 %2572, 0
  %2574 = extractvalue %dx.types.ResRet.f32 %2572, 1
  %2575 = extractvalue %dx.types.ResRet.f32 %2572, 2
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2580 = fmul fast float %2577, %2573
  %2581 = fmul fast float %2578, %2574
  %2582 = fmul fast float %2579, %2575
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.CBufRet.f32 %2583, 2
  %2587 = fadd fast float %2580, %2584
  %2588 = fadd fast float %2581, %2585
  %2589 = fadd fast float %2582, %2586
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 0
  %2592 = fmul fast float %2591, %2538
  %2593 = extractvalue %dx.types.CBufRet.f32 %2590, 1
  %2594 = fadd fast float %2592, %2593
  %2595 = extractvalue %dx.types.CBufRet.f32 %2590, 2
  %2596 = fmul fast float %2595, %2539
  %2597 = extractvalue %dx.types.CBufRet.f32 %2590, 3
  %2598 = fadd fast float %2596, %2597
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2601 = extractvalue %dx.types.CBufRet.f32 %2599, 1
  %2602 = extractvalue %dx.types.CBufRet.f32 %2599, 2
  %2603 = extractvalue %dx.types.CBufRet.f32 %2599, 3
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2608 = extractvalue %dx.types.CBufRet.f32 %2604, 3
  %2609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2594, float %2598, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2613 = extractvalue %dx.types.ResRet.f32 %2609, 3
  %2614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2594, float %2598, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.ResRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.ResRet.f32 %2614, 2
  %2618 = extractvalue %dx.types.ResRet.f32 %2614, 3
  %2619 = fmul fast float %2610, %2587
  %2620 = fmul fast float %2615, %2587
  %2621 = fmul fast float %2617, %2587
  %2622 = fmul fast float %2613, %2587
  %2623 = fadd fast float %2619, %2600
  %2624 = fadd fast float %2620, %2601
  %2625 = fadd fast float %2621, %2602
  %2626 = fadd fast float %2622, %2603
  %2627 = fmul fast float %2611, %2587
  %2628 = fmul fast float %2616, %2587
  %2629 = fadd fast float %2627, %2605
  %2630 = fadd fast float %2628, %2606
  %2631 = fmul fast float %2612, %2587
  %2632 = fmul fast float %2618, %2587
  %2633 = fadd fast float %2631, %2607
  %2634 = fadd fast float %2632, %2608
  %2635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2594, float %2598, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.ResRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.ResRet.f32 %2635, 2
  %2639 = extractvalue %dx.types.ResRet.f32 %2635, 3
  %2640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2594, float %2598, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2641 = extractvalue %dx.types.ResRet.f32 %2640, 0
  %2642 = extractvalue %dx.types.ResRet.f32 %2640, 1
  %2643 = extractvalue %dx.types.ResRet.f32 %2640, 2
  %2644 = extractvalue %dx.types.ResRet.f32 %2640, 3
  %2645 = fmul fast float %2636, %2588
  %2646 = fmul fast float %2641, %2588
  %2647 = fmul fast float %2643, %2588
  %2648 = fmul fast float %2639, %2588
  %2649 = fadd fast float %2623, %2645
  %2650 = fadd fast float %2624, %2646
  %2651 = fadd fast float %2625, %2647
  %2652 = fadd fast float %2626, %2648
  %2653 = fmul fast float %2637, %2588
  %2654 = fmul fast float %2642, %2588
  %2655 = fadd fast float %2629, %2653
  %2656 = fadd fast float %2630, %2654
  %2657 = fmul fast float %2638, %2588
  %2658 = fmul fast float %2644, %2588
  %2659 = fadd fast float %2633, %2657
  %2660 = fadd fast float %2634, %2658
  %2661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2594, float %2598, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.ResRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.ResRet.f32 %2661, 2
  %2665 = extractvalue %dx.types.ResRet.f32 %2661, 3
  %2666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2594, float %2598, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.ResRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.ResRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.ResRet.f32 %2666, 3
  %2671 = fmul fast float %2662, %2589
  %2672 = fmul fast float %2667, %2589
  %2673 = fmul fast float %2669, %2589
  %2674 = fmul fast float %2665, %2589
  %2675 = fadd fast float %2649, %2671
  %2676 = fadd fast float %2650, %2672
  %2677 = fadd fast float %2651, %2673
  %2678 = fadd fast float %2652, %2674
  %2679 = fmul fast float %2663, %2589
  %2680 = fmul fast float %2668, %2589
  %2681 = fadd fast float %2655, %2679
  %2682 = fadd fast float %2656, %2680
  %2683 = fmul fast float %2664, %2589
  %2684 = fmul fast float %2670, %2589
  %2685 = fadd fast float %2659, %2683
  %2686 = fadd fast float %2660, %2684
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = fsub fast float %2523, %2688
  %2690 = fsub fast float %2531, %2523
  %2691 = call float @dx.op.binary.f32(i32 35, float %2690, float %2689)  ; FMax(a,b)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2693 = fsub fast float %2524, %2692
  %2694 = fsub fast float %2532, %2524
  %2695 = call float @dx.op.binary.f32(i32 35, float %2694, float %2693)  ; FMax(a,b)
  %2696 = call float @dx.op.binary.f32(i32 35, float %2691, float %2695)  ; FMax(a,b)
  %2697 = extractvalue %dx.types.CBufRet.f32 %2535, 3
  %2698 = fmul fast float %2697, %2696
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 0
  %2702 = extractvalue %dx.types.CBufRet.f32 %2700, 1
  %2703 = extractvalue %dx.types.CBufRet.f32 %2700, 2
  %2704 = extractvalue %dx.types.CBufRet.f32 %2700, 3
  %2705 = fsub fast float %2701, %2675
  %2706 = fsub fast float %2702, %2676
  %2707 = fsub fast float %2703, %2677
  %2708 = fsub fast float %2704, %2678
  %2709 = fmul fast float %2705, %2699
  %2710 = fmul fast float %2706, %2699
  %2711 = fmul fast float %2707, %2699
  %2712 = fmul fast float %2708, %2699
  %2713 = fadd fast float %2709, %2675
  %2714 = fadd fast float %2710, %2676
  %2715 = fadd fast float %2711, %2677
  %2716 = fadd fast float %2712, %2678
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2720 = fsub fast float %2718, %2681
  %2721 = fsub fast float %2719, %2682
  %2722 = fmul fast float %2720, %2699
  %2723 = fmul fast float %2721, %2699
  %2724 = fadd fast float %2722, %2681
  %2725 = fadd fast float %2723, %2682
  %2726 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2727 = extractvalue %dx.types.CBufRet.f32 %2717, 3
  %2728 = fsub fast float %2726, %2685
  %2729 = fsub fast float %2727, %2686
  %2730 = fmul fast float %2728, %2699
  %2731 = fmul fast float %2729, %2699
  %2732 = fadd fast float %2730, %2685
  %2733 = fadd fast float %2731, %2686
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = fmul fast float %2735, %2713
  %2737 = fmul fast float %2735, %2714
  %2738 = fmul fast float %2735, %2715
  %2739 = fmul fast float %2735, %2716
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = fmul fast float %2741, %2724
  %2743 = fmul fast float %2741, %2725
  %2744 = fadd fast float %2742, %2736
  %2745 = fadd fast float %2743, %2738
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 0
  %2748 = fmul fast float %2747, %2732
  %2749 = fmul fast float %2747, %2733
  %2750 = fadd fast float %2744, %2748
  %2751 = fadd fast float %2745, %2749
  %2752 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2753 = fmul fast float %2752, %2713
  %2754 = fmul fast float %2752, %2714
  %2755 = fmul fast float %2752, %2715
  %2756 = fmul fast float %2752, %2716
  %2757 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2758 = fmul fast float %2757, %2724
  %2759 = fmul fast float %2757, %2725
  %2760 = fadd fast float %2758, %2753
  %2761 = fadd fast float %2759, %2755
  %2762 = extractvalue %dx.types.CBufRet.f32 %2746, 1
  %2763 = fmul fast float %2762, %2732
  %2764 = fmul fast float %2762, %2733
  %2765 = fadd fast float %2760, %2763
  %2766 = fadd fast float %2761, %2764
  %2767 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2768 = fmul fast float %2767, %2713
  %2769 = fmul fast float %2767, %2714
  %2770 = fmul fast float %2767, %2715
  %2771 = fmul fast float %2767, %2716
  %2772 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2773 = fmul fast float %2772, %2724
  %2774 = fmul fast float %2772, %2725
  %2775 = fadd fast float %2773, %2768
  %2776 = fadd fast float %2774, %2770
  %2777 = extractvalue %dx.types.CBufRet.f32 %2746, 2
  %2778 = fmul fast float %2777, %2732
  %2779 = fmul fast float %2777, %2733
  %2780 = fadd fast float %2775, %2778
  %2781 = fadd fast float %2776, %2779
  %2782 = fmul fast float %2769, %2769
  %2783 = fmul fast float %2781, %2781
  %2784 = fmul fast float %2771, %2771
  %2785 = fadd fast float %2784, %2782
  %2786 = fadd fast float %2785, %2783
  %2787 = call float @dx.op.unary.f32(i32 24, float %2786)  ; Sqrt(value)
  %2788 = fcmp fast ugt float %2787, 0.000000e+00
  br i1 %2788, label %2789, label %2804

; <label>:2789                                    ; preds = %2518
  %2790 = fsub fast float -0.000000e+00, %2771
  %2791 = fdiv fast float %2790, %2787
  %2792 = fsub fast float -0.000000e+00, %2769
  %2793 = fdiv fast float %2792, %2787
  %2794 = fdiv fast float %2781, %2787
  %2795 = fmul fast float %2780, 0x3FE279A760000000
  %2796 = fmul fast float %2793, %2769
  %2797 = fmul fast float %2794, %2781
  %2798 = fmul fast float %2791, %2771
  %2799 = fadd fast float %2796, %2798
  %2800 = fsub fast float %2799, %2797
  %2801 = call float @dx.op.unary.f32(i32 6, float %2800)  ; FAbs(value)
  %2802 = fadd fast float %2801, 0x3DDB7CDFE0000000
  %2803 = fdiv fast float %2795, %2802
  br label %2804

; <label>:2804                                    ; preds = %2789, %2518
  %2805 = phi float [ %2803, %2789 ], [ 1.000000e+00, %2518 ]
  %2806 = fmul fast float %2754, %2754
  %2807 = fmul fast float %2766, %2766
  %2808 = fmul fast float %2756, %2756
  %2809 = fadd fast float %2808, %2806
  %2810 = fadd fast float %2809, %2807
  %2811 = call float @dx.op.unary.f32(i32 24, float %2810)  ; Sqrt(value)
  %2812 = fcmp fast ugt float %2811, 0.000000e+00
  br i1 %2812, label %2813, label %2828

; <label>:2813                                    ; preds = %2804
  %2814 = fsub fast float -0.000000e+00, %2756
  %2815 = fdiv fast float %2814, %2811
  %2816 = fsub fast float -0.000000e+00, %2754
  %2817 = fdiv fast float %2816, %2811
  %2818 = fdiv fast float %2766, %2811
  %2819 = fmul fast float %2765, 0x3FE279A760000000
  %2820 = fmul fast float %2817, %2754
  %2821 = fmul fast float %2818, %2766
  %2822 = fmul fast float %2815, %2756
  %2823 = fadd fast float %2820, %2822
  %2824 = fsub fast float %2823, %2821
  %2825 = call float @dx.op.unary.f32(i32 6, float %2824)  ; FAbs(value)
  %2826 = fadd fast float %2825, 0x3DDB7CDFE0000000
  %2827 = fdiv fast float %2819, %2826
  br label %2828

; <label>:2828                                    ; preds = %2813, %2804
  %2829 = phi float [ %2827, %2813 ], [ 1.000000e+00, %2804 ]
  %2830 = call float @dx.op.binary.f32(i32 36, float %2829, float %2805)  ; FMin(a,b)
  %2831 = fmul fast float %2737, %2737
  %2832 = fmul fast float %2751, %2751
  %2833 = fmul fast float %2739, %2739
  %2834 = fadd fast float %2833, %2831
  %2835 = fadd fast float %2834, %2832
  %2836 = call float @dx.op.unary.f32(i32 24, float %2835)  ; Sqrt(value)
  %2837 = fcmp fast ugt float %2836, 0.000000e+00
  br i1 %2837, label %2838, label %2853

; <label>:2838                                    ; preds = %2828
  %2839 = fsub fast float -0.000000e+00, %2739
  %2840 = fdiv fast float %2839, %2836
  %2841 = fsub fast float -0.000000e+00, %2737
  %2842 = fdiv fast float %2841, %2836
  %2843 = fdiv fast float %2751, %2836
  %2844 = fmul fast float %2750, 0x3FE279A760000000
  %2845 = fmul fast float %2842, %2737
  %2846 = fmul fast float %2843, %2751
  %2847 = fmul fast float %2840, %2739
  %2848 = fadd fast float %2845, %2847
  %2849 = fsub fast float %2848, %2846
  %2850 = call float @dx.op.unary.f32(i32 6, float %2849)  ; FAbs(value)
  %2851 = fadd fast float %2850, 0x3DDB7CDFE0000000
  %2852 = fdiv fast float %2844, %2851
  br label %2853

; <label>:2853                                    ; preds = %2838, %2828
  %2854 = phi float [ %2852, %2838 ], [ 1.000000e+00, %2828 ]
  %2855 = call float @dx.op.binary.f32(i32 36, float %2854, float %2830)  ; FMin(a,b)
  %2856 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2857 = fcmp fast olt float %2856, 1.000000e+00
  br i1 %2857, label %2858, label %2868

; <label>:2858                                    ; preds = %2853
  %2859 = fmul fast float %2856, %2737
  %2860 = fmul fast float %2856, %2751
  %2861 = fmul fast float %2856, %2739
  %2862 = fmul fast float %2856, %2754
  %2863 = fmul fast float %2856, %2766
  %2864 = fmul fast float %2856, %2756
  %2865 = fmul fast float %2856, %2769
  %2866 = fmul fast float %2856, %2781
  %2867 = fmul fast float %2856, %2771
  br label %2868

; <label>:2868                                    ; preds = %2858, %2853
  %2869 = phi float [ %2865, %2858 ], [ %2769, %2853 ]
  %2870 = phi float [ %2866, %2858 ], [ %2781, %2853 ]
  %2871 = phi float [ %2867, %2858 ], [ %2771, %2853 ]
  %2872 = phi float [ %2862, %2858 ], [ %2754, %2853 ]
  %2873 = phi float [ %2863, %2858 ], [ %2766, %2853 ]
  %2874 = phi float [ %2864, %2858 ], [ %2756, %2853 ]
  %2875 = phi float [ %2859, %2858 ], [ %2737, %2853 ]
  %2876 = phi float [ %2860, %2858 ], [ %2751, %2853 ]
  %2877 = phi float [ %2861, %2858 ], [ %2739, %2853 ]
  %2878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2750)  ; FMax(a,b)
  %2879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2765)  ; FMax(a,b)
  %2880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2780)  ; FMax(a,b)
  %2881 = fcmp fast oge float %2538, 0.000000e+00
  %2882 = and i1 %2881, %2327
  %2883 = fcmp fast ole float %2538, 1.000000e+00
  %2884 = and i1 %2883, %2882
  %2885 = fcmp fast oge float %2539, 0.000000e+00
  %2886 = and i1 %2885, %2884
  %2887 = fcmp fast ole float %2539, 1.000000e+00
  %2888 = and i1 %2887, %2886
  br i1 %2888, label %2889, label %3029, !dx.controlflow.hints !111

; <label>:2889                                    ; preds = %2868
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 2
  %2892 = extractvalue %dx.types.CBufRet.f32 %2890, 3
  %2893 = fmul fast float %2891, %2538
  %2894 = fmul fast float %2892, %2539
  %2895 = call float @dx.op.unary.f32(i32 27, float %2893)  ; Round_ni(value)
  %2896 = call float @dx.op.unary.f32(i32 27, float %2894)  ; Round_ni(value)
  %2897 = fptosi float %2895 to i32
  %2898 = fptosi float %2896 to i32
  %2899 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2897, i32 %2898, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = and i32 %2900, 65535
  %2902 = lshr i32 %2900, 16
  %2903 = icmp eq i32 %2901, 65535
  br i1 %2903, label %2940, label %2904

; <label>:2904                                    ; preds = %2889
  %2905 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2906 = extractvalue %dx.types.CBufRet.f32 %2890, 0
  %2907 = extractvalue %dx.types.CBufRet.f32 %2890, 1
  %2908 = fmul fast float %2906, %2538
  %2909 = fmul fast float %2907, %2539
  %2910 = fmul fast float %2908, 1.250000e-01
  %2911 = fmul fast float %2909, 1.250000e-01
  %2912 = call float @dx.op.unary.f32(i32 27, float %2910)  ; Round_ni(value)
  %2913 = call float @dx.op.unary.f32(i32 27, float %2911)  ; Round_ni(value)
  %2914 = fmul fast float %2912, 8.000000e+00
  %2915 = fmul fast float %2913, 8.000000e+00
  %2916 = and i32 %2900, 255
  %2917 = lshr i32 %2900, 8
  %2918 = and i32 %2917, 255
  %2919 = mul nuw nsw i32 %2916, 9
  %2920 = uitofp i32 %2919 to float
  %2921 = mul nuw nsw i32 %2918, 9
  %2922 = uitofp i32 %2921 to float
  %2923 = fadd fast float %2920, 5.000000e-01
  %2924 = fadd fast float %2923, %2908
  %2925 = fsub fast float %2924, %2914
  %2926 = fadd fast float %2922, 5.000000e-01
  %2927 = fadd fast float %2926, %2909
  %2928 = fsub fast float %2927, %2915
  %2929 = fdiv fast float %2925, %2326
  %2930 = fdiv fast float %2928, %2905
  %2931 = fmul fast float %2566, 4.375000e-01
  %2932 = fadd fast float %2931, 3.125000e-02
  %2933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2929, float %2930, float %2932, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2934 = extractvalue %dx.types.ResRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.ResRet.f32 %2933, 1
  %2936 = extractvalue %dx.types.ResRet.f32 %2933, 2
  %2937 = fadd fast float %2934, %2878
  %2938 = fadd fast float %2935, %2879
  %2939 = fadd fast float %2936, %2880
  br label %2940

; <label>:2940                                    ; preds = %2904, %2889
  %2941 = phi float [ %2939, %2904 ], [ %2880, %2889 ]
  %2942 = phi float [ %2938, %2904 ], [ %2879, %2889 ]
  %2943 = phi float [ %2937, %2904 ], [ %2878, %2889 ]
  %2944 = icmp eq i32 %2902, 65535
  br i1 %2944, label %3029, label %2945

; <label>:2945                                    ; preds = %2940
  %2946 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2947 = extractvalue %dx.types.CBufRet.f32 %2890, 0
  %2948 = extractvalue %dx.types.CBufRet.f32 %2890, 1
  %2949 = fmul fast float %2947, %2538
  %2950 = fmul fast float %2948, %2539
  %2951 = fmul fast float %2949, 1.250000e-01
  %2952 = fmul fast float %2950, 1.250000e-01
  %2953 = call float @dx.op.unary.f32(i32 27, float %2951)  ; Round_ni(value)
  %2954 = call float @dx.op.unary.f32(i32 27, float %2952)  ; Round_ni(value)
  %2955 = fmul fast float %2953, 8.000000e+00
  %2956 = fmul fast float %2954, 8.000000e+00
  %2957 = fsub fast float %2949, %2955
  %2958 = fsub fast float %2950, %2956
  %2959 = fadd fast float %2957, 5.000000e-01
  %2960 = fadd fast float %2958, 5.000000e-01
  %2961 = and i32 %2902, 255
  %2962 = lshr i32 %2900, 24
  %2963 = mul nuw nsw i32 %2961, 9
  %2964 = uitofp i32 %2963 to float
  %2965 = mul nuw nsw i32 %2962, 9
  %2966 = uitofp i32 %2965 to float
  %2967 = fadd fast float %2959, %2964
  %2968 = fadd fast float %2960, %2966
  %2969 = fdiv fast float %2967, %2326
  %2970 = fdiv fast float %2968, %2946
  %2971 = fmul fast float %2566, 4.375000e-01
  %2972 = fadd fast float %2971, 3.125000e-02
  %2973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2969, float %2970, float %2972, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = fadd fast float %2971, 5.312500e-01
  %2978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2969, float %2970, float %2977, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = fmul fast float %2979, 2.000000e+00
  %2983 = fmul fast float %2980, 2.000000e+00
  %2984 = fmul fast float %2981, 2.000000e+00
  %2985 = fadd fast float %2982, -1.000000e+00
  %2986 = fadd fast float %2983, -1.000000e+00
  %2987 = fadd fast float %2984, -1.000000e+00
  %2988 = fmul fast float %2985, %2985
  %2989 = fmul fast float %2986, %2986
  %2990 = fadd fast float %2988, %2989
  %2991 = fmul fast float %2987, %2987
  %2992 = fadd fast float %2990, %2991
  %2993 = call float @dx.op.unary.f32(i32 24, float %2992)  ; Sqrt(value)
  %2994 = fcmp fast ogt float %2993, 0.000000e+00
  br i1 %2994, label %2995, label %2999

; <label>:2995                                    ; preds = %2945
  %2996 = fdiv fast float %2985, %2993
  %2997 = fdiv fast float %2986, %2993
  %2998 = fdiv fast float %2987, %2993
  br label %2999

; <label>:2999                                    ; preds = %2995, %2945
  %3000 = phi float [ %2996, %2995 ], [ 0.000000e+00, %2945 ]
  %3001 = phi float [ %2997, %2995 ], [ 0.000000e+00, %2945 ]
  %3002 = phi float [ %2998, %2995 ], [ 0.000000e+00, %2945 ]
  %3003 = fmul fast float %117, %117
  %3004 = fmul fast float %118, %118
  %3005 = fadd fast float %3003, %3004
  %3006 = call float @dx.op.unary.f32(i32 24, float %3005)  ; Sqrt(value)
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 0
  %3009 = extractvalue %dx.types.CBufRet.f32 %3007, 1
  %3010 = fsub fast float %3006, %3008
  %3011 = fdiv fast float %3010, %3009
  %3012 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  %3013 = fmul fast float %3012, 2.000000e+00
  %3014 = fsub fast float 3.000000e+00, %3013
  %3015 = fmul fast float %3012, %3012
  %3016 = fmul fast float %3015, %3014
  %3017 = call float @dx.op.dot3.f32(i32 55, float %3000, float %3001, float %3002, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %3018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3017)  ; FMax(a,b)
  %3019 = fmul fast float %3018, 0x400C5BF8A0000000
  %3020 = fmul fast float %3016, %2974
  %3021 = fmul fast float %3020, %3019
  %3022 = fadd fast float %3021, %2943
  %3023 = fmul fast float %3016, %2975
  %3024 = fmul fast float %3023, %3019
  %3025 = fadd fast float %3024, %2942
  %3026 = fmul fast float %3016, %2976
  %3027 = fmul fast float %3026, %3019
  %3028 = fadd fast float %3027, %2941
  br label %3029

; <label>:3029                                    ; preds = %2999, %2940, %2868
  %3030 = phi float [ %3028, %2999 ], [ %2941, %2940 ], [ %2880, %2868 ]
  %3031 = phi float [ %3025, %2999 ], [ %2942, %2940 ], [ %2879, %2868 ]
  %3032 = phi float [ %3022, %2999 ], [ %2943, %2940 ], [ %2878, %2868 ]
  %3033 = fcmp fast ogt float %2525, %2562
  %3034 = and i1 %2881, %3033
  %3035 = and i1 %2883, %3034
  %3036 = and i1 %2885, %3035
  %3037 = and i1 %2887, %3036
  br i1 %3037, label %3038, label %3095, !dx.controlflow.hints !112

; <label>:3038                                    ; preds = %3029
  %3039 = fmul fast float %2564, 0x3FC24924A0000000
  %3040 = fsub fast float %2525, %2562
  %3041 = fdiv fast float %3040, %3039
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3047 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3048 = extractvalue %dx.types.CBufRet.f32 %3045, 2
  %3049 = fsub fast float %3044, %3032
  %3050 = fsub fast float %3046, %2875
  %3051 = fsub fast float %3047, %2876
  %3052 = fsub fast float %3048, %2877
  %3053 = fmul fast float %3049, %3042
  %3054 = fmul fast float %3050, %3042
  %3055 = fmul fast float %3051, %3042
  %3056 = fmul fast float %3052, %3042
  %3057 = fadd fast float %3053, %3032
  %3058 = fadd fast float %3054, %2875
  %3059 = fadd fast float %3055, %2876
  %3060 = fadd fast float %3056, %2877
  %3061 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3063 = extractvalue %dx.types.CBufRet.f32 %3062, 0
  %3064 = extractvalue %dx.types.CBufRet.f32 %3062, 1
  %3065 = extractvalue %dx.types.CBufRet.f32 %3062, 2
  %3066 = fsub fast float %3061, %3031
  %3067 = fsub fast float %3063, %2872
  %3068 = fsub fast float %3064, %2873
  %3069 = fsub fast float %3065, %2874
  %3070 = fmul fast float %3066, %3042
  %3071 = fmul fast float %3067, %3042
  %3072 = fmul fast float %3068, %3042
  %3073 = fmul fast float %3069, %3042
  %3074 = fadd fast float %3070, %3031
  %3075 = fadd fast float %3071, %2872
  %3076 = fadd fast float %3072, %2873
  %3077 = fadd fast float %3073, %2874
  %3078 = extractvalue %dx.types.CBufRet.f32 %3043, 2
  %3079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3080 = extractvalue %dx.types.CBufRet.f32 %3079, 0
  %3081 = extractvalue %dx.types.CBufRet.f32 %3079, 1
  %3082 = extractvalue %dx.types.CBufRet.f32 %3079, 2
  %3083 = fsub fast float %3078, %3030
  %3084 = fsub fast float %3080, %2869
  %3085 = fsub fast float %3081, %2870
  %3086 = fsub fast float %3082, %2871
  %3087 = fmul fast float %3083, %3042
  %3088 = fmul fast float %3084, %3042
  %3089 = fmul fast float %3085, %3042
  %3090 = fmul fast float %3086, %3042
  %3091 = fadd fast float %3087, %3030
  %3092 = fadd fast float %3088, %2869
  %3093 = fadd fast float %3089, %2870
  %3094 = fadd fast float %3090, %2871
  br label %3095

; <label>:3095                                    ; preds = %3038, %3029
  %3096 = phi float [ %3091, %3038 ], [ %3030, %3029 ]
  %3097 = phi float [ %3092, %3038 ], [ %2869, %3029 ]
  %3098 = phi float [ %3093, %3038 ], [ %2870, %3029 ]
  %3099 = phi float [ %3094, %3038 ], [ %2871, %3029 ]
  %3100 = phi float [ %3074, %3038 ], [ %3031, %3029 ]
  %3101 = phi float [ %3075, %3038 ], [ %2872, %3029 ]
  %3102 = phi float [ %3076, %3038 ], [ %2873, %3029 ]
  %3103 = phi float [ %3077, %3038 ], [ %2874, %3029 ]
  %3104 = phi float [ %3057, %3038 ], [ %3032, %3029 ]
  %3105 = phi float [ %3058, %3038 ], [ %2875, %3029 ]
  %3106 = phi float [ %3059, %3038 ], [ %2876, %3029 ]
  %3107 = phi float [ %3060, %3038 ], [ %2877, %3029 ]
  %3108 = extractvalue %dx.types.CBufRet.f32 %2687, 3
  %3109 = fmul fast float %3108, %3104
  %3110 = fmul fast float %3108, %3100
  %3111 = fmul fast float %3108, %3096
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 3
  %3114 = fmul fast float %3109, %3113
  %3115 = fmul fast float %3110, %3113
  %3116 = fmul fast float %3111, %3113
  %3117 = call float @dx.op.dot3.f32(i32 55, float %3114, float %3115, float %3116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3118 = fmul fast float %3117, 0x3FD20DD760000000
  %3119 = fmul fast float %3105, 1.500000e+00
  %3120 = fmul fast float %3119, %3108
  %3121 = fmul fast float %3120, %3113
  %3122 = fmul fast float %3106, 1.500000e+00
  %3123 = fmul fast float %3122, %3108
  %3124 = fmul fast float %3123, %3113
  %3125 = fmul fast float %3107, 1.500000e+00
  %3126 = fmul fast float %3125, %3108
  %3127 = fmul fast float %3126, %3113
  %3128 = fmul fast float %3101, 1.500000e+00
  %3129 = fmul fast float %3128, %3108
  %3130 = fmul fast float %3129, %3113
  %3131 = fmul fast float %3102, 1.500000e+00
  %3132 = fmul fast float %3131, %3108
  %3133 = fmul fast float %3132, %3113
  %3134 = fmul fast float %3103, 1.500000e+00
  %3135 = fmul fast float %3134, %3108
  %3136 = fmul fast float %3135, %3113
  %3137 = fmul fast float %3097, 1.500000e+00
  %3138 = fmul fast float %3137, %3108
  %3139 = fmul fast float %3138, %3113
  %3140 = fmul fast float %3098, 1.500000e+00
  %3141 = fmul fast float %3140, %3108
  %3142 = fmul fast float %3141, %3113
  %3143 = fmul fast float %3099, 1.500000e+00
  %3144 = fmul fast float %3143, %3108
  %3145 = fmul fast float %3144, %3113
  %3146 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3114)  ; FMax(a,b)
  %3147 = call float @dx.op.dot3.f32(i32 55, float %3121, float %3124, float %3127, float %3121, float %3124, float %3127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3148 = fcmp fast oeq float %3147, 0.000000e+00
  %3149 = fcmp fast oeq float %3146, 0.000000e+00
  %3150 = or i1 %3149, %3148
  br i1 %3150, label %3180, label %3151

; <label>:3151                                    ; preds = %3095
  %3152 = fsub fast float -0.000000e+00, %3127
  %3153 = fsub fast float -0.000000e+00, %3121
  %3154 = call float @dx.op.unary.f32(i32 24, float %3147)  ; Sqrt(value)
  %3155 = fdiv fast float %3154, %3146
  %3156 = fcmp fast ogt float %3155, 0x3FFB6F8900000000
  %3157 = select i1 %3156, float 0x3FFB6F8900000000, float %3155
  %3158 = fmul fast float %3157, 0x3FE8A23460000000
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3160 = call float @dx.op.binary.f32(i32 35, float %3157, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3161 = fmul fast float %3159, %3146
  %3162 = fmul fast float %3160, 0x3FF279A740000000
  %3163 = fadd fast float %3162, -1.000000e+00
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3124, float %3152, float %3153, float %3124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %3165, %3152
  %3167 = fmul fast float %3165, %3153
  %3168 = fmul fast float %3165, %3124
  %3169 = fmul fast float %3163, %3163
  %3170 = fsub fast float 1.000000e+00, %3169
  %3171 = fmul fast float %3160, 0x40005F8BE0000000
  %3172 = fsub fast float 0x400C5BF8A0000000, %3171
  %3173 = fdiv fast float %3161, %3172
  %3174 = fmul fast float %3173, 0x3FEE31C3C0000000
  %3175 = fmul fast float %3174, %3170
  %3176 = fmul fast float %3160, 0x3FDACB7480000000
  %3177 = fadd fast float %3176, 0xBFD7347680000000
  %3178 = fmul fast float %3177, %3173
  %3179 = fmul fast float %3178, %3170
  br label %3180

; <label>:3180                                    ; preds = %3151, %3095
  %3181 = phi float [ %3166, %3151 ], [ 0.000000e+00, %3095 ]
  %3182 = phi float [ %3167, %3151 ], [ 0.000000e+00, %3095 ]
  %3183 = phi float [ %3168, %3151 ], [ 0.000000e+00, %3095 ]
  %3184 = phi float [ %3175, %3151 ], [ 0.000000e+00, %3095 ]
  %3185 = phi float [ %3179, %3151 ], [ 0.000000e+00, %3095 ]
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3181, float %3182, float %3183, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = fmul fast float %3186, %3186
  %3188 = fmul fast float %3187, 0x3FEE471020000000
  %3189 = fadd fast float %3188, 0xBFD42F6020000000
  %3190 = fmul fast float %3146, 0x3FD20DD760000000
  %3191 = fmul fast float %3189, %3185
  %3192 = fmul fast float %3184, 0x3FDF454380000000
  %3193 = fmul fast float %3192, %3186
  %3194 = fadd fast float %3193, %3190
  %3195 = fadd fast float %3194, %3191
  %3196 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3115)  ; FMax(a,b)
  %3197 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3133, float %3136, float %3130, float %3133, float %3136)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = fcmp fast oeq float %3197, 0.000000e+00
  %3199 = fcmp fast oeq float %3196, 0.000000e+00
  %3200 = or i1 %3199, %3198
  br i1 %3200, label %3230, label %3201

; <label>:3201                                    ; preds = %3180
  %3202 = fsub fast float -0.000000e+00, %3136
  %3203 = fsub fast float -0.000000e+00, %3130
  %3204 = call float @dx.op.unary.f32(i32 24, float %3197)  ; Sqrt(value)
  %3205 = fdiv fast float %3204, %3196
  %3206 = fcmp fast ogt float %3205, 0x3FFB6F8900000000
  %3207 = select i1 %3206, float 0x3FFB6F8900000000, float %3205
  %3208 = fmul fast float %3207, 0x3FE8A23460000000
  %3209 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  %3210 = call float @dx.op.binary.f32(i32 35, float %3207, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3211 = fmul fast float %3209, %3196
  %3212 = fmul fast float %3210, 0x3FF279A740000000
  %3213 = fadd fast float %3212, -1.000000e+00
  %3214 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3203, float %3133, float %3202, float %3203, float %3133)  ; Dot3(ax,ay,az,bx,by,bz)
  %3215 = call float @dx.op.unary.f32(i32 25, float %3214)  ; Rsqrt(value)
  %3216 = fmul fast float %3215, %3202
  %3217 = fmul fast float %3215, %3203
  %3218 = fmul fast float %3215, %3133
  %3219 = fmul fast float %3213, %3213
  %3220 = fsub fast float 1.000000e+00, %3219
  %3221 = fmul fast float %3210, 0x40005F8BE0000000
  %3222 = fsub fast float 0x400C5BF8A0000000, %3221
  %3223 = fdiv fast float %3211, %3222
  %3224 = fmul fast float %3223, 0x3FEE31C3C0000000
  %3225 = fmul fast float %3224, %3220
  %3226 = fmul fast float %3210, 0x3FDACB7480000000
  %3227 = fadd fast float %3226, 0xBFD7347680000000
  %3228 = fmul fast float %3227, %3223
  %3229 = fmul fast float %3228, %3220
  br label %3230

; <label>:3230                                    ; preds = %3201, %3180
  %3231 = phi float [ %3216, %3201 ], [ 0.000000e+00, %3180 ]
  %3232 = phi float [ %3217, %3201 ], [ 0.000000e+00, %3180 ]
  %3233 = phi float [ %3218, %3201 ], [ 0.000000e+00, %3180 ]
  %3234 = phi float [ %3225, %3201 ], [ 0.000000e+00, %3180 ]
  %3235 = phi float [ %3229, %3201 ], [ 0.000000e+00, %3180 ]
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3231, float %3232, float %3233, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = fmul fast float %3236, %3236
  %3238 = fmul fast float %3237, 0x3FEE471020000000
  %3239 = fadd fast float %3238, 0xBFD42F6020000000
  %3240 = fmul fast float %3196, 0x3FD20DD760000000
  %3241 = fmul fast float %3239, %3235
  %3242 = fmul fast float %3234, 0x3FDF454380000000
  %3243 = fmul fast float %3242, %3236
  %3244 = fadd fast float %3243, %3240
  %3245 = fadd fast float %3244, %3241
  %3246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3116)  ; FMax(a,b)
  %3247 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3142, float %3145, float %3139, float %3142, float %3145)  ; Dot3(ax,ay,az,bx,by,bz)
  %3248 = fcmp fast oeq float %3247, 0.000000e+00
  %3249 = fcmp fast oeq float %3246, 0.000000e+00
  %3250 = or i1 %3249, %3248
  br i1 %3250, label %3280, label %3251

; <label>:3251                                    ; preds = %3230
  %3252 = fsub fast float -0.000000e+00, %3145
  %3253 = fsub fast float -0.000000e+00, %3139
  %3254 = call float @dx.op.unary.f32(i32 24, float %3247)  ; Sqrt(value)
  %3255 = fdiv fast float %3254, %3246
  %3256 = fcmp fast ogt float %3255, 0x3FFB6F8900000000
  %3257 = select i1 %3256, float 0x3FFB6F8900000000, float %3255
  %3258 = fmul fast float %3257, 0x3FE8A23460000000
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = call float @dx.op.binary.f32(i32 35, float %3257, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3261 = fmul fast float %3259, %3246
  %3262 = fmul fast float %3260, 0x3FF279A740000000
  %3263 = fadd fast float %3262, -1.000000e+00
  %3264 = call float @dx.op.dot3.f32(i32 55, float %3252, float %3253, float %3142, float %3252, float %3253, float %3142)  ; Dot3(ax,ay,az,bx,by,bz)
  %3265 = call float @dx.op.unary.f32(i32 25, float %3264)  ; Rsqrt(value)
  %3266 = fmul fast float %3265, %3252
  %3267 = fmul fast float %3265, %3253
  %3268 = fmul fast float %3265, %3142
  %3269 = fmul fast float %3263, %3263
  %3270 = fsub fast float 1.000000e+00, %3269
  %3271 = fmul fast float %3260, 0x40005F8BE0000000
  %3272 = fsub fast float 0x400C5BF8A0000000, %3271
  %3273 = fdiv fast float %3261, %3272
  %3274 = fmul fast float %3273, 0x3FEE31C3C0000000
  %3275 = fmul fast float %3274, %3270
  %3276 = fmul fast float %3260, 0x3FDACB7480000000
  %3277 = fadd fast float %3276, 0xBFD7347680000000
  %3278 = fmul fast float %3277, %3273
  %3279 = fmul fast float %3278, %3270
  br label %3280

; <label>:3280                                    ; preds = %3251, %3230
  %3281 = phi float [ %3266, %3251 ], [ 0.000000e+00, %3230 ]
  %3282 = phi float [ %3267, %3251 ], [ 0.000000e+00, %3230 ]
  %3283 = phi float [ %3268, %3251 ], [ 0.000000e+00, %3230 ]
  %3284 = phi float [ %3275, %3251 ], [ 0.000000e+00, %3230 ]
  %3285 = phi float [ %3279, %3251 ], [ 0.000000e+00, %3230 ]
  %3286 = call float @dx.op.dot3.f32(i32 55, float %3281, float %3282, float %3283, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %3287 = fmul fast float %3286, %3286
  %3288 = fmul fast float %3287, 0x3FEE471020000000
  %3289 = fadd fast float %3288, 0xBFD42F6020000000
  %3290 = fmul fast float %3246, 0x3FD20DD760000000
  %3291 = fmul fast float %3289, %3285
  %3292 = fmul fast float %3284, 0x3FDF454380000000
  %3293 = fmul fast float %3292, %3286
  %3294 = fadd fast float %3293, %3290
  %3295 = fadd fast float %3294, %3291
  %3296 = call float @dx.op.binary.f32(i32 35, float %3195, float 0.000000e+00)  ; FMax(a,b)
  %3297 = call float @dx.op.binary.f32(i32 35, float %3245, float 0.000000e+00)  ; FMax(a,b)
  %3298 = call float @dx.op.binary.f32(i32 35, float %3295, float 0.000000e+00)  ; FMax(a,b)
  %3299 = fsub fast float %2515, %3296
  %3300 = fsub fast float %2516, %3297
  %3301 = fsub fast float %2517, %3298
  %3302 = fmul fast float %3299, %2324
  %3303 = fmul fast float %3300, %2324
  %3304 = fmul fast float %3301, %2324
  %3305 = fadd fast float %3302, %3296
  %3306 = fadd fast float %3303, %3297
  %3307 = fadd fast float %3304, %3298
  %3308 = fmul fast float %3118, %2324
  %3309 = fsub fast float %3118, %3308
  br label %3310

; <label>:3310                                    ; preds = %3280, %2514
  %3311 = phi float [ %3309, %3280 ], [ 0.000000e+00, %2514 ]
  %3312 = phi float [ %3305, %3280 ], [ %2515, %2514 ]
  %3313 = phi float [ %3306, %3280 ], [ %2516, %2514 ]
  %3314 = phi float [ %3307, %3280 ], [ %2517, %2514 ]
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 0
  %3317 = call float @dx.op.binary.f32(i32 36, float %2145, float %3316)  ; FMin(a,b)
  %3318 = fmul fast float %3317, %2303
  %3319 = fsub fast float 1.000000e+00, %3318
  %3320 = bitcast float %3319 to i32
  %3321 = sub nsw i32 2129859010, %3320
  %3322 = bitcast i32 %3321 to float
  %3323 = call float @dx.op.binary.f32(i32 36, float %2146, float %3316)  ; FMin(a,b)
  %3324 = fmul fast float %3323, %2303
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = bitcast float %3325 to i32
  %3327 = sub nsw i32 2129859010, %3326
  %3328 = bitcast i32 %3327 to float
  %3329 = call float @dx.op.binary.f32(i32 36, float %2147, float %3316)  ; FMin(a,b)
  %3330 = fmul fast float %3329, %2303
  %3331 = fsub fast float 1.000000e+00, %3330
  %3332 = bitcast float %3331 to i32
  %3333 = sub nsw i32 2129859010, %3332
  %3334 = bitcast i32 %3333 to float
  %3335 = fmul fast float %3312, %2302
  %3336 = fmul fast float %3335, %3322
  %3337 = fmul fast float %3313, %2302
  %3338 = fmul fast float %3337, %3328
  %3339 = fmul fast float %3314, %2302
  %3340 = fmul fast float %3339, %3334
  %3341 = extractvalue %dx.types.CBufRet.i32 %2321, 2
  %3342 = and i32 %3341, 1
  %3343 = icmp ne i32 %3342, 0
  %3344 = fsub fast float 1.000000e+00, %2324
  %3345 = select i1 %3343, float %2324, float %3336
  %3346 = select i1 %3343, float %3344, float %3338
  %3347 = select i1 %3343, float 0.000000e+00, float %3340
  %3348 = call float @dx.op.dot3.f32(i32 55, float %3345, float %3346, float %3347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3349 = select i1 %2278, float 0.000000e+00, float %3345
  %3350 = select i1 %2278, float %3348, float %3346
  %3351 = select i1 %2278, float 0.000000e+00, float %3347
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 0
  %3354 = bitcast float %3353 to i32
  %3355 = lshr i32 %3354, 8
  %3356 = and i32 %3355, 255
  %3357 = uitofp i32 %3356 to float
  %3358 = fptoui float %3357 to i32
  %3359 = icmp eq i32 %3358, 23
  br i1 %3359, label %3360, label %3383

; <label>:3360                                    ; preds = %3310
  %3361 = fmul fast float %3334, %2302
  %3362 = fmul fast float %3328, %2302
  %3363 = fmul fast float %3322, %2302
  %3364 = fadd fast float %3363, 1.000000e+00
  %3365 = fadd fast float %3362, 1.000000e+00
  %3366 = fadd fast float %3361, 1.000000e+00
  %3367 = fmul fast float %3364, 5.000000e-01
  %3368 = fmul fast float %3365, 5.000000e-01
  %3369 = fmul fast float %3366, 5.000000e-01
  %3370 = call float @dx.op.unary.f32(i32 7, float %3367)  ; Saturate(value)
  %3371 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  %3372 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3373 = fmul fast float %3370, 1.023000e+03
  %3374 = fmul fast float %3371, 1.023000e+03
  %3375 = fmul fast float %3372, 1.023000e+03
  %3376 = fptoui float %3373 to i32
  %3377 = fptoui float %3374 to i32
  %3378 = fptoui float %3375 to i32
  %3379 = shl i32 %3377, 10
  %3380 = or i32 %3379, %3376
  %3381 = shl i32 %3378, 20
  %3382 = or i32 %3380, %3381
  br label %3383

; <label>:3383                                    ; preds = %3360, %3310
  %3384 = phi i32 [ %3382, %3360 ], [ 0, %3310 ]
  %3385 = fsub fast float 1.000000e+00, %2282
  %3386 = fmul fast float %3385, %2193
  %3387 = fadd fast float %3386, %2282
  %3388 = call float @dx.op.binary.f32(i32 35, float %2201, float %3387)  ; FMax(a,b)
  %3389 = call float @dx.op.binary.f32(i32 35, float %2200, float %3388)  ; FMax(a,b)
  %3390 = fsub fast float 1.000000e+00, %3389
  %3391 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %3392 = fcmp fast olt float %3391, 0.000000e+00
  br i1 %3392, label %3393, label %4097

; <label>:3393                                    ; preds = %3383
  %3394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3395 = extractvalue %dx.types.CBufRet.f32 %3394, 2
  %3396 = extractvalue %dx.types.CBufRet.f32 %3394, 3
  %3397 = fmul fast float %3395, %73
  %3398 = fmul fast float %3396, %74
  %3399 = fptoui float %3397 to i32
  %3400 = fptoui float %3398 to i32
  %3401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3402 = extractvalue %dx.types.CBufRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.CBufRet.f32 %3401, 2
  %3404 = extractvalue %dx.types.CBufRet.f32 %3401, 3
  %3405 = fadd fast float %69, -4.000000e+00
  %3406 = call float @dx.op.binary.f32(i32 35, float %3405, float 0.000000e+00)  ; FMax(a,b)
  %3407 = fadd fast float %3406, %3402
  %3408 = fmul fast float %3407, %3403
  %3409 = call float @dx.op.unary.f32(i32 23, float %3408)  ; Log(value)
  %3410 = fmul fast float %3409, %3404
  %3411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3412 = extractvalue %dx.types.CBufRet.f32 %3411, 2
  %3413 = fmul fast float %3410, %3412
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3416 = extractvalue %dx.types.CBufRet.i32 %3415, 1
  %3417 = add i32 %3416, -1
  %3418 = uitofp i32 %3416 to float
  %3419 = fmul fast float %3418, %3414
  %3420 = fptoui float %3419 to i32
  %3421 = call i32 @dx.op.binary.i32(i32 40, i32 %3420, i32 %3417)  ; UMin(a,b)
  %3422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3423 = extractvalue %dx.types.CBufRet.i32 %3422, 2
  %3424 = extractvalue %dx.types.CBufRet.i32 %3422, 3
  %3425 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3400, i32 %3423, i32 %3399)  ; UMad(a,b,c)
  %3426 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3421, i32 %3424, i32 %3425)  ; UMad(a,b,c)
  %3427 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %3428 = fptoui float %3427 to i32
  %3429 = lshr i32 %3428, 5
  %3430 = call i32 @dx.op.binary.i32(i32 40, i32 %3429, i32 8191)  ; UMin(a,b)
  %3431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.i32 %3431, 2
  %3433 = add nsw i32 %3432, -1
  %3434 = call i32 @dx.op.binary.i32(i32 37, i32 %3433, i32 0)  ; IMax(a,b)
  %3435 = shl i32 %3430, 2
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = lshr i32 %3437, 16
  %3439 = and i32 %3437, 65535
  %3440 = lshr i32 %3437, 21
  %3441 = lshr i32 %3439, 5
  %3442 = call i32 @dx.op.binary.i32(i32 40, i32 %3441, i32 %3434)  ; UMin(a,b)
  %3443 = icmp ugt i32 %3440, %3442
  br i1 %3443, label %4022, label %3444

; <label>:3444                                    ; preds = %3393
  br label %3445

; <label>:3445                                    ; preds = %4004, %3444
  %3446 = phi i32 [ %4005, %4004 ], [ %2107, %3444 ]
  %3447 = phi i32 [ %4006, %4004 ], [ %3384, %3444 ]
  %3448 = phi float [ %4007, %4004 ], [ 0.000000e+00, %3444 ]
  %3449 = phi float [ %4008, %4004 ], [ 0.000000e+00, %3444 ]
  %3450 = phi float [ %4009, %4004 ], [ 0.000000e+00, %3444 ]
  %3451 = phi float [ %4010, %4004 ], [ 0.000000e+00, %3444 ]
  %3452 = phi float [ %4011, %4004 ], [ 0.000000e+00, %3444 ]
  %3453 = phi float [ %4012, %4004 ], [ 0.000000e+00, %3444 ]
  %3454 = phi i32 [ %4013, %4004 ], [ 0, %3444 ]
  %3455 = phi float [ %4014, %4004 ], [ 0.000000e+00, %3444 ]
  %3456 = phi float [ %4015, %4004 ], [ 0.000000e+00, %3444 ]
  %3457 = phi float [ %4016, %4004 ], [ 0.000000e+00, %3444 ]
  %3458 = phi i32 [ %4017, %4004 ], [ 1, %3444 ]
  %3459 = phi float [ %4018, %4004 ], [ 1.000000e+00, %3444 ]
  %3460 = phi i32 [ %4019, %4004 ], [ %3440, %3444 ]
  %3461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.i32 %3461, 2
  %3463 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3426, i32 %3462, i32 %3460)  ; UMad(a,b,c)
  %3464 = shl i32 %3463, 2
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = shl i32 %3460, 5
  %3468 = sub nsw i32 %3438, %3467
  %3469 = call i32 @dx.op.binary.i32(i32 37, i32 %3468, i32 0)  ; IMax(a,b)
  %3470 = call i32 @dx.op.binary.i32(i32 38, i32 %3469, i32 31)  ; IMin(a,b)
  %3471 = sub nsw i32 1, %3438
  %3472 = add nsw i32 %3471, %3439
  %3473 = call i32 @dx.op.binary.i32(i32 37, i32 %3472, i32 0)  ; IMax(a,b)
  %3474 = call i32 @dx.op.binary.i32(i32 38, i32 %3473, i32 32)  ; IMin(a,b)
  %3475 = and i32 %3474, 31
  %3476 = shl i32 -1, %3475
  %3477 = xor i32 %3476, -1
  %3478 = and i32 %3470, 31
  %3479 = shl i32 %3477, %3478
  %3480 = icmp eq i32 %3474, 32
  %3481 = select i1 %3480, i32 -1, i32 %3479
  %3482 = and i32 %3481, %3466
  %3483 = icmp eq i32 %3482, 0
  br i1 %3483, label %4004, label %3484

; <label>:3484                                    ; preds = %3445
  br label %3485

; <label>:3485                                    ; preds = %3619, %3484
  %3486 = phi i32 [ %3620, %3619 ], [ %3446, %3484 ]
  %3487 = phi i32 [ %3621, %3619 ], [ %3447, %3484 ]
  %3488 = phi float [ %3622, %3619 ], [ %3448, %3484 ]
  %3489 = phi float [ %3623, %3619 ], [ %3449, %3484 ]
  %3490 = phi float [ %3624, %3619 ], [ %3450, %3484 ]
  %3491 = phi float [ %3625, %3619 ], [ %3451, %3484 ]
  %3492 = phi float [ %3626, %3619 ], [ %3452, %3484 ]
  %3493 = phi float [ %3627, %3619 ], [ %3453, %3484 ]
  %3494 = phi i32 [ %3628, %3619 ], [ %3454, %3484 ]
  %3495 = phi float [ %3629, %3619 ], [ %3455, %3484 ]
  %3496 = phi float [ %3630, %3619 ], [ %3456, %3484 ]
  %3497 = phi float [ %3631, %3619 ], [ %3457, %3484 ]
  %3498 = phi i32 [ %3632, %3619 ], [ %3458, %3484 ]
  %3499 = phi float [ %3633, %3619 ], [ %3459, %3484 ]
  %3500 = phi i32 [ %3505, %3619 ], [ %3482, %3484 ]
  %3501 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3500)  ; FirstbitLo(value)
  %3502 = add i32 %3501, %3467
  %3503 = and i32 %3501, 31
  %3504 = shl i32 1, %3503
  %3505 = xor i32 %3504, %3500
  %3506 = mul i32 %3502, 72
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = add i32 %3506, 12
  %3512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.i32 %3512, 0
  %3514 = add i32 %3506, 16
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = add i32 %3506, 28
  %3520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = add i32 %3506, 32
  %3523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.ResRet.f32 %3523, 1
  %3526 = extractvalue %dx.types.ResRet.f32 %3523, 2
  %3527 = extractvalue %dx.types.ResRet.f32 %3523, 3
  %3528 = add i32 %3506, 48
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = add i32 %3506, 56
  %3533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.ResRet.f32 %3533, 1
  %3536 = add i32 %3506, 64
  %3537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 0
  %3539 = extractvalue %dx.types.ResRet.f32 %3537, 1
  %3540 = mul i32 %3502, 60
  %3541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.ResRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.ResRet.f32 %3541, 2
  %3545 = add i32 %3540, 12
  %3546 = add i32 %3540, 48
  %3547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = and i32 %3513, 32767
  %3552 = bitcast float %3509 to i32
  %3553 = and i32 %3513, 32768
  %3554 = icmp ne i32 %3553, 0
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.CBufRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3559 = fsub fast float %3542, %3556
  %3560 = fsub fast float %3543, %3557
  %3561 = fsub fast float %3544, %3558
  %3562 = fsub fast float %117, %3559
  %3563 = fsub fast float %118, %3560
  %3564 = fsub fast float %119, %3561
  %3565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 0
  %3567 = extractvalue %dx.types.ResRet.f32 %3565, 1
  %3568 = extractvalue %dx.types.ResRet.f32 %3565, 2
  %3569 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3563, float %3564, float %3566, float %3567, float %3568)  ; Dot3(ax,ay,az,bx,by,bz)
  %3570 = add i32 %3540, 24
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3563, float %3564, float %3572, float %3573, float %3574)  ; Dot3(ax,ay,az,bx,by,bz)
  %3576 = add i32 %3540, 36
  %3577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.ResRet.f32 %3577, 2
  %3581 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3563, float %3564, float %3578, float %3579, float %3580)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = call float @dx.op.unary.f32(i32 6, float %3569)  ; FAbs(value)
  %3583 = call float @dx.op.unary.f32(i32 6, float %3575)  ; FAbs(value)
  %3584 = call float @dx.op.unary.f32(i32 6, float %3581)  ; FAbs(value)
  %3585 = fsub fast float %3548, %3582
  %3586 = fsub fast float %3549, %3583
  %3587 = fsub fast float %3550, %3584
  %3588 = fmul fast float %3585, %3516
  %3589 = fmul fast float %3586, %3517
  %3590 = fmul fast float %3587, %3518
  %3591 = call float @dx.op.binary.f32(i32 36, float %3589, float %3590)  ; FMin(a,b)
  %3592 = call float @dx.op.binary.f32(i32 36, float %3588, float %3591)  ; FMin(a,b)
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = call float @dx.op.binary.f32(i32 36, float %3499, float %3593)  ; FMin(a,b)
  %3595 = uitofp i1 %3554 to float
  %3596 = select i1 %58, float 1.000000e+00, float 2.000000e+00
  %3597 = fsub fast float %3596, %3595
  %3598 = fmul fast float %3594, %3597
  %3599 = lshr i32 %3486, 8
  %3600 = and i32 %3599, 255
  %3601 = uitofp i32 %3600 to float
  %3602 = fptoui float %3601 to i32
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 1
  %3605 = bitcast float %3604 to i32
  %3606 = lshr i32 %3605, 24
  %3607 = uitofp i32 %3606 to float
  %3608 = fptoui float %3607 to i32
  %3609 = icmp ne i32 %3608, 1
  %3610 = zext i1 %3609 to i32
  %3611 = add i32 %3610, %3602
  %3612 = uitofp i32 %3611 to float
  %3613 = fptoui float %3612 to i32
  %3614 = shl i32 %3613, 8
  %3615 = and i32 %3614, 65280
  %3616 = and i32 %3486, -65281
  %3617 = or i32 %3615, %3616
  %3618 = fcmp fast ogt float %3598, 0.000000e+00
  br i1 %3618, label %3635, label %3619

; <label>:3619                                    ; preds = %3987, %3856, %3485
  %3620 = phi i32 [ %3934, %3856 ], [ %3617, %3485 ], [ %3934, %3987 ]
  %3621 = phi i32 [ %3487, %3856 ], [ %3487, %3485 ], [ %4002, %3987 ]
  %3622 = phi float [ %3920, %3856 ], [ %3488, %3485 ], [ %3920, %3987 ]
  %3623 = phi float [ %3921, %3856 ], [ %3489, %3485 ], [ %3921, %3987 ]
  %3624 = phi float [ %3922, %3856 ], [ %3490, %3485 ], [ %3922, %3987 ]
  %3625 = phi float [ %3981, %3856 ], [ %3491, %3485 ], [ %3981, %3987 ]
  %3626 = phi float [ %3982, %3856 ], [ %3492, %3485 ], [ %3982, %3987 ]
  %3627 = phi float [ %3983, %3856 ], [ %3493, %3485 ], [ %3983, %3987 ]
  %3628 = phi i32 [ %3985, %3856 ], [ %3494, %3485 ], [ %3985, %3987 ]
  %3629 = phi float [ %3938, %3856 ], [ %3495, %3485 ], [ %3938, %3987 ]
  %3630 = phi float [ %3939, %3856 ], [ %3496, %3485 ], [ %3939, %3987 ]
  %3631 = phi float [ %3940, %3856 ], [ %3497, %3485 ], [ %3940, %3987 ]
  %3632 = phi i32 [ 0, %3856 ], [ %3498, %3485 ], [ 0, %3987 ]
  %3633 = phi float [ %3923, %3856 ], [ %3499, %3485 ], [ %3923, %3987 ]
  %3634 = icmp eq i32 %3500, %3504
  br i1 %3634, label %4003, label %3485

; <label>:3635                                    ; preds = %3485
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 3
  %3638 = bitcast float %3508 to i32
  %3639 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3640 = bitcast float %3639 to i32
  %3641 = lshr i32 %3640, 8
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = fptoui float %3643 to i32
  %3645 = and i32 %3644, 2
  %3646 = icmp eq i32 %3645, 0
  %3647 = select i1 %3646, float %2133, float %2161
  %3648 = select i1 %3646, float %2134, float %2162
  %3649 = select i1 %3646, float %2135, float %2163
  %3650 = icmp ne i32 %3638, -1
  %3651 = fcmp oeq float %3637, 0.000000e+00
  %3652 = and i1 %3651, %3650
  br i1 %3652, label %3653, label %3777

; <label>:3653                                    ; preds = %3635
  %3654 = fsub fast float -0.000000e+00, %3566
  %3655 = fsub fast float -0.000000e+00, %3567
  %3656 = fsub fast float -0.000000e+00, %3568
  %3657 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3648, float %3649, float %3654, float %3655, float %3656)  ; Dot3(ax,ay,az,bx,by,bz)
  %3658 = fsub fast float -0.000000e+00, %3657
  %3659 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3563, float %3564, float %3654, float %3655, float %3656)  ; Dot3(ax,ay,az,bx,by,bz)
  %3660 = fadd fast float %3659, %3531
  %3661 = fadd fast float %3530, %3659
  %3662 = fsub fast float -0.000000e+00, %3661
  %3663 = fcmp ogt float %3657, -0.000000e+00
  %3664 = select i1 %3663, float %3662, float %3660
  %3665 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3666 = fdiv fast float 1.000000e+00, %3665
  %3667 = fmul fast float %3664, %3666
  %3668 = call float @dx.op.binary.f32(i32 35, float %3667, float 0.000000e+00)  ; FMax(a,b)
  %3669 = fsub fast float -0.000000e+00, %3572
  %3670 = fsub fast float -0.000000e+00, %3573
  %3671 = fsub fast float -0.000000e+00, %3574
  %3672 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3648, float %3649, float %3669, float %3670, float %3671)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = fsub fast float -0.000000e+00, %3672
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3563, float %3564, float %3669, float %3670, float %3671)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = fadd fast float %3674, %3535
  %3676 = fadd fast float %3534, %3674
  %3677 = fsub fast float -0.000000e+00, %3676
  %3678 = fcmp ogt float %3672, -0.000000e+00
  %3679 = select i1 %3678, float %3677, float %3675
  %3680 = call float @dx.op.unary.f32(i32 6, float %3673)  ; FAbs(value)
  %3681 = fdiv fast float 1.000000e+00, %3680
  %3682 = fmul fast float %3679, %3681
  %3683 = call float @dx.op.binary.f32(i32 35, float %3682, float 0.000000e+00)  ; FMax(a,b)
  %3684 = fsub fast float -0.000000e+00, %3578
  %3685 = fsub fast float -0.000000e+00, %3579
  %3686 = fsub fast float -0.000000e+00, %3580
  %3687 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3648, float %3649, float %3684, float %3685, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = fsub fast float -0.000000e+00, %3687
  %3689 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3563, float %3564, float %3684, float %3685, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = fadd fast float %3689, %3539
  %3691 = fadd fast float %3538, %3689
  %3692 = fsub fast float -0.000000e+00, %3691
  %3693 = fcmp ogt float %3687, -0.000000e+00
  %3694 = select i1 %3693, float %3692, float %3690
  %3695 = call float @dx.op.unary.f32(i32 6, float %3688)  ; FAbs(value)
  %3696 = fdiv fast float 1.000000e+00, %3695
  %3697 = fmul fast float %3694, %3696
  %3698 = call float @dx.op.binary.f32(i32 35, float %3697, float 0.000000e+00)  ; FMax(a,b)
  %3699 = call float @dx.op.binary.f32(i32 36, float %3683, float %3698)  ; FMin(a,b)
  %3700 = call float @dx.op.binary.f32(i32 36, float %3668, float %3699)  ; FMin(a,b)
  %3701 = fmul fast float %3700, %3647
  %3702 = fmul fast float %3700, %3648
  %3703 = fmul fast float %3700, %3649
  %3704 = fadd fast float %3701, %117
  %3705 = fadd fast float %3702, %118
  %3706 = fadd fast float %3703, %119
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.CBufRet.f32 %3707, 2
  %3711 = fadd fast float %3704, %3708
  %3712 = fadd fast float %3705, %3709
  %3713 = fadd fast float %3706, %3710
  %3714 = fcmp fast olt float %3668, %3683
  %3715 = fcmp fast olt float %3668, %3698
  %3716 = and i1 %3714, %3715
  br i1 %3716, label %3720, label %3717

; <label>:3717                                    ; preds = %3653
  %3718 = fcmp fast olt float %3683, %3698
  br i1 %3718, label %3719, label %3720

; <label>:3719                                    ; preds = %3717
  br label %3720

; <label>:3720                                    ; preds = %3719, %3717, %3653
  %3721 = phi float [ 0.000000e+00, %3719 ], [ 0.000000e+00, %3717 ], [ 1.000000e+00, %3653 ]
  %3722 = phi float [ 1.000000e+00, %3719 ], [ 0.000000e+00, %3717 ], [ 0.000000e+00, %3653 ]
  %3723 = phi float [ 0.000000e+00, %3719 ], [ 1.000000e+00, %3717 ], [ 0.000000e+00, %3653 ]
  %3724 = phi float [ %3572, %3719 ], [ %3578, %3717 ], [ %3566, %3653 ]
  %3725 = phi float [ %3573, %3719 ], [ %3579, %3717 ], [ %3567, %3653 ]
  %3726 = phi float [ %3574, %3719 ], [ %3580, %3717 ], [ %3568, %3653 ]
  %3727 = call float @dx.op.unary.f32(i32 6, float %3726)  ; FAbs(value)
  %3728 = fcmp fast olt float %3727, 0x3FE276C8C0000000
  %3729 = select i1 %3728, float 0.000000e+00, float 1.000000e+00
  %3730 = select i1 %3728, float 1.000000e+00, float 0.000000e+00
  %3731 = fmul fast float %3730, %3725
  %3732 = fmul fast float %3729, %3726
  %3733 = fsub fast float %3731, %3732
  %3734 = fmul fast float %3724, %3730
  %3735 = fsub fast float -0.000000e+00, %3734
  %3736 = fmul fast float %3729, %3724
  %3737 = call float @dx.op.dot3.f32(i32 55, float %3733, float %3735, float %3736, float %3733, float %3735, float %3736)  ; Dot3(ax,ay,az,bx,by,bz)
  %3738 = call float @dx.op.unary.f32(i32 25, float %3737)  ; Rsqrt(value)
  %3739 = fmul fast float %3733, %3738
  %3740 = fmul fast float %3738, %3735
  %3741 = fmul fast float %3736, %3738
  %3742 = fmul fast float %3741, %3725
  %3743 = fmul fast float %3740, %3726
  %3744 = fsub fast float %3742, %3743
  %3745 = fmul fast float %3739, %3726
  %3746 = fmul fast float %3741, %3724
  %3747 = fsub fast float %3745, %3746
  %3748 = fmul fast float %3740, %3724
  %3749 = fmul fast float %3739, %3725
  %3750 = fsub fast float %3748, %3749
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3744, float %3747, float %3750, float %3744, float %3747, float %3750)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = call float @dx.op.unary.f32(i32 25, float %3751)  ; Rsqrt(value)
  %3753 = fmul fast float %3744, %3752
  %3754 = fmul fast float %3747, %3752
  %3755 = fmul fast float %3750, %3752
  %3756 = call float @dx.op.dot3.f32(i32 55, float %3711, float %3712, float %3713, float %3739, float %3740, float %3741)  ; Dot3(ax,ay,az,bx,by,bz)
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3711, float %3712, float %3713, float %3753, float %3754, float %3755)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = fmul fast float %3756, 0x3FA99999A0000000
  %3759 = fmul fast float %3757, 0x3FA99999A0000000
  %3760 = call float @dx.op.unary.f32(i32 22, float %3758)  ; Frc(value)
  %3761 = call float @dx.op.unary.f32(i32 22, float %3759)  ; Frc(value)
  %3762 = fadd fast float %3760, 0xBFB99999A0000000
  %3763 = fadd fast float %3761, 0xBFB99999A0000000
  %3764 = call float @dx.op.unary.f32(i32 6, float %3762)  ; FAbs(value)
  %3765 = call float @dx.op.unary.f32(i32 6, float %3763)  ; FAbs(value)
  %3766 = fmul fast float %3764, 1.000000e+01
  %3767 = fmul fast float %3765, 1.000000e+01
  %3768 = call float @dx.op.binary.f32(i32 36, float %3766, float %3767)  ; FMin(a,b)
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = fsub fast float 1.000000e+00, %3769
  %3771 = fmul fast float %3770, %3721
  %3772 = fmul fast float %3770, %3722
  %3773 = fmul fast float %3770, %3723
  %3774 = fsub fast float %3704, %3508
  %3775 = fsub fast float %3705, %3509
  %3776 = fsub fast float %3706, %3510
  br label %3784

; <label>:3777                                    ; preds = %3635
  %3778 = fmul fast float %3647, 8.096000e+03
  %3779 = fmul fast float %3648, 8.096000e+03
  %3780 = fmul fast float %3649, 8.096000e+03
  %3781 = fadd fast float %3778, %117
  %3782 = fadd fast float %3779, %118
  %3783 = fadd fast float %3780, %119
  br label %3784

; <label>:3784                                    ; preds = %3777, %3720
  %3785 = phi float [ %3647, %3777 ], [ %3774, %3720 ]
  %3786 = phi float [ %3648, %3777 ], [ %3775, %3720 ]
  %3787 = phi float [ %3649, %3777 ], [ %3776, %3720 ]
  %3788 = phi float [ %3781, %3777 ], [ %3704, %3720 ]
  %3789 = phi float [ %3782, %3777 ], [ %3705, %3720 ]
  %3790 = phi float [ %3783, %3777 ], [ %3706, %3720 ]
  %3791 = phi float [ 0.000000e+00, %3777 ], [ %3771, %3720 ]
  %3792 = phi float [ 0.000000e+00, %3777 ], [ %3772, %3720 ]
  %3793 = phi float [ 0.000000e+00, %3777 ], [ %3773, %3720 ]
  %3794 = fcmp fast olt float %3527, 1.000000e+00
  br i1 %3794, label %3795, label %3826, !dx.controlflow.hints !113

; <label>:3795                                    ; preds = %3784
  %3796 = fmul fast float %3787, %3525
  %3797 = fmul fast float %3786, %3526
  %3798 = fsub fast float %3796, %3797
  %3799 = fmul fast float %3785, %3526
  %3800 = fmul fast float %3787, %3524
  %3801 = fsub fast float %3799, %3800
  %3802 = fmul fast float %3786, %3524
  %3803 = fmul fast float %3785, %3525
  %3804 = fsub fast float %3802, %3803
  %3805 = fmul fast float %3798, 2.000000e+00
  %3806 = fmul fast float %3801, 2.000000e+00
  %3807 = fmul fast float %3804, 2.000000e+00
  %3808 = fmul fast float %3805, %3527
  %3809 = fmul fast float %3806, %3527
  %3810 = fmul fast float %3807, %3527
  %3811 = fmul fast float %3807, %3525
  %3812 = fmul fast float %3806, %3526
  %3813 = fmul fast float %3805, %3526
  %3814 = fmul fast float %3807, %3524
  %3815 = fmul fast float %3806, %3524
  %3816 = fmul fast float %3805, %3525
  %3817 = fadd fast float %3811, %3785
  %3818 = fadd fast float %3817, %3808
  %3819 = fsub fast float %3818, %3812
  %3820 = fsub fast float %3786, %3814
  %3821 = fadd fast float %3820, %3809
  %3822 = fadd fast float %3821, %3813
  %3823 = fadd fast float %3810, %3787
  %3824 = fsub fast float %3823, %3816
  %3825 = fadd fast float %3824, %3815
  br label %3826

; <label>:3826                                    ; preds = %3795, %3784
  %3827 = phi float [ %3819, %3795 ], [ %3785, %3784 ]
  %3828 = phi float [ %3822, %3795 ], [ %3786, %3784 ]
  %3829 = phi float [ %3825, %3795 ], [ %3787, %3784 ]
  br i1 %3652, label %3830, label %3853

; <label>:3830                                    ; preds = %3826
  %3831 = fsub fast float %3788, %117
  %3832 = fsub fast float %3789, %118
  %3833 = fsub fast float %3790, %119
  %3834 = fsub fast float %3788, %3508
  %3835 = fsub fast float %3789, %3509
  %3836 = fsub fast float %3790, %3510
  %3837 = call float @dx.op.dot3.f32(i32 55, float %3831, float %3832, float %3833, float %3831, float %3832, float %3833)  ; Dot3(ax,ay,az,bx,by,bz)
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3834, float %3835, float %3836, float %3834, float %3835, float %3836)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = fadd fast float %3838, 0x3EE4F8B580000000
  %3840 = fdiv fast float %3837, %3839
  %3841 = bitcast float %3840 to i32
  %3842 = ashr i32 %3841, 1
  %3843 = add nsw i32 %3842, 532487669
  %3844 = bitcast i32 %3843 to float
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = fmul fast float %3845, 0x4009981AE0000000
  %3847 = fsub fast float 0x40111BBD80000000, %3846
  %3848 = fmul fast float %3847, %3845
  %3849 = fadd fast float %3848, 0xC0009F6020000000
  %3850 = fmul fast float %3849, %3845
  %3851 = fadd fast float %3850, 1.000000e+00
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  br label %3856

; <label>:3853                                    ; preds = %3826
  %3854 = icmp ne i32 %3552, -1
  %3855 = zext i1 %3854 to i32
  br label %3856

; <label>:3856                                    ; preds = %3853, %3830
  %3857 = phi float [ 0.000000e+00, %3853 ], [ %3852, %3830 ]
  %3858 = phi i32 [ %3855, %3853 ], [ 0, %3830 ]
  %3859 = fmul float %3857, 5.000000e+00
  %3860 = fsub float 5.000000e+00, %3859
  %3861 = icmp ne i32 %3858, 0
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 3
  %3864 = fadd fast float %3863, %3860
  %3865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3864)  ; FMax(a,b)
  %3866 = call float @dx.op.unary.f32(i32 6, float %3827)  ; FAbs(value)
  %3867 = call float @dx.op.unary.f32(i32 6, float %3828)  ; FAbs(value)
  %3868 = fadd fast float %3867, %3866
  %3869 = call float @dx.op.unary.f32(i32 6, float %3829)  ; FAbs(value)
  %3870 = fadd fast float %3868, %3869
  %3871 = fcmp fast oeq float %3870, 0.000000e+00
  %3872 = fdiv fast float 1.000000e+00, %3870
  %3873 = select i1 %3871, float 1.000000e+00, float %3872
  %3874 = fmul fast float %3873, %3827
  %3875 = fmul fast float %3873, %3828
  %3876 = call float @dx.op.unary.f32(i32 6, float %3875)  ; FAbs(value)
  %3877 = call float @dx.op.unary.f32(i32 6, float %3874)  ; FAbs(value)
  %3878 = fsub fast float 1.000000e+00, %3876
  %3879 = fsub fast float 1.000000e+00, %3877
  %3880 = fcmp fast oge float %3874, 0.000000e+00
  %3881 = fcmp fast oge float %3875, 0.000000e+00
  %3882 = select i1 %3880, float 1.000000e+00, float -1.000000e+00
  %3883 = select i1 %3881, float 1.000000e+00, float -1.000000e+00
  %3884 = fcmp fast ole float %3829, 0.000000e+00
  %3885 = fmul fast float %3882, %3878
  %3886 = fmul fast float %3883, %3879
  %3887 = select i1 %3884, float %3885, float %3874
  %3888 = select i1 %3884, float %3886, float %3875
  %3889 = fmul fast float %3887, 5.000000e-01
  %3890 = fmul fast float %3888, 5.000000e-01
  %3891 = fadd fast float %3889, 5.000000e-01
  %3892 = fadd fast float %3890, 5.000000e-01
  %3893 = uitofp i32 %3551 to float
  %3894 = call float @dx.op.binary.f32(i32 36, float %3865, float 3.000000e+00)  ; FMin(a,b)
  %3895 = fadd fast float %3894, 2.000000e+00
  %3896 = call float @dx.op.unary.f32(i32 21, float %3895)  ; Exp(value)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3862, 1
  %3898 = fmul fast float %3897, %3896
  %3899 = fmul fast float %3898, 2.000000e+00
  %3900 = fsub fast float 1.000000e+00, %3899
  %3901 = fmul fast float %3891, %3900
  %3902 = fmul fast float %3892, %3900
  %3903 = fadd fast float %3901, %3898
  %3904 = fadd fast float %3902, %3898
  %3905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %3903, float %3904, float %3893, float undef, i32 0, i32 0, i32 undef, float %3865)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %3908 = extractvalue %dx.types.ResRet.f32 %3905, 2
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 3
  %3911 = fmul fast float %3910, %3521
  %3912 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3911)  ; FMin(a,b)
  %3913 = select i1 %3861, float %3912, float %3911
  %3914 = fmul fast float %3906, %3598
  %3915 = fmul fast float %3914, %3913
  %3916 = fmul fast float %3907, %3598
  %3917 = fmul fast float %3916, %3913
  %3918 = fmul fast float %3908, %3598
  %3919 = fmul fast float %3918, %3913
  %3920 = fadd fast float %3915, %3488
  %3921 = fadd fast float %3917, %3489
  %3922 = fadd fast float %3919, %3490
  %3923 = fsub fast float %3499, %3598
  %3924 = and i32 %3613, 255
  %3925 = uitofp i32 %3924 to float
  %3926 = fptoui float %3925 to i32
  %3927 = icmp eq i32 %3608, 1
  %3928 = zext i1 %3927 to i32
  %3929 = add i32 %3928, %3926
  %3930 = uitofp i32 %3929 to float
  %3931 = fptoui float %3930 to i32
  %3932 = shl i32 %3931, 8
  %3933 = and i32 %3932, 65280
  %3934 = or i32 %3933, %3616
  %3935 = fmul fast float %3791, %3598
  %3936 = fmul fast float %3792, %3598
  %3937 = fmul fast float %3793, %3598
  %3938 = fadd fast float %3935, %3495
  %3939 = fadd fast float %3936, %3496
  %3940 = fadd fast float %3937, %3497
  %3941 = fmul fast float %3893, 0x3FE3C6EF40000000
  %3942 = call float @dx.op.unary.f32(i32 22, float %3941)  ; Frc(value)
  %3943 = fadd fast float %3942, 0x3FE5555560000000
  %3944 = fadd fast float %3942, 0x3FD5555560000000
  %3945 = fsub fast float -0.000000e+00, %3942
  %3946 = fsub fast float -0.000000e+00, %3943
  %3947 = fsub fast float -0.000000e+00, %3944
  %3948 = fcmp fast oge float %3942, %3945
  %3949 = fcmp fast oge float %3943, %3946
  %3950 = fcmp fast oge float %3944, %3947
  %3951 = call float @dx.op.unary.f32(i32 6, float %3942)  ; FAbs(value)
  %3952 = call float @dx.op.unary.f32(i32 6, float %3943)  ; FAbs(value)
  %3953 = call float @dx.op.unary.f32(i32 6, float %3944)  ; FAbs(value)
  %3954 = call float @dx.op.unary.f32(i32 22, float %3951)  ; Frc(value)
  %3955 = call float @dx.op.unary.f32(i32 22, float %3952)  ; Frc(value)
  %3956 = call float @dx.op.unary.f32(i32 22, float %3953)  ; Frc(value)
  %3957 = fsub fast float -0.000000e+00, %3954
  %3958 = fsub fast float -0.000000e+00, %3955
  %3959 = fsub fast float -0.000000e+00, %3956
  %3960 = select i1 %3948, float %3954, float %3957
  %3961 = select i1 %3949, float %3955, float %3958
  %3962 = select i1 %3950, float %3956, float %3959
  %3963 = fmul fast float %3960, 6.000000e+00
  %3964 = fmul fast float %3961, 6.000000e+00
  %3965 = fmul fast float %3962, 6.000000e+00
  %3966 = fadd fast float %3963, -3.000000e+00
  %3967 = fadd fast float %3964, -3.000000e+00
  %3968 = fadd fast float %3965, -3.000000e+00
  %3969 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3970 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3971 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3972 = fadd fast float %3969, -1.000000e+00
  %3973 = fadd fast float %3970, -1.000000e+00
  %3974 = fadd fast float %3971, -1.000000e+00
  %3975 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3976 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3977 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3978 = fmul fast float %3975, %3598
  %3979 = fmul fast float %3976, %3598
  %3980 = fmul fast float %3977, %3598
  %3981 = fadd fast float %3978, %3491
  %3982 = fadd fast float %3979, %3492
  %3983 = fadd fast float %3980, %3493
  %3984 = icmp eq i32 %3551, 0
  %3985 = select i1 %3984, i32 1, i32 %3494
  %3986 = icmp eq i32 %3498, 0
  br i1 %3986, label %3619, label %3987

; <label>:3987                                    ; preds = %3856
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3990 = bitcast float %3989 to i32
  %3991 = lshr i32 %3990, 8
  %3992 = and i32 %3991, 255
  %3993 = uitofp i32 %3992 to float
  %3994 = fptoui float %3993 to i32
  %3995 = icmp eq i32 %3994, 16
  %3996 = bitcast float %3911 to i32
  %3997 = select i1 %3995, i32 %3996, i32 %3487
  %3998 = icmp eq i32 %3994, 17
  %3999 = select i1 %3998, i32 1065353216, i32 %3997
  %4000 = icmp eq i32 %3994, 18
  %4001 = bitcast float %3913 to i32
  %4002 = select i1 %4000, i32 %4001, i32 %3999
  br label %3619

; <label>:4003                                    ; preds = %3619
  br label %4004

; <label>:4004                                    ; preds = %4003, %3445
  %4005 = phi i32 [ %3446, %3445 ], [ %3620, %4003 ]
  %4006 = phi i32 [ %3447, %3445 ], [ %3621, %4003 ]
  %4007 = phi float [ %3448, %3445 ], [ %3622, %4003 ]
  %4008 = phi float [ %3449, %3445 ], [ %3623, %4003 ]
  %4009 = phi float [ %3450, %3445 ], [ %3624, %4003 ]
  %4010 = phi float [ %3451, %3445 ], [ %3625, %4003 ]
  %4011 = phi float [ %3452, %3445 ], [ %3626, %4003 ]
  %4012 = phi float [ %3453, %3445 ], [ %3627, %4003 ]
  %4013 = phi i32 [ %3454, %3445 ], [ %3628, %4003 ]
  %4014 = phi float [ %3455, %3445 ], [ %3629, %4003 ]
  %4015 = phi float [ %3456, %3445 ], [ %3630, %4003 ]
  %4016 = phi float [ %3457, %3445 ], [ %3631, %4003 ]
  %4017 = phi i32 [ %3458, %3445 ], [ %3632, %4003 ]
  %4018 = phi float [ %3459, %3445 ], [ %3633, %4003 ]
  %4019 = add i32 %3460, 1
  %4020 = icmp ugt i32 %4019, %3442
  br i1 %4020, label %4021, label %3445, !llvm.loop !114

; <label>:4021                                    ; preds = %4004
  br label %4022

; <label>:4022                                    ; preds = %4021, %3393
  %4023 = phi i32 [ %2107, %3393 ], [ %4005, %4021 ]
  %4024 = phi i32 [ %3384, %3393 ], [ %4006, %4021 ]
  %4025 = phi float [ 0.000000e+00, %3393 ], [ %4007, %4021 ]
  %4026 = phi float [ 0.000000e+00, %3393 ], [ %4008, %4021 ]
  %4027 = phi float [ 0.000000e+00, %3393 ], [ %4009, %4021 ]
  %4028 = phi float [ 0.000000e+00, %3393 ], [ %4010, %4021 ]
  %4029 = phi float [ 0.000000e+00, %3393 ], [ %4011, %4021 ]
  %4030 = phi float [ 0.000000e+00, %3393 ], [ %4012, %4021 ]
  %4031 = phi i32 [ 0, %3393 ], [ %4013, %4021 ]
  %4032 = phi float [ 0.000000e+00, %3393 ], [ %4014, %4021 ]
  %4033 = phi float [ 0.000000e+00, %3393 ], [ %4015, %4021 ]
  %4034 = phi float [ 0.000000e+00, %3393 ], [ %4016, %4021 ]
  %4035 = call float @dx.op.dot3.f32(i32 55, float %4025, float %4026, float %4027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4036 = select i1 %2278, float %4035, float %4026
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = bitcast float %4038 to i32
  %4040 = lshr i32 %4039, 8
  %4041 = and i32 %4040, 255
  %4042 = uitofp i32 %4041 to float
  %4043 = fptoui float %4042 to i32
  %4044 = icmp eq i32 %4043, 13
  br i1 %4044, label %4045, label %4065

; <label>:4045                                    ; preds = %4022
  %4046 = fadd fast float %4028, 1.000000e+00
  %4047 = fadd fast float %4029, 1.000000e+00
  %4048 = fadd fast float %4030, 1.000000e+00
  %4049 = fmul fast float %4046, 5.000000e-01
  %4050 = fmul fast float %4047, 5.000000e-01
  %4051 = fmul fast float %4048, 5.000000e-01
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4053 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4054 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4055 = fmul fast float %4052, 1.023000e+03
  %4056 = fmul fast float %4053, 1.023000e+03
  %4057 = fmul fast float %4054, 1.023000e+03
  %4058 = fptoui float %4055 to i32
  %4059 = fptoui float %4056 to i32
  %4060 = fptoui float %4057 to i32
  %4061 = shl i32 %4059, 10
  %4062 = or i32 %4061, %4058
  %4063 = shl i32 %4060, 20
  %4064 = or i32 %4062, %4063
  br label %4065

; <label>:4065                                    ; preds = %4045, %4022
  %4066 = phi i32 [ %4064, %4045 ], [ %4024, %4022 ]
  %4067 = icmp eq i32 %4043, 14
  %4068 = select i1 %4067, i32 %4031, i32 %4066
  %4069 = icmp eq i32 %4043, 22
  br i1 %4069, label %4070, label %4090

; <label>:4070                                    ; preds = %4065
  %4071 = fadd fast float %4032, 1.000000e+00
  %4072 = fadd fast float %4033, 1.000000e+00
  %4073 = fadd fast float %4034, 1.000000e+00
  %4074 = fmul fast float %4071, 5.000000e-01
  %4075 = fmul fast float %4072, 5.000000e-01
  %4076 = fmul fast float %4073, 5.000000e-01
  %4077 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4078 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4079 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4080 = fmul fast float %4077, 1.023000e+03
  %4081 = fmul fast float %4078, 1.023000e+03
  %4082 = fmul fast float %4079, 1.023000e+03
  %4083 = fptoui float %4080 to i32
  %4084 = fptoui float %4081 to i32
  %4085 = fptoui float %4082 to i32
  %4086 = shl i32 %4084, 10
  %4087 = or i32 %4086, %4083
  %4088 = shl i32 %4085, 20
  %4089 = or i32 %4087, %4088
  br label %4090

; <label>:4090                                    ; preds = %4070, %4065
  %4091 = phi i32 [ %4089, %4070 ], [ %4068, %4065 ]
  %4092 = fmul fast float %4025, 0x3FD45F3060000000
  %4093 = select i1 %2278, float 0.000000e+00, float %4092
  %4094 = fmul fast float %4036, 0x3FD45F3060000000
  %4095 = fmul fast float %4027, 0x3FD45F3060000000
  %4096 = select i1 %2278, float 0.000000e+00, float %4095
  br label %4097

; <label>:4097                                    ; preds = %4090, %3383
  %4098 = phi i32 [ %4023, %4090 ], [ %2107, %3383 ]
  %4099 = phi i32 [ %4091, %4090 ], [ %3384, %3383 ]
  %4100 = phi float [ %4093, %4090 ], [ %3349, %3383 ]
  %4101 = phi float [ %4094, %4090 ], [ %3350, %3383 ]
  %4102 = phi float [ %4096, %4090 ], [ %3351, %3383 ]
  %4103 = phi i1 [ false, %4090 ], [ true, %3383 ]
  %4104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.i32 %4104, 0
  %4106 = and i32 %4105, 524288
  %4107 = icmp ne i32 %4106, 0
  %4108 = select i1 %4107, float 0.000000e+00, float 1.000000e+00
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = bitcast float %4110 to i32
  %4112 = and i32 %4111, 255
  %4113 = uitofp i32 %4112 to float
  %4114 = fptoui float %4113 to i32
  %4115 = icmp eq i32 %4114, 38
  %4116 = select i1 %4115, i32 0, i32 %4099
  %4117 = lshr i32 %4111, 8
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = fptoui float %4119 to i32
  %4121 = icmp eq i32 %4120, 24
  br i1 %4121, label %4122, label %4133

; <label>:4122                                    ; preds = %4097
  %4123 = fadd fast float %2314, 1.000000e+00
  %4124 = fmul fast float %4123, 5.000000e-01
  %4125 = select i1 %2316, float %4124, float 1.000000e+00
  %4126 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4127 = fmul fast float %4126, 1.023000e+03
  %4128 = fptoui float %4127 to i32
  %4129 = shl i32 %4128, 10
  %4130 = or i32 %4129, %4128
  %4131 = shl i32 %4128, 20
  %4132 = or i32 %4130, %4131
  br label %4133

; <label>:4133                                    ; preds = %4122, %4097
  %4134 = phi i32 [ %4116, %4097 ], [ %4132, %4122 ]
  %4135 = xor i1 %4107, true
  %4136 = zext i1 %4135 to i32
  br i1 %4107, label %4137, label %4375

; <label>:4137                                    ; preds = %4133
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4142 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.CBufRet.f32 %4143, 2
  %4147 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.CBufRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.CBufRet.f32 %4148, 2
  %4152 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.CBufRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.CBufRet.f32 %4153, 3
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 0
  %4160 = extractvalue %dx.types.CBufRet.f32 %4158, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4158, 2
  %4162 = extractvalue %dx.types.CBufRet.f32 %4158, 3
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4167 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4168 = call float @dx.op.dot3.f32(i32 55, float %4164, float %4165, float %4166, float %2289, float %2290, float %2291)  ; Dot3(ax,ay,az,bx,by,bz)
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4172 = select i1 %58, float %4171, float %4170
  %4173 = fmul fast float %4168, 8.000000e+00
  %4174 = fmul fast float %4173, %4172
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fcmp fast ogt float %4175, 0.000000e+00
  br i1 %4176, label %4177, label %4346, !dx.controlflow.hints !115

; <label>:4177                                    ; preds = %4137
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4180 = fmul fast float %1607, 2.000000e+00
  %4181 = fmul fast float %1608, 2.000000e+00
  %4182 = fadd fast float %4180, -1.000000e+00
  %4183 = fadd fast float %4181, -1.000000e+00
  %4184 = fmul fast float %4179, %4182
  %4185 = fmul fast float %4179, %4183
  %4186 = fadd fast float %4184, %73
  %4187 = fadd fast float %4185, %74
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4191 = fmul fast float %4186, %4189
  %4192 = fmul fast float %4187, %4190
  %4193 = fadd fast float %2236, 0xBFE3333340000000
  %4194 = fmul fast float %4193, 0x4004000020000000
  %4195 = fsub fast float 1.000000e+00, %4194
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = fmul fast float %4196, 3.000000e+00
  %4198 = fadd fast float %4197, %1607
  %4199 = call float @dx.op.unary.f32(i32 27, float %4198)  ; Round_ni(value)
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %4191, float %4192, float %4199, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = fcmp fast une float %4201, 0xFFF0000000000000
  %4203 = fcmp fast une float %4201, 0x7FF0000000000000
  %4204 = and i1 %4202, %4203
  %4205 = fcmp fast olt float %4201, 0.000000e+00
  %4206 = call float @dx.op.unary.f32(i32 6, float %4201)  ; FAbs(value)
  %4207 = fsub fast float 1.000000e+00, %4206
  %4208 = select i1 %4204, float 1.000000e+00, float 0.000000e+00
  %4209 = fmul fast float %4208, %4175
  %4210 = fcmp fast ogt float %4209, 0.000000e+00
  br i1 %4210, label %4211, label %4346, !dx.controlflow.hints !116

; <label>:4211                                    ; preds = %4177
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4216 = select i1 %4205, float 0.000000e+00, float %4213
  %4217 = select i1 %4205, float 0.000000e+00, float %4214
  %4218 = select i1 %4205, float 0.000000e+00, float %4215
  %4219 = select i1 %4205, float %4139, float %4154
  %4220 = select i1 %4205, float %4144, float %4159
  %4221 = select i1 %4205, float %4149, float %4164
  %4222 = select i1 %4205, float %4140, float %4155
  %4223 = select i1 %4205, float %4145, float %4160
  %4224 = select i1 %4205, float %4150, float %4165
  %4225 = select i1 %4205, float %4141, float %4156
  %4226 = select i1 %4205, float %4146, float %4161
  %4227 = select i1 %4205, float %4151, float %4166
  %4228 = select i1 %4205, float %4142, float %4157
  %4229 = select i1 %4205, float %4147, float %4162
  %4230 = select i1 %4205, float %4152, float %4167
  %4231 = fadd fast float %4216, %117
  %4232 = fadd fast float %4217, %118
  %4233 = fadd fast float %4218, %119
  %4234 = fmul fast float %4231, %4219
  %4235 = call float @dx.op.tertiary.f32(i32 46, float %4232, float %4222, float %4234)  ; FMad(a,b,c)
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4225, float %4235)  ; FMad(a,b,c)
  %4237 = fadd fast float %4236, %4228
  %4238 = fmul fast float %4231, %4220
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4232, float %4223, float %4238)  ; FMad(a,b,c)
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4226, float %4239)  ; FMad(a,b,c)
  %4241 = fadd fast float %4240, %4229
  %4242 = fmul fast float %4231, %4221
  %4243 = call float @dx.op.tertiary.f32(i32 46, float %4232, float %4224, float %4242)  ; FMad(a,b,c)
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4227, float %4243)  ; FMad(a,b,c)
  %4245 = fadd fast float %4244, %4230
  %4246 = fdiv fast float 1.000000e+00, %4245
  %4247 = fmul fast float %4246, %4237
  %4248 = fmul fast float %4246, %4241
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4252 = fmul fast float %4247, %4250
  %4253 = fmul fast float %4248, %4251
  %4254 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4255 = extractvalue %dx.types.CBufRet.f32 %4249, 3
  %4256 = fadd fast float %4252, %4254
  %4257 = fadd fast float %4253, %4255
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 3
  %4260 = fmul fast float %4259, %2289
  %4261 = fmul fast float %4259, %2290
  %4262 = fmul fast float %4259, %2291
  %4263 = fadd fast float %4260, %4231
  %4264 = fadd fast float %4261, %4232
  %4265 = fadd fast float %4262, %4233
  %4266 = fmul fast float %4263, %4219
  %4267 = call float @dx.op.tertiary.f32(i32 46, float %4264, float %4222, float %4266)  ; FMad(a,b,c)
  %4268 = call float @dx.op.tertiary.f32(i32 46, float %4265, float %4225, float %4267)  ; FMad(a,b,c)
  %4269 = fadd fast float %4268, %4228
  %4270 = fmul fast float %4263, %4220
  %4271 = call float @dx.op.tertiary.f32(i32 46, float %4264, float %4223, float %4270)  ; FMad(a,b,c)
  %4272 = call float @dx.op.tertiary.f32(i32 46, float %4265, float %4226, float %4271)  ; FMad(a,b,c)
  %4273 = fadd fast float %4272, %4229
  %4274 = fmul fast float %4263, %4221
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4264, float %4224, float %4274)  ; FMad(a,b,c)
  %4276 = call float @dx.op.tertiary.f32(i32 46, float %4265, float %4227, float %4275)  ; FMad(a,b,c)
  %4277 = fadd fast float %4276, %4230
  %4278 = fdiv fast float 1.000000e+00, %4277
  %4279 = fmul fast float %4278, %4269
  %4280 = fmul fast float %4278, %4273
  %4281 = fmul fast float %4256, 2.000000e+00
  %4282 = fadd fast float %4281, -1.000000e+00
  %4283 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4284 = fmul fast float %4283, 5.000000e+00
  %4285 = fadd fast float %4284, -4.000000e+00
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fsub fast float %4247, %4279
  %4288 = fmul fast float %4250, %4287
  %4289 = fmul fast float %4288, %4286
  %4290 = fsub fast float %4279, %4247
  %4291 = fmul fast float %4250, %4290
  %4292 = fadd fast float %4291, %4289
  %4293 = fsub fast float %4280, %4248
  %4294 = fmul fast float %4251, %4293
  %4295 = fmul fast float %4292, %4207
  %4296 = fmul fast float %4294, %4207
  %4297 = fadd fast float %4295, %4256
  %4298 = fadd fast float %4296, %4257
  %4299 = fsub fast float %4278, %4246
  %4300 = fmul fast float %4299, %4207
  %4301 = fadd fast float %4300, %4246
  %4302 = fdiv fast float 1.000000e+00, %4301
  %4303 = extractvalue %dx.types.CBufRet.f32 %4169, 3
  %4304 = fadd fast float %2236, -1.000000e+00
  %4305 = fsub fast float %4302, %4245
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 2
  %4308 = fmul fast float %4307, %4302
  %4309 = fdiv fast float 1.600000e+02, %4308
  %4310 = fmul fast float %4304, %4304
  %4311 = fmul fast float %4310, 0xBFB5B17960000000
  %4312 = fmul fast float %4311, %4305
  %4313 = fmul fast float %4312, %4309
  %4314 = call float @dx.op.unary.f32(i32 21, float %4313)  ; Exp(value)
  %4315 = fmul fast float %4314, 0x3FF04B2960000000
  %4316 = fsub fast float 0x3FF04B2960000000, %4315
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4317, 4.000000e+00
  %4319 = fadd fast float %4318, %4303
  %4320 = fadd fast float %1607, -5.000000e-01
  %4321 = fadd fast float %1608, -5.000000e-01
  %4322 = fmul fast float %4319, 0x3F9EB851E0000000
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = fmul fast float %4323, %4320
  %4325 = fmul fast float %4323, %4321
  %4326 = fadd fast float %4297, %4324
  %4327 = fadd fast float %4298, %4325
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %43, float %4326, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4319)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.ResRet.f32 %4328, 1
  %4331 = extractvalue %dx.types.ResRet.f32 %4328, 2
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4334 = fmul fast float %4333, %4329
  %4335 = fmul fast float %4333, %4330
  %4336 = fmul fast float %4333, %4331
  %4337 = select i1 %2278, float 0.000000e+00, float %4335
  %4338 = select i1 %2278, float 0.000000e+00, float %4336
  %4339 = fmul fast float %4327, 2.000000e+00
  %4340 = fadd fast float %4339, -1.000000e+00
  %4341 = fmul fast float %4340, %4340
  %4342 = fsub fast float 1.000000e+00, %4341
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fmul fast float %4344, %4209
  br label %4346

; <label>:4346                                    ; preds = %4211, %4177, %4137
  %4347 = phi float [ %4334, %4211 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4137 ]
  %4348 = phi float [ %4337, %4211 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4137 ]
  %4349 = phi float [ %4338, %4211 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4137 ]
  %4350 = phi float [ %4345, %4211 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4137 ]
  %4351 = phi float [ %4207, %4211 ], [ %4207, %4177 ], [ 0.000000e+00, %4137 ]
  %4352 = phi float [ %4345, %4211 ], [ %4209, %4177 ], [ 0.000000e+00, %4137 ]
  %4353 = phi float [ %4319, %4211 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4137 ]
  %4354 = icmp eq i32 %4120, 25
  br i1 %4354, label %4355, label %4358

; <label>:4355                                    ; preds = %4346
  %4356 = call float @dx.op.unary.f32(i32 6, float %4351)  ; FAbs(value)
  %4357 = bitcast float %4356 to i32
  br label %4358

; <label>:4358                                    ; preds = %4355, %4346
  %4359 = phi i32 [ %4357, %4355 ], [ %4134, %4346 ]
  %4360 = icmp eq i32 %4120, 26
  %4361 = bitcast float %4352 to i32
  %4362 = select i1 %4360, i32 %4361, i32 %4359
  %4363 = icmp eq i32 %4120, 27
  %4364 = fmul fast float %4353, 2.500000e-01
  %4365 = bitcast float %4364 to i32
  %4366 = select i1 %4363, i32 %4365, i32 %4362
  %4367 = fcmp fast olt float %4350, 1.000000e+00
  %4368 = or i1 %4367, %4135
  %4369 = zext i1 %4368 to i32
  %4370 = fmul fast float %4350, %4108
  %4371 = fsub fast float %4350, %4370
  %4372 = fmul fast float %4371, %4347
  %4373 = fmul fast float %4371, %4348
  %4374 = fmul fast float %4371, %4349
  br label %4375

; <label>:4375                                    ; preds = %4358, %4133
  %4376 = phi i32 [ %4134, %4133 ], [ %4366, %4358 ]
  %4377 = phi float [ 0.000000e+00, %4133 ], [ %4371, %4358 ]
  %4378 = phi float [ 0.000000e+00, %4133 ], [ %4372, %4358 ]
  %4379 = phi float [ 0.000000e+00, %4133 ], [ %4373, %4358 ]
  %4380 = phi float [ 0.000000e+00, %4133 ], [ %4374, %4358 ]
  %4381 = phi i32 [ %4136, %4133 ], [ %4369, %4358 ]
  %4382 = icmp ne i32 %4381, 0
  %4383 = add i32 %4120, -13
  %4384 = icmp ult i32 %4383, 2
  %4385 = or i1 %4384, %4382
  %4386 = icmp eq i32 %4120, 22
  %4387 = or i1 %4385, %4386
  br i1 %4387, label %4388, label %5115

; <label>:4388                                    ; preds = %4375
  %4389 = select i1 %4103, float %3311, float 1.000000e+00
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4393 = fmul fast float %4391, %73
  %4394 = fmul fast float %4392, %74
  %4395 = fptoui float %4393 to i32
  %4396 = fptoui float %4394 to i32
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.CBufRet.f32 %4397, 2
  %4400 = extractvalue %dx.types.CBufRet.f32 %4397, 3
  %4401 = fadd fast float %69, -4.000000e+00
  %4402 = call float @dx.op.binary.f32(i32 35, float %4401, float 0.000000e+00)  ; FMax(a,b)
  %4403 = fadd fast float %4402, %4398
  %4404 = fmul fast float %4403, %4399
  %4405 = call float @dx.op.unary.f32(i32 23, float %4404)  ; Log(value)
  %4406 = fmul fast float %4405, %4400
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 2
  %4409 = fmul fast float %4406, %4408
  %4410 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.i32 %4411, 1
  %4413 = add i32 %4412, -1
  %4414 = uitofp i32 %4412 to float
  %4415 = fmul fast float %4414, %4410
  %4416 = fptoui float %4415 to i32
  %4417 = call i32 @dx.op.binary.i32(i32 40, i32 %4416, i32 %4413)  ; UMin(a,b)
  %4418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.i32 %4418, 2
  %4420 = extractvalue %dx.types.CBufRet.i32 %4418, 3
  %4421 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4396, i32 %4419, i32 %4395)  ; UMad(a,b,c)
  %4422 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4417, i32 %4420, i32 %4421)  ; UMad(a,b,c)
  %4423 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %4424 = fptoui float %4423 to i32
  %4425 = lshr i32 %4424, 5
  %4426 = call i32 @dx.op.binary.i32(i32 40, i32 %4425, i32 8191)  ; UMin(a,b)
  %4427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.i32 %4427, 2
  %4429 = add nsw i32 %4428, -1
  %4430 = call i32 @dx.op.binary.i32(i32 37, i32 %4429, i32 0)  ; IMax(a,b)
  %4431 = shl i32 %4426, 2
  %4432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.i32 %4432, 0
  %4434 = lshr i32 %4433, 16
  %4435 = and i32 %4433, 65535
  %4436 = lshr i32 %4433, 21
  %4437 = lshr i32 %4435, 5
  %4438 = call i32 @dx.op.binary.i32(i32 40, i32 %4437, i32 %4430)  ; UMin(a,b)
  %4439 = icmp ugt i32 %4436, %4438
  br i1 %4439, label %5027, label %4440

; <label>:4440                                    ; preds = %4388
  br label %4441

; <label>:4441                                    ; preds = %5009, %4440
  %4442 = phi i32 [ %5010, %5009 ], [ %4098, %4440 ]
  %4443 = phi i32 [ %5011, %5009 ], [ %4376, %4440 ]
  %4444 = phi float [ %5012, %5009 ], [ 0.000000e+00, %4440 ]
  %4445 = phi float [ %5013, %5009 ], [ 0.000000e+00, %4440 ]
  %4446 = phi float [ %5014, %5009 ], [ 0.000000e+00, %4440 ]
  %4447 = phi float [ %5015, %5009 ], [ 0.000000e+00, %4440 ]
  %4448 = phi float [ %5016, %5009 ], [ 0.000000e+00, %4440 ]
  %4449 = phi float [ %5017, %5009 ], [ 0.000000e+00, %4440 ]
  %4450 = phi i32 [ %5018, %5009 ], [ 0, %4440 ]
  %4451 = phi float [ %5019, %5009 ], [ 0.000000e+00, %4440 ]
  %4452 = phi float [ %5020, %5009 ], [ 0.000000e+00, %4440 ]
  %4453 = phi float [ %5021, %5009 ], [ 0.000000e+00, %4440 ]
  %4454 = phi i32 [ %5022, %5009 ], [ 1, %4440 ]
  %4455 = phi float [ %5023, %5009 ], [ 1.000000e+00, %4440 ]
  %4456 = phi i32 [ %5024, %5009 ], [ %4436, %4440 ]
  %4457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.i32 %4457, 2
  %4459 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4422, i32 %4458, i32 %4456)  ; UMad(a,b,c)
  %4460 = shl i32 %4459, 2
  %4461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.i32 %4461, 0
  %4463 = shl i32 %4456, 5
  %4464 = sub nsw i32 %4434, %4463
  %4465 = call i32 @dx.op.binary.i32(i32 37, i32 %4464, i32 0)  ; IMax(a,b)
  %4466 = call i32 @dx.op.binary.i32(i32 38, i32 %4465, i32 31)  ; IMin(a,b)
  %4467 = sub nsw i32 1, %4434
  %4468 = add nsw i32 %4467, %4435
  %4469 = call i32 @dx.op.binary.i32(i32 37, i32 %4468, i32 0)  ; IMax(a,b)
  %4470 = call i32 @dx.op.binary.i32(i32 38, i32 %4469, i32 32)  ; IMin(a,b)
  %4471 = and i32 %4470, 31
  %4472 = shl i32 -1, %4471
  %4473 = xor i32 %4472, -1
  %4474 = and i32 %4466, 31
  %4475 = shl i32 %4473, %4474
  %4476 = icmp eq i32 %4470, 32
  %4477 = select i1 %4476, i32 -1, i32 %4475
  %4478 = and i32 %4477, %4462
  %4479 = icmp eq i32 %4478, 0
  br i1 %4479, label %5009, label %4480

; <label>:4480                                    ; preds = %4441
  br label %4481

; <label>:4481                                    ; preds = %4615, %4480
  %4482 = phi i32 [ %4616, %4615 ], [ %4442, %4480 ]
  %4483 = phi i32 [ %4617, %4615 ], [ %4443, %4480 ]
  %4484 = phi float [ %4618, %4615 ], [ %4444, %4480 ]
  %4485 = phi float [ %4619, %4615 ], [ %4445, %4480 ]
  %4486 = phi float [ %4620, %4615 ], [ %4446, %4480 ]
  %4487 = phi float [ %4621, %4615 ], [ %4447, %4480 ]
  %4488 = phi float [ %4622, %4615 ], [ %4448, %4480 ]
  %4489 = phi float [ %4623, %4615 ], [ %4449, %4480 ]
  %4490 = phi i32 [ %4624, %4615 ], [ %4450, %4480 ]
  %4491 = phi float [ %4625, %4615 ], [ %4451, %4480 ]
  %4492 = phi float [ %4626, %4615 ], [ %4452, %4480 ]
  %4493 = phi float [ %4627, %4615 ], [ %4453, %4480 ]
  %4494 = phi i32 [ %4628, %4615 ], [ %4454, %4480 ]
  %4495 = phi float [ %4629, %4615 ], [ %4455, %4480 ]
  %4496 = phi i32 [ %4501, %4615 ], [ %4478, %4480 ]
  %4497 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4496)  ; FirstbitLo(value)
  %4498 = add i32 %4497, %4463
  %4499 = and i32 %4497, 31
  %4500 = shl i32 1, %4499
  %4501 = xor i32 %4500, %4496
  %4502 = mul i32 %4498, 72
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4507 = add i32 %4502, 12
  %4508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = add i32 %4502, 16
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.ResRet.f32 %4511, 2
  %4515 = add i32 %4502, 28
  %4516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.f32 %4516, 0
  %4518 = add i32 %4502, 32
  %4519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4518, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.ResRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.ResRet.f32 %4519, 2
  %4523 = extractvalue %dx.types.ResRet.f32 %4519, 3
  %4524 = add i32 %4502, 48
  %4525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = add i32 %4502, 56
  %4529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.ResRet.f32 %4529, 1
  %4532 = add i32 %4502, 64
  %4533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4536 = mul i32 %4498, 60
  %4537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.ResRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.ResRet.f32 %4537, 2
  %4541 = add i32 %4536, 12
  %4542 = add i32 %4536, 48
  %4543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = and i32 %4509, 32767
  %4548 = bitcast float %4505 to i32
  %4549 = and i32 %4509, 32768
  %4550 = icmp ne i32 %4549, 0
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.CBufRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.CBufRet.f32 %4551, 2
  %4555 = fsub fast float %4538, %4552
  %4556 = fsub fast float %4539, %4553
  %4557 = fsub fast float %4540, %4554
  %4558 = fsub fast float %117, %4555
  %4559 = fsub fast float %118, %4556
  %4560 = fsub fast float %119, %4557
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4565 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = add i32 %4536, 24
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4568, float %4569, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = add i32 %4536, 36
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 6, float %4565)  ; FAbs(value)
  %4579 = call float @dx.op.unary.f32(i32 6, float %4571)  ; FAbs(value)
  %4580 = call float @dx.op.unary.f32(i32 6, float %4577)  ; FAbs(value)
  %4581 = fsub fast float %4544, %4578
  %4582 = fsub fast float %4545, %4579
  %4583 = fsub fast float %4546, %4580
  %4584 = fmul fast float %4581, %4512
  %4585 = fmul fast float %4582, %4513
  %4586 = fmul fast float %4583, %4514
  %4587 = call float @dx.op.binary.f32(i32 36, float %4585, float %4586)  ; FMin(a,b)
  %4588 = call float @dx.op.binary.f32(i32 36, float %4584, float %4587)  ; FMin(a,b)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = call float @dx.op.binary.f32(i32 36, float %4495, float %4589)  ; FMin(a,b)
  %4591 = uitofp i1 %4550 to float
  %4592 = select i1 %58, float 1.000000e+00, float 2.000000e+00
  %4593 = fsub fast float %4592, %4591
  %4594 = fmul fast float %4590, %4593
  %4595 = lshr i32 %4482, 8
  %4596 = and i32 %4595, 255
  %4597 = uitofp i32 %4596 to float
  %4598 = fptoui float %4597 to i32
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4601 = bitcast float %4600 to i32
  %4602 = lshr i32 %4601, 24
  %4603 = uitofp i32 %4602 to float
  %4604 = fptoui float %4603 to i32
  %4605 = icmp ne i32 %4604, 1
  %4606 = zext i1 %4605 to i32
  %4607 = add i32 %4606, %4598
  %4608 = uitofp i32 %4607 to float
  %4609 = fptoui float %4608 to i32
  %4610 = shl i32 %4609, 8
  %4611 = and i32 %4610, 65280
  %4612 = and i32 %4482, -65281
  %4613 = or i32 %4611, %4612
  %4614 = fcmp fast ogt float %4594, 0.000000e+00
  br i1 %4614, label %4631, label %4615

; <label>:4615                                    ; preds = %4991, %4860, %4481
  %4616 = phi i32 [ %4938, %4860 ], [ %4613, %4481 ], [ %4938, %4991 ]
  %4617 = phi i32 [ %4483, %4860 ], [ %4483, %4481 ], [ %5007, %4991 ]
  %4618 = phi float [ %4924, %4860 ], [ %4484, %4481 ], [ %4924, %4991 ]
  %4619 = phi float [ %4925, %4860 ], [ %4485, %4481 ], [ %4925, %4991 ]
  %4620 = phi float [ %4926, %4860 ], [ %4486, %4481 ], [ %4926, %4991 ]
  %4621 = phi float [ %4985, %4860 ], [ %4487, %4481 ], [ %4985, %4991 ]
  %4622 = phi float [ %4986, %4860 ], [ %4488, %4481 ], [ %4986, %4991 ]
  %4623 = phi float [ %4987, %4860 ], [ %4489, %4481 ], [ %4987, %4991 ]
  %4624 = phi i32 [ %4989, %4860 ], [ %4490, %4481 ], [ %4989, %4991 ]
  %4625 = phi float [ %4942, %4860 ], [ %4491, %4481 ], [ %4942, %4991 ]
  %4626 = phi float [ %4943, %4860 ], [ %4492, %4481 ], [ %4943, %4991 ]
  %4627 = phi float [ %4944, %4860 ], [ %4493, %4481 ], [ %4944, %4991 ]
  %4628 = phi i32 [ 0, %4860 ], [ %4494, %4481 ], [ 0, %4991 ]
  %4629 = phi float [ %4927, %4860 ], [ %4495, %4481 ], [ %4927, %4991 ]
  %4630 = icmp eq i32 %4496, %4500
  br i1 %4630, label %5008, label %4481

; <label>:4631                                    ; preds = %4481
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 3
  %4634 = bitcast float %4504 to i32
  %4635 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4636 = bitcast float %4635 to i32
  %4637 = lshr i32 %4636, 8
  %4638 = and i32 %4637, 255
  %4639 = uitofp i32 %4638 to float
  %4640 = fptoui float %4639 to i32
  %4641 = and i32 %4640, 2
  %4642 = icmp eq i32 %4641, 0
  %4643 = select i1 %4642, float %2289, float %2161
  %4644 = select i1 %4642, float %2290, float %2162
  %4645 = select i1 %4642, float %2291, float %2163
  %4646 = icmp ne i32 %4634, -1
  %4647 = fcmp oeq float %4633, 0.000000e+00
  %4648 = and i1 %4647, %4646
  br i1 %4648, label %4649, label %4773

; <label>:4649                                    ; preds = %4631
  %4650 = fsub fast float -0.000000e+00, %4562
  %4651 = fsub fast float -0.000000e+00, %4563
  %4652 = fsub fast float -0.000000e+00, %4564
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float %4650, float %4651, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = fsub fast float -0.000000e+00, %4653
  %4655 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4650, float %4651, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = fadd fast float %4655, %4527
  %4657 = fadd fast float %4526, %4655
  %4658 = fsub fast float -0.000000e+00, %4657
  %4659 = fcmp ogt float %4653, -0.000000e+00
  %4660 = select i1 %4659, float %4658, float %4656
  %4661 = call float @dx.op.unary.f32(i32 6, float %4654)  ; FAbs(value)
  %4662 = fdiv fast float 1.000000e+00, %4661
  %4663 = fmul fast float %4660, %4662
  %4664 = call float @dx.op.binary.f32(i32 35, float %4663, float 0.000000e+00)  ; FMax(a,b)
  %4665 = fsub fast float -0.000000e+00, %4568
  %4666 = fsub fast float -0.000000e+00, %4569
  %4667 = fsub fast float -0.000000e+00, %4570
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float %4665, float %4666, float %4667)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = fsub fast float -0.000000e+00, %4668
  %4670 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4665, float %4666, float %4667)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = fadd fast float %4670, %4531
  %4672 = fadd fast float %4530, %4670
  %4673 = fsub fast float -0.000000e+00, %4672
  %4674 = fcmp ogt float %4668, -0.000000e+00
  %4675 = select i1 %4674, float %4673, float %4671
  %4676 = call float @dx.op.unary.f32(i32 6, float %4669)  ; FAbs(value)
  %4677 = fdiv fast float 1.000000e+00, %4676
  %4678 = fmul fast float %4675, %4677
  %4679 = call float @dx.op.binary.f32(i32 35, float %4678, float 0.000000e+00)  ; FMax(a,b)
  %4680 = fsub fast float -0.000000e+00, %4574
  %4681 = fsub fast float -0.000000e+00, %4575
  %4682 = fsub fast float -0.000000e+00, %4576
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = fsub fast float -0.000000e+00, %4683
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = fadd fast float %4685, %4535
  %4687 = fadd fast float %4534, %4685
  %4688 = fsub fast float -0.000000e+00, %4687
  %4689 = fcmp ogt float %4683, -0.000000e+00
  %4690 = select i1 %4689, float %4688, float %4686
  %4691 = call float @dx.op.unary.f32(i32 6, float %4684)  ; FAbs(value)
  %4692 = fdiv fast float 1.000000e+00, %4691
  %4693 = fmul fast float %4690, %4692
  %4694 = call float @dx.op.binary.f32(i32 35, float %4693, float 0.000000e+00)  ; FMax(a,b)
  %4695 = call float @dx.op.binary.f32(i32 36, float %4679, float %4694)  ; FMin(a,b)
  %4696 = call float @dx.op.binary.f32(i32 36, float %4664, float %4695)  ; FMin(a,b)
  %4697 = fmul fast float %4696, %4643
  %4698 = fmul fast float %4696, %4644
  %4699 = fmul fast float %4696, %4645
  %4700 = fadd fast float %4697, %117
  %4701 = fadd fast float %4698, %118
  %4702 = fadd fast float %4699, %119
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4707 = fadd fast float %4700, %4704
  %4708 = fadd fast float %4701, %4705
  %4709 = fadd fast float %4702, %4706
  %4710 = fcmp fast olt float %4664, %4679
  %4711 = fcmp fast olt float %4664, %4694
  %4712 = and i1 %4710, %4711
  br i1 %4712, label %4716, label %4713

; <label>:4713                                    ; preds = %4649
  %4714 = fcmp fast olt float %4679, %4694
  br i1 %4714, label %4715, label %4716

; <label>:4715                                    ; preds = %4713
  br label %4716

; <label>:4716                                    ; preds = %4715, %4713, %4649
  %4717 = phi float [ 0.000000e+00, %4715 ], [ 0.000000e+00, %4713 ], [ 1.000000e+00, %4649 ]
  %4718 = phi float [ 1.000000e+00, %4715 ], [ 0.000000e+00, %4713 ], [ 0.000000e+00, %4649 ]
  %4719 = phi float [ 0.000000e+00, %4715 ], [ 1.000000e+00, %4713 ], [ 0.000000e+00, %4649 ]
  %4720 = phi float [ %4568, %4715 ], [ %4574, %4713 ], [ %4562, %4649 ]
  %4721 = phi float [ %4569, %4715 ], [ %4575, %4713 ], [ %4563, %4649 ]
  %4722 = phi float [ %4570, %4715 ], [ %4576, %4713 ], [ %4564, %4649 ]
  %4723 = call float @dx.op.unary.f32(i32 6, float %4722)  ; FAbs(value)
  %4724 = fcmp fast olt float %4723, 0x3FE276C8C0000000
  %4725 = select i1 %4724, float 0.000000e+00, float 1.000000e+00
  %4726 = select i1 %4724, float 1.000000e+00, float 0.000000e+00
  %4727 = fmul fast float %4726, %4721
  %4728 = fmul fast float %4725, %4722
  %4729 = fsub fast float %4727, %4728
  %4730 = fmul fast float %4720, %4726
  %4731 = fsub fast float -0.000000e+00, %4730
  %4732 = fmul fast float %4725, %4720
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4731, float %4732, float %4729, float %4731, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.unary.f32(i32 25, float %4733)  ; Rsqrt(value)
  %4735 = fmul fast float %4729, %4734
  %4736 = fmul fast float %4734, %4731
  %4737 = fmul fast float %4732, %4734
  %4738 = fmul fast float %4737, %4721
  %4739 = fmul fast float %4736, %4722
  %4740 = fsub fast float %4738, %4739
  %4741 = fmul fast float %4735, %4722
  %4742 = fmul fast float %4737, %4720
  %4743 = fsub fast float %4741, %4742
  %4744 = fmul fast float %4736, %4720
  %4745 = fmul fast float %4735, %4721
  %4746 = fsub fast float %4744, %4745
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4743, float %4746, float %4740, float %4743, float %4746)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = call float @dx.op.unary.f32(i32 25, float %4747)  ; Rsqrt(value)
  %4749 = fmul fast float %4740, %4748
  %4750 = fmul fast float %4743, %4748
  %4751 = fmul fast float %4746, %4748
  %4752 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4709, float %4735, float %4736, float %4737)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4709, float %4749, float %4750, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = fmul fast float %4752, 0x3FA99999A0000000
  %4755 = fmul fast float %4753, 0x3FA99999A0000000
  %4756 = call float @dx.op.unary.f32(i32 22, float %4754)  ; Frc(value)
  %4757 = call float @dx.op.unary.f32(i32 22, float %4755)  ; Frc(value)
  %4758 = fadd fast float %4756, 0xBFB99999A0000000
  %4759 = fadd fast float %4757, 0xBFB99999A0000000
  %4760 = call float @dx.op.unary.f32(i32 6, float %4758)  ; FAbs(value)
  %4761 = call float @dx.op.unary.f32(i32 6, float %4759)  ; FAbs(value)
  %4762 = fmul fast float %4760, 1.000000e+01
  %4763 = fmul fast float %4761, 1.000000e+01
  %4764 = call float @dx.op.binary.f32(i32 36, float %4762, float %4763)  ; FMin(a,b)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = fmul fast float %4766, %4717
  %4768 = fmul fast float %4766, %4718
  %4769 = fmul fast float %4766, %4719
  %4770 = fsub fast float %4700, %4504
  %4771 = fsub fast float %4701, %4505
  %4772 = fsub fast float %4702, %4506
  br label %4780

; <label>:4773                                    ; preds = %4631
  %4774 = fmul fast float %4643, 8.096000e+03
  %4775 = fmul fast float %4644, 8.096000e+03
  %4776 = fmul fast float %4645, 8.096000e+03
  %4777 = fadd fast float %4774, %117
  %4778 = fadd fast float %4775, %118
  %4779 = fadd fast float %4776, %119
  br label %4780

; <label>:4780                                    ; preds = %4773, %4716
  %4781 = phi float [ %4643, %4773 ], [ %4770, %4716 ]
  %4782 = phi float [ %4644, %4773 ], [ %4771, %4716 ]
  %4783 = phi float [ %4645, %4773 ], [ %4772, %4716 ]
  %4784 = phi float [ %4777, %4773 ], [ %4700, %4716 ]
  %4785 = phi float [ %4778, %4773 ], [ %4701, %4716 ]
  %4786 = phi float [ %4779, %4773 ], [ %4702, %4716 ]
  %4787 = phi float [ 0.000000e+00, %4773 ], [ %4767, %4716 ]
  %4788 = phi float [ 0.000000e+00, %4773 ], [ %4768, %4716 ]
  %4789 = phi float [ 0.000000e+00, %4773 ], [ %4769, %4716 ]
  %4790 = fcmp fast olt float %4523, 1.000000e+00
  br i1 %4790, label %4791, label %4822, !dx.controlflow.hints !113

; <label>:4791                                    ; preds = %4780
  %4792 = fmul fast float %4783, %4521
  %4793 = fmul fast float %4782, %4522
  %4794 = fsub fast float %4792, %4793
  %4795 = fmul fast float %4781, %4522
  %4796 = fmul fast float %4783, %4520
  %4797 = fsub fast float %4795, %4796
  %4798 = fmul fast float %4782, %4520
  %4799 = fmul fast float %4781, %4521
  %4800 = fsub fast float %4798, %4799
  %4801 = fmul fast float %4794, 2.000000e+00
  %4802 = fmul fast float %4797, 2.000000e+00
  %4803 = fmul fast float %4800, 2.000000e+00
  %4804 = fmul fast float %4801, %4523
  %4805 = fmul fast float %4802, %4523
  %4806 = fmul fast float %4803, %4523
  %4807 = fmul fast float %4803, %4521
  %4808 = fmul fast float %4802, %4522
  %4809 = fmul fast float %4801, %4522
  %4810 = fmul fast float %4803, %4520
  %4811 = fmul fast float %4802, %4520
  %4812 = fmul fast float %4801, %4521
  %4813 = fadd fast float %4807, %4781
  %4814 = fadd fast float %4813, %4804
  %4815 = fsub fast float %4814, %4808
  %4816 = fsub fast float %4782, %4810
  %4817 = fadd fast float %4816, %4805
  %4818 = fadd fast float %4817, %4809
  %4819 = fadd fast float %4806, %4783
  %4820 = fsub fast float %4819, %4812
  %4821 = fadd fast float %4820, %4811
  br label %4822

; <label>:4822                                    ; preds = %4791, %4780
  %4823 = phi float [ %4815, %4791 ], [ %4781, %4780 ]
  %4824 = phi float [ %4818, %4791 ], [ %4782, %4780 ]
  %4825 = phi float [ %4821, %4791 ], [ %4783, %4780 ]
  br i1 %4648, label %4826, label %4857

; <label>:4826                                    ; preds = %4822
  %4827 = fmul fast float %2236, 0x400187C840000000
  %4828 = fadd fast float %4827, 0xC00EFC2120000000
  %4829 = fmul fast float %4828, %2236
  %4830 = fadd fast float %4829, 0x3FE5D16340000000
  %4831 = fmul fast float %4830, %2236
  %4832 = fadd fast float %4831, 1.000000e+00
  %4833 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4834 = fsub fast float %4784, %117
  %4835 = fsub fast float %4785, %118
  %4836 = fsub fast float %4786, %119
  %4837 = fsub fast float %4784, %4504
  %4838 = fsub fast float %4785, %4505
  %4839 = fsub fast float %4786, %4506
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4837, float %4838, float %4839, float %4837, float %4838, float %4839)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = fadd fast float %4841, 0x3EE4F8B580000000
  %4843 = fdiv fast float %4840, %4842
  %4844 = bitcast float %4843 to i32
  %4845 = ashr i32 %4844, 1
  %4846 = add nsw i32 %4845, 532487669
  %4847 = bitcast i32 %4846 to float
  %4848 = fmul fast float %4847, %4833
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4849, 0x4009981AE0000000
  %4851 = fsub fast float 0x40111BBD80000000, %4850
  %4852 = fmul fast float %4851, %4849
  %4853 = fadd fast float %4852, 0xC0009F6020000000
  %4854 = fmul fast float %4853, %4849
  %4855 = fadd fast float %4854, 1.000000e+00
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  br label %4860

; <label>:4857                                    ; preds = %4822
  %4858 = icmp ne i32 %4548, -1
  %4859 = zext i1 %4858 to i32
  br label %4860

; <label>:4860                                    ; preds = %4857, %4826
  %4861 = phi float [ %2236, %4857 ], [ %4856, %4826 ]
  %4862 = phi i32 [ %4859, %4857 ], [ 0, %4826 ]
  %4863 = fmul float %4861, 5.000000e+00
  %4864 = fsub float 5.000000e+00, %4863
  %4865 = icmp ne i32 %4862, 0
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 3
  %4868 = fadd fast float %4867, %4864
  %4869 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4868)  ; FMax(a,b)
  %4870 = call float @dx.op.unary.f32(i32 6, float %4823)  ; FAbs(value)
  %4871 = call float @dx.op.unary.f32(i32 6, float %4824)  ; FAbs(value)
  %4872 = fadd fast float %4871, %4870
  %4873 = call float @dx.op.unary.f32(i32 6, float %4825)  ; FAbs(value)
  %4874 = fadd fast float %4872, %4873
  %4875 = fcmp fast oeq float %4874, 0.000000e+00
  %4876 = fdiv fast float 1.000000e+00, %4874
  %4877 = select i1 %4875, float 1.000000e+00, float %4876
  %4878 = fmul fast float %4877, %4823
  %4879 = fmul fast float %4877, %4824
  %4880 = call float @dx.op.unary.f32(i32 6, float %4879)  ; FAbs(value)
  %4881 = call float @dx.op.unary.f32(i32 6, float %4878)  ; FAbs(value)
  %4882 = fsub fast float 1.000000e+00, %4880
  %4883 = fsub fast float 1.000000e+00, %4881
  %4884 = fcmp fast oge float %4878, 0.000000e+00
  %4885 = fcmp fast oge float %4879, 0.000000e+00
  %4886 = select i1 %4884, float 1.000000e+00, float -1.000000e+00
  %4887 = select i1 %4885, float 1.000000e+00, float -1.000000e+00
  %4888 = fcmp fast ole float %4825, 0.000000e+00
  %4889 = fmul fast float %4886, %4882
  %4890 = fmul fast float %4887, %4883
  %4891 = select i1 %4888, float %4889, float %4878
  %4892 = select i1 %4888, float %4890, float %4879
  %4893 = fmul fast float %4891, 5.000000e-01
  %4894 = fmul fast float %4892, 5.000000e-01
  %4895 = fadd fast float %4893, 5.000000e-01
  %4896 = fadd fast float %4894, 5.000000e-01
  %4897 = uitofp i32 %4547 to float
  %4898 = call float @dx.op.binary.f32(i32 36, float %4869, float 3.000000e+00)  ; FMin(a,b)
  %4899 = fadd fast float %4898, 2.000000e+00
  %4900 = call float @dx.op.unary.f32(i32 21, float %4899)  ; Exp(value)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4866, 1
  %4902 = fmul fast float %4901, %4900
  %4903 = fmul fast float %4902, 2.000000e+00
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = fmul fast float %4895, %4904
  %4906 = fmul fast float %4896, %4904
  %4907 = fadd fast float %4905, %4902
  %4908 = fadd fast float %4906, %4902
  %4909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %4907, float %4908, float %4897, float undef, i32 0, i32 0, i32 undef, float %4869)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.ResRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.ResRet.f32 %4909, 2
  %4913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.f32 %4913, 3
  %4915 = fmul fast float %4914, %4517
  %4916 = call float @dx.op.binary.f32(i32 36, float %4389, float %4915)  ; FMin(a,b)
  %4917 = select i1 %4865, float %4916, float %4915
  %4918 = fmul fast float %4910, %4594
  %4919 = fmul fast float %4918, %4917
  %4920 = fmul fast float %4911, %4594
  %4921 = fmul fast float %4920, %4917
  %4922 = fmul fast float %4912, %4594
  %4923 = fmul fast float %4922, %4917
  %4924 = fadd fast float %4919, %4484
  %4925 = fadd fast float %4921, %4485
  %4926 = fadd fast float %4923, %4486
  %4927 = fsub fast float %4495, %4594
  %4928 = and i32 %4609, 255
  %4929 = uitofp i32 %4928 to float
  %4930 = fptoui float %4929 to i32
  %4931 = icmp eq i32 %4604, 1
  %4932 = zext i1 %4931 to i32
  %4933 = add i32 %4932, %4930
  %4934 = uitofp i32 %4933 to float
  %4935 = fptoui float %4934 to i32
  %4936 = shl i32 %4935, 8
  %4937 = and i32 %4936, 65280
  %4938 = or i32 %4937, %4612
  %4939 = fmul fast float %4787, %4594
  %4940 = fmul fast float %4788, %4594
  %4941 = fmul fast float %4789, %4594
  %4942 = fadd fast float %4939, %4491
  %4943 = fadd fast float %4940, %4492
  %4944 = fadd fast float %4941, %4493
  %4945 = fmul fast float %4897, 0x3FE3C6EF40000000
  %4946 = call float @dx.op.unary.f32(i32 22, float %4945)  ; Frc(value)
  %4947 = fadd fast float %4946, 0x3FE5555560000000
  %4948 = fadd fast float %4946, 0x3FD5555560000000
  %4949 = fsub fast float -0.000000e+00, %4946
  %4950 = fsub fast float -0.000000e+00, %4947
  %4951 = fsub fast float -0.000000e+00, %4948
  %4952 = fcmp fast oge float %4946, %4949
  %4953 = fcmp fast oge float %4947, %4950
  %4954 = fcmp fast oge float %4948, %4951
  %4955 = call float @dx.op.unary.f32(i32 6, float %4946)  ; FAbs(value)
  %4956 = call float @dx.op.unary.f32(i32 6, float %4947)  ; FAbs(value)
  %4957 = call float @dx.op.unary.f32(i32 6, float %4948)  ; FAbs(value)
  %4958 = call float @dx.op.unary.f32(i32 22, float %4955)  ; Frc(value)
  %4959 = call float @dx.op.unary.f32(i32 22, float %4956)  ; Frc(value)
  %4960 = call float @dx.op.unary.f32(i32 22, float %4957)  ; Frc(value)
  %4961 = fsub fast float -0.000000e+00, %4958
  %4962 = fsub fast float -0.000000e+00, %4959
  %4963 = fsub fast float -0.000000e+00, %4960
  %4964 = select i1 %4952, float %4958, float %4961
  %4965 = select i1 %4953, float %4959, float %4962
  %4966 = select i1 %4954, float %4960, float %4963
  %4967 = fmul fast float %4964, 6.000000e+00
  %4968 = fmul fast float %4965, 6.000000e+00
  %4969 = fmul fast float %4966, 6.000000e+00
  %4970 = fadd fast float %4967, -3.000000e+00
  %4971 = fadd fast float %4968, -3.000000e+00
  %4972 = fadd fast float %4969, -3.000000e+00
  %4973 = call float @dx.op.unary.f32(i32 6, float %4970)  ; FAbs(value)
  %4974 = call float @dx.op.unary.f32(i32 6, float %4971)  ; FAbs(value)
  %4975 = call float @dx.op.unary.f32(i32 6, float %4972)  ; FAbs(value)
  %4976 = fadd fast float %4973, -1.000000e+00
  %4977 = fadd fast float %4974, -1.000000e+00
  %4978 = fadd fast float %4975, -1.000000e+00
  %4979 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = fmul fast float %4979, %4594
  %4983 = fmul fast float %4980, %4594
  %4984 = fmul fast float %4981, %4594
  %4985 = fadd fast float %4982, %4487
  %4986 = fadd fast float %4983, %4488
  %4987 = fadd fast float %4984, %4489
  %4988 = icmp eq i32 %4547, 0
  %4989 = select i1 %4988, i32 1, i32 %4490
  %4990 = icmp eq i32 %4494, 0
  br i1 %4990, label %4615, label %4991

; <label>:4991                                    ; preds = %4860
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = bitcast float %4993 to i32
  %4995 = lshr i32 %4994, 8
  %4996 = and i32 %4995, 255
  %4997 = uitofp i32 %4996 to float
  %4998 = fptoui float %4997 to i32
  %4999 = icmp eq i32 %4998, 16
  %5000 = bitcast float %4915 to i32
  %5001 = select i1 %4999, i32 %5000, i32 %4483
  %5002 = icmp eq i32 %4998, 17
  %5003 = bitcast float %4389 to i32
  %5004 = select i1 %5002, i32 %5003, i32 %5001
  %5005 = icmp eq i32 %4998, 18
  %5006 = bitcast float %4917 to i32
  %5007 = select i1 %5005, i32 %5006, i32 %5004
  br label %4615

; <label>:5008                                    ; preds = %4615
  br label %5009

; <label>:5009                                    ; preds = %5008, %4441
  %5010 = phi i32 [ %4442, %4441 ], [ %4616, %5008 ]
  %5011 = phi i32 [ %4443, %4441 ], [ %4617, %5008 ]
  %5012 = phi float [ %4444, %4441 ], [ %4618, %5008 ]
  %5013 = phi float [ %4445, %4441 ], [ %4619, %5008 ]
  %5014 = phi float [ %4446, %4441 ], [ %4620, %5008 ]
  %5015 = phi float [ %4447, %4441 ], [ %4621, %5008 ]
  %5016 = phi float [ %4448, %4441 ], [ %4622, %5008 ]
  %5017 = phi float [ %4449, %4441 ], [ %4623, %5008 ]
  %5018 = phi i32 [ %4450, %4441 ], [ %4624, %5008 ]
  %5019 = phi float [ %4451, %4441 ], [ %4625, %5008 ]
  %5020 = phi float [ %4452, %4441 ], [ %4626, %5008 ]
  %5021 = phi float [ %4453, %4441 ], [ %4627, %5008 ]
  %5022 = phi i32 [ %4454, %4441 ], [ %4628, %5008 ]
  %5023 = phi float [ %4455, %4441 ], [ %4629, %5008 ]
  %5024 = add i32 %4456, 1
  %5025 = icmp ugt i32 %5024, %4438
  br i1 %5025, label %5026, label %4441, !llvm.loop !114

; <label>:5026                                    ; preds = %5009
  br label %5027

; <label>:5027                                    ; preds = %5026, %4388
  %5028 = phi i32 [ %4098, %4388 ], [ %5010, %5026 ]
  %5029 = phi i32 [ %4376, %4388 ], [ %5011, %5026 ]
  %5030 = phi float [ 0.000000e+00, %4388 ], [ %5012, %5026 ]
  %5031 = phi float [ 0.000000e+00, %4388 ], [ %5013, %5026 ]
  %5032 = phi float [ 0.000000e+00, %4388 ], [ %5014, %5026 ]
  %5033 = phi float [ 0.000000e+00, %4388 ], [ %5015, %5026 ]
  %5034 = phi float [ 0.000000e+00, %4388 ], [ %5016, %5026 ]
  %5035 = phi float [ 0.000000e+00, %4388 ], [ %5017, %5026 ]
  %5036 = phi i32 [ 0, %4388 ], [ %5018, %5026 ]
  %5037 = phi float [ 0.000000e+00, %4388 ], [ %5019, %5026 ]
  %5038 = phi float [ 0.000000e+00, %4388 ], [ %5020, %5026 ]
  %5039 = phi float [ 0.000000e+00, %4388 ], [ %5021, %5026 ]
  %5040 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = select i1 %2278, float 0.000000e+00, float %5030
  %5042 = select i1 %2278, float %5040, float %5031
  %5043 = select i1 %2278, float 0.000000e+00, float %5032
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = bitcast float %5045 to i32
  %5047 = lshr i32 %5046, 8
  %5048 = and i32 %5047, 255
  %5049 = uitofp i32 %5048 to float
  %5050 = fptoui float %5049 to i32
  %5051 = icmp eq i32 %5050, 13
  br i1 %5051, label %5052, label %5072

; <label>:5052                                    ; preds = %5027
  %5053 = fadd fast float %5033, 1.000000e+00
  %5054 = fadd fast float %5034, 1.000000e+00
  %5055 = fadd fast float %5035, 1.000000e+00
  %5056 = fmul fast float %5053, 5.000000e-01
  %5057 = fmul fast float %5054, 5.000000e-01
  %5058 = fmul fast float %5055, 5.000000e-01
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5062 = fmul fast float %5059, 1.023000e+03
  %5063 = fmul fast float %5060, 1.023000e+03
  %5064 = fmul fast float %5061, 1.023000e+03
  %5065 = fptoui float %5062 to i32
  %5066 = fptoui float %5063 to i32
  %5067 = fptoui float %5064 to i32
  %5068 = shl i32 %5066, 10
  %5069 = or i32 %5068, %5065
  %5070 = shl i32 %5067, 20
  %5071 = or i32 %5069, %5070
  br label %5072

; <label>:5072                                    ; preds = %5052, %5027
  %5073 = phi i32 [ %5071, %5052 ], [ %5029, %5027 ]
  %5074 = icmp eq i32 %5050, 14
  %5075 = select i1 %5074, i32 %5036, i32 %5073
  %5076 = icmp eq i32 %5050, 22
  br i1 %5076, label %5077, label %5097

; <label>:5077                                    ; preds = %5072
  %5078 = fadd fast float %5037, 1.000000e+00
  %5079 = fadd fast float %5038, 1.000000e+00
  %5080 = fadd fast float %5039, 1.000000e+00
  %5081 = fmul fast float %5078, 5.000000e-01
  %5082 = fmul fast float %5079, 5.000000e-01
  %5083 = fmul fast float %5080, 5.000000e-01
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = fmul fast float %5084, 1.023000e+03
  %5088 = fmul fast float %5085, 1.023000e+03
  %5089 = fmul fast float %5086, 1.023000e+03
  %5090 = fptoui float %5087 to i32
  %5091 = fptoui float %5088 to i32
  %5092 = fptoui float %5089 to i32
  %5093 = shl i32 %5091, 10
  %5094 = or i32 %5093, %5090
  %5095 = shl i32 %5092, 20
  %5096 = or i32 %5094, %5095
  br label %5097

; <label>:5097                                    ; preds = %5077, %5072
  %5098 = phi i32 [ %5096, %5077 ], [ %5075, %5072 ]
  %5099 = fcmp fast olt float %4377, 0.000000e+00
  %5100 = call float @dx.op.unary.f32(i32 6, float %4377)  ; FAbs(value)
  %5101 = fmul fast float %5100, %4378
  %5102 = fmul fast float %5100, %4379
  %5103 = fmul fast float %5100, %4380
  %5104 = select i1 %5099, float %4378, float %5101
  %5105 = select i1 %5099, float %4379, float %5102
  %5106 = select i1 %5099, float %4380, float %5103
  %5107 = fsub fast float 1.000000e+00, %5100
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fmul fast float %5108, %5041
  %5110 = fmul fast float %5108, %5042
  %5111 = fmul fast float %5108, %5043
  %5112 = fadd fast float %5104, %5109
  %5113 = fadd fast float %5105, %5110
  %5114 = fadd fast float %5106, %5111
  br label %5115

; <label>:5115                                    ; preds = %5097, %4375
  %5116 = phi i32 [ %4098, %4375 ], [ %5028, %5097 ]
  %5117 = phi i32 [ %4376, %4375 ], [ %5098, %5097 ]
  %5118 = phi float [ %4378, %4375 ], [ %5112, %5097 ]
  %5119 = phi float [ %4379, %4375 ], [ %5113, %5097 ]
  %5120 = phi float [ %4380, %4375 ], [ %5114, %5097 ]
  %5121 = fmul fast float %4100, %3390
  %5122 = fmul fast float %4101, %3390
  %5123 = fmul fast float %4102, %3390
  %5124 = fmul fast float %5118, %2200
  %5125 = fmul fast float %5119, %2201
  %5126 = fmul fast float %5120, %3387
  %5127 = fadd fast float %5124, %2091
  %5128 = fadd fast float %5125, %2092
  %5129 = fadd fast float %5126, %2093
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 3
  %5132 = fcmp fast oeq float %5131, 0.000000e+00
  br i1 %5132, label %5440, label %5133

; <label>:5133                                    ; preds = %5115
  %5134 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5130, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = select i1 %2278, float %5142, float %5138
  %5146 = select i1 %2278, float %5144, float %5139
  %5147 = select i1 %2278, float %5143, float %5140
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5152 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5157 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5163 = fmul fast float %5149, %117
  %5164 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5150, float %5163)  ; FMad(a,b,c)
  %5165 = call float @dx.op.tertiary.f32(i32 46, float %119, float %5151, float %5164)  ; FMad(a,b,c)
  %5166 = fadd fast float %5165, %5152
  %5167 = fmul fast float %5154, %117
  %5168 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5155, float %5167)  ; FMad(a,b,c)
  %5169 = call float @dx.op.tertiary.f32(i32 46, float %119, float %5156, float %5168)  ; FMad(a,b,c)
  %5170 = fadd fast float %5169, %5157
  %5171 = fmul fast float %5159, %117
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5160, float %5171)  ; FMad(a,b,c)
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %119, float %5161, float %5172)  ; FMad(a,b,c)
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5178 = fmul fast float %5177, %5166
  %5179 = fmul fast float %5177, %5170
  %5180 = fadd fast float %5178, %5175
  %5181 = fadd fast float %5179, %5176
  %5182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.CBufRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.CBufRet.f32 %5182, 3
  %5186 = fmul fast float %5185, %5166
  %5187 = fmul fast float %5185, %5170
  %5188 = fadd fast float %5186, %5183
  %5189 = fadd fast float %5187, %5184
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 1
  %5192 = fsub fast float -0.000000e+00, %5162
  %5193 = fsub fast float %5192, %5173
  %5194 = fadd fast float %5193, %5191
  %5195 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5196 = fmul fast float %5194, %5195
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5202 = fsub fast float %5188, %5200
  %5203 = fsub fast float %5189, %5201
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5208 = fsub fast float %5180, %5206
  %5209 = fsub fast float %5181, %5207
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5214 = fsub fast float %5166, %5212
  %5215 = fsub fast float %5170, %5213
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5219 = bitcast float %5218 to i32
  %5220 = lshr i32 %5219, 8
  %5221 = and i32 %5220, 255
  %5222 = uitofp i32 %5221 to float
  %5223 = fptoui float %5222 to i32
  %5224 = and i32 %5223, -2
  %5225 = icmp eq i32 %5224, 10
  br i1 %5225, label %5226, label %5296

; <label>:5226                                    ; preds = %5133
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = fcmp fast olt float %5214, 0.000000e+00
  %5230 = extractvalue %dx.types.CBufRet.f32 %5216, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5216, 2
  %5232 = select i1 %5229, float %5230, float %5231
  %5233 = fmul fast float %5232, %5214
  %5234 = call float @dx.op.unary.f32(i32 6, float %5233)  ; FAbs(value)
  %5235 = fcmp fast olt float %5215, 0.000000e+00
  %5236 = extractvalue %dx.types.CBufRet.f32 %5216, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5216, 3
  %5238 = select i1 %5235, float %5236, float %5237
  %5239 = fmul fast float %5238, %5215
  %5240 = call float @dx.op.unary.f32(i32 6, float %5239)  ; FAbs(value)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5234, float %5240)  ; FMax(a,b)
  %5242 = fsub fast float %5228, %5241
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %5243, %5198
  %5245 = fcmp fast olt float %5208, 0.000000e+00
  %5246 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5210, 2
  %5248 = select i1 %5245, float %5246, float %5247
  %5249 = fmul fast float %5248, %5208
  %5250 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5251 = fcmp fast olt float %5209, 0.000000e+00
  %5252 = extractvalue %dx.types.CBufRet.f32 %5210, 1
  %5253 = extractvalue %dx.types.CBufRet.f32 %5210, 3
  %5254 = select i1 %5251, float %5252, float %5253
  %5255 = fmul fast float %5254, %5209
  %5256 = call float @dx.op.unary.f32(i32 6, float %5255)  ; FAbs(value)
  %5257 = call float @dx.op.binary.f32(i32 35, float %5250, float %5256)  ; FMax(a,b)
  %5258 = fsub fast float %5228, %5257
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fmul fast float %5259, %5198
  %5261 = fcmp fast olt float %5202, 0.000000e+00
  %5262 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5264 = select i1 %5261, float %5262, float %5263
  %5265 = fmul fast float %5264, %5202
  %5266 = call float @dx.op.unary.f32(i32 6, float %5265)  ; FAbs(value)
  %5267 = fcmp fast olt float %5203, 0.000000e+00
  %5268 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5270 = select i1 %5267, float %5268, float %5269
  %5271 = fmul fast float %5270, %5203
  %5272 = call float @dx.op.unary.f32(i32 6, float %5271)  ; FAbs(value)
  %5273 = call float @dx.op.binary.f32(i32 35, float %5266, float %5272)  ; FMax(a,b)
  %5274 = fsub fast float %5228, %5273
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %5275, %5198
  %5277 = fadd fast float %5244, 1.000000e+00
  %5278 = fadd fast float %5260, 1.000000e+00
  %5279 = fadd fast float %5276, 1.000000e+00
  %5280 = fmul fast float %5277, 5.000000e-01
  %5281 = fmul fast float %5278, 5.000000e-01
  %5282 = fmul fast float %5279, 5.000000e-01
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5286 = fmul fast float %5283, 1.023000e+03
  %5287 = fmul fast float %5284, 1.023000e+03
  %5288 = fmul fast float %5285, 1.023000e+03
  %5289 = fptoui float %5286 to i32
  %5290 = fptoui float %5287 to i32
  %5291 = fptoui float %5288 to i32
  %5292 = shl i32 %5290, 10
  %5293 = or i32 %5292, %5289
  %5294 = shl i32 %5291, 20
  %5295 = or i32 %5293, %5294
  br label %5296

; <label>:5296                                    ; preds = %5226, %5133
  %5297 = phi i32 [ %5295, %5226 ], [ %5117, %5133 ]
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5300 = fcmp fast une float %5299, 0.000000e+00
  br i1 %5300, label %5301, label %5316

; <label>:5301                                    ; preds = %5296
  %5302 = lshr i32 %2203, 4
  %5303 = lshr i32 %2209, 4
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = fptoui float %5305 to i32
  %5307 = add i32 %5306, 15
  %5308 = lshr i32 %5307, 4
  %5309 = mul i32 %5308, %5303
  %5310 = add i32 %5309, %5302
  %5311 = shl i32 %5310, 3
  %5312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5311, i32 undef)  ; BufferLoad(srv,index,wot)
  %5313 = extractvalue %dx.types.ResRet.i32 %5312, 0
  %5314 = and i32 %5313, -268435456
  %5315 = icmp eq i32 %5314, -1342177280
  br i1 %5315, label %5326, label %5316

; <label>:5316                                    ; preds = %5301, %5296
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5319 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5320 = fmul fast float %5318, %73
  %5321 = fmul fast float %5319, %74
  %5322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %5320, float %5321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5323 = extractvalue %dx.types.ResRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.ResRet.f32 %5322, 1
  %5325 = extractvalue %dx.types.ResRet.f32 %5322, 2
  br label %5326

; <label>:5326                                    ; preds = %5316, %5301
  %5327 = phi float [ %5323, %5316 ], [ 0.000000e+00, %5301 ]
  %5328 = phi float [ %5324, %5316 ], [ 0.000000e+00, %5301 ]
  %5329 = phi float [ %5325, %5316 ], [ 0.000000e+00, %5301 ]
  %5330 = call float @dx.op.binary.f32(i32 36, float %5328, float %5329)  ; FMin(a,b)
  %5331 = call float @dx.op.binary.f32(i32 36, float %5327, float %5330)  ; FMin(a,b)
  %5332 = fcmp fast ogt float %5331, 0.000000e+00
  br i1 %5332, label %5333, label %5440, !dx.controlflow.hints !117

; <label>:5333                                    ; preds = %5326
  %5334 = fmul fast float %5327, %5145
  %5335 = fmul fast float %5328, %5146
  %5336 = fmul fast float %5329, %5147
  %5337 = fsub fast float %5134, %2161
  %5338 = fsub fast float %5135, %2162
  %5339 = fsub fast float %5136, %2163
  %5340 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float %5337, float %5338, float %5339)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = call float @dx.op.unary.f32(i32 25, float %5340)  ; Rsqrt(value)
  %5342 = fmul fast float %5341, %5337
  %5343 = fmul fast float %5341, %5338
  %5344 = fmul fast float %5341, %5339
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = call float @dx.op.dot3.f32(i32 55, float %2279, float %2280, float %2281, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5348 = fmul fast float %5347, %5347
  %5349 = fmul fast float %5348, %2320
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = bitcast float %5352 to i32
  %5354 = lshr i32 %5353, 8
  %5355 = and i32 %5354, 255
  %5356 = uitofp i32 %5355 to float
  %5357 = fptoui float %5356 to i32
  %5358 = and i32 %5357, 8
  %5359 = icmp ne i32 %5358, 0
  %5360 = select i1 %5359, float %5350, float 1.000000e+00
  %5361 = fmul fast float %5360, %5347
  %5362 = call float @dx.op.dot3.f32(i32 55, float %2133, float %2134, float %2135, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = fmul fast float %5362, %5362
  %5364 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5365 = fsub fast float 1.000000e+00, %2311
  %5366 = fmul fast float %2284, %2284
  %5367 = fmul fast float %5366, %5365
  %5368 = fadd fast float %5367, %2311
  %5369 = bitcast float %5368 to i32
  %5370 = ashr i32 %5369, 1
  %5371 = add nsw i32 %5370, 532487669
  %5372 = bitcast i32 %5371 to float
  %5373 = fadd fast float %5372, %2284
  %5374 = fmul fast float %2311, %5363
  %5375 = fsub fast float 1.000000e+00, %5363
  %5376 = fadd fast float %5375, %5374
  %5377 = fmul fast float %5364, %5364
  %5378 = fmul fast float %5377, %5365
  %5379 = fadd fast float %5378, %2311
  %5380 = bitcast float %5379 to i32
  %5381 = ashr i32 %5380, 1
  %5382 = add nsw i32 %5381, 532487669
  %5383 = bitcast i32 %5382 to float
  %5384 = fadd fast float %5383, %5364
  %5385 = fmul fast float %5376, %5376
  %5386 = fmul fast float %5385, %5373
  %5387 = fmul fast float %5386, %5384
  %5388 = fdiv fast float 0x3FF0A00000000000, %5387
  %5389 = fmul fast float %5388, %2311
  %5390 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5391 = fsub fast float 1.000000e+00, %5390
  %5392 = bitcast float %5391 to i32
  %5393 = sitofp i32 %5392 to float
  %5394 = fmul fast float %5393, 5.000000e+00
  %5395 = fadd fast float %5394, 0xC1EFBF8940000000
  %5396 = fptosi float %5395 to i32
  %5397 = bitcast i32 %5396 to float
  %5398 = fmul fast float %5397, %2194
  %5399 = fmul fast float %5397, %2195
  %5400 = fmul fast float %5397, %3385
  %5401 = fadd fast float %5398, %2154
  %5402 = fadd fast float %5399, %2155
  %5403 = fadd fast float %5400, %2282
  %5404 = fmul fast float %5345, 9.843750e-01
  %5405 = fmul fast float %2236, 9.843750e-01
  %5406 = fadd fast float %5404, 7.812500e-03
  %5407 = fadd fast float %5405, 7.812500e-03
  %5408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %5406, float %5407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5409 = extractvalue %dx.types.ResRet.f32 %5408, 2
  %5410 = extractvalue %dx.types.ResRet.f32 %5408, 3
  %5411 = fmul fast float %5409, %2154
  %5412 = fmul fast float %5409, %2155
  %5413 = fmul fast float %5409, %2282
  %5414 = fadd fast float %5411, %5410
  %5415 = fadd fast float %5412, %5410
  %5416 = fadd fast float %5413, %5410
  %5417 = call float @dx.op.binary.f32(i32 35, float %5415, float %5416)  ; FMax(a,b)
  %5418 = call float @dx.op.binary.f32(i32 35, float %5414, float %5417)  ; FMax(a,b)
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = fmul fast float %5419, %5361
  %5421 = fmul fast float %5361, %5389
  %5422 = fmul fast float %5421, %5401
  %5423 = fmul fast float %5421, %5402
  %5424 = fmul fast float %5421, %5403
  %5425 = fmul fast float %5420, %5334
  %5426 = fmul fast float %5420, %5335
  %5427 = fmul fast float %5420, %5336
  %5428 = fadd fast float %5425, %5121
  %5429 = fadd fast float %5426, %5122
  %5430 = fadd fast float %5427, %5123
  %5431 = fmul fast float %5422, %5334
  %5432 = fmul fast float %5423, %5335
  %5433 = fmul fast float %5424, %5336
  %5434 = fadd fast float %5431, %5127
  %5435 = fadd fast float %5432, %5128
  %5436 = fadd fast float %5433, %5129
  %5437 = fadd fast float %5431, %5124
  %5438 = fadd fast float %5432, %5125
  %5439 = fadd fast float %5433, %5126
  br label %5440

; <label>:5440                                    ; preds = %5333, %5326, %5115
  %5441 = phi i32 [ %5297, %5333 ], [ %5117, %5115 ], [ %5297, %5326 ]
  %5442 = phi i32 [ 1, %5333 ], [ 0, %5115 ], [ 0, %5326 ]
  %5443 = phi float [ %5431, %5333 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5326 ]
  %5444 = phi float [ %5432, %5333 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5326 ]
  %5445 = phi float [ %5433, %5333 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5326 ]
  %5446 = phi float [ %5425, %5333 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5326 ]
  %5447 = phi float [ %5426, %5333 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5326 ]
  %5448 = phi float [ %5427, %5333 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5326 ]
  %5449 = phi float [ %5437, %5333 ], [ %5124, %5115 ], [ %5124, %5326 ]
  %5450 = phi float [ %5438, %5333 ], [ %5125, %5115 ], [ %5125, %5326 ]
  %5451 = phi float [ %5439, %5333 ], [ %5126, %5115 ], [ %5126, %5326 ]
  %5452 = phi float [ %5428, %5333 ], [ %5121, %5115 ], [ %5121, %5326 ]
  %5453 = phi float [ %5429, %5333 ], [ %5122, %5115 ], [ %5122, %5326 ]
  %5454 = phi float [ %5430, %5333 ], [ %5123, %5115 ], [ %5123, %5326 ]
  %5455 = phi float [ %5327, %5333 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5326 ]
  %5456 = phi float [ %5434, %5333 ], [ %5127, %5115 ], [ %5127, %5326 ]
  %5457 = phi float [ %5435, %5333 ], [ %5128, %5115 ], [ %5128, %5326 ]
  %5458 = phi float [ %5436, %5333 ], [ %5129, %5115 ], [ %5129, %5326 ]
  %5459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.i32 %5459, 0
  %5461 = icmp eq i32 %5460, 0
  br i1 %5461, label %6285, label %5462

; <label>:5462                                    ; preds = %5440
  %5463 = lshr i32 %2203, 4
  %5464 = lshr i32 %2209, 4
  %5465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.i32 %5465, 0
  %5467 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5464, i32 %5466, i32 %5463)  ; UMad(a,b,c)
  %5468 = add nsw i32 %5460, -1
  %5469 = call i32 @dx.op.binary.i32(i32 37, i32 %5468, i32 0)  ; IMax(a,b)
  %5470 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5471 = fptoui float %5470 to i32
  %5472 = lshr i32 %5471, 5
  %5473 = call i32 @dx.op.binary.i32(i32 40, i32 %5472, i32 8191)  ; UMin(a,b)
  %5474 = shl i32 %5473, 2
  %5475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5474, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.i32 %5475, 0
  %5477 = lshr i32 %5476, 16
  %5478 = and i32 %5476, 65535
  %5479 = lshr i32 %5476, 21
  %5480 = lshr i32 %5478, 5
  %5481 = call i32 @dx.op.binary.i32(i32 40, i32 %5480, i32 %5469)  ; UMin(a,b)
  %5482 = icmp ugt i32 %5479, %5481
  br i1 %5482, label %6218, label %5483

; <label>:5483                                    ; preds = %5462
  br label %5484

; <label>:5484                                    ; preds = %6187, %5483
  %5485 = phi i32 [ %6188, %6187 ], [ %5441, %5483 ]
  %5486 = phi i32 [ %6189, %6187 ], [ 0, %5483 ]
  %5487 = phi i32 [ %6190, %6187 ], [ 0, %5483 ]
  %5488 = phi i32 [ %6191, %6187 ], [ 0, %5483 ]
  %5489 = phi i32 [ %6192, %6187 ], [ 0, %5483 ]
  %5490 = phi i32 [ %6193, %6187 ], [ 0, %5483 ]
  %5491 = phi i32 [ %6194, %6187 ], [ 0, %5483 ]
  %5492 = phi i32 [ %6195, %6187 ], [ 0, %5483 ]
  %5493 = phi i32 [ %6196, %6187 ], [ 0, %5483 ]
  %5494 = phi i32 [ %6215, %6187 ], [ %5479, %5483 ]
  %5495 = phi float [ %6197, %6187 ], [ %5443, %5483 ]
  %5496 = phi float [ %6198, %6187 ], [ %5444, %5483 ]
  %5497 = phi float [ %6199, %6187 ], [ %5445, %5483 ]
  %5498 = phi float [ %6200, %6187 ], [ %5446, %5483 ]
  %5499 = phi float [ %6201, %6187 ], [ %5447, %5483 ]
  %5500 = phi float [ %6202, %6187 ], [ %5448, %5483 ]
  %5501 = phi float [ %6203, %6187 ], [ %5449, %5483 ]
  %5502 = phi float [ %6204, %6187 ], [ %5450, %5483 ]
  %5503 = phi float [ %6205, %6187 ], [ %5451, %5483 ]
  %5504 = phi float [ %6206, %6187 ], [ %5452, %5483 ]
  %5505 = phi float [ %6207, %6187 ], [ %5453, %5483 ]
  %5506 = phi float [ %6208, %6187 ], [ %5454, %5483 ]
  %5507 = phi float [ %6209, %6187 ], [ %5456, %5483 ]
  %5508 = phi float [ %6210, %6187 ], [ %5457, %5483 ]
  %5509 = phi float [ %6211, %6187 ], [ %5458, %5483 ]
  %5510 = phi float [ %6212, %6187 ], [ %5452, %5483 ]
  %5511 = phi float [ %6213, %6187 ], [ %5453, %5483 ]
  %5512 = phi float [ %6214, %6187 ], [ %5454, %5483 ]
  %5513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.i32 %5513, 0
  %5515 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5467, i32 %5514, i32 %5494)  ; UMad(a,b,c)
  %5516 = shl i32 %5515, 2
  %5517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.i32 %5517, 0
  %5519 = shl i32 %5494, 5
  %5520 = sub nsw i32 %5477, %5519
  %5521 = call i32 @dx.op.binary.i32(i32 37, i32 %5520, i32 0)  ; IMax(a,b)
  %5522 = call i32 @dx.op.binary.i32(i32 38, i32 %5521, i32 31)  ; IMin(a,b)
  %5523 = sub nsw i32 1, %5477
  %5524 = add nsw i32 %5523, %5478
  %5525 = call i32 @dx.op.binary.i32(i32 37, i32 %5524, i32 0)  ; IMax(a,b)
  %5526 = call i32 @dx.op.binary.i32(i32 38, i32 %5525, i32 32)  ; IMin(a,b)
  %5527 = and i32 %5526, 31
  %5528 = shl i32 -1, %5527
  %5529 = xor i32 %5528, -1
  %5530 = and i32 %5522, 31
  %5531 = shl i32 %5529, %5530
  %5532 = icmp eq i32 %5526, 32
  %5533 = select i1 %5532, i32 -1, i32 %5531
  %5534 = and i32 %5533, %5518
  %5535 = icmp eq i32 %5534, 0
  br i1 %5535, label %6187, label %5536

; <label>:5536                                    ; preds = %5484
  br label %5537

; <label>:5537                                    ; preds = %5723, %5536
  %5538 = phi i32 [ %5724, %5723 ], [ %5485, %5536 ]
  %5539 = phi i32 [ %5713, %5723 ], [ %5486, %5536 ]
  %5540 = phi i32 [ %5715, %5723 ], [ %5487, %5536 ]
  %5541 = phi i32 [ %5717, %5723 ], [ %5488, %5536 ]
  %5542 = phi i32 [ %5719, %5723 ], [ %5489, %5536 ]
  %5543 = phi i32 [ %5725, %5723 ], [ %5490, %5536 ]
  %5544 = phi i32 [ %5726, %5723 ], [ %5491, %5536 ]
  %5545 = phi i32 [ %5727, %5723 ], [ %5492, %5536 ]
  %5546 = phi i32 [ %5728, %5723 ], [ %5493, %5536 ]
  %5547 = phi i32 [ %5570, %5723 ], [ %5534, %5536 ]
  %5548 = phi float [ %5729, %5723 ], [ %5495, %5536 ]
  %5549 = phi float [ %5730, %5723 ], [ %5496, %5536 ]
  %5550 = phi float [ %5731, %5723 ], [ %5497, %5536 ]
  %5551 = phi float [ %5732, %5723 ], [ %5498, %5536 ]
  %5552 = phi float [ %5733, %5723 ], [ %5499, %5536 ]
  %5553 = phi float [ %5734, %5723 ], [ %5500, %5536 ]
  %5554 = phi float [ %5735, %5723 ], [ %5501, %5536 ]
  %5555 = phi float [ %5736, %5723 ], [ %5502, %5536 ]
  %5556 = phi float [ %5737, %5723 ], [ %5503, %5536 ]
  %5557 = phi float [ %5738, %5723 ], [ %5504, %5536 ]
  %5558 = phi float [ %5739, %5723 ], [ %5505, %5536 ]
  %5559 = phi float [ %5740, %5723 ], [ %5506, %5536 ]
  %5560 = phi float [ %5741, %5723 ], [ %5507, %5536 ]
  %5561 = phi float [ %5742, %5723 ], [ %5508, %5536 ]
  %5562 = phi float [ %5743, %5723 ], [ %5509, %5536 ]
  %5563 = phi float [ %5744, %5723 ], [ %5510, %5536 ]
  %5564 = phi float [ %5745, %5723 ], [ %5511, %5536 ]
  %5565 = phi float [ %5746, %5723 ], [ %5512, %5536 ]
  %5566 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5547)  ; FirstbitLo(value)
  %5567 = add i32 %5566, %5519
  %5568 = and i32 %5566, 31
  %5569 = shl i32 1, %5568
  %5570 = xor i32 %5569, %5547
  %5571 = mul i32 %5567, 112
  %5572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %5571, i32 undef)  ; BufferLoad(srv,index,wot)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.ResRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.ResRet.f32 %5572, 2
  %5576 = add i32 %5571, 16
  %5577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %5576, i32 undef)  ; BufferLoad(srv,index,wot)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.ResRet.f32 %5577, 1
  %5580 = extractvalue %dx.types.ResRet.f32 %5577, 2
  %5581 = add i32 %5571, 28
  %5582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5581, i32 undef)  ; BufferLoad(srv,index,wot)
  %5583 = extractvalue %dx.types.ResRet.i32 %5582, 0
  %5584 = add i32 %5571, 32
  %5585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %5584, i32 undef)  ; BufferLoad(srv,index,wot)
  %5586 = extractvalue %dx.types.ResRet.f32 %5585, 0
  %5587 = extractvalue %dx.types.ResRet.f32 %5585, 1
  %5588 = extractvalue %dx.types.ResRet.f32 %5585, 2
  %5589 = add i32 %5571, 44
  %5590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %5589, i32 undef)  ; BufferLoad(srv,index,wot)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = add i32 %5571, 48
  %5593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %5592, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5597 = extractvalue %dx.types.ResRet.f32 %5593, 3
  %5598 = add i32 %5571, 64
  %5599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %5598, i32 undef)  ; BufferLoad(srv,index,wot)
  %5600 = extractvalue %dx.types.ResRet.f32 %5599, 0
  %5601 = extractvalue %dx.types.ResRet.f32 %5599, 1
  %5602 = extractvalue %dx.types.ResRet.f32 %5599, 2
  %5603 = extractvalue %dx.types.ResRet.f32 %5599, 3
  %5604 = add i32 %5571, 80
  %5605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %5604, i32 undef)  ; BufferLoad(srv,index,wot)
  %5606 = extractvalue %dx.types.ResRet.f32 %5605, 1
  %5607 = extractvalue %dx.types.ResRet.f32 %5605, 2
  %5608 = add i32 %5571, 92
  %5609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5608, i32 undef)  ; BufferLoad(srv,index,wot)
  %5610 = extractvalue %dx.types.ResRet.i32 %5609, 0
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5573, float %5574, float %5575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = select i1 %2278, float %5606, float %5573
  %5613 = select i1 %2278, float %5611, float %5574
  %5614 = select i1 %2278, float %5607, float %5575
  %5615 = and i32 %5610, 65535
  %5616 = uitofp i32 %5615 to float
  %5617 = lshr i32 %5610, 16
  %5618 = uitofp i32 %5617 to float
  %5619 = and i32 %5583, 65535
  %5620 = lshr i32 %5583, 24
  %5621 = and i32 %5620, 3
  %5622 = and i32 %5583, 536870912
  %5623 = icmp ne i32 %5622, 0
  %5624 = icmp eq i32 %5621, 2
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = fsub fast float %117, %5594
  %5627 = fsub fast float %118, %5595
  %5628 = fsub fast float %119, %5596
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fdiv fast float %5629, %5625
  %5631 = call float @dx.op.binary.f32(i32 35, float %5630, float -1.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 36, float %5631, float 1.000000e+00)  ; FMin(a,b)
  %5633 = fmul fast float %5632, %5586
  %5634 = fmul fast float %5632, %5587
  %5635 = fmul fast float %5632, %5588
  %5636 = fadd fast float %5633, %5594
  %5637 = fadd fast float %5634, %5595
  %5638 = fadd fast float %5635, %5596
  %5639 = fsub fast float %5636, %117
  %5640 = fsub fast float %5637, %118
  %5641 = fsub fast float %5638, %119
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = call float @dx.op.unary.f32(i32 24, float %5642)  ; Sqrt(value)
  %5644 = fdiv fast float 1.000000e+00, %5643
  %5645 = fmul fast float %5639, %5644
  %5646 = fmul fast float %5640, %5644
  %5647 = fmul fast float %5641, %5644
  br i1 %5624, label %5648, label %5672

; <label>:5648                                    ; preds = %5537
  %5649 = fmul fast float %5602, %5578
  %5650 = fmul fast float %5602, %5579
  %5651 = fmul fast float %5602, %5580
  %5652 = fsub fast float %5649, %117
  %5653 = fadd fast float %5652, %5636
  %5654 = fsub fast float %5650, %118
  %5655 = fadd fast float %5654, %5637
  %5656 = fsub fast float %5651, %119
  %5657 = fadd fast float %5656, %5638
  %5658 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5655, float %5657, float %5653, float %5655, float %5657)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = call float @dx.op.unary.f32(i32 25, float %5658)  ; Rsqrt(value)
  %5660 = fmul fast float %5659, %5653
  %5661 = fmul fast float %5659, %5655
  %5662 = fmul fast float %5659, %5657
  %5663 = fsub fast float %117, %5636
  %5664 = fsub fast float %118, %5637
  %5665 = fsub fast float %119, %5638
  %5666 = fsub fast float -0.000000e+00, %5663
  %5667 = fsub fast float -0.000000e+00, %5664
  %5668 = fsub fast float -0.000000e+00, %5665
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5667, float %5668, float %5578, float %5579, float %5580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = fcmp fast ogt float %5669, 0.000000e+00
  %5671 = uitofp i1 %5670 to float
  br label %5672

; <label>:5672                                    ; preds = %5648, %5537
  %5673 = phi float [ %5671, %5648 ], [ 1.000000e+00, %5537 ]
  %5674 = phi float [ %5660, %5648 ], [ %5645, %5537 ]
  %5675 = phi float [ %5661, %5648 ], [ %5646, %5537 ]
  %5676 = phi float [ %5662, %5648 ], [ %5647, %5537 ]
  %5677 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5674, float %5675, float %5676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5678 = fmul fast float %5677, %5677
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = fmul fast float %5680, 5.000000e-01
  %5682 = fcmp fast ogt float %5677, 0.000000e+00
  %5683 = fsub fast float 1.000000e+00, %5681
  %5684 = select i1 %5682, float %5681, float %5683
  %5685 = fmul fast float %5684, %5618
  %5686 = fadd fast float %5685, %5616
  %5687 = fmul fast float %5686, 0x3EF0001000000000
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %45, float %5687, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = fmul fast float %5677, %5600
  %5691 = fadd fast float %5690, %5601
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = select i1 %5624, float 1.000000e+00, float %5692
  %5694 = select i1 %5624, float %5692, float 1.000000e+00
  %5695 = fmul fast float %5643, %5597
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = fmul fast float %5696, %5603
  %5698 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5699 = fmul fast float %5698, %5694
  %5700 = fmul fast float %5699, 2.000000e+00
  %5701 = fsub fast float 3.000000e+00, %5700
  %5702 = fmul fast float %5689, %5673
  %5703 = fmul fast float %5699, %5699
  %5704 = fmul fast float %5703, %5702
  %5705 = fmul fast float %5704, %5701
  %5706 = xor i1 %5623, true
  %5707 = and i1 %5624, %5706
  %5708 = icmp ne i32 %5621, 2
  %5709 = and i1 %5708, %5706
  %5710 = and i1 %5623, %5624
  %5711 = and i1 %5623, %5708
  %5712 = zext i1 %5707 to i32
  %5713 = add i32 %5712, %5539
  %5714 = zext i1 %5709 to i32
  %5715 = add i32 %5714, %5540
  %5716 = zext i1 %5710 to i32
  %5717 = add i32 %5716, %5541
  %5718 = zext i1 %5711 to i32
  %5719 = add i32 %5718, %5542
  %5720 = call float @dx.op.binary.f32(i32 36, float %5705, float %5705)  ; FMin(a,b)
  %5721 = call float @dx.op.binary.f32(i32 36, float %5705, float %5720)  ; FMin(a,b)
  %5722 = fcmp fast ogt float %5721, 0.000000e+00
  br i1 %5722, label %5748, label %5723, !dx.controlflow.hints !118

; <label>:5723                                    ; preds = %6171, %5672
  %5724 = phi i32 [ %6181, %6171 ], [ %5538, %5672 ]
  %5725 = phi i32 [ %6182, %6171 ], [ %5543, %5672 ]
  %5726 = phi i32 [ %6183, %6171 ], [ %5544, %5672 ]
  %5727 = phi i32 [ %6184, %6171 ], [ %5545, %5672 ]
  %5728 = phi i32 [ %6185, %6171 ], [ %5546, %5672 ]
  %5729 = phi float [ %6142, %6171 ], [ %5548, %5672 ]
  %5730 = phi float [ %6143, %6171 ], [ %5549, %5672 ]
  %5731 = phi float [ %6144, %6171 ], [ %5550, %5672 ]
  %5732 = phi float [ %6145, %6171 ], [ %5551, %5672 ]
  %5733 = phi float [ %6146, %6171 ], [ %5552, %5672 ]
  %5734 = phi float [ %6147, %6171 ], [ %5553, %5672 ]
  %5735 = phi float [ %6148, %6171 ], [ %5554, %5672 ]
  %5736 = phi float [ %6149, %6171 ], [ %5555, %5672 ]
  %5737 = phi float [ %6150, %6171 ], [ %5556, %5672 ]
  %5738 = phi float [ %6151, %6171 ], [ %5557, %5672 ]
  %5739 = phi float [ %6152, %6171 ], [ %5558, %5672 ]
  %5740 = phi float [ %6153, %6171 ], [ %5559, %5672 ]
  %5741 = phi float [ %6154, %6171 ], [ %5560, %5672 ]
  %5742 = phi float [ %6155, %6171 ], [ %5561, %5672 ]
  %5743 = phi float [ %6156, %6171 ], [ %5562, %5672 ]
  %5744 = phi float [ %6157, %6171 ], [ %5563, %5672 ]
  %5745 = phi float [ %6158, %6171 ], [ %5564, %5672 ]
  %5746 = phi float [ %6159, %6171 ], [ %5565, %5672 ]
  %5747 = icmp eq i32 %5547, %5569
  br i1 %5747, label %6186, label %5537

; <label>:5748                                    ; preds = %5672
  %5749 = icmp eq i32 %5619, 255
  br i1 %5749, label %5887, label %5750, !dx.controlflow.hints !119

; <label>:5750                                    ; preds = %5748
  %5751 = mul nuw nsw i32 %5619, 176
  %5752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5751, i32 undef)  ; BufferLoad(srv,index,wot)
  %5753 = extractvalue %dx.types.ResRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.ResRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.ResRet.f32 %5752, 2
  %5756 = extractvalue %dx.types.ResRet.f32 %5752, 3
  %5757 = add nuw nsw i32 %5751, 16
  %5758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5757, i32 undef)  ; BufferLoad(srv,index,wot)
  %5759 = extractvalue %dx.types.ResRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.ResRet.f32 %5758, 1
  %5761 = add nuw nsw i32 %5751, 32
  %5762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5761, i32 undef)  ; BufferLoad(srv,index,wot)
  %5763 = extractvalue %dx.types.ResRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.ResRet.f32 %5762, 1
  %5765 = add nuw nsw i32 %5751, 48
  %5766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5765, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.ResRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.ResRet.f32 %5766, 2
  %5770 = extractvalue %dx.types.ResRet.f32 %5766, 3
  %5771 = add nuw nsw i32 %5751, 64
  %5772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5771, i32 undef)  ; BufferLoad(srv,index,wot)
  %5773 = extractvalue %dx.types.ResRet.f32 %5772, 0
  %5774 = extractvalue %dx.types.ResRet.f32 %5772, 1
  %5775 = extractvalue %dx.types.ResRet.f32 %5772, 2
  %5776 = extractvalue %dx.types.ResRet.f32 %5772, 3
  %5777 = add nuw nsw i32 %5751, 80
  %5778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5777, i32 undef)  ; BufferLoad(srv,index,wot)
  %5779 = extractvalue %dx.types.ResRet.f32 %5778, 0
  %5780 = extractvalue %dx.types.ResRet.f32 %5778, 1
  %5781 = extractvalue %dx.types.ResRet.f32 %5778, 2
  %5782 = extractvalue %dx.types.ResRet.f32 %5778, 3
  %5783 = add nuw nsw i32 %5751, 96
  %5784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5783, i32 undef)  ; BufferLoad(srv,index,wot)
  %5785 = extractvalue %dx.types.ResRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.ResRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.ResRet.f32 %5784, 2
  %5788 = extractvalue %dx.types.ResRet.f32 %5784, 3
  %5789 = bitcast float %5760 to i32
  %5790 = fmul fast float %5767, %117
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5773, float %5790)  ; FMad(a,b,c)
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %119, float %5779, float %5791)  ; FMad(a,b,c)
  %5793 = fadd fast float %5792, %5785
  %5794 = fmul fast float %5768, %117
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5774, float %5794)  ; FMad(a,b,c)
  %5796 = call float @dx.op.tertiary.f32(i32 46, float %119, float %5780, float %5795)  ; FMad(a,b,c)
  %5797 = fadd fast float %5796, %5786
  %5798 = fmul fast float %5769, %117
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5775, float %5798)  ; FMad(a,b,c)
  %5800 = call float @dx.op.tertiary.f32(i32 46, float %119, float %5781, float %5799)  ; FMad(a,b,c)
  %5801 = fadd fast float %5800, %5787
  %5802 = fmul fast float %5770, %117
  %5803 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5776, float %5802)  ; FMad(a,b,c)
  %5804 = call float @dx.op.tertiary.f32(i32 46, float %119, float %5782, float %5803)  ; FMad(a,b,c)
  %5805 = fadd fast float %5804, %5788
  %5806 = fdiv fast float %5793, %5805
  %5807 = fdiv fast float %5797, %5805
  %5808 = fdiv fast float %5801, %5805
  %5809 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5808)  ; FMax(a,b)
  %5810 = fmul fast float %1607, 0x401921FB60000000
  %5811 = call float @dx.op.unary.f32(i32 13, float %5810)  ; Sin(value)
  %5812 = call float @dx.op.unary.f32(i32 12, float %5810)  ; Cos(value)
  %5813 = fmul fast float %5812, %5764
  %5814 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5764, float 0.000000e+00)  ; FMad(a,b,c)
  %5815 = fmul fast float %5764, %5811
  %5816 = fsub fast float -0.000000e+00, %5815
  %5817 = call float @dx.op.tertiary.f32(i32 46, float %5812, float %5764, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5818

; <label>:5818                                    ; preds = %5818, %5750
  %5819 = phi float [ 0.000000e+00, %5750 ], [ %5851, %5818 ]
  %5820 = phi float [ 0.000000e+00, %5750 ], [ %5853, %5818 ]
  %5821 = phi i32 [ 0, %5750 ], [ %5854, %5818 ]
  %5822 = mul i32 %5821, 2
  %5823 = add i32 0, %5822
  %5824 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5823
  %5825 = load float, float* %5824, align 4
  %5826 = mul i32 %5821, 2
  %5827 = add i32 1, %5826
  %5828 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5827
  %5829 = load float, float* %5828, align 4
  %5830 = fmul fast float %5813, %5825
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5829, float %5816, float %5830)  ; FMad(a,b,c)
  %5832 = fmul fast float %5825, %5814
  %5833 = call float @dx.op.tertiary.f32(i32 46, float %5829, float %5817, float %5832)  ; FMad(a,b,c)
  %5834 = fadd fast float %5831, %5806
  %5835 = fadd fast float %5833, %5807
  %5836 = fmul fast float %5834, %5759
  %5837 = fmul fast float %5835, %5759
  %5838 = call float @dx.op.binary.f32(i32 35, float %5836, float %5755)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5837, float %5755)  ; FMax(a,b)
  %5840 = call float @dx.op.binary.f32(i32 36, float %5838, float %5756)  ; FMin(a,b)
  %5841 = call float @dx.op.binary.f32(i32 36, float %5839, float %5756)  ; FMin(a,b)
  %5842 = fadd fast float %5840, %5753
  %5843 = fadd fast float %5841, %5754
  %5844 = uitofp i32 %5789 to float
  %5845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %5842, float %5843, float %5844, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5846 = extractvalue %dx.types.ResRet.f32 %5845, 0
  %5847 = fsub fast float %5846, %5809
  %5848 = fsub fast float %5847, %5763
  %5849 = fcmp fast ogt float %5848, 0.000000e+00
  %5850 = select i1 %5849, float 1.000000e+00, float 0.000000e+00
  %5851 = fadd fast float %5850, %5819
  %5852 = select i1 %5849, float %5848, float 0.000000e+00
  %5853 = fadd fast float %5852, %5820
  %5854 = add nuw nsw i32 %5821, 1
  %5855 = icmp eq i32 %5854, 8
  br i1 %5855, label %5856, label %5818

; <label>:5856                                    ; preds = %5818
  %5857 = fdiv fast float 1.000000e+00, %5851
  %5858 = fmul fast float %5857, %5853
  %5859 = fdiv fast float 1.000000e+00, %5809
  %5860 = fmul fast float %5858, %5859
  %5861 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  %5862 = call float @dx.op.binary.f32(i32 35, float %5861, float 0.000000e+00)  ; FMax(a,b)
  %5863 = fmul fast float %5851, 1.250000e-01
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = fmul fast float %5864, 2.000000e+00
  %5866 = fadd fast float %5865, -1.000000e+00
  %5867 = fcmp fast ogt float %5866, 0.000000e+00
  %5868 = fcmp fast olt float %5866, 0.000000e+00
  %5869 = zext i1 %5867 to i32
  %5870 = zext i1 %5868 to i32
  %5871 = sub nsw i32 %5869, %5870
  %5872 = sitofp i32 %5871 to float
  %5873 = fmul fast float %5872, %5866
  %5874 = fsub fast float 1.000000e+00, %5873
  %5875 = fmul fast float %5874, %5874
  %5876 = fmul fast float %5875, %5874
  %5877 = fsub fast float %5874, %5876
  %5878 = fmul fast float %5877, %5862
  %5879 = fsub fast float 1.000000e+00, %5876
  %5880 = fsub fast float %5879, %5878
  %5881 = fmul fast float %5872, 5.000000e-01
  %5882 = fmul fast float %5881, %5880
  %5883 = fsub fast float -5.000000e-01, %5882
  %5884 = fmul fast float %5883, %5693
  %5885 = fadd fast float %5884, 1.000000e+00
  %5886 = fmul fast float %5885, %5705
  br label %5887

; <label>:5887                                    ; preds = %5856, %5748
  %5888 = phi float [ %5886, %5856 ], [ %5705, %5748 ]
  %5889 = call float @dx.op.binary.f32(i32 36, float %5888, float %5888)  ; FMin(a,b)
  %5890 = call float @dx.op.binary.f32(i32 36, float %5888, float %5889)  ; FMin(a,b)
  %5891 = fcmp fast ogt float %5890, 0.000000e+00
  br i1 %5891, label %5892, label %6141

; <label>:5892                                    ; preds = %5887
  %5893 = fmul fast float %5888, %5612
  %5894 = fmul fast float %5888, %5613
  %5895 = fmul fast float %5888, %5614
  %5896 = fadd fast float %5645, %2133
  %5897 = fadd fast float %5646, %2134
  %5898 = fadd fast float %5647, %2135
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5896, float %5897, float %5898)  ; Dot3(ax,ay,az,bx,by,bz)
  %5901 = fdiv fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5901, %5899
  %5903 = fmul fast float %5902, %5896
  %5904 = fmul fast float %5902, %5897
  %5905 = fmul fast float %5902, %5898
  %5906 = fadd fast float %5626, %5903
  %5907 = fadd fast float %5627, %5904
  %5908 = fadd fast float %5628, %5905
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5906, float %5907, float %5908, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = fdiv fast float %5909, %5625
  %5911 = call float @dx.op.binary.f32(i32 35, float %5910, float -1.000000e+00)  ; FMax(a,b)
  %5912 = call float @dx.op.binary.f32(i32 36, float %5911, float 1.000000e+00)  ; FMin(a,b)
  %5913 = fmul fast float %5912, %5586
  %5914 = fmul fast float %5912, %5587
  %5915 = fmul fast float %5912, %5588
  %5916 = fsub fast float %5594, %117
  %5917 = fadd fast float %5916, %5913
  %5918 = fsub fast float %5595, %118
  %5919 = fadd fast float %5918, %5914
  %5920 = fsub fast float %5596, %119
  %5921 = fadd fast float %5920, %5915
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5917, float %5919, float %5921, float %5917, float %5919, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.unary.f32(i32 25, float %5922)  ; Rsqrt(value)
  %5924 = fmul fast float %5917, %5923
  %5925 = fmul fast float %5919, %5923
  %5926 = fmul fast float %5921, %5923
  %5927 = fsub fast float %5924, %2161
  %5928 = fsub fast float %5925, %2162
  %5929 = fsub fast float %5926, %2163
  %5930 = call float @dx.op.dot3.f32(i32 55, float %5927, float %5928, float %5929, float %5927, float %5928, float %5929)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = call float @dx.op.unary.f32(i32 25, float %5930)  ; Rsqrt(value)
  %5932 = fmul fast float %5927, %5931
  %5933 = fmul fast float %5928, %5931
  %5934 = fmul fast float %5929, %5931
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5924, float %5925, float %5926, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = call float @dx.op.dot3.f32(i32 55, float %2279, float %2280, float %2281, float %5932, float %5933, float %5934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = fmul fast float %5923, %5591
  %5938 = fmul fast float %5937, %5937
  %5939 = bitcast float %5938 to i32
  %5940 = ashr i32 %5939, 1
  %5941 = sub nsw i32 1597463007, %5940
  %5942 = bitcast i32 %5941 to float
  %5943 = fmul fast float %5942, %5935
  %5944 = fmul fast float %5943, %5943
  %5945 = fsub fast float 1.000000e+00, %5944
  %5946 = fmul fast float %5935, %5938
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5943, 5.000000e-01
  %5949 = fadd fast float %5948, 5.000000e-01
  %5950 = fmul fast float %5949, %5938
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = bitcast float %5951 to i32
  %5953 = ashr i32 %5952, 1
  %5954 = add nsw i32 %5953, 532487669
  %5955 = bitcast i32 %5954 to float
  %5956 = fmul fast float %5955, %5951
  %5957 = fcmp fast ogt float %5945, 0.000000e+00
  %5958 = select i1 %5957, float %5956, float %5947
  %5959 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5960 = fmul fast float %5959, %5959
  %5961 = fmul fast float %5960, %2320
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5965 = bitcast float %5964 to i32
  %5966 = lshr i32 %5965, 8
  %5967 = and i32 %5966, 255
  %5968 = uitofp i32 %5967 to float
  %5969 = fptoui float %5968 to i32
  %5970 = and i32 %5969, 8
  %5971 = icmp ne i32 %5970, 0
  %5972 = select i1 %5971, float %5962, float 1.000000e+00
  %5973 = fmul fast float %5972, %5958
  %5974 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float %2289, float %2290, float %2291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5975 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = call float @dx.op.dot3.f32(i32 55, float %2289, float %2290, float %2291, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5977 = fmul fast float %5974, %5974
  %5978 = fsub fast float %5625, %5977
  %5979 = fmul fast float %5976, %5974
  %5980 = fsub fast float %5979, %5975
  %5981 = fdiv fast float %5980, %5978
  %5982 = call float @dx.op.binary.f32(i32 35, float %5981, float -1.500000e+00)  ; FMax(a,b)
  %5983 = call float @dx.op.binary.f32(i32 36, float %5982, float 1.500000e+00)  ; FMin(a,b)
  %5984 = fmul fast float %5983, %5983
  %5985 = fmul fast float %5984, 0x3FC2F68380000000
  %5986 = fmul fast float %5985, %5983
  %5987 = fsub fast float %5983, %5986
  %5988 = fmul fast float %5987, %5586
  %5989 = fmul fast float %5987, %5587
  %5990 = fmul fast float %5987, %5588
  %5991 = fadd fast float %5988, %5636
  %5992 = fadd fast float %5989, %5637
  %5993 = fadd fast float %5990, %5638
  %5994 = fsub fast float %5991, %117
  %5995 = fsub fast float %5992, %118
  %5996 = fsub fast float %5993, %119
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5994, float %5995, float %5996, float %2289, float %2290, float %2291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = fmul fast float %5997, %2289
  %5999 = fmul fast float %5997, %2290
  %6000 = fmul fast float %5997, %2291
  %6001 = fsub fast float %5998, %5994
  %6002 = fsub fast float %5999, %5995
  %6003 = fsub fast float %6000, %5996
  %6004 = call float @dx.op.dot3.f32(i32 55, float %6001, float %6002, float %6003, float %6001, float %6002, float %6003)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = bitcast float %6004 to i32
  %6006 = ashr i32 %6005, 1
  %6007 = sub nsw i32 1597463007, %6006
  %6008 = bitcast i32 %6007 to float
  %6009 = fmul fast float %6008, %5591
  %6010 = call float @dx.op.dot3.f32(i32 55, float %5994, float %5995, float %5996, float %5994, float %5995, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = bitcast float %6010 to i32
  %6012 = ashr i32 %6011, 1
  %6013 = sub nsw i32 1597463007, %6012
  %6014 = bitcast i32 %6013 to float
  %6015 = fmul fast float %6009, %6009
  %6016 = fadd fast float %6015, 1.250000e-01
  %6017 = call float @dx.op.unary.f32(i32 25, float %6016)  ; Rsqrt(value)
  %6018 = fmul fast float %6009, %6017
  %6019 = fmul fast float %6001, %6018
  %6020 = fmul fast float %6002, %6018
  %6021 = fmul fast float %6003, %6018
  %6022 = fadd fast float %5994, %6019
  %6023 = fadd fast float %5995, %6020
  %6024 = fadd fast float %5996, %6021
  %6025 = call float @dx.op.dot3.f32(i32 55, float %6022, float %6023, float %6024, float %6022, float %6023, float %6024)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = call float @dx.op.unary.f32(i32 25, float %6025)  ; Rsqrt(value)
  %6027 = fmul fast float %6022, %6026
  %6028 = fmul fast float %6023, %6026
  %6029 = fmul fast float %6024, %6026
  %6030 = fsub fast float %6027, %2161
  %6031 = fsub fast float %6028, %2162
  %6032 = fsub fast float %6029, %2163
  %6033 = call float @dx.op.dot3.f32(i32 55, float %6030, float %6031, float %6032, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = call float @dx.op.unary.f32(i32 25, float %6033)  ; Rsqrt(value)
  %6035 = fmul fast float %6030, %6034
  %6036 = fmul fast float %6031, %6034
  %6037 = fmul fast float %6032, %6034
  %6038 = call float @dx.op.dot3.f32(i32 55, float %2133, float %2134, float %2135, float %6035, float %6036, float %6037)  ; Dot3(ax,ay,az,bx,by,bz)
  %6039 = fmul fast float %6038, %6038
  %6040 = call float @dx.op.unary.f32(i32 6, float %5935)  ; FAbs(value)
  %6041 = fsub fast float 1.000000e+00, %2311
  %6042 = fmul fast float %2284, %2284
  %6043 = fmul fast float %6042, %6041
  %6044 = fadd fast float %6043, %2311
  %6045 = bitcast float %6044 to i32
  %6046 = ashr i32 %6045, 1
  %6047 = add nsw i32 %6046, 532487669
  %6048 = bitcast i32 %6047 to float
  %6049 = fadd fast float %6048, %2284
  %6050 = fmul fast float %2311, %6039
  %6051 = fsub fast float 1.000000e+00, %6039
  %6052 = fadd fast float %6051, %6050
  %6053 = fmul fast float %6040, %6040
  %6054 = fmul fast float %6053, %6041
  %6055 = fadd fast float %6054, %2311
  %6056 = bitcast float %6055 to i32
  %6057 = ashr i32 %6056, 1
  %6058 = add nsw i32 %6057, 532487669
  %6059 = bitcast i32 %6058 to float
  %6060 = fadd fast float %6059, %6040
  %6061 = fmul fast float %6052, %6052
  %6062 = fmul fast float %6061, %6049
  %6063 = fmul fast float %6062, %6060
  %6064 = fdiv fast float 1.000000e+00, %6063
  %6065 = bitcast float %2311 to i32
  %6066 = sitofp i32 %6065 to float
  %6067 = fmul fast float %6066, 0x3FE7F73180000000
  %6068 = fadd fast float %6067, 0x41AFE27C40000000
  %6069 = fptosi float %6068 to i32
  %6070 = bitcast i32 %6069 to float
  %6071 = fmul fast float %5591, 0x3FD80E9D60000000
  %6072 = fmul fast float %6071, %6014
  %6073 = fadd fast float %6070, %6072
  %6074 = bitcast float %6073 to i32
  %6075 = sub nsw i32 2129859010, %6074
  %6076 = bitcast i32 %6075 to float
  %6077 = fmul fast float %2311, %6064
  %6078 = fmul fast float %6077, %6070
  %6079 = fmul fast float %6078, %6076
  %6080 = call float @dx.op.unary.f32(i32 6, float %5936)  ; FAbs(value)
  %6081 = fsub fast float 1.000000e+00, %6080
  %6082 = bitcast float %6081 to i32
  %6083 = sitofp i32 %6082 to float
  %6084 = fmul fast float %6083, 5.000000e+00
  %6085 = fadd fast float %6084, 0xC1EFBF8940000000
  %6086 = fptosi float %6085 to i32
  %6087 = bitcast i32 %6086 to float
  %6088 = fmul fast float %6087, %2194
  %6089 = fmul fast float %6087, %2195
  %6090 = fmul fast float %6087, %3385
  %6091 = fadd fast float %6088, %2154
  %6092 = fadd fast float %6089, %2155
  %6093 = fadd fast float %6090, %2282
  %6094 = fmul fast float %5935, 9.843750e-01
  %6095 = fmul fast float %2236, 9.843750e-01
  %6096 = fadd fast float %6094, 7.812500e-03
  %6097 = fadd fast float %6095, 7.812500e-03
  %6098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %6096, float %6097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6099 = extractvalue %dx.types.ResRet.f32 %6098, 2
  %6100 = extractvalue %dx.types.ResRet.f32 %6098, 3
  %6101 = fmul fast float %6099, %2154
  %6102 = fmul fast float %6099, %2155
  %6103 = fmul fast float %6099, %2282
  %6104 = fadd fast float %6101, %6100
  %6105 = fadd fast float %6102, %6100
  %6106 = fadd fast float %6103, %6100
  %6107 = call float @dx.op.binary.f32(i32 35, float %6105, float %6106)  ; FMax(a,b)
  %6108 = call float @dx.op.binary.f32(i32 35, float %6104, float %6107)  ; FMax(a,b)
  %6109 = fsub fast float 1.000000e+00, %6108
  %6110 = fmul fast float %6109, %5973
  %6111 = fmul fast float %6091, %5973
  %6112 = fmul fast float %6111, %6079
  %6113 = fmul fast float %6092, %5973
  %6114 = fmul fast float %6113, %6079
  %6115 = fmul fast float %6093, %5973
  %6116 = fmul fast float %6115, %6079
  %6117 = fmul fast float %6110, %5893
  %6118 = fmul fast float %6110, %5894
  %6119 = fmul fast float %6110, %5895
  %6120 = fadd fast float %6117, %5563
  %6121 = fadd fast float %6118, %5564
  %6122 = fadd fast float %6119, %5565
  %6123 = fmul fast float %6112, %5893
  %6124 = fmul fast float %6114, %5894
  %6125 = fmul fast float %6116, %5895
  %6126 = fadd fast float %6123, %5560
  %6127 = fadd fast float %6124, %5561
  %6128 = fadd fast float %6125, %5562
  %6129 = fadd fast float %6117, %5557
  %6130 = fadd fast float %6118, %5558
  %6131 = fadd fast float %6119, %5559
  %6132 = fadd fast float %6123, %5554
  %6133 = fadd fast float %6124, %5555
  %6134 = fadd fast float %6125, %5556
  %6135 = fadd fast float %6117, %5551
  %6136 = fadd fast float %6118, %5552
  %6137 = fadd fast float %6119, %5553
  %6138 = fadd fast float %6123, %5548
  %6139 = fadd fast float %6124, %5549
  %6140 = fadd fast float %6125, %5550
  br label %6141

; <label>:6141                                    ; preds = %5892, %5887
  %6142 = phi float [ %5548, %5887 ], [ %6138, %5892 ]
  %6143 = phi float [ %5549, %5887 ], [ %6139, %5892 ]
  %6144 = phi float [ %5550, %5887 ], [ %6140, %5892 ]
  %6145 = phi float [ %5551, %5887 ], [ %6135, %5892 ]
  %6146 = phi float [ %5552, %5887 ], [ %6136, %5892 ]
  %6147 = phi float [ %5553, %5887 ], [ %6137, %5892 ]
  %6148 = phi float [ %5554, %5887 ], [ %6132, %5892 ]
  %6149 = phi float [ %5555, %5887 ], [ %6133, %5892 ]
  %6150 = phi float [ %5556, %5887 ], [ %6134, %5892 ]
  %6151 = phi float [ %5557, %5887 ], [ %6129, %5892 ]
  %6152 = phi float [ %5558, %5887 ], [ %6130, %5892 ]
  %6153 = phi float [ %5559, %5887 ], [ %6131, %5892 ]
  %6154 = phi float [ %5560, %5887 ], [ %6126, %5892 ]
  %6155 = phi float [ %5561, %5887 ], [ %6127, %5892 ]
  %6156 = phi float [ %5562, %5887 ], [ %6128, %5892 ]
  %6157 = phi float [ %5563, %5887 ], [ %6120, %5892 ]
  %6158 = phi float [ %5564, %5887 ], [ %6121, %5892 ]
  %6159 = phi float [ %5565, %5887 ], [ %6122, %5892 ]
  %6160 = bitcast i32 %5538 to float
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6163 = bitcast float %6162 to i32
  %6164 = and i32 %6163, 65535
  %6165 = icmp eq i32 %6164, 65535
  br i1 %6165, label %6166, label %6168

; <label>:6166                                    ; preds = %6141
  %6167 = call float @dx.op.binary.f32(i32 35, float %6160, float %5888)  ; FMax(a,b)
  br label %6171

; <label>:6168                                    ; preds = %6141
  %6169 = icmp eq i32 %6164, %5567
  %6170 = select i1 %6169, float %5888, float %6160
  br label %6171

; <label>:6171                                    ; preds = %6168, %6166
  %6172 = phi float [ %6167, %6166 ], [ %6170, %6168 ]
  %6173 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6174 = bitcast float %6173 to i32
  %6175 = lshr i32 %6174, 8
  %6176 = and i32 %6175, 255
  %6177 = uitofp i32 %6176 to float
  %6178 = fptoui float %6177 to i32
  %6179 = icmp eq i32 %6178, 15
  %6180 = bitcast float %6172 to i32
  %6181 = select i1 %6179, i32 %6180, i32 %5538
  %6182 = add i32 %5712, %5543
  %6183 = add i32 %5714, %5544
  %6184 = add i32 %5716, %5545
  %6185 = add i32 %5718, %5546
  br label %5723

; <label>:6186                                    ; preds = %5723
  br label %6187

; <label>:6187                                    ; preds = %6186, %5484
  %6188 = phi i32 [ %5485, %5484 ], [ %5724, %6186 ]
  %6189 = phi i32 [ %5486, %5484 ], [ %5713, %6186 ]
  %6190 = phi i32 [ %5487, %5484 ], [ %5715, %6186 ]
  %6191 = phi i32 [ %5488, %5484 ], [ %5717, %6186 ]
  %6192 = phi i32 [ %5489, %5484 ], [ %5719, %6186 ]
  %6193 = phi i32 [ %5490, %5484 ], [ %5725, %6186 ]
  %6194 = phi i32 [ %5491, %5484 ], [ %5726, %6186 ]
  %6195 = phi i32 [ %5492, %5484 ], [ %5727, %6186 ]
  %6196 = phi i32 [ %5493, %5484 ], [ %5728, %6186 ]
  %6197 = phi float [ %5495, %5484 ], [ %5729, %6186 ]
  %6198 = phi float [ %5496, %5484 ], [ %5730, %6186 ]
  %6199 = phi float [ %5497, %5484 ], [ %5731, %6186 ]
  %6200 = phi float [ %5498, %5484 ], [ %5732, %6186 ]
  %6201 = phi float [ %5499, %5484 ], [ %5733, %6186 ]
  %6202 = phi float [ %5500, %5484 ], [ %5734, %6186 ]
  %6203 = phi float [ %5501, %5484 ], [ %5735, %6186 ]
  %6204 = phi float [ %5502, %5484 ], [ %5736, %6186 ]
  %6205 = phi float [ %5503, %5484 ], [ %5737, %6186 ]
  %6206 = phi float [ %5504, %5484 ], [ %5738, %6186 ]
  %6207 = phi float [ %5505, %5484 ], [ %5739, %6186 ]
  %6208 = phi float [ %5506, %5484 ], [ %5740, %6186 ]
  %6209 = phi float [ %5507, %5484 ], [ %5741, %6186 ]
  %6210 = phi float [ %5508, %5484 ], [ %5742, %6186 ]
  %6211 = phi float [ %5509, %5484 ], [ %5743, %6186 ]
  %6212 = phi float [ %5510, %5484 ], [ %5744, %6186 ]
  %6213 = phi float [ %5511, %5484 ], [ %5745, %6186 ]
  %6214 = phi float [ %5512, %5484 ], [ %5746, %6186 ]
  %6215 = add i32 %5494, 1
  %6216 = icmp ugt i32 %6215, %5481
  br i1 %6216, label %6217, label %5484

; <label>:6217                                    ; preds = %6187
  br label %6218

; <label>:6218                                    ; preds = %6217, %5462
  %6219 = phi i32 [ %5441, %5462 ], [ %6188, %6217 ]
  %6220 = phi i32 [ 0, %5462 ], [ %6189, %6217 ]
  %6221 = phi i32 [ 0, %5462 ], [ %6190, %6217 ]
  %6222 = phi i32 [ 0, %5462 ], [ %6191, %6217 ]
  %6223 = phi i32 [ 0, %5462 ], [ %6192, %6217 ]
  %6224 = phi i32 [ 0, %5462 ], [ %6193, %6217 ]
  %6225 = phi i32 [ 0, %5462 ], [ %6194, %6217 ]
  %6226 = phi i32 [ 0, %5462 ], [ %6195, %6217 ]
  %6227 = phi i32 [ 0, %5462 ], [ %6196, %6217 ]
  %6228 = phi float [ %5443, %5462 ], [ %6197, %6217 ]
  %6229 = phi float [ %5444, %5462 ], [ %6198, %6217 ]
  %6230 = phi float [ %5445, %5462 ], [ %6199, %6217 ]
  %6231 = phi float [ %5446, %5462 ], [ %6200, %6217 ]
  %6232 = phi float [ %5447, %5462 ], [ %6201, %6217 ]
  %6233 = phi float [ %5448, %5462 ], [ %6202, %6217 ]
  %6234 = phi float [ %5449, %5462 ], [ %6203, %6217 ]
  %6235 = phi float [ %5450, %5462 ], [ %6204, %6217 ]
  %6236 = phi float [ %5451, %5462 ], [ %6205, %6217 ]
  %6237 = phi float [ %5452, %5462 ], [ %6206, %6217 ]
  %6238 = phi float [ %5453, %5462 ], [ %6207, %6217 ]
  %6239 = phi float [ %5454, %5462 ], [ %6208, %6217 ]
  %6240 = phi float [ %5456, %5462 ], [ %6209, %6217 ]
  %6241 = phi float [ %5457, %5462 ], [ %6210, %6217 ]
  %6242 = phi float [ %5458, %5462 ], [ %6211, %6217 ]
  %6243 = phi float [ %5452, %5462 ], [ %6212, %6217 ]
  %6244 = phi float [ %5453, %5462 ], [ %6213, %6217 ]
  %6245 = phi float [ %5454, %5462 ], [ %6214, %6217 ]
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6248 = bitcast float %6247 to i32
  %6249 = lshr i32 %6248, 24
  %6250 = uitofp i32 %6249 to float
  %6251 = fptoui float %6250 to i32
  %6252 = icmp eq i32 %6251, 1
  %6253 = select i1 %6252, i32 %6224, i32 %6220
  %6254 = uitofp i32 %6253 to float
  %6255 = fptoui float %6254 to i32
  %6256 = shl i32 %6255, 8
  %6257 = select i1 %6252, i32 %6225, i32 %6221
  %6258 = uitofp i32 %6257 to float
  %6259 = fptoui float %6258 to i32
  %6260 = shl i32 %6259, 16
  %6261 = and i32 %6256, 65280
  %6262 = or i32 %6261, %5442
  %6263 = select i1 %6252, i32 %6226, i32 %6222
  %6264 = uitofp i32 %6263 to float
  %6265 = fptoui float %6264 to i32
  %6266 = shl i32 %6265, 24
  %6267 = and i32 %6260, 16711680
  %6268 = or i32 %6262, %6267
  %6269 = or i32 %6268, %6266
  %6270 = select i1 %6252, i32 %6227, i32 %6223
  %6271 = uitofp i32 %6270 to float
  %6272 = fptoui float %6271 to i32
  %6273 = and i32 %6272, 255
  %6274 = and i32 %5116, -256
  %6275 = or i32 %6273, %6274
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = bitcast float %6277 to i32
  %6279 = lshr i32 %6278, 8
  %6280 = and i32 %6279, 255
  %6281 = uitofp i32 %6280 to float
  %6282 = fptoui float %6281 to i32
  %6283 = icmp eq i32 %6282, 12
  %6284 = select i1 %6283, i32 0, i32 %6219
  br label %6285

; <label>:6285                                    ; preds = %6218, %5440
  %6286 = phi i32 [ %5116, %5440 ], [ %6275, %6218 ]
  %6287 = phi i32 [ 0, %5440 ], [ %6269, %6218 ]
  %6288 = phi i32 [ %5441, %5440 ], [ %6284, %6218 ]
  %6289 = phi float [ %5443, %5440 ], [ %6228, %6218 ]
  %6290 = phi float [ %5444, %5440 ], [ %6229, %6218 ]
  %6291 = phi float [ %5445, %5440 ], [ %6230, %6218 ]
  %6292 = phi float [ %5446, %5440 ], [ %6231, %6218 ]
  %6293 = phi float [ %5447, %5440 ], [ %6232, %6218 ]
  %6294 = phi float [ %5448, %5440 ], [ %6233, %6218 ]
  %6295 = phi float [ %5449, %5440 ], [ %6234, %6218 ]
  %6296 = phi float [ %5450, %5440 ], [ %6235, %6218 ]
  %6297 = phi float [ %5451, %5440 ], [ %6236, %6218 ]
  %6298 = phi float [ %5452, %5440 ], [ %6237, %6218 ]
  %6299 = phi float [ %5453, %5440 ], [ %6238, %6218 ]
  %6300 = phi float [ %5454, %5440 ], [ %6239, %6218 ]
  %6301 = phi float [ %5456, %5440 ], [ %6240, %6218 ]
  %6302 = phi float [ %5457, %5440 ], [ %6241, %6218 ]
  %6303 = phi float [ %5458, %5440 ], [ %6242, %6218 ]
  %6304 = phi float [ %5452, %5440 ], [ %6243, %6218 ]
  %6305 = phi float [ %5453, %5440 ], [ %6244, %6218 ]
  %6306 = phi float [ %5454, %5440 ], [ %6245, %6218 ]
  br i1 %58, label %6307, label %6460

; <label>:6307                                    ; preds = %6285
  %6308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.i32 %6308, 0
  %6310 = call i32 @dx.op.binary.i32(i32 40, i32 %161, i32 %6309)  ; UMin(a,b)
  %6311 = mul i32 %6310, 36
  %6312 = add i32 %6311, 4
  %6313 = add i32 %6312, %395
  %6314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6313, i32 undef)  ; BufferLoad(srv,index,wot)
  %6315 = extractvalue %dx.types.ResRet.i32 %6314, 0
  %6316 = and i32 %6315, 32767
  %6317 = mul nuw nsw i32 %6316, 928
  %6318 = add nuw nsw i32 %6317, 44
  %6319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6318, i32 undef)  ; BufferLoad(srv,index,wot)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 0
  %6321 = add nuw nsw i32 %6317, 48
  %6322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6321, i32 undef)  ; BufferLoad(srv,index,wot)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.ResRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.ResRet.f32 %6322, 2
  %6326 = add nuw nsw i32 %6317, 60
  %6327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6326, i32 undef)  ; BufferLoad(srv,index,wot)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.ResRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.ResRet.f32 %6327, 2
  %6331 = fmul fast float %6323, 0x3F847AE140000000
  %6332 = fmul fast float %6324, 0x3F847AE140000000
  %6333 = fmul fast float %6325, 0x3F847AE140000000
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 0
  %6336 = extractvalue %dx.types.CBufRet.f32 %6334, 1
  %6337 = extractvalue %dx.types.CBufRet.f32 %6334, 2
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.CBufRet.f32 %6338, 1
  %6341 = call float @dx.op.dot3.f32(i32 55, float %6335, float %6336, float %6337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6342 = select i1 %2278, float %6339, float %6335
  %6343 = select i1 %2278, float %6341, float %6336
  %6344 = select i1 %2278, float %6340, float %6337
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = fadd fast float %6328, %6323
  %6350 = fmul fast float %6349, 0x3F847AE140000000
  %6351 = fadd fast float %6329, %6324
  %6352 = fmul fast float %6351, 0x3F847AE140000000
  %6353 = fadd fast float %6330, %6325
  %6354 = fmul fast float %6353, 0x3F847AE140000000
  %6355 = call float @dx.op.dot3.f32(i32 55, float %6346, float %6347, float %6348, float %2161, float %2162, float %2163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6356 = fcmp fast ogt float %6320, 0.000000e+00
  %6357 = select i1 %6356, float 1.000000e+00, float -1.000000e+00
  %6358 = fmul fast float %6357, 5.000000e-01
  %6359 = fmul fast float %6358, %6355
  %6360 = fmul fast float %6357, %6320
  %6361 = fadd fast float %6359, 4.921875e-01
  %6362 = fadd fast float %6360, -3.125000e-02
  %6363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %45, float %6361, float 0x3FB25F3060000000, float %6362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = fmul fast float %6368, %6366
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6371 = fadd fast float %6369, %6370
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = fmul fast float %6373, %5455
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6376 = fadd fast float %6374, %6375
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6365, 3
  %6379 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6380 = fmul fast float %6379, %6378
  %6381 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6382 = fadd fast float %6380, %6381
  %6383 = fmul fast float %6364, 0x400921FB60000000
  %6384 = fmul fast float %6383, %6371
  %6385 = fmul fast float %6384, %6377
  %6386 = call float @dx.op.binary.f32(i32 35, float %6350, float 0x3F10000000000000)  ; FMax(a,b)
  %6387 = call float @dx.op.binary.f32(i32 35, float %6352, float 0x3F10000000000000)  ; FMax(a,b)
  %6388 = call float @dx.op.binary.f32(i32 35, float %6354, float 0x3F10000000000000)  ; FMax(a,b)
  %6389 = fdiv fast float 1.000000e+00, %6386
  %6390 = fdiv fast float 1.000000e+00, %6387
  %6391 = fdiv fast float 1.000000e+00, %6388
  %6392 = fmul fast float %6349, 0xBF8D8BE060000000
  %6393 = fmul fast float %6351, 0xBF8D8BE060000000
  %6394 = fmul fast float %6353, 0xBF8D8BE060000000
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 3
  %6397 = call float @dx.op.dot3.f32(i32 55, float %6389, float %6390, float %6391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6398 = fmul fast float %6396, %6397
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 3
  %6401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6400)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2279, float %2280, float %2281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6403 = fdiv fast float 1.000000e+00, %6402
  %6404 = fmul fast float %6403, %6401
  %6405 = fcmp ogt float %2163, -0.000000e+00
  %6406 = select i1 %6405, float %6400, float %6404
  %6407 = call float @dx.op.binary.f32(i32 36, float %6406, float %6398)  ; FMin(a,b)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6409 = fmul fast float %6408, %6407
  %6410 = fmul fast float %6409, %6392
  %6411 = fmul fast float %6409, %6393
  %6412 = fmul fast float %6409, %6394
  %6413 = call float @dx.op.unary.f32(i32 21, float %6410)  ; Exp(value)
  %6414 = call float @dx.op.unary.f32(i32 21, float %6411)  ; Exp(value)
  %6415 = call float @dx.op.unary.f32(i32 21, float %6412)  ; Exp(value)
  %6416 = fmul fast float %6385, %6342
  %6417 = fmul fast float %6416, %6413
  %6418 = fmul fast float %6385, %6343
  %6419 = fmul fast float %6418, %6414
  %6420 = fmul fast float %6385, %6344
  %6421 = fmul fast float %6420, %6415
  %6422 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6423 = fmul fast float %6422, %6407
  %6424 = fmul fast float %6423, %6392
  %6425 = fmul fast float %6423, %6393
  %6426 = fmul fast float %6423, %6394
  %6427 = call float @dx.op.unary.f32(i32 21, float %6424)  ; Exp(value)
  %6428 = call float @dx.op.unary.f32(i32 21, float %6425)  ; Exp(value)
  %6429 = call float @dx.op.unary.f32(i32 21, float %6426)  ; Exp(value)
  %6430 = fmul fast float %6382, %3349
  %6431 = fmul fast float %6430, %6427
  %6432 = fmul fast float %6382, %3350
  %6433 = fmul fast float %6432, %6428
  %6434 = fmul fast float %6382, %3351
  %6435 = fmul fast float %6434, %6429
  %6436 = fadd fast float %6431, %6417
  %6437 = fmul fast float %6331, %6436
  %6438 = fadd fast float %6433, %6419
  %6439 = fmul fast float %6332, %6438
  %6440 = fadd fast float %6435, %6421
  %6441 = fmul fast float %6333, %6440
  %6442 = fmul fast float %6406, %6392
  %6443 = fmul fast float %6406, %6393
  %6444 = fmul fast float %6406, %6394
  %6445 = call float @dx.op.unary.f32(i32 21, float %6442)  ; Exp(value)
  %6446 = call float @dx.op.unary.f32(i32 21, float %6443)  ; Exp(value)
  %6447 = call float @dx.op.unary.f32(i32 21, float %6444)  ; Exp(value)
  %6448 = call float @dx.op.unary.f32(i32 7, float %6445)  ; Saturate(value)
  %6449 = call float @dx.op.unary.f32(i32 7, float %6446)  ; Saturate(value)
  %6450 = call float @dx.op.unary.f32(i32 7, float %6447)  ; Saturate(value)
  %6451 = fmul fast float %6448, %6437
  %6452 = fmul fast float %6449, %6439
  %6453 = fmul fast float %6450, %6441
  %6454 = fsub fast float %6437, %6451
  %6455 = fsub fast float %6439, %6452
  %6456 = fsub fast float %6441, %6453
  %6457 = fmul fast float %6454, %6389
  %6458 = fmul fast float %6455, %6390
  %6459 = fmul fast float %6456, %6391
  br label %6460

; <label>:6460                                    ; preds = %6307, %6285
  %6461 = phi float [ 0.000000e+00, %6285 ], [ %6457, %6307 ]
  %6462 = phi float [ 0.000000e+00, %6285 ], [ %6458, %6307 ]
  %6463 = phi float [ 0.000000e+00, %6285 ], [ %6459, %6307 ]
  %6464 = fmul fast float %6461, %3390
  %6465 = fmul fast float %6462, %3390
  %6466 = fmul fast float %6463, %3390
  %6467 = fadd fast float %6464, %6301
  %6468 = fadd fast float %6465, %6302
  %6469 = fadd fast float %6466, %6303
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = bitcast float %6471 to i32
  %6473 = and i32 %6472, 255
  %6474 = uitofp i32 %6473 to float
  %6475 = fptoui float %6474 to i32
  %6476 = icmp eq i32 %6475, 13
  br i1 %6476, label %6477, label %6497

; <label>:6477                                    ; preds = %6460
  %6478 = fadd fast float %1621, 2.000000e+00
  %6479 = fadd fast float %1623, 1.000000e+00
  %6480 = fsub fast float 1.000000e+00, %1624
  %6481 = fmul fast float %6478, 5.000000e-01
  %6482 = fmul fast float %6479, 5.000000e-01
  %6483 = fmul fast float %6480, 5.000000e-01
  %6484 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6485 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6486 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6487 = fmul fast float %6484, 1.023000e+03
  %6488 = fmul fast float %6485, 1.023000e+03
  %6489 = fmul fast float %6486, 1.023000e+03
  %6490 = fptoui float %6487 to i32
  %6491 = fptoui float %6488 to i32
  %6492 = fptoui float %6489 to i32
  %6493 = shl i32 %6491, 10
  %6494 = or i32 %6493, %6490
  %6495 = shl i32 %6492, 20
  %6496 = or i32 %6494, %6495
  br label %6497

; <label>:6497                                    ; preds = %6477, %6460
  %6498 = phi i32 [ %6496, %6477 ], [ %6288, %6460 ]
  %6499 = icmp eq i32 %6475, 14
  br i1 %6499, label %6500, label %6520

; <label>:6500                                    ; preds = %6497
  %6501 = fadd fast float %1618, 1.000000e+00
  %6502 = fadd fast float %1628, 1.000000e+00
  %6503 = fsub fast float 1.000000e+00, %81
  %6504 = fmul fast float %6501, 5.000000e-01
  %6505 = fmul fast float %6502, 5.000000e-01
  %6506 = fmul fast float %6503, 5.000000e-01
  %6507 = call float @dx.op.unary.f32(i32 7, float %6504)  ; Saturate(value)
  %6508 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6509 = call float @dx.op.unary.f32(i32 7, float %6506)  ; Saturate(value)
  %6510 = fmul fast float %6507, 1.023000e+03
  %6511 = fmul fast float %6508, 1.023000e+03
  %6512 = fmul fast float %6509, 1.023000e+03
  %6513 = fptoui float %6510 to i32
  %6514 = fptoui float %6511 to i32
  %6515 = fptoui float %6512 to i32
  %6516 = shl i32 %6514, 10
  %6517 = or i32 %6516, %6513
  %6518 = shl i32 %6515, 20
  %6519 = or i32 %6517, %6518
  br label %6520

; <label>:6520                                    ; preds = %6500, %6497
  %6521 = phi i32 [ %6519, %6500 ], [ %6498, %6497 ]
  %6522 = icmp eq i32 %6475, 15
  br i1 %6522, label %6523, label %6543

; <label>:6523                                    ; preds = %6520
  %6524 = fadd fast float %79, 1.000000e+00
  %6525 = fadd fast float %81, 1.000000e+00
  %6526 = fadd fast float %83, 1.000000e+00
  %6527 = fmul fast float %6524, 5.000000e-01
  %6528 = fmul fast float %6525, 5.000000e-01
  %6529 = fmul fast float %6526, 5.000000e-01
  %6530 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6531 = call float @dx.op.unary.f32(i32 7, float %6528)  ; Saturate(value)
  %6532 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6533 = fmul fast float %6530, 1.023000e+03
  %6534 = fmul fast float %6531, 1.023000e+03
  %6535 = fmul fast float %6532, 1.023000e+03
  %6536 = fptoui float %6533 to i32
  %6537 = fptoui float %6534 to i32
  %6538 = fptoui float %6535 to i32
  %6539 = shl i32 %6537, 10
  %6540 = or i32 %6539, %6536
  %6541 = shl i32 %6538, 20
  %6542 = or i32 %6540, %6541
  br label %6543

; <label>:6543                                    ; preds = %6523, %6520
  %6544 = phi i32 [ %6542, %6523 ], [ %6521, %6520 ]
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = fadd fast float %6306, %2254
  %6547 = icmp eq i32 %6475, 39
  %6548 = icmp eq i32 %6475, 40
  %6549 = select i1 %6548, float %2252, float 0.000000e+00
  %6550 = select i1 %6547, float %6546, float %6549
  %6551 = call float @dx.op.unary.f32(i32 24, float %2145)  ; Sqrt(value)
  %6552 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %6553 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %6554 = fmul fast float %6551, %6304
  %6555 = fmul fast float %6552, %6305
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  br i1 %2278, label %6558, label %6582

; <label>:6558                                    ; preds = %6543
  %6559 = extractvalue %dx.types.CBufRet.f32 %6545, 3
  %6560 = fmul fast float %2135, 2.000000e+00
  %6561 = fmul fast float %6560, %2172
  %6562 = fsub fast float %2163, %6561
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fsub fast float 1.000000e+00, %6563
  %6565 = fmul fast float %6559, %6564
  %6566 = fsub fast float 1.000000e+00, %2252
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fmul fast float %6565, %6567
  %6569 = fmul fast float %6546, %2252
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6572 = fsub fast float 1.000000e+00, %2284
  %6573 = fmul fast float %6571, %6572
  %6574 = fadd fast float %6555, %6554
  %6575 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6576 = fsub fast float %6569, %6573
  %6577 = fadd fast float %6576, %6568
  %6578 = fsub fast float %6577, %6575
  %6579 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6580 = fmul fast float %6578, %6579
  %6581 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  br label %6586

; <label>:6582                                    ; preds = %6543
  %6583 = fmul fast float %6553, %6306
  %6584 = fmul fast float %6557, %6555
  %6585 = fmul fast float %6583, %6557
  br label %6586

; <label>:6586                                    ; preds = %6582, %6558
  %6587 = phi float [ %6574, %6558 ], [ %6554, %6582 ]
  %6588 = phi float [ %6581, %6558 ], [ %6584, %6582 ]
  %6589 = phi float [ 1.000000e+00, %6558 ], [ %6585, %6582 ]
  %6590 = fmul float %6557, %6587
  %6591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.f32 %6591, 0
  %6593 = fmul fast float %6592, %6468
  %6594 = fmul fast float %6592, %6469
  %6595 = fadd fast float %6468, %6467
  %6596 = select i1 %2278, float %6595, float %6467
  %6597 = fmul float %6596, %6592
  %6598 = select i1 %2278, float 0.000000e+00, float %6593
  %6599 = select i1 %2278, float 0.000000e+00, float %6594
  switch i32 %6475, label %6899 [
    i32 0, label %6914
    i32 1, label %6600
    i32 2, label %6601
    i32 3, label %6613
    i32 4, label %6622
    i32 5, label %6623
    i32 6, label %6624
    i32 12, label %6625
    i32 13, label %6626
    i32 14, label %6638
    i32 15, label %6650
    i32 16, label %6662
    i32 17, label %6663
    i32 63, label %6898
    i32 18, label %6664
    i32 25, label %6686
    i32 27, label %6687
    i32 28, label %6688
    i32 29, label %6689
    i32 31, label %6690
    i32 32, label %6713
    i32 33, label %6774
    i32 37, label %6792
    i32 38, label %6793
    i32 39, label %6802
    i32 40, label %6825
    i32 41, label %6829
    i32 52, label %6830
    i32 53, label %6831
    i32 54, label %6832
    i32 55, label %6833
    i32 56, label %6834
    i32 57, label %6836
    i32 58, label %6838
    i32 59, label %6876
    i32 60, label %6878
    i32 61, label %6880
    i32 64, label %6882
    i32 62, label %6897
  ]

; <label>:6600                                    ; preds = %6586
  br label %6899

; <label>:6601                                    ; preds = %6586
  %6602 = call float @dx.op.dot3.f32(i32 55, float %2133, float %2134, float %2135, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %6603 = call float @dx.op.unary.f32(i32 25, float %6602)  ; Rsqrt(value)
  %6604 = fmul fast float %2133, 5.000000e-01
  %6605 = fmul fast float %6604, %6603
  %6606 = fmul fast float %2134, 5.000000e-01
  %6607 = fmul fast float %6606, %6603
  %6608 = fmul fast float %2135, 5.000000e-01
  %6609 = fmul fast float %6608, %6603
  %6610 = fadd fast float %6605, 5.000000e-01
  %6611 = fadd fast float %6607, 5.000000e-01
  %6612 = fadd fast float %6609, 5.000000e-01
  br label %6899

; <label>:6613                                    ; preds = %6586
  %6614 = fcmp fast ole float %2236, 0x3FA4B5DCC0000000
  %6615 = fmul fast float %2236, 0x3FB3D07220000000
  %6616 = fadd fast float %2236, 0x3FAC28F5C0000000
  %6617 = fmul fast float %6616, 0x3FEE54EDE0000000
  %6618 = call float @dx.op.unary.f32(i32 23, float %6617)  ; Log(value)
  %6619 = fmul fast float %6618, 0x4003333340000000
  %6620 = call float @dx.op.unary.f32(i32 21, float %6619)  ; Exp(value)
  %6621 = select i1 %6614, float %6615, float %6620
  br label %6899

; <label>:6622                                    ; preds = %6586
  br label %6899

; <label>:6623                                    ; preds = %6586
  br label %6899

; <label>:6624                                    ; preds = %6586
  br label %6899

; <label>:6625                                    ; preds = %6586
  br label %6899

; <label>:6626                                    ; preds = %6586
  %6627 = and i32 %6544, 1023
  %6628 = uitofp i32 %6627 to float
  %6629 = lshr i32 %6544, 10
  %6630 = and i32 %6629, 1023
  %6631 = uitofp i32 %6630 to float
  %6632 = lshr i32 %6544, 20
  %6633 = and i32 %6632, 1023
  %6634 = uitofp i32 %6633 to float
  %6635 = fmul fast float %6628, 0x3F50040100000000
  %6636 = fmul fast float %6631, 0x3F50040100000000
  %6637 = fmul fast float %6634, 0x3F50040100000000
  br label %6899

; <label>:6638                                    ; preds = %6586
  %6639 = and i32 %6544, 1023
  %6640 = uitofp i32 %6639 to float
  %6641 = lshr i32 %6544, 10
  %6642 = and i32 %6641, 1023
  %6643 = uitofp i32 %6642 to float
  %6644 = lshr i32 %6544, 20
  %6645 = and i32 %6644, 1023
  %6646 = uitofp i32 %6645 to float
  %6647 = fmul fast float %6640, 0x3F50040100000000
  %6648 = fmul fast float %6643, 0x3F50040100000000
  %6649 = fmul fast float %6646, 0x3F50040100000000
  br label %6899

; <label>:6650                                    ; preds = %6586
  %6651 = and i32 %6544, 1023
  %6652 = uitofp i32 %6651 to float
  %6653 = lshr i32 %6544, 10
  %6654 = and i32 %6653, 1023
  %6655 = uitofp i32 %6654 to float
  %6656 = lshr i32 %6544, 20
  %6657 = and i32 %6656, 1023
  %6658 = uitofp i32 %6657 to float
  %6659 = fmul fast float %6652, 0x3F50040100000000
  %6660 = fmul fast float %6655, 0x3F50040100000000
  %6661 = fmul fast float %6658, 0x3F50040100000000
  br label %6899

; <label>:6662                                    ; preds = %6586
  br label %6899

; <label>:6663                                    ; preds = %6586
  br label %6899

; <label>:6664                                    ; preds = %6586
  %6665 = fcmp fast ogt float %2154, 0x3FB99999A0000000
  %6666 = fcmp fast ogt float %2155, 0x3FB99999A0000000
  %6667 = or i1 %6665, %6666
  %6668 = fcmp fast ogt float %2156, 0x3FB99999A0000000
  %6669 = or i1 %6667, %6668
  %6670 = fcmp fast olt float %2154, 0x3FB99999A0000000
  %6671 = fcmp fast olt float %2155, 0x3FB99999A0000000
  %6672 = or i1 %6670, %6671
  %6673 = fcmp fast olt float %2156, 0x3FB99999A0000000
  %6674 = or i1 %6672, %6673
  %6675 = fadd fast float %2154, %2145
  %6676 = fcmp fast ogt float %6675, 1.000000e+00
  %6677 = fadd fast float %2155, %2146
  %6678 = fcmp fast ogt float %6677, 1.000000e+00
  %6679 = or i1 %6676, %6678
  %6680 = fadd fast float %2156, %2147
  %6681 = fcmp fast ogt float %6680, 1.000000e+00
  %6682 = or i1 %6679, %6681
  %6683 = select i1 %6682, float 1.000000e+00, float 0.000000e+00
  %6684 = and i1 %6669, %6674
  %6685 = select i1 %6684, float 1.000000e+00, float 0.000000e+00
  br label %6899

; <label>:6686                                    ; preds = %6586
  br label %6899

; <label>:6687                                    ; preds = %6586
  br label %6899

; <label>:6688                                    ; preds = %6586
  br label %6899

; <label>:6689                                    ; preds = %6586
  br label %6899

; <label>:6690                                    ; preds = %6586
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6695 = fcmp fast olt float %2236, %6692
  br i1 %6695, label %6696, label %6710

; <label>:6696                                    ; preds = %8619, %8617, %6710, %6690
  %6697 = phi i32 [ 0, %6690 ], [ 1, %6710 ], [ 2, %8617 ], [ 3, %8619 ]
  %6698 = mul i32 %6697, 3
  %6699 = add i32 0, %6698
  %6700 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6699
  %6701 = load float, float* %6700, align 4
  %6702 = mul i32 %6697, 3
  %6703 = add i32 1, %6702
  %6704 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6703
  %6705 = load float, float* %6704, align 4
  %6706 = mul i32 %6697, 3
  %6707 = add i32 2, %6706
  %6708 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6707
  %6709 = load float, float* %6708, align 4
  br label %6899

; <label>:6710                                    ; preds = %6690
  %6711 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6712 = fcmp fast olt float %2236, %6711
  br i1 %6712, label %6696, label %8617

; <label>:6713                                    ; preds = %6586
  %6714 = fcmp fast ole float %2145, 0x3F69A5C380000000
  %6715 = fcmp fast ole float %2146, 0x3F69A5C380000000
  %6716 = fcmp fast ole float %2147, 0x3F69A5C380000000
  %6717 = fmul fast float %2145, 0x4029D70A40000000
  %6718 = fmul fast float %2146, 0x4029D70A40000000
  %6719 = fmul fast float %2147, 0x4029D70A40000000
  %6720 = call float @dx.op.unary.f32(i32 23, float %2145)  ; Log(value)
  %6721 = call float @dx.op.unary.f32(i32 23, float %2146)  ; Log(value)
  %6722 = call float @dx.op.unary.f32(i32 23, float %2147)  ; Log(value)
  %6723 = fmul fast float %6720, 0x3FDAAAAAA0000000
  %6724 = fmul fast float %6721, 0x3FDAAAAAA0000000
  %6725 = fmul fast float %6722, 0x3FDAAAAAA0000000
  %6726 = call float @dx.op.unary.f32(i32 21, float %6723)  ; Exp(value)
  %6727 = call float @dx.op.unary.f32(i32 21, float %6724)  ; Exp(value)
  %6728 = call float @dx.op.unary.f32(i32 21, float %6725)  ; Exp(value)
  %6729 = fmul fast float %6726, 0x3FF0E147A0000000
  %6730 = fmul fast float %6727, 0x3FF0E147A0000000
  %6731 = fmul fast float %6728, 0x3FF0E147A0000000
  %6732 = fadd fast float %6729, 0xBFAC28F5C0000000
  %6733 = fadd fast float %6730, 0xBFAC28F5C0000000
  %6734 = fadd fast float %6731, 0xBFAC28F5C0000000
  %6735 = select i1 %6714, float %6717, float %6732
  %6736 = select i1 %6715, float %6718, float %6733
  %6737 = select i1 %6716, float %6719, float %6734
  %6738 = call float @dx.op.dot3.f32(i32 55, float %6735, float %6736, float %6737, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6739 = fcmp fast olt float %6738, 0x3FA0101020000000
  br i1 %6739, label %6748, label %6740

; <label>:6740                                    ; preds = %6713
  %6741 = fcmp fast ogt float %6738, 0x3FEEFEFF00000000
  br i1 %6741, label %6748, label %6742

; <label>:6742                                    ; preds = %6740
  %6743 = fcmp fast ogt float %6738, 0x3FEF5F5F60000000
  br i1 %6743, label %6748, label %6744

; <label>:6744                                    ; preds = %6742
  %6745 = fadd fast float %6738, %6738
  %6746 = fcmp fast ogt float %6745, 2.550000e+02
  br i1 %6746, label %6747, label %6748

; <label>:6747                                    ; preds = %6744
  br label %6748

; <label>:6748                                    ; preds = %6747, %6744, %6742, %6740, %6713
  %6749 = phi float [ 1.000000e+00, %6747 ], [ %6590, %6744 ], [ 1.000000e+00, %6713 ], [ 0x3FBD1D1D20000000, %6740 ], [ 0.000000e+00, %6742 ]
  %6750 = phi float [ 0.000000e+00, %6747 ], [ %6588, %6744 ], [ 0x3FE6666660000000, %6713 ], [ 1.000000e+00, %6740 ], [ 0.000000e+00, %6742 ]
  %6751 = phi float [ 1.000000e+00, %6747 ], [ %6589, %6744 ], [ 0.000000e+00, %6713 ], [ 0x3FDD5D5D60000000, %6740 ], [ 1.000000e+00, %6742 ]
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6756 = fmul fast float %6755, 8.000000e+00
  %6757 = fmul fast float %74, 5.000000e+02
  %6758 = fmul fast float %6757, %6753
  %6759 = fsub fast float %6758, %6756
  %6760 = call float @dx.op.unary.f32(i32 13, float %6759)  ; Sin(value)
  %6761 = fmul fast float %6760, %6760
  %6762 = fmul fast float %6761, 2.000000e+00
  %6763 = fadd fast float %6762, -1.000000e+00
  %6764 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6765 = fsub fast float %6749, %6590
  %6766 = fsub fast float %6750, %6588
  %6767 = fsub fast float %6751, %6589
  %6768 = fmul fast float %6764, %6765
  %6769 = fmul fast float %6764, %6766
  %6770 = fmul fast float %6764, %6767
  %6771 = fadd fast float %6768, %6590
  %6772 = fadd fast float %6769, %6588
  %6773 = fadd fast float %6770, %6589
  br label %6899

; <label>:6774                                    ; preds = %6586
  %6775 = fcmp fast olt float %69, 1.280000e+02
  br i1 %6775, label %6776, label %6790

; <label>:6776                                    ; preds = %8635, %8633, %8631, %8629, %8627, %8625, %8623, %8621, %6790, %6774
  %6777 = phi i32 [ 0, %6774 ], [ 1, %6790 ], [ 2, %8621 ], [ 3, %8623 ], [ 4, %8625 ], [ 5, %8627 ], [ 6, %8629 ], [ 7, %8631 ], [ 8, %8633 ], [ 9, %8635 ]
  %6778 = mul i32 %6777, 3
  %6779 = add i32 0, %6778
  %6780 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6779
  %6781 = load float, float* %6780, align 4
  %6782 = mul i32 %6777, 3
  %6783 = add i32 1, %6782
  %6784 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6783
  %6785 = load float, float* %6784, align 4
  %6786 = mul i32 %6777, 3
  %6787 = add i32 2, %6786
  %6788 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6787
  %6789 = load float, float* %6788, align 4
  br label %6899

; <label>:6790                                    ; preds = %6774
  %6791 = fcmp fast olt float %69, 2.560000e+02
  br i1 %6791, label %6776, label %8621

; <label>:6792                                    ; preds = %6586
  br label %6899

; <label>:6793                                    ; preds = %6586
  %6794 = bitcast i32 %6544 to float
  %6795 = fcmp fast ogt float %6794, 0.000000e+00
  %6796 = select i1 %6795, float 0.000000e+00, float 1.000000e+00
  %6797 = fcmp fast olt float %6794, 1.000000e+00
  %6798 = select i1 %6797, float 1.000000e+00, float 0.000000e+00
  %6799 = select i1 %6797, float %6796, float 0.000000e+00
  %6800 = fmul fast float %6798, %2236
  %6801 = fmul fast float %6799, %2236
  br label %6899

; <label>:6802                                    ; preds = %6586
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.CBufRet.f32 %6803, 2
  %6806 = extractvalue %dx.types.CBufRet.f32 %6803, 3
  %6807 = fcmp fast olt float %6550, %6804
  br i1 %6807, label %6808, label %6822

; <label>:6808                                    ; preds = %8639, %8637, %6822, %6802
  %6809 = phi i32 [ 0, %6802 ], [ 1, %6822 ], [ 2, %8637 ], [ 3, %8639 ]
  %6810 = mul i32 %6809, 3
  %6811 = add i32 0, %6810
  %6812 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6811
  %6813 = load float, float* %6812, align 4
  %6814 = mul i32 %6809, 3
  %6815 = add i32 1, %6814
  %6816 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6815
  %6817 = load float, float* %6816, align 4
  %6818 = mul i32 %6809, 3
  %6819 = add i32 2, %6818
  %6820 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6819
  %6821 = load float, float* %6820, align 4
  br label %6899

; <label>:6822                                    ; preds = %6802
  %6823 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6824 = fcmp fast olt float %6550, %6823
  br i1 %6824, label %6808, label %8637

; <label>:6825                                    ; preds = %6586
  %6826 = fadd fast float %6550, -5.000000e-01
  %6827 = fmul fast float %6826, 2.000000e+00
  %6828 = call float @dx.op.unary.f32(i32 7, float %6827)  ; Saturate(value)
  br label %6899

; <label>:6829                                    ; preds = %6586
  br label %6899

; <label>:6830                                    ; preds = %6586
  br label %6899

; <label>:6831                                    ; preds = %6586
  br label %6899

; <label>:6832                                    ; preds = %6586
  br label %6899

; <label>:6833                                    ; preds = %6586
  br label %6899

; <label>:6834                                    ; preds = %6586
  %6835 = bitcast i32 %6544 to float
  br label %6899

; <label>:6836                                    ; preds = %6586
  %6837 = bitcast i32 %6544 to float
  br label %6899

; <label>:6838                                    ; preds = %6586
  %6839 = and i32 %6544, 65535
  %6840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6839)  ; LegacyF16ToF32(value)
  %6841 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6842 = fptosi float %6841 to i32
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.CBufRet.f32 %6843, 2
  %6847 = fadd fast float %6844, %117
  %6848 = fadd fast float %6845, %118
  %6849 = fadd fast float %6846, %119
  %6850 = fptosi float %6847 to i32
  %6851 = fptosi float %6848 to i32
  %6852 = fptosi float %6849 to i32
  %6853 = xor i32 %6850, %6851
  %6854 = lshr i32 %6853, 1
  %6855 = and i32 %6854, 1
  %6856 = lshr i32 %6852, 1
  %6857 = and i32 %6856, 1
  %6858 = xor i32 %6857, 1
  %6859 = icmp ne i32 %6855, %6858
  switch i32 %6842, label %6899 [
    i32 -1, label %6860
    i32 -2, label %6861
    i32 -3, label %6863
    i32 -4, label %6865
    i32 -5, label %6867
    i32 -6, label %6868
    i32 -7, label %6869
  ]

; <label>:6860                                    ; preds = %6838
  br label %6899

; <label>:6861                                    ; preds = %6838
  %6862 = select i1 %6859, float 1.000000e+00, float 0.000000e+00
  br label %6899

; <label>:6863                                    ; preds = %6838
  %6864 = select i1 %6859, float 1.000000e+00, float 0.000000e+00
  br label %6899

; <label>:6865                                    ; preds = %6838
  %6866 = select i1 %6859, float 1.000000e+00, float 0.000000e+00
  br label %6899

; <label>:6867                                    ; preds = %6838
  br label %6899

; <label>:6868                                    ; preds = %6838
  br label %6899

; <label>:6869                                    ; preds = %6838
  %6870 = lshr i32 %6544, 16
  %6871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6870)  ; LegacyF16ToF32(value)
  %6872 = fmul fast float %6871, 0x3FD5555560000000
  %6873 = fsub fast float 1.000000e+00, %6872
  %6874 = fmul fast float %6872, %6840
  %6875 = fmul fast float %6873, %6840
  br label %6899

; <label>:6876                                    ; preds = %6586
  %6877 = bitcast i32 %6544 to float
  br label %6899

; <label>:6878                                    ; preds = %6586
  %6879 = bitcast i32 %6544 to float
  br label %6899

; <label>:6880                                    ; preds = %6586
  %6881 = bitcast i32 %6544 to float
  br label %6899

; <label>:6882                                    ; preds = %6586
  %6883 = and i32 %6544, 1023
  %6884 = uitofp i32 %6883 to float
  %6885 = lshr i32 %6544, 10
  %6886 = and i32 %6885, 1023
  %6887 = uitofp i32 %6886 to float
  %6888 = lshr i32 %6544, 20
  %6889 = and i32 %6888, 1023
  %6890 = uitofp i32 %6889 to float
  %6891 = fmul fast float %6884, 0x3F60040100000000
  %6892 = fmul fast float %6887, 0x3F60040100000000
  %6893 = fmul fast float %6890, 0x3F60040100000000
  %6894 = fadd fast float %6891, -1.000000e+00
  %6895 = fadd fast float %6892, -1.000000e+00
  %6896 = fadd fast float %6893, -1.000000e+00
  br label %6899

; <label>:6897                                    ; preds = %6586
  br label %6899

; <label>:6898                                    ; preds = %6586
  br label %6899

; <label>:6899                                    ; preds = %8639, %8635, %8619, %6898, %6897, %6882, %6880, %6878, %6876, %6869, %6868, %6867, %6865, %6863, %6861, %6860, %6838, %6836, %6834, %6833, %6832, %6831, %6830, %6829, %6825, %6808, %6793, %6792, %6776, %6748, %6696, %6689, %6688, %6687, %6686, %6664, %6663, %6662, %6650, %6638, %6626, %6625, %6624, %6623, %6622, %6613, %6601, %6600, %6586
  %6900 = phi float [ %6590, %6586 ], [ 0.000000e+00, %6897 ], [ %6894, %6882 ], [ %6881, %6880 ], [ %6879, %6878 ], [ %6877, %6876 ], [ %6590, %6838 ], [ 0.000000e+00, %6869 ], [ %6840, %6868 ], [ %6840, %6867 ], [ 0.000000e+00, %6865 ], [ %6864, %6863 ], [ %6862, %6861 ], [ %6840, %6860 ], [ %6837, %6836 ], [ %6835, %6834 ], [ 0.000000e+00, %6833 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6831 ], [ %117, %6829 ], [ %6828, %6825 ], [ %6800, %6793 ], [ 0.000000e+00, %6792 ], [ %6771, %6748 ], [ 0.000000e+00, %6689 ], [ 0.000000e+00, %6688 ], [ 0.000000e+00, %6687 ], [ 1.000000e+00, %6686 ], [ 0.000000e+00, %6898 ], [ 1.000000e+00, %6663 ], [ 5.000000e-01, %6662 ], [ %6659, %6650 ], [ %6647, %6638 ], [ %6635, %6626 ], [ %2239, %6625 ], [ %2237, %6624 ], [ %2154, %6623 ], [ %2091, %6622 ], [ %6621, %6613 ], [ %6610, %6601 ], [ %2145, %6600 ], [ %6701, %6696 ], [ %6781, %6776 ], [ %6813, %6808 ], [ 0.000000e+00, %6830 ], [ 1.000000e+00, %8619 ], [ 1.000000e+00, %8635 ], [ 1.000000e+00, %8639 ], [ %6683, %6664 ]
  %6901 = phi float [ %6588, %6586 ], [ 0.000000e+00, %6897 ], [ %6895, %6882 ], [ %6881, %6880 ], [ %6879, %6878 ], [ %6877, %6876 ], [ %6588, %6838 ], [ %6874, %6869 ], [ %6840, %6868 ], [ %6840, %6867 ], [ 0.000000e+00, %6865 ], [ 0.000000e+00, %6863 ], [ 0.000000e+00, %6861 ], [ %6840, %6860 ], [ %6837, %6836 ], [ %6835, %6834 ], [ 0.000000e+00, %6833 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6831 ], [ %118, %6829 ], [ %6828, %6825 ], [ %2236, %6793 ], [ 0.000000e+00, %6792 ], [ %6772, %6748 ], [ 1.000000e+00, %6689 ], [ 1.000000e+00, %6688 ], [ 1.000000e+00, %6687 ], [ 0x3FE6666660000000, %6686 ], [ 0.000000e+00, %6898 ], [ 1.000000e+00, %6663 ], [ 5.000000e-01, %6662 ], [ %6660, %6650 ], [ %6648, %6638 ], [ %6636, %6626 ], [ %2239, %6625 ], [ %2237, %6624 ], [ %2155, %6623 ], [ %2092, %6622 ], [ %6621, %6613 ], [ %6611, %6601 ], [ %2146, %6600 ], [ %6705, %6696 ], [ %6785, %6776 ], [ %6817, %6808 ], [ 0.000000e+00, %6830 ], [ 0.000000e+00, %8619 ], [ 0.000000e+00, %8635 ], [ 0.000000e+00, %8639 ], [ 0.000000e+00, %6664 ]
  %6902 = phi float [ %6589, %6586 ], [ 0.000000e+00, %6897 ], [ %6896, %6882 ], [ %6881, %6880 ], [ %6879, %6878 ], [ %6877, %6876 ], [ %6589, %6838 ], [ %6875, %6869 ], [ %6840, %6868 ], [ 0.000000e+00, %6867 ], [ %6866, %6865 ], [ 0.000000e+00, %6863 ], [ %6862, %6861 ], [ %6840, %6860 ], [ %6837, %6836 ], [ %6835, %6834 ], [ 0.000000e+00, %6833 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6831 ], [ %119, %6829 ], [ %6828, %6825 ], [ %6801, %6793 ], [ 0.000000e+00, %6792 ], [ %6773, %6748 ], [ 0.000000e+00, %6689 ], [ 0.000000e+00, %6688 ], [ 0.000000e+00, %6687 ], [ 0.000000e+00, %6686 ], [ 0.000000e+00, %6898 ], [ 1.000000e+00, %6663 ], [ 5.000000e-01, %6662 ], [ %6661, %6650 ], [ %6649, %6638 ], [ %6637, %6626 ], [ %2239, %6625 ], [ %2237, %6624 ], [ %2156, %6623 ], [ %2093, %6622 ], [ %6621, %6613 ], [ %6612, %6601 ], [ %2147, %6600 ], [ %6709, %6696 ], [ %6789, %6776 ], [ %6821, %6808 ], [ 1.000000e+00, %6830 ], [ 0.000000e+00, %8619 ], [ 0.000000e+00, %8635 ], [ 0.000000e+00, %8639 ], [ %6685, %6664 ]
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 3
  %6905 = fsub fast float %6900, %6590
  %6906 = fsub fast float %6901, %6588
  %6907 = fsub fast float %6902, %6589
  %6908 = fmul fast float %6904, %6905
  %6909 = fmul fast float %6904, %6906
  %6910 = fmul fast float %6904, %6907
  %6911 = fadd fast float %6908, %6590
  %6912 = fadd fast float %6909, %6588
  %6913 = fadd fast float %6910, %6589
  br label %6914

; <label>:6914                                    ; preds = %6899, %6586
  %6915 = phi float [ %6911, %6899 ], [ %6590, %6586 ]
  %6916 = phi float [ %6912, %6899 ], [ %6588, %6586 ]
  %6917 = phi float [ %6913, %6899 ], [ %6589, %6586 ]
  %6918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.f32 %6918, 0
  %6920 = bitcast float %6919 to i32
  %6921 = lshr i32 %6920, 8
  %6922 = and i32 %6921, 255
  %6923 = uitofp i32 %6922 to float
  %6924 = fptoui float %6923 to i32
  switch i32 %6924, label %7161 [
    i32 1, label %6925
    i32 2, label %6931
    i32 3, label %6937
    i32 4, label %6943
    i32 5, label %6949
    i32 6, label %6955
    i32 7, label %6961
    i32 8, label %6967
    i32 9, label %6973
    i32 10, label %6975
    i32 11, label %6996
    i32 12, label %7017
    i32 13, label %7029
    i32 14, label %7044
    i32 15, label %7049
    i32 16, label %7051
    i32 17, label %7053
    i32 18, label %7055
    i32 19, label %7057
    i32 20, label %7068
    i32 21, label %7079
    i32 22, label %7091
    i32 23, label %7125
    i32 24, label %7140
    i32 25, label %7155
    i32 26, label %7157
    i32 27, label %7159
  ]

; <label>:6925                                    ; preds = %6914
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 0
  %6928 = fmul fast float %6927, %6298
  %6929 = fmul fast float %6927, %6299
  %6930 = fmul fast float %6927, %6300
  br label %7161

; <label>:6931                                    ; preds = %6914
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6934 = fmul fast float %6933, %6295
  %6935 = fmul fast float %6933, %6296
  %6936 = fmul fast float %6933, %6297
  br label %7161

; <label>:6937                                    ; preds = %6914
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = fmul fast float %6939, %2091
  %6941 = fmul fast float %6939, %2092
  %6942 = fmul fast float %6939, %2093
  br label %7161

; <label>:6943                                    ; preds = %6914
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = fmul fast float %6945, %6292
  %6947 = fmul fast float %6945, %6293
  %6948 = fmul fast float %6945, %6294
  br label %7161

; <label>:6949                                    ; preds = %6914
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 0
  %6952 = fmul fast float %6951, %6289
  %6953 = fmul fast float %6951, %6290
  %6954 = fmul fast float %6951, %6291
  br label %7161

; <label>:6955                                    ; preds = %6914
  %6956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6957 = extractvalue %dx.types.CBufRet.f32 %6956, 0
  %6958 = fmul fast float %6957, %5121
  %6959 = fmul fast float %6957, %5122
  %6960 = fmul fast float %6957, %5123
  br label %7161

; <label>:6961                                    ; preds = %6914
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = fmul fast float %6963, %5121
  %6965 = fmul fast float %6963, %5122
  %6966 = fmul fast float %6963, %5123
  br label %7161

; <label>:6967                                    ; preds = %6914
  %6968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6969 = extractvalue %dx.types.CBufRet.f32 %6968, 0
  %6970 = fmul fast float %5124, %6969
  %6971 = fmul fast float %5125, %6969
  %6972 = fmul fast float %5126, %6969
  br label %7161

; <label>:6973                                    ; preds = %6914
  %6974 = bitcast i32 %6544 to float
  br label %7161

; <label>:6975                                    ; preds = %6914
  %6976 = and i32 %6544, 1023
  %6977 = uitofp i32 %6976 to float
  %6978 = lshr i32 %6544, 10
  %6979 = and i32 %6978, 1023
  %6980 = uitofp i32 %6979 to float
  %6981 = lshr i32 %6544, 20
  %6982 = and i32 %6981, 1023
  %6983 = uitofp i32 %6982 to float
  %6984 = fmul fast float %6977, 0x3F60040100000000
  %6985 = fmul fast float %6980, 0x3F60040100000000
  %6986 = fmul fast float %6983, 0x3F60040100000000
  %6987 = fadd fast float %6984, -1.000000e+00
  %6988 = fadd fast float %6985, -1.000000e+00
  %6989 = fadd fast float %6986, -1.000000e+00
  %6990 = fcmp fast ogt float %6987, 0.000000e+00
  %6991 = select i1 %6990, float 1.000000e+00, float 0.000000e+00
  %6992 = fcmp fast ogt float %6988, 0.000000e+00
  %6993 = select i1 %6992, float 1.000000e+00, float 0.000000e+00
  %6994 = fcmp fast ogt float %6989, 0.000000e+00
  %6995 = select i1 %6994, float 1.000000e+00, float 0.000000e+00
  br label %7161

; <label>:6996                                    ; preds = %6914
  %6997 = and i32 %6544, 1023
  %6998 = uitofp i32 %6997 to float
  %6999 = lshr i32 %6544, 10
  %7000 = and i32 %6999, 1023
  %7001 = uitofp i32 %7000 to float
  %7002 = lshr i32 %6544, 20
  %7003 = and i32 %7002, 1023
  %7004 = uitofp i32 %7003 to float
  %7005 = fmul fast float %6998, 0x3F60040100000000
  %7006 = fmul fast float %7001, 0x3F60040100000000
  %7007 = fmul fast float %7004, 0x3F60040100000000
  %7008 = fadd fast float %7005, -1.000000e+00
  %7009 = fadd fast float %7006, -1.000000e+00
  %7010 = fadd fast float %7007, -1.000000e+00
  %7011 = fmul fast float %7010, %7009
  %7012 = fsub fast float %7010, %7011
  %7013 = fmul fast float %7009, %7008
  %7014 = fmul fast float %7012, %7008
  %7015 = fsub fast float %7009, %7013
  %7016 = fsub fast float %7012, %7014
  br label %7161

; <label>:7017                                    ; preds = %6914
  %7018 = and i32 %6544, 255
  %7019 = uitofp i32 %7018 to float
  %7020 = fmul fast float %7019, 0x3F70101020000000
  %7021 = lshr i32 %6544, 8
  %7022 = and i32 %7021, 255
  %7023 = uitofp i32 %7022 to float
  %7024 = fmul fast float %7023, 0x3F70101020000000
  %7025 = lshr i32 %6544, 16
  %7026 = and i32 %7025, 255
  %7027 = uitofp i32 %7026 to float
  %7028 = fmul fast float %7027, 0x3F70101020000000
  br label %7161

; <label>:7029                                    ; preds = %6914
  %7030 = and i32 %6544, 1023
  %7031 = uitofp i32 %7030 to float
  %7032 = lshr i32 %6544, 10
  %7033 = and i32 %7032, 1023
  %7034 = uitofp i32 %7033 to float
  %7035 = lshr i32 %6544, 20
  %7036 = and i32 %7035, 1023
  %7037 = uitofp i32 %7036 to float
  %7038 = fmul fast float %7031, 0x3F60040100000000
  %7039 = fmul fast float %7034, 0x3F60040100000000
  %7040 = fmul fast float %7037, 0x3F60040100000000
  %7041 = fadd fast float %7038, -1.000000e+00
  %7042 = fadd fast float %7039, -1.000000e+00
  %7043 = fadd fast float %7040, -1.000000e+00
  br label %7161

; <label>:7044                                    ; preds = %6914
  %7045 = icmp ne i32 %6544, 0
  %7046 = select i1 %7045, float 1.000000e+00, float %6915
  %7047 = select i1 %7045, float 0.000000e+00, float %6916
  %7048 = select i1 %7045, float 0.000000e+00, float %6917
  br label %7161

; <label>:7049                                    ; preds = %6914
  %7050 = bitcast i32 %6544 to float
  br label %7161

; <label>:7051                                    ; preds = %6914
  %7052 = bitcast i32 %6544 to float
  br label %7161

; <label>:7053                                    ; preds = %6914
  %7054 = bitcast i32 %6544 to float
  br label %7161

; <label>:7055                                    ; preds = %6914
  %7056 = bitcast i32 %6544 to float
  br label %7161

; <label>:7057                                    ; preds = %6914
  %7058 = and i32 %6544, 65535
  %7059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %7058)  ; LegacyF16ToF32(value)
  %7060 = lshr i32 %6544, 16
  %7061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %7060)  ; LegacyF16ToF32(value)
  %7062 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 0
  %7065 = fmul fast float %7064, %7059
  %7066 = fmul fast float %7064, %7061
  %7067 = fmul fast float %7064, %7062
  br label %7161

; <label>:7068                                    ; preds = %6914
  %7069 = and i32 %6544, 65535
  %7070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %7069)  ; LegacyF16ToF32(value)
  %7071 = lshr i32 %6544, 16
  %7072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %7071)  ; LegacyF16ToF32(value)
  %7073 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %7074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7075 = extractvalue %dx.types.CBufRet.f32 %7074, 0
  %7076 = fmul fast float %7075, %7070
  %7077 = fmul fast float %7075, %7072
  %7078 = fmul fast float %7075, %7073
  br label %7161

; <label>:7079                                    ; preds = %6914
  %7080 = and i32 %6544, 1023
  %7081 = uitofp i32 %7080 to float
  %7082 = lshr i32 %6544, 10
  %7083 = and i32 %7082, 1023
  %7084 = uitofp i32 %7083 to float
  %7085 = lshr i32 %6544, 20
  %7086 = and i32 %7085, 1023
  %7087 = uitofp i32 %7086 to float
  %7088 = fmul fast float %7081, 0x3F50040100000000
  %7089 = fmul fast float %7084, 0x3F50040100000000
  %7090 = fmul fast float %7087, 0x3F50040100000000
  br label %7161

; <label>:7091                                    ; preds = %6914
  %7092 = and i32 %6544, 1023
  %7093 = uitofp i32 %7092 to float
  %7094 = lshr i32 %6544, 10
  %7095 = and i32 %7094, 1023
  %7096 = uitofp i32 %7095 to float
  %7097 = lshr i32 %6544, 20
  %7098 = and i32 %7097, 1023
  %7099 = uitofp i32 %7098 to float
  %7100 = fmul fast float %7093, 0x3F60040100000000
  %7101 = fmul fast float %7096, 0x3F60040100000000
  %7102 = fmul fast float %7099, 0x3F60040100000000
  %7103 = fadd fast float %7100, -1.000000e+00
  %7104 = fadd fast float %7101, -1.000000e+00
  %7105 = fadd fast float %7102, -1.000000e+00
  %7106 = call float @dx.op.binary.f32(i32 35, float %7104, float %7105)  ; FMax(a,b)
  %7107 = call float @dx.op.binary.f32(i32 35, float %7103, float %7106)  ; FMax(a,b)
  %7108 = fmul fast float %7107, 2.000000e+00
  %7109 = call float @dx.op.unary.f32(i32 7, float %7108)  ; Saturate(value)
  %7110 = fmul fast float %7093, 0x3F94050140000000
  %7111 = fadd fast float %7110, -1.000000e+01
  %7112 = fmul fast float %7096, 0x3F94050140000000
  %7113 = fadd fast float %7112, -1.000000e+01
  %7114 = fmul fast float %7099, 0x3F94050140000000
  %7115 = fadd fast float %7114, -1.000000e+01
  %7116 = fsub fast float %7111, %6915
  %7117 = fsub fast float %7113, %6916
  %7118 = fsub fast float %7115, %6917
  %7119 = fmul fast float %7109, %7116
  %7120 = fmul fast float %7109, %7117
  %7121 = fmul fast float %7109, %7118
  %7122 = fadd fast float %7119, %6915
  %7123 = fadd fast float %7120, %6916
  %7124 = fadd fast float %7121, %6917
  br label %7161

; <label>:7125                                    ; preds = %6914
  %7126 = and i32 %6544, 1023
  %7127 = uitofp i32 %7126 to float
  %7128 = lshr i32 %6544, 10
  %7129 = and i32 %7128, 1023
  %7130 = uitofp i32 %7129 to float
  %7131 = lshr i32 %6544, 20
  %7132 = and i32 %7131, 1023
  %7133 = uitofp i32 %7132 to float
  %7134 = fmul fast float %7127, 0x3F60040100000000
  %7135 = fmul fast float %7130, 0x3F60040100000000
  %7136 = fmul fast float %7133, 0x3F60040100000000
  %7137 = fadd fast float %7134, -1.000000e+00
  %7138 = fadd fast float %7135, -1.000000e+00
  %7139 = fadd fast float %7136, -1.000000e+00
  br label %7161

; <label>:7140                                    ; preds = %6914
  %7141 = and i32 %6544, 1023
  %7142 = uitofp i32 %7141 to float
  %7143 = lshr i32 %6544, 10
  %7144 = and i32 %7143, 1023
  %7145 = uitofp i32 %7144 to float
  %7146 = lshr i32 %6544, 20
  %7147 = and i32 %7146, 1023
  %7148 = uitofp i32 %7147 to float
  %7149 = fmul fast float %7142, 0x3F60040100000000
  %7150 = fmul fast float %7145, 0x3F60040100000000
  %7151 = fmul fast float %7148, 0x3F60040100000000
  %7152 = fadd fast float %7149, -1.000000e+00
  %7153 = fadd fast float %7150, -1.000000e+00
  %7154 = fadd fast float %7151, -1.000000e+00
  br label %7161

; <label>:7155                                    ; preds = %6914
  %7156 = bitcast i32 %6544 to float
  br label %7161

; <label>:7157                                    ; preds = %6914
  %7158 = bitcast i32 %6544 to float
  br label %7161

; <label>:7159                                    ; preds = %6914
  %7160 = bitcast i32 %6544 to float
  br label %7161

; <label>:7161                                    ; preds = %7159, %7157, %7155, %7140, %7125, %7091, %7079, %7068, %7057, %7055, %7053, %7051, %7049, %7044, %7029, %7017, %6996, %6975, %6973, %6967, %6961, %6955, %6949, %6943, %6937, %6931, %6925, %6914
  %7162 = phi float [ %6915, %6914 ], [ %7160, %7159 ], [ %7158, %7157 ], [ %7156, %7155 ], [ %7152, %7140 ], [ %7137, %7125 ], [ %7122, %7091 ], [ %7088, %7079 ], [ %7076, %7068 ], [ %7065, %7057 ], [ %7056, %7055 ], [ %7054, %7053 ], [ %7052, %7051 ], [ %7050, %7049 ], [ %7041, %7029 ], [ %7020, %7017 ], [ %7008, %6996 ], [ %6991, %6975 ], [ %6974, %6973 ], [ %6970, %6967 ], [ %6964, %6961 ], [ %6958, %6955 ], [ %6952, %6949 ], [ %6946, %6943 ], [ %6940, %6937 ], [ %6934, %6931 ], [ %6928, %6925 ], [ %7046, %7044 ]
  %7163 = phi float [ %6916, %6914 ], [ %7160, %7159 ], [ %7158, %7157 ], [ %7156, %7155 ], [ %7153, %7140 ], [ %7138, %7125 ], [ %7123, %7091 ], [ %7089, %7079 ], [ %7077, %7068 ], [ %7066, %7057 ], [ %7056, %7055 ], [ %7054, %7053 ], [ %7052, %7051 ], [ %7050, %7049 ], [ %7042, %7029 ], [ %7024, %7017 ], [ %7015, %6996 ], [ %6993, %6975 ], [ %6974, %6973 ], [ %6971, %6967 ], [ %6965, %6961 ], [ %6959, %6955 ], [ %6953, %6949 ], [ %6947, %6943 ], [ %6941, %6937 ], [ %6935, %6931 ], [ %6929, %6925 ], [ %7047, %7044 ]
  %7164 = phi float [ %6917, %6914 ], [ %7160, %7159 ], [ %7158, %7157 ], [ %7156, %7155 ], [ %7154, %7140 ], [ %7139, %7125 ], [ %7124, %7091 ], [ %7090, %7079 ], [ %7078, %7068 ], [ %7067, %7057 ], [ %7056, %7055 ], [ %7054, %7053 ], [ %7052, %7051 ], [ %7050, %7049 ], [ %7043, %7029 ], [ %7028, %7017 ], [ %7016, %6996 ], [ %6995, %6975 ], [ %6974, %6973 ], [ %6972, %6967 ], [ %6966, %6961 ], [ %6960, %6955 ], [ %6954, %6949 ], [ %6948, %6943 ], [ %6942, %6937 ], [ %6936, %6931 ], [ %6930, %6925 ], [ %7048, %7044 ]
  %7165 = extractvalue %dx.types.CBufRet.f32 %6918, 3
  %7166 = fsub fast float %7162, %6915
  %7167 = fsub fast float %7163, %6916
  %7168 = fsub fast float %7164, %6917
  %7169 = fmul fast float %7165, %7166
  %7170 = fmul fast float %7165, %7167
  %7171 = fmul fast float %7165, %7168
  %7172 = fadd fast float %7169, %6915
  %7173 = fadd fast float %7170, %6916
  %7174 = fadd fast float %7171, %6917
  %7175 = lshr i32 %6920, 16
  %7176 = and i32 %7175, 255
  %7177 = uitofp i32 %7176 to float
  %7178 = fptoui float %7177 to i32
  switch i32 %7178, label %7225 [
    i32 16, label %7210
    i32 12, label %7209
    i32 3, label %7179
    i32 4, label %7180
    i32 15, label %7181
    i32 5, label %7190
    i32 6, label %7199
    i32 7, label %7208
    i32 11, label %7209
  ]

; <label>:7179                                    ; preds = %7161
  br label %7225

; <label>:7180                                    ; preds = %7161
  br label %7225

; <label>:7181                                    ; preds = %7161
  %7182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.f32 %7182, 0
  %7184 = fadd fast float %7183, %7172
  %7185 = fadd fast float %7183, %7173
  %7186 = fadd fast float %7183, %7174
  %7187 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7188 = call float @dx.op.unary.f32(i32 7, float %7185)  ; Saturate(value)
  %7189 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  br label %7225

; <label>:7190                                    ; preds = %7161
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7193 = bitcast float %7192 to i32
  %7194 = and i32 %7193, 2130706432
  %7195 = icmp eq i32 %7194, 0
  %7196 = select i1 %7195, float 0.000000e+00, float %7172
  %7197 = select i1 %7195, float 0.000000e+00, float %7173
  %7198 = select i1 %7195, float 0.000000e+00, float %7174
  br label %7225

; <label>:7199                                    ; preds = %7161
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 0
  %7202 = bitcast float %7201 to i32
  %7203 = and i32 %7202, 2130706432
  %7204 = icmp eq i32 %7203, 0
  %7205 = select i1 %7204, float 0.000000e+00, float %7172
  %7206 = select i1 %7204, float 0.000000e+00, float %7173
  %7207 = select i1 %7204, float 0.000000e+00, float %7174
  br label %7225

; <label>:7208                                    ; preds = %7161
  br label %7225

; <label>:7209                                    ; preds = %7161, %7161
  br label %7225

; <label>:7210                                    ; preds = %7161
  %7211 = and i32 %6544, 1023
  %7212 = uitofp i32 %7211 to float
  %7213 = lshr i32 %6544, 10
  %7214 = and i32 %7213, 1023
  %7215 = uitofp i32 %7214 to float
  %7216 = lshr i32 %6544, 20
  %7217 = and i32 %7216, 1023
  %7218 = uitofp i32 %7217 to float
  %7219 = fmul fast float %7212, 0x3F60040100000000
  %7220 = fmul fast float %7215, 0x3F60040100000000
  %7221 = fmul fast float %7218, 0x3F60040100000000
  %7222 = fadd fast float %7219, -1.000000e+00
  %7223 = fadd fast float %7220, -1.000000e+00
  %7224 = fadd fast float %7221, -1.000000e+00
  br label %7225

; <label>:7225                                    ; preds = %7210, %7209, %7208, %7199, %7190, %7181, %7180, %7179, %7161
  %7226 = phi float [ 0.000000e+00, %7208 ], [ %7187, %7181 ], [ 0.000000e+00, %7180 ], [ %51, %7209 ], [ %7222, %7210 ], [ 0.000000e+00, %7179 ], [ %7196, %7190 ], [ %7205, %7199 ], [ %7172, %7161 ]
  %7227 = phi float [ 0.000000e+00, %7208 ], [ %7188, %7181 ], [ 0.000000e+00, %7180 ], [ %52, %7209 ], [ %7223, %7210 ], [ 0.000000e+00, %7179 ], [ %7197, %7190 ], [ %7206, %7199 ], [ %7173, %7161 ]
  %7228 = phi float [ 0.000000e+00, %7208 ], [ %7189, %7181 ], [ 1.000000e+00, %7180 ], [ %53, %7209 ], [ %7224, %7210 ], [ 0.000000e+00, %7179 ], [ %7198, %7190 ], [ %7207, %7199 ], [ %7174, %7161 ]
  %7229 = fsub fast float %7226, %7172
  %7230 = fsub fast float %7227, %7173
  %7231 = fsub fast float %7228, %7174
  %7232 = fmul fast float %7165, %7229
  %7233 = fmul fast float %7165, %7230
  %7234 = fmul fast float %7165, %7231
  %7235 = fadd fast float %7232, %7172
  %7236 = fadd fast float %7233, %7173
  %7237 = fadd fast float %7234, %7174
  %7238 = and i32 %6287, 255
  %7239 = uitofp i32 %7238 to float
  %7240 = fptoui float %7239 to i32
  %7241 = lshr i32 %6287, 8
  %7242 = and i32 %7241, 255
  %7243 = uitofp i32 %7242 to float
  %7244 = fptoui float %7243 to i32
  %7245 = lshr i32 %6287, 16
  %7246 = and i32 %7245, 255
  %7247 = uitofp i32 %7246 to float
  %7248 = fptoui float %7247 to i32
  %7249 = lshr i32 %6287, 24
  %7250 = uitofp i32 %7249 to float
  %7251 = fptoui float %7250 to i32
  %7252 = and i32 %6286, 255
  %7253 = uitofp i32 %7252 to float
  %7254 = fptoui float %7253 to i32
  %7255 = lshr i32 %6286, 16
  %7256 = and i32 %7255, 255
  %7257 = uitofp i32 %7256 to float
  %7258 = fptoui float %7257 to i32
  %7259 = lshr i32 %6920, 24
  %7260 = uitofp i32 %7259 to float
  %7261 = fptoui float %7260 to i32
  switch i32 %7261, label %7500 [
    i32 1, label %7262
    i32 2, label %7289
    i32 3, label %7314
    i32 4, label %7337
    i32 5, label %7360
    i32 6, label %7383
    i32 7, label %7407
    i32 8, label %7430
    i32 9, label %7453
    i32 12, label %7475
    i32 13, label %7476
    i32 14, label %7499
  ]

; <label>:7262                                    ; preds = %7225
  %7263 = add i32 %7240, %7254
  %7264 = add i32 %7263, %7251
  %7265 = add i32 %7264, %7244
  %7266 = add i32 %7265, %7248
  %7267 = uitofp i32 %7266 to float
  %7268 = fadd fast float %7267, -4.000000e+00
  %7269 = fmul fast float %7268, 0x3FB5555560000000
  %7270 = call float @dx.op.unary.f32(i32 7, float %7269)  ; Saturate(value)
  %7271 = icmp eq i32 %7266, 0
  %7272 = select i1 %7271, float 0.000000e+00, float %7270
  %7273 = icmp ult i32 %7266, 2
  %7274 = select i1 %7273, float 0.000000e+00, float %7270
  %7275 = add i32 %7266, -1
  %7276 = icmp ult i32 %7275, 2
  %7277 = select i1 %7276, float 1.000000e+00, float %7272
  %7278 = icmp ult i32 %7266, 4
  %7279 = select i1 %7278, float 0.000000e+00, float 1.000000e+00
  %7280 = and i32 %7266, -2
  %7281 = icmp eq i32 %7280, 2
  %7282 = icmp eq i32 %7266, 4
  %7283 = select i1 %7282, float 1.000000e+00, float %7279
  %7284 = or i1 %7282, %7281
  %7285 = select i1 %7284, float 1.000000e+00, float %7274
  %7286 = add i32 %7266, -3
  %7287 = icmp ult i32 %7286, 2
  %7288 = select i1 %7287, float 0.000000e+00, float %7277
  br label %7500

; <label>:7289                                    ; preds = %7225
  %7290 = add i32 %7244, %7240
  %7291 = add i32 %7290, %7248
  %7292 = uitofp i32 %7291 to float
  %7293 = fadd fast float %7292, -4.000000e+00
  %7294 = fmul fast float %7293, 0x3FB5555560000000
  %7295 = call float @dx.op.unary.f32(i32 7, float %7294)  ; Saturate(value)
  %7296 = icmp eq i32 %7291, 0
  %7297 = select i1 %7296, float 0.000000e+00, float %7295
  %7298 = icmp ult i32 %7291, 2
  %7299 = select i1 %7298, float 0.000000e+00, float %7295
  %7300 = add i32 %7291, -1
  %7301 = icmp ult i32 %7300, 2
  %7302 = select i1 %7301, float 1.000000e+00, float %7297
  %7303 = icmp ult i32 %7291, 4
  %7304 = select i1 %7303, float 0.000000e+00, float 1.000000e+00
  %7305 = and i32 %7291, -2
  %7306 = icmp eq i32 %7305, 2
  %7307 = icmp eq i32 %7291, 4
  %7308 = select i1 %7307, float 1.000000e+00, float %7304
  %7309 = or i1 %7307, %7306
  %7310 = select i1 %7309, float 1.000000e+00, float %7299
  %7311 = add i32 %7291, -3
  %7312 = icmp ult i32 %7311, 2
  %7313 = select i1 %7312, float 0.000000e+00, float %7302
  br label %7500

; <label>:7314                                    ; preds = %7225
  %7315 = uitofp i32 %7240 to float
  %7316 = fadd fast float %7315, -4.000000e+00
  %7317 = fmul fast float %7316, 0x3FB5555560000000
  %7318 = call float @dx.op.unary.f32(i32 7, float %7317)  ; Saturate(value)
  %7319 = icmp eq i32 %7240, 0
  %7320 = select i1 %7319, float 0.000000e+00, float %7318
  %7321 = icmp ult i32 %7240, 2
  %7322 = select i1 %7321, float 0.000000e+00, float %7318
  %7323 = add i32 %7240, -1
  %7324 = icmp ult i32 %7323, 2
  %7325 = select i1 %7324, float 1.000000e+00, float %7320
  %7326 = icmp ult i32 %7240, 4
  %7327 = select i1 %7326, float 0.000000e+00, float 1.000000e+00
  %7328 = and i32 %7240, -2
  %7329 = icmp eq i32 %7328, 2
  %7330 = icmp eq i32 %7240, 4
  %7331 = select i1 %7330, float 1.000000e+00, float %7327
  %7332 = or i1 %7330, %7329
  %7333 = select i1 %7332, float 1.000000e+00, float %7322
  %7334 = add i32 %7240, -3
  %7335 = icmp ult i32 %7334, 2
  %7336 = select i1 %7335, float 0.000000e+00, float %7325
  br label %7500

; <label>:7337                                    ; preds = %7225
  %7338 = uitofp i32 %7244 to float
  %7339 = fadd fast float %7338, -4.000000e+00
  %7340 = fmul fast float %7339, 0x3FB5555560000000
  %7341 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  %7342 = icmp eq i32 %7244, 0
  %7343 = select i1 %7342, float 0.000000e+00, float %7341
  %7344 = icmp ult i32 %7244, 2
  %7345 = select i1 %7344, float 0.000000e+00, float %7341
  %7346 = add i32 %7244, -1
  %7347 = icmp ult i32 %7346, 2
  %7348 = select i1 %7347, float 1.000000e+00, float %7343
  %7349 = icmp ult i32 %7244, 4
  %7350 = select i1 %7349, float 0.000000e+00, float 1.000000e+00
  %7351 = and i32 %7244, -2
  %7352 = icmp eq i32 %7351, 2
  %7353 = icmp eq i32 %7244, 4
  %7354 = select i1 %7353, float 1.000000e+00, float %7350
  %7355 = or i1 %7353, %7352
  %7356 = select i1 %7355, float 1.000000e+00, float %7345
  %7357 = add i32 %7244, -3
  %7358 = icmp ult i32 %7357, 2
  %7359 = select i1 %7358, float 0.000000e+00, float %7348
  br label %7500

; <label>:7360                                    ; preds = %7225
  %7361 = uitofp i32 %7248 to float
  %7362 = fadd fast float %7361, -4.000000e+00
  %7363 = fmul fast float %7362, 0x3FB5555560000000
  %7364 = call float @dx.op.unary.f32(i32 7, float %7363)  ; Saturate(value)
  %7365 = icmp eq i32 %7248, 0
  %7366 = select i1 %7365, float 0.000000e+00, float %7364
  %7367 = icmp ult i32 %7248, 2
  %7368 = select i1 %7367, float 0.000000e+00, float %7364
  %7369 = add i32 %7248, -1
  %7370 = icmp ult i32 %7369, 2
  %7371 = select i1 %7370, float 1.000000e+00, float %7366
  %7372 = icmp ult i32 %7248, 4
  %7373 = select i1 %7372, float 0.000000e+00, float 1.000000e+00
  %7374 = and i32 %7248, -2
  %7375 = icmp eq i32 %7374, 2
  %7376 = icmp eq i32 %7248, 4
  %7377 = select i1 %7376, float 1.000000e+00, float %7373
  %7378 = or i1 %7376, %7375
  %7379 = select i1 %7378, float 1.000000e+00, float %7368
  %7380 = add i32 %7248, -3
  %7381 = icmp ult i32 %7380, 2
  %7382 = select i1 %7381, float 0.000000e+00, float %7371
  br label %7500

; <label>:7383                                    ; preds = %7225
  %7384 = add i32 %7251, %7254
  %7385 = uitofp i32 %7384 to float
  %7386 = fadd fast float %7385, -4.000000e+00
  %7387 = fmul fast float %7386, 0x3FB5555560000000
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = icmp eq i32 %7384, 0
  %7390 = select i1 %7389, float 0.000000e+00, float %7388
  %7391 = icmp ult i32 %7384, 2
  %7392 = select i1 %7391, float 0.000000e+00, float %7388
  %7393 = add i32 %7384, -1
  %7394 = icmp ult i32 %7393, 2
  %7395 = select i1 %7394, float 1.000000e+00, float %7390
  %7396 = icmp ult i32 %7384, 4
  %7397 = select i1 %7396, float 0.000000e+00, float 1.000000e+00
  %7398 = and i32 %7384, -2
  %7399 = icmp eq i32 %7398, 2
  %7400 = icmp eq i32 %7384, 4
  %7401 = select i1 %7400, float 1.000000e+00, float %7397
  %7402 = or i1 %7400, %7399
  %7403 = select i1 %7402, float 1.000000e+00, float %7392
  %7404 = add i32 %7384, -3
  %7405 = icmp ult i32 %7404, 2
  %7406 = select i1 %7405, float 0.000000e+00, float %7395
  br label %7500

; <label>:7407                                    ; preds = %7225
  %7408 = uitofp i32 %7251 to float
  %7409 = fadd fast float %7408, -4.000000e+00
  %7410 = fmul fast float %7409, 0x3FB5555560000000
  %7411 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  %7412 = icmp eq i32 %7251, 0
  %7413 = select i1 %7412, float 0.000000e+00, float %7411
  %7414 = icmp ult i32 %7251, 2
  %7415 = select i1 %7414, float 0.000000e+00, float %7411
  %7416 = add i32 %7251, -1
  %7417 = icmp ult i32 %7416, 2
  %7418 = select i1 %7417, float 1.000000e+00, float %7413
  %7419 = icmp ult i32 %7251, 4
  %7420 = select i1 %7419, float 0.000000e+00, float 1.000000e+00
  %7421 = and i32 %7251, -2
  %7422 = icmp eq i32 %7421, 2
  %7423 = icmp eq i32 %7251, 4
  %7424 = select i1 %7423, float 1.000000e+00, float %7420
  %7425 = or i1 %7423, %7422
  %7426 = select i1 %7425, float 1.000000e+00, float %7415
  %7427 = add i32 %7251, -3
  %7428 = icmp ult i32 %7427, 2
  %7429 = select i1 %7428, float 0.000000e+00, float %7418
  br label %7500

; <label>:7430                                    ; preds = %7225
  %7431 = uitofp i32 %7254 to float
  %7432 = fadd fast float %7431, -4.000000e+00
  %7433 = fmul fast float %7432, 0x3FB5555560000000
  %7434 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7435 = icmp eq i32 %7254, 0
  %7436 = select i1 %7435, float 0.000000e+00, float %7434
  %7437 = icmp ult i32 %7254, 2
  %7438 = select i1 %7437, float 0.000000e+00, float %7434
  %7439 = add i32 %7254, -1
  %7440 = icmp ult i32 %7439, 2
  %7441 = select i1 %7440, float 1.000000e+00, float %7436
  %7442 = icmp ult i32 %7254, 4
  %7443 = select i1 %7442, float 0.000000e+00, float 1.000000e+00
  %7444 = and i32 %7254, -2
  %7445 = icmp eq i32 %7444, 2
  %7446 = icmp eq i32 %7254, 4
  %7447 = select i1 %7446, float 1.000000e+00, float %7443
  %7448 = or i1 %7446, %7445
  %7449 = select i1 %7448, float 1.000000e+00, float %7438
  %7450 = add i32 %7254, -3
  %7451 = icmp ult i32 %7450, 2
  %7452 = select i1 %7451, float 0.000000e+00, float %7441
  br label %7500

; <label>:7453                                    ; preds = %7225
  %7454 = lshr i32 %6286, 8
  %7455 = and i32 %7454, 255
  %7456 = uitofp i32 %7455 to float
  %7457 = fptoui float %7456 to i32
  %7458 = uitofp i32 %7457 to float
  %7459 = fcmp fast oge float %7458, 1.000000e+00
  %7460 = fcmp fast oge float %7458, 2.000000e+00
  %7461 = or i1 %7460, %7459
  %7462 = select i1 %7461, float 1.000000e+00, float 0.000000e+00
  %7463 = fcmp fast oge float %7458, 3.000000e+00
  %7464 = or i1 %7463, %7460
  %7465 = fcmp fast oge float %7458, 4.000000e+00
  %7466 = or i1 %7465, %7464
  %7467 = select i1 %7466, float 1.000000e+00, float 0.000000e+00
  %7468 = or i1 %7465, %7463
  %7469 = fcmp fast oge float %7458, 5.000000e+00
  %7470 = or i1 %7469, %7465
  %7471 = select i1 %7470, float 1.000000e+00, float 0.000000e+00
  %7472 = select i1 %7469, float 0.000000e+00, float %7467
  %7473 = or i1 %7469, %7468
  %7474 = select i1 %7473, float 0.000000e+00, float %7462
  br label %7500

; <label>:7475                                    ; preds = %7225
  br label %7500

; <label>:7476                                    ; preds = %7225
  %7477 = uitofp i32 %7258 to float
  %7478 = fadd fast float %7477, -4.000000e+00
  %7479 = fmul fast float %7478, 0x3FB5555560000000
  %7480 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7481 = icmp eq i32 %7258, 0
  %7482 = select i1 %7481, float 0.000000e+00, float %7480
  %7483 = icmp ult i32 %7258, 2
  %7484 = select i1 %7483, float 0.000000e+00, float %7480
  %7485 = add i32 %7258, -1
  %7486 = icmp ult i32 %7485, 2
  %7487 = select i1 %7486, float 1.000000e+00, float %7482
  %7488 = icmp ult i32 %7258, 4
  %7489 = select i1 %7488, float 0.000000e+00, float 1.000000e+00
  %7490 = and i32 %7258, -2
  %7491 = icmp eq i32 %7490, 2
  %7492 = icmp eq i32 %7258, 4
  %7493 = select i1 %7492, float 1.000000e+00, float %7489
  %7494 = or i1 %7492, %7491
  %7495 = select i1 %7494, float 1.000000e+00, float %7484
  %7496 = add i32 %7258, -3
  %7497 = icmp ult i32 %7496, 2
  %7498 = select i1 %7497, float 0.000000e+00, float %7487
  br label %7500

; <label>:7499                                    ; preds = %7225
  br label %7500

; <label>:7500                                    ; preds = %7499, %7476, %7475, %7453, %7430, %7407, %7383, %7360, %7337, %7314, %7289, %7262, %7225
  %7501 = phi float [ %7235, %7225 ], [ 5.000000e-01, %7499 ], [ %7493, %7476 ], [ 0.000000e+00, %7475 ], [ %7471, %7453 ], [ %7447, %7430 ], [ %7424, %7407 ], [ %7401, %7383 ], [ %7377, %7360 ], [ %7354, %7337 ], [ %7331, %7314 ], [ %7308, %7289 ], [ %7283, %7262 ]
  %7502 = phi float [ %7236, %7225 ], [ 5.000000e-01, %7499 ], [ %7495, %7476 ], [ 0.000000e+00, %7475 ], [ %7472, %7453 ], [ %7449, %7430 ], [ %7426, %7407 ], [ %7403, %7383 ], [ %7379, %7360 ], [ %7356, %7337 ], [ %7333, %7314 ], [ %7310, %7289 ], [ %7285, %7262 ]
  %7503 = phi float [ %7237, %7225 ], [ 5.000000e-01, %7499 ], [ %7498, %7476 ], [ 0.000000e+00, %7475 ], [ %7474, %7453 ], [ %7452, %7430 ], [ %7429, %7407 ], [ %7406, %7383 ], [ %7382, %7360 ], [ %7359, %7337 ], [ %7336, %7314 ], [ %7313, %7289 ], [ %7288, %7262 ]
  %7504 = fsub fast float %7501, %7235
  %7505 = fsub fast float %7502, %7236
  %7506 = fsub fast float %7503, %7237
  %7507 = fmul fast float %7504, %7165
  %7508 = fmul fast float %7505, %7165
  %7509 = fmul fast float %7506, %7165
  %7510 = fadd fast float %7507, %7235
  %7511 = fadd fast float %7508, %7236
  %7512 = fadd fast float %7509, %7237
  %7513 = and i32 %6920, 255
  %7514 = uitofp i32 %7513 to float
  %7515 = fptoui float %7514 to i32
  %7516 = icmp ult i32 %7515, 25
  br i1 %7516, label %7517, label %7522

; <label>:7517                                    ; preds = %7500
  %7518 = trunc i32 %7515 to i25
  %7519 = lshr i25 1048574, %7518
  %7520 = and i25 %7519, 1
  %7521 = icmp ne i25 %7520, 0
  br label %7522

; <label>:7522                                    ; preds = %7517, %7500
  %7523 = phi i1 [ %7521, %7517 ], [ true, %7500 ]
  %7524 = or i32 %7178, %6924
  %7525 = or i32 %7524, %7261
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 3
  %7528 = bitcast float %7527 to i32
  %7529 = and i32 %7528, 255
  %7530 = uitofp i32 %7529 to float
  %7531 = fptoui float %7530 to i32
  %7532 = or i32 %7525, %7531
  %7533 = icmp ne i32 %7532, 0
  %7534 = or i1 %7523, %7533
  %7535 = extractvalue %dx.types.CBufRet.f32 %7526, 0
  %7536 = bitcast float %7535 to i32
  %7537 = icmp slt i32 %7536, 0
  %7538 = or i1 %7537, %7534
  br i1 %7538, label %7539, label %7557

; <label>:7539                                    ; preds = %7522
  %7540 = icmp eq i32 %7261, 14
  br i1 %7540, label %7557, label %7541

; <label>:7541                                    ; preds = %7539
  %7542 = fsub fast float 1.000000e+00, %6551
  %7543 = fsub fast float 1.000000e+00, %6552
  %7544 = fsub fast float 1.000000e+00, %6553
  %7545 = fmul fast float %7165, %7542
  %7546 = fmul fast float %7165, %7543
  %7547 = fmul fast float %7165, %7544
  %7548 = fadd fast float %7545, %6551
  %7549 = fadd fast float %7546, %6552
  %7550 = fadd fast float %7547, %6553
  %7551 = fmul fast float %7165, %6597
  %7552 = fmul fast float %7165, %6598
  %7553 = fmul fast float %7165, %6599
  %7554 = fsub fast float %6597, %7551
  %7555 = fsub fast float %6598, %7552
  %7556 = fsub fast float %6599, %7553
  br label %7557

; <label>:7557                                    ; preds = %7541, %7539, %7522
  %7558 = phi float [ %7554, %7541 ], [ %6597, %7522 ], [ 0.000000e+00, %7539 ]
  %7559 = phi float [ %7555, %7541 ], [ %6598, %7522 ], [ 0.000000e+00, %7539 ]
  %7560 = phi float [ %7556, %7541 ], [ %6599, %7522 ], [ 0.000000e+00, %7539 ]
  %7561 = phi float [ %7548, %7541 ], [ %6551, %7522 ], [ 1.000000e+00, %7539 ]
  %7562 = phi float [ %7549, %7541 ], [ %6552, %7522 ], [ 1.000000e+00, %7539 ]
  %7563 = phi float [ %7550, %7541 ], [ %6553, %7522 ], [ 1.000000e+00, %7539 ]
  %7564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7565 = extractvalue %dx.types.CBufRet.f32 %7564, 2
  %7566 = extractvalue %dx.types.CBufRet.f32 %7564, 3
  %7567 = fmul fast float %7565, %73
  %7568 = fmul fast float %7566, %74
  %7569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7570 = extractvalue %dx.types.CBufRet.f32 %7569, 0
  %7571 = fcmp fast oge float %7567, %7570
  %7572 = extractvalue %dx.types.CBufRet.f32 %7569, 2
  %7573 = fcmp fast ole float %7567, %7572
  %7574 = and i1 %7571, %7573
  %7575 = extractvalue %dx.types.CBufRet.f32 %7569, 1
  %7576 = fcmp fast oge float %7568, %7575
  %7577 = and i1 %7574, %7576
  %7578 = extractvalue %dx.types.CBufRet.f32 %7569, 3
  %7579 = fcmp fast ole float %7568, %7578
  %7580 = and i1 %7577, %7579
  %7581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.i32 %7581, 0
  %7583 = icmp ne i32 %7582, 0
  %7584 = icmp ne i32 %7582, 35
  %7585 = and i1 %7583, %7584
  %7586 = and i1 %7580, %7585
  br i1 %7586, label %7587, label %7600

; <label>:7587                                    ; preds = %7557
  %7588 = call float @dx.op.binary.f32(i32 36, float %7510, float 3.225500e+04)  ; FMin(a,b)
  %7589 = call float @dx.op.binary.f32(i32 36, float %7511, float 3.225500e+04)  ; FMin(a,b)
  %7590 = call float @dx.op.binary.f32(i32 36, float %7512, float 3.225500e+04)  ; FMin(a,b)
  %7591 = fmul fast float %7588, %7561
  %7592 = fmul fast float %7589, %7562
  %7593 = fmul fast float %7590, %7563
  %7594 = call float @dx.op.binary.f32(i32 36, float %7558, float 3.225500e+04)  ; FMin(a,b)
  %7595 = call float @dx.op.binary.f32(i32 36, float %7559, float 3.225500e+04)  ; FMin(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7560, float 3.225500e+04)  ; FMin(a,b)
  %7597 = fadd fast float %7594, %7591
  %7598 = fadd fast float %7595, %7592
  %7599 = fadd fast float %7596, %7593
  br label %7600

; <label>:7600                                    ; preds = %7587, %7557
  %7601 = phi float [ %7597, %7587 ], [ %7510, %7557 ]
  %7602 = phi float [ %7598, %7587 ], [ %7511, %7557 ]
  %7603 = phi float [ %7599, %7587 ], [ %7512, %7557 ]
  %7604 = and i1 %7580, %7583
  br i1 %7604, label %7605, label %8560

; <label>:7605                                    ; preds = %7600
  %7606 = icmp eq i32 %7582, 1
  br i1 %7606, label %7607, label %7646

; <label>:7607                                    ; preds = %7605
  %7608 = uitofp i32 %161 to float
  %7609 = fmul fast float %7608, 0x3FE3C6EF40000000
  %7610 = call float @dx.op.unary.f32(i32 22, float %7609)  ; Frc(value)
  %7611 = fadd fast float %7610, 0x3FE5555560000000
  %7612 = fadd fast float %7610, 0x3FD5555560000000
  %7613 = fsub fast float -0.000000e+00, %7610
  %7614 = fsub fast float -0.000000e+00, %7611
  %7615 = fsub fast float -0.000000e+00, %7612
  %7616 = fcmp fast oge float %7610, %7613
  %7617 = fcmp fast oge float %7611, %7614
  %7618 = fcmp fast oge float %7612, %7615
  %7619 = call float @dx.op.unary.f32(i32 6, float %7610)  ; FAbs(value)
  %7620 = call float @dx.op.unary.f32(i32 6, float %7611)  ; FAbs(value)
  %7621 = call float @dx.op.unary.f32(i32 6, float %7612)  ; FAbs(value)
  %7622 = call float @dx.op.unary.f32(i32 22, float %7619)  ; Frc(value)
  %7623 = call float @dx.op.unary.f32(i32 22, float %7620)  ; Frc(value)
  %7624 = call float @dx.op.unary.f32(i32 22, float %7621)  ; Frc(value)
  %7625 = fsub fast float -0.000000e+00, %7622
  %7626 = fsub fast float -0.000000e+00, %7623
  %7627 = fsub fast float -0.000000e+00, %7624
  %7628 = select i1 %7616, float %7622, float %7625
  %7629 = select i1 %7617, float %7623, float %7626
  %7630 = select i1 %7618, float %7624, float %7627
  %7631 = fmul fast float %7628, 6.000000e+00
  %7632 = fmul fast float %7629, 6.000000e+00
  %7633 = fmul fast float %7630, 6.000000e+00
  %7634 = fadd fast float %7631, -3.000000e+00
  %7635 = fadd fast float %7632, -3.000000e+00
  %7636 = fadd fast float %7633, -3.000000e+00
  %7637 = call float @dx.op.unary.f32(i32 6, float %7634)  ; FAbs(value)
  %7638 = call float @dx.op.unary.f32(i32 6, float %7635)  ; FAbs(value)
  %7639 = call float @dx.op.unary.f32(i32 6, float %7636)  ; FAbs(value)
  %7640 = fadd fast float %7637, -1.000000e+00
  %7641 = fadd fast float %7638, -1.000000e+00
  %7642 = fadd fast float %7639, -1.000000e+00
  %7643 = call float @dx.op.unary.f32(i32 7, float %7640)  ; Saturate(value)
  %7644 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7645 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  br label %8560

; <label>:7646                                    ; preds = %7605
  %7647 = icmp eq i32 %7582, 2
  br i1 %7647, label %7648, label %7652

; <label>:7648                                    ; preds = %7646
  %7649 = fmul fast float %7601, %54
  %7650 = fmul fast float %7602, %55
  %7651 = fmul fast float %7603, %56
  br label %8560

; <label>:7652                                    ; preds = %7646
  %7653 = icmp eq i32 %7582, 3
  %7654 = icmp eq i32 %7582, 26
  %7655 = or i1 %7653, %7654
  br i1 %7655, label %7656, label %7756

; <label>:7656                                    ; preds = %7652
  br i1 %7653, label %7657, label %7668

; <label>:7657                                    ; preds = %7656
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 3
  %7660 = fsub fast float %141, %7659
  %7661 = fmul fast float %7660, 0x3FD5555560000000
  %7662 = call float @dx.op.unary.f32(i32 7, float %7661)  ; Saturate(value)
  %7663 = fmul fast float %7662, 6.300000e+01
  %7664 = fptoui float %7663 to i32
  %7665 = uitofp i32 %7664 to float
  %7666 = fmul fast float %7665, 0x3FA8618620000000
  %7667 = fadd fast float %7666, %7659
  br label %7668

; <label>:7668                                    ; preds = %7657, %7656
  %7669 = phi float [ %7667, %7657 ], [ %54, %7656 ]
  %7670 = call float @dx.op.unary.f32(i32 27, float %7669)  ; Round_ni(value)
  %7671 = fadd fast float %7670, 1.000000e+00
  %7672 = call float @dx.op.unary.f32(i32 22, float %7669)  ; Frc(value)
  %7673 = fmul fast float %7670, 0x3FE3C6EF40000000
  %7674 = call float @dx.op.unary.f32(i32 22, float %7673)  ; Frc(value)
  %7675 = fadd fast float %7674, 0x3FE5555560000000
  %7676 = fadd fast float %7674, 0x3FD5555560000000
  %7677 = fsub fast float -0.000000e+00, %7674
  %7678 = fsub fast float -0.000000e+00, %7675
  %7679 = fsub fast float -0.000000e+00, %7676
  %7680 = fcmp fast oge float %7674, %7677
  %7681 = fcmp fast oge float %7675, %7678
  %7682 = fcmp fast oge float %7676, %7679
  %7683 = call float @dx.op.unary.f32(i32 6, float %7674)  ; FAbs(value)
  %7684 = call float @dx.op.unary.f32(i32 6, float %7675)  ; FAbs(value)
  %7685 = call float @dx.op.unary.f32(i32 6, float %7676)  ; FAbs(value)
  %7686 = call float @dx.op.unary.f32(i32 22, float %7683)  ; Frc(value)
  %7687 = call float @dx.op.unary.f32(i32 22, float %7684)  ; Frc(value)
  %7688 = call float @dx.op.unary.f32(i32 22, float %7685)  ; Frc(value)
  %7689 = fsub fast float -0.000000e+00, %7686
  %7690 = fsub fast float -0.000000e+00, %7687
  %7691 = fsub fast float -0.000000e+00, %7688
  %7692 = select i1 %7680, float %7686, float %7689
  %7693 = select i1 %7681, float %7687, float %7690
  %7694 = select i1 %7682, float %7688, float %7691
  %7695 = fmul fast float %7692, 6.000000e+00
  %7696 = fmul fast float %7693, 6.000000e+00
  %7697 = fmul fast float %7694, 6.000000e+00
  %7698 = fadd fast float %7695, -3.000000e+00
  %7699 = fadd fast float %7696, -3.000000e+00
  %7700 = fadd fast float %7697, -3.000000e+00
  %7701 = call float @dx.op.unary.f32(i32 6, float %7698)  ; FAbs(value)
  %7702 = call float @dx.op.unary.f32(i32 6, float %7699)  ; FAbs(value)
  %7703 = call float @dx.op.unary.f32(i32 6, float %7700)  ; FAbs(value)
  %7704 = fadd fast float %7701, -1.000000e+00
  %7705 = fadd fast float %7702, -1.000000e+00
  %7706 = fadd fast float %7703, -1.000000e+00
  %7707 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  %7708 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7709 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7710 = fmul fast float %7671, 0x3FE3C6EF40000000
  %7711 = call float @dx.op.unary.f32(i32 22, float %7710)  ; Frc(value)
  %7712 = fadd fast float %7711, 0x3FE5555560000000
  %7713 = fadd fast float %7711, 0x3FD5555560000000
  %7714 = fsub fast float -0.000000e+00, %7711
  %7715 = fsub fast float -0.000000e+00, %7712
  %7716 = fsub fast float -0.000000e+00, %7713
  %7717 = fcmp fast oge float %7711, %7714
  %7718 = fcmp fast oge float %7712, %7715
  %7719 = fcmp fast oge float %7713, %7716
  %7720 = call float @dx.op.unary.f32(i32 6, float %7711)  ; FAbs(value)
  %7721 = call float @dx.op.unary.f32(i32 6, float %7712)  ; FAbs(value)
  %7722 = call float @dx.op.unary.f32(i32 6, float %7713)  ; FAbs(value)
  %7723 = call float @dx.op.unary.f32(i32 22, float %7720)  ; Frc(value)
  %7724 = call float @dx.op.unary.f32(i32 22, float %7721)  ; Frc(value)
  %7725 = call float @dx.op.unary.f32(i32 22, float %7722)  ; Frc(value)
  %7726 = fsub fast float -0.000000e+00, %7723
  %7727 = fsub fast float -0.000000e+00, %7724
  %7728 = fsub fast float -0.000000e+00, %7725
  %7729 = select i1 %7717, float %7723, float %7726
  %7730 = select i1 %7718, float %7724, float %7727
  %7731 = select i1 %7719, float %7725, float %7728
  %7732 = fmul fast float %7729, 6.000000e+00
  %7733 = fmul fast float %7730, 6.000000e+00
  %7734 = fmul fast float %7731, 6.000000e+00
  %7735 = fadd fast float %7732, -3.000000e+00
  %7736 = fadd fast float %7733, -3.000000e+00
  %7737 = fadd fast float %7734, -3.000000e+00
  %7738 = call float @dx.op.unary.f32(i32 6, float %7735)  ; FAbs(value)
  %7739 = call float @dx.op.unary.f32(i32 6, float %7736)  ; FAbs(value)
  %7740 = call float @dx.op.unary.f32(i32 6, float %7737)  ; FAbs(value)
  %7741 = fadd fast float %7738, -1.000000e+00
  %7742 = fadd fast float %7739, -1.000000e+00
  %7743 = fadd fast float %7740, -1.000000e+00
  %7744 = call float @dx.op.unary.f32(i32 7, float %7741)  ; Saturate(value)
  %7745 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7746 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7747 = fsub fast float %7744, %7707
  %7748 = fsub fast float %7745, %7708
  %7749 = fsub fast float %7746, %7709
  %7750 = fmul fast float %7747, %7672
  %7751 = fmul fast float %7748, %7672
  %7752 = fmul fast float %7749, %7672
  %7753 = fadd fast float %7750, %7707
  %7754 = fadd fast float %7751, %7708
  %7755 = fadd fast float %7752, %7709
  br label %8560

; <label>:7756                                    ; preds = %7652
  %7757 = and i32 %7582, -2
  %7758 = icmp eq i32 %7757, 4
  br i1 %7758, label %7759, label %7768

; <label>:7759                                    ; preds = %7756
  %7760 = uitofp i32 %161 to float
  %7761 = fmul fast float %7760, 0x3FE3C6EF40000000
  %7762 = call float @dx.op.unary.f32(i32 22, float %7761)  ; Frc(value)
  %7763 = fmul fast float %7762, 5.000000e-01
  %7764 = fadd fast float %7763, 5.000000e-01
  %7765 = fmul fast float %7764, %54
  %7766 = fmul fast float %7764, %55
  %7767 = fmul fast float %7764, %56
  br label %8560

; <label>:7768                                    ; preds = %7756
  %7769 = icmp eq i32 %7582, 6
  br i1 %7769, label %8560, label %7770

; <label>:7770                                    ; preds = %7768
  %7771 = icmp eq i32 %7582, 7
  br i1 %7771, label %8560, label %7772

; <label>:7772                                    ; preds = %7770
  %7773 = icmp eq i32 %7582, 8
  br i1 %7773, label %8560, label %7774

; <label>:7774                                    ; preds = %7772
  %7775 = icmp eq i32 %7582, 9
  br i1 %7775, label %7776, label %7788

; <label>:7776                                    ; preds = %7774
  %7777 = fcmp fast ogt float %310, 0.000000e+00
  %7778 = call float @dx.op.dot2.f32(i32 54, float %305, float %306, float %305, float %306)  ; Dot2(ax,ay,bx,by)
  %7779 = call float @dx.op.unary.f32(i32 25, float %7778)  ; Rsqrt(value)
  %7780 = fmul fast float %305, 5.000000e-01
  %7781 = fmul fast float %7780, %7779
  %7782 = fmul fast float %306, 5.000000e-01
  %7783 = fmul fast float %7782, %7779
  %7784 = fadd fast float %7781, 5.000000e-01
  %7785 = select i1 %7777, float %7784, float 5.000000e-01
  %7786 = fadd fast float %7783, 5.000000e-01
  %7787 = select i1 %7777, float %7786, float 5.000000e-01
  br label %8560

; <label>:7788                                    ; preds = %7774
  %7789 = icmp eq i32 %7582, 10
  br i1 %7789, label %7790, label %7792

; <label>:7790                                    ; preds = %7788
  %7791 = fmul fast float %310, 0x3F747AE140000000
  br label %8560

; <label>:7792                                    ; preds = %7788
  %7793 = icmp eq i32 %7582, 11
  br i1 %7793, label %8560, label %7794

; <label>:7794                                    ; preds = %7792
  %7795 = icmp eq i32 %7582, 12
  br i1 %7795, label %8560, label %7796

; <label>:7796                                    ; preds = %7794
  %7797 = icmp eq i32 %7582, 13
  br i1 %7797, label %8560, label %7798

; <label>:7798                                    ; preds = %7796
  %7799 = icmp eq i32 %7582, 14
  br i1 %7799, label %8560, label %7800

; <label>:7800                                    ; preds = %7798
  %7801 = icmp eq i32 %7582, 15
  br i1 %7801, label %8560, label %7802

; <label>:7802                                    ; preds = %7800
  %7803 = icmp eq i32 %7582, 16
  br i1 %7803, label %8560, label %7804

; <label>:7804                                    ; preds = %7802
  %7805 = icmp eq i32 %7582, 17
  br i1 %7805, label %8560, label %7806

; <label>:7806                                    ; preds = %7804
  %7807 = icmp eq i32 %7582, 18
  br i1 %7807, label %8560, label %7808

; <label>:7808                                    ; preds = %7806
  %7809 = icmp eq i32 %7582, 19
  br i1 %7809, label %8560, label %7810

; <label>:7810                                    ; preds = %7808
  %7811 = icmp eq i32 %7582, 20
  br i1 %7811, label %7812, label %7817

; <label>:7812                                    ; preds = %7810
  %7813 = fmul fast float %844, 5.000000e-01
  %7814 = fmul fast float %845, 5.000000e-01
  %7815 = fadd fast float %7813, 5.000000e-01
  %7816 = fadd fast float %7814, 5.000000e-01
  br label %8560

; <label>:7817                                    ; preds = %7810
  %7818 = and i32 %7582, -9
  %7819 = icmp eq i32 %7818, 21
  br i1 %7819, label %8560, label %7820

; <label>:7820                                    ; preds = %7817
  %7821 = icmp eq i32 %7582, 22
  %7822 = icmp eq i32 %7582, 38
  %7823 = or i1 %7821, %7822
  br i1 %7823, label %7824, label %7938

; <label>:7824                                    ; preds = %7820
  %7825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7826 = extractvalue %dx.types.CBufRet.f32 %7825, 0
  %7827 = extractvalue %dx.types.CBufRet.f32 %7825, 1
  %7828 = extractvalue %dx.types.CBufRet.f32 %7825, 2
  %7829 = fadd fast float %7826, %117
  %7830 = fadd fast float %7827, %118
  %7831 = fadd fast float %7828, %119
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 0
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.CBufRet.f32 %7832, 1
  %7839 = extractvalue %dx.types.CBufRet.f32 %7834, 1
  %7840 = extractvalue %dx.types.CBufRet.f32 %7836, 1
  %7841 = extractvalue %dx.types.CBufRet.f32 %7832, 3
  %7842 = extractvalue %dx.types.CBufRet.f32 %7834, 3
  %7843 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7844 = fadd fast float %7829, %7841
  %7845 = fadd fast float %7830, %7842
  %7846 = fadd fast float %7831, %7843
  %7847 = fmul fast float %7844, %7833
  %7848 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7835, float %7847)  ; FMad(a,b,c)
  %7849 = call float @dx.op.tertiary.f32(i32 46, float %7846, float %7837, float %7848)  ; FMad(a,b,c)
  %7850 = fmul fast float %7844, %7838
  %7851 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7839, float %7850)  ; FMad(a,b,c)
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %7846, float %7840, float %7851)  ; FMad(a,b,c)
  %7853 = fsub fast float %7849, %7841
  %7854 = fsub fast float %7852, %7842
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = fsub fast float %7853, %7856
  %7859 = fsub fast float %7854, %7857
  %7860 = fmul fast float %7858, %7858
  %7861 = fmul fast float %7859, %7859
  %7862 = fadd fast float %7860, %7861
  %7863 = call float @dx.op.unary.f32(i32 24, float %7862)  ; Sqrt(value)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7865 = fcmp fast olt float %7863, %7864
  br i1 %7865, label %7866, label %8560

; <label>:7866                                    ; preds = %7824
  %7867 = fadd fast float %7858, %7864
  %7868 = fadd fast float %7859, %7864
  %7869 = extractvalue %dx.types.CBufRet.f32 %7855, 3
  %7870 = fmul fast float %7867, %7869
  %7871 = fmul fast float %7868, %7869
  %7872 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7873 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  %7874 = fsub fast float 1.000000e+00, %7872
  %7875 = fsub fast float 1.000000e+00, %7873
  %7876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %7874, float %7875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = fcmp fast ugt float %7877, 0.000000e+00
  br i1 %7878, label %7879, label %8560

; <label>:7879                                    ; preds = %7866
  br i1 %7821, label %7880, label %7885

; <label>:7880                                    ; preds = %7879
  %7881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %7874, float %7875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7882 = extractvalue %dx.types.ResRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.ResRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.ResRet.f32 %7881, 2
  br label %8560

; <label>:7885                                    ; preds = %7879
  %7886 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %38, i32 0)  ; GetDimensions(handle,mipLevel)
  %7887 = extractvalue %dx.types.Dimensions %7886, 0
  %7888 = sitofp i32 %7887 to float
  %7889 = extractvalue %dx.types.Dimensions %7886, 1
  %7890 = sitofp i32 %7889 to float
  %7891 = fmul fast float %7888, %7874
  %7892 = fmul fast float %7890, %7875
  %7893 = call float @dx.op.unary.f32(i32 27, float %7891)  ; Round_ni(value)
  %7894 = call float @dx.op.unary.f32(i32 27, float %7892)  ; Round_ni(value)
  %7895 = fptoui float %7888 to i32
  %7896 = uitofp i32 %7895 to float
  %7897 = fmul fast float %7896, %7894
  %7898 = fadd fast float %7897, %7893
  %7899 = fptoui float %7898 to i32
  %7900 = uitofp i32 %7899 to float
  %7901 = fmul fast float %7900, 0x3FE3C6EF40000000
  %7902 = call float @dx.op.unary.f32(i32 22, float %7901)  ; Frc(value)
  %7903 = fadd fast float %7902, 0x3FE5555560000000
  %7904 = fadd fast float %7902, 0x3FD5555560000000
  %7905 = fsub fast float -0.000000e+00, %7902
  %7906 = fsub fast float -0.000000e+00, %7903
  %7907 = fsub fast float -0.000000e+00, %7904
  %7908 = fcmp fast oge float %7902, %7905
  %7909 = fcmp fast oge float %7903, %7906
  %7910 = fcmp fast oge float %7904, %7907
  %7911 = call float @dx.op.unary.f32(i32 6, float %7902)  ; FAbs(value)
  %7912 = call float @dx.op.unary.f32(i32 6, float %7903)  ; FAbs(value)
  %7913 = call float @dx.op.unary.f32(i32 6, float %7904)  ; FAbs(value)
  %7914 = call float @dx.op.unary.f32(i32 22, float %7911)  ; Frc(value)
  %7915 = call float @dx.op.unary.f32(i32 22, float %7912)  ; Frc(value)
  %7916 = call float @dx.op.unary.f32(i32 22, float %7913)  ; Frc(value)
  %7917 = fsub fast float -0.000000e+00, %7914
  %7918 = fsub fast float -0.000000e+00, %7915
  %7919 = fsub fast float -0.000000e+00, %7916
  %7920 = select i1 %7908, float %7914, float %7917
  %7921 = select i1 %7909, float %7915, float %7918
  %7922 = select i1 %7910, float %7916, float %7919
  %7923 = fmul fast float %7920, 6.000000e+00
  %7924 = fmul fast float %7921, 6.000000e+00
  %7925 = fmul fast float %7922, 6.000000e+00
  %7926 = fadd fast float %7923, -3.000000e+00
  %7927 = fadd fast float %7924, -3.000000e+00
  %7928 = fadd fast float %7925, -3.000000e+00
  %7929 = call float @dx.op.unary.f32(i32 6, float %7926)  ; FAbs(value)
  %7930 = call float @dx.op.unary.f32(i32 6, float %7927)  ; FAbs(value)
  %7931 = call float @dx.op.unary.f32(i32 6, float %7928)  ; FAbs(value)
  %7932 = fadd fast float %7929, -1.000000e+00
  %7933 = fadd fast float %7930, -1.000000e+00
  %7934 = fadd fast float %7931, -1.000000e+00
  %7935 = call float @dx.op.unary.f32(i32 7, float %7932)  ; Saturate(value)
  %7936 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7937 = call float @dx.op.unary.f32(i32 7, float %7934)  ; Saturate(value)
  br label %8560

; <label>:7938                                    ; preds = %7820
  %7939 = icmp eq i32 %7582, 39
  br i1 %7939, label %7940, label %8044

; <label>:7940                                    ; preds = %7938
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7943 = extractvalue %dx.types.CBufRet.f32 %7941, 1
  %7944 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7945 = fadd fast float %7942, %117
  %7946 = fadd fast float %7943, %118
  %7947 = fadd fast float %7944, %119
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 0
  %7950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7951 = extractvalue %dx.types.CBufRet.f32 %7950, 0
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 0
  %7954 = extractvalue %dx.types.CBufRet.f32 %7948, 1
  %7955 = extractvalue %dx.types.CBufRet.f32 %7950, 1
  %7956 = extractvalue %dx.types.CBufRet.f32 %7952, 1
  %7957 = extractvalue %dx.types.CBufRet.f32 %7948, 3
  %7958 = extractvalue %dx.types.CBufRet.f32 %7950, 3
  %7959 = extractvalue %dx.types.CBufRet.f32 %7952, 3
  %7960 = fadd fast float %7945, %7957
  %7961 = fadd fast float %7946, %7958
  %7962 = fadd fast float %7947, %7959
  %7963 = fmul fast float %7960, %7949
  %7964 = call float @dx.op.tertiary.f32(i32 46, float %7961, float %7951, float %7963)  ; FMad(a,b,c)
  %7965 = call float @dx.op.tertiary.f32(i32 46, float %7962, float %7953, float %7964)  ; FMad(a,b,c)
  %7966 = fmul fast float %7960, %7954
  %7967 = call float @dx.op.tertiary.f32(i32 46, float %7961, float %7955, float %7966)  ; FMad(a,b,c)
  %7968 = call float @dx.op.tertiary.f32(i32 46, float %7962, float %7956, float %7967)  ; FMad(a,b,c)
  %7969 = fsub fast float %7965, %7957
  %7970 = fsub fast float %7968, %7958
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.CBufRet.f32 %7971, 1
  %7974 = fsub fast float %7969, %7972
  %7975 = fsub fast float %7970, %7973
  %7976 = fmul fast float %7974, %7974
  %7977 = fmul fast float %7975, %7975
  %7978 = fadd fast float %7976, %7977
  %7979 = call float @dx.op.unary.f32(i32 24, float %7978)  ; Sqrt(value)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7981 = fcmp fast olt float %7979, %7980
  br i1 %7981, label %7982, label %8560

; <label>:7982                                    ; preds = %7940
  %7983 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7984 = extractvalue %dx.types.Dimensions %7983, 0
  %7985 = sitofp i32 %7984 to float
  %7986 = extractvalue %dx.types.Dimensions %7983, 1
  %7987 = sitofp i32 %7986 to float
  %7988 = fadd fast float %7974, %7980
  %7989 = fadd fast float %7975, %7980
  %7990 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %7991 = fmul fast float %7988, %7990
  %7992 = fmul fast float %7989, %7990
  %7993 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7994 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  %7995 = fsub fast float 1.000000e+00, %7993
  %7996 = fsub fast float 1.000000e+00, %7994
  %7997 = fmul fast float %7995, %7985
  %7998 = fmul fast float %7996, %7987
  %7999 = call float @dx.op.unary.f32(i32 27, float %7997)  ; Round_ni(value)
  %8000 = call float @dx.op.unary.f32(i32 27, float %7998)  ; Round_ni(value)
  %8001 = fptoui float %7985 to i32
  %8002 = uitofp i32 %8001 to float
  %8003 = fmul fast float %8000, %8002
  %8004 = fadd fast float %8003, %7999
  %8005 = fptoui float %8004 to i32
  %8006 = uitofp i32 %8005 to float
  %8007 = fmul fast float %8006, 0x3FE3C6EF40000000
  %8008 = call float @dx.op.unary.f32(i32 22, float %8007)  ; Frc(value)
  %8009 = fadd fast float %8008, 0x3FE5555560000000
  %8010 = fadd fast float %8008, 0x3FD5555560000000
  %8011 = fsub fast float -0.000000e+00, %8008
  %8012 = fsub fast float -0.000000e+00, %8009
  %8013 = fsub fast float -0.000000e+00, %8010
  %8014 = fcmp fast oge float %8008, %8011
  %8015 = fcmp fast oge float %8009, %8012
  %8016 = fcmp fast oge float %8010, %8013
  %8017 = call float @dx.op.unary.f32(i32 6, float %8008)  ; FAbs(value)
  %8018 = call float @dx.op.unary.f32(i32 6, float %8009)  ; FAbs(value)
  %8019 = call float @dx.op.unary.f32(i32 6, float %8010)  ; FAbs(value)
  %8020 = call float @dx.op.unary.f32(i32 22, float %8017)  ; Frc(value)
  %8021 = call float @dx.op.unary.f32(i32 22, float %8018)  ; Frc(value)
  %8022 = call float @dx.op.unary.f32(i32 22, float %8019)  ; Frc(value)
  %8023 = fsub fast float -0.000000e+00, %8020
  %8024 = fsub fast float -0.000000e+00, %8021
  %8025 = fsub fast float -0.000000e+00, %8022
  %8026 = select i1 %8014, float %8020, float %8023
  %8027 = select i1 %8015, float %8021, float %8024
  %8028 = select i1 %8016, float %8022, float %8025
  %8029 = fmul fast float %8026, 6.000000e+00
  %8030 = fmul fast float %8027, 6.000000e+00
  %8031 = fmul fast float %8028, 6.000000e+00
  %8032 = fadd fast float %8029, -3.000000e+00
  %8033 = fadd fast float %8030, -3.000000e+00
  %8034 = fadd fast float %8031, -3.000000e+00
  %8035 = call float @dx.op.unary.f32(i32 6, float %8032)  ; FAbs(value)
  %8036 = call float @dx.op.unary.f32(i32 6, float %8033)  ; FAbs(value)
  %8037 = call float @dx.op.unary.f32(i32 6, float %8034)  ; FAbs(value)
  %8038 = fadd fast float %8035, -1.000000e+00
  %8039 = fadd fast float %8036, -1.000000e+00
  %8040 = fadd fast float %8037, -1.000000e+00
  %8041 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8042 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8043 = call float @dx.op.unary.f32(i32 7, float %8040)  ; Saturate(value)
  br label %8560

; <label>:8044                                    ; preds = %7938
  %8045 = icmp eq i32 %7582, 23
  br i1 %8045, label %8560, label %8046

; <label>:8046                                    ; preds = %8044
  %8047 = icmp eq i32 %7582, 24
  br i1 %8047, label %8048, label %8074

; <label>:8048                                    ; preds = %8046
  %8049 = and i32 %342, 255
  %8050 = uitofp i32 %8049 to float
  %8051 = fptoui float %8050 to i32
  %8052 = uitofp i32 %8051 to float
  %8053 = fadd fast float %8052, -4.000000e+00
  %8054 = fmul fast float %8053, 0x3FB5555560000000
  %8055 = call float @dx.op.unary.f32(i32 7, float %8054)  ; Saturate(value)
  %8056 = icmp eq i32 %8051, 0
  %8057 = select i1 %8056, float 0.000000e+00, float %8055
  %8058 = icmp ult i32 %8051, 2
  %8059 = select i1 %8058, float 0.000000e+00, float %8055
  %8060 = add i32 %8051, -1
  %8061 = icmp ult i32 %8060, 2
  %8062 = select i1 %8061, float 1.000000e+00, float %8057
  %8063 = icmp ult i32 %8051, 4
  %8064 = select i1 %8063, float 0.000000e+00, float 1.000000e+00
  %8065 = and i32 %8051, -2
  %8066 = icmp eq i32 %8065, 2
  %8067 = icmp eq i32 %8051, 4
  %8068 = select i1 %8067, float 1.000000e+00, float %8064
  %8069 = or i1 %8067, %8066
  %8070 = select i1 %8069, float 1.000000e+00, float %8059
  %8071 = add i32 %8051, -3
  %8072 = icmp ult i32 %8071, 2
  %8073 = select i1 %8072, float 0.000000e+00, float %8062
  br label %8560

; <label>:8074                                    ; preds = %8046
  %8075 = icmp eq i32 %7582, 25
  br i1 %8075, label %8560, label %8076

; <label>:8076                                    ; preds = %8074
  %8077 = icmp eq i32 %7582, 27
  br i1 %8077, label %8078, label %8133

; <label>:8078                                    ; preds = %8076
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8081 = fptoui float %8080 to i32
  %8082 = fptoui float %141 to i32
  %8083 = and i32 %8082, 31
  %8084 = lshr i32 %8081, %8083
  %8085 = uitofp i32 %8084 to float
  %8086 = fmul fast float %8085, %61
  %8087 = fmul fast float %8085, %62
  %8088 = call float @dx.op.unary.f32(i32 27, float %8086)  ; Round_ni(value)
  %8089 = call float @dx.op.unary.f32(i32 27, float %8087)  ; Round_ni(value)
  %8090 = fptoui float %8088 to i32
  %8091 = fptoui float %8089 to i32
  %8092 = fptoui float %8085 to i32
  %8093 = mul i32 %8092, %8091
  %8094 = add i32 %8093, %8090
  %8095 = uitofp i32 %8094 to float
  %8096 = fmul fast float %8095, 0x3FE3C6EF40000000
  %8097 = call float @dx.op.unary.f32(i32 22, float %8096)  ; Frc(value)
  %8098 = fadd fast float %8097, 0x3FE5555560000000
  %8099 = fadd fast float %8097, 0x3FD5555560000000
  %8100 = fsub fast float -0.000000e+00, %8097
  %8101 = fsub fast float -0.000000e+00, %8098
  %8102 = fsub fast float -0.000000e+00, %8099
  %8103 = fcmp fast oge float %8097, %8100
  %8104 = fcmp fast oge float %8098, %8101
  %8105 = fcmp fast oge float %8099, %8102
  %8106 = call float @dx.op.unary.f32(i32 6, float %8097)  ; FAbs(value)
  %8107 = call float @dx.op.unary.f32(i32 6, float %8098)  ; FAbs(value)
  %8108 = call float @dx.op.unary.f32(i32 6, float %8099)  ; FAbs(value)
  %8109 = call float @dx.op.unary.f32(i32 22, float %8106)  ; Frc(value)
  %8110 = call float @dx.op.unary.f32(i32 22, float %8107)  ; Frc(value)
  %8111 = call float @dx.op.unary.f32(i32 22, float %8108)  ; Frc(value)
  %8112 = fsub fast float -0.000000e+00, %8109
  %8113 = fsub fast float -0.000000e+00, %8110
  %8114 = fsub fast float -0.000000e+00, %8111
  %8115 = select i1 %8103, float %8109, float %8112
  %8116 = select i1 %8104, float %8110, float %8113
  %8117 = select i1 %8105, float %8111, float %8114
  %8118 = fmul fast float %8115, 6.000000e+00
  %8119 = fmul fast float %8116, 6.000000e+00
  %8120 = fmul fast float %8117, 6.000000e+00
  %8121 = fadd fast float %8118, -3.000000e+00
  %8122 = fadd fast float %8119, -3.000000e+00
  %8123 = fadd fast float %8120, -3.000000e+00
  %8124 = call float @dx.op.unary.f32(i32 6, float %8121)  ; FAbs(value)
  %8125 = call float @dx.op.unary.f32(i32 6, float %8122)  ; FAbs(value)
  %8126 = call float @dx.op.unary.f32(i32 6, float %8123)  ; FAbs(value)
  %8127 = fadd fast float %8124, -1.000000e+00
  %8128 = fadd fast float %8125, -1.000000e+00
  %8129 = fadd fast float %8126, -1.000000e+00
  %8130 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8131 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8132 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  br label %8560

; <label>:8133                                    ; preds = %8076
  %8134 = icmp eq i32 %7582, 30
  br i1 %8134, label %8135, label %8175

; <label>:8135                                    ; preds = %8133
  %8136 = fcmp fast olt float %392, 0.000000e+00
  br i1 %8136, label %8560, label %8137

; <label>:8137                                    ; preds = %8135
  %8138 = fmul fast float %392, 0x3FE3C6EF40000000
  %8139 = call float @dx.op.unary.f32(i32 22, float %8138)  ; Frc(value)
  %8140 = fadd fast float %8139, 0x3FE5555560000000
  %8141 = fadd fast float %8139, 0x3FD5555560000000
  %8142 = fsub fast float -0.000000e+00, %8139
  %8143 = fsub fast float -0.000000e+00, %8140
  %8144 = fsub fast float -0.000000e+00, %8141
  %8145 = fcmp fast oge float %8139, %8142
  %8146 = fcmp fast oge float %8140, %8143
  %8147 = fcmp fast oge float %8141, %8144
  %8148 = call float @dx.op.unary.f32(i32 6, float %8139)  ; FAbs(value)
  %8149 = call float @dx.op.unary.f32(i32 6, float %8140)  ; FAbs(value)
  %8150 = call float @dx.op.unary.f32(i32 6, float %8141)  ; FAbs(value)
  %8151 = call float @dx.op.unary.f32(i32 22, float %8148)  ; Frc(value)
  %8152 = call float @dx.op.unary.f32(i32 22, float %8149)  ; Frc(value)
  %8153 = call float @dx.op.unary.f32(i32 22, float %8150)  ; Frc(value)
  %8154 = fsub fast float -0.000000e+00, %8151
  %8155 = fsub fast float -0.000000e+00, %8152
  %8156 = fsub fast float -0.000000e+00, %8153
  %8157 = select i1 %8145, float %8151, float %8154
  %8158 = select i1 %8146, float %8152, float %8155
  %8159 = select i1 %8147, float %8153, float %8156
  %8160 = fmul fast float %8157, 6.000000e+00
  %8161 = fmul fast float %8158, 6.000000e+00
  %8162 = fmul fast float %8159, 6.000000e+00
  %8163 = fadd fast float %8160, -3.000000e+00
  %8164 = fadd fast float %8161, -3.000000e+00
  %8165 = fadd fast float %8162, -3.000000e+00
  %8166 = call float @dx.op.unary.f32(i32 6, float %8163)  ; FAbs(value)
  %8167 = call float @dx.op.unary.f32(i32 6, float %8164)  ; FAbs(value)
  %8168 = call float @dx.op.unary.f32(i32 6, float %8165)  ; FAbs(value)
  %8169 = fadd fast float %8166, -1.000000e+00
  %8170 = fadd fast float %8167, -1.000000e+00
  %8171 = fadd fast float %8168, -1.000000e+00
  %8172 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  %8173 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8174 = call float @dx.op.unary.f32(i32 7, float %8171)  ; Saturate(value)
  br label %8560

; <label>:8175                                    ; preds = %8133
  %8176 = add i32 %7582, -31
  %8177 = icmp ult i32 %8176, 2
  br i1 %8177, label %8178, label %8186

; <label>:8178                                    ; preds = %8175
  %8179 = fcmp fast olt float %393, 0.000000e+00
  %8180 = call float @dx.op.unary.f32(i32 6, float %393)  ; FAbs(value)
  %8181 = fmul fast float %8180, 5.000000e-01
  %8182 = call float @dx.op.unary.f32(i32 7, float %8181)  ; Saturate(value)
  %8183 = select i1 %8179, float 0.000000e+00, float %8182
  %8184 = select i1 %8179, float %8182, float 0.000000e+00
  %8185 = fadd fast float %8182, 5.000000e-01
  br label %8560

; <label>:8186                                    ; preds = %8175
  %8187 = icmp eq i32 %7582, 33
  br i1 %8187, label %8188, label %8191

; <label>:8188                                    ; preds = %8186
  %8189 = icmp ne i32 %1594, 0
  %8190 = uitofp i1 %8189 to float
  br label %8560

; <label>:8191                                    ; preds = %8186
  %8192 = icmp eq i32 %7582, 34
  br i1 %8192, label %8193, label %8202

; <label>:8193                                    ; preds = %8191
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8196 = fsub fast float %119, %270
  %8197 = fadd fast float %8196, %8195
  %8198 = fcmp fast ult float %8197, %1506
  br i1 %8198, label %8199, label %8560

; <label>:8199                                    ; preds = %8193
  %8200 = fcmp fast ult float %8197, %1503
  br i1 %8200, label %8201, label %8560

; <label>:8201                                    ; preds = %8199
  br label %8560

; <label>:8202                                    ; preds = %8191
  %8203 = icmp eq i32 %7582, 36
  br i1 %8203, label %8204, label %8236

; <label>:8204                                    ; preds = %8202
  %8205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.i32 %8205, 0
  %8207 = and i32 %8206, 2048
  %8208 = icmp ne i32 %8207, 0
  %8209 = call float @dx.op.binary.f32(i32 35, float %2201, float %2202)  ; FMax(a,b)
  %8210 = call float @dx.op.binary.f32(i32 35, float %2200, float %8209)  ; FMax(a,b)
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 1
  %8213 = fcmp fast oge float %8210, %8212
  %8214 = and i1 %8208, %8213
  br i1 %8214, label %8215, label %8221

; <label>:8215                                    ; preds = %8204
  %8216 = fsub fast float 1.000000e+00, %7601
  %8217 = fmul fast float %8216, 5.000000e-01
  %8218 = fadd fast float %8217, %7601
  %8219 = fmul fast float %7602, 5.000000e-01
  %8220 = fmul fast float %7603, 5.000000e-01
  br label %8560

; <label>:8221                                    ; preds = %8204
  %8222 = call float @dx.op.dot3.f32(i32 55, float %2279, float %2280, float %2281, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %8223 = and i32 %8206, 1024
  %8224 = icmp ne i32 %8223, 0
  %8225 = extractvalue %dx.types.CBufRet.f32 %8211, 2
  %8226 = fcmp fast ole float %8222, %8225
  %8227 = and i1 %8224, %8226
  br i1 %8227, label %8228, label %8560

; <label>:8228                                    ; preds = %8221
  %8229 = fsub fast float 1.000000e+00, %7601
  %8230 = fsub fast float 1.000000e+00, %7602
  %8231 = fmul fast float %8229, 5.000000e-01
  %8232 = fmul fast float %8230, 5.000000e-01
  %8233 = fadd fast float %8231, %7601
  %8234 = fadd fast float %8232, %7602
  %8235 = fmul fast float %7603, 5.000000e-01
  br label %8560

; <label>:8236                                    ; preds = %8202
  %8237 = icmp eq i32 %7582, 40
  br i1 %8237, label %8238, label %8481

; <label>:8238                                    ; preds = %8236
  %8239 = fmul fast float %117, %117
  %8240 = fmul fast float %118, %118
  %8241 = fadd fast float %8240, %8239
  %8242 = fmul fast float %119, %119
  %8243 = fadd fast float %8241, %8242
  %8244 = call float @dx.op.unary.f32(i32 24, float %8243)  ; Sqrt(value)
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = fcmp fast ogt float %8244, %8246
  %8248 = zext i1 %8247 to i32
  %8249 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8250 = fcmp fast ogt float %8244, %8249
  %8251 = zext i1 %8250 to i32
  %8252 = add nuw nsw i32 %8251, %8248
  %8253 = extractvalue %dx.types.CBufRet.f32 %8245, 2
  %8254 = fcmp fast ogt float %8244, %8253
  %8255 = zext i1 %8254 to i32
  %8256 = add nuw nsw i32 %8252, %8255
  %8257 = icmp ult i32 %8256, 3
  %8258 = zext i1 %8257 to i32
  %8259 = shl nuw nsw i32 %8256, 2
  %8260 = add nuw nsw i32 %8259, 48
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8260)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 1
  %8263 = fcmp fast ogt float %8244, %8262
  %8264 = zext i1 %8263 to i32
  %8265 = or i32 %8259, 1
  %8266 = add nuw nsw i32 %8265, 48
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8266)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 1
  %8269 = fcmp fast ogt float %8244, %8268
  %8270 = zext i1 %8269 to i32
  %8271 = add nuw nsw i32 %8270, %8264
  %8272 = or i32 %8259, 2
  %8273 = add nuw nsw i32 %8272, 48
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8273)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 1
  %8276 = fcmp fast ogt float %8244, %8275
  %8277 = zext i1 %8276 to i32
  %8278 = add nuw nsw i32 %8271, %8277
  %8279 = call i32 @dx.op.binary.i32(i32 40, i32 %8278, i32 3)  ; UMin(a,b)
  %8280 = add i32 %8259, %8279
  %8281 = call i32 @dx.op.binary.i32(i32 40, i32 %8280, i32 12)  ; UMin(a,b)
  %8282 = add i32 %8281, 48
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8282)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 0
  %8285 = fcmp fast oge float %8244, %8284
  %8286 = zext i1 %8285 to i32
  %8287 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %8258)  ; UMin(a,b)
  %8288 = call i32 @dx.op.binary.i32(i32 40, i32 %8286, i32 %8287)  ; UMin(a,b)
  %8289 = fmul fast float %7572, 7.500000e-01
  %8290 = fadd fast float %8289, %7570
  %8291 = fcmp fast ult float %7567, %8290
  br i1 %8291, label %8331, label %8292

; <label>:8292                                    ; preds = %8238
  %8293 = uitofp i32 %8281 to float
  %8294 = fmul fast float %8293, 0x3FE3C6EF40000000
  %8295 = call float @dx.op.unary.f32(i32 22, float %8294)  ; Frc(value)
  %8296 = fadd fast float %8295, 0x3FE5555560000000
  %8297 = fadd fast float %8295, 0x3FD5555560000000
  %8298 = fsub fast float -0.000000e+00, %8295
  %8299 = fsub fast float -0.000000e+00, %8296
  %8300 = fsub fast float -0.000000e+00, %8297
  %8301 = fcmp fast oge float %8295, %8298
  %8302 = fcmp fast oge float %8296, %8299
  %8303 = fcmp fast oge float %8297, %8300
  %8304 = call float @dx.op.unary.f32(i32 6, float %8295)  ; FAbs(value)
  %8305 = call float @dx.op.unary.f32(i32 6, float %8296)  ; FAbs(value)
  %8306 = call float @dx.op.unary.f32(i32 6, float %8297)  ; FAbs(value)
  %8307 = call float @dx.op.unary.f32(i32 22, float %8304)  ; Frc(value)
  %8308 = call float @dx.op.unary.f32(i32 22, float %8305)  ; Frc(value)
  %8309 = call float @dx.op.unary.f32(i32 22, float %8306)  ; Frc(value)
  %8310 = fsub fast float -0.000000e+00, %8307
  %8311 = fsub fast float -0.000000e+00, %8308
  %8312 = fsub fast float -0.000000e+00, %8309
  %8313 = select i1 %8301, float %8307, float %8310
  %8314 = select i1 %8302, float %8308, float %8311
  %8315 = select i1 %8303, float %8309, float %8312
  %8316 = fmul fast float %8313, 6.000000e+00
  %8317 = fmul fast float %8314, 6.000000e+00
  %8318 = fmul fast float %8315, 6.000000e+00
  %8319 = fadd fast float %8316, -3.000000e+00
  %8320 = fadd fast float %8317, -3.000000e+00
  %8321 = fadd fast float %8318, -3.000000e+00
  %8322 = call float @dx.op.unary.f32(i32 6, float %8319)  ; FAbs(value)
  %8323 = call float @dx.op.unary.f32(i32 6, float %8320)  ; FAbs(value)
  %8324 = call float @dx.op.unary.f32(i32 6, float %8321)  ; FAbs(value)
  %8325 = fadd fast float %8322, -1.000000e+00
  %8326 = fadd fast float %8323, -1.000000e+00
  %8327 = fadd fast float %8324, -1.000000e+00
  %8328 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  %8329 = call float @dx.op.unary.f32(i32 7, float %8326)  ; Saturate(value)
  %8330 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  br label %8468

; <label>:8331                                    ; preds = %8238
  %8332 = fmul fast float %7572, 5.000000e-01
  %8333 = fadd fast float %8332, %7570
  %8334 = fcmp fast ult float %7567, %8333
  br i1 %8334, label %8361, label %8335

; <label>:8335                                    ; preds = %8331
  %8336 = add i32 %8288, 4
  %8337 = icmp eq i32 %8336, 0
  br i1 %8337, label %8468, label %8338

; <label>:8338                                    ; preds = %8335
  br label %8339

; <label>:8339                                    ; preds = %8339, %8338
  %8340 = phi float [ %8356, %8339 ], [ 0.000000e+00, %8338 ]
  %8341 = phi i32 [ %8357, %8339 ], [ 0, %8338 ]
  %8342 = add i32 %8281, 32
  %8343 = add i32 %8342, %8341
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8343)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = extractvalue %dx.types.CBufRet.f32 %8344, 3
  %8349 = fmul fast float %8345, %8244
  %8350 = fadd fast float %8349, %8346
  %8351 = call float @dx.op.unary.f32(i32 7, float %8350)  ; Saturate(value)
  %8352 = fmul fast float %8347, %8244
  %8353 = fadd fast float %8352, %8348
  %8354 = call float @dx.op.unary.f32(i32 7, float %8353)  ; Saturate(value)
  %8355 = call float @dx.op.binary.f32(i32 36, float %8351, float %8354)  ; FMin(a,b)
  %8356 = fadd fast float %8355, %8340
  %8357 = add nuw i32 %8341, 1
  %8358 = icmp eq i32 %8357, %8336
  br i1 %8358, label %8359, label %8339

; <label>:8359                                    ; preds = %8339
  %8360 = fmul float %8356, 2.500000e-01
  br label %8468

; <label>:8361                                    ; preds = %8331
  %8362 = fmul fast float %7572, 2.500000e-01
  %8363 = fadd fast float %8362, %7570
  %8364 = fcmp fast ult float %7567, %8363
  br i1 %8364, label %8464, label %8365

; <label>:8365                                    ; preds = %8361
  %8366 = add i32 %8281, 32
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8366)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8371 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8372 = fmul fast float %8368, %8244
  %8373 = fadd fast float %8372, %8369
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fmul fast float %8370, %8244
  %8376 = fadd fast float %8375, %8371
  %8377 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  %8378 = call float @dx.op.binary.f32(i32 36, float %8374, float %8377)  ; FMin(a,b)
  %8379 = uitofp i32 %8281 to float
  %8380 = fmul fast float %8379, 0x3FE3C6EF40000000
  %8381 = call float @dx.op.unary.f32(i32 22, float %8380)  ; Frc(value)
  %8382 = fadd fast float %8381, 0x3FE5555560000000
  %8383 = fadd fast float %8381, 0x3FD5555560000000
  %8384 = fsub fast float -0.000000e+00, %8381
  %8385 = fsub fast float -0.000000e+00, %8382
  %8386 = fsub fast float -0.000000e+00, %8383
  %8387 = fcmp fast oge float %8381, %8384
  %8388 = fcmp fast oge float %8382, %8385
  %8389 = fcmp fast oge float %8383, %8386
  %8390 = call float @dx.op.unary.f32(i32 6, float %8381)  ; FAbs(value)
  %8391 = call float @dx.op.unary.f32(i32 6, float %8382)  ; FAbs(value)
  %8392 = call float @dx.op.unary.f32(i32 6, float %8383)  ; FAbs(value)
  %8393 = call float @dx.op.unary.f32(i32 22, float %8390)  ; Frc(value)
  %8394 = call float @dx.op.unary.f32(i32 22, float %8391)  ; Frc(value)
  %8395 = call float @dx.op.unary.f32(i32 22, float %8392)  ; Frc(value)
  %8396 = fsub fast float -0.000000e+00, %8393
  %8397 = fsub fast float -0.000000e+00, %8394
  %8398 = fsub fast float -0.000000e+00, %8395
  %8399 = select i1 %8387, float %8393, float %8396
  %8400 = select i1 %8388, float %8394, float %8397
  %8401 = select i1 %8389, float %8395, float %8398
  %8402 = fmul fast float %8399, 6.000000e+00
  %8403 = fmul fast float %8400, 6.000000e+00
  %8404 = fmul fast float %8401, 6.000000e+00
  %8405 = fadd fast float %8402, -3.000000e+00
  %8406 = fadd fast float %8403, -3.000000e+00
  %8407 = fadd fast float %8404, -3.000000e+00
  %8408 = call float @dx.op.unary.f32(i32 6, float %8405)  ; FAbs(value)
  %8409 = call float @dx.op.unary.f32(i32 6, float %8406)  ; FAbs(value)
  %8410 = call float @dx.op.unary.f32(i32 6, float %8407)  ; FAbs(value)
  %8411 = fadd fast float %8408, -1.000000e+00
  %8412 = fadd fast float %8409, -1.000000e+00
  %8413 = fadd fast float %8410, -1.000000e+00
  %8414 = call float @dx.op.unary.f32(i32 7, float %8411)  ; Saturate(value)
  %8415 = call float @dx.op.unary.f32(i32 7, float %8412)  ; Saturate(value)
  %8416 = call float @dx.op.unary.f32(i32 7, float %8413)  ; Saturate(value)
  %8417 = fadd fast float %8379, 1.000000e+00
  %8418 = fmul fast float %8417, 0x3FE3C6EF40000000
  %8419 = call float @dx.op.unary.f32(i32 22, float %8418)  ; Frc(value)
  %8420 = fadd fast float %8419, 0x3FE5555560000000
  %8421 = fadd fast float %8419, 0x3FD5555560000000
  %8422 = fsub fast float -0.000000e+00, %8419
  %8423 = fsub fast float -0.000000e+00, %8420
  %8424 = fsub fast float -0.000000e+00, %8421
  %8425 = fcmp fast oge float %8419, %8422
  %8426 = fcmp fast oge float %8420, %8423
  %8427 = fcmp fast oge float %8421, %8424
  %8428 = call float @dx.op.unary.f32(i32 6, float %8419)  ; FAbs(value)
  %8429 = call float @dx.op.unary.f32(i32 6, float %8420)  ; FAbs(value)
  %8430 = call float @dx.op.unary.f32(i32 6, float %8421)  ; FAbs(value)
  %8431 = call float @dx.op.unary.f32(i32 22, float %8428)  ; Frc(value)
  %8432 = call float @dx.op.unary.f32(i32 22, float %8429)  ; Frc(value)
  %8433 = call float @dx.op.unary.f32(i32 22, float %8430)  ; Frc(value)
  %8434 = fsub fast float -0.000000e+00, %8431
  %8435 = fsub fast float -0.000000e+00, %8432
  %8436 = fsub fast float -0.000000e+00, %8433
  %8437 = select i1 %8425, float %8431, float %8434
  %8438 = select i1 %8426, float %8432, float %8435
  %8439 = select i1 %8427, float %8433, float %8436
  %8440 = fmul fast float %8437, 6.000000e+00
  %8441 = fmul fast float %8438, 6.000000e+00
  %8442 = fmul fast float %8439, 6.000000e+00
  %8443 = fadd fast float %8440, -3.000000e+00
  %8444 = fadd fast float %8441, -3.000000e+00
  %8445 = fadd fast float %8442, -3.000000e+00
  %8446 = call float @dx.op.unary.f32(i32 6, float %8443)  ; FAbs(value)
  %8447 = call float @dx.op.unary.f32(i32 6, float %8444)  ; FAbs(value)
  %8448 = call float @dx.op.unary.f32(i32 6, float %8445)  ; FAbs(value)
  %8449 = fadd fast float %8446, -1.000000e+00
  %8450 = fadd fast float %8447, -1.000000e+00
  %8451 = fadd fast float %8448, -1.000000e+00
  %8452 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8453 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8454 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8455 = fsub fast float %8452, %8414
  %8456 = fsub fast float %8453, %8415
  %8457 = fsub fast float %8454, %8416
  %8458 = fmul fast float %8455, %8378
  %8459 = fmul fast float %8456, %8378
  %8460 = fmul fast float %8457, %8378
  %8461 = fadd fast float %8458, %8414
  %8462 = fadd fast float %8459, %8415
  %8463 = fadd fast float %8460, %8416
  br label %8468

; <label>:8464                                    ; preds = %8361
  %8465 = icmp ne i32 %8288, 0
  %8466 = select i1 %8465, float 1.000000e+00, float 0.000000e+00
  %8467 = select i1 %8465, float 0.000000e+00, float 1.000000e+00
  br label %8468

; <label>:8468                                    ; preds = %8464, %8365, %8359, %8335, %8292
  %8469 = phi float [ %8328, %8292 ], [ %8461, %8365 ], [ %8466, %8464 ], [ 0.000000e+00, %8335 ], [ %8360, %8359 ]
  %8470 = phi float [ %8329, %8292 ], [ %8462, %8365 ], [ %8467, %8464 ], [ 0.000000e+00, %8335 ], [ %8360, %8359 ]
  %8471 = phi float [ %8330, %8292 ], [ %8463, %8365 ], [ 0.000000e+00, %8464 ], [ 0.000000e+00, %8335 ], [ %8360, %8359 ]
  %8472 = fsub fast float %8469, %7601
  %8473 = fsub fast float %8470, %7602
  %8474 = fsub fast float %8471, %7603
  %8475 = fmul fast float %8472, 5.000000e-01
  %8476 = fmul fast float %8473, 5.000000e-01
  %8477 = fmul fast float %8474, 5.000000e-01
  %8478 = fadd fast float %8475, %7601
  %8479 = fadd fast float %8476, %7602
  %8480 = fadd fast float %8477, %7603
  br label %8560

; <label>:8481                                    ; preds = %8236
  %8482 = icmp eq i32 %7582, 41
  br i1 %8482, label %8483, label %8552

; <label>:8483                                    ; preds = %8481
  %8484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.i32 %8484, 0
  %8486 = icmp eq i32 %8485, 2
  %8487 = and i1 %849, %8486
  %8488 = icmp eq i32 %8485, 3
  %8489 = and i1 %851, %8488
  %8490 = or i1 %8489, %8487
  %8491 = icmp eq i32 %8485, 4
  %8492 = and i1 %854, %8491
  %8493 = or i1 %8492, %8490
  %8494 = icmp eq i32 %8485, 5
  %8495 = icmp ne i32 %936, 0
  %8496 = and i1 %8495, %8494
  %8497 = or i1 %8496, %8493
  %8498 = icmp eq i32 %8485, 6
  %8499 = and i1 %939, %8498
  %8500 = or i1 %8499, %8497
  %8501 = icmp eq i32 %8485, 8
  %8502 = and i32 %1098, 64
  %8503 = icmp ne i32 %8502, 0
  %8504 = and i1 %8503, %8501
  %8505 = or i1 %8504, %8500
  %8506 = icmp eq i32 %8485, 9
  %8507 = and i32 %1103, 128
  %8508 = icmp ne i32 %8507, 0
  %8509 = and i1 %8508, %8506
  %8510 = or i1 %8509, %8505
  %8511 = icmp eq i32 %8485, 11
  %8512 = and i32 %1103, 160
  %8513 = icmp ne i32 %8512, 0
  %8514 = and i1 %8513, %8511
  %8515 = or i1 %8514, %8510
  %8516 = icmp eq i32 %8485, 13
  %8517 = icmp ne i32 %942, 0
  %8518 = and i1 %8517, %8516
  %8519 = or i1 %8518, %8515
  %8520 = icmp eq i32 %8485, 14
  %8521 = and i1 %1442, %8520
  %8522 = or i1 %8521, %8519
  %8523 = icmp eq i32 %8485, 7
  %8524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %8525 = extractvalue %dx.types.ResRet.i32 %8524, 0
  %8526 = and i32 %8525, 1024
  %8527 = icmp ne i32 %8526, 0
  %8528 = and i1 %8523, %8527
  %8529 = or i1 %8528, %8522
  %8530 = icmp eq i32 %8485, 10
  %8531 = and i32 %8525, 2048
  %8532 = icmp ne i32 %8531, 0
  %8533 = and i1 %8530, %8532
  %8534 = or i1 %8533, %8529
  %8535 = icmp eq i32 %8485, 12
  %8536 = and i32 %8525, 3072
  %8537 = icmp ne i32 %8536, 0
  %8538 = and i1 %8535, %8537
  %8539 = or i1 %8538, %8534
  %8540 = icmp eq i32 %8485, 15
  %8541 = and i32 %8525, 4096
  %8542 = icmp ne i32 %8541, 0
  %8543 = and i1 %8540, %8542
  %8544 = or i1 %8543, %8539
  %8545 = select i1 %8544, float 5.000000e-01, float %7601
  %8546 = select i1 %8544, float 0x3FB99999A0000000, float %7602
  %8547 = select i1 %8544, float 0x3FB99999A0000000, float %7603
  %8548 = fcmp fast ogt float %54, 0.000000e+00
  %8549 = and i1 %8548, %8523
  %8550 = select i1 %8549, float 1.000000e+00, float %8546
  %8551 = select i1 %8549, float 1.000000e+00, float %8547
  br label %8560

; <label>:8552                                    ; preds = %8481
  %8553 = icmp eq i32 %7582, 45
  br i1 %8553, label %8554, label %8560

; <label>:8554                                    ; preds = %8552
  %8555 = fcmp fast ogt float %1357, %1372
  %8556 = fsub fast float %1357, %1372
  %8557 = call float @dx.op.unary.f32(i32 6, float %8556)  ; FAbs(value)
  %8558 = select i1 %8555, float %8557, float 0.000000e+00
  %8559 = select i1 %8555, float 0.000000e+00, float %8557
  br label %8560

; <label>:8560                                    ; preds = %8554, %8552, %8483, %8468, %8228, %8221, %8215, %8201, %8199, %8193, %8188, %8178, %8137, %8135, %8078, %8074, %8048, %8044, %7982, %7940, %7885, %7880, %7866, %7824, %7817, %7812, %7808, %7806, %7804, %7802, %7800, %7798, %7796, %7794, %7792, %7790, %7776, %7772, %7770, %7768, %7759, %7668, %7648, %7607, %7600
  %8561 = phi float [ %7643, %7607 ], [ %7649, %7648 ], [ %7753, %7668 ], [ %7765, %7759 ], [ %7785, %7776 ], [ %7791, %7790 ], [ %7815, %7812 ], [ %7882, %7880 ], [ %7935, %7885 ], [ %8041, %7982 ], [ %8068, %8048 ], [ %8130, %8078 ], [ %8172, %8137 ], [ %8185, %8178 ], [ %8190, %8188 ], [ 1.000000e+00, %8201 ], [ %8218, %8215 ], [ %8233, %8228 ], [ %7601, %8221 ], [ %8478, %8468 ], [ %8545, %8483 ], [ %8558, %8554 ], [ %7601, %8552 ], [ %7601, %7600 ], [ 0.000000e+00, %7768 ], [ 0.000000e+00, %7806 ], [ %54, %7817 ], [ 1.000000e+00, %7866 ], [ 0.000000e+00, %7824 ], [ 0.000000e+00, %7940 ], [ 0.000000e+00, %8135 ], [ 0.000000e+00, %8193 ], [ 0.000000e+00, %8199 ], [ %268, %7770 ], [ %283, %7772 ], [ %323, %7792 ], [ %336, %7794 ], [ %555, %7796 ], [ %60, %7798 ], [ %847, %7800 ], [ %848, %7802 ], [ %1396, %7804 ], [ %54, %7808 ], [ 0.000000e+00, %8044 ], [ 0.000000e+00, %8074 ]
  %8562 = phi float [ %7644, %7607 ], [ %7650, %7648 ], [ %7754, %7668 ], [ %7766, %7759 ], [ %7787, %7776 ], [ %7791, %7790 ], [ %7816, %7812 ], [ %7883, %7880 ], [ %7936, %7885 ], [ %8042, %7982 ], [ %8070, %8048 ], [ %8131, %8078 ], [ %8173, %8137 ], [ %8183, %8178 ], [ %8190, %8188 ], [ 0.000000e+00, %8201 ], [ %8219, %8215 ], [ %8234, %8228 ], [ %7602, %8221 ], [ %8479, %8468 ], [ %8550, %8483 ], [ %8559, %8554 ], [ %7602, %8552 ], [ %7602, %7600 ], [ 0.000000e+00, %7768 ], [ 1.000000e+00, %7806 ], [ %55, %7817 ], [ 0.000000e+00, %7866 ], [ 1.000000e+00, %7824 ], [ 1.000000e+00, %7940 ], [ 1.000000e+00, %8135 ], [ 0.000000e+00, %8193 ], [ 1.000000e+00, %8199 ], [ %268, %7770 ], [ %283, %7772 ], [ %323, %7792 ], [ %336, %7794 ], [ %555, %7796 ], [ %60, %7798 ], [ %847, %7800 ], [ %848, %7802 ], [ %1396, %7804 ], [ %55, %7808 ], [ 0.000000e+00, %8044 ], [ 0.000000e+00, %8074 ]
  %8563 = phi float [ %7645, %7607 ], [ %7651, %7648 ], [ %7755, %7668 ], [ %7767, %7759 ], [ 0.000000e+00, %7776 ], [ %7791, %7790 ], [ %846, %7812 ], [ %7884, %7880 ], [ %7937, %7885 ], [ %8043, %7982 ], [ %8073, %8048 ], [ %8132, %8078 ], [ %8174, %8137 ], [ %8184, %8178 ], [ %8190, %8188 ], [ 0.000000e+00, %8201 ], [ %8220, %8215 ], [ %8235, %8228 ], [ %7603, %8221 ], [ %8480, %8468 ], [ %8551, %8483 ], [ 0.000000e+00, %8554 ], [ %7603, %8552 ], [ %7603, %7600 ], [ 0.000000e+00, %7768 ], [ 1.000000e+00, %7806 ], [ %56, %7817 ], [ 1.000000e+00, %7866 ], [ 1.000000e+00, %7824 ], [ 1.000000e+00, %7940 ], [ 0.000000e+00, %8135 ], [ 1.000000e+00, %8193 ], [ 0.000000e+00, %8199 ], [ %268, %7770 ], [ %283, %7772 ], [ %323, %7792 ], [ %336, %7794 ], [ %555, %7796 ], [ %60, %7798 ], [ %847, %7800 ], [ %848, %7802 ], [ %1396, %7804 ], [ %56, %7808 ], [ 0.000000e+00, %8044 ], [ 1.000000e+00, %8074 ]
  %8564 = fadd fast float %1607, 0x3FE3C6EF40000000
  %8565 = call float @dx.op.unary.f32(i32 22, float %8564)  ; Frc(value)
  %8566 = call float @dx.op.unary.f32(i32 23, float %8561)  ; Log(value)
  %8567 = fadd fast float %8566, -7.000000e+00
  %8568 = call float @dx.op.unary.f32(i32 21, float %8567)  ; Exp(value)
  %8569 = fmul fast float %8565, 2.000000e+00
  %8570 = fadd fast float %8569, -1.000000e+00
  %8571 = fmul fast float %8568, %8570
  %8572 = fcmp fast ogt float %8561, 0.000000e+00
  %8573 = select i1 %8572, float %8571, float 0.000000e+00
  %8574 = fadd fast float %8573, %8561
  %8575 = fadd fast float %1607, 0x3FF3C6EF40000000
  %8576 = call float @dx.op.unary.f32(i32 22, float %8575)  ; Frc(value)
  %8577 = call float @dx.op.unary.f32(i32 23, float %8562)  ; Log(value)
  %8578 = fadd fast float %8577, -7.000000e+00
  %8579 = call float @dx.op.unary.f32(i32 21, float %8578)  ; Exp(value)
  %8580 = fmul fast float %8576, 2.000000e+00
  %8581 = fadd fast float %8580, -1.000000e+00
  %8582 = fmul fast float %8579, %8581
  %8583 = fcmp fast ogt float %8562, 0.000000e+00
  %8584 = select i1 %8583, float %8582, float 0.000000e+00
  %8585 = fadd fast float %8584, %8562
  %8586 = fadd fast float %1607, 0x3FFDAA66E0000000
  %8587 = call float @dx.op.unary.f32(i32 22, float %8586)  ; Frc(value)
  %8588 = call float @dx.op.unary.f32(i32 23, float %8563)  ; Log(value)
  %8589 = fadd fast float %8588, -6.000000e+00
  %8590 = call float @dx.op.unary.f32(i32 21, float %8589)  ; Exp(value)
  %8591 = fmul fast float %8587, 2.000000e+00
  %8592 = fadd fast float %8591, -1.000000e+00
  %8593 = fmul fast float %8590, %8592
  %8594 = fcmp fast ogt float %8563, 0.000000e+00
  %8595 = select i1 %8594, float %8593, float 0.000000e+00
  %8596 = fadd fast float %8595, %8563
  %8597 = call float @dx.op.binary.f32(i32 36, float %8574, float 3.225500e+04)  ; FMin(a,b)
  %8598 = call float @dx.op.binary.f32(i32 36, float %8585, float 3.225500e+04)  ; FMin(a,b)
  %8599 = call float @dx.op.binary.f32(i32 36, float %8596, float 3.225500e+04)  ; FMin(a,b)
  %8600 = call float @dx.op.binary.f32(i32 36, float %7558, float 3.225500e+04)  ; FMin(a,b)
  %8601 = call float @dx.op.binary.f32(i32 36, float %7559, float 3.225500e+04)  ; FMin(a,b)
  %8602 = call float @dx.op.binary.f32(i32 36, float %7560, float 3.225500e+04)  ; FMin(a,b)
  %8603 = fmul fast float %8597, %7561
  %8604 = fmul fast float %8598, %7562
  %8605 = fmul fast float %8599, %7563
  %8606 = fadd fast float %8600, %8603
  %8607 = fadd fast float %8601, %8604
  %8608 = fadd fast float %8602, %8605
  %8609 = select i1 %7586, float 0.000000e+00, float %8597
  %8610 = select i1 %7586, float 0.000000e+00, float %8598
  %8611 = select i1 %7586, float 0.000000e+00, float %8599
  %8612 = select i1 %7586, float %8597, float %8606
  %8613 = or i1 %7586, %2278
  %8614 = select i1 %8613, float %8598, float %8607
  %8615 = or i1 %7586, %2278
  %8616 = select i1 %8615, float %8599, float %8608
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %2203, i32 %2209, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8612)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8616)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8609)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8610)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8611)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:8617                                    ; preds = %6710
  %8618 = fcmp fast olt float %2236, %6693
  br i1 %8618, label %6696, label %8619

; <label>:8619                                    ; preds = %8617
  %8620 = fcmp fast olt float %2236, %6694
  br i1 %8620, label %6696, label %6899

; <label>:8621                                    ; preds = %6790
  %8622 = fcmp fast olt float %69, 5.120000e+02
  br i1 %8622, label %6776, label %8623

; <label>:8623                                    ; preds = %8621
  %8624 = fcmp fast olt float %69, 1.024000e+03
  br i1 %8624, label %6776, label %8625

; <label>:8625                                    ; preds = %8623
  %8626 = fcmp fast olt float %69, 1.536000e+03
  br i1 %8626, label %6776, label %8627

; <label>:8627                                    ; preds = %8625
  %8628 = fcmp fast olt float %69, 2.048000e+03
  br i1 %8628, label %6776, label %8629

; <label>:8629                                    ; preds = %8627
  %8630 = fcmp fast olt float %69, 3.072000e+03
  br i1 %8630, label %6776, label %8631

; <label>:8631                                    ; preds = %8629
  %8632 = fcmp fast olt float %69, 4.096000e+03
  br i1 %8632, label %6776, label %8633

; <label>:8633                                    ; preds = %8631
  %8634 = fcmp fast olt float %69, 6.144000e+03
  br i1 %8634, label %6776, label %8635

; <label>:8635                                    ; preds = %8633
  %8636 = fcmp fast olt float %69, 8.192000e+03
  br i1 %8636, label %6776, label %6899

; <label>:8637                                    ; preds = %6822
  %8638 = fcmp fast olt float %6550, %6805
  br i1 %8638, label %6808, label %8639

; <label>:8639                                    ; preds = %8637
  %8640 = fcmp fast olt float %6550, %6806
  br i1 %8640, label %6808, label %6899
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

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!66}
!dx.entryPoints = !{!67}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !50, !56, !60}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
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
!36 = !{i32 27, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 7, i32 0, !7}
!50 = !{!51, !52, !54}
!51 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!52 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !53}
!53 = !{i32 1, i32 4}
!54 = !{i32 2, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !55}
!55 = !{i32 1, i32 1144}
!56 = !{!57, !58, !59}
!57 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!58 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!60 = !{!61, !62, !63, !64, !65}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!66 = !{[29 x i32] [i32 27, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 34, i32 68, i32 0, i32 17, i32 34, i32 68]}
!67 = !{void ()* @ps_main, !"ps_main", !68, !4, !90}
!68 = !{!69, !87, null}
!69 = !{!70, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86}
!70 = !{i32 0, !"SV_Position", i8 9, i8 3, !71, i8 4, i32 1, i8 4, i32 0, i8 0, !72}
!71 = !{i32 0}
!72 = !{i32 3, i32 15}
!73 = !{i32 1, !"NORMAL", i8 9, i8 0, !71, i8 2, i32 1, i8 3, i32 1, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !71, i8 2, i32 1, i8 2, i32 2, i8 0, !76}
!76 = !{i32 3, i32 3}
!77 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !71, i8 2, i32 1, i8 1, i32 1, i8 3, !78}
!78 = !{i32 3, i32 1}
!79 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !71, i8 1, i32 1, i8 1, i32 3, i8 0, !78}
!80 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !71, i8 1, i32 1, i8 1, i32 3, i8 1, !78}
!81 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !71, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!82 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !83, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!83 = !{i32 1}
!84 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 5, i8 0, !74}
!85 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !71, i8 2, i32 1, i8 3, i32 6, i8 0, !74}
!86 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !71, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88, !89}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !71, i8 0, i32 1, i8 4, i32 0, i8 0, !72}
!89 = !{i32 1, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 1, i8 0, !72}
!90 = !{i32 0, i64 24}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !98, !99}
!96 = distinct !{!96, !97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!97 = distinct !{!97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!98 = distinct !{!98, !97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!99 = distinct !{!99, !97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!100 = !{!101, !103, !104, !105}
!101 = distinct !{!101, !102, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!102 = distinct !{!102, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!103 = distinct !{!103, !102, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!104 = distinct !{!104, !102, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!105 = distinct !{!105, !102, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !107}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

